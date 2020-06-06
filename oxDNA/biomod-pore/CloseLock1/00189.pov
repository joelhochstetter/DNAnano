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
	<24.347826, 35.064903, 34.801861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.430855, 35.050774, 35.192894>,  <24.480673, 35.042294, 35.427513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.430855, 35.050774, 35.192894>,  <24.347826, 35.064903, 34.801861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.430855, 35.050774, 35.192894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928170, -0.308452, -0.208228,
		0.308893, 0.950584, -0.031236,
		0.207573, -0.035328, 0.977581,
		24.493126, 35.040176, 35.486168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918098, 35.372242, 34.863167>,  <24.347826, 35.064903, 34.801861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918098, 35.372242, 34.863167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945837, 35.185001, 35.215546>,  <24.962481, 35.072659, 35.426975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945837, 35.185001, 35.215546>,  <24.918098, 35.372242, 34.863167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945837, 35.185001, 35.215546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933102, -0.281920, -0.223252,
		0.352862, 0.837498, 0.417237,
		0.069346, -0.468102, 0.880949,
		24.966640, 35.044571, 35.479832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420439, 35.647774, 35.217896>,  <24.918098, 35.372242, 34.863167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420439, 35.647774, 35.217896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389479, 35.263130, 35.323215>,  <25.370903, 35.032345, 35.386406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389479, 35.263130, 35.323215>,  <25.420439, 35.647774, 35.217896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389479, 35.263130, 35.323215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862035, -0.197229, -0.466900,
		0.500903, 0.190831, 0.844203,
		-0.077403, -0.961605, 0.263296,
		25.366259, 34.974648, 35.402203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042276, 35.437473, 35.325916>,  <25.420439, 35.647774, 35.217896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042276, 35.437473, 35.325916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867535, 35.082241, 35.268696>,  <25.762690, 34.869102, 35.234364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867535, 35.082241, 35.268696>,  <26.042276, 35.437473, 35.325916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867535, 35.082241, 35.268696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765160, -0.283254, -0.578185,
		0.472957, -0.362041, 0.803267,
		-0.436855, -0.888084, -0.143053,
		25.736479, 34.815815, 35.225780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580648, 34.987900, 35.494194>,  <26.042276, 35.437473, 35.325916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580648, 34.987900, 35.494194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311127, 34.829052, 35.244946>,  <26.149414, 34.733742, 35.095394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311127, 34.829052, 35.244946>,  <26.580648, 34.987900, 35.494194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311127, 34.829052, 35.244946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737980, -0.319372, -0.594464,
		0.037067, -0.860404, 0.508263,
		-0.673804, -0.397123, -0.623123,
		26.108986, 34.709915, 35.058010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885080, 34.425312, 35.170673>,  <26.580648, 34.987900, 35.494194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885080, 34.425312, 35.170673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572107, 34.507511, 34.935532>,  <26.384323, 34.556831, 34.794449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572107, 34.507511, 34.935532>,  <26.885080, 34.425312, 35.170673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572107, 34.507511, 34.935532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583174, -0.089293, -0.807425,
		-0.218415, -0.974576, -0.049976,
		-0.782434, 0.205498, -0.587850,
		26.337378, 34.569160, 34.759178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087269, 34.266312, 34.415443>,  <26.885080, 34.425312, 35.170673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087269, 34.266312, 34.415443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778732, 34.509354, 34.339706>,  <26.593611, 34.655178, 34.294262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778732, 34.509354, 34.339706>,  <27.087269, 34.266312, 34.415443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778732, 34.509354, 34.339706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375892, 0.194873, -0.905941,
		-0.513556, -0.769962, -0.378707,
		-0.771340, 0.607605, -0.189344,
		26.547331, 34.691635, 34.282902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473957, 34.674622, 33.980114>,  <27.087269, 34.266312, 34.415443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473957, 34.674622, 33.980114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753864, 34.869724, 33.771339>,  <27.921808, 34.986786, 33.646072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753864, 34.869724, 33.771339>,  <27.473957, 34.674622, 33.980114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753864, 34.869724, 33.771339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187015, 0.580071, 0.792807,
		0.689459, -0.652390, 0.314696,
		0.699765, 0.487755, -0.521941,
		27.963795, 35.016052, 33.614758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100721, 34.702530, 34.419540>,  <27.473957, 34.674622, 33.980114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100721, 34.702530, 34.419540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128754, 35.001656, 34.155460>,  <28.145573, 35.181133, 33.997013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128754, 35.001656, 34.155460>,  <28.100721, 34.702530, 34.419540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128754, 35.001656, 34.155460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279317, 0.620638, 0.732660,
		0.957638, -0.235751, -0.165382,
		0.070083, 0.747817, -0.660196,
		28.149778, 35.226002, 33.957401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687941, 34.932823, 34.558651>,  <28.100721, 34.702530, 34.419540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687941, 34.932823, 34.558651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488913, 35.213970, 34.355320>,  <28.369495, 35.382660, 34.233322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488913, 35.213970, 34.355320>,  <28.687941, 34.932823, 34.558651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488913, 35.213970, 34.355320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412890, 0.707287, 0.573818,
		0.762855, 0.075629, -0.642131,
		-0.497568, 0.702870, -0.508330,
		28.339642, 35.424831, 34.202820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095976, 35.582039, 34.532734>,  <28.687941, 34.932823, 34.558651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095976, 35.582039, 34.532734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726606, 35.710461, 34.448624>,  <28.504984, 35.787514, 34.398159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726606, 35.710461, 34.448624>,  <29.095976, 35.582039, 34.532734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726606, 35.710461, 34.448624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158827, 0.818467, 0.552164,
		0.349376, 0.476483, -0.806783,
		-0.923423, 0.321052, -0.210275,
		28.449579, 35.806778, 34.385540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131264, 36.292488, 34.334785>,  <29.095976, 35.582039, 34.532734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131264, 36.292488, 34.334785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750319, 36.240131, 34.444965>,  <28.521751, 36.208717, 34.511074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750319, 36.240131, 34.444965>,  <29.131264, 36.292488, 34.334785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750319, 36.240131, 34.444965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034528, 0.851129, 0.523821,
		-0.303006, 0.508378, -0.806064,
		-0.952363, -0.130889, 0.275450,
		28.464609, 36.200863, 34.527599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851831, 36.926651, 34.173687>,  <29.131264, 36.292488, 34.334785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851831, 36.926651, 34.173687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608534, 36.739746, 34.430344>,  <28.462555, 36.627602, 34.584339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608534, 36.739746, 34.430344>,  <28.851831, 36.926651, 34.173687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608534, 36.739746, 34.430344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046880, 0.828102, 0.558613,
		-0.792364, 0.309693, -0.525594,
		-0.608244, -0.467265, 0.641640,
		28.426060, 36.599567, 34.622837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210550, 37.328999, 34.280846>,  <28.851831, 36.926651, 34.173687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210550, 37.328999, 34.280846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233908, 37.108921, 34.614044>,  <28.247923, 36.976875, 34.813965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233908, 37.108921, 34.614044>,  <28.210550, 37.328999, 34.280846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233908, 37.108921, 34.614044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160676, 0.818361, 0.551787,
		-0.985278, -0.166064, -0.040614,
		0.058395, -0.550190, 0.832995,
		28.251427, 36.943863, 34.863941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671202, 37.511055, 34.637798>,  <28.210550, 37.328999, 34.280846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671202, 37.511055, 34.637798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915670, 37.351822, 34.911442>,  <28.062351, 37.256283, 35.075626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915670, 37.351822, 34.911442>,  <27.671202, 37.511055, 34.637798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915670, 37.351822, 34.911442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281563, 0.698431, 0.657963,
		-0.739725, -0.594747, 0.314775,
		0.611171, -0.398082, 0.684106,
		28.099022, 37.232399, 35.116673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222061, 37.428604, 35.142239>,  <27.671202, 37.511055, 34.637798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222061, 37.428604, 35.142239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600687, 37.441971, 35.270554>,  <27.827862, 37.449993, 35.347542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600687, 37.441971, 35.270554>,  <27.222061, 37.428604, 35.142239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600687, 37.441971, 35.270554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236362, 0.748601, 0.619459,
		-0.219437, -0.662178, 0.716497,
		0.946562, 0.033420, 0.320785,
		27.884655, 37.451996, 35.366791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165363, 37.551205, 35.872238>,  <27.222061, 37.428604, 35.142239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165363, 37.551205, 35.872238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542639, 37.671005, 35.814690>,  <27.769003, 37.742886, 35.780163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542639, 37.671005, 35.814690>,  <27.165363, 37.551205, 35.872238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542639, 37.671005, 35.814690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168289, 0.803967, 0.570365,
		0.286489, -0.513749, 0.808694,
		0.943188, 0.299497, -0.143869,
		27.825596, 37.760853, 35.771530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521811, 37.801052, 36.478138>,  <27.165363, 37.551205, 35.872238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521811, 37.801052, 36.478138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774269, 37.974133, 36.220634>,  <27.925743, 38.077980, 36.066132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774269, 37.974133, 36.220634>,  <27.521811, 37.801052, 36.478138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774269, 37.974133, 36.220634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004690, 0.832060, 0.554666,
		0.775649, -0.347056, 0.527182,
		0.631147, 0.432699, -0.643759,
		27.963612, 38.103943, 36.027508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087675, 38.037239, 36.894508>,  <27.521811, 37.801052, 36.478138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087675, 38.037239, 36.894508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116859, 38.274456, 36.573765>,  <28.134371, 38.416786, 36.381321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116859, 38.274456, 36.573765>,  <28.087675, 38.037239, 36.894508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116859, 38.274456, 36.573765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167667, 0.785262, 0.596029,
		0.983140, -0.177933, -0.042140,
		0.072962, 0.593046, -0.801856,
		28.138748, 38.452370, 36.333206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463587, 38.584057, 37.146160>,  <28.087675, 38.037239, 36.894508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463587, 38.584057, 37.146160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344370, 38.742882, 36.798939>,  <28.272840, 38.838177, 36.590607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344370, 38.742882, 36.798939>,  <28.463587, 38.584057, 37.146160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344370, 38.742882, 36.798939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158804, 0.917330, 0.365084,
		0.941251, -0.029040, -0.336458,
		-0.298041, 0.397066, -0.868050,
		28.254957, 38.862003, 36.538525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009432, 39.053516, 36.928104>,  <28.463587, 38.584057, 37.146160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009432, 39.053516, 36.928104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658915, 39.153568, 36.763401>,  <28.448605, 39.213600, 36.664577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658915, 39.153568, 36.763401>,  <29.009432, 39.053516, 36.928104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658915, 39.153568, 36.763401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105847, 0.933738, 0.341951,
		0.470009, 0.256066, -0.844702,
		-0.876292, 0.250129, -0.411762,
		28.396027, 39.228607, 36.639874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120705, 39.747856, 36.821850>,  <29.009432, 39.053516, 36.928104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120705, 39.747856, 36.821850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727797, 39.684055, 36.782452>,  <28.492052, 39.645775, 36.758812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727797, 39.684055, 36.782452>,  <29.120705, 39.747856, 36.821850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727797, 39.684055, 36.782452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186996, 0.870836, 0.454617,
		0.013262, 0.464976, -0.885224,
		-0.982271, -0.159504, -0.098498,
		28.433115, 39.636204, 36.752903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980467, 40.264042, 36.480209>,  <29.120705, 39.747856, 36.821850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980467, 40.264042, 36.480209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637512, 40.142559, 36.646416>,  <28.431740, 40.069672, 36.746140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637512, 40.142559, 36.646416>,  <28.980467, 40.264042, 36.480209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637512, 40.142559, 36.646416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043564, 0.847264, 0.529382,
		-0.512829, 0.435783, -0.739662,
		-0.857385, -0.303705, 0.415517,
		28.380297, 40.051449, 36.771072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586657, 40.879124, 36.448013>,  <28.980467, 40.264042, 36.480209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586657, 40.879124, 36.448013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421957, 40.641594, 36.724514>,  <28.323137, 40.499077, 36.890415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421957, 40.641594, 36.724514>,  <28.586657, 40.879124, 36.448013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421957, 40.641594, 36.724514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135973, 0.790080, 0.597733,
		-0.901096, 0.152125, -0.406060,
		-0.411750, -0.593828, 0.691253,
		28.298431, 40.463444, 36.931889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958895, 41.121552, 36.656425>,  <28.586657, 40.879124, 36.448013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958895, 41.121552, 36.656425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104898, 40.902122, 36.957314>,  <28.192501, 40.770466, 37.137848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104898, 40.902122, 36.957314>,  <27.958895, 41.121552, 36.656425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104898, 40.902122, 36.957314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127922, 0.770754, 0.624159,
		-0.922174, -0.324049, 0.211158,
		0.365009, -0.548572, 0.752222,
		28.214401, 40.737553, 37.182980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462328, 41.283993, 37.131821>,  <27.958895, 41.121552, 36.656425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462328, 41.283993, 37.131821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782557, 41.137409, 37.321472>,  <27.974693, 41.049461, 37.435261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782557, 41.137409, 37.321472>,  <27.462328, 41.283993, 37.131821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782557, 41.137409, 37.321472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118358, 0.678931, 0.724600,
		-0.587431, -0.636211, 0.500160,
		0.800572, -0.366454, 0.474126,
		28.022728, 41.027473, 37.463711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300289, 41.216660, 37.861443>,  <27.462328, 41.283993, 37.131821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300289, 41.216660, 37.861443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695389, 41.263931, 37.820686>,  <27.932449, 41.292294, 37.796234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695389, 41.263931, 37.820686>,  <27.300289, 41.216660, 37.861443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695389, 41.263931, 37.820686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020083, 0.551271, 0.834084,
		0.154741, -0.825914, 0.542145,
		0.987751, 0.118179, -0.101891,
		27.991714, 41.299385, 37.790119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754560, 40.986042, 38.509022>,  <27.300289, 41.216660, 37.861443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754560, 40.986042, 38.509022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873665, 41.303345, 38.296577>,  <27.945127, 41.493729, 38.169109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873665, 41.303345, 38.296577>,  <27.754560, 40.986042, 38.509022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873665, 41.303345, 38.296577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150501, 0.588394, 0.794445,
		0.942703, -0.156620, 0.294586,
		0.297759, 0.793261, -0.531110,
		27.962992, 41.541325, 38.137245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294432, 41.286140, 38.939098>,  <27.754560, 40.986042, 38.509022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294432, 41.286140, 38.939098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165569, 41.568066, 38.686287>,  <28.088253, 41.737221, 38.534599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165569, 41.568066, 38.686287>,  <28.294432, 41.286140, 38.939098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165569, 41.568066, 38.686287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257513, 0.577206, 0.774932,
		0.910991, 0.412403, -0.004451,
		-0.322154, 0.704810, -0.632028,
		28.068924, 41.779510, 38.496677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823498, 41.701061, 39.340324>,  <28.294432, 41.286140, 38.939098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823498, 41.701061, 39.340324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103472, 41.938313, 39.499470>,  <28.271456, 42.080662, 39.594959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103472, 41.938313, 39.499470>,  <27.823498, 41.701061, 39.340324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103472, 41.938313, 39.499470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610302, -0.786061, 0.098178,
		0.370979, 0.174101, -0.912175,
		0.699933, 0.593124, 0.397866,
		28.313452, 42.116249, 39.618828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700251, 42.363121, 39.002899>,  <27.823498, 41.701061, 39.340324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700251, 42.363121, 39.002899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044819, 42.542522, 38.907570>,  <28.251560, 42.650162, 38.850372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044819, 42.542522, 38.907570>,  <27.700251, 42.363121, 39.002899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044819, 42.542522, 38.907570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085847, -0.591065, -0.802042,
		-0.500582, 0.670438, -0.547659,
		0.861422, 0.448503, -0.238322,
		28.303246, 42.677074, 38.836075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745415, 42.732193, 38.380569>,  <27.700251, 42.363121, 39.002899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745415, 42.732193, 38.380569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110348, 42.589836, 38.461552>,  <28.329308, 42.504421, 38.510139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110348, 42.589836, 38.461552>,  <27.745415, 42.732193, 38.380569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110348, 42.589836, 38.461552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028490, -0.548435, -0.835707,
		0.408458, 0.756675, -0.510495,
		0.912332, -0.355895, 0.202455,
		28.384048, 42.483067, 38.522289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970839, 42.667362, 37.684982>,  <27.745415, 42.732193, 38.380569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970839, 42.667362, 37.684982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189777, 42.451195, 37.940594>,  <28.321140, 42.321495, 38.093960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189777, 42.451195, 37.940594>,  <27.970839, 42.667362, 37.684982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189777, 42.451195, 37.940594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110592, -0.710166, -0.695294,
		0.829567, 0.451239, -0.328942,
		0.547347, -0.540415, 0.639033,
		28.353981, 42.289070, 38.132305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667562, 42.513306, 37.457352>,  <27.970839, 42.667362, 37.684982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667562, 42.513306, 37.457352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512373, 42.229107, 37.692188>,  <28.419260, 42.058590, 37.833092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512373, 42.229107, 37.692188>,  <28.667562, 42.513306, 37.457352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512373, 42.229107, 37.692188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142236, -0.675512, -0.723501,
		0.910629, -0.197193, 0.363138,
		-0.387973, -0.710492, 0.587093,
		28.395981, 42.015961, 37.868317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089567, 41.867378, 37.680260>,  <28.667562, 42.513306, 37.457352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089567, 41.867378, 37.680260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714201, 41.732277, 37.651154>,  <28.488981, 41.651215, 37.633690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714201, 41.732277, 37.651154>,  <29.089567, 41.867378, 37.680260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714201, 41.732277, 37.651154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282720, -0.629590, -0.723661,
		0.198607, -0.699668, 0.686308,
		-0.938416, -0.337758, -0.072769,
		28.432676, 41.630951, 37.629322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425602, 42.219498, 37.229923>,  <29.089567, 41.867378, 37.680260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425602, 42.219498, 37.229923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646944, 42.259624, 37.560677>,  <29.779749, 42.283699, 37.759129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646944, 42.259624, 37.560677>,  <29.425602, 42.219498, 37.229923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646944, 42.259624, 37.560677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579831, -0.759090, -0.295936,
		0.597992, 0.643210, -0.478211,
		0.553354, 0.100315, 0.826883,
		29.812950, 42.289719, 37.808743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015890, 42.317142, 36.920494>,  <29.425602, 42.219498, 37.229923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015890, 42.317142, 36.920494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015606, 42.170597, 37.292683>,  <30.015436, 42.082672, 37.515995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015606, 42.170597, 37.292683>,  <30.015890, 42.317142, 36.920494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015606, 42.170597, 37.292683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349247, -0.871973, -0.343061,
		0.937030, 0.324720, 0.128571,
		-0.000711, -0.366361, 0.930472,
		30.015392, 42.060688, 37.571823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683792, 42.092186, 37.003414>,  <30.015890, 42.317142, 36.920494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683792, 42.092186, 37.003414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429241, 41.900810, 37.245445>,  <30.276510, 41.785984, 37.390663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429241, 41.900810, 37.245445>,  <30.683792, 42.092186, 37.003414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429241, 41.900810, 37.245445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268567, -0.872754, -0.407641,
		0.723114, -0.096911, 0.683896,
		-0.636378, -0.478443, 0.605074,
		30.238327, 41.757278, 37.426968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129955, 41.572887, 37.315456>,  <30.683792, 42.092186, 37.003414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129955, 41.572887, 37.315456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740812, 41.481735, 37.331543>,  <30.507326, 41.427044, 37.341194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740812, 41.481735, 37.331543>,  <31.129955, 41.572887, 37.315456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740812, 41.481735, 37.331543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184089, -0.867480, -0.462158,
		0.140207, -0.442210, 0.885885,
		-0.972858, -0.227879, 0.040220,
		30.448956, 41.413372, 37.343609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217789, 40.816685, 37.518864>,  <31.129955, 41.572887, 37.315456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217789, 40.816685, 37.518864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839827, 40.884190, 37.406666>,  <30.613050, 40.924694, 37.339348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839827, 40.884190, 37.406666>,  <31.217789, 40.816685, 37.518864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839827, 40.884190, 37.406666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009775, -0.871024, -0.491143,
		-0.327204, -0.461341, 0.824683,
		-0.944903, 0.168765, -0.280493,
		30.556356, 40.934818, 37.322517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793024, 40.128735, 37.628906>,  <31.217789, 40.816685, 37.518864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793024, 40.128735, 37.628906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603361, 40.334743, 37.343269>,  <30.489563, 40.458347, 37.171886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603361, 40.334743, 37.343269>,  <30.793024, 40.128735, 37.628906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603361, 40.334743, 37.343269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055948, -0.791800, -0.608213,
		-0.878663, -0.328339, 0.346620,
		-0.474154, 0.515021, -0.714095,
		30.461115, 40.489250, 37.129040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299791, 39.612717, 37.360245>,  <30.793024, 40.128735, 37.628906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299791, 39.612717, 37.360245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354881, 39.905148, 37.092941>,  <30.387936, 40.080605, 36.932560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354881, 39.905148, 37.092941>,  <30.299791, 39.612717, 37.360245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354881, 39.905148, 37.092941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247122, -0.678710, -0.691580,
		-0.959147, -0.069893, -0.274139,
		0.137724, 0.731073, -0.668255,
		30.396198, 40.124470, 36.892464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941856, 39.469093, 36.703041>,  <30.299791, 39.612717, 37.360245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941856, 39.469093, 36.703041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241339, 39.715137, 36.604183>,  <30.421028, 39.862762, 36.544868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241339, 39.715137, 36.604183>,  <29.941856, 39.469093, 36.703041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241339, 39.715137, 36.604183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204266, -0.568756, -0.796738,
		-0.630648, 0.546038, -0.551476,
		0.748705, 0.615109, -0.247148,
		30.465950, 39.899670, 36.530037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842173, 39.649403, 36.006054>,  <29.941856, 39.469093, 36.703041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842173, 39.649403, 36.006054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235151, 39.715988, 36.039722>,  <30.470940, 39.755939, 36.059925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235151, 39.715988, 36.039722>,  <29.842173, 39.649403, 36.006054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235151, 39.715988, 36.039722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168466, -0.598082, -0.783529,
		-0.080085, 0.783957, -0.615628,
		0.982449, 0.166462, 0.084173,
		30.529886, 39.765926, 36.064976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070452, 39.886608, 35.367256>,  <29.842173, 39.649403, 36.006054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070452, 39.886608, 35.367256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412939, 39.779121, 35.543747>,  <30.618431, 39.714630, 35.649639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412939, 39.779121, 35.543747>,  <30.070452, 39.886608, 35.367256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412939, 39.779121, 35.543747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283186, -0.470191, -0.835898,
		0.432081, 0.840661, -0.326490,
		0.856220, -0.268719, 0.441224,
		30.669806, 39.698505, 35.676113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549177, 40.040508, 34.875504>,  <30.070452, 39.886608, 35.367256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549177, 40.040508, 34.875504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738787, 39.793674, 35.126743>,  <30.852552, 39.645576, 35.277489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738787, 39.793674, 35.126743>,  <30.549177, 40.040508, 34.875504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738787, 39.793674, 35.126743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241078, -0.595125, -0.766621,
		0.846867, 0.514818, -0.133339,
		0.474023, -0.617081, 0.628103,
		30.880993, 39.608551, 35.315174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037357, 39.856430, 34.427853>,  <30.549177, 40.040508, 34.875504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037357, 39.856430, 34.427853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053852, 39.589535, 34.725334>,  <31.063749, 39.429398, 34.903824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053852, 39.589535, 34.725334>,  <31.037357, 39.856430, 34.427853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053852, 39.589535, 34.725334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028058, -0.743269, -0.668404,
		0.998755, 0.048429, -0.011929,
		0.041236, -0.667238, 0.743703,
		31.066223, 39.389362, 34.948444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597363, 39.318176, 34.403049>,  <31.037357, 39.856430, 34.427853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597363, 39.318176, 34.403049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296993, 39.164257, 34.617729>,  <31.116772, 39.071907, 34.746536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296993, 39.164257, 34.617729>,  <31.597363, 39.318176, 34.403049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296993, 39.164257, 34.617729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134074, -0.706943, -0.694446,
		0.646635, -0.593434, 0.479269,
		-0.750924, -0.384796, 0.536698,
		31.071716, 39.048817, 34.778740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817354, 38.603733, 34.606945>,  <31.597363, 39.318176, 34.403049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817354, 38.603733, 34.606945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417917, 38.621979, 34.617802>,  <31.178255, 38.632927, 34.624317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417917, 38.621979, 34.617802>,  <31.817354, 38.603733, 34.606945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417917, 38.621979, 34.617802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051836, -0.728015, -0.683599,
		-0.011417, -0.684043, 0.729353,
		-0.998590, 0.045611, 0.027146,
		31.118340, 38.635662, 34.625946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676352, 37.826134, 34.551449>,  <31.817354, 38.603733, 34.606945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676352, 37.826134, 34.551449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311285, 37.988125, 34.529427>,  <31.092245, 38.085320, 34.516212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311285, 37.988125, 34.529427>,  <31.676352, 37.826134, 34.551449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311285, 37.988125, 34.529427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274745, -0.707663, -0.650945,
		-0.302581, -0.578969, 0.757126,
		-0.912667, 0.404979, -0.055056,
		31.037485, 38.109619, 34.512909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178320, 37.211994, 34.611946>,  <31.676352, 37.826134, 34.551449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178320, 37.211994, 34.611946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996487, 37.512920, 34.421207>,  <30.887386, 37.693474, 34.306767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996487, 37.512920, 34.421207>,  <31.178320, 37.211994, 34.611946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996487, 37.512920, 34.421207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238860, -0.618711, -0.748427,
		-0.858080, -0.226323, 0.460952,
		-0.454582, 0.752313, -0.476844,
		30.860111, 37.738613, 34.278152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534388, 36.894958, 34.301243>,  <31.178320, 37.211994, 34.611946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534388, 36.894958, 34.301243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573895, 37.230923, 34.087780>,  <30.597599, 37.432503, 33.959702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573895, 37.230923, 34.087780>,  <30.534388, 36.894958, 34.301243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573895, 37.230923, 34.087780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317031, -0.481780, -0.816933,
		-0.943258, 0.249872, 0.218695,
		0.098766, 0.839912, -0.533660,
		30.603525, 37.482895, 33.927681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901712, 36.904537, 33.955799>,  <30.534388, 36.894958, 34.301243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901712, 36.904537, 33.955799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156660, 37.144337, 33.762157>,  <30.309629, 37.288216, 33.645973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156660, 37.144337, 33.762157>,  <29.901712, 36.904537, 33.955799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156660, 37.144337, 33.762157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377225, -0.305067, -0.874434,
		-0.671907, 0.739956, 0.031705,
		0.637371, 0.599499, -0.484107,
		30.347872, 37.324188, 33.616924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494724, 37.174019, 33.324028>,  <29.901712, 36.904537, 33.955799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494724, 37.174019, 33.324028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884113, 37.223125, 33.246796>,  <30.117746, 37.252590, 33.200455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884113, 37.223125, 33.246796>,  <29.494724, 37.174019, 33.324028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884113, 37.223125, 33.246796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158754, -0.245306, -0.956359,
		-0.164778, 0.961640, -0.219307,
		0.973471, 0.122771, -0.193085,
		30.176155, 37.259956, 33.188869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499493, 37.319256, 32.628510>,  <29.494724, 37.174019, 33.324028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499493, 37.319256, 32.628510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881203, 37.217842, 32.691860>,  <30.110228, 37.156994, 32.729870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881203, 37.217842, 32.691860>,  <29.499493, 37.319256, 32.628510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881203, 37.217842, 32.691860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013685, -0.492201, -0.870374,
		0.298621, 0.832742, -0.466225,
		0.954274, -0.253531, 0.158378,
		30.167484, 37.141781, 32.739372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775137, 37.381584, 31.990620>,  <29.499493, 37.319256, 32.628510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775137, 37.381584, 31.990620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002937, 37.122082, 32.192524>,  <30.139618, 36.966381, 32.313667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002937, 37.122082, 32.192524>,  <29.775137, 37.381584, 31.990620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002937, 37.122082, 32.192524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001398, -0.614832, -0.788657,
		0.821990, 0.448434, -0.351054,
		0.569499, -0.648759, 0.504759,
		30.173788, 36.927452, 32.343952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343500, 37.054478, 31.504290>,  <29.775137, 37.381584, 31.990620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343500, 37.054478, 31.504290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326918, 36.806206, 31.817476>,  <30.316967, 36.657242, 32.005390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326918, 36.806206, 31.817476>,  <30.343500, 37.054478, 31.504290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326918, 36.806206, 31.817476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118549, -0.775049, -0.620681,
		0.992082, -0.118552, -0.041449,
		-0.041458, -0.620680, 0.782967,
		30.314480, 36.620003, 32.052368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920238, 36.547714, 31.385933>,  <30.343500, 37.054478, 31.504290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920238, 36.547714, 31.385933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639988, 36.419880, 31.641113>,  <30.471838, 36.343178, 31.794222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639988, 36.419880, 31.641113>,  <30.920238, 36.547714, 31.385933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639988, 36.419880, 31.641113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322348, -0.655875, -0.682583,
		0.636563, -0.683880, 0.356506,
		-0.700628, -0.319588, 0.637953,
		30.429800, 36.324005, 31.832499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876965, 35.767651, 31.452723>,  <30.920238, 36.547714, 31.385933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876965, 35.767651, 31.452723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515640, 35.926575, 31.517439>,  <30.298845, 36.021931, 31.556269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515640, 35.926575, 31.517439>,  <30.876965, 35.767651, 31.452723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515640, 35.926575, 31.517439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385297, -0.585572, -0.713198,
		-0.188620, -0.706577, 0.682035,
		-0.903310, 0.397310, 0.161791,
		30.244648, 36.045769, 31.565977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255552, 35.409634, 31.995033>,  <30.876965, 35.767651, 31.452723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255552, 35.409634, 31.995033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248270, 35.033848, 31.858166>,  <31.243900, 34.808376, 31.776045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248270, 35.033848, 31.858166>,  <31.255552, 35.409634, 31.995033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248270, 35.033848, 31.858166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894349, -0.168301, 0.414505,
		-0.446999, -0.298470, 0.843272,
		-0.018207, -0.939463, -0.342167,
		31.242807, 34.752010, 31.755516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313419, 34.997078, 32.553463>,  <31.255552, 35.409634, 31.995033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313419, 34.997078, 32.553463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479193, 34.798622, 32.248283>,  <31.578657, 34.679550, 32.065174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479193, 34.798622, 32.248283>,  <31.313419, 34.997078, 32.553463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479193, 34.798622, 32.248283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853442, -0.079253, 0.515126,
		-0.316041, -0.864617, 0.390582,
		0.414432, -0.496140, -0.762949,
		31.603523, 34.649780, 32.019398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711441, 34.437069, 32.819798>,  <31.313419, 34.997078, 32.553463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711441, 34.437069, 32.819798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852314, 34.548347, 32.462345>,  <31.936838, 34.615116, 32.247875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852314, 34.548347, 32.462345>,  <31.711441, 34.437069, 32.819798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852314, 34.548347, 32.462345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916169, 0.092703, 0.389923,
		0.191318, -0.956039, -0.222230,
		0.352180, 0.278200, -0.893630,
		31.957968, 34.631809, 32.194256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748762, 33.777187, 32.246868>,  <31.711441, 34.437069, 32.819798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748762, 33.777187, 32.246868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785135, 33.406788, 32.100304>,  <31.806959, 33.184547, 32.012363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785135, 33.406788, 32.100304>,  <31.748762, 33.777187, 32.246868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785135, 33.406788, 32.100304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043417, -0.363903, 0.930424,
		-0.994910, -0.100517, 0.007113,
		0.090935, -0.925997, -0.366415,
		31.812416, 33.128990, 31.990379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216814, 33.428101, 32.587841>,  <31.748762, 33.777187, 32.246868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216814, 33.428101, 32.587841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492882, 33.167027, 32.462833>,  <31.658522, 33.010384, 32.387829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492882, 33.167027, 32.462833>,  <31.216814, 33.428101, 32.587841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492882, 33.167027, 32.462833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002333, -0.429857, 0.902894,
		-0.723644, -0.623879, -0.295151,
		0.690169, -0.652685, -0.312519,
		31.699932, 32.971222, 32.369076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010349, 32.780796, 32.828053>,  <31.216814, 33.428101, 32.587841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010349, 32.780796, 32.828053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406712, 32.742020, 32.790733>,  <31.644529, 32.718754, 32.768341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406712, 32.742020, 32.790733>,  <31.010349, 32.780796, 32.828053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406712, 32.742020, 32.790733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056155, -0.332141, 0.941557,
		-0.122265, -0.938235, -0.323677,
		0.990908, -0.096944, -0.093296,
		31.703983, 32.712936, 32.762745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189569, 32.264366, 33.206596>,  <31.010349, 32.780796, 32.828053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189569, 32.264366, 33.206596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548241, 32.435905, 33.162674>,  <31.763443, 32.538830, 33.136322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548241, 32.435905, 33.162674>,  <31.189569, 32.264366, 33.206596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548241, 32.435905, 33.162674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288510, -0.377997, 0.879705,
		0.335759, -0.820490, -0.462669,
		0.896676, 0.428853, -0.109804,
		31.817244, 32.564560, 33.129734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709520, 31.787437, 33.387939>,  <31.189569, 32.264366, 33.206596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709520, 31.787437, 33.387939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935480, 32.116081, 33.418537>,  <32.071056, 32.313267, 33.436893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935480, 32.116081, 33.418537>,  <31.709520, 31.787437, 33.387939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935480, 32.116081, 33.418537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284115, -0.280695, 0.916782,
		0.774706, -0.496156, -0.391995,
		0.564898, 0.821608, 0.076491,
		32.104950, 32.362564, 33.441486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442436, 31.578356, 33.575283>,  <31.709520, 31.787437, 33.387939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442436, 31.578356, 33.575283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409451, 31.956532, 33.701359>,  <32.389660, 32.183437, 33.777004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409451, 31.956532, 33.701359>,  <32.442436, 31.578356, 33.575283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409451, 31.956532, 33.701359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318690, -0.274644, 0.907197,
		0.944265, 0.175263, -0.278652,
		-0.082468, 0.945438, 0.315192,
		32.384708, 32.240162, 33.795918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998962, 31.701603, 34.027138>,  <32.442436, 31.578356, 33.575283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998962, 31.701603, 34.027138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755852, 32.011040, 34.098877>,  <32.609985, 32.196701, 34.141918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755852, 32.011040, 34.098877>,  <32.998962, 31.701603, 34.027138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755852, 32.011040, 34.098877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214322, -0.057670, 0.975059,
		0.764643, 0.631052, -0.130748,
		-0.607773, 0.773594, 0.179345,
		32.573521, 32.243118, 34.152679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356007, 32.106743, 34.496971>,  <32.998962, 31.701603, 34.027138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356007, 32.106743, 34.496971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976002, 32.222225, 34.544506>,  <32.747997, 32.291515, 34.573025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976002, 32.222225, 34.544506>,  <33.356007, 32.106743, 34.496971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976002, 32.222225, 34.544506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083834, -0.130753, 0.987864,
		0.300740, 0.948447, 0.100014,
		-0.950014, 0.288706, 0.118835,
		32.690998, 32.308838, 34.580158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421200, 32.579258, 34.956223>,  <33.356007, 32.106743, 34.496971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421200, 32.579258, 34.956223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046230, 32.441540, 34.976974>,  <32.821247, 32.358910, 34.989426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046230, 32.441540, 34.976974>,  <33.421200, 32.579258, 34.956223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046230, 32.441540, 34.976974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112465, -0.158387, 0.980951,
		-0.329523, 0.925403, 0.187198,
		-0.937425, -0.344300, 0.051883,
		32.765003, 32.338249, 34.992538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202927, 32.759739, 35.591431>,  <33.421200, 32.579258, 34.956223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202927, 32.759739, 35.591431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915062, 32.493073, 35.513824>,  <32.742344, 32.333073, 35.467262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915062, 32.493073, 35.513824>,  <33.202927, 32.759739, 35.591431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915062, 32.493073, 35.513824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018275, -0.297518, 0.954541,
		-0.694087, 0.683399, 0.226296,
		-0.719659, -0.666670, -0.194014,
		32.699165, 32.293072, 35.455620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946987, 32.737309, 36.318710>,  <33.202927, 32.759739, 35.591431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946987, 32.737309, 36.318710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786331, 32.432018, 36.116257>,  <32.689938, 32.248844, 35.994785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786331, 32.432018, 36.116257>,  <32.946987, 32.737309, 36.318710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786331, 32.432018, 36.116257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042813, -0.536416, 0.842867,
		-0.914795, 0.360202, 0.182772,
		-0.401644, -0.763225, -0.506132,
		32.665836, 32.203053, 35.964417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347588, 32.497227, 36.690979>,  <32.946987, 32.737309, 36.318710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347588, 32.497227, 36.690979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506920, 32.194351, 36.483906>,  <32.602520, 32.012627, 36.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506920, 32.194351, 36.483906>,  <32.347588, 32.497227, 36.690979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506920, 32.194351, 36.483906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032307, -0.552458, 0.832914,
		-0.916672, -0.348501, -0.195599,
		0.398332, -0.757190, -0.517682,
		32.626419, 31.967194, 36.328602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917665, 31.981382, 36.764938>,  <32.347588, 32.497227, 36.690979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917665, 31.981382, 36.764938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240307, 31.771278, 36.656498>,  <32.433891, 31.645216, 36.591434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240307, 31.771278, 36.656498>,  <31.917665, 31.981382, 36.764938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240307, 31.771278, 36.656498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069343, -0.539566, 0.839083,
		-0.587017, -0.658004, -0.471637,
		0.806599, -0.525260, -0.271107,
		32.482288, 31.613701, 36.575165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771378, 31.323280, 37.047985>,  <31.917665, 31.981382, 36.764938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771378, 31.323280, 37.047985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165886, 31.349421, 36.987328>,  <32.402592, 31.365105, 36.950932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165886, 31.349421, 36.987328>,  <31.771378, 31.323280, 37.047985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165886, 31.349421, 36.987328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163204, -0.525465, 0.835016,
		-0.025114, -0.848302, -0.528917,
		0.986272, 0.065350, -0.151643,
		32.461769, 31.369026, 36.941833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097050, 30.609423, 37.284481>,  <31.771378, 31.323280, 37.047985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097050, 30.609423, 37.284481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386040, 30.885708, 37.296806>,  <32.559433, 31.051479, 37.304203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386040, 30.885708, 37.296806>,  <32.097050, 30.609423, 37.284481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386040, 30.885708, 37.296806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267020, -0.319854, 0.909062,
		0.637757, -0.648544, -0.415519,
		0.722472, 0.690713, 0.030815,
		32.602783, 31.092922, 37.306049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674587, 30.230942, 37.221817>,  <32.097050, 30.609423, 37.284481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674587, 30.230942, 37.221817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796070, 30.577690, 37.379955>,  <32.868958, 30.785738, 37.474838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796070, 30.577690, 37.379955>,  <32.674587, 30.230942, 37.221817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796070, 30.577690, 37.379955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316307, -0.483152, 0.816403,
		0.898728, -0.122894, -0.420933,
		0.303706, 0.866869, 0.395350,
		32.887180, 30.837751, 37.498562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251366, 30.078310, 37.523773>,  <32.674587, 30.230942, 37.221817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251366, 30.078310, 37.523773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146580, 30.414862, 37.712856>,  <33.083706, 30.616793, 37.826305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146580, 30.414862, 37.712856>,  <33.251366, 30.078310, 37.523773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146580, 30.414862, 37.712856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291188, -0.398078, 0.869910,
		0.920099, 0.365538, -0.140715,
		-0.261969, 0.841377, 0.472712,
		33.067989, 30.667274, 37.854671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683815, 30.249903, 38.119465>,  <33.251366, 30.078310, 37.523773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683815, 30.249903, 38.119465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360924, 30.473894, 38.194088>,  <33.167187, 30.608288, 38.238861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360924, 30.473894, 38.194088>,  <33.683815, 30.249903, 38.119465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360924, 30.473894, 38.194088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087389, -0.199201, 0.976054,
		0.583730, 0.804204, 0.111865,
		-0.807231, 0.559977, 0.186559,
		33.118755, 30.641888, 38.250057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896843, 30.575617, 38.746140>,  <33.683815, 30.249903, 38.119465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896843, 30.575617, 38.746140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502167, 30.578707, 38.681160>,  <33.265362, 30.580561, 38.642174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502167, 30.578707, 38.681160>,  <33.896843, 30.575617, 38.746140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502167, 30.578707, 38.681160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157764, -0.288051, 0.944530,
		-0.039496, 0.957584, 0.285435,
		-0.986687, 0.007726, -0.162449,
		33.206161, 30.581024, 38.632427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601795, 30.939089, 39.386192>,  <33.896843, 30.575617, 38.746140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601795, 30.939089, 39.386192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316162, 30.700823, 39.239079>,  <33.144783, 30.557863, 39.150810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316162, 30.700823, 39.239079>,  <33.601795, 30.939089, 39.386192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316162, 30.700823, 39.239079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083973, -0.448693, 0.889732,
		-0.695005, 0.666228, 0.270384,
		-0.714084, -0.595663, -0.367789,
		33.101936, 30.522123, 39.128742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941051, 31.058180, 39.794365>,  <33.601795, 30.939089, 39.386192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941051, 31.058180, 39.794365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917133, 30.692852, 39.633232>,  <32.902782, 30.473656, 39.536552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917133, 30.692852, 39.633232>,  <32.941051, 31.058180, 39.794365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917133, 30.692852, 39.633232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174314, -0.387801, 0.905110,
		-0.982873, 0.124344, -0.136014,
		-0.059798, -0.913317, -0.402834,
		32.899193, 30.418858, 39.512383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498161, 30.780088, 40.223782>,  <32.941051, 31.058180, 39.794365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498161, 30.780088, 40.223782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636154, 30.463007, 40.022743>,  <32.718948, 30.272758, 39.902119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636154, 30.463007, 40.022743>,  <32.498161, 30.780088, 40.223782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636154, 30.463007, 40.022743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067737, -0.555103, 0.829019,
		-0.936162, -0.251951, -0.245195,
		0.344980, -0.792705, -0.502600,
		32.739647, 30.225195, 39.871964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044979, 30.248159, 40.385044>,  <32.498161, 30.780088, 40.223782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044979, 30.248159, 40.385044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388172, 30.078009, 40.269855>,  <32.594086, 29.975918, 40.200745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388172, 30.078009, 40.269855>,  <32.044979, 30.248159, 40.385044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388172, 30.078009, 40.269855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002143, -0.557624, 0.830091,
		-0.513678, -0.712819, -0.477519,
		0.857981, -0.425376, -0.287967,
		32.645565, 29.950396, 40.183464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012039, 29.467855, 40.639973>,  <32.044979, 30.248159, 40.385044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012039, 29.467855, 40.639973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388123, 29.574413, 40.555080>,  <32.613773, 29.638348, 40.504147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388123, 29.574413, 40.555080>,  <32.012039, 29.467855, 40.639973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388123, 29.574413, 40.555080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326457, -0.527146, 0.784566,
		0.097129, -0.806939, -0.582594,
		0.940209, 0.266395, -0.212230,
		32.670185, 29.654331, 40.491413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394035, 28.865845, 40.780724>,  <32.012039, 29.467855, 40.639973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394035, 28.865845, 40.780724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658211, 29.165737, 40.764126>,  <32.816715, 29.345673, 40.754166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658211, 29.165737, 40.764126>,  <32.394035, 28.865845, 40.780724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658211, 29.165737, 40.764126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408069, -0.311982, 0.857990,
		0.630318, -0.583582, -0.511987,
		0.660439, 0.749733, -0.041494,
		32.856342, 29.390657, 40.751678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061943, 28.643248, 40.929680>,  <32.394035, 28.865845, 40.780724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061943, 28.643248, 40.929680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059368, 29.030416, 41.030148>,  <33.057823, 29.262718, 41.090427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059368, 29.030416, 41.030148>,  <33.061943, 28.643248, 40.929680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059368, 29.030416, 41.030148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319423, -0.236025, 0.917747,
		0.947590, 0.086134, -0.307658,
		-0.006434, 0.967922, 0.251169,
		33.057438, 29.320793, 41.105499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705784, 28.757214, 41.186424>,  <33.061943, 28.643248, 40.929680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705784, 28.757214, 41.186424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496006, 29.064051, 41.334225>,  <33.370140, 29.248154, 41.422905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496006, 29.064051, 41.334225>,  <33.705784, 28.757214, 41.186424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496006, 29.064051, 41.334225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374013, -0.182307, 0.909329,
		0.764903, 0.615086, -0.191294,
		-0.524441, 0.767094, 0.369497,
		33.338673, 29.294180, 41.445072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191597, 29.318888, 41.448788>,  <33.705784, 28.757214, 41.186424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191597, 29.318888, 41.448788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844406, 29.330593, 41.647087>,  <33.636093, 29.337616, 41.766068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844406, 29.330593, 41.647087>,  <34.191597, 29.318888, 41.448788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844406, 29.330593, 41.647087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465899, -0.297612, 0.833286,
		0.171924, 0.954238, 0.244686,
		-0.867975, 0.029263, 0.495745,
		33.584015, 29.339373, 41.795811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361572, 29.465910, 42.175217>,  <34.191597, 29.318888, 41.448788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361572, 29.465910, 42.175217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984844, 29.332317, 42.190342>,  <33.758808, 29.252163, 42.199417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984844, 29.332317, 42.190342>,  <34.361572, 29.465910, 42.175217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984844, 29.332317, 42.190342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180785, -0.408521, 0.894666,
		-0.283354, 0.849451, 0.445133,
		-0.941821, -0.333981, 0.037812,
		33.702297, 29.232122, 42.201687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141842, 29.698975, 42.835594>,  <34.361572, 29.465910, 42.175217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141842, 29.698975, 42.835594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891937, 29.398855, 42.749130>,  <33.741993, 29.218782, 42.697254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891937, 29.398855, 42.749130>,  <34.141842, 29.698975, 42.835594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891937, 29.398855, 42.749130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070167, -0.329664, 0.941487,
		-0.777657, 0.573037, 0.258607,
		-0.624761, -0.750300, -0.216157,
		33.704510, 29.173765, 42.684284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536228, 29.617390, 43.364418>,  <34.141842, 29.698975, 42.835594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536228, 29.617390, 43.364418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533932, 29.265322, 43.174568>,  <33.532555, 29.054081, 43.060658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533932, 29.265322, 43.174568>,  <33.536228, 29.617390, 43.364418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533932, 29.265322, 43.174568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076836, -0.473614, 0.877375,
		-0.997027, -0.031429, 0.070349,
		-0.005743, -0.880172, -0.474621,
		33.532207, 29.001270, 43.032181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905979, 29.251579, 43.572472>,  <33.536228, 29.617390, 43.364418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905979, 29.251579, 43.572472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178982, 28.986336, 43.449524>,  <33.342785, 28.827190, 43.375755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178982, 28.986336, 43.449524>,  <32.905979, 29.251579, 43.572472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178982, 28.986336, 43.449524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138456, -0.530232, 0.836471,
		-0.717646, -0.528340, -0.453697,
		0.682506, -0.663107, -0.307367,
		33.383732, 28.787403, 43.357315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616093, 28.677910, 43.812431>,  <32.905979, 29.251579, 43.572472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616093, 28.677910, 43.812431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997662, 28.586494, 43.734665>,  <33.226604, 28.531645, 43.688004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997662, 28.586494, 43.734665>,  <32.616093, 28.677910, 43.812431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997662, 28.586494, 43.734665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039957, -0.545433, 0.837201,
		-0.297374, -0.806395, -0.511170,
		0.953924, -0.228537, -0.194419,
		33.283840, 28.517933, 43.676338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541012, 27.994938, 43.759384>,  <32.616093, 28.677910, 43.812431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541012, 27.994938, 43.759384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910442, 28.117731, 43.851276>,  <33.132099, 28.191406, 43.906410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910442, 28.117731, 43.851276>,  <32.541012, 27.994938, 43.759384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910442, 28.117731, 43.851276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001597, -0.596063, 0.802936,
		0.383420, -0.741937, -0.550017,
		0.923573, 0.306983, 0.229727,
		33.187515, 28.209826, 43.920193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850002, 27.412495, 43.870872>,  <32.541012, 27.994938, 43.759384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850002, 27.412495, 43.870872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098801, 27.674604, 44.042332>,  <33.248077, 27.831871, 44.145206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098801, 27.674604, 44.042332>,  <32.850002, 27.412495, 43.870872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098801, 27.674604, 44.042332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149630, -0.636806, 0.756366,
		0.768593, -0.406316, -0.494138,
		0.621994, 0.655275, 0.428647,
		33.285400, 27.871187, 44.170925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255772, 26.961767, 44.291641>,  <32.850002, 27.412495, 43.870872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255772, 26.961767, 44.291641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340885, 27.324278, 44.437729>,  <33.391953, 27.541784, 44.525379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340885, 27.324278, 44.437729>,  <33.255772, 26.961767, 44.291641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340885, 27.324278, 44.437729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161858, -0.401304, 0.901530,
		0.963600, -0.132719, -0.232080,
		0.212785, 0.906279, 0.365215,
		33.404720, 27.596161, 44.547295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988426, 27.018009, 44.601788>,  <33.255772, 26.961767, 44.291641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988426, 27.018009, 44.601788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761894, 27.285473, 44.794521>,  <33.625977, 27.445951, 44.910164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761894, 27.285473, 44.794521>,  <33.988426, 27.018009, 44.601788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761894, 27.285473, 44.794521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106205, -0.520546, 0.847202,
		0.817309, 0.530967, 0.223784,
		-0.566327, 0.668659, 0.481839,
		33.591995, 27.486071, 44.939072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330536, 27.037281, 45.271248>,  <33.988426, 27.018009, 44.601788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330536, 27.037281, 45.271248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970802, 27.206261, 45.316380>,  <33.754963, 27.307648, 45.343460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970802, 27.206261, 45.316380>,  <34.330536, 27.037281, 45.271248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970802, 27.206261, 45.316380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093705, -0.438248, 0.893956,
		0.427099, 0.793395, 0.433718,
		-0.899336, 0.422450, 0.112830,
		33.701000, 27.332996, 45.350227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352028, 27.205297, 45.984692>,  <34.330536, 27.037281, 45.271248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352028, 27.205297, 45.984692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966351, 27.240654, 45.884678>,  <33.734943, 27.261868, 45.824669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966351, 27.240654, 45.884678>,  <34.352028, 27.205297, 45.984692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966351, 27.240654, 45.884678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265182, -0.332474, 0.905063,
		-0.003128, 0.938961, 0.344010,
		-0.964193, 0.088394, -0.250035,
		33.677094, 27.267172, 45.809666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044865, 27.373697, 46.500732>,  <34.352028, 27.205297, 45.984692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044865, 27.373697, 46.500732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728397, 27.230408, 46.302448>,  <33.538517, 27.144434, 46.183479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728397, 27.230408, 46.302448>,  <34.044865, 27.373697, 46.500732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728397, 27.230408, 46.302448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173264, -0.646031, 0.743386,
		-0.586545, 0.674031, 0.449051,
		-0.791167, -0.358225, -0.495712,
		33.491047, 27.122940, 46.153736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495926, 27.413628, 46.996101>,  <34.044865, 27.373697, 46.500732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495926, 27.413628, 46.996101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417393, 27.131393, 46.723747>,  <33.370274, 26.962053, 46.560333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417393, 27.131393, 46.723747>,  <33.495926, 27.413628, 46.996101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417393, 27.131393, 46.723747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126359, -0.670404, 0.731158,
		-0.972362, 0.229583, 0.042463,
		-0.196329, -0.705585, -0.680886,
		33.358494, 26.919718, 46.519482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891525, 27.090490, 47.191597>,  <33.495926, 27.413628, 46.996101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891525, 27.090490, 47.191597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055183, 26.822435, 46.943882>,  <33.153378, 26.661602, 46.795254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055183, 26.822435, 46.943882>,  <32.891525, 27.090490, 47.191597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055183, 26.822435, 46.943882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182266, -0.725035, 0.664155,
		-0.894081, -0.158860, -0.418787,
		0.409143, -0.670139, -0.619286,
		33.177925, 26.621393, 46.758095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442802, 26.542879, 47.342453>,  <32.891525, 27.090490, 47.191597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442802, 26.542879, 47.342453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789585, 26.426525, 47.180580>,  <32.997654, 26.356712, 47.083458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789585, 26.426525, 47.180580>,  <32.442802, 26.542879, 47.342453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789585, 26.426525, 47.180580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043494, -0.764734, 0.642877,
		-0.496476, -0.574949, -0.650342,
		0.866960, -0.290887, -0.404679,
		33.049675, 26.339258, 47.059177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255051, 25.930372, 47.181675>,  <32.442802, 26.542879, 47.342453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255051, 25.930372, 47.181675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651089, 25.964088, 47.226582>,  <32.888710, 25.984318, 47.253525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651089, 25.964088, 47.226582>,  <32.255051, 25.930372, 47.181675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651089, 25.964088, 47.226582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015460, -0.860290, 0.509571,
		0.139535, -0.502789, -0.853073,
		0.990097, 0.084291, 0.112267,
		32.948116, 25.989376, 47.260262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503849, 25.302216, 47.537018>,  <32.255051, 25.930372, 47.181675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503849, 25.302216, 47.537018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870514, 25.461760, 47.526863>,  <33.090511, 25.557486, 47.520771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870514, 25.461760, 47.526863>,  <32.503849, 25.302216, 47.537018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870514, 25.461760, 47.526863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359686, -0.795596, 0.487496,
		0.174244, -0.456000, -0.872756,
		0.916660, 0.398861, -0.025389,
		33.145512, 25.581417, 47.519245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033501, 24.975105, 47.094509>,  <32.503849, 25.302216, 47.537018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033501, 24.975105, 47.094509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213615, 25.159864, 47.400162>,  <33.321682, 25.270720, 47.583553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213615, 25.159864, 47.400162>,  <33.033501, 24.975105, 47.094509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213615, 25.159864, 47.400162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407039, -0.867890, 0.284759,
		0.794710, 0.182808, -0.578807,
		0.450284, 0.461897, 0.764130,
		33.348701, 25.298433, 47.629402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776947, 25.088669, 47.042301>,  <33.033501, 24.975105, 47.094509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776947, 25.088669, 47.042301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637737, 25.001904, 47.407120>,  <33.554211, 24.949844, 47.626011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637737, 25.001904, 47.407120>,  <33.776947, 25.088669, 47.042301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637737, 25.001904, 47.407120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482617, -0.875501, -0.024064,
		0.803717, 0.431794, 0.409381,
		-0.348022, -0.216915, 0.912046,
		33.533329, 24.936829, 47.680733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243443, 24.716913, 47.467667>,  <33.776947, 25.088669, 47.042301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243443, 24.716913, 47.467667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893650, 24.611826, 47.630768>,  <33.683773, 24.548773, 47.728626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893650, 24.611826, 47.630768>,  <34.243443, 24.716913, 47.467667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893650, 24.611826, 47.630768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314755, -0.946951, 0.064903,
		0.369068, 0.185098, 0.910784,
		-0.874482, -0.262720, 0.407749,
		33.631306, 24.533010, 47.753094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339706, 24.281366, 48.036705>,  <34.243443, 24.716913, 47.467667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339706, 24.281366, 48.036705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974041, 24.212030, 47.890141>,  <33.754642, 24.170429, 47.802200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974041, 24.212030, 47.890141>,  <34.339706, 24.281366, 48.036705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974041, 24.212030, 47.890141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282072, -0.921220, -0.267935,
		-0.291100, -0.348290, 0.891042,
		-0.914164, -0.173342, -0.366410,
		33.699791, 24.160028, 47.780216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072933, 24.419727, 48.201763>,  <34.339706, 24.281366, 48.036705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072933, 24.419727, 48.201763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460381, 24.398048, 48.104740>,  <35.692848, 24.385040, 48.046528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460381, 24.398048, 48.104740>,  <35.072933, 24.419727, 48.201763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460381, 24.398048, 48.104740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191035, 0.461934, -0.866096,
		0.158987, 0.885256, 0.437086,
		0.968622, -0.054200, -0.242556,
		35.750969, 24.381788, 48.031975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464947, 25.109953, 48.025990>,  <35.072933, 24.419727, 48.201763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464947, 25.109953, 48.025990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617031, 24.804165, 47.817749>,  <35.708282, 24.620691, 47.692806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617031, 24.804165, 47.817749>,  <35.464947, 25.109953, 48.025990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617031, 24.804165, 47.817749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247655, 0.458168, -0.853668,
		0.891125, 0.453505, -0.015123,
		0.380214, -0.764471, -0.520598,
		35.731094, 24.574823, 47.661572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006668, 25.337488, 47.529964>,  <35.464947, 25.109953, 48.025990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006668, 25.337488, 47.529964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887215, 24.981209, 47.392868>,  <35.815540, 24.767441, 47.310612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887215, 24.981209, 47.392868>,  <36.006668, 25.337488, 47.529964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887215, 24.981209, 47.392868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085810, 0.382736, -0.919864,
		0.950501, -0.245294, -0.190729,
		-0.298636, -0.890699, -0.342742,
		35.797623, 24.713999, 47.290047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478565, 25.043638, 46.893169>,  <36.006668, 25.337488, 47.529964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478565, 25.043638, 46.893169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100109, 24.914520, 46.903214>,  <35.873035, 24.837049, 46.909241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100109, 24.914520, 46.903214>,  <36.478565, 25.043638, 46.893169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100109, 24.914520, 46.903214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113157, 0.257002, -0.959763,
		0.303355, -0.910907, -0.279685,
		-0.946135, -0.322797, 0.025113,
		35.816269, 24.817682, 46.910748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369095, 24.595451, 46.314777>,  <36.478565, 25.043638, 46.893169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369095, 24.595451, 46.314777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023243, 24.761923, 46.427353>,  <35.815731, 24.861805, 46.494900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023243, 24.761923, 46.427353>,  <36.369095, 24.595451, 46.314777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023243, 24.761923, 46.427353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282910, 0.059611, -0.957292,
		-0.415181, -0.907327, 0.066199,
		-0.864631, 0.416178, 0.281441,
		35.763855, 24.886776, 46.511784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856529, 24.307127, 45.950485>,  <36.369095, 24.595451, 46.314777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856529, 24.307127, 45.950485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664341, 24.634577, 46.076347>,  <35.549030, 24.831047, 46.151863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664341, 24.634577, 46.076347>,  <35.856529, 24.307127, 45.950485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664341, 24.634577, 46.076347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249983, 0.216062, -0.943836,
		-0.840631, -0.532139, 0.100832,
		-0.480466, 0.818624, 0.314654,
		35.520203, 24.880163, 46.170742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163116, 24.249014, 45.813976>,  <35.856529, 24.307127, 45.950485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163116, 24.249014, 45.813976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241898, 24.640831, 45.830513>,  <35.289165, 24.875921, 45.840435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241898, 24.640831, 45.830513>,  <35.163116, 24.249014, 45.813976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241898, 24.640831, 45.830513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348972, 0.109449, -0.930720,
		-0.916203, 0.168881, 0.363389,
		0.196954, 0.979541, 0.041343,
		35.300983, 24.934692, 45.842915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598465, 24.529449, 45.423920>,  <35.163116, 24.249014, 45.813976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598465, 24.529449, 45.423920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852818, 24.836460, 45.456314>,  <35.005428, 25.020666, 45.475750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852818, 24.836460, 45.456314>,  <34.598465, 24.529449, 45.423920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852818, 24.836460, 45.456314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292769, 0.336975, -0.894838,
		-0.714105, 0.545296, 0.438984,
		0.635878, 0.767528, 0.080989,
		35.043579, 25.066719, 45.480610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258846, 25.308090, 45.396595>,  <34.598465, 24.529449, 45.423920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258846, 25.308090, 45.396595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633499, 25.307028, 45.256470>,  <34.858292, 25.306391, 45.172394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633499, 25.307028, 45.256470>,  <34.258846, 25.308090, 45.396595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633499, 25.307028, 45.256470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321403, 0.391306, -0.862311,
		0.139370, 0.920257, 0.365654,
		0.936630, -0.002658, -0.350309,
		34.914490, 25.306231, 45.151379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327736, 25.976933, 45.110725>,  <34.258846, 25.308090, 45.396595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327736, 25.976933, 45.110725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631641, 25.782343, 44.938168>,  <34.813984, 25.665588, 44.834633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631641, 25.782343, 44.938168>,  <34.327736, 25.976933, 45.110725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631641, 25.782343, 44.938168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234958, 0.413229, -0.879793,
		0.606261, 0.769795, 0.199656,
		0.759765, -0.486474, -0.431394,
		34.859570, 25.636400, 44.808750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740765, 26.372980, 44.580963>,  <34.327736, 25.976933, 45.110725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740765, 26.372980, 44.580963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876904, 26.019611, 44.452133>,  <34.958588, 25.807590, 44.374836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876904, 26.019611, 44.452133>,  <34.740765, 26.372980, 44.580963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876904, 26.019611, 44.452133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054581, 0.323385, -0.944692,
		0.938715, 0.339101, 0.061845,
		0.340346, -0.883421, -0.322075,
		34.979008, 25.754585, 44.355511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275738, 26.540857, 44.079300>,  <34.740765, 26.372980, 44.580963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275738, 26.540857, 44.079300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209938, 26.157291, 43.986851>,  <35.170456, 25.927151, 43.931381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209938, 26.157291, 43.986851>,  <35.275738, 26.540857, 44.079300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209938, 26.157291, 43.986851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266459, 0.182405, -0.946429,
		0.949704, -0.217276, 0.225506,
		-0.164503, -0.958916, -0.231127,
		35.160587, 25.869617, 43.917511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894756, 26.252748, 43.861340>,  <35.275738, 26.540857, 44.079300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894756, 26.252748, 43.861340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587666, 26.038542, 43.720585>,  <35.403412, 25.910019, 43.636131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587666, 26.038542, 43.720585>,  <35.894756, 26.252748, 43.861340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587666, 26.038542, 43.720585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197636, 0.324486, -0.925013,
		0.609540, -0.779700, -0.143279,
		-0.767725, -0.535515, -0.351884,
		35.357349, 25.877888, 43.615021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189438, 26.051540, 43.257717>,  <35.894756, 26.252748, 43.861340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189438, 26.051540, 43.257717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805153, 25.958200, 43.197620>,  <35.574581, 25.902197, 43.161564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805153, 25.958200, 43.197620>,  <36.189438, 26.051540, 43.257717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805153, 25.958200, 43.197620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125457, 0.117718, -0.985090,
		0.247559, -0.965241, -0.083817,
		-0.960716, -0.233353, -0.150238,
		35.516937, 25.888195, 43.152550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186405, 25.572985, 42.744083>,  <36.189438, 26.051540, 43.257717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186405, 25.572985, 42.744083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813644, 25.718058, 42.741978>,  <35.589989, 25.805101, 42.740715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813644, 25.718058, 42.741978>,  <36.186405, 25.572985, 42.744083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813644, 25.718058, 42.741978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042281, 0.094191, -0.994656,
		-0.360247, -0.927141, -0.103111,
		-0.931898, 0.362682, -0.005269,
		35.534077, 25.826862, 42.740398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955582, 25.134811, 42.325203>,  <36.186405, 25.572985, 42.744083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955582, 25.134811, 42.325203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738373, 25.470697, 42.325745>,  <35.608047, 25.672230, 42.326069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738373, 25.470697, 42.325745>,  <35.955582, 25.134811, 42.325203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738373, 25.470697, 42.325745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037846, -0.022864, -0.999022,
		-0.838864, -0.542545, 0.044195,
		-0.543024, 0.839716, 0.001353,
		35.575466, 25.722612, 42.326149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424446, 25.018627, 41.659950>,  <35.955582, 25.134811, 42.325203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424446, 25.018627, 41.659950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419552, 25.400808, 41.777905>,  <35.416615, 25.630117, 41.848675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419552, 25.400808, 41.777905>,  <35.424446, 25.018627, 41.659950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419552, 25.400808, 41.777905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354469, 0.271609, -0.894751,
		-0.934988, -0.115475, 0.335356,
		-0.012235, 0.955455, 0.294883,
		35.415882, 25.687445, 41.866371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751701, 25.384752, 41.535721>,  <35.424446, 25.018627, 41.659950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751701, 25.384752, 41.535721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041908, 25.659924, 41.543530>,  <35.216030, 25.825027, 41.548214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041908, 25.659924, 41.543530>,  <34.751701, 25.384752, 41.535721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041908, 25.659924, 41.543530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296463, 0.338011, -0.893229,
		-0.621078, 0.642262, 0.449178,
		0.725515, 0.687930, 0.019525,
		35.259563, 25.866302, 41.549385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423668, 26.001940, 41.440571>,  <34.751701, 25.384752, 41.535721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423668, 26.001940, 41.440571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800972, 26.097965, 41.348801>,  <35.027355, 26.155581, 41.293739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800972, 26.097965, 41.348801>,  <34.423668, 26.001940, 41.440571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800972, 26.097965, 41.348801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329323, 0.587795, -0.738947,
		-0.042540, 0.772572, 0.633501,
		0.943258, 0.240062, -0.229421,
		35.083950, 26.169983, 41.279976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403984, 26.740080, 41.238342>,  <34.423668, 26.001940, 41.440571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403984, 26.740080, 41.238342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739029, 26.590158, 41.079380>,  <34.940056, 26.500206, 40.984001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739029, 26.590158, 41.079380>,  <34.403984, 26.740080, 41.238342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739029, 26.590158, 41.079380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121182, 0.581880, -0.804196,
		0.532660, 0.721761, 0.441968,
		0.837609, -0.374804, -0.397408,
		34.990311, 26.477716, 40.960159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744621, 27.348206, 40.954433>,  <34.403984, 26.740080, 41.238342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744621, 27.348206, 40.954433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937225, 27.040941, 40.785637>,  <35.052788, 26.856583, 40.684357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937225, 27.040941, 40.785637>,  <34.744621, 27.348206, 40.954433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937225, 27.040941, 40.785637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084088, 0.519755, -0.850167,
		0.872398, 0.373879, 0.314860,
		0.481509, -0.768160, -0.421995,
		35.081676, 26.810493, 40.659039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369396, 27.652819, 40.666100>,  <34.744621, 27.348206, 40.954433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369396, 27.652819, 40.666100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256939, 27.324636, 40.466976>,  <35.189465, 27.127728, 40.347504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256939, 27.324636, 40.466976>,  <35.369396, 27.652819, 40.666100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256939, 27.324636, 40.466976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079104, 0.497150, -0.864051,
		0.956401, -0.282298, -0.074867,
		-0.281140, -0.820457, -0.497806,
		35.172596, 27.078499, 40.317635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821781, 27.542286, 40.101990>,  <35.369396, 27.652819, 40.666100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821781, 27.542286, 40.101990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518173, 27.325470, 39.957718>,  <35.336010, 27.195381, 39.871155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518173, 27.325470, 39.957718>,  <35.821781, 27.542286, 40.101990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518173, 27.325470, 39.957718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004551, 0.549543, -0.835453,
		0.651057, -0.635763, -0.414644,
		-0.759015, -0.542041, -0.360677,
		35.290470, 27.162857, 39.849514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965698, 27.508781, 39.363663>,  <35.821781, 27.542286, 40.101990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965698, 27.508781, 39.363663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589787, 27.382420, 39.415855>,  <35.364239, 27.306602, 39.447170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589787, 27.382420, 39.415855>,  <35.965698, 27.508781, 39.363663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589787, 27.382420, 39.415855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209972, 0.232367, -0.949693,
		0.269701, -0.919894, -0.284705,
		-0.939773, -0.315913, 0.130482,
		35.307854, 27.287649, 39.455002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866886, 27.142633, 38.740997>,  <35.965698, 27.508781, 39.363663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866886, 27.142633, 38.740997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505711, 27.219709, 38.894661>,  <35.289005, 27.265955, 38.986858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505711, 27.219709, 38.894661>,  <35.866886, 27.142633, 38.740997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505711, 27.219709, 38.894661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308558, 0.331562, -0.891549,
		-0.299164, -0.923546, -0.239923,
		-0.902936, 0.192689, 0.384159,
		35.234829, 27.277515, 39.009907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430271, 26.871637, 38.364582>,  <35.866886, 27.142633, 38.740997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430271, 26.871637, 38.364582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162777, 27.119055, 38.529602>,  <35.002281, 27.267506, 38.628613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162777, 27.119055, 38.529602>,  <35.430271, 26.871637, 38.364582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162777, 27.119055, 38.529602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291219, 0.292625, -0.910803,
		-0.684094, -0.729228, -0.015556,
		-0.668735, 0.618545, 0.412548,
		34.962158, 27.304619, 38.653366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709049, 26.851057, 37.903419>,  <35.430271, 26.871637, 38.364582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709049, 26.851057, 37.903419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731026, 27.189981, 38.114719>,  <34.744213, 27.393335, 38.241497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731026, 27.189981, 38.114719>,  <34.709049, 26.851057, 37.903419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731026, 27.189981, 38.114719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349213, 0.511942, -0.784835,
		-0.935431, -0.141349, 0.324020,
		0.054944, 0.847311, 0.528247,
		34.747509, 27.444176, 38.273193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084618, 27.058634, 37.881618>,  <34.709049, 26.851057, 37.903419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084618, 27.058634, 37.881618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308296, 27.379333, 37.965996>,  <34.442501, 27.571754, 38.016624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308296, 27.379333, 37.965996>,  <34.084618, 27.058634, 37.881618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308296, 27.379333, 37.965996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375246, 0.471668, -0.797947,
		-0.739252, 0.367049, 0.564608,
		0.559193, 0.801751, 0.210948,
		34.476055, 27.619858, 38.029282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632469, 27.567675, 37.823650>,  <34.084618, 27.058634, 37.881618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632469, 27.567675, 37.823650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996288, 27.727592, 37.778248>,  <34.214581, 27.823544, 37.751007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996288, 27.727592, 37.778248>,  <33.632469, 27.567675, 37.823650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996288, 27.727592, 37.778248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291916, 0.420174, -0.859208,
		-0.295815, 0.814627, 0.498875,
		0.909548, 0.399797, -0.113509,
		34.269154, 27.847532, 37.744194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553295, 28.256563, 37.495510>,  <33.632469, 27.567675, 37.823650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553295, 28.256563, 37.495510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950565, 28.218939, 37.467918>,  <34.188927, 28.196363, 37.451363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950565, 28.218939, 37.467918>,  <33.553295, 28.256563, 37.495510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950565, 28.218939, 37.467918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001814, 0.578836, -0.815442,
		0.116628, 0.810001, 0.574715,
		0.993174, -0.094061, -0.068978,
		34.248516, 28.190720, 37.447224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872375, 28.969124, 37.383915>,  <33.553295, 28.256563, 37.495510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872375, 28.969124, 37.383915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136753, 28.699421, 37.252144>,  <34.295380, 28.537600, 37.173080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136753, 28.699421, 37.252144>,  <33.872375, 28.969124, 37.383915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136753, 28.699421, 37.252144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098664, 0.513255, -0.852546,
		0.743917, 0.530986, 0.405760,
		0.660948, -0.674258, -0.329430,
		34.335037, 28.497143, 37.153316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337547, 29.383358, 36.998386>,  <33.872375, 28.969124, 37.383915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337547, 29.383358, 36.998386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417587, 29.007401, 36.887707>,  <34.465611, 28.781826, 36.821301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417587, 29.007401, 36.887707>,  <34.337547, 29.383358, 36.998386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417587, 29.007401, 36.887707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043681, 0.290684, -0.955822,
		0.978802, 0.179171, 0.099221,
		0.200097, -0.939894, -0.276695,
		34.477615, 28.725431, 36.804699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017899, 29.297131, 36.580235>,  <34.337547, 29.383358, 36.998386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017899, 29.297131, 36.580235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744877, 29.024836, 36.473869>,  <34.581062, 28.861458, 36.410049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744877, 29.024836, 36.473869>,  <35.017899, 29.297131, 36.580235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744877, 29.024836, 36.473869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199709, 0.176264, -0.963871,
		0.703015, -0.711003, 0.015639,
		-0.682558, -0.680739, -0.265910,
		34.540108, 28.820614, 36.394096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230724, 29.048372, 35.954983>,  <35.017899, 29.297131, 36.580235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230724, 29.048372, 35.954983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842484, 28.952101, 35.955288>,  <34.609539, 28.894337, 35.955471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842484, 28.952101, 35.955288>,  <35.230724, 29.048372, 35.954983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842484, 28.952101, 35.955288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053509, 0.212711, -0.975649,
		0.234662, -0.947009, -0.219337,
		-0.970603, -0.240684, 0.000758,
		34.551304, 28.879896, 35.955517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118649, 28.744263, 35.229553>,  <35.230724, 29.048372, 35.954983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118649, 28.744263, 35.229553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750385, 28.819445, 35.366405>,  <34.529427, 28.864553, 35.448517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750385, 28.819445, 35.366405>,  <35.118649, 28.744263, 35.229553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750385, 28.819445, 35.366405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285903, 0.272087, -0.918819,
		-0.265790, -0.943737, -0.196762,
		-0.920660, 0.187958, 0.342135,
		34.474186, 28.875832, 35.469048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665287, 28.515352, 34.681114>,  <35.118649, 28.744263, 35.229553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665287, 28.515352, 34.681114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432587, 28.755939, 34.900131>,  <34.292965, 28.900291, 35.031540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432587, 28.755939, 34.900131>,  <34.665287, 28.515352, 34.681114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432587, 28.755939, 34.900131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438339, 0.335215, -0.833960,
		-0.685145, -0.725166, 0.068636,
		-0.581751, 0.601470, 0.547539,
		34.258060, 28.936380, 35.064392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953373, 28.448183, 34.424011>,  <34.665287, 28.515352, 34.681114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953373, 28.448183, 34.424011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943253, 28.793255, 34.626057>,  <33.937180, 29.000298, 34.747284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943253, 28.793255, 34.626057>,  <33.953373, 28.448183, 34.424011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943253, 28.793255, 34.626057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411100, 0.451596, -0.791870,
		-0.911239, -0.227690, 0.343221,
		-0.025304, 0.862681, 0.505115,
		33.935661, 29.052059, 34.777592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302322, 28.793049, 34.137051>,  <33.953373, 28.448183, 34.424011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302322, 28.793049, 34.137051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512226, 29.086187, 34.310284>,  <33.638168, 29.262072, 34.414223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512226, 29.086187, 34.310284>,  <33.302322, 28.793049, 34.137051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512226, 29.086187, 34.310284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308949, 0.638036, -0.705308,
		-0.793209, 0.236314, 0.561227,
		0.524757, 0.732847, 0.433087,
		33.669655, 29.306042, 34.440208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850891, 29.491032, 34.113979>,  <33.302322, 28.793049, 34.137051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850891, 29.491032, 34.113979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234840, 29.596710, 34.151600>,  <33.465210, 29.660118, 34.174171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234840, 29.596710, 34.151600>,  <32.850891, 29.491032, 34.113979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234840, 29.596710, 34.151600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096885, 0.627138, -0.772859,
		-0.263174, 0.732733, 0.627568,
		0.959871, 0.264198, 0.094056,
		33.522800, 29.675970, 34.179817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847275, 30.225237, 33.923313>,  <32.850891, 29.491032, 34.113979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847275, 30.225237, 33.923313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237423, 30.138069, 33.909714>,  <33.471512, 30.085770, 33.901554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237423, 30.138069, 33.909714>,  <32.847275, 30.225237, 33.923313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237423, 30.138069, 33.909714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106906, 0.601958, -0.791339,
		0.192912, 0.768218, 0.610431,
		0.975375, -0.217917, -0.033998,
		33.530037, 30.072695, 33.899513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183628, 30.824114, 33.801960>,  <32.847275, 30.225237, 33.923313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183628, 30.824114, 33.801960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443260, 30.547779, 33.674564>,  <33.599041, 30.381977, 33.598129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443260, 30.547779, 33.674564>,  <33.183628, 30.824114, 33.801960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443260, 30.547779, 33.674564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119418, 0.506009, -0.854222,
		0.751286, 0.516428, 0.410940,
		0.649083, -0.690838, -0.318487,
		33.637985, 30.340528, 33.579018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837727, 31.109076, 33.735416>,  <33.183628, 30.824114, 33.801960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837727, 31.109076, 33.735416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835419, 30.785515, 33.500252>,  <33.834034, 30.591377, 33.359154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835419, 30.785515, 33.500252>,  <33.837727, 31.109076, 33.735416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835419, 30.785515, 33.500252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376395, 0.542928, -0.750704,
		0.926441, -0.225621, 0.301333,
		-0.005773, -0.808903, -0.587913,
		33.833687, 30.542845, 33.323879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284996, 31.287594, 33.160587>,  <33.837727, 31.109076, 33.735416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284996, 31.287594, 33.160587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137115, 30.951681, 33.001549>,  <34.048386, 30.750134, 32.906124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137115, 30.951681, 33.001549>,  <34.284996, 31.287594, 33.160587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137115, 30.951681, 33.001549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298218, 0.298028, -0.906778,
		0.879992, -0.453808, 0.140257,
		-0.369703, -0.839784, -0.397596,
		34.026203, 30.699745, 32.882271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737305, 31.170023, 32.557766>,  <34.284996, 31.287594, 33.160587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737305, 31.170023, 32.557766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408279, 30.950623, 32.497715>,  <34.210865, 30.818981, 32.461685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408279, 30.950623, 32.497715>,  <34.737305, 31.170023, 32.557766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408279, 30.950623, 32.497715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066264, 0.169748, -0.983257,
		0.564803, -0.818737, -0.103282,
		-0.822561, -0.548503, -0.150127,
		34.161510, 30.786072, 32.452679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279350, 31.307617, 32.977440>,  <34.737305, 31.170023, 32.557766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279350, 31.307617, 32.977440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563030, 31.532911, 33.147053>,  <35.733238, 31.668087, 33.248821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563030, 31.532911, 33.147053>,  <35.279350, 31.307617, 32.977440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563030, 31.532911, 33.147053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393392, -0.815267, 0.424949,
		0.585044, -0.134564, -0.799760,
		0.709201, 0.563233, 0.424031,
		35.775791, 31.701881, 33.274261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838718, 30.978628, 32.720436>,  <35.279350, 31.307617, 32.977440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838718, 30.978628, 32.720436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908657, 31.204386, 33.043148>,  <35.950619, 31.339840, 33.236774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908657, 31.204386, 33.043148>,  <35.838718, 30.978628, 32.720436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908657, 31.204386, 33.043148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517178, -0.749900, 0.412525,
		0.837829, 0.345119, -0.423008,
		0.174843, 0.564396, 0.806776,
		35.961109, 31.373705, 33.285179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432968, 30.758009, 32.881702>,  <35.838718, 30.978628, 32.720436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432968, 30.758009, 32.881702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302181, 30.930346, 33.218147>,  <36.223709, 31.033749, 33.420013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302181, 30.930346, 33.218147>,  <36.432968, 30.758009, 32.881702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302181, 30.930346, 33.218147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520384, -0.660859, 0.540801,
		0.788857, 0.614524, -0.008127,
		-0.326964, 0.430843, 0.841112,
		36.204090, 31.059599, 33.470482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097374, 30.883308, 33.368732>,  <36.432968, 30.758009, 32.881702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097374, 30.883308, 33.368732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775394, 30.869936, 33.605694>,  <36.582207, 30.861912, 33.747871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775394, 30.869936, 33.605694>,  <37.097374, 30.883308, 33.368732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775394, 30.869936, 33.605694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517824, -0.527032, 0.673866,
		0.289687, 0.849188, 0.441545,
		-0.804947, -0.033432, 0.592404,
		36.533909, 30.859907, 33.783417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315098, 31.000551, 34.018143>,  <37.097374, 30.883308, 33.368732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315098, 31.000551, 34.018143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959015, 30.836679, 34.097843>,  <36.745365, 30.738356, 34.145664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959015, 30.836679, 34.097843>,  <37.315098, 31.000551, 34.018143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959015, 30.836679, 34.097843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363932, -0.376432, 0.851970,
		-0.274029, 0.830940, 0.484196,
		-0.890203, -0.409679, 0.199252,
		36.691956, 30.713776, 34.157619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294815, 31.117411, 34.710590>,  <37.315098, 31.000551, 34.018143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294815, 31.117411, 34.710590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998352, 30.852617, 34.665936>,  <36.820473, 30.693741, 34.639145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998352, 30.852617, 34.665936>,  <37.294815, 31.117411, 34.710590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998352, 30.852617, 34.665936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191264, -0.367614, 0.910098,
		-0.643506, 0.653177, 0.399074,
		-0.741160, -0.661982, -0.111633,
		36.776005, 30.654022, 34.632446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924995, 31.101992, 35.316795>,  <37.294815, 31.117411, 34.710590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924995, 31.101992, 35.316795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810486, 30.744358, 35.179008>,  <36.741779, 30.529778, 35.096336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810486, 30.744358, 35.179008>,  <36.924995, 31.101992, 35.316795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810486, 30.744358, 35.179008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277189, -0.421424, 0.863463,
		-0.917178, 0.151700, 0.368472,
		-0.286270, -0.894086, -0.344471,
		36.724606, 30.476131, 35.075668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533070, 30.714741, 35.906586>,  <36.924995, 31.101992, 35.316795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533070, 30.714741, 35.906586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654598, 30.442511, 35.639900>,  <36.727516, 30.279173, 35.479889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654598, 30.442511, 35.639900>,  <36.533070, 30.714741, 35.906586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654598, 30.442511, 35.639900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372997, -0.558965, 0.740561,
		-0.876679, -0.473680, 0.084028,
		0.303821, -0.680576, -0.666715,
		36.745743, 30.238338, 35.439884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440762, 30.085169, 36.272121>,  <36.533070, 30.714741, 35.906586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440762, 30.085169, 36.272121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686161, 29.980219, 35.974186>,  <36.833401, 29.917248, 35.795425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686161, 29.980219, 35.974186>,  <36.440762, 30.085169, 36.272121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686161, 29.980219, 35.974186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604514, -0.450850, 0.656732,
		-0.508120, -0.853167, -0.117985,
		0.613496, -0.262375, -0.744837,
		36.870209, 29.901506, 35.750736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526737, 29.310520, 36.349678>,  <36.440762, 30.085169, 36.272121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526737, 29.310520, 36.349678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838787, 29.471626, 36.158184>,  <37.026016, 29.568289, 36.043289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838787, 29.471626, 36.158184>,  <36.526737, 29.310520, 36.349678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838787, 29.471626, 36.158184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625471, -0.518983, 0.582618,
		-0.013797, -0.753948, -0.656789,
		0.780126, 0.402764, -0.478733,
		37.072826, 29.592455, 36.014565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027817, 28.828499, 36.288025>,  <36.526737, 29.310520, 36.349678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027817, 28.828499, 36.288025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217934, 29.176691, 36.236858>,  <37.332005, 29.385607, 36.206158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217934, 29.176691, 36.236858>,  <37.027817, 28.828499, 36.288025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217934, 29.176691, 36.236858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689903, -0.278502, 0.668184,
		0.546015, -0.405834, -0.732916,
		0.475291, 0.870480, -0.127920,
		37.360519, 29.437836, 36.198483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705360, 28.645309, 36.342339>,  <37.027817, 28.828499, 36.288025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705360, 28.645309, 36.342339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686176, 29.036425, 36.423950>,  <37.674664, 29.271093, 36.472916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686176, 29.036425, 36.423950>,  <37.705360, 28.645309, 36.342339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686176, 29.036425, 36.423950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642951, -0.126098, 0.755456,
		0.764404, 0.167417, -0.622622,
		-0.047964, 0.977789, 0.204031,
		37.671787, 29.329762, 36.485161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379768, 28.829012, 36.411701>,  <37.705360, 28.645309, 36.342339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379768, 28.829012, 36.411701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166870, 29.113604, 36.595230>,  <38.039131, 29.284359, 36.705345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166870, 29.113604, 36.595230>,  <38.379768, 28.829012, 36.411701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166870, 29.113604, 36.595230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452046, -0.219393, 0.864593,
		0.715801, 0.667581, -0.204851,
		-0.532243, 0.711479, 0.458820,
		38.007198, 29.327047, 36.732876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922169, 29.303425, 36.884136>,  <38.379768, 28.829012, 36.411701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922169, 29.303425, 36.884136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547291, 29.336603, 37.019661>,  <38.322365, 29.356510, 37.100975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547291, 29.336603, 37.019661>,  <38.922169, 29.303425, 36.884136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547291, 29.336603, 37.019661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309567, -0.249831, 0.917471,
		0.160743, 0.964730, 0.208464,
		-0.937193, 0.082944, 0.338807,
		38.266132, 29.361486, 37.121304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016102, 29.632574, 37.462971>,  <38.922169, 29.303425, 36.884136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016102, 29.632574, 37.462971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655472, 29.469732, 37.521530>,  <38.439095, 29.372026, 37.556667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655472, 29.469732, 37.521530>,  <39.016102, 29.632574, 37.462971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655472, 29.469732, 37.521530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224587, -0.151186, 0.962655,
		-0.369767, 0.900783, 0.227736,
		-0.901573, -0.407104, 0.146400,
		38.384998, 29.347601, 37.565449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900139, 29.724121, 38.249390>,  <39.016102, 29.632574, 37.462971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900139, 29.724121, 38.249390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610573, 29.474300, 38.132168>,  <38.436832, 29.324408, 38.061832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610573, 29.474300, 38.132168>,  <38.900139, 29.724121, 38.249390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610573, 29.474300, 38.132168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007335, -0.431733, 0.901972,
		-0.689851, 0.650801, 0.317119,
		-0.723914, -0.624552, -0.293057,
		38.393398, 29.286934, 38.044250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494991, 29.596506, 38.924049>,  <38.900139, 29.724121, 38.249390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494991, 29.596506, 38.924049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373573, 29.299908, 38.684700>,  <38.300724, 29.121948, 38.541092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373573, 29.299908, 38.684700>,  <38.494991, 29.596506, 38.924049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373573, 29.299908, 38.684700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346562, -0.499071, 0.794244,
		-0.887557, 0.448458, -0.105485,
		-0.303540, -0.741494, -0.598372,
		38.282513, 29.077459, 38.505188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939728, 29.392881, 39.275188>,  <38.494991, 29.596506, 38.924049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939728, 29.392881, 39.275188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039955, 29.090996, 39.032661>,  <38.100090, 28.909864, 38.887146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039955, 29.090996, 39.032661>,  <37.939728, 29.392881, 39.275188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039955, 29.090996, 39.032661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391532, -0.651792, 0.649515,
		-0.885393, 0.074648, -0.458811,
		0.250564, -0.754715, -0.606319,
		38.115124, 28.864582, 38.850765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303268, 28.985544, 39.146893>,  <37.939728, 29.392881, 39.275188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303268, 28.985544, 39.146893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604465, 28.730663, 39.081200>,  <37.785183, 28.577734, 39.041786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604465, 28.730663, 39.081200>,  <37.303268, 28.985544, 39.146893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604465, 28.730663, 39.081200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354458, -0.603054, 0.714623,
		-0.554399, -0.479895, -0.679958,
		0.752995, -0.637202, -0.164230,
		37.830364, 28.539503, 39.031929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047344, 28.365728, 39.226147>,  <37.303268, 28.985544, 39.146893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047344, 28.365728, 39.226147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438168, 28.301538, 39.282158>,  <37.672661, 28.263025, 39.315765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438168, 28.301538, 39.282158>,  <37.047344, 28.365728, 39.226147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438168, 28.301538, 39.282158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208117, -0.579704, 0.787801,
		-0.045248, -0.798869, -0.599801,
		0.977057, -0.160475, 0.140028,
		37.731285, 28.253395, 39.324165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205925, 27.637320, 39.370644>,  <37.047344, 28.365728, 39.226147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205925, 27.637320, 39.370644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515133, 27.834963, 39.529793>,  <37.700657, 27.953548, 39.625282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515133, 27.834963, 39.529793>,  <37.205925, 27.637320, 39.370644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515133, 27.834963, 39.529793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116574, -0.505856, 0.854705,
		0.623581, -0.707084, -0.333436,
		0.773019, 0.494108, 0.397870,
		37.747040, 27.983194, 39.649155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547340, 27.138842, 39.904419>,  <37.205925, 27.637320, 39.370644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547340, 27.138842, 39.904419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717442, 27.482496, 40.018291>,  <37.819504, 27.688690, 40.086613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717442, 27.482496, 40.018291>,  <37.547340, 27.138842, 39.904419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717442, 27.482496, 40.018291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118461, -0.258996, 0.958587,
		0.897289, -0.441365, -0.008364,
		0.425253, 0.859138, 0.284679,
		37.845016, 27.740238, 40.103695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003708, 26.917572, 40.358929>,  <37.547340, 27.138842, 39.904419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003708, 26.917572, 40.358929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944916, 27.303173, 40.447559>,  <37.909641, 27.534534, 40.500736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944916, 27.303173, 40.447559>,  <38.003708, 26.917572, 40.358929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944916, 27.303173, 40.447559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157969, -0.244011, 0.956820,
		0.976444, 0.105631, 0.188147,
		-0.146980, 0.964002, 0.221577,
		37.900822, 27.592373, 40.514034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441162, 27.114336, 40.891857>,  <38.003708, 26.917572, 40.358929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441162, 27.114336, 40.891857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149242, 27.387671, 40.900299>,  <37.974091, 27.551672, 40.905365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149242, 27.387671, 40.900299>,  <38.441162, 27.114336, 40.891857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149242, 27.387671, 40.900299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214159, -0.257818, 0.942160,
		0.649255, 0.683066, 0.334498,
		-0.729797, 0.683338, 0.021105,
		37.930302, 27.592672, 40.906631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483356, 27.457796, 41.563339>,  <38.441162, 27.114336, 40.891857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483356, 27.457796, 41.563339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115631, 27.559574, 41.443264>,  <37.894997, 27.620640, 41.371220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115631, 27.559574, 41.443264>,  <38.483356, 27.457796, 41.563339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115631, 27.559574, 41.443264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336739, -0.113921, 0.934681,
		0.203625, 0.960355, 0.190410,
		-0.919317, 0.254443, -0.300191,
		37.839836, 27.635906, 41.353207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204617, 28.140934, 42.005276>,  <38.483356, 27.457796, 41.563339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204617, 28.140934, 42.005276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899002, 27.939367, 41.844116>,  <37.715633, 27.818428, 41.747421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899002, 27.939367, 41.844116>,  <38.204617, 28.140934, 42.005276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899002, 27.939367, 41.844116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493389, 0.053973, 0.868133,
		-0.415720, 0.862065, -0.289863,
		-0.764031, -0.503916, -0.402895,
		37.669792, 27.788193, 41.723248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586014, 28.605280, 42.250130>,  <38.204617, 28.140934, 42.005276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586014, 28.605280, 42.250130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451485, 28.237991, 42.166454>,  <37.370766, 28.017618, 42.116249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451485, 28.237991, 42.166454>,  <37.586014, 28.605280, 42.250130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451485, 28.237991, 42.166454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502510, -0.012885, 0.864476,
		-0.796474, 0.395862, -0.457081,
		-0.336323, -0.918220, -0.209187,
		37.350586, 27.962524, 42.103699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890923, 28.683857, 42.371830>,  <37.586014, 28.605280, 42.250130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890923, 28.683857, 42.371830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972561, 28.293905, 42.407501>,  <37.021545, 28.059935, 42.428905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972561, 28.293905, 42.407501>,  <36.890923, 28.683857, 42.371830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972561, 28.293905, 42.407501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305780, 0.023054, 0.951823,
		-0.929969, -0.221536, -0.293393,
		0.204099, -0.974880, 0.089181,
		37.033791, 28.001442, 42.434254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425079, 28.451443, 42.769077>,  <36.890923, 28.683857, 42.371830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425079, 28.451443, 42.769077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682732, 28.146025, 42.787357>,  <36.837322, 27.962774, 42.798325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682732, 28.146025, 42.787357>,  <36.425079, 28.451443, 42.769077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682732, 28.146025, 42.787357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199352, -0.109894, 0.973747,
		-0.738479, -0.636333, -0.223001,
		0.644134, -0.763547, 0.045700,
		36.875973, 27.916962, 42.801067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084129, 27.956203, 43.154999>,  <36.425079, 28.451443, 42.769077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084129, 27.956203, 43.154999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469143, 27.849211, 43.172817>,  <36.700150, 27.785015, 43.183510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469143, 27.849211, 43.172817>,  <36.084129, 27.956203, 43.154999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469143, 27.849211, 43.172817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099983, -0.197379, 0.975215,
		-0.252062, -0.943130, -0.216727,
		0.962532, -0.267484, 0.044545,
		36.757904, 27.768967, 43.186180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135666, 27.360973, 43.627766>,  <36.084129, 27.956203, 43.154999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135666, 27.360973, 43.627766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499603, 27.526499, 43.615433>,  <36.717964, 27.625814, 43.608032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499603, 27.526499, 43.615433>,  <36.135666, 27.360973, 43.627766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499603, 27.526499, 43.615433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116598, -0.183643, 0.976053,
		0.398243, -0.891646, -0.215335,
		0.909839, 0.413815, -0.030830,
		36.772556, 27.650642, 43.606182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531021, 26.891134, 44.020088>,  <36.135666, 27.360973, 43.627766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531021, 26.891134, 44.020088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713326, 27.247169, 44.018028>,  <36.822708, 27.460791, 44.016792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713326, 27.247169, 44.018028>,  <36.531021, 26.891134, 44.020088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713326, 27.247169, 44.018028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097549, -0.044196, 0.994249,
		0.884741, -0.453641, -0.106970,
		0.455760, 0.890088, -0.005150,
		36.850052, 27.514196, 44.016483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124966, 26.810659, 44.446365>,  <36.531021, 26.891134, 44.020088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124966, 26.810659, 44.446365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075588, 27.207151, 44.427513>,  <37.045963, 27.445047, 44.416203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075588, 27.207151, 44.427513>,  <37.124966, 26.810659, 44.446365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075588, 27.207151, 44.427513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059325, 0.054776, 0.996735,
		0.990577, 0.120243, -0.065566,
		-0.123442, 0.991232, -0.047127,
		37.038555, 27.504520, 44.413376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798203, 27.183483, 44.670990>,  <37.124966, 26.810659, 44.446365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798203, 27.183483, 44.670990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480854, 27.420107, 44.728432>,  <37.290447, 27.562082, 44.762897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480854, 27.420107, 44.728432>,  <37.798203, 27.183483, 44.670990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480854, 27.420107, 44.728432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061959, -0.156206, 0.985779,
		0.605581, 0.790983, 0.087276,
		-0.793368, 0.591562, 0.143604,
		37.242844, 27.597576, 44.771511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792511, 27.374102, 45.451744>,  <37.798203, 27.183483, 44.670990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792511, 27.374102, 45.451744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438190, 27.532009, 45.354156>,  <37.225597, 27.626753, 45.295605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438190, 27.532009, 45.354156>,  <37.792511, 27.374102, 45.451744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438190, 27.532009, 45.354156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223112, 0.098698, 0.969783,
		0.406919, 0.913464, 0.000651,
		-0.885798, 0.394769, -0.243967,
		37.172451, 27.650440, 45.280968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752724, 27.870241, 45.906582>,  <37.792511, 27.374102, 45.451744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752724, 27.870241, 45.906582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383415, 27.789856, 45.775623>,  <37.161831, 27.741625, 45.697048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383415, 27.789856, 45.775623>,  <37.752724, 27.870241, 45.906582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383415, 27.789856, 45.775623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316404, -0.085499, 0.944764,
		-0.217854, 0.975860, 0.015354,
		-0.923270, -0.200963, -0.327392,
		37.106434, 27.729567, 45.677406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337284, 28.363600, 46.230457>,  <37.752724, 27.870241, 45.906582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337284, 28.363600, 46.230457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116684, 28.048128, 46.121769>,  <36.984325, 27.858845, 46.056557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116684, 28.048128, 46.121769>,  <37.337284, 28.363600, 46.230457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116684, 28.048128, 46.121769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512593, 0.063427, 0.856286,
		-0.658099, 0.611526, -0.439251,
		-0.551502, -0.788678, -0.271723,
		36.951233, 27.811525, 46.040253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671730, 28.586937, 46.358574>,  <37.337284, 28.363600, 46.230457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671730, 28.586937, 46.358574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685364, 28.187267, 46.367443>,  <36.693542, 27.947466, 46.372765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685364, 28.187267, 46.367443>,  <36.671730, 28.586937, 46.358574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685364, 28.187267, 46.367443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346078, 0.009014, 0.938163,
		-0.937587, -0.039649, -0.345484,
		0.034083, -0.999173, 0.022173,
		36.695587, 27.887516, 46.374096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339977, 29.115345, 46.862598>,  <36.671730, 28.586937, 46.358574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339977, 29.115345, 46.862598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459183, 29.489193, 46.940231>,  <36.530708, 29.713503, 46.986813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459183, 29.489193, 46.940231>,  <36.339977, 29.115345, 46.862598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459183, 29.489193, 46.940231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393825, 0.305594, -0.866899,
		-0.869533, 0.181917, 0.459150,
		0.298017, 0.934622, 0.194081,
		36.548588, 29.769579, 46.998455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742462, 29.641388, 46.811047>,  <36.339977, 29.115345, 46.862598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742462, 29.641388, 46.811047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074074, 29.859589, 46.761837>,  <36.273041, 29.990509, 46.732311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074074, 29.859589, 46.761837>,  <35.742462, 29.641388, 46.811047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074074, 29.859589, 46.761837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282348, 0.218433, -0.934113,
		-0.482690, 0.809143, 0.335109,
		0.829030, 0.545504, -0.123024,
		36.322784, 30.023239, 46.724930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625500, 30.222919, 46.604958>,  <35.742462, 29.641388, 46.811047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625500, 30.222919, 46.604958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990383, 30.208078, 46.441746>,  <36.209312, 30.199175, 46.343819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990383, 30.208078, 46.441746>,  <35.625500, 30.222919, 46.604958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990383, 30.208078, 46.441746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383721, 0.271719, -0.882568,
		0.143615, 0.961661, 0.233629,
		0.912213, -0.037102, -0.408032,
		36.264046, 30.196947, 46.319336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443420, 30.637941, 46.031040>,  <35.625500, 30.222919, 46.604958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443420, 30.637941, 46.031040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823650, 30.513887, 46.024956>,  <36.051788, 30.439455, 46.021305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823650, 30.513887, 46.024956>,  <35.443420, 30.637941, 46.031040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823650, 30.513887, 46.024956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068506, 0.257258, -0.963911,
		0.302855, 0.915224, 0.265789,
		0.950571, -0.310134, -0.015213,
		36.108822, 30.420847, 46.020393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920288, 31.165628, 45.812168>,  <35.443420, 30.637941, 46.031040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920288, 31.165628, 45.812168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089817, 30.816502, 45.715374>,  <36.191536, 30.607025, 45.657295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089817, 30.816502, 45.715374>,  <35.920288, 31.165628, 45.812168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089817, 30.816502, 45.715374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023097, 0.277499, -0.960448,
		0.905449, 0.401473, 0.137771,
		0.423826, -0.872819, -0.241988,
		36.216965, 30.554655, 45.642776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570831, 31.266737, 45.368515>,  <35.920288, 31.165628, 45.812168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570831, 31.266737, 45.368515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430840, 30.898264, 45.300468>,  <36.346844, 30.677179, 45.259640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430840, 30.898264, 45.300468>,  <36.570831, 31.266737, 45.368515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430840, 30.898264, 45.300468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098651, 0.144347, -0.984597,
		0.931550, -0.361368, 0.040357,
		-0.349976, -0.921183, -0.170115,
		36.325848, 30.621910, 45.249435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164940, 30.979864, 44.948498>,  <36.570831, 31.266737, 45.368515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164940, 30.979864, 44.948498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815342, 30.799648, 44.875679>,  <36.605583, 30.691519, 44.831985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815342, 30.799648, 44.875679>,  <37.164940, 30.979864, 44.948498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815342, 30.799648, 44.875679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047994, 0.292773, -0.954977,
		0.483554, -0.843385, -0.234259,
		-0.873997, -0.450540, -0.182049,
		36.553143, 30.664486, 44.821064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288078, 30.587324, 44.379032>,  <37.164940, 30.979864, 44.948498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288078, 30.587324, 44.379032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888470, 30.603050, 44.387184>,  <36.648705, 30.612486, 44.392075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888470, 30.603050, 44.387184>,  <37.288078, 30.587324, 44.379032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888470, 30.603050, 44.387184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005230, 0.352219, -0.935903,
		-0.043976, -0.935091, -0.351668,
		-0.999019, 0.039318, 0.020380,
		36.588764, 30.614845, 44.393299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046810, 30.500759, 43.729679>,  <37.288078, 30.587324, 44.379032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046810, 30.500759, 43.729679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687553, 30.619291, 43.859623>,  <36.472000, 30.690411, 43.937588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687553, 30.619291, 43.859623>,  <37.046810, 30.500759, 43.729679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687553, 30.619291, 43.859623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242636, 0.282145, -0.928182,
		-0.366705, -0.912460, -0.181505,
		-0.898140, 0.296329, 0.324860,
		36.418110, 30.708191, 43.957081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532001, 30.183531, 43.295238>,  <37.046810, 30.500759, 43.729679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532001, 30.183531, 43.295238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392921, 30.516232, 43.468349>,  <36.309471, 30.715851, 43.572216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392921, 30.516232, 43.468349>,  <36.532001, 30.183531, 43.295238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392921, 30.516232, 43.468349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324420, 0.326339, -0.887837,
		-0.879690, -0.449104, 0.156368,
		-0.347703, 0.831750, 0.432775,
		36.288612, 30.765757, 43.598183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913784, 30.210577, 43.027084>,  <36.532001, 30.183531, 43.295238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913784, 30.210577, 43.027084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959255, 30.585649, 43.158436>,  <35.986538, 30.810692, 43.237247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959255, 30.585649, 43.158436>,  <35.913784, 30.210577, 43.027084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959255, 30.585649, 43.158436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307321, 0.347501, -0.885888,
		-0.944791, -0.000209, 0.327673,
		0.113681, 0.937680, 0.328380,
		35.993359, 30.866953, 43.256950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293083, 30.619499, 42.883240>,  <35.913784, 30.210577, 43.027084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293083, 30.619499, 42.883240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581818, 30.894173, 42.917694>,  <35.755058, 31.058977, 42.938366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581818, 30.894173, 42.917694>,  <35.293083, 30.619499, 42.883240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581818, 30.894173, 42.917694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274681, 0.398514, -0.875064,
		-0.635219, 0.607992, 0.476280,
		0.721836, 0.686683, 0.086140,
		35.798367, 31.100178, 42.943535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067444, 31.241680, 42.575115>,  <35.293083, 30.619499, 42.883240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067444, 31.241680, 42.575115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463547, 31.277294, 42.532284>,  <35.701210, 31.298662, 42.506584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463547, 31.277294, 42.532284>,  <35.067444, 31.241680, 42.575115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463547, 31.277294, 42.532284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129554, 0.307032, -0.942840,
		-0.051069, 0.947525, 0.315576,
		0.990256, 0.089034, -0.107076,
		35.760624, 31.304005, 42.500160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188217, 31.986383, 42.273876>,  <35.067444, 31.241680, 42.575115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188217, 31.986383, 42.273876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504341, 31.746922, 42.221695>,  <35.694016, 31.603245, 42.190388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504341, 31.746922, 42.221695>,  <35.188217, 31.986383, 42.273876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504341, 31.746922, 42.221695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103901, 0.340772, -0.934387,
		0.603829, 0.724905, 0.331517,
		0.790314, -0.598654, -0.130450,
		35.741436, 31.567326, 42.182560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589924, 32.254684, 41.799385>,  <35.188217, 31.986383, 42.273876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589924, 32.254684, 41.799385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742168, 31.884832, 41.793919>,  <35.833515, 31.662920, 41.790638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742168, 31.884832, 41.793919>,  <35.589924, 32.254684, 41.799385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742168, 31.884832, 41.793919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266245, 0.123728, -0.955931,
		0.885578, 0.360198, 0.293272,
		0.380610, -0.924634, -0.013670,
		35.856350, 31.607443, 41.789818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176067, 32.258904, 41.334335>,  <35.589924, 32.254684, 41.799385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176067, 32.258904, 41.334335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128685, 31.862701, 41.362240>,  <36.100258, 31.624981, 41.378983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128685, 31.862701, 41.362240>,  <36.176067, 32.258904, 41.334335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128685, 31.862701, 41.362240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306238, -0.103275, -0.946336,
		0.944556, -0.090733, 0.315564,
		-0.118454, -0.990506, 0.069763,
		36.093147, 31.565550, 41.383167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818638, 32.001495, 41.183666>,  <36.176067, 32.258904, 41.334335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818638, 32.001495, 41.183666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531616, 31.736122, 41.098846>,  <36.359402, 31.576897, 41.047955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531616, 31.736122, 41.098846>,  <36.818638, 32.001495, 41.183666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531616, 31.736122, 41.098846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331536, -0.057601, -0.941682,
		0.612532, -0.746012, 0.261285,
		-0.717557, -0.663436, -0.212048,
		36.316349, 31.537092, 41.035233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210388, 31.472975, 40.818630>,  <36.818638, 32.001495, 41.183666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210388, 31.472975, 40.818630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826820, 31.420094, 40.718235>,  <36.596680, 31.388365, 40.657997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826820, 31.420094, 40.718235>,  <37.210388, 31.472975, 40.818630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826820, 31.420094, 40.718235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265188, -0.103550, -0.958620,
		0.100743, -0.985799, 0.134355,
		-0.958920, -0.132204, -0.250990,
		36.539146, 31.380432, 40.642937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279293, 30.762522, 40.588722>,  <37.210388, 31.472975, 40.818630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279293, 30.762522, 40.588722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962551, 30.937462, 40.418224>,  <36.772507, 31.042425, 40.315926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962551, 30.937462, 40.418224>,  <37.279293, 30.762522, 40.588722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962551, 30.937462, 40.418224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330507, -0.280017, -0.901308,
		-0.513544, -0.854585, 0.077186,
		-0.791857, 0.437351, -0.426247,
		36.724995, 31.068666, 40.290352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956902, 30.361008, 40.128902>,  <37.279293, 30.762522, 40.588722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956902, 30.361008, 40.128902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841846, 30.721060, 39.998039>,  <36.772812, 30.937092, 39.919521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841846, 30.721060, 39.998039>,  <36.956902, 30.361008, 40.128902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841846, 30.721060, 39.998039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260994, -0.254993, -0.931054,
		-0.921492, -0.353190, -0.161584,
		-0.287636, 0.900131, -0.327155,
		36.755554, 30.991098, 39.899895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916771, 30.281063, 39.444973>,  <36.956902, 30.361008, 40.128902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916771, 30.281063, 39.444973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859791, 30.676826, 39.433792>,  <36.825603, 30.914284, 39.427082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859791, 30.676826, 39.433792>,  <36.916771, 30.281063, 39.444973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859791, 30.676826, 39.433792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364051, 0.026109, -0.931013,
		-0.920421, -0.142800, -0.363914,
		-0.142450, 0.989407, -0.027955,
		36.817055, 30.973648, 39.425407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522400, 30.376165, 38.795776>,  <36.916771, 30.281063, 39.444973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522400, 30.376165, 38.795776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699047, 30.717598, 38.906315>,  <36.805035, 30.922459, 38.972637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699047, 30.717598, 38.906315>,  <36.522400, 30.376165, 38.795776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699047, 30.717598, 38.906315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237200, 0.185976, -0.953493,
		-0.865280, 0.486630, -0.120340,
		0.441618, 0.853583, 0.276350,
		36.831532, 30.973673, 38.989220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452320, 30.765287, 38.182003>,  <36.522400, 30.376165, 38.795776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452320, 30.765287, 38.182003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712719, 30.973766, 38.402752>,  <36.868958, 31.098854, 38.535202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712719, 30.973766, 38.402752>,  <36.452320, 30.765287, 38.182003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712719, 30.973766, 38.402752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361110, 0.426848, -0.829096,
		-0.667688, 0.739022, 0.089665,
		0.650993, 0.521199, 0.551869,
		36.908016, 31.130125, 38.568314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475441, 31.426922, 37.915043>,  <36.452320, 30.765287, 38.182003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475441, 31.426922, 37.915043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820000, 31.372663, 38.110836>,  <37.026733, 31.340109, 38.228313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820000, 31.372663, 38.110836>,  <36.475441, 31.426922, 37.915043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820000, 31.372663, 38.110836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472494, 0.567650, -0.674184,
		-0.186406, 0.812018, 0.553063,
		0.861396, -0.135647, 0.489487,
		37.078419, 31.331970, 38.257683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858997, 32.094540, 37.996635>,  <36.475441, 31.426922, 37.915043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858997, 32.094540, 37.996635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145695, 31.818399, 38.036034>,  <37.317715, 31.652716, 38.059673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145695, 31.818399, 38.036034>,  <36.858997, 32.094540, 37.996635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145695, 31.818399, 38.036034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591427, 0.526960, -0.610350,
		0.369450, 0.495717, 0.785984,
		0.716743, -0.690346, 0.098495,
		37.360718, 31.611296, 38.065582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427998, 32.429779, 38.202183>,  <36.858997, 32.094540, 37.996635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427998, 32.429779, 38.202183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562145, 32.081608, 38.058022>,  <37.642632, 31.872705, 37.971523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562145, 32.081608, 38.058022>,  <37.427998, 32.429779, 38.202183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562145, 32.081608, 38.058022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651897, 0.490588, -0.578233,
		0.680118, -0.041027, 0.731954,
		0.335365, -0.870425, -0.360403,
		37.662754, 31.820480, 37.949902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236469, 32.354755, 38.395027>,  <37.427998, 32.429779, 38.202183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236469, 32.354755, 38.395027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118130, 32.154034, 38.069901>,  <38.047127, 32.033600, 37.874825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118130, 32.154034, 38.069901>,  <38.236469, 32.354755, 38.395027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118130, 32.154034, 38.069901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559559, 0.598591, -0.573221,
		0.774189, -0.624401, 0.103702,
		-0.295845, -0.501809, -0.812812,
		38.029377, 32.003490, 37.826057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825996, 32.025745, 38.228199>,  <38.236469, 32.354755, 38.395027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825996, 32.025745, 38.228199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586315, 32.072464, 37.911388>,  <38.442505, 32.100494, 37.721302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586315, 32.072464, 37.911388>,  <38.825996, 32.025745, 38.228199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586315, 32.072464, 37.911388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732503, 0.479237, -0.483498,
		0.323099, -0.869879, -0.372715,
		-0.599204, 0.116797, -0.792031,
		38.406555, 32.107502, 37.673779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266621, 32.128113, 37.685287>,  <38.825996, 32.025745, 38.228199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266621, 32.128113, 37.685287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930950, 32.195557, 37.478466>,  <38.729546, 32.236023, 37.354374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930950, 32.195557, 37.478466>,  <39.266621, 32.128113, 37.685287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930950, 32.195557, 37.478466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503850, 0.598914, -0.622444,
		0.204721, -0.782861, -0.587552,
		-0.839181, 0.168611, -0.517055,
		38.679195, 32.246140, 37.323349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353275, 31.819082, 36.969296>,  <39.266621, 32.128113, 37.685287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353275, 31.819082, 36.969296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084953, 32.115715, 36.972809>,  <38.923962, 32.293694, 36.974918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084953, 32.115715, 36.972809>,  <39.353275, 31.819082, 36.969296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084953, 32.115715, 36.972809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471131, 0.435252, -0.767197,
		-0.572762, -0.510502, -0.641351,
		-0.670805, 0.741582, 0.008783,
		38.883713, 32.338188, 36.975445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107929, 32.010529, 36.275631>,  <39.353275, 31.819082, 36.969296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107929, 32.010529, 36.275631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043968, 32.333900, 36.502213>,  <39.005592, 32.527924, 36.638161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043968, 32.333900, 36.502213>,  <39.107929, 32.010529, 36.275631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043968, 32.333900, 36.502213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421260, 0.574847, -0.701492,
		-0.892733, 0.126456, -0.432478,
		-0.159901, 0.808431, 0.566455,
		38.995998, 32.576431, 36.672150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726341, 32.571049, 35.798317>,  <39.107929, 32.010529, 36.275631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726341, 32.571049, 35.798317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874752, 32.765556, 36.114765>,  <38.963799, 32.882263, 36.304634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874752, 32.765556, 36.114765>,  <38.726341, 32.571049, 35.798317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874752, 32.765556, 36.114765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259598, 0.763654, -0.591135,
		-0.891598, 0.424703, 0.157103,
		0.371029, 0.486271, 0.791124,
		38.986061, 32.911438, 36.352104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795883, 33.258350, 35.604233>,  <38.726341, 32.571049, 35.798317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795883, 33.258350, 35.604233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003830, 33.317863, 35.940708>,  <39.128597, 33.353573, 36.142593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003830, 33.317863, 35.940708>,  <38.795883, 33.258350, 35.604233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003830, 33.317863, 35.940708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670787, 0.538630, -0.509826,
		-0.528943, 0.829302, 0.180217,
		0.519870, 0.148781, 0.841189,
		39.159790, 33.362499, 36.193066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925076, 33.992924, 35.705696>,  <38.795883, 33.258350, 35.604233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925076, 33.992924, 35.705696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209572, 33.816944, 35.924995>,  <39.380272, 33.711357, 36.056576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209572, 33.816944, 35.924995>,  <38.925076, 33.992924, 35.705696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209572, 33.816944, 35.924995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697212, 0.540911, -0.470436,
		-0.089587, 0.716841, 0.691457,
		0.711245, -0.439948, 0.548249,
		39.422947, 33.684959, 36.089470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388035, 34.556995, 35.770668>,  <38.925076, 33.992924, 35.705696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388035, 34.556995, 35.770668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582718, 34.216068, 35.847271>,  <39.699528, 34.011513, 35.893234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582718, 34.216068, 35.847271>,  <39.388035, 34.556995, 35.770668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582718, 34.216068, 35.847271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859232, 0.427526, -0.280966,
		0.157598, 0.301297, 0.940417,
		0.486707, -0.852315, 0.191506,
		39.728729, 33.960373, 35.904724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940365, 34.788254, 36.021709>,  <39.388035, 34.556995, 35.770668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940365, 34.788254, 36.021709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015186, 34.404701, 35.936329>,  <40.060078, 34.174568, 35.885101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015186, 34.404701, 35.936329>,  <39.940365, 34.788254, 36.021709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015186, 34.404701, 35.936329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854928, 0.265921, -0.445404,
		0.483850, -0.099171, 0.869514,
		0.187051, -0.958880, -0.213450,
		40.071301, 34.117039, 35.872295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596222, 34.584526, 36.414898>,  <39.940365, 34.788254, 36.021709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596222, 34.584526, 36.414898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570404, 34.345287, 36.095371>,  <40.554913, 34.201744, 35.903656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570404, 34.345287, 36.095371>,  <40.596222, 34.584526, 36.414898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570404, 34.345287, 36.095371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894162, 0.320747, -0.312403,
		0.443067, -0.734439, 0.514093,
		-0.064547, -0.598098, -0.798820,
		40.551041, 34.165859, 35.855724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283710, 34.285263, 36.331287>,  <40.596222, 34.584526, 36.414898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283710, 34.285263, 36.331287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088093, 34.202396, 35.992367>,  <40.970722, 34.152676, 35.789013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088093, 34.202396, 35.992367>,  <41.283710, 34.285263, 36.331287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088093, 34.202396, 35.992367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815840, 0.235054, -0.528351,
		0.308617, -0.949649, 0.054062,
		-0.489040, -0.207164, -0.847303,
		40.941380, 34.140247, 35.738174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850609, 34.011829, 35.964680>,  <41.283710, 34.285263, 36.331287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850609, 34.011829, 35.964680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552902, 34.137081, 35.728706>,  <41.374279, 34.212231, 35.587124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552902, 34.137081, 35.728706>,  <41.850609, 34.011829, 35.964680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552902, 34.137081, 35.728706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666814, 0.398300, -0.629854,
		0.037745, -0.862154, -0.505239,
		-0.744268, 0.313126, -0.589930,
		41.329620, 34.231018, 35.551727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140827, 33.911232, 35.342457>,  <41.850609, 34.011829, 35.964680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140827, 33.911232, 35.342457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836643, 34.161541, 35.273052>,  <41.654133, 34.311726, 35.231411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836643, 34.161541, 35.273052>,  <42.140827, 33.911232, 35.342457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836643, 34.161541, 35.273052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611272, 0.599620, -0.516529,
		-0.219188, -0.498864, -0.838505,
		-0.760463, 0.625771, -0.173513,
		41.608505, 34.349274, 35.220997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992813, 33.970127, 34.576328>,  <42.140827, 33.911232, 35.342457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992813, 33.970127, 34.576328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867271, 34.303352, 34.758541>,  <41.791946, 34.503288, 34.867870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867271, 34.303352, 34.758541>,  <41.992813, 33.970127, 34.576328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867271, 34.303352, 34.758541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484538, 0.553126, -0.677697,
		-0.816529, 0.008028, -0.577248,
		-0.313850, 0.833059, 0.455534,
		41.773117, 34.553268, 34.895203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812458, 34.524490, 34.015484>,  <41.992813, 33.970127, 34.576328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812458, 34.524490, 34.015484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890919, 34.692749, 34.369789>,  <41.937996, 34.793705, 34.582375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890919, 34.692749, 34.369789>,  <41.812458, 34.524490, 34.015484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890919, 34.692749, 34.369789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473627, 0.750311, -0.461206,
		-0.858604, 0.509989, -0.052056,
		0.196152, 0.420648, 0.885765,
		41.949764, 34.818943, 34.635517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537022, 35.297852, 34.185703>,  <41.812458, 34.524490, 34.015484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537022, 35.297852, 34.185703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887199, 35.197460, 34.350925>,  <42.097305, 35.137226, 34.450058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887199, 35.197460, 34.350925>,  <41.537022, 35.297852, 34.185703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887199, 35.197460, 34.350925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416604, 0.825116, -0.381607,
		-0.245041, 0.506154, 0.826899,
		0.875440, -0.250980, 0.413054,
		42.149830, 35.122166, 34.474842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878296, 35.856529, 34.734058>,  <41.537022, 35.297852, 34.185703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878296, 35.856529, 34.734058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194813, 35.689194, 34.555691>,  <42.384724, 35.588791, 34.448669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194813, 35.689194, 34.555691>,  <41.878296, 35.856529, 34.734058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194813, 35.689194, 34.555691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291135, 0.899106, -0.326878,
		0.537673, 0.128836, 0.833252,
		0.791296, -0.418342, -0.445916,
		42.432201, 35.563690, 34.421917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454212, 36.178814, 34.947243>,  <41.878296, 35.856529, 34.734058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454212, 36.178814, 34.947243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509686, 36.011536, 34.588161>,  <42.542969, 35.911167, 34.372711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509686, 36.011536, 34.588161>,  <42.454212, 36.178814, 34.947243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509686, 36.011536, 34.588161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282383, 0.885534, -0.368902,
		0.949224, -0.202335, 0.240904,
		0.138687, -0.418198, -0.897706,
		42.551292, 35.886078, 34.318848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128056, 36.246326, 34.707981>,  <42.454212, 36.178814, 34.947243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128056, 36.246326, 34.707981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842953, 36.250515, 34.427448>,  <42.671890, 36.253029, 34.259129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842953, 36.250515, 34.427448>,  <43.128056, 36.246326, 34.707981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842953, 36.250515, 34.427448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343278, 0.877164, -0.335773,
		0.611667, -0.480077, -0.628800,
		-0.712758, 0.010471, -0.701332,
		42.629124, 36.253654, 34.217049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630939, 36.898628, 34.615761>,  <43.128056, 36.246326, 34.707981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630939, 36.898628, 34.615761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845253, 37.198269, 34.771599>,  <43.973839, 37.378052, 34.865101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845253, 37.198269, 34.771599>,  <43.630939, 36.898628, 34.615761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845253, 37.198269, 34.771599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128873, 0.528556, -0.839059,
		-0.834465, 0.399343, 0.379729,
		0.535780, 0.749102, 0.389597,
		44.005985, 37.423000, 34.888477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479134, 37.483536, 34.298977>,  <43.630939, 36.898628, 34.615761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479134, 37.483536, 34.298977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835125, 37.620197, 34.419785>,  <44.048721, 37.702194, 34.492268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835125, 37.620197, 34.419785>,  <43.479134, 37.483536, 34.298977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835125, 37.620197, 34.419785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044898, 0.593448, -0.803619,
		-0.453790, 0.728763, 0.512815,
		0.889977, 0.341650, 0.302021,
		44.102119, 37.722691, 34.510391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527969, 38.288010, 34.233963>,  <43.479134, 37.483536, 34.298977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527969, 38.288010, 34.233963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887379, 38.125916, 34.166500>,  <44.103024, 38.028660, 34.126022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887379, 38.125916, 34.166500>,  <43.527969, 38.288010, 34.233963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887379, 38.125916, 34.166500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149046, 0.643103, -0.751135,
		0.412850, 0.649772, 0.638240,
		0.898521, -0.405233, -0.168659,
		44.156937, 38.004345, 34.115902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210373, 38.710579, 34.257168>,  <43.527969, 38.288010, 34.233963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210373, 38.710579, 34.257168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182266, 38.414631, 33.989540>,  <44.165401, 38.237064, 33.828964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182266, 38.414631, 33.989540>,  <44.210373, 38.710579, 34.257168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182266, 38.414631, 33.989540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076157, 0.672752, -0.735937,
		0.994617, -0.000758, -0.103620,
		-0.070269, -0.739867, -0.669073,
		44.161186, 38.192669, 33.788818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.651066, 38.937645, 33.678879>,  <44.210373, 38.710579, 34.257168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.651066, 38.937645, 33.678879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368450, 38.684669, 33.551868>,  <44.198879, 38.532883, 33.475662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368450, 38.684669, 33.551868>,  <44.651066, 38.937645, 33.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368450, 38.684669, 33.551868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108061, 0.539846, -0.834799,
		0.699377, -0.555504, -0.449763,
		-0.706537, -0.632441, -0.317528,
		44.156490, 38.494938, 33.456612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774345, 38.879143, 32.980713>,  <44.651066, 38.937645, 33.678879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774345, 38.879143, 32.980713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399738, 38.749561, 33.034359>,  <44.174973, 38.671814, 33.066547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399738, 38.749561, 33.034359>,  <44.774345, 38.879143, 32.980713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399738, 38.749561, 33.034359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293479, 0.515012, -0.805377,
		0.191832, -0.793612, -0.577392,
		-0.936520, -0.323949, 0.134113,
		44.118782, 38.652374, 33.074593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496048, 38.593311, 32.372440>,  <44.774345, 38.879143, 32.980713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496048, 38.593311, 32.372440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174599, 38.699337, 32.585583>,  <43.981731, 38.762951, 32.713467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174599, 38.699337, 32.585583>,  <44.496048, 38.593311, 32.372440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174599, 38.699337, 32.585583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349473, 0.514551, -0.783011,
		-0.481731, -0.815462, -0.320870,
		-0.803619, 0.265065, 0.532857,
		43.933514, 38.778858, 32.745441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019382, 38.529438, 31.948141>,  <44.496048, 38.593311, 32.372440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019382, 38.529438, 31.948141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836231, 38.767292, 32.212494>,  <43.726341, 38.910004, 32.371105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836231, 38.767292, 32.212494>,  <44.019382, 38.529438, 31.948141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836231, 38.767292, 32.212494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314891, 0.586712, -0.746064,
		-0.831381, -0.549709, -0.081396,
		-0.457874, 0.594633, 0.660880,
		43.698868, 38.945683, 32.410759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221542, 38.640202, 31.679556>,  <44.019382, 38.529438, 31.948141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221542, 38.640202, 31.679556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337643, 38.931751, 31.927588>,  <43.407303, 39.106682, 32.076405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337643, 38.931751, 31.927588>,  <43.221542, 38.640202, 31.679556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337643, 38.931751, 31.927588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217862, 0.681289, -0.698843,
		-0.931820, 0.067752, 0.356541,
		0.290255, 0.728872, 0.620078,
		43.424721, 39.150414, 32.113609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710121, 39.123077, 31.512178>,  <43.221542, 38.640202, 31.679556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710121, 39.123077, 31.512178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027615, 39.290115, 31.689089>,  <43.218109, 39.390339, 31.795235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027615, 39.290115, 31.689089>,  <42.710121, 39.123077, 31.512178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027615, 39.290115, 31.689089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019939, 0.708852, -0.705075,
		-0.607943, 0.568458, 0.554311,
		0.793730, 0.417593, 0.442277,
		43.265732, 39.415394, 31.821772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484634, 39.812008, 31.542723>,  <42.710121, 39.123077, 31.512178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484634, 39.812008, 31.542723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881481, 39.803352, 31.592089>,  <43.119591, 39.798161, 31.621708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881481, 39.803352, 31.592089>,  <42.484634, 39.812008, 31.542723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881481, 39.803352, 31.592089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110252, 0.618774, -0.777794,
		-0.059536, 0.785271, 0.616283,
		0.992119, -0.021640, 0.123417,
		43.179115, 39.796860, 31.629114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824272, 40.527916, 31.338610>,  <42.484634, 39.812008, 31.542723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824272, 40.527916, 31.338610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118858, 40.259022, 31.308365>,  <43.295609, 40.097683, 31.290218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118858, 40.259022, 31.308365>,  <42.824272, 40.527916, 31.338610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118858, 40.259022, 31.308365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292849, 0.417575, -0.860157,
		0.609804, 0.611332, 0.504393,
		0.736464, -0.672238, -0.075611,
		43.339798, 40.057350, 31.285681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274761, 40.900818, 31.073679>,  <42.824272, 40.527916, 31.338610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274761, 40.900818, 31.073679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474030, 40.558544, 31.017637>,  <43.593590, 40.353180, 30.984013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474030, 40.558544, 31.017637>,  <43.274761, 40.900818, 31.073679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474030, 40.558544, 31.017637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298596, 0.321000, -0.898777,
		0.814041, 0.405913, 0.415418,
		0.498174, -0.855683, -0.140103,
		43.623482, 40.301838, 30.975607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984272, 41.015800, 30.797758>,  <43.274761, 40.900818, 31.073679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984272, 41.015800, 30.797758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911564, 40.632725, 30.708509>,  <43.867939, 40.402878, 30.654961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911564, 40.632725, 30.708509>,  <43.984272, 41.015800, 30.797758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911564, 40.632725, 30.708509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471478, 0.114240, -0.874447,
		0.862941, -0.264149, 0.430765,
		-0.181774, -0.957693, -0.223122,
		43.857033, 40.345417, 30.641573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632092, 40.707123, 30.553377>,  <43.984272, 41.015800, 30.797758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632092, 40.707123, 30.553377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361404, 40.440739, 30.427801>,  <44.198994, 40.280910, 30.352455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361404, 40.440739, 30.427801>,  <44.632092, 40.707123, 30.553377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361404, 40.440739, 30.427801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531552, -0.146891, -0.834192,
		0.509421, -0.731385, 0.453394,
		-0.676715, -0.665957, -0.313940,
		44.158390, 40.240952, 30.333618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999454, 40.195118, 30.249941>,  <44.632092, 40.707123, 30.553377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999454, 40.195118, 30.249941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623566, 40.160690, 30.117569>,  <44.398033, 40.140034, 30.038147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623566, 40.160690, 30.117569>,  <44.999454, 40.195118, 30.249941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623566, 40.160690, 30.117569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334952, -0.037069, -0.941506,
		0.068771, -0.995599, 0.063664,
		-0.939722, -0.086073, -0.330928,
		44.341648, 40.134869, 30.018290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926956, 39.651821, 29.756224>,  <44.999454, 40.195118, 30.249941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926956, 39.651821, 29.756224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609669, 39.887482, 29.694630>,  <44.419296, 40.028877, 29.657673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609669, 39.887482, 29.694630>,  <44.926956, 39.651821, 29.756224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609669, 39.887482, 29.694630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154888, -0.049356, -0.986698,
		-0.588913, -0.806515, -0.052102,
		-0.793215, 0.589150, -0.153986,
		44.371704, 40.064228, 29.648434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507481, 39.412895, 29.202358>,  <44.926956, 39.651821, 29.756224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507481, 39.412895, 29.202358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444935, 39.807808, 29.213835>,  <44.407410, 40.044754, 29.220720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444935, 39.807808, 29.213835>,  <44.507481, 39.412895, 29.202358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444935, 39.807808, 29.213835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163656, 0.054545, -0.985008,
		-0.974047, -0.149322, -0.170104,
		-0.156362, 0.987283, 0.028692,
		44.398026, 40.103992, 29.222443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285343, 39.614277, 28.567192>,  <44.507481, 39.412895, 29.202358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285343, 39.614277, 28.567192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326450, 39.989761, 28.698799>,  <44.351112, 40.215054, 28.777763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326450, 39.989761, 28.698799>,  <44.285343, 39.614277, 28.567192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326450, 39.989761, 28.698799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096939, 0.319743, -0.942532,
		-0.989971, 0.128753, -0.058140,
		0.102764, 0.938715, 0.329018,
		44.357281, 40.271378, 28.797504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046951, 40.099022, 28.058249>,  <44.285343, 39.614277, 28.567192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046951, 40.099022, 28.058249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302681, 40.338390, 28.251392>,  <44.456120, 40.482014, 28.367279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302681, 40.338390, 28.251392>,  <44.046951, 40.099022, 28.058249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302681, 40.338390, 28.251392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154078, 0.515523, -0.842909,
		-0.753343, 0.613290, 0.237381,
		0.639323, 0.598425, 0.482860,
		44.494476, 40.517918, 28.396250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858486, 40.870697, 27.949131>,  <44.046951, 40.099022, 28.058249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858486, 40.870697, 27.949131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244659, 40.855511, 28.052284>,  <44.476364, 40.846401, 28.114176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244659, 40.855511, 28.052284>,  <43.858486, 40.870697, 27.949131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244659, 40.855511, 28.052284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225762, 0.616308, -0.754451,
		-0.130294, 0.786590, 0.603573,
		0.965430, -0.037964, 0.257883,
		44.534286, 40.844120, 28.129650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020298, 41.608315, 27.975321>,  <43.858486, 40.870697, 27.949131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020298, 41.608315, 27.975321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346226, 41.378166, 27.946987>,  <44.541782, 41.240078, 27.929987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346226, 41.378166, 27.946987>,  <44.020298, 41.608315, 27.975321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346226, 41.378166, 27.946987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333695, 0.565432, -0.754277,
		0.474038, 0.590965, 0.652724,
		0.814823, -0.575367, -0.070834,
		44.590672, 41.205555, 27.925737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310711, 42.191265, 28.225666>,  <44.020298, 41.608315, 27.975321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310711, 42.191265, 28.225666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449673, 42.511189, 28.029867>,  <44.533051, 42.703144, 27.912388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449673, 42.511189, 28.029867>,  <44.310711, 42.191265, 28.225666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449673, 42.511189, 28.029867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338100, 0.593740, 0.730179,
		0.874641, -0.088171, 0.476686,
		0.347408, 0.799812, -0.489498,
		44.553894, 42.751133, 27.883018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030678, 42.789371, 28.508833>,  <44.310711, 42.191265, 28.225666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030678, 42.789371, 28.508833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381992, 42.930733, 28.380016>,  <44.592781, 43.015549, 28.302727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381992, 42.930733, 28.380016>,  <44.030678, 42.789371, 28.508833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381992, 42.930733, 28.380016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064840, 0.755361, 0.652093,
		0.473712, -0.551845, 0.686341,
		0.878290, 0.353406, -0.322042,
		44.645481, 43.036755, 28.283403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517612, 42.915531, 29.067131>,  <44.030678, 42.789371, 28.508833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517612, 42.915531, 29.067131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562496, 43.177681, 28.768362>,  <44.589428, 43.334972, 28.589100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562496, 43.177681, 28.768362>,  <44.517612, 42.915531, 29.067131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562496, 43.177681, 28.768362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042542, 0.747812, 0.662546,
		0.992773, -0.106121, 0.056032,
		0.112211, 0.655374, -0.746922,
		44.596161, 43.374294, 28.544285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242886, 43.175373, 29.167307>,  <44.517612, 42.915531, 29.067131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242886, 43.175373, 29.167307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989048, 43.405216, 28.960575>,  <44.836746, 43.543121, 28.836536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989048, 43.405216, 28.960575>,  <45.242886, 43.175373, 29.167307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989048, 43.405216, 28.960575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231160, 0.779245, 0.582531,
		0.737467, 0.250199, -0.627330,
		-0.634593, 0.574611, -0.516831,
		44.798672, 43.577599, 28.805525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.465927, 43.855804, 29.094227>,  <45.242886, 43.175373, 29.167307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.465927, 43.855804, 29.094227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070213, 43.908039, 29.068127>,  <44.832783, 43.939381, 29.052467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070213, 43.908039, 29.068127>,  <45.465927, 43.855804, 29.094227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070213, 43.908039, 29.068127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043630, 0.691041, 0.721498,
		0.139307, 0.710922, -0.689336,
		-0.989288, 0.130585, -0.065249,
		44.773426, 43.947216, 29.048552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282520, 44.622955, 28.862524>,  <45.465927, 43.855804, 29.094227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282520, 44.622955, 28.862524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047077, 44.429337, 29.121517>,  <44.905811, 44.313164, 29.276913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047077, 44.429337, 29.121517>,  <45.282520, 44.622955, 28.862524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047077, 44.429337, 29.121517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024529, 0.789864, 0.612791,
		-0.808045, 0.376576, -0.453049,
		-0.588610, -0.484050, 0.647483,
		44.870495, 44.284122, 29.315762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968067, 44.740055, 29.002102>,  <45.282520, 44.622955, 28.862524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968067, 44.740055, 29.002102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270073, 44.961441, 29.142752>,  <46.451275, 45.094273, 29.227142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270073, 44.961441, 29.142752>,  <45.968067, 44.740055, 29.002102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270073, 44.961441, 29.142752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049576, -0.486533, 0.872255,
		0.653836, -0.675994, -0.339899,
		0.755011, 0.553460, 0.351625,
		46.496574, 45.127480, 29.248240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533974, 44.248993, 29.269800>,  <45.968067, 44.740055, 29.002102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533974, 44.248993, 29.269800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520355, 44.584377, 29.487360>,  <46.512184, 44.785606, 29.617895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520355, 44.584377, 29.487360>,  <46.533974, 44.248993, 29.269800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520355, 44.584377, 29.487360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026364, -0.543272, 0.839143,
		0.999073, 0.042908, -0.003609,
		-0.034046, 0.838460, 0.543899,
		46.510143, 44.835915, 29.650530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012882, 44.232544, 29.832787>,  <46.533974, 44.248993, 29.269800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012882, 44.232544, 29.832787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697811, 44.433990, 29.974733>,  <46.508770, 44.554859, 30.059900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697811, 44.433990, 29.974733>,  <47.012882, 44.232544, 29.832787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697811, 44.433990, 29.974733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117227, -0.442959, 0.888845,
		0.604832, 0.741723, 0.289871,
		-0.787678, 0.503621, 0.354866,
		46.461510, 44.585075, 30.081194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.215336, 44.502129, 30.541416>,  <47.012882, 44.232544, 29.832787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.215336, 44.502129, 30.541416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835670, 44.408417, 30.457325>,  <46.607872, 44.352188, 30.406870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835670, 44.408417, 30.457325>,  <47.215336, 44.502129, 30.541416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835670, 44.408417, 30.457325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034082, -0.740430, 0.671269,
		-0.312926, 0.629981, 0.710775,
		-0.949166, -0.234282, -0.210228,
		46.550922, 44.338131, 30.394257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824299, 44.542336, 31.126137>,  <47.215336, 44.502129, 30.541416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824299, 44.542336, 31.126137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655430, 44.270039, 30.886681>,  <46.554108, 44.106663, 30.743008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655430, 44.270039, 30.886681>,  <46.824299, 44.542336, 31.126137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655430, 44.270039, 30.886681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025056, -0.668884, 0.742944,
		-0.906171, 0.298648, 0.299438,
		-0.422168, -0.680738, -0.598641,
		46.528778, 44.065819, 30.707088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358154, 44.251026, 31.543087>,  <46.824299, 44.542336, 31.126137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358154, 44.251026, 31.543087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398983, 43.967724, 31.263670>,  <46.423481, 43.797745, 31.096020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398983, 43.967724, 31.263670>,  <46.358154, 44.251026, 31.543087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398983, 43.967724, 31.263670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053324, -0.705095, 0.707105,
		-0.993347, -0.034926, -0.109737,
		0.102071, -0.708253, -0.698541,
		46.429604, 43.755249, 31.054108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990242, 43.767536, 31.823227>,  <46.358154, 44.251026, 31.543087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990242, 43.767536, 31.823227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186024, 43.581535, 31.528147>,  <46.303493, 43.469933, 31.351099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186024, 43.581535, 31.528147>,  <45.990242, 43.767536, 31.823227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186024, 43.581535, 31.528147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040535, -0.857179, 0.513422,
		-0.871086, -0.221394, -0.438400,
		0.489456, -0.465005, -0.737702,
		46.332859, 43.442036, 31.306837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604328, 43.129551, 31.735304>,  <45.990242, 43.767536, 31.823227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604328, 43.129551, 31.735304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978077, 43.073856, 31.604115>,  <46.202324, 43.040440, 31.525400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978077, 43.073856, 31.604115>,  <45.604328, 43.129551, 31.735304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978077, 43.073856, 31.604115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025637, -0.891821, 0.451661,
		-0.355383, -0.430427, -0.829720,
		0.934369, -0.139241, -0.327973,
		46.258389, 43.032085, 31.505722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513309, 42.444324, 31.675219>,  <45.604328, 43.129551, 31.735304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513309, 42.444324, 31.675219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906048, 42.519161, 31.662725>,  <46.141689, 42.564064, 31.655230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906048, 42.519161, 31.662725>,  <45.513309, 42.444324, 31.675219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906048, 42.519161, 31.662725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182211, -0.884546, 0.429392,
		0.052711, -0.427287, -0.902578,
		0.981846, 0.187093, -0.031231,
		46.200600, 42.575291, 31.653357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833397, 41.929218, 31.266644>,  <45.513309, 42.444324, 31.675219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833397, 41.929218, 31.266644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087143, 42.078289, 31.537552>,  <46.239391, 42.167732, 31.700096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087143, 42.078289, 31.537552>,  <45.833397, 41.929218, 31.266644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087143, 42.078289, 31.537552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090652, -0.905937, 0.413593,
		0.767702, -0.200972, -0.608477,
		0.634363, 0.372676, 0.677271,
		46.277451, 42.190090, 31.740734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267525, 41.395229, 31.390261>,  <45.833397, 41.929218, 31.266644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267525, 41.395229, 31.390261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344864, 41.617329, 31.713820>,  <46.391270, 41.750587, 31.907955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344864, 41.617329, 31.713820>,  <46.267525, 41.395229, 31.390261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344864, 41.617329, 31.713820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013227, -0.822904, 0.568026,
		0.981040, -0.120528, -0.151765,
		0.193352, 0.555249, 0.808897,
		46.402870, 41.783905, 31.956488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.869526, 41.167587, 31.552885>,  <46.267525, 41.395229, 31.390261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.869526, 41.167587, 31.552885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750755, 41.342278, 31.892555>,  <46.679493, 41.447094, 32.096359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750755, 41.342278, 31.892555>,  <46.869526, 41.167587, 31.552885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750755, 41.342278, 31.892555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266853, -0.815903, 0.512925,
		0.916855, 0.378908, 0.125723,
		-0.296929, 0.436728, 0.849177,
		46.661678, 41.473297, 32.147308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.399052, 40.894798, 32.120228>,  <46.869526, 41.167587, 31.552885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.399052, 40.894798, 32.120228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089993, 41.051525, 32.320026>,  <46.904556, 41.145561, 32.439907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089993, 41.051525, 32.320026>,  <47.399052, 40.894798, 32.120228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089993, 41.051525, 32.320026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117124, -0.685327, 0.718756,
		0.623937, 0.613848, 0.483626,
		-0.772648, 0.391814, 0.499497,
		46.858196, 41.169067, 32.469875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.576088, 41.141567, 32.895130>,  <47.399052, 40.894798, 32.120228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.576088, 41.141567, 32.895130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196224, 41.026482, 32.845554>,  <46.968304, 40.957428, 32.815807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196224, 41.026482, 32.845554>,  <47.576088, 41.141567, 32.895130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.196224, 41.026482, 32.845554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138324, -0.740074, 0.658147,
		-0.281083, 0.607874, 0.742618,
		-0.949663, -0.287716, -0.123939,
		46.911324, 40.940166, 32.808372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490974, 40.938183, 33.553310>,  <47.576088, 41.141567, 32.895130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490974, 40.938183, 33.553310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.202145, 40.790596, 33.319225>,  <47.028847, 40.702045, 33.178772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.202145, 40.790596, 33.319225>,  <47.490974, 40.938183, 33.553310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.202145, 40.790596, 33.319225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119444, -0.899693, 0.419864,
		-0.681431, 0.233271, 0.693712,
		-0.722070, -0.368968, -0.585216,
		46.985523, 40.679905, 33.143661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.164467, 40.401436, 33.915588>,  <47.490974, 40.938183, 33.553310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.164467, 40.401436, 33.915588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995453, 40.287407, 33.571449>,  <46.894043, 40.218990, 33.364967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995453, 40.287407, 33.571449>,  <47.164467, 40.401436, 33.915588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995453, 40.287407, 33.571449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063826, -0.956252, 0.285499,
		-0.904096, 0.065721, 0.422246,
		-0.422537, -0.285068, -0.860348,
		46.868690, 40.201885, 33.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495480, 39.986641, 34.065155>,  <47.164467, 40.401436, 33.915588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495480, 39.986641, 34.065155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608170, 39.865658, 33.700924>,  <46.675785, 39.793068, 33.482388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608170, 39.865658, 33.700924>,  <46.495480, 39.986641, 34.065155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608170, 39.865658, 33.700924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015830, -0.947422, 0.319595,
		-0.959365, -0.104452, -0.262124,
		0.281725, -0.302459, -0.910577,
		46.692688, 39.774921, 33.427750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972015, 39.496105, 33.811222>,  <46.495480, 39.986641, 34.065155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972015, 39.496105, 33.811222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318768, 39.442162, 33.619251>,  <46.526817, 39.409798, 33.504070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318768, 39.442162, 33.619251>,  <45.972015, 39.496105, 33.811222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318768, 39.442162, 33.619251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002338, -0.961606, 0.274425,
		-0.498509, -0.239015, -0.833283,
		0.866881, -0.134855, -0.479928,
		46.578831, 39.401707, 33.475273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937099, 38.971207, 33.385357>,  <45.972015, 39.496105, 33.811222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937099, 38.971207, 33.385357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333748, 38.976185, 33.436802>,  <46.571735, 38.979172, 33.467670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333748, 38.976185, 33.436802>,  <45.937099, 38.971207, 33.385357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333748, 38.976185, 33.436802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016834, -0.974420, 0.224101,
		0.128114, -0.224387, -0.966042,
		0.991616, 0.012448, 0.128615,
		46.631233, 38.979919, 33.475388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131649, 38.366470, 33.207855>,  <45.937099, 38.971207, 33.385357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131649, 38.366470, 33.207855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489079, 38.463711, 33.358814>,  <46.703537, 38.522057, 33.449390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489079, 38.463711, 33.358814>,  <46.131649, 38.366470, 33.207855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489079, 38.463711, 33.358814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174048, -0.962535, 0.207926,
		0.413809, -0.120111, -0.902405,
		0.893571, 0.243104, 0.377401,
		46.757149, 38.536640, 33.472034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642567, 37.989845, 32.810673>,  <46.131649, 38.366470, 33.207855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642567, 37.989845, 32.810673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805950, 38.067993, 33.167324>,  <46.903980, 38.114880, 33.381313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805950, 38.067993, 33.167324>,  <46.642567, 37.989845, 32.810673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.805950, 38.067993, 33.167324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206483, -0.971281, 0.118228,
		0.889116, 0.135814, -0.437066,
		0.408457, 0.195366, 0.891625,
		46.928486, 38.126602, 33.434811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306610, 37.693203, 32.767998>,  <46.642567, 37.989845, 32.810673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306610, 37.693203, 32.767998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209633, 37.729946, 33.154320>,  <47.151447, 37.751991, 33.386112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209633, 37.729946, 33.154320>,  <47.306610, 37.693203, 32.767998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209633, 37.729946, 33.154320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169675, -0.976150, 0.135430,
		0.955214, 0.196707, 0.221071,
		-0.242438, 0.091854, 0.965809,
		47.136902, 37.757504, 33.444061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781353, 37.351208, 33.077744>,  <47.306610, 37.693203, 32.767998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781353, 37.351208, 33.077744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496105, 37.355541, 33.358124>,  <47.324955, 37.358139, 33.526352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496105, 37.355541, 33.358124>,  <47.781353, 37.351208, 33.077744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.496105, 37.355541, 33.358124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092007, -0.989786, 0.108897,
		0.694974, 0.142150, 0.704843,
		-0.713124, 0.010829, 0.700955,
		47.282169, 37.358791, 33.568409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.946445, 36.889240, 33.521957>,  <47.781353, 37.351208, 33.077744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.946445, 36.889240, 33.521957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.568081, 36.925137, 33.646664>,  <47.341061, 36.946674, 33.721489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.568081, 36.925137, 33.646664>,  <47.946445, 36.889240, 33.521957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.568081, 36.925137, 33.646664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032955, -0.982589, 0.182845,
		0.322745, 0.162681, 0.932400,
		-0.945912, 0.089740, 0.311765,
		47.284306, 36.952057, 33.740192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.839813, 36.670856, 34.267365>,  <47.946445, 36.889240, 33.521957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.839813, 36.670856, 34.267365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520428, 36.593712, 34.039238>,  <47.328796, 36.547424, 33.902363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520428, 36.593712, 34.039238>,  <47.839813, 36.670856, 34.267365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520428, 36.593712, 34.039238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088363, -0.974585, 0.205853,
		-0.595523, 0.113972, 0.795213,
		-0.798464, -0.192858, -0.570317,
		47.280888, 36.535854, 33.868141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.319389, 36.352818, 34.677776>,  <47.839813, 36.670856, 34.267365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.319389, 36.352818, 34.677776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386719, 36.277725, 34.290699>,  <47.427116, 36.232670, 34.058453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386719, 36.277725, 34.290699>,  <47.319389, 36.352818, 34.677776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386719, 36.277725, 34.290699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213659, -0.951410, 0.221738,
		-0.962298, -0.244079, -0.120032,
		0.168322, -0.187732, -0.967690,
		47.437214, 36.221405, 34.000393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977699, 35.644764, 34.540695>,  <47.319389, 36.352818, 34.677776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977699, 35.644764, 34.540695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.283924, 35.738590, 34.301064>,  <47.467659, 35.794888, 34.157284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.283924, 35.738590, 34.301064>,  <46.977699, 35.644764, 34.540695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.283924, 35.738590, 34.301064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474131, -0.835111, 0.278905,
		-0.434877, -0.497562, -0.750543,
		0.765559, 0.234566, -0.599081,
		47.513592, 35.808960, 34.121338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.195526, 34.896694, 34.782429>,  <46.977699, 35.644764, 34.540695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.195526, 34.896694, 34.782429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234921, 34.820068, 34.391819>,  <47.258556, 34.774094, 34.157452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234921, 34.820068, 34.391819>,  <47.195526, 34.896694, 34.782429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234921, 34.820068, 34.391819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052537, 0.978928, -0.197333,
		0.993750, 0.070739, 0.086349,
		0.098489, -0.191563, -0.976526,
		47.264465, 34.762600, 34.098862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.671448, 34.456795, 35.216789>,  <47.195526, 34.896694, 34.782429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.671448, 34.456795, 35.216789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728199, 34.848812, 35.161083>,  <47.762249, 35.084023, 35.127659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728199, 34.848812, 35.161083>,  <47.671448, 34.456795, 35.216789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.728199, 34.848812, 35.161083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275039, 0.174176, 0.945524,
		0.950908, -0.095842, 0.294260,
		0.141874, 0.980040, -0.139265,
		47.770760, 35.142822, 35.119305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.888069, 32.772018, 42.179920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.680210, 32.466740, 42.026295>,  <33.555496, 32.283573, 41.934120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.680210, 32.466740, 42.026295>,  <33.888069, 32.772018, 42.179920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680210, 32.466740, 42.026295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234747, 0.304687, -0.923071,
		0.821501, -0.569826, 0.020829,
		-0.519643, -0.763194, -0.384066,
		33.524319, 32.237782, 41.911076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265167, 32.350632, 41.759541>,  <33.888069, 32.772018, 42.179920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265167, 32.350632, 41.759541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.889599, 32.297287, 41.632641>,  <33.664257, 32.265282, 41.556503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.889599, 32.297287, 41.632641>,  <34.265167, 32.350632, 41.759541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889599, 32.297287, 41.632641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285994, 0.210355, -0.934857,
		0.191412, -0.968486, -0.159364,
		-0.938919, -0.133366, -0.317245,
		33.607922, 32.257278, 41.537468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297482, 31.981237, 40.982578>,  <34.265167, 32.350632, 41.759541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297482, 31.981237, 40.982578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.938251, 32.149883, 41.032688>,  <33.722713, 32.251072, 41.062752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.938251, 32.149883, 41.032688>,  <34.297482, 31.981237, 40.982578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938251, 32.149883, 41.032688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028551, 0.228335, -0.973164,
		-0.438905, -0.877555, -0.193025,
		-0.898079, 0.421616, 0.125273,
		33.668827, 32.276367, 41.070271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977943, 31.788416, 40.417019>,  <34.297482, 31.981237, 40.982578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977943, 31.788416, 40.417019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.755932, 32.107815, 40.510265>,  <33.622723, 32.299454, 40.566216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.755932, 32.107815, 40.510265>,  <33.977943, 31.788416, 40.417019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755932, 32.107815, 40.510265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018716, 0.292165, -0.956185,
		-0.831618, -0.526350, -0.177106,
		-0.555033, 0.798496, 0.233118,
		33.589420, 32.347363, 40.580200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449619, 31.808102, 39.987896>,  <33.977943, 31.788416, 40.417019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449619, 31.808102, 39.987896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.437614, 32.188705, 40.110359>,  <33.430412, 32.417068, 40.183838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.437614, 32.188705, 40.110359>,  <33.449619, 31.808102, 39.987896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437614, 32.188705, 40.110359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093921, 0.302256, -0.948589,
		-0.995127, -0.057225, 0.080295,
		-0.030014, 0.951508, 0.306158,
		33.428612, 32.474159, 40.202206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941612, 32.115612, 39.528378>,  <33.449619, 31.808102, 39.987896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941612, 32.115612, 39.528378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.122417, 32.432541, 39.692284>,  <33.230900, 32.622700, 39.790627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.122417, 32.432541, 39.692284>,  <32.941612, 32.115612, 39.528378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122417, 32.432541, 39.692284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049353, 0.480882, -0.875395,
		-0.890644, 0.375468, 0.256469,
		0.452014, 0.792323, 0.409765,
		33.258022, 32.670238, 39.815212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593662, 32.690868, 39.250973>,  <32.941612, 32.115612, 39.528378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593662, 32.690868, 39.250973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.968372, 32.800922, 39.337467>,  <33.193199, 32.866955, 39.389366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.968372, 32.800922, 39.337467>,  <32.593662, 32.690868, 39.250973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968372, 32.800922, 39.337467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087498, 0.414148, -0.905994,
		-0.338824, 0.867631, 0.363889,
		0.936773, 0.275133, 0.216239,
		33.249405, 32.883461, 39.402340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694283, 33.298061, 38.823536>,  <32.593662, 32.690868, 39.250973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694283, 33.298061, 38.823536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.059265, 33.192970, 38.949009>,  <33.278255, 33.129913, 39.024292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.059265, 33.192970, 38.949009>,  <32.694283, 33.298061, 38.823536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059265, 33.192970, 38.949009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407735, 0.519520, -0.750901,
		0.034318, 0.813064, 0.581163,
		0.912455, -0.262729, 0.313685,
		33.333000, 33.114151, 39.043114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120457, 33.878258, 38.709671>,  <32.694283, 33.298061, 38.823536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120457, 33.878258, 38.709671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.396038, 33.589211, 38.732178>,  <33.561386, 33.415783, 38.745682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.396038, 33.589211, 38.732178>,  <33.120457, 33.878258, 38.709671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396038, 33.589211, 38.732178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481960, 0.398761, -0.780195,
		0.541347, 0.564635, 0.623001,
		0.688954, -0.722618, 0.056263,
		33.602726, 33.372425, 38.749058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874279, 34.274872, 38.608204>,  <33.120457, 33.878258, 38.709671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874279, 34.274872, 38.608204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.896313, 33.878925, 38.555855>,  <33.909534, 33.641357, 38.524445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.896313, 33.878925, 38.555855>,  <33.874279, 34.274872, 38.608204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896313, 33.878925, 38.555855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676719, 0.133387, -0.724057,
		0.734177, -0.048674, 0.677211,
		0.055088, -0.989868, -0.130869,
		33.912838, 33.581966, 38.516594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618675, 34.115089, 38.691795>,  <33.874279, 34.274872, 38.608204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618675, 34.115089, 38.691795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.432724, 33.852818, 38.453812>,  <34.321156, 33.695454, 38.311020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.432724, 33.852818, 38.453812>,  <34.618675, 34.115089, 38.691795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432724, 33.852818, 38.453812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583316, 0.278709, -0.762931,
		0.666058, -0.701717, 0.252903,
		-0.464876, -0.655679, -0.594959,
		34.293262, 33.656113, 38.275326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122330, 33.829834, 38.289017>,  <34.618675, 34.115089, 38.691795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122330, 33.829834, 38.289017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796223, 33.742306, 38.074558>,  <34.600559, 33.689789, 37.945885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.796223, 33.742306, 38.074558>,  <35.122330, 33.829834, 38.289017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796223, 33.742306, 38.074558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515522, 0.147453, -0.844094,
		0.263764, -0.964559, -0.007405,
		-0.815270, -0.218824, -0.536144,
		34.551643, 33.676659, 37.913715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413090, 33.442593, 37.635265>,  <35.122330, 33.829834, 38.289017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413090, 33.442593, 37.635265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037632, 33.564022, 37.569790>,  <34.812359, 33.636879, 37.530506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037632, 33.564022, 37.569790>,  <35.413090, 33.442593, 37.635265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037632, 33.564022, 37.569790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200157, 0.092971, -0.975343,
		-0.280874, -0.948260, -0.148029,
		-0.938641, 0.303577, -0.163688,
		34.756039, 33.655094, 37.520683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195507, 32.962440, 37.040253>,  <35.413090, 33.442593, 37.635265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195507, 32.962440, 37.040253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.968307, 33.291012, 37.060783>,  <34.831989, 33.488155, 37.073101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.968307, 33.291012, 37.060783>,  <35.195507, 32.962440, 37.040253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968307, 33.291012, 37.060783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194954, 0.194871, -0.961259,
		-0.799606, -0.535988, -0.270827,
		-0.568000, 0.821427, 0.051327,
		34.797909, 33.537441, 37.076183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601181, 32.853149, 36.640858>,  <35.195507, 32.962440, 37.040253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601181, 32.853149, 36.640858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716896, 33.235481, 36.661644>,  <34.786324, 33.464882, 36.674114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716896, 33.235481, 36.661644>,  <34.601181, 32.853149, 36.640858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716896, 33.235481, 36.661644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213443, -0.011488, -0.976888,
		-0.933144, 0.293689, -0.207339,
		0.289283, 0.955832, 0.051966,
		34.803680, 33.522232, 36.677235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556129, 33.063309, 35.929932>,  <34.601181, 32.853149, 36.640858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556129, 33.063309, 35.929932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722443, 33.379105, 36.110523>,  <34.822231, 33.568581, 36.218880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722443, 33.379105, 36.110523>,  <34.556129, 33.063309, 35.929932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722443, 33.379105, 36.110523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586375, 0.146756, -0.796634,
		-0.695190, 0.595965, -0.401917,
		0.415782, 0.789486, 0.451483,
		34.847176, 33.615952, 36.245968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587685, 33.635204, 35.331104>,  <34.556129, 33.063309, 35.929932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587685, 33.635204, 35.331104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862034, 33.729805, 35.606392>,  <35.026642, 33.786568, 35.771564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862034, 33.729805, 35.606392>,  <34.587685, 33.635204, 35.331104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862034, 33.729805, 35.606392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659249, 0.198569, -0.725232,
		-0.308180, 0.951124, -0.019723,
		0.685869, 0.236505, 0.688222,
		35.067795, 33.800755, 35.812859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835865, 34.285053, 35.152649>,  <34.587685, 33.635204, 35.331104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835865, 34.285053, 35.152649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129284, 34.149818, 35.388481>,  <35.305336, 34.068676, 35.529980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129284, 34.149818, 35.388481>,  <34.835865, 34.285053, 35.152649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129284, 34.149818, 35.388481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679626, 0.359477, -0.639441,
		0.004244, 0.869755, 0.493465,
		0.733546, -0.338086, 0.589583,
		35.349346, 34.048393, 35.565357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392265, 34.742283, 35.033165>,  <34.835865, 34.285053, 35.152649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392265, 34.742283, 35.033165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592701, 34.475491, 35.253727>,  <35.712963, 34.315414, 35.386063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592701, 34.475491, 35.253727>,  <35.392265, 34.742283, 35.033165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592701, 34.475491, 35.253727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858873, 0.305206, -0.411323,
		0.106055, 0.679692, 0.725790,
		0.501088, -0.666984, 0.551401,
		35.743027, 34.275394, 35.419147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925900, 35.069660, 35.231834>,  <35.392265, 34.742283, 35.033165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925900, 35.069660, 35.231834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023949, 34.681866, 35.230705>,  <36.082779, 34.449188, 35.230030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023949, 34.681866, 35.230705>,  <35.925900, 35.069660, 35.231834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023949, 34.681866, 35.230705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868701, 0.220926, -0.443339,
		0.430435, 0.106223, 0.896349,
		0.245119, -0.969489, -0.002818,
		36.097485, 34.391018, 35.229858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571960, 35.019394, 35.521496>,  <35.925900, 35.069660, 35.231834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571960, 35.019394, 35.521496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503418, 34.707245, 35.280945>,  <36.462292, 34.519955, 35.136612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503418, 34.707245, 35.280945>,  <36.571960, 35.019394, 35.521496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503418, 34.707245, 35.280945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696766, 0.335561, -0.633969,
		0.696531, -0.527656, 0.486235,
		-0.171356, -0.780370, -0.601381,
		36.452011, 34.473133, 35.100529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094917, 34.586407, 35.449249>,  <36.571960, 35.019394, 35.521496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094917, 34.586407, 35.449249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875156, 34.598232, 35.115234>,  <36.743301, 34.605328, 34.914825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875156, 34.598232, 35.115234>,  <37.094917, 34.586407, 35.449249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875156, 34.598232, 35.115234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775707, 0.389467, -0.496582,
		0.310540, -0.920566, -0.236904,
		-0.549402, 0.029560, -0.835035,
		36.710335, 34.607101, 34.864723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747707, 34.974228, 35.446030>,  <37.094917, 34.586407, 35.449249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747707, 34.974228, 35.446030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021866, 35.264877, 35.464962>,  <38.186363, 35.439266, 35.476322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021866, 35.264877, 35.464962>,  <37.747707, 34.974228, 35.446030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021866, 35.264877, 35.464962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064355, -0.004304, 0.997918,
		0.725317, -0.687020, 0.043812,
		0.685401, 0.726626, 0.047335,
		38.227486, 35.482864, 35.479164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405243, 34.704693, 35.838554>,  <37.747707, 34.974228, 35.446030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405243, 34.704693, 35.838554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368767, 35.102886, 35.849094>,  <38.346882, 35.341805, 35.855419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368767, 35.102886, 35.849094>,  <38.405243, 34.704693, 35.838554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368767, 35.102886, 35.849094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053834, -0.031346, 0.998058,
		0.994378, 0.089593, 0.056449,
		-0.091189, 0.995485, 0.026347,
		38.341412, 35.401531, 35.856998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757195, 34.871040, 36.446182>,  <38.405243, 34.704693, 35.838554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757195, 34.871040, 36.446182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542519, 35.198460, 36.364265>,  <38.413712, 35.394913, 36.315117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542519, 35.198460, 36.364265>,  <38.757195, 34.871040, 36.446182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542519, 35.198460, 36.364265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229089, 0.092234, 0.969026,
		0.812082, 0.566986, 0.138019,
		-0.536694, 0.818547, -0.204792,
		38.381512, 35.444023, 36.302826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963734, 35.274933, 36.958717>,  <38.757195, 34.871040, 36.446182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963734, 35.274933, 36.958717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616165, 35.422195, 36.826397>,  <38.407623, 35.510551, 36.747005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616165, 35.422195, 36.826397>,  <38.963734, 35.274933, 36.958717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616165, 35.422195, 36.826397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344327, 0.030467, 0.938355,
		0.355540, 0.929265, 0.100293,
		-0.868925, 0.368157, -0.330803,
		38.355488, 35.532642, 36.727158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692585, 35.929443, 37.425510>,  <38.963734, 35.274933, 36.958717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692585, 35.929443, 37.425510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366032, 35.794235, 37.238205>,  <38.170101, 35.713112, 37.125820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366032, 35.794235, 37.238205>,  <38.692585, 35.929443, 37.425510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366032, 35.794235, 37.238205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520571, 0.079627, 0.850097,
		-0.250061, 0.937765, -0.240967,
		-0.816379, -0.338017, -0.468262,
		38.121117, 35.692829, 37.097725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048428, 36.242767, 37.704502>,  <38.692585, 35.929443, 37.425510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048428, 36.242767, 37.704502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.897655, 35.939503, 37.491673>,  <37.807190, 35.757542, 37.363976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.897655, 35.939503, 37.491673>,  <38.048428, 36.242767, 37.704502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897655, 35.939503, 37.491673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676531, -0.167002, 0.717229,
		-0.632636, 0.630314, -0.449973,
		-0.376933, -0.758165, -0.532078,
		37.784576, 35.712051, 37.332050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326897, 36.294476, 37.651237>,  <38.048428, 36.242767, 37.704502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326897, 36.294476, 37.651237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393913, 35.901028, 37.624660>,  <37.434124, 35.664959, 37.608715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393913, 35.901028, 37.624660>,  <37.326897, 36.294476, 37.651237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393913, 35.901028, 37.624660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801982, -0.175182, 0.571083,
		-0.573370, -0.042395, -0.818199,
		0.167545, -0.983623, -0.066444,
		37.444176, 35.605942, 37.604729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655312, 35.933609, 37.569752>,  <37.326897, 36.294476, 37.651237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655312, 35.933609, 37.569752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927284, 35.688301, 37.730545>,  <37.090469, 35.541115, 37.827023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927284, 35.688301, 37.730545>,  <36.655312, 35.933609, 37.569752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927284, 35.688301, 37.730545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690094, -0.349830, 0.633553,
		-0.247912, -0.708181, -0.661074,
		0.679933, -0.613269, 0.401985,
		37.131264, 35.504318, 37.851139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331123, 35.212585, 37.695221>,  <36.655312, 35.933609, 37.569752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331123, 35.212585, 37.695221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641769, 35.183601, 37.945541>,  <36.828156, 35.166210, 38.095734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641769, 35.183601, 37.945541>,  <36.331123, 35.212585, 37.695221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641769, 35.183601, 37.945541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624936, -0.214072, 0.750752,
		0.079569, -0.974127, -0.211532,
		0.776610, -0.072457, 0.625800,
		36.874752, 35.161865, 38.133282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136227, 34.652164, 37.972221>,  <36.331123, 35.212585, 37.695221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136227, 34.652164, 37.972221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426788, 34.780167, 38.215511>,  <36.601124, 34.856968, 38.361485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426788, 34.780167, 38.215511>,  <36.136227, 34.652164, 37.972221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426788, 34.780167, 38.215511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542698, -0.275912, 0.793317,
		0.421683, -0.906348, -0.026756,
		0.726403, 0.320008, 0.608221,
		36.644711, 34.876167, 38.397976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238354, 34.087883, 38.501343>,  <36.136227, 34.652164, 37.972221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238354, 34.087883, 38.501343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418941, 34.412453, 38.649815>,  <36.527294, 34.607193, 38.738899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418941, 34.412453, 38.649815>,  <36.238354, 34.087883, 38.501343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418941, 34.412453, 38.649815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493307, -0.119655, 0.861586,
		0.743523, -0.572083, 0.346259,
		0.451467, 0.811421, 0.371179,
		36.554382, 34.655880, 38.761169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460758, 33.912392, 39.164890>,  <36.238354, 34.087883, 38.501343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460758, 33.912392, 39.164890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437698, 34.311695, 39.169903>,  <36.423862, 34.551277, 39.172909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437698, 34.311695, 39.169903>,  <36.460758, 33.912392, 39.164890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437698, 34.311695, 39.169903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406342, -0.034926, 0.913054,
		0.911900, 0.047550, 0.407648,
		-0.057653, 0.998258, 0.012527,
		36.420403, 34.611172, 39.173660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746754, 34.089119, 39.913242>,  <36.460758, 33.912392, 39.164890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746754, 34.089119, 39.913242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557251, 34.408840, 39.765366>,  <36.443550, 34.600674, 39.676640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557251, 34.408840, 39.765366>,  <36.746754, 34.089119, 39.913242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557251, 34.408840, 39.765366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383061, 0.190970, 0.903767,
		0.792983, 0.569779, 0.215708,
		-0.473754, 0.799301, -0.369696,
		36.415123, 34.648632, 39.654457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809536, 34.509628, 40.390224>,  <36.746754, 34.089119, 39.913242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809536, 34.509628, 40.390224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499657, 34.659622, 40.186569>,  <36.313728, 34.749619, 40.064377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499657, 34.659622, 40.186569>,  <36.809536, 34.509628, 40.390224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499657, 34.659622, 40.186569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497029, 0.136638, 0.856909,
		0.390900, 0.916904, 0.080527,
		-0.774700, 0.374989, -0.509140,
		36.267246, 34.772118, 40.033829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711353, 35.099586, 40.732346>,  <36.809536, 34.509628, 40.390224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711353, 35.099586, 40.732346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382069, 35.008331, 40.524391>,  <36.184498, 34.953579, 40.399616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382069, 35.008331, 40.524391>,  <36.711353, 35.099586, 40.732346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382069, 35.008331, 40.524391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541926, 0.042757, 0.839338,
		-0.169252, 0.972691, -0.158829,
		-0.823207, -0.228134, -0.519890,
		36.135105, 34.939892, 40.368423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223141, 35.372215, 41.154408>,  <36.711353, 35.099586, 40.732346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223141, 35.372215, 41.154408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.014694, 35.132343, 40.911484>,  <35.889626, 34.988419, 40.765732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.014694, 35.132343, 40.911484>,  <36.223141, 35.372215, 41.154408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014694, 35.132343, 40.911484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726897, -0.061059, 0.684027,
		-0.447279, 0.797908, -0.404086,
		-0.521117, -0.599679, -0.607307,
		35.858360, 34.952438, 40.729290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461277, 35.536190, 41.095085>,  <36.223141, 35.372215, 41.154408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461277, 35.536190, 41.095085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466721, 35.145199, 41.010841>,  <35.469986, 34.910606, 40.960297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466721, 35.145199, 41.010841>,  <35.461277, 35.536190, 41.095085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466721, 35.145199, 41.010841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703236, -0.159089, 0.692928,
		-0.710826, 0.138678, -0.689561,
		0.013608, -0.977476, -0.210608,
		35.470802, 34.851955, 40.947659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814560, 35.283287, 41.219147>,  <35.461277, 35.536190, 41.095085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814560, 35.283287, 41.219147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021435, 34.940941, 41.217358>,  <35.145557, 34.735535, 41.216286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021435, 34.940941, 41.217358>,  <34.814560, 35.283287, 41.219147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021435, 34.940941, 41.217358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605412, -0.369524, 0.704931,
		-0.604977, -0.361872, -0.709261,
		0.517184, -0.855863, -0.004472,
		35.176590, 34.684181, 41.216015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.280743, 34.488316, 41.266689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.658504, 34.405224, 41.368622>,  <34.885162, 34.355370, 41.429783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.658504, 34.405224, 41.368622>,  <34.280743, 34.488316, 41.266689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658504, 34.405224, 41.368622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324329, -0.461600, 0.825673,
		-0.053888, -0.862422, -0.503313,
		0.944408, -0.207733, 0.254834,
		34.941826, 34.342903, 41.445072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354076, 33.773182, 41.382038>,  <34.280743, 34.488316, 41.266689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354076, 33.773182, 41.382038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640766, 33.951546, 41.596504>,  <34.812778, 34.058563, 41.725185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640766, 33.951546, 41.596504>,  <34.354076, 33.773182, 41.382038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640766, 33.951546, 41.596504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218158, -0.586890, 0.779722,
		0.662356, -0.675814, -0.323359,
		0.716723, 0.445910, 0.536164,
		34.855782, 34.085320, 41.757355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584412, 33.212833, 41.758762>,  <34.354076, 33.773182, 41.382038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584412, 33.212833, 41.758762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754723, 33.511639, 41.962994>,  <34.856911, 33.690922, 42.085533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754723, 33.511639, 41.962994>,  <34.584412, 33.212833, 41.758762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754723, 33.511639, 41.962994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123683, -0.510934, 0.850676,
		0.896334, -0.425350, -0.125152,
		0.425779, 0.747010, 0.510576,
		34.882458, 33.735741, 42.116165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003273, 32.876041, 42.163891>,  <34.584412, 33.212833, 41.758762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003273, 32.876041, 42.163891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986256, 33.236137, 42.337215>,  <34.976044, 33.452194, 42.441212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986256, 33.236137, 42.337215>,  <35.003273, 32.876041, 42.163891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986256, 33.236137, 42.337215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071951, -0.429817, 0.900045,
		0.996500, 0.069471, -0.046486,
		-0.042546, 0.900239, 0.433312,
		34.973492, 33.506210, 42.467209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536686, 32.859997, 42.750111>,  <35.003273, 32.876041, 42.163891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536686, 32.859997, 42.750111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322582, 33.184338, 42.844784>,  <35.194118, 33.378941, 42.901588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322582, 33.184338, 42.844784>,  <35.536686, 32.859997, 42.750111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322582, 33.184338, 42.844784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024132, -0.265409, 0.963834,
		0.844342, 0.521614, 0.122495,
		-0.535260, 0.810849, 0.236684,
		35.162003, 33.427593, 42.915791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884811, 33.178650, 43.415508>,  <35.536686, 32.859997, 42.750111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884811, 33.178650, 43.415508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527802, 33.359047, 43.415211>,  <35.313595, 33.467285, 43.415031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527802, 33.359047, 43.415211>,  <35.884811, 33.178650, 43.415508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527802, 33.359047, 43.415211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049788, -0.096885, 0.994050,
		0.448238, 0.887253, 0.108927,
		-0.892527, 0.450994, -0.000747,
		35.260044, 33.494347, 43.414986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852600, 33.553471, 44.052933>,  <35.884811, 33.178650, 43.415508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852600, 33.553471, 44.052933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478786, 33.453197, 43.951897>,  <35.254498, 33.393032, 43.891277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478786, 33.453197, 43.951897>,  <35.852600, 33.553471, 44.052933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478786, 33.453197, 43.951897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146900, -0.374737, 0.915419,
		-0.324135, 0.892597, 0.313380,
		-0.934536, -0.250684, -0.252588,
		35.198425, 33.377991, 43.876122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439041, 33.643852, 44.645161>,  <35.852600, 33.553471, 44.052933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439041, 33.643852, 44.645161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185215, 33.407391, 44.446018>,  <35.032917, 33.265514, 44.326534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185215, 33.407391, 44.446018>,  <35.439041, 33.643852, 44.645161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185215, 33.407391, 44.446018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331990, -0.373217, 0.866309,
		-0.697930, 0.715016, 0.040576,
		-0.634569, -0.591152, -0.497857,
		34.994843, 33.230045, 44.296661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727215, 33.842163, 44.828705>,  <35.439041, 33.643852, 44.645161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727215, 33.842163, 44.828705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730736, 33.449085, 44.754692>,  <34.732849, 33.213238, 44.710285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730736, 33.449085, 44.754692>,  <34.727215, 33.842163, 44.828705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730736, 33.449085, 44.754692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437735, -0.170151, 0.882857,
		-0.899061, 0.073227, -0.431656,
		0.008798, -0.982693, -0.185031,
		34.733376, 33.154278, 44.699184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162037, 33.493435, 45.306099>,  <34.727215, 33.842163, 44.828705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162037, 33.493435, 45.306099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400410, 33.195232, 45.186707>,  <34.543434, 33.016312, 45.115070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400410, 33.195232, 45.186707>,  <34.162037, 33.493435, 45.306099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400410, 33.195232, 45.186707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235953, -0.517838, 0.822295,
		-0.767590, -0.419603, -0.484499,
		0.595929, -0.745505, -0.298481,
		34.579189, 32.971581, 45.097164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924099, 32.917179, 45.674618>,  <34.162037, 33.493435, 45.306099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924099, 32.917179, 45.674618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269794, 32.763294, 45.544952>,  <34.477211, 32.670963, 45.467152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269794, 32.763294, 45.544952>,  <33.924099, 32.917179, 45.674618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269794, 32.763294, 45.544952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009127, -0.632269, 0.774695,
		-0.502990, -0.672484, -0.542923,
		0.864244, -0.384709, -0.324163,
		34.529068, 32.647881, 45.447704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907734, 32.262257, 45.931660>,  <33.924099, 32.917179, 45.674618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907734, 32.262257, 45.931660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.299324, 32.308914, 45.864731>,  <34.534279, 32.336910, 45.824574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.299324, 32.308914, 45.864731>,  <33.907734, 32.262257, 45.931660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299324, 32.308914, 45.864731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203947, -0.571278, 0.795014,
		-0.002853, -0.812426, -0.583058,
		0.978978, 0.116645, -0.167321,
		34.593018, 32.343906, 45.814533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138111, 31.662424, 45.987526>,  <33.907734, 32.262257, 45.931660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138111, 31.662424, 45.987526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466377, 31.883944, 46.043839>,  <34.663338, 32.016857, 46.077625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466377, 31.883944, 46.043839>,  <34.138111, 31.662424, 45.987526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466377, 31.883944, 46.043839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201599, -0.511141, 0.835520,
		0.534669, -0.657299, -0.531119,
		0.820662, 0.553799, 0.140781,
		34.712578, 32.050083, 46.086071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629166, 31.193657, 46.164040>,  <34.138111, 31.662424, 45.987526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629166, 31.193657, 46.164040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749290, 31.548325, 46.304684>,  <34.821365, 31.761126, 46.389069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749290, 31.548325, 46.304684>,  <34.629166, 31.193657, 46.164040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749290, 31.548325, 46.304684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407376, -0.452541, 0.793254,
		0.862473, -0.094982, -0.497110,
		0.300307, 0.886671, 0.351611,
		34.839382, 31.814325, 46.410168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258381, 31.051937, 46.582893>,  <34.629166, 31.193657, 46.164040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258381, 31.051937, 46.582893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228214, 31.436583, 46.688431>,  <35.210114, 31.667370, 46.751755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228214, 31.436583, 46.688431>,  <35.258381, 31.051937, 46.582893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228214, 31.436583, 46.688431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259153, -0.236605, 0.936407,
		0.962888, 0.138995, -0.231362,
		-0.075414, 0.961613, 0.263844,
		35.205589, 31.725067, 46.767586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883278, 31.165131, 46.955429>,  <35.258381, 31.051937, 46.582893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883278, 31.165131, 46.955429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.580357, 31.403786, 47.061642>,  <35.398602, 31.546978, 47.125370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.580357, 31.403786, 47.061642>,  <35.883278, 31.165131, 46.955429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580357, 31.403786, 47.061642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156306, -0.229189, 0.960750,
		0.634077, 0.769088, 0.080308,
		-0.757307, 0.596637, 0.265536,
		35.353165, 31.582777, 47.141304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186161, 31.664528, 47.418732>,  <35.883278, 31.165131, 46.955429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186161, 31.664528, 47.418732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795044, 31.656576, 47.502186>,  <35.560375, 31.651804, 47.552258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795044, 31.656576, 47.502186>,  <36.186161, 31.664528, 47.418732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795044, 31.656576, 47.502186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209552, -0.109540, 0.971642,
		0.003537, 0.993784, 0.111273,
		-0.977791, -0.019881, 0.208637,
		35.501705, 31.650612, 47.564777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248703, 31.984213, 48.059654>,  <36.186161, 31.664528, 47.418732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248703, 31.984213, 48.059654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884693, 31.819725, 48.038658>,  <35.666286, 31.721033, 48.026062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884693, 31.819725, 48.038658>,  <36.248703, 31.984213, 48.059654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884693, 31.819725, 48.038658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139549, -0.423099, 0.895273,
		-0.390363, 0.807394, 0.442415,
		-0.910023, -0.411220, -0.052491,
		35.611687, 31.696360, 48.022911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952854, 32.193783, 48.719879>,  <36.248703, 31.984213, 48.059654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952854, 32.193783, 48.719879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797195, 31.857250, 48.569824>,  <35.703800, 31.655331, 48.479794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797195, 31.857250, 48.569824>,  <35.952854, 32.193783, 48.719879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797195, 31.857250, 48.569824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054175, -0.427432, 0.902423,
		-0.919581, 0.330853, 0.211913,
		-0.389148, -0.841331, -0.375134,
		35.680450, 31.604851, 48.457283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458881, 32.001663, 49.309975>,  <35.952854, 32.193783, 48.719879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458881, 32.001663, 49.309975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.498970, 31.681602, 49.073429>,  <35.523022, 31.489565, 48.931503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.498970, 31.681602, 49.073429>,  <35.458881, 32.001663, 49.309975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498970, 31.681602, 49.073429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000153, -0.594365, 0.804195,
		-0.994965, -0.080507, -0.059690,
		0.100221, -0.800156, -0.591360,
		35.529037, 31.441555, 48.896023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158318, 31.489998, 49.604572>,  <35.458881, 32.001663, 49.309975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158318, 31.489998, 49.604572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375465, 31.264992, 49.355133>,  <35.505753, 31.129988, 49.205471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375465, 31.264992, 49.355133>,  <35.158318, 31.489998, 49.604572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375465, 31.264992, 49.355133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213711, -0.625566, 0.750330,
		-0.812173, -0.540598, -0.219383,
		0.542865, -0.562513, -0.623600,
		35.538326, 31.096237, 49.168053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942715, 30.726341, 49.575443>,  <35.158318, 31.489998, 49.604572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942715, 30.726341, 49.575443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333549, 30.760359, 49.497398>,  <35.568050, 30.780769, 49.450573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333549, 30.760359, 49.497398>,  <34.942715, 30.726341, 49.575443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333549, 30.760359, 49.497398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200233, -0.678084, 0.707184,
		-0.072161, -0.730048, -0.679575,
		0.977087, 0.085042, -0.195111,
		35.626675, 30.785872, 49.438866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215244, 30.120787, 49.162117>,  <34.942715, 30.726341, 49.575443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215244, 30.120787, 49.162117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437519, 30.303600, 49.439919>,  <35.570885, 30.413288, 49.606598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437519, 30.303600, 49.439919>,  <35.215244, 30.120787, 49.162117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437519, 30.303600, 49.439919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119110, -0.870494, 0.477549,
		0.822814, -0.182646, -0.538161,
		0.555689, 0.457034, 0.694500,
		35.604225, 30.440710, 49.648270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847946, 29.563290, 49.498772>,  <35.215244, 30.120787, 49.162117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847946, 29.563290, 49.498772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849926, 29.171259, 49.419350>,  <34.851112, 28.936041, 49.371696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849926, 29.171259, 49.419350>,  <34.847946, 29.563290, 49.498772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849926, 29.171259, 49.419350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636497, 0.150054, -0.756542,
		0.771263, 0.130120, -0.623074,
		0.004946, -0.980078, -0.198552,
		34.851410, 28.877235, 49.359783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229431, 29.464455, 48.820015>,  <34.847946, 29.563290, 49.498772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229431, 29.464455, 48.820015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923420, 29.213558, 48.878399>,  <34.739815, 29.063021, 48.913429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923420, 29.213558, 48.878399>,  <35.229431, 29.464455, 48.820015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923420, 29.213558, 48.878399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379790, 0.256382, -0.888835,
		0.520093, -0.735415, -0.434359,
		-0.765024, -0.627242, 0.145961,
		34.693913, 29.025385, 48.922188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152481, 29.136429, 48.213844>,  <35.229431, 29.464455, 48.820015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152481, 29.136429, 48.213844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798393, 29.100229, 48.396355>,  <34.585941, 29.078508, 48.505859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798393, 29.100229, 48.396355>,  <35.152481, 29.136429, 48.213844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798393, 29.100229, 48.396355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458916, 0.330156, -0.824860,
		-0.075992, -0.939578, -0.333794,
		-0.885224, -0.090500, 0.456276,
		34.532825, 29.073078, 48.533237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687065, 28.696110, 47.836697>,  <35.152481, 29.136429, 48.213844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687065, 28.696110, 47.836697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430969, 28.887741, 48.076889>,  <34.277309, 29.002720, 48.221004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430969, 28.887741, 48.076889>,  <34.687065, 28.696110, 47.836697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430969, 28.887741, 48.076889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676440, 0.018829, -0.736257,
		-0.364033, -0.877569, 0.312014,
		-0.640241, 0.479080, 0.600478,
		34.238895, 29.031466, 48.257034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966339, 28.362007, 47.719021>,  <34.687065, 28.696110, 47.836697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966339, 28.362007, 47.719021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932152, 28.742533, 47.837475>,  <33.911640, 28.970848, 47.908546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932152, 28.742533, 47.837475>,  <33.966339, 28.362007, 47.719021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932152, 28.742533, 47.837475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600487, 0.187993, -0.777222,
		-0.795054, -0.244252, 0.555185,
		-0.085467, 0.951315, 0.296135,
		33.906513, 29.027927, 47.926315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273159, 28.514194, 47.666500>,  <33.966339, 28.362007, 47.719021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273159, 28.514194, 47.666500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449341, 28.873198, 47.675297>,  <33.555050, 29.088600, 47.680576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449341, 28.873198, 47.675297>,  <33.273159, 28.514194, 47.666500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449341, 28.873198, 47.675297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467489, 0.250196, -0.847854,
		-0.766457, 0.363158, 0.529774,
		0.440452, 0.897507, 0.021992,
		33.581478, 29.142450, 47.681896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775150, 28.882124, 47.319279>,  <33.273159, 28.514194, 47.666500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775150, 28.882124, 47.319279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093384, 29.122738, 47.290409>,  <33.284325, 29.267107, 47.273087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093384, 29.122738, 47.290409>,  <32.775150, 28.882124, 47.319279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093384, 29.122738, 47.290409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310195, 0.302113, -0.901392,
		-0.520415, 0.739516, 0.426948,
		0.795580, 0.601535, -0.072171,
		33.332058, 29.303198, 47.268757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543980, 29.493664, 47.144394>,  <32.775150, 28.882124, 47.319279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543980, 29.493664, 47.144394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.920612, 29.545969, 47.020245>,  <33.146591, 29.577353, 46.945755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.920612, 29.545969, 47.020245>,  <32.543980, 29.493664, 47.144394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920612, 29.545969, 47.020245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336791, 0.363022, -0.868785,
		-0.000933, 0.922560, 0.385854,
		0.941579, 0.130763, -0.310371,
		33.203087, 29.585197, 46.927132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640533, 30.182951, 46.853119>,  <32.543980, 29.493664, 47.144394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640533, 30.182951, 46.853119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962486, 30.003311, 46.697952>,  <33.155659, 29.895527, 46.604851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962486, 30.003311, 46.697952>,  <32.640533, 30.182951, 46.853119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962486, 30.003311, 46.697952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102924, 0.538130, -0.836554,
		0.584446, 0.713251, 0.386906,
		0.804879, -0.449099, -0.387918,
		33.203949, 29.868582, 46.581577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088139, 30.793646, 46.665482>,  <32.640533, 30.182951, 46.853119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088139, 30.793646, 46.665482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202137, 30.469208, 46.461166>,  <33.270535, 30.274546, 46.338577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202137, 30.469208, 46.461166>,  <33.088139, 30.793646, 46.665482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202137, 30.469208, 46.461166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003668, 0.531962, -0.846760,
		0.958523, 0.243194, 0.148630,
		0.284992, -0.811094, -0.510790,
		33.287636, 30.225880, 46.307930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655991, 30.968637, 46.258350>,  <33.088139, 30.793646, 46.665482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655991, 30.968637, 46.258350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530373, 30.634834, 46.077255>,  <33.455002, 30.434551, 45.968597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530373, 30.634834, 46.077255>,  <33.655991, 30.968637, 46.258350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530373, 30.634834, 46.077255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059739, 0.458550, -0.886658,
		0.947528, -0.305493, -0.094150,
		-0.314040, -0.834509, -0.452739,
		33.436161, 30.384481, 45.941433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096504, 30.808556, 45.747353>,  <33.655991, 30.968637, 46.258350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096504, 30.808556, 45.747353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784214, 30.595285, 45.617004>,  <33.596840, 30.467323, 45.538795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784214, 30.595285, 45.617004>,  <34.096504, 30.808556, 45.747353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784214, 30.595285, 45.617004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062097, 0.452711, -0.889493,
		0.621781, -0.714684, -0.320334,
		-0.780725, -0.533178, -0.325867,
		33.549995, 30.435331, 45.519245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306362, 30.739691, 45.000660>,  <34.096504, 30.808556, 45.747353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306362, 30.739691, 45.000660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924950, 30.624678, 45.036671>,  <33.696102, 30.555670, 45.058277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924950, 30.624678, 45.036671>,  <34.306362, 30.739691, 45.000660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924950, 30.624678, 45.036671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169437, 0.264659, -0.949340,
		0.249124, -0.920483, -0.301077,
		-0.953534, -0.287517, 0.090031,
		33.638889, 30.538418, 45.063679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175301, 30.278875, 44.421474>,  <34.306362, 30.739691, 45.000660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175301, 30.278875, 44.421474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833549, 30.444197, 44.547466>,  <33.628498, 30.543390, 44.623062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833549, 30.444197, 44.547466>,  <34.175301, 30.278875, 44.421474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833549, 30.444197, 44.547466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165991, 0.357325, -0.919112,
		-0.492422, -0.837556, -0.236687,
		-0.854381, 0.413303, 0.314981,
		33.577236, 30.568188, 44.641960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848076, 30.349094, 43.843498>,  <34.175301, 30.278875, 44.421474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848076, 30.349094, 43.843498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.614021, 30.581894, 44.069378>,  <33.473587, 30.721575, 44.204906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.614021, 30.581894, 44.069378>,  <33.848076, 30.349094, 43.843498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614021, 30.581894, 44.069378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358306, 0.439147, -0.823873,
		-0.727481, -0.684416, -0.048428,
		-0.585139, 0.582000, 0.564702,
		33.438480, 30.756495, 44.238789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183113, 30.283346, 43.622574>,  <33.848076, 30.349094, 43.843498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183113, 30.283346, 43.622574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197742, 30.636795, 43.809280>,  <33.206520, 30.848864, 43.921307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197742, 30.636795, 43.809280>,  <33.183113, 30.283346, 43.622574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197742, 30.636795, 43.809280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243623, 0.460872, -0.853372,
		-0.969180, -0.082506, 0.232126,
		0.036572, 0.883623, 0.466769,
		33.208714, 30.901882, 43.949310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552391, 30.635727, 43.524929>,  <33.183113, 30.283346, 43.622574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552391, 30.635727, 43.524929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.803940, 30.928654, 43.629410>,  <32.954868, 31.104410, 43.692101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.803940, 30.928654, 43.629410>,  <32.552391, 30.635727, 43.524929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803940, 30.928654, 43.629410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163973, 0.453313, -0.876139,
		-0.760019, 0.508151, 0.405158,
		0.628875, 0.732318, 0.261203,
		32.992603, 31.148350, 43.707771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244759, 31.347952, 43.433151>,  <32.552391, 30.635727, 43.524929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244759, 31.347952, 43.433151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640556, 31.390980, 43.394493>,  <32.878033, 31.416796, 43.371300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640556, 31.390980, 43.394493>,  <32.244759, 31.347952, 43.433151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640556, 31.390980, 43.394493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130836, 0.381377, -0.915114,
		-0.061580, 0.918140, 0.391443,
		0.989490, 0.107568, -0.096641,
		32.937405, 31.423250, 43.365501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301319, 31.994127, 43.072426>,  <32.244759, 31.347952, 43.433151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301319, 31.994127, 43.072426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677723, 31.867701, 43.024090>,  <32.903564, 31.791843, 42.995090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677723, 31.867701, 43.024090>,  <32.301319, 31.994127, 43.072426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677723, 31.867701, 43.024090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007208, 0.338303, -0.941009,
		0.338303, 0.886370, 0.316068,
		0.941009, -0.316068, -0.120838,
		32.960026, 31.772881, 42.987839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689312, 32.540878, 42.877041>,  <32.301319, 31.994127, 43.072426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689312, 32.540878, 42.877041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934822, 32.253380, 42.746387>,  <33.082127, 32.080879, 42.667995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934822, 32.253380, 42.746387>,  <32.689312, 32.540878, 42.877041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934822, 32.253380, 42.746387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077473, 0.466566, -0.881087,
		0.785672, 0.515482, 0.342049,
		0.613773, -0.718745, -0.326632,
		33.118954, 32.037758, 42.648399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243141, 32.836693, 42.564915>,  <32.689312, 32.540878, 42.877041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243141, 32.836693, 42.564915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286240, 32.476994, 42.395332>,  <33.312099, 32.261173, 42.293583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286240, 32.476994, 42.395332>,  <33.243141, 32.836693, 42.564915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286240, 32.476994, 42.395332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284471, 0.436494, -0.853551,
		0.952611, -0.028639, 0.302840,
		0.107743, -0.899251, -0.423956,
		33.318562, 32.207218, 42.268147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.699848, 40.478218, 27.847572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382408, 40.720699, 27.868401>,  <45.191944, 40.866188, 27.880898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382408, 40.720699, 27.868401>,  <45.699848, 40.478218, 27.847572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382408, 40.720699, 27.868401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132268, -0.255421, 0.957740,
		0.593885, 0.753178, 0.282884,
		-0.793603, 0.606204, 0.052069,
		45.144329, 40.902561, 27.884022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785122, 40.945499, 28.480921>,  <45.699848, 40.478218, 27.847572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785122, 40.945499, 28.480921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.402287, 40.908028, 28.371231>,  <45.172585, 40.885544, 28.305418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.402287, 40.908028, 28.371231>,  <45.785122, 40.945499, 28.480921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402287, 40.908028, 28.371231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237869, -0.286505, 0.928081,
		-0.165512, 0.953488, 0.251927,
		-0.957092, -0.093683, -0.274225,
		45.115158, 40.879921, 28.288963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311661, 41.322083, 28.994408>,  <45.785122, 40.945499, 28.480921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311661, 41.322083, 28.994408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.059326, 41.060432, 28.827477>,  <44.907925, 40.903442, 28.727318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.059326, 41.060432, 28.827477>,  <45.311661, 41.322083, 28.994408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059326, 41.060432, 28.827477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359495, -0.230241, 0.904297,
		-0.687612, 0.720490, -0.089912,
		-0.630835, -0.654128, -0.417329,
		44.870075, 40.864193, 28.702278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680843, 41.428646, 29.255039>,  <45.311661, 41.322083, 28.994408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680843, 41.428646, 29.255039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592262, 41.067837, 29.106819>,  <44.539116, 40.851349, 29.017887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592262, 41.067837, 29.106819>,  <44.680843, 41.428646, 29.255039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592262, 41.067837, 29.106819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450602, -0.242335, 0.859204,
		-0.864822, 0.357242, -0.352790,
		-0.221451, -0.902026, -0.370551,
		44.525826, 40.797230, 28.995653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005478, 41.367760, 29.389706>,  <44.680843, 41.428646, 29.255039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005478, 41.367760, 29.389706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136864, 40.995502, 29.325197>,  <44.215694, 40.772148, 29.286491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136864, 40.995502, 29.325197>,  <44.005478, 41.367760, 29.389706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136864, 40.995502, 29.325197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404917, -0.293002, 0.866136,
		-0.853320, -0.219190, -0.473075,
		0.328461, -0.930648, -0.161271,
		44.235401, 40.716309, 29.276815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376610, 40.911880, 29.424017>,  <44.005478, 41.367760, 29.389706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376610, 40.911880, 29.424017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704594, 40.699295, 29.509077>,  <43.901382, 40.571743, 29.560114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704594, 40.699295, 29.509077>,  <43.376610, 40.911880, 29.424017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704594, 40.699295, 29.509077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367047, -0.203073, 0.907765,
		-0.439258, -0.822381, -0.361583,
		0.819957, -0.531461, 0.212651,
		43.950581, 40.539856, 29.572872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107853, 40.458797, 29.941727>,  <43.376610, 40.911880, 29.424017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107853, 40.458797, 29.941727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.496109, 40.363171, 29.931084>,  <43.729061, 40.305794, 29.924698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.496109, 40.363171, 29.931084>,  <43.107853, 40.458797, 29.941727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496109, 40.363171, 29.931084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078918, -0.420985, 0.903628,
		-0.227232, -0.874995, -0.427491,
		0.970638, -0.239070, -0.026608,
		43.787300, 40.291451, 29.923101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996971, 39.693245, 30.098282>,  <43.107853, 40.458797, 29.941727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996971, 39.693245, 30.098282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362370, 39.851547, 30.136026>,  <43.581608, 39.946529, 30.158674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362370, 39.851547, 30.136026>,  <42.996971, 39.693245, 30.098282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362370, 39.851547, 30.136026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091537, -0.425908, 0.900124,
		0.396423, -0.813620, -0.425290,
		0.913493, 0.395759, 0.094363,
		43.636417, 39.970276, 30.164335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457176, 39.157829, 30.311962>,  <42.996971, 39.693245, 30.098282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457176, 39.157829, 30.311962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590126, 39.520512, 30.415819>,  <43.669895, 39.738121, 30.478134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590126, 39.520512, 30.415819>,  <43.457176, 39.157829, 30.311962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590126, 39.520512, 30.415819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076329, -0.300253, 0.950801,
		0.940052, -0.296207, -0.169005,
		0.332379, 0.906702, 0.259645,
		43.689838, 39.792522, 30.493713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063683, 39.027191, 30.820765>,  <43.457176, 39.157829, 30.311962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063683, 39.027191, 30.820765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.921501, 39.397736, 30.870567>,  <43.836193, 39.620064, 30.900450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.921501, 39.397736, 30.870567>,  <44.063683, 39.027191, 30.820765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921501, 39.397736, 30.870567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003335, -0.131951, 0.991251,
		0.934687, 0.352762, 0.043813,
		-0.355456, 0.926363, 0.124509,
		43.814865, 39.675644, 30.907921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456745, 39.348965, 31.342119>,  <44.063683, 39.027191, 30.820765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456745, 39.348965, 31.342119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.109505, 39.545750, 31.315670>,  <43.901161, 39.663822, 31.299801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.109505, 39.545750, 31.315670>,  <44.456745, 39.348965, 31.342119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109505, 39.545750, 31.315670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105520, -0.052728, 0.993018,
		0.485044, 0.869017, 0.097685,
		-0.868100, 0.491965, -0.066123,
		43.849075, 39.693340, 31.295834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500965, 39.845947, 31.868845>,  <44.456745, 39.348965, 31.342119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500965, 39.845947, 31.868845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108662, 39.808136, 31.800528>,  <43.873280, 39.785450, 31.759537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108662, 39.808136, 31.800528>,  <44.500965, 39.845947, 31.868845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108662, 39.808136, 31.800528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127068, -0.355045, 0.926173,
		-0.148185, 0.930058, 0.336204,
		-0.980762, -0.094525, -0.170793,
		43.814434, 39.779778, 31.749290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150620, 40.067505, 32.526123>,  <44.500965, 39.845947, 31.868845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150620, 40.067505, 32.526123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857449, 39.882233, 32.326817>,  <43.681545, 39.771069, 32.207233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857449, 39.882233, 32.326817>,  <44.150620, 40.067505, 32.526123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857449, 39.882233, 32.326817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364378, -0.351224, 0.862479,
		-0.574491, 0.813696, 0.088649,
		-0.732932, -0.463185, -0.498268,
		43.637569, 39.743279, 32.177338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585110, 40.108459, 32.953899>,  <44.150620, 40.067505, 32.526123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585110, 40.108459, 32.953899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522232, 39.815636, 32.688755>,  <43.484505, 39.639942, 32.529671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522232, 39.815636, 32.688755>,  <43.585110, 40.108459, 32.953899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522232, 39.815636, 32.688755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160660, -0.643305, 0.748564,
		-0.974411, 0.224167, -0.016486,
		-0.157198, -0.732058, -0.662858,
		43.475071, 39.596020, 32.489899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141903, 39.689888, 33.293171>,  <43.585110, 40.108459, 32.953899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141903, 39.689888, 33.293171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304562, 39.450344, 33.017197>,  <43.402157, 39.306618, 32.851612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304562, 39.450344, 33.017197>,  <43.141903, 39.689888, 33.293171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304562, 39.450344, 33.017197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022752, -0.748320, 0.662947,
		-0.913301, -0.285283, -0.290678,
		0.406648, -0.598858, -0.689933,
		43.426556, 39.270687, 32.810219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823349, 39.089703, 33.400368>,  <43.141903, 39.689888, 33.293171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823349, 39.089703, 33.400368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157883, 39.002911, 33.198982>,  <43.358601, 38.950836, 33.078152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157883, 39.002911, 33.198982>,  <42.823349, 39.089703, 33.400368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157883, 39.002911, 33.198982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211291, -0.719826, 0.661216,
		-0.505874, -0.659372, -0.556166,
		0.836330, -0.216979, -0.503460,
		43.408783, 38.937817, 33.047943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854435, 38.354206, 33.341824>,  <42.823349, 39.089703, 33.400368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854435, 38.354206, 33.341824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234325, 38.455688, 33.268448>,  <43.462261, 38.516579, 33.224422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234325, 38.455688, 33.268448>,  <42.854435, 38.354206, 33.341824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234325, 38.455688, 33.268448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308935, -0.854432, 0.417739,
		-0.050758, -0.453410, -0.889856,
		0.949728, 0.253704, -0.183443,
		43.519245, 38.531799, 33.213413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247200, 37.733784, 32.989742>,  <42.854435, 38.354206, 33.341824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247200, 37.733784, 32.989742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523781, 37.978218, 33.143871>,  <43.689728, 38.124878, 33.236347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523781, 37.978218, 33.143871>,  <43.247200, 37.733784, 32.989742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523781, 37.978218, 33.143871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460819, -0.783854, 0.416195,
		0.556366, -0.110215, -0.823595,
		0.691450, 0.611085, 0.385321,
		43.731216, 38.161545, 33.259468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823288, 37.395370, 32.859013>,  <43.247200, 37.733784, 32.989742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823288, 37.395370, 32.859013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.925606, 37.647274, 33.152401>,  <43.986996, 37.798416, 33.328434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.925606, 37.647274, 33.152401>,  <43.823288, 37.395370, 32.859013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925606, 37.647274, 33.152401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339703, -0.768880, 0.541688,
		0.905080, 0.110599, -0.410607,
		0.255798, 0.629755, 0.733468,
		44.002346, 37.836201, 33.372440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441601, 37.266220, 32.990219>,  <43.823288, 37.395370, 32.859013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441601, 37.266220, 32.990219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.318470, 37.411182, 33.342106>,  <44.244591, 37.498158, 33.553238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.318470, 37.411182, 33.342106>,  <44.441601, 37.266220, 32.990219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318470, 37.411182, 33.342106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465475, -0.749046, 0.471448,
		0.829805, 0.554611, 0.061886,
		-0.307825, 0.362403, 0.879720,
		44.226124, 37.519905, 33.606022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045135, 37.466305, 33.445072>,  <44.441601, 37.266220, 32.990219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045135, 37.466305, 33.445072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.723278, 37.375786, 33.664650>,  <44.530163, 37.321476, 33.796394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.723278, 37.375786, 33.664650>,  <45.045135, 37.466305, 33.445072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723278, 37.375786, 33.664650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559170, -0.599732, 0.572408,
		0.199684, 0.767536, 0.609109,
		-0.804646, -0.226295, 0.548940,
		44.481884, 37.307896, 33.829330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372623, 37.401402, 34.079693>,  <45.045135, 37.466305, 33.445072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372623, 37.401402, 34.079693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999638, 37.269081, 34.137768>,  <44.775845, 37.189690, 34.172615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999638, 37.269081, 34.137768>,  <45.372623, 37.401402, 34.079693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999638, 37.269081, 34.137768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350239, -0.729246, 0.587821,
		-0.088574, 0.598973, 0.795855,
		-0.932463, -0.330805, 0.145191,
		44.719898, 37.169838, 34.181324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067745, 37.123997, 34.126709>,  <45.372623, 37.401402, 34.079693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067745, 37.123997, 34.126709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441086, 37.057518, 33.999439>,  <46.665089, 37.017632, 33.923077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441086, 37.057518, 33.999439>,  <46.067745, 37.123997, 34.126709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441086, 37.057518, 33.999439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099232, 0.971280, -0.216261,
		0.344983, 0.170274, 0.923035,
		0.933349, -0.166201, -0.318179,
		46.721092, 37.007656, 33.903984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.427582, 37.515114, 34.548347>,  <46.067745, 37.123997, 34.126709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.427582, 37.515114, 34.548347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.674889, 37.477718, 34.236191>,  <46.823273, 37.455280, 34.048897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.674889, 37.477718, 34.236191>,  <46.427582, 37.515114, 34.548347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.674889, 37.477718, 34.236191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127384, 0.991692, -0.017887,
		0.775580, -0.088351, 0.625035,
		0.618262, -0.093492, -0.780392,
		46.860367, 37.449669, 34.002075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.964149, 37.994709, 34.701485>,  <46.427582, 37.515114, 34.548347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.964149, 37.994709, 34.701485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.000839, 37.905880, 34.313202>,  <47.022854, 37.852585, 34.080231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.000839, 37.905880, 34.313202>,  <46.964149, 37.994709, 34.701485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.000839, 37.905880, 34.313202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123871, 0.969789, -0.210156,
		0.988050, -0.100966, 0.116459,
		0.091722, -0.222070, -0.970707,
		47.028355, 37.839260, 34.021988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.561169, 38.385777, 34.554817>,  <46.964149, 37.994709, 34.701485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.561169, 38.385777, 34.554817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.353130, 38.311409, 34.221367>,  <47.228306, 38.266788, 34.021297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.353130, 38.311409, 34.221367>,  <47.561169, 38.385777, 34.554817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.353130, 38.311409, 34.221367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118100, 0.950991, -0.285779,
		0.845902, -0.247084, -0.472651,
		-0.520098, -0.185921, -0.833626,
		47.197102, 38.255634, 33.971279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.889336, 38.825127, 34.004364>,  <47.561169, 38.385777, 34.554817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.889336, 38.825127, 34.004364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.532284, 38.734661, 33.848381>,  <47.318054, 38.680382, 33.754791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.532284, 38.734661, 33.848381>,  <47.889336, 38.825127, 34.004364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.532284, 38.734661, 33.848381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054310, 0.912694, -0.405019,
		0.447516, -0.340351, -0.826977,
		-0.892626, -0.226166, -0.389960,
		47.264496, 38.666813, 33.731392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.000652, 38.899143, 33.329540>,  <47.889336, 38.825127, 34.004364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.000652, 38.899143, 33.329540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.607159, 38.932735, 33.393066>,  <47.371063, 38.952892, 33.431183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.607159, 38.932735, 33.393066>,  <48.000652, 38.899143, 33.329540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.607159, 38.932735, 33.393066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019717, 0.828203, -0.560082,
		-0.178571, -0.554100, -0.813071,
		-0.983729, 0.083983, 0.158818,
		47.312038, 38.957932, 33.440712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726784, 39.200542, 32.657436>,  <48.000652, 38.899143, 33.329540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726784, 39.200542, 32.657436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.425026, 39.249653, 32.915371>,  <47.243969, 39.279118, 33.070129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.425026, 39.249653, 32.915371>,  <47.726784, 39.200542, 32.657436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.425026, 39.249653, 32.915371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329194, 0.779129, -0.533469,
		-0.567904, -0.614723, -0.547358,
		-0.754398, 0.122772, 0.644834,
		47.198708, 39.286484, 33.108822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149101, 39.456329, 32.244549>,  <47.726784, 39.200542, 32.657436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149101, 39.456329, 32.244549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.025261, 39.562489, 32.609779>,  <46.950958, 39.626186, 32.828918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.025261, 39.562489, 32.609779>,  <47.149101, 39.456329, 32.244549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.025261, 39.562489, 32.609779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410697, 0.828743, -0.380147,
		-0.857598, -0.492692, -0.147580,
		-0.309602, 0.265403, 0.913076,
		46.932381, 39.642109, 32.883701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.525585, 39.760979, 32.146355>,  <47.149101, 39.456329, 32.244549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.525585, 39.760979, 32.146355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.642632, 39.898495, 32.503273>,  <46.712860, 39.981003, 32.717422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.642632, 39.898495, 32.503273>,  <46.525585, 39.760979, 32.146355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642632, 39.898495, 32.503273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230120, 0.931029, -0.283248,
		-0.928129, -0.122453, 0.351543,
		0.292612, 0.343788, 0.892294,
		46.730415, 40.001633, 32.770962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982182, 40.195736, 32.339870>,  <46.525585, 39.760979, 32.146355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982182, 40.195736, 32.339870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.275845, 40.334553, 32.573307>,  <46.452042, 40.417843, 32.713367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.275845, 40.334553, 32.573307>,  <45.982182, 40.195736, 32.339870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275845, 40.334553, 32.573307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227135, 0.935516, -0.270592,
		-0.639866, 0.066102, 0.765638,
		0.734153, 0.347046, 0.583591,
		46.496090, 40.438667, 32.748383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670002, 40.734886, 32.826103>,  <45.982182, 40.195736, 32.339870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670002, 40.734886, 32.826103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.063843, 40.794994, 32.790356>,  <46.300148, 40.831059, 32.768906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.063843, 40.794994, 32.790356>,  <45.670002, 40.734886, 32.826103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063843, 40.794994, 32.790356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172057, 0.923549, -0.342716,
		0.031036, 0.352814, 0.935179,
		0.984598, 0.150268, -0.089367,
		46.359222, 40.840076, 32.763546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735249, 41.429966, 33.051590>,  <45.670002, 40.734886, 32.826103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735249, 41.429966, 33.051590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.087852, 41.369530, 32.872654>,  <46.299416, 41.333267, 32.765293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.087852, 41.369530, 32.872654>,  <45.735249, 41.429966, 33.051590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087852, 41.369530, 32.872654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063362, 0.976702, -0.205035,
		0.467895, 0.152396, 0.870546,
		0.881510, -0.151094, -0.447338,
		46.352306, 41.324200, 32.738453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201340, 42.017803, 33.240437>,  <45.735249, 41.429966, 33.051590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201340, 42.017803, 33.240437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.316067, 41.841518, 32.900200>,  <46.384903, 41.735748, 32.696056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.316067, 41.841518, 32.900200>,  <46.201340, 42.017803, 33.240437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316067, 41.841518, 32.900200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110484, 0.897191, -0.427600,
		0.951592, 0.028667, 0.306025,
		0.286821, -0.440711, -0.850592,
		46.402115, 41.709305, 32.645023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.758610, 42.464752, 33.008453>,  <46.201340, 42.017803, 33.240437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.758610, 42.464752, 33.008453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652508, 42.260246, 32.681469>,  <46.588848, 42.137543, 32.485279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.652508, 42.260246, 32.681469>,  <46.758610, 42.464752, 33.008453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652508, 42.260246, 32.681469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029466, 0.843139, -0.536887,
		0.963729, -0.166497, -0.208579,
		-0.265251, -0.511268, -0.817464,
		46.572933, 42.106865, 32.436230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119328, 42.838219, 32.576374>,  <46.758610, 42.464752, 33.008453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119328, 42.838219, 32.576374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893261, 42.632919, 32.318024>,  <46.757622, 42.509739, 32.163013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893261, 42.632919, 32.318024>,  <47.119328, 42.838219, 32.576374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893261, 42.632919, 32.318024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122644, 0.721935, -0.681006,
		0.815808, -0.464096, -0.345068,
		-0.565169, -0.513250, -0.645879,
		46.723709, 42.478943, 32.124260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446274, 42.835773, 31.874800>,  <47.119328, 42.838219, 32.576374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446274, 42.835773, 31.874800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.057247, 42.770145, 31.808842>,  <46.823830, 42.730766, 31.769266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.057247, 42.770145, 31.808842>,  <47.446274, 42.835773, 31.874800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057247, 42.770145, 31.808842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020320, 0.646239, -0.762865,
		0.231729, -0.745288, -0.625177,
		-0.972568, -0.164074, -0.164897,
		46.765476, 42.720924, 31.759373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.482197, 42.765903, 31.259491>,  <47.446274, 42.835773, 31.874800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.482197, 42.765903, 31.259491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.101643, 42.860764, 31.338110>,  <46.873310, 42.917679, 31.385281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.101643, 42.860764, 31.338110>,  <47.482197, 42.765903, 31.259491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.101643, 42.860764, 31.338110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047514, 0.517482, -0.854374,
		-0.304323, -0.822176, -0.481056,
		-0.951383, 0.237149, 0.196547,
		46.816227, 42.931908, 31.397074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138805, 42.781105, 30.571762>,  <47.482197, 42.765903, 31.259491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138805, 42.781105, 30.571762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.840424, 42.949024, 30.778574>,  <46.661396, 43.049778, 30.902660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.840424, 42.949024, 30.778574>,  <47.138805, 42.781105, 30.571762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840424, 42.949024, 30.778574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164251, 0.636382, -0.753684,
		-0.645425, -0.647137, -0.405760,
		-0.745955, 0.419800, 0.517029,
		46.616638, 43.074963, 30.933683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562008, 42.829075, 30.122963>,  <47.138805, 42.781105, 30.571762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.562008, 42.829075, 30.122963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.502453, 43.110477, 30.400928>,  <46.466721, 43.279320, 30.567707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.502453, 43.110477, 30.400928>,  <46.562008, 42.829075, 30.122963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502453, 43.110477, 30.400928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087245, 0.690661, -0.717897,
		-0.984998, -0.167512, -0.041451,
		-0.148885, 0.703511, 0.694915,
		46.457787, 43.321529, 30.609404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031239, 43.181351, 29.822845>,  <46.562008, 42.829075, 30.122963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031239, 43.181351, 29.822845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.173042, 43.447136, 30.086000>,  <46.258125, 43.606606, 30.243893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.173042, 43.447136, 30.086000>,  <46.031239, 43.181351, 29.822845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173042, 43.447136, 30.086000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027691, 0.710734, -0.702916,
		-0.934642, 0.230974, 0.270362,
		0.354511, 0.664461, 0.657885,
		46.279396, 43.646473, 30.283365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.320400, 35.938560, 39.201012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377419, 35.542660, 39.204643>,  <36.411629, 35.305119, 39.206821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377419, 35.542660, 39.204643>,  <36.320400, 35.938560, 39.201012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377419, 35.542660, 39.204643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628802, 0.083465, -0.773073,
		0.764388, 0.115907, 0.634252,
		0.142542, -0.989747, 0.009082,
		36.420181, 35.245735, 39.207367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091976, 35.828114, 39.164097>,  <36.320400, 35.938560, 39.201012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091976, 35.828114, 39.164097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905373, 35.496311, 39.041271>,  <36.793411, 35.297230, 38.967575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905373, 35.496311, 39.041271>,  <37.091976, 35.828114, 39.164097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905373, 35.496311, 39.041271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681124, -0.115417, -0.723013,
		0.564305, -0.546440, 0.618841,
		-0.466508, -0.829507, -0.307063,
		36.765419, 35.247459, 38.949154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655659, 35.462612, 38.964539>,  <37.091976, 35.828114, 39.164097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655659, 35.462612, 38.964539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334072, 35.283699, 38.807785>,  <37.141121, 35.176353, 38.713734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334072, 35.283699, 38.807785>,  <37.655659, 35.462612, 38.964539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334072, 35.283699, 38.807785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487471, -0.118249, -0.865095,
		0.340599, -0.886542, 0.313105,
		-0.803968, -0.447280, -0.391888,
		37.092880, 35.149513, 38.690220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850620, 34.751579, 38.762913>,  <37.655659, 35.462612, 38.964539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850620, 34.751579, 38.762913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564751, 34.939327, 38.555477>,  <37.393230, 35.051975, 38.431015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564751, 34.939327, 38.555477>,  <37.850620, 34.751579, 38.762913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564751, 34.939327, 38.555477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604120, 0.040531, -0.795862,
		-0.352535, -0.882071, -0.312523,
		-0.714674, 0.469371, -0.518588,
		37.350349, 35.080139, 38.399902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936249, 34.496788, 38.101387>,  <37.850620, 34.751579, 38.762913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936249, 34.496788, 38.101387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702751, 34.815395, 38.038387>,  <37.562653, 35.006561, 38.000587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702751, 34.815395, 38.038387>,  <37.936249, 34.496788, 38.101387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702751, 34.815395, 38.038387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541315, 0.237203, -0.806668,
		-0.605166, -0.556142, -0.569632,
		-0.583740, 0.796518, -0.157501,
		37.527630, 35.054352, 37.991138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615307, 34.360645, 37.468204>,  <37.936249, 34.496788, 38.101387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615307, 34.360645, 37.468204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567951, 34.756172, 37.504486>,  <37.539539, 34.993488, 37.526257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567951, 34.756172, 37.504486>,  <37.615307, 34.360645, 37.468204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567951, 34.756172, 37.504486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400974, 0.131174, -0.906650,
		-0.908408, -0.070964, -0.412019,
		-0.118386, 0.988816, 0.090705,
		37.532436, 35.052818, 37.531696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346405, 34.593739, 36.790905>,  <37.615307, 34.360645, 37.468204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346405, 34.593739, 36.790905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486141, 34.930305, 36.955818>,  <37.569981, 35.132248, 37.054768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486141, 34.930305, 36.955818>,  <37.346405, 34.593739, 36.790905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486141, 34.930305, 36.955818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391450, 0.268713, -0.880091,
		-0.851312, 0.468836, -0.235503,
		0.349336, 0.841419, 0.412284,
		37.590942, 35.182732, 37.079502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187733, 35.117855, 36.338108>,  <37.346405, 34.593739, 36.790905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187733, 35.117855, 36.338108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483150, 35.286583, 36.548485>,  <37.660400, 35.387821, 36.674709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483150, 35.286583, 36.548485>,  <37.187733, 35.117855, 36.338108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483150, 35.286583, 36.548485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313986, 0.475130, -0.821988,
		-0.596624, 0.772215, 0.218460,
		0.738548, 0.421824, 0.525939,
		37.704716, 35.413132, 36.706268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288277, 35.867031, 36.122200>,  <37.187733, 35.117855, 36.338108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288277, 35.867031, 36.122200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634064, 35.801323, 36.312241>,  <37.841534, 35.761898, 36.426266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634064, 35.801323, 36.312241>,  <37.288277, 35.867031, 36.122200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634064, 35.801323, 36.312241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501077, 0.357389, -0.788159,
		-0.040321, 0.919395, 0.391263,
		0.864463, -0.164273, 0.475098,
		37.893402, 35.752041, 36.454769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731426, 36.563961, 36.066654>,  <37.288277, 35.867031, 36.122200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731426, 36.563961, 36.066654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932640, 36.221779, 36.115879>,  <38.053368, 36.016468, 36.145412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932640, 36.221779, 36.115879>,  <37.731426, 36.563961, 36.066654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932640, 36.221779, 36.115879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557855, 0.212633, -0.802237,
		0.660115, 0.472205, 0.584184,
		0.503037, -0.855459, 0.123060,
		38.083549, 35.965141, 36.152798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450718, 36.720116, 35.789215>,  <37.731426, 36.563961, 36.066654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450718, 36.720116, 35.789215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428520, 36.321434, 35.812904>,  <38.415203, 36.082226, 35.827118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428520, 36.321434, 35.812904>,  <38.450718, 36.720116, 35.789215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428520, 36.321434, 35.812904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553947, -0.080084, -0.828691,
		0.830701, -0.013176, 0.556563,
		-0.055490, -0.996701, 0.059227,
		38.411873, 36.022423, 35.830673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006622, 36.539970, 35.459934>,  <38.450718, 36.720116, 35.789215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006622, 36.539970, 35.459934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779774, 36.210575, 35.466118>,  <38.643665, 36.012936, 35.469830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779774, 36.210575, 35.466118>,  <39.006622, 36.539970, 35.459934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779774, 36.210575, 35.466118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232940, -0.178372, -0.955993,
		0.790009, -0.538560, 0.292982,
		-0.567120, -0.823490, 0.015463,
		38.609638, 35.963528, 35.470757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345924, 35.900517, 35.229740>,  <39.006622, 36.539970, 35.459934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345924, 35.900517, 35.229740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969265, 35.925167, 35.097374>,  <38.743271, 35.939957, 35.017956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969265, 35.925167, 35.097374>,  <39.345924, 35.900517, 35.229740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969265, 35.925167, 35.097374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294040, -0.327898, -0.897788,
		-0.163829, -0.942701, 0.290645,
		-0.941648, 0.061623, -0.330911,
		38.686771, 35.943653, 34.998100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986523, 35.595947, 35.016155>,  <39.345924, 35.900517, 35.229740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986523, 35.595947, 35.016155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248924, 35.839085, 34.837185>,  <40.406364, 35.984966, 34.729805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248924, 35.839085, 34.837185>,  <39.986523, 35.595947, 35.016155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248924, 35.839085, 34.837185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236778, 0.397138, 0.886689,
		0.716655, -0.687612, 0.116601,
		0.656005, 0.607841, -0.447422,
		40.445724, 36.021439, 34.702957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686787, 35.278614, 35.057117>,  <39.986523, 35.595947, 35.016155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686787, 35.278614, 35.057117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953465, 34.980774, 35.070297>,  <41.113472, 34.802071, 35.078205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953465, 34.980774, 35.070297>,  <40.686787, 35.278614, 35.057117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953465, 34.980774, 35.070297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730814, -0.644385, 0.225119,
		-0.146394, -0.174163, -0.973774,
		0.666693, -0.744604, 0.032947,
		41.153473, 34.757393, 35.080181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459023, 34.684021, 34.632645>,  <40.686787, 35.278614, 35.057117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459023, 34.684021, 34.632645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722900, 34.523952, 34.887096>,  <40.881229, 34.427910, 35.039768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722900, 34.523952, 34.887096>,  <40.459023, 34.684021, 34.632645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722900, 34.523952, 34.887096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701470, -0.631640, 0.330107,
		0.269704, -0.663996, -0.697402,
		0.659697, -0.400175, 0.636129,
		40.920811, 34.403900, 35.077934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442905, 34.027981, 34.515537>,  <40.459023, 34.684021, 34.632645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442905, 34.027981, 34.515537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580578, 34.063847, 34.889381>,  <40.663181, 34.085365, 35.113689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580578, 34.063847, 34.889381>,  <40.442905, 34.027981, 34.515537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580578, 34.063847, 34.889381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658899, -0.686076, 0.308466,
		0.668876, -0.721982, -0.177049,
		0.344176, 0.089668, 0.934613,
		40.683830, 34.090748, 35.169765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361877, 33.370972, 34.870914>,  <40.442905, 34.027981, 34.515537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361877, 33.370972, 34.870914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434452, 33.596920, 35.192909>,  <40.477997, 33.732487, 35.386108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434452, 33.596920, 35.192909>,  <40.361877, 33.370972, 34.870914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434452, 33.596920, 35.192909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589091, -0.593024, 0.548903,
		0.787435, -0.573801, 0.225164,
		0.181434, 0.564867, 0.804989,
		40.488884, 33.766380, 35.434406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369461, 32.885475, 35.423466>,  <40.361877, 33.370972, 34.870914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369461, 32.885475, 35.423466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309223, 33.252583, 35.570450>,  <40.273079, 33.472847, 35.658642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309223, 33.252583, 35.570450>,  <40.369461, 32.885475, 35.423466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309223, 33.252583, 35.570450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671342, -0.367790, 0.643452,
		0.725687, -0.149794, 0.671521,
		-0.150594, 0.917765, 0.367464,
		40.264046, 33.527912, 35.680691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467415, 32.928173, 36.129799>,  <40.369461, 32.885475, 35.423466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467415, 32.928173, 36.129799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231926, 33.243763, 36.059460>,  <40.090633, 33.433117, 36.017258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231926, 33.243763, 36.059460>,  <40.467415, 32.928173, 36.129799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231926, 33.243763, 36.059460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665805, -0.349942, 0.658972,
		0.458377, 0.505032, 0.731323,
		-0.588723, 0.788976, -0.175847,
		40.055309, 33.480457, 36.006706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239666, 33.129112, 36.887314>,  <40.467415, 32.928173, 36.129799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239666, 33.129112, 36.887314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992741, 33.313171, 36.632069>,  <39.844585, 33.423607, 36.478924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992741, 33.313171, 36.632069>,  <40.239666, 33.129112, 36.887314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992741, 33.313171, 36.632069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758948, -0.134726, 0.637061,
		0.207173, 0.877560, 0.432398,
		-0.617314, 0.460150, -0.638111,
		39.807545, 33.451218, 36.440636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892807, 33.489071, 37.301987>,  <40.239666, 33.129112, 36.887314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892807, 33.489071, 37.301987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691200, 33.437630, 36.960361>,  <39.570236, 33.406765, 36.755386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691200, 33.437630, 36.960361>,  <39.892807, 33.489071, 37.301987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691200, 33.437630, 36.960361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781493, -0.353126, 0.514365,
		-0.367742, 0.926695, 0.077479,
		-0.504019, -0.128604, -0.854064,
		39.539993, 33.399048, 36.704144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214924, 33.672382, 37.447277>,  <39.892807, 33.489071, 37.301987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214924, 33.672382, 37.447277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187206, 33.438061, 37.124283>,  <39.170578, 33.297466, 36.930489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187206, 33.438061, 37.124283>,  <39.214924, 33.672382, 37.447277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187206, 33.438061, 37.124283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704699, -0.544184, 0.455262,
		-0.706115, 0.600578, -0.375110,
		-0.069291, -0.585807, -0.807483,
		39.166420, 33.262318, 36.882038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479748, 33.542076, 37.419880>,  <39.214924, 33.672382, 37.447277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479748, 33.542076, 37.419880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681538, 33.271263, 37.205540>,  <38.802612, 33.108776, 37.076935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681538, 33.271263, 37.205540>,  <38.479748, 33.542076, 37.419880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681538, 33.271263, 37.205540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664202, -0.700825, 0.260156,
		-0.551668, 0.224667, -0.803236,
		0.504479, -0.677030, -0.535846,
		38.832882, 33.068153, 37.044785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907009, 33.229454, 37.035862>,  <38.479748, 33.542076, 37.419880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907009, 33.229454, 37.035862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212662, 32.971722, 37.023666>,  <38.396053, 32.817081, 37.016350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212662, 32.971722, 37.023666>,  <37.907009, 33.229454, 37.035862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212662, 32.971722, 37.023666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607003, -0.734246, 0.304024,
		-0.218277, -0.213811, -0.952177,
		0.764135, -0.644335, -0.030485,
		38.441902, 32.778419, 37.014523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670799, 32.651241, 36.614910>,  <37.907009, 33.229454, 37.035862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670799, 32.651241, 36.614910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977840, 32.525307, 36.838219>,  <38.162064, 32.449745, 36.972202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977840, 32.525307, 36.838219>,  <37.670799, 32.651241, 36.614910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977840, 32.525307, 36.838219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562486, -0.748466, 0.351295,
		0.307245, -0.583674, -0.751615,
		0.767600, -0.314839, 0.558271,
		38.208122, 32.430855, 37.005699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543873, 31.986780, 36.638443>,  <37.670799, 32.651241, 36.614910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543873, 31.986780, 36.638443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837700, 32.003754, 36.909325>,  <38.013996, 32.013939, 37.071854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837700, 32.003754, 36.909325>,  <37.543873, 31.986780, 36.638443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837700, 32.003754, 36.909325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348620, -0.832638, 0.430324,
		0.582129, -0.552190, -0.596835,
		0.734568, 0.042435, 0.677207,
		38.058071, 32.016483, 37.112488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892303, 31.284718, 36.770161>,  <37.543873, 31.986780, 36.638443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892303, 31.284718, 36.770161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909691, 31.525419, 37.089161>,  <37.920124, 31.669840, 37.280560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909691, 31.525419, 37.089161>,  <37.892303, 31.284718, 36.770161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909691, 31.525419, 37.089161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570526, -0.640339, 0.514262,
		0.820128, -0.477346, 0.315484,
		0.043464, 0.601753, 0.797499,
		37.922729, 31.705944, 37.328411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752590, 30.594872, 36.794796>,  <37.892303, 31.284718, 36.770161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752590, 30.594872, 36.794796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706017, 30.210381, 36.694809>,  <37.678074, 29.979685, 36.634819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706017, 30.210381, 36.694809>,  <37.752590, 30.594872, 36.794796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706017, 30.210381, 36.694809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359852, 0.275405, -0.891436,
		0.925716, -0.013843, -0.377966,
		-0.116434, -0.961228, -0.249965,
		37.671085, 29.922012, 36.619820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014263, 30.560574, 36.157261>,  <37.752590, 30.594872, 36.794796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014263, 30.560574, 36.157261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810844, 30.216200, 36.162540>,  <37.688793, 30.009577, 36.165707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810844, 30.216200, 36.162540>,  <38.014263, 30.560574, 36.157261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810844, 30.216200, 36.162540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526951, 0.299075, -0.795536,
		0.680956, -0.411521, -0.605763,
		-0.508548, -0.860932, 0.013195,
		37.658279, 29.957920, 36.166500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065620, 30.180410, 35.415871>,  <38.014263, 30.560574, 36.157261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065620, 30.180410, 35.415871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753078, 30.001287, 35.589741>,  <37.565552, 29.893814, 35.694065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753078, 30.001287, 35.589741>,  <38.065620, 30.180410, 35.415871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753078, 30.001287, 35.589741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550447, 0.166291, -0.818142,
		0.294090, -0.878528, -0.376429,
		-0.781357, -0.447811, 0.434678,
		37.518669, 29.866945, 35.720146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780880, 29.607376, 34.905293>,  <38.065620, 30.180410, 35.415871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780880, 29.607376, 34.905293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505009, 29.721249, 35.171616>,  <37.339485, 29.789572, 35.331409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505009, 29.721249, 35.171616>,  <37.780880, 29.607376, 34.905293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505009, 29.721249, 35.171616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572802, 0.348021, -0.742145,
		-0.442989, -0.893218, -0.076958,
		-0.689680, 0.284680, 0.665806,
		37.298103, 29.806652, 35.371357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159023, 29.386862, 34.576283>,  <37.780880, 29.607376, 34.905293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159023, 29.386862, 34.576283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016117, 29.644579, 34.846764>,  <36.930374, 29.799210, 35.009052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016117, 29.644579, 34.846764>,  <37.159023, 29.386862, 34.576283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016117, 29.644579, 34.846764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641437, 0.357002, -0.679049,
		-0.678912, -0.676342, 0.285729,
		-0.357263, 0.644291, 0.676204,
		36.908939, 29.837866, 35.049625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535275, 29.515200, 34.231178>,  <37.159023, 29.386862, 34.576283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535275, 29.515200, 34.231178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558300, 29.781712, 34.528568>,  <36.572117, 29.941620, 34.707001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558300, 29.781712, 34.528568>,  <36.535275, 29.515200, 34.231178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558300, 29.781712, 34.528568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647066, 0.592012, -0.480445,
		-0.760258, -0.453422, 0.465205,
		0.057562, 0.666281, 0.743476,
		36.575569, 29.981596, 34.751610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839863, 29.732058, 34.526840>,  <36.535275, 29.515200, 34.231178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839863, 29.732058, 34.526840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117512, 30.019175, 34.548611>,  <36.284103, 30.191444, 34.561672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117512, 30.019175, 34.548611>,  <35.839863, 29.732058, 34.526840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117512, 30.019175, 34.548611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512440, 0.545813, -0.662943,
		-0.505564, 0.432274, 0.746689,
		0.694125, 0.717793, 0.054429,
		36.325748, 30.234512, 34.564938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538383, 30.279316, 34.410080>,  <35.839863, 29.732058, 34.526840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538383, 30.279316, 34.410080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904633, 30.408092, 34.313751>,  <36.124382, 30.485359, 34.255955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904633, 30.408092, 34.313751>,  <35.538383, 30.279316, 34.410080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904633, 30.408092, 34.313751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401247, 0.693950, -0.597858,
		-0.025358, 0.644039, 0.764572,
		0.915619, 0.321943, -0.240822,
		36.179317, 30.504675, 34.241505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431034, 30.979919, 34.469772>,  <35.538383, 30.279316, 34.410080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431034, 30.979919, 34.469772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784184, 30.955379, 34.283539>,  <35.996075, 30.940655, 34.171799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784184, 30.955379, 34.283539>,  <35.431034, 30.979919, 34.469772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784184, 30.955379, 34.283539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222207, 0.818840, -0.529269,
		0.413708, 0.570734, 0.709301,
		0.882876, -0.061351, -0.465581,
		36.049046, 30.936974, 34.143864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726707, 31.738733, 34.450195>,  <35.431034, 30.979919, 34.469772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726707, 31.738733, 34.450195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893562, 31.514622, 34.163956>,  <35.993675, 31.380156, 33.992210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893562, 31.514622, 34.163956>,  <35.726707, 31.738733, 34.450195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893562, 31.514622, 34.163956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027120, 0.779350, -0.626002,
		0.908437, 0.280539, 0.309904,
		0.417141, -0.560279, -0.715598,
		36.018703, 31.346539, 33.949276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434929, 32.063759, 34.256840>,  <35.726707, 31.738733, 34.450195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434929, 32.063759, 34.256840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269592, 31.853161, 33.959667>,  <36.170391, 31.726801, 33.781364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269592, 31.853161, 33.959667>,  <36.434929, 32.063759, 34.256840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269592, 31.853161, 33.959667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031025, 0.807275, -0.589360,
		0.910047, -0.266657, -0.317347,
		-0.413343, -0.526499, -0.742931,
		36.145588, 31.695211, 33.736790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745785, 32.381031, 33.696743>,  <36.434929, 32.063759, 34.256840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745785, 32.381031, 33.696743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418629, 32.184086, 33.577663>,  <36.222336, 32.065918, 33.506214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418629, 32.184086, 33.577663>,  <36.745785, 32.381031, 33.696743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418629, 32.184086, 33.577663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235802, 0.758799, -0.607142,
		0.524828, -0.426381, -0.736719,
		-0.817895, -0.492365, -0.297697,
		36.173260, 32.036377, 33.488354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.922276, 28.427761, 40.068981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566185, 28.293825, 39.945446>,  <38.352531, 28.213465, 39.871323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566185, 28.293825, 39.945446>,  <38.922276, 28.427761, 40.068981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566185, 28.293825, 39.945446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311642, 0.046809, -0.949046,
		0.332234, -0.941112, 0.062679,
		-0.890224, -0.334839, -0.308842,
		38.299118, 28.193375, 39.852795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054024, 28.121243, 39.498978>,  <38.922276, 28.427761, 40.068981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054024, 28.121243, 39.498978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656109, 28.153706, 39.474297>,  <38.417358, 28.173183, 39.459488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656109, 28.153706, 39.474297>,  <39.054024, 28.121243, 39.498978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656109, 28.153706, 39.474297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074915, 0.171458, -0.982339,
		-0.069149, -0.981843, -0.176644,
		-0.994789, 0.081161, -0.061699,
		38.357674, 28.178053, 39.455788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847519, 27.754108, 38.929443>,  <39.054024, 28.121243, 39.498978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847519, 27.754108, 38.929443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.554764, 28.022423, 38.977409>,  <38.379108, 28.183413, 39.006187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.554764, 28.022423, 38.977409>,  <38.847519, 27.754108, 38.929443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554764, 28.022423, 38.977409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113307, 0.293326, -0.949274,
		-0.671935, -0.681178, -0.290688,
		-0.731891, 0.670787, 0.119914,
		38.335197, 28.223660, 39.013382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459389, 27.720427, 38.340984>,  <38.847519, 27.754108, 38.929443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459389, 27.720427, 38.340984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380726, 28.090851, 38.469818>,  <38.333527, 28.313105, 38.547119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380726, 28.090851, 38.469818>,  <38.459389, 27.720427, 38.340984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380726, 28.090851, 38.469818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007293, 0.327111, -0.944958,
		-0.980444, -0.188185, -0.057576,
		-0.196660, 0.926059, 0.322086,
		38.321728, 28.368668, 38.566444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105259, 27.989967, 37.821491>,  <38.459389, 27.720427, 38.340984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105259, 27.989967, 37.821491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.162964, 28.335054, 38.015358>,  <38.197586, 28.542107, 38.131680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.162964, 28.335054, 38.015358>,  <38.105259, 27.989967, 37.821491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162964, 28.335054, 38.015358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146170, 0.503001, -0.851836,
		-0.978684, 0.052045, 0.198669,
		0.144264, 0.862717, 0.484672,
		38.206242, 28.593870, 38.160759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693989, 28.352442, 37.485985>,  <38.105259, 27.989967, 37.821491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693989, 28.352442, 37.485985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885391, 28.637762, 37.690823>,  <38.000233, 28.808954, 37.813725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885391, 28.637762, 37.690823>,  <37.693989, 28.352442, 37.485985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885391, 28.637762, 37.690823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180833, 0.650739, -0.737454,
		-0.859265, 0.260270, 0.440368,
		0.478502, 0.713302, 0.512091,
		38.028942, 28.851753, 37.844448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200920, 28.955444, 37.556915>,  <37.693989, 28.352442, 37.485985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200920, 28.955444, 37.556915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574867, 29.094374, 37.586281>,  <37.799236, 29.177731, 37.603901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574867, 29.094374, 37.586281>,  <37.200920, 28.955444, 37.556915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574867, 29.094374, 37.586281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210552, 0.708993, -0.673050,
		-0.285816, 0.613755, 0.735944,
		0.934867, 0.347323, 0.073415,
		37.855328, 29.198570, 37.608307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090702, 29.636179, 37.560013>,  <37.200920, 28.955444, 37.556915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090702, 29.636179, 37.560013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461277, 29.559328, 37.430523>,  <37.683620, 29.513218, 37.352829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461277, 29.559328, 37.430523>,  <37.090702, 29.636179, 37.560013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461277, 29.559328, 37.430523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139478, 0.623565, -0.769228,
		0.349656, 0.757795, 0.550897,
		0.926438, -0.192127, -0.323729,
		37.739208, 29.501690, 37.333405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351055, 30.274818, 37.311481>,  <37.090702, 29.636179, 37.560013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351055, 30.274818, 37.311481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545815, 29.974464, 37.132999>,  <37.662670, 29.794252, 37.025909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545815, 29.974464, 37.132999>,  <37.351055, 30.274818, 37.311481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545815, 29.974464, 37.132999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085097, 0.467639, -0.879813,
		0.869304, 0.466350, 0.163794,
		0.486898, -0.750886, -0.446206,
		37.691883, 29.749199, 36.999138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068485, 30.708820, 37.464214>,  <37.351055, 30.274818, 37.311481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068485, 30.708820, 37.464214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975571, 31.062201, 37.626968>,  <37.919823, 31.274229, 37.724621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975571, 31.062201, 37.626968>,  <38.068485, 30.708820, 37.464214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975571, 31.062201, 37.626968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529430, -0.465770, 0.709057,
		0.815932, -0.050710, 0.575919,
		-0.232290, 0.883451, 0.406884,
		37.905884, 31.327236, 37.749035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170525, 30.651014, 38.203163>,  <38.068485, 30.708820, 37.464214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170525, 30.651014, 38.203163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906971, 30.945671, 38.142204>,  <37.748837, 31.122465, 38.105629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.906971, 30.945671, 38.142204>,  <38.170525, 30.651014, 38.203163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906971, 30.945671, 38.142204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532988, -0.314202, 0.785622,
		0.530840, 0.598860, 0.599646,
		-0.658887, 0.736643, -0.152394,
		37.709305, 31.166664, 38.096485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208202, 31.007771, 38.790058>,  <38.170525, 30.651014, 38.203163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208202, 31.007771, 38.790058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.864456, 31.125660, 38.622906>,  <37.658207, 31.196394, 38.522614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.864456, 31.125660, 38.622906>,  <38.208202, 31.007771, 38.790058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864456, 31.125660, 38.622906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484414, -0.207431, 0.849892,
		0.163800, 0.932798, 0.321027,
		-0.859368, 0.294722, -0.417883,
		37.606647, 31.214077, 38.497540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991177, 31.509996, 39.170849>,  <38.208202, 31.007771, 38.790058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991177, 31.509996, 39.170849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660591, 31.383835, 38.984310>,  <37.462238, 31.308138, 38.872387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660591, 31.383835, 38.984310>,  <37.991177, 31.509996, 39.170849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660591, 31.383835, 38.984310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463832, -0.088016, 0.881540,
		-0.319088, 0.944866, -0.073553,
		-0.826464, -0.315406, -0.466344,
		37.412651, 31.289213, 38.844406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489902, 32.038570, 39.327038>,  <37.991177, 31.509996, 39.170849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489902, 32.038570, 39.327038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294624, 31.704176, 39.226810>,  <37.177456, 31.503538, 39.166676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294624, 31.704176, 39.226810>,  <37.489902, 32.038570, 39.327038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294624, 31.704176, 39.226810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537416, 0.061754, 0.841054,
		-0.687639, 0.545258, -0.479423,
		-0.488198, -0.835990, -0.250566,
		37.148167, 31.453379, 39.151642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718483, 32.233509, 39.472950>,  <37.489902, 32.038570, 39.327038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718483, 32.233509, 39.472950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.737507, 31.836008, 39.432549>,  <36.748920, 31.597507, 39.408310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.737507, 31.836008, 39.432549>,  <36.718483, 32.233509, 39.472950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737507, 31.836008, 39.432549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556065, -0.110340, 0.823782,
		-0.829777, 0.016980, -0.557837,
		0.047564, -0.993749, -0.100999,
		36.751778, 31.537884, 39.402248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023037, 31.954527, 39.369072>,  <36.718483, 32.233509, 39.472950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023037, 31.954527, 39.369072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266350, 31.695126, 39.552128>,  <36.412338, 31.539484, 39.661961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266350, 31.695126, 39.552128>,  <36.023037, 31.954527, 39.369072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266350, 31.695126, 39.552128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556966, 0.062032, 0.828216,
		-0.565489, -0.758680, -0.323462,
		0.608286, -0.648504, 0.457637,
		36.448837, 31.500574, 39.689419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610538, 31.780413, 39.987305>,  <36.023037, 31.954527, 39.369072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610538, 31.780413, 39.987305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937416, 31.557470, 40.046017>,  <36.133545, 31.423704, 40.081242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.937416, 31.557470, 40.046017>,  <35.610538, 31.780413, 39.987305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937416, 31.557470, 40.046017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261749, -0.132001, 0.956066,
		-0.513496, -0.819713, -0.253758,
		0.817196, -0.557357, 0.146777,
		36.182575, 31.390263, 40.090050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348431, 31.112209, 40.265041>,  <35.610538, 31.780413, 39.987305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348431, 31.112209, 40.265041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715736, 31.206955, 40.391968>,  <35.936119, 31.263803, 40.468124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715736, 31.206955, 40.391968>,  <35.348431, 31.112209, 40.265041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715736, 31.206955, 40.391968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304410, -0.090235, 0.948257,
		0.253245, -0.967342, -0.010755,
		0.918260, 0.236867, 0.317320,
		35.991215, 31.278015, 40.487164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397537, 30.648069, 40.773727>,  <35.348431, 31.112209, 40.265041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397537, 30.648069, 40.773727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.687965, 30.914558, 40.841805>,  <35.862225, 31.074451, 40.882652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.687965, 30.914558, 40.841805>,  <35.397537, 30.648069, 40.773727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687965, 30.914558, 40.841805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141581, -0.097363, 0.985127,
		0.672885, -0.739370, 0.023632,
		0.726072, 0.666223, 0.170195,
		35.905788, 31.114426, 40.892864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976543, 30.326801, 41.202789>,  <35.397537, 30.648069, 40.773727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976543, 30.326801, 41.202789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932453, 30.722248, 41.243759>,  <35.905998, 30.959517, 41.268341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932453, 30.722248, 41.243759>,  <35.976543, 30.326801, 41.202789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932453, 30.722248, 41.243759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235003, -0.074203, 0.969158,
		0.965724, 0.130900, -0.224148,
		-0.110230, 0.988615, 0.102421,
		35.899384, 31.018833, 41.274487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479313, 30.503323, 41.656639>,  <35.976543, 30.326801, 41.202789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479313, 30.503323, 41.656639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255573, 30.832197, 41.698845>,  <36.121330, 31.029522, 41.724171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255573, 30.832197, 41.698845>,  <36.479313, 30.503323, 41.656639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255573, 30.832197, 41.698845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332068, 0.105616, 0.937324,
		0.759512, 0.559332, -0.332098,
		-0.559350, 0.822188, 0.105519,
		36.087769, 31.078854, 41.730499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883350, 31.010000, 42.008587>,  <36.479313, 30.503323, 41.656639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883350, 31.010000, 42.008587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.508492, 31.133446, 42.073719>,  <36.283577, 31.207514, 42.112801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.508492, 31.133446, 42.073719>,  <36.883350, 31.010000, 42.008587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508492, 31.133446, 42.073719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160374, -0.033499, 0.986488,
		0.309899, 0.950597, -0.018101,
		-0.937146, 0.308614, 0.162833,
		36.227348, 31.226030, 42.122570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996014, 31.527079, 42.450516>,  <36.883350, 31.010000, 42.008587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996014, 31.527079, 42.450516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604107, 31.450714, 42.474556>,  <36.368961, 31.404896, 42.488979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604107, 31.450714, 42.474556>,  <36.996014, 31.527079, 42.450516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604107, 31.450714, 42.474556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077115, -0.082987, 0.993563,
		-0.184696, 0.978093, 0.096029,
		-0.979766, -0.190912, 0.060098,
		36.310177, 31.393440, 42.492584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.489944, 28.854183, 42.279869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867546, 28.983467, 42.253372>,  <33.094109, 29.061037, 42.237476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867546, 28.983467, 42.253372>,  <32.489944, 28.854183, 42.279869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867546, 28.983467, 42.253372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268900, 0.637391, -0.722098,
		-0.191169, 0.699477, 0.688612,
		0.944006, 0.323210, -0.066240,
		33.150749, 29.080431, 42.233501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417233, 29.585033, 42.329807>,  <32.489944, 28.854183, 42.279869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417233, 29.585033, 42.329807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.772491, 29.511572, 42.161304>,  <32.985649, 29.467495, 42.060204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.772491, 29.511572, 42.161304>,  <32.417233, 29.585033, 42.329807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772491, 29.511572, 42.161304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290817, 0.485164, -0.824646,
		0.355832, 0.854919, 0.377488,
		0.888149, -0.183656, -0.421261,
		33.038937, 29.456474, 42.034927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588924, 30.185144, 41.959248>,  <32.417233, 29.585033, 42.329807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588924, 30.185144, 41.959248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784637, 29.880087, 41.790024>,  <32.902065, 29.697052, 41.688492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784637, 29.880087, 41.790024>,  <32.588924, 30.185144, 41.959248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784637, 29.880087, 41.790024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078003, 0.444875, -0.892189,
		0.868627, 0.469536, 0.158183,
		0.489287, -0.762642, -0.423056,
		32.931423, 29.651295, 41.663109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926453, 30.565325, 41.406555>,  <32.588924, 30.185144, 41.959248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926453, 30.565325, 41.406555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.013851, 30.189445, 41.301315>,  <33.066292, 29.963917, 41.238171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.013851, 30.189445, 41.301315>,  <32.926453, 30.565325, 41.406555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013851, 30.189445, 41.301315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018027, 0.265681, -0.963892,
		0.975670, 0.215354, 0.041112,
		0.218501, -0.939700, -0.263099,
		33.079403, 29.907536, 41.222385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399933, 30.581108, 40.882061>,  <32.926453, 30.565325, 41.406555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399933, 30.581108, 40.882061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281399, 30.201405, 40.839928>,  <33.210278, 29.973583, 40.814648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281399, 30.201405, 40.839928>,  <33.399933, 30.581108, 40.882061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281399, 30.201405, 40.839928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002233, 0.110975, -0.993821,
		0.955082, -0.294268, -0.035005,
		-0.296334, -0.949258, -0.105333,
		33.192497, 29.916628, 40.808327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869312, 30.118166, 40.346733>,  <33.399933, 30.581108, 40.882061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869312, 30.118166, 40.346733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504112, 29.961397, 40.392029>,  <33.284992, 29.867336, 40.419205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504112, 29.961397, 40.392029>,  <33.869312, 30.118166, 40.346733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504112, 29.961397, 40.392029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168571, 0.109666, -0.979570,
		0.371496, -0.913439, -0.166192,
		-0.913003, -0.391921, 0.113239,
		33.230213, 29.843821, 40.425999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811829, 29.668608, 39.759747>,  <33.869312, 30.118166, 40.346733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811829, 29.668608, 39.759747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.433842, 29.687639, 39.889225>,  <33.207050, 29.699059, 39.966911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.433842, 29.687639, 39.889225>,  <33.811829, 29.668608, 39.759747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433842, 29.687639, 39.889225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320205, 0.068670, -0.944856,
		-0.067180, -0.996504, -0.049657,
		-0.944963, 0.047576, 0.323699,
		33.150352, 29.701912, 39.986336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264702, 29.233803, 39.337856>,  <33.811829, 29.668608, 39.759747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264702, 29.233803, 39.337856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073826, 29.543974, 39.503265>,  <32.959301, 29.730076, 39.602512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073826, 29.543974, 39.503265>,  <33.264702, 29.233803, 39.337856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073826, 29.543974, 39.503265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298078, 0.299840, -0.906226,
		-0.826702, -0.555706, 0.088056,
		-0.477193, 0.775427, 0.413522,
		32.930668, 29.776602, 39.627323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639030, 29.310347, 38.928135>,  <33.264702, 29.233803, 39.337856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639030, 29.310347, 38.928135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737839, 29.653803, 39.107788>,  <32.797123, 29.859877, 39.215580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737839, 29.653803, 39.107788>,  <32.639030, 29.310347, 38.928135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737839, 29.653803, 39.107788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141519, 0.490493, -0.859878,
		-0.958619, 0.148851, 0.242678,
		0.247025, 0.858639, 0.449130,
		32.811947, 29.911394, 39.242527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076618, 29.847513, 38.646744>,  <32.639030, 29.310347, 38.928135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076618, 29.847513, 38.646744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.386211, 30.054365, 38.792908>,  <32.571968, 30.178476, 38.880604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.386211, 30.054365, 38.792908>,  <32.076618, 29.847513, 38.646744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386211, 30.054365, 38.792908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066512, 0.640284, -0.765254,
		-0.629699, 0.567992, 0.529966,
		0.773987, 0.517129, 0.365407,
		32.618408, 30.209503, 38.902531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947172, 30.523355, 38.592331>,  <32.076618, 29.847513, 38.646744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947172, 30.523355, 38.592331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.346760, 30.538708, 38.602051>,  <32.586514, 30.547920, 38.607883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.346760, 30.538708, 38.602051>,  <31.947172, 30.523355, 38.592331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346760, 30.538708, 38.602051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006088, 0.643186, -0.765686,
		-0.045016, 0.764748, 0.642755,
		0.998968, 0.038381, 0.024298,
		32.646450, 30.550222, 38.609341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043163, 31.239851, 38.412338>,  <31.947172, 30.523355, 38.592331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043163, 31.239851, 38.412338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369953, 31.016340, 38.355316>,  <32.566029, 30.882235, 38.321102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369953, 31.016340, 38.355316>,  <32.043163, 31.239851, 38.412338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369953, 31.016340, 38.355316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193348, 0.498309, -0.845165,
		0.543294, 0.662916, 0.515144,
		0.816975, -0.558775, -0.142555,
		32.615047, 30.848707, 38.312550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679115, 31.775799, 38.360992>,  <32.043163, 31.239851, 38.412338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679115, 31.775799, 38.360992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.800041, 31.427029, 38.206928>,  <32.872597, 31.217766, 38.114491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.800041, 31.427029, 38.206928>,  <32.679115, 31.775799, 38.360992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800041, 31.427029, 38.206928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267397, 0.465421, -0.843731,
		0.914934, 0.152082, 0.373854,
		0.302316, -0.871926, -0.385163,
		32.890736, 31.165451, 38.091381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291767, 31.957569, 38.016769>,  <32.679115, 31.775799, 38.360992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291767, 31.957569, 38.016769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135159, 31.620499, 37.868927>,  <33.041191, 31.418257, 37.780224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135159, 31.620499, 37.868927>,  <33.291767, 31.957569, 38.016769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135159, 31.620499, 37.868927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005758, 0.403906, -0.914782,
		0.920150, -0.356032, -0.162991,
		-0.391525, -0.842675, -0.369603,
		33.017700, 31.367697, 37.758045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012291, 32.249916, 38.257275>,  <33.291767, 31.957569, 38.016769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012291, 32.249916, 38.257275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025909, 32.643253, 38.328686>,  <34.034081, 32.879257, 38.371532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025909, 32.643253, 38.328686>,  <34.012291, 32.249916, 38.257275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025909, 32.643253, 38.328686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309347, -0.159485, 0.937480,
		0.950340, -0.087145, 0.298765,
		0.034048, 0.983346, 0.178523,
		34.036125, 32.938259, 38.382244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372528, 32.382683, 38.888042>,  <34.012291, 32.249916, 38.257275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372528, 32.382683, 38.888042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140385, 32.704250, 38.836060>,  <34.001099, 32.897190, 38.804871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140385, 32.704250, 38.836060>,  <34.372528, 32.382683, 38.888042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140385, 32.704250, 38.836060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322557, -0.080396, 0.943129,
		0.747755, 0.589274, 0.305970,
		-0.580361, 0.803923, -0.129958,
		33.966278, 32.945427, 38.797073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576176, 32.852951, 39.405048>,  <34.372528, 32.382683, 38.888042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576176, 32.852951, 39.405048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198566, 32.932934, 39.300102>,  <33.972000, 32.980923, 39.237133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198566, 32.932934, 39.300102>,  <34.576176, 32.852951, 39.405048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198566, 32.932934, 39.300102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286351, -0.101846, 0.952697,
		0.163777, 0.974497, 0.153402,
		-0.944023, 0.199957, -0.262368,
		33.915359, 32.992920, 39.221394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332676, 33.458244, 39.787159>,  <34.576176, 32.852951, 39.405048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332676, 33.458244, 39.787159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999229, 33.266014, 39.678246>,  <33.799164, 33.150677, 39.612900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999229, 33.266014, 39.678246>,  <34.332676, 33.458244, 39.787159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999229, 33.266014, 39.678246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249308, -0.112515, 0.961866,
		-0.492882, 0.869707, -0.026017,
		-0.833614, -0.480572, -0.272282,
		33.749146, 33.121841, 39.596561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946228, 33.588333, 40.422352>,  <34.332676, 33.458244, 39.787159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946228, 33.588333, 40.422352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715160, 33.328712, 40.224350>,  <33.576519, 33.172939, 40.105549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715160, 33.328712, 40.224350>,  <33.946228, 33.588333, 40.422352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715160, 33.328712, 40.224350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285890, -0.407140, 0.867470,
		-0.764571, 0.642626, 0.049634,
		-0.577666, -0.649052, -0.495008,
		33.541862, 33.133995, 40.075848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392624, 33.609097, 40.807346>,  <33.946228, 33.588333, 40.422352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392624, 33.609097, 40.807346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383598, 33.261341, 40.609901>,  <33.378181, 33.052689, 40.491436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383598, 33.261341, 40.609901>,  <33.392624, 33.609097, 40.807346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383598, 33.261341, 40.609901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272768, -0.469649, 0.839659,
		-0.961815, 0.153589, -0.226543,
		-0.022567, -0.869390, -0.493610,
		33.376827, 33.000523, 40.461819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971195, 33.225368, 41.259029>,  <33.392624, 33.609097, 40.807346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971195, 33.225368, 41.259029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119801, 32.944054, 41.016590>,  <33.208965, 32.775265, 40.871124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119801, 32.944054, 41.016590>,  <32.971195, 33.225368, 41.259029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119801, 32.944054, 41.016590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151958, -0.690085, 0.707595,
		-0.915906, -0.170781, -0.363250,
		0.371518, -0.703289, -0.606102,
		33.231255, 32.733067, 40.834759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462833, 32.698334, 41.223846>,  <32.971195, 33.225368, 41.259029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462833, 32.698334, 41.223846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836155, 32.570129, 41.159084>,  <33.060150, 32.493206, 41.120228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836155, 32.570129, 41.159084>,  <32.462833, 32.698334, 41.223846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836155, 32.570129, 41.159084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084376, -0.634000, 0.768716,
		-0.349027, -0.703787, -0.618760,
		0.933307, -0.320511, -0.161901,
		33.116146, 32.473976, 41.110516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451092, 31.962915, 41.100243>,  <32.462833, 32.698334, 41.223846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451092, 31.962915, 41.100243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811760, 32.045940, 41.251984>,  <33.028160, 32.095757, 41.343029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811760, 32.045940, 41.251984>,  <32.451092, 31.962915, 41.100243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811760, 32.045940, 41.251984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203296, -0.570795, 0.795527,
		0.381653, -0.794424, -0.472473,
		0.901672, 0.207564, 0.379349,
		33.082260, 32.108208, 41.365788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616291, 31.314939, 41.538368>,  <32.451092, 31.962915, 41.100243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616291, 31.314939, 41.538368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.876072, 31.606428, 41.625256>,  <33.031940, 31.781321, 41.677387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.876072, 31.606428, 41.625256>,  <32.616291, 31.314939, 41.538368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876072, 31.606428, 41.625256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143484, -0.397970, 0.906108,
		0.746746, -0.557303, -0.363021,
		0.649448, 0.728720, 0.217219,
		33.070908, 31.825045, 41.690422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294491, 31.035654, 41.810005>,  <32.616291, 31.314939, 41.538368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294491, 31.035654, 41.810005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275024, 31.411064, 41.946709>,  <33.263344, 31.636311, 42.028732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275024, 31.411064, 41.946709>,  <33.294491, 31.035654, 41.810005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275024, 31.411064, 41.946709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285035, -0.314886, 0.905319,
		0.957281, 0.141471, -0.252189,
		-0.048666, 0.938527, 0.341759,
		33.260426, 31.692623, 42.049236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919418, 31.078522, 42.257198>,  <33.294491, 31.035654, 41.810005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919418, 31.078522, 42.257198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672382, 31.369331, 42.377213>,  <33.524162, 31.543818, 42.449223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672382, 31.369331, 42.377213>,  <33.919418, 31.078522, 42.257198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672382, 31.369331, 42.377213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168117, -0.250635, 0.953372,
		0.768325, 0.639231, 0.032564,
		-0.617586, 0.727025, 0.300035,
		33.487106, 31.587439, 42.467224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166809, 31.240810, 42.929928>,  <33.919418, 31.078522, 42.257198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166809, 31.240810, 42.929928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804924, 31.411081, 42.936878>,  <33.587795, 31.513245, 42.941048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804924, 31.411081, 42.936878>,  <34.166809, 31.240810, 42.929928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804924, 31.411081, 42.936878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085537, -0.221448, 0.971414,
		0.417357, 0.877359, 0.236757,
		-0.904708, 0.425678, 0.017376,
		33.533512, 31.538784, 42.942093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160606, 31.660673, 43.455795>,  <34.166809, 31.240810, 42.929928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160606, 31.660673, 43.455795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775303, 31.560167, 43.417850>,  <33.544121, 31.499865, 43.395084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775303, 31.560167, 43.417850>,  <34.160606, 31.660673, 43.455795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775303, 31.560167, 43.417850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069780, -0.106948, 0.991813,
		-0.259352, 0.961992, 0.085485,
		-0.963259, -0.251263, -0.094865,
		33.486324, 31.484789, 43.389393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263767, 32.391430, 43.621635>,  <34.160606, 31.660673, 43.455795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263767, 32.391430, 43.621635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490475, 32.648926, 43.827305>,  <34.626499, 32.803421, 43.950706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490475, 32.648926, 43.827305>,  <34.263767, 32.391430, 43.621635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490475, 32.648926, 43.827305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057718, 0.591537, -0.804210,
		-0.821853, 0.485478, 0.298110,
		0.566769, 0.643736, 0.514177,
		34.660503, 32.842045, 43.981560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990658, 33.077423, 43.440525>,  <34.263767, 32.391430, 43.621635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990658, 33.077423, 43.440525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358006, 33.168930, 43.569687>,  <34.578415, 33.223835, 43.647182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358006, 33.168930, 43.569687>,  <33.990658, 33.077423, 43.440525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358006, 33.168930, 43.569687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201560, 0.431785, -0.879167,
		-0.340549, 0.872483, 0.350428,
		0.918368, 0.228767, 0.322901,
		34.633514, 33.237560, 43.666557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054409, 33.805565, 43.255798>,  <33.990658, 33.077423, 43.440525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054409, 33.805565, 43.255798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.429157, 33.680428, 43.318275>,  <34.654007, 33.605343, 43.355762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.429157, 33.680428, 43.318275>,  <34.054409, 33.805565, 43.255798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429157, 33.680428, 43.318275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296174, 0.472543, -0.830051,
		0.185871, 0.823912, 0.535370,
		0.936874, -0.312845, 0.156190,
		34.710220, 33.586575, 43.365131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292038, 34.356277, 43.150421>,  <34.054409, 33.805565, 43.255798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292038, 34.356277, 43.150421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590328, 34.098164, 43.084087>,  <34.769302, 33.943295, 43.044289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590328, 34.098164, 43.084087>,  <34.292038, 34.356277, 43.150421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590328, 34.098164, 43.084087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216244, 0.469849, -0.855851,
		0.630185, 0.602368, 0.489917,
		0.745724, -0.645286, -0.165834,
		34.814045, 33.904579, 43.034336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844994, 34.704247, 43.008293>,  <34.292038, 34.356277, 43.150421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844994, 34.704247, 43.008293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.885933, 34.341793, 42.844124>,  <34.910496, 34.124321, 42.745621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.885933, 34.341793, 42.844124>,  <34.844994, 34.704247, 43.008293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885933, 34.341793, 42.844124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193727, 0.422848, -0.885251,
		0.975702, 0.011092, 0.218820,
		0.102347, -0.906133, -0.410425,
		34.916637, 34.069954, 42.720997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461636, 34.783180, 42.641781>,  <34.844994, 34.704247, 43.008293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461636, 34.783180, 42.641781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.286255, 34.454338, 42.496510>,  <35.181026, 34.257030, 42.409348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.286255, 34.454338, 42.496510>,  <35.461636, 34.783180, 42.641781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286255, 34.454338, 42.496510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282487, 0.257560, -0.924047,
		0.853208, -0.507742, 0.119308,
		-0.438449, -0.822108, -0.363183,
		35.154720, 34.207706, 42.387554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992535, 34.423344, 42.303226>,  <35.461636, 34.783180, 42.641781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992535, 34.423344, 42.303226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636135, 34.319969, 42.153912>,  <35.422295, 34.257946, 42.064323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636135, 34.319969, 42.153912>,  <35.992535, 34.423344, 42.303226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636135, 34.319969, 42.153912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266714, 0.367413, -0.890995,
		0.367413, -0.893431, -0.258435,
		0.890995, 0.258435, 0.373283,
		35.368835, 34.242439, 42.041927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121384, 33.989998, 41.807072>,  <35.992535, 34.423344, 42.303226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121384, 33.989998, 41.807072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758171, 34.109917, 41.690044>,  <35.540241, 34.181870, 41.619827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758171, 34.109917, 41.690044>,  <36.121384, 33.989998, 41.807072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758171, 34.109917, 41.690044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357287, 0.189682, -0.914531,
		-0.218682, -0.934955, -0.279352,
		-0.908033, 0.299800, -0.292567,
		35.485760, 34.199856, 41.602276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895363, 33.646122, 41.213928>,  <36.121384, 33.989998, 41.807072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895363, 33.646122, 41.213928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.670567, 33.976978, 41.215191>,  <35.535690, 34.175491, 41.215950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.670567, 33.976978, 41.215191>,  <35.895363, 33.646122, 41.213928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670567, 33.976978, 41.215191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138439, 0.097821, -0.985528,
		-0.815479, -0.553416, -0.169483,
		-0.561986, 0.827141, 0.003157,
		35.501972, 34.225121, 41.216137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674812, 33.668976, 40.556282>,  <35.895363, 33.646122, 41.213928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674812, 33.668976, 40.556282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599773, 34.039036, 40.688286>,  <35.554749, 34.261070, 40.767490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599773, 34.039036, 40.688286>,  <35.674812, 33.668976, 40.556282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599773, 34.039036, 40.688286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121427, 0.355242, -0.926854,
		-0.974712, -0.133803, -0.178981,
		-0.187597, 0.925148, 0.330011,
		35.543495, 34.316582, 40.787289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317036, 33.994839, 40.043545>,  <35.674812, 33.668976, 40.556282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317036, 33.994839, 40.043545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459503, 34.302547, 40.255718>,  <35.544983, 34.487175, 40.383022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459503, 34.302547, 40.255718>,  <35.317036, 33.994839, 40.043545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459503, 34.302547, 40.255718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194308, 0.494278, -0.847309,
		-0.913997, 0.404851, 0.026569,
		0.356167, 0.769275, 0.530435,
		35.566353, 34.533329, 40.414848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979889, 34.537117, 39.735817>,  <35.317036, 33.994839, 40.043545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979889, 34.537117, 39.735817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.324387, 34.631508, 39.915848>,  <35.531086, 34.688141, 40.023865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.324387, 34.631508, 39.915848>,  <34.979889, 34.537117, 39.735817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324387, 34.631508, 39.915848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381050, 0.286101, -0.879174,
		-0.336231, 0.928688, 0.156485,
		0.861249, 0.235977, 0.450072,
		35.582760, 34.702301, 40.050869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252785, 35.070545, 39.300770>,  <34.979889, 34.537117, 39.735817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252785, 35.070545, 39.300770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.570324, 35.021561, 39.539032>,  <35.760849, 34.992172, 39.681988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.570324, 35.021561, 39.539032>,  <35.252785, 35.070545, 39.300770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570324, 35.021561, 39.539032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582297, 0.435442, -0.686528,
		-0.175302, 0.891849, 0.416983,
		0.793851, -0.122458, 0.595654,
		35.808479, 34.984825, 39.717728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643555, 35.663708, 39.225246>,  <35.252785, 35.070545, 39.300770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643555, 35.663708, 39.225246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901093, 35.389893, 39.361996>,  <36.055614, 35.225605, 39.444046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901093, 35.389893, 39.361996>,  <35.643555, 35.663708, 39.225246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901093, 35.389893, 39.361996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590802, 0.160829, -0.790624,
		0.486229, 0.711016, 0.507975,
		0.643843, -0.684537, 0.341870,
		36.094246, 35.184532, 39.464558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.352718, 39.938961, 38.159863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275114, 40.196373, 37.863693>,  <28.228552, 40.350822, 37.685993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275114, 40.196373, 37.863693>,  <28.352718, 39.938961, 38.159863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275114, 40.196373, 37.863693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389547, -0.743243, -0.543914,
		-0.900340, 0.182902, 0.394885,
		-0.194012, 0.643534, -0.740421,
		28.216909, 40.389435, 37.641567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698912, 39.906708, 37.912979>,  <28.352718, 39.938961, 38.159863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698912, 39.906708, 37.912979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889414, 40.053360, 37.593288>,  <28.003716, 40.141350, 37.401474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889414, 40.053360, 37.593288>,  <27.698912, 39.906708, 37.912979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889414, 40.053360, 37.593288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385705, -0.729713, -0.564580,
		-0.790199, 0.577149, -0.206118,
		0.476254, 0.366630, -0.799228,
		28.032290, 40.163349, 37.353519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323078, 39.625420, 37.352535>,  <27.698912, 39.906708, 37.912979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323078, 39.625420, 37.352535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.633881, 39.786705, 37.159172>,  <27.820362, 39.883476, 37.043156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.633881, 39.786705, 37.159172>,  <27.323078, 39.625420, 37.352535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633881, 39.786705, 37.159172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094043, -0.684959, -0.722486,
		-0.622426, 0.606838, -0.494300,
		0.777008, 0.403209, -0.483405,
		27.866983, 39.907669, 37.014149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161285, 39.621086, 36.693298>,  <27.323078, 39.625420, 37.352535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161285, 39.621086, 36.693298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561029, 39.633114, 36.701023>,  <27.800877, 39.640331, 36.705658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561029, 39.633114, 36.701023>,  <27.161285, 39.621086, 36.693298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561029, 39.633114, 36.701023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034642, -0.682468, -0.730094,
		-0.008773, 0.730297, -0.683074,
		0.999361, 0.030068, 0.019312,
		27.860838, 39.642136, 36.706818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374411, 39.851540, 36.091164>,  <27.161285, 39.621086, 36.693298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374411, 39.851540, 36.091164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651007, 39.606850, 36.244850>,  <27.816965, 39.460033, 36.337063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651007, 39.606850, 36.244850>,  <27.374411, 39.851540, 36.091164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651007, 39.606850, 36.244850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167239, -0.652994, -0.738667,
		0.702758, 0.446526, -0.553846,
		0.691492, -0.611730, 0.384220,
		27.858454, 39.423332, 36.360115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641861, 39.515217, 35.561249>,  <27.374411, 39.851540, 36.091164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641861, 39.515217, 35.561249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.832531, 39.308971, 35.846043>,  <27.946934, 39.185223, 36.016918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.832531, 39.308971, 35.846043>,  <27.641861, 39.515217, 35.561249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832531, 39.308971, 35.846043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105011, -0.837518, -0.536225,
		0.872784, 0.180840, -0.453371,
		0.476677, -0.515617, 0.711982,
		27.975534, 39.154285, 36.059639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265238, 39.144104, 35.261292>,  <27.641861, 39.515217, 35.561249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265238, 39.144104, 35.261292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193167, 38.937965, 35.596424>,  <28.149925, 38.814281, 35.797504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193167, 38.937965, 35.596424>,  <28.265238, 39.144104, 35.261292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193167, 38.937965, 35.596424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239541, -0.849114, -0.470771,
		0.954021, 0.115873, 0.276436,
		-0.180176, -0.515344, 0.837829,
		28.139114, 38.783363, 35.847775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841362, 38.645248, 35.276131>,  <28.265238, 39.144104, 35.261292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841362, 38.645248, 35.276131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565742, 38.491951, 35.522167>,  <28.400372, 38.399975, 35.669788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565742, 38.491951, 35.522167>,  <28.841362, 38.645248, 35.276131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565742, 38.491951, 35.522167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164116, -0.909204, -0.382642,
		0.705889, -0.162712, 0.689381,
		-0.689048, -0.383241, 0.615093,
		28.359028, 38.376980, 35.706696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099079, 37.985355, 35.335144>,  <28.841362, 38.645248, 35.276131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099079, 37.985355, 35.335144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.716175, 37.945457, 35.443733>,  <28.486431, 37.921516, 35.508888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.716175, 37.945457, 35.443733>,  <29.099079, 37.985355, 35.335144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716175, 37.945457, 35.443733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014593, -0.920792, -0.389781,
		0.288852, -0.377085, 0.879984,
		-0.957263, -0.099747, 0.271476,
		28.428997, 37.915535, 35.525177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101496, 37.380039, 35.745182>,  <29.099079, 37.985355, 35.335144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101496, 37.380039, 35.745182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730526, 37.437016, 35.606850>,  <28.507944, 37.471203, 35.523849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730526, 37.437016, 35.606850>,  <29.101496, 37.380039, 35.745182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730526, 37.437016, 35.606850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034022, -0.952932, -0.301270,
		-0.372465, -0.267639, 0.888616,
		-0.927422, 0.142445, -0.345828,
		28.452299, 37.479748, 35.503101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868210, 36.686939, 36.010590>,  <29.101496, 37.380039, 35.745182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868210, 36.686939, 36.010590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626532, 36.848427, 35.735794>,  <28.481525, 36.945320, 35.570915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626532, 36.848427, 35.735794>,  <28.868210, 36.686939, 36.010590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626532, 36.848427, 35.735794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096698, -0.892926, -0.439696,
		-0.790947, -0.199232, 0.578540,
		-0.604195, 0.403720, -0.686992,
		28.445272, 36.969543, 35.529697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317814, 36.201633, 35.909893>,  <28.868210, 36.686939, 36.010590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317814, 36.201633, 35.909893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299767, 36.431683, 35.583164>,  <28.288939, 36.569714, 35.387127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299767, 36.431683, 35.583164>,  <28.317814, 36.201633, 35.909893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299767, 36.431683, 35.583164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203429, -0.805810, -0.556135,
		-0.978050, 0.141073, 0.153354,
		-0.045118, 0.575125, -0.816821,
		28.286230, 36.604221, 35.338120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672243, 36.076256, 35.557663>,  <28.317814, 36.201633, 35.909893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672243, 36.076256, 35.557663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.937723, 36.216587, 35.293411>,  <28.097012, 36.300785, 35.134861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.937723, 36.216587, 35.293411>,  <27.672243, 36.076256, 35.557663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937723, 36.216587, 35.293411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228841, -0.745607, -0.625861,
		-0.712134, 0.566562, -0.414575,
		0.663699, 0.350826, -0.660625,
		28.136833, 36.321835, 35.095222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228748, 35.968609, 34.859020>,  <27.672243, 36.076256, 35.557663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228748, 35.968609, 34.859020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608423, 36.039795, 34.755199>,  <27.836229, 36.082508, 34.692909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608423, 36.039795, 34.755199>,  <27.228748, 35.968609, 34.859020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608423, 36.039795, 34.755199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013220, -0.801464, -0.597897,
		-0.314427, 0.570949, -0.758389,
		0.949190, 0.177969, -0.259550,
		27.893181, 36.093185, 34.677334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262022, 36.196209, 34.194267>,  <27.228748, 35.968609, 34.859020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262022, 36.196209, 34.194267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645195, 36.088718, 34.234570>,  <27.875099, 36.024223, 34.258751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645195, 36.088718, 34.234570>,  <27.262022, 36.196209, 34.194267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645195, 36.088718, 34.234570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048494, -0.497599, -0.866051,
		0.282865, 0.824732, -0.489698,
		0.957933, -0.268723, 0.100758,
		27.932575, 36.008102, 34.264797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626570, 36.410862, 33.600609>,  <27.262022, 36.196209, 34.194267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626570, 36.410862, 33.600609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859940, 36.126995, 33.758591>,  <27.999962, 35.956676, 33.853382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859940, 36.126995, 33.758591>,  <27.626570, 36.410862, 33.600609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859940, 36.126995, 33.758591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014699, -0.476996, -0.878783,
		0.812033, 0.518510, -0.267861,
		0.583426, -0.709664, 0.394958,
		28.034967, 35.914097, 33.877079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160578, 36.186150, 33.058880>,  <27.626570, 36.410862, 33.600609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160578, 36.186150, 33.058880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173361, 35.903629, 33.341755>,  <28.181030, 35.734116, 33.511482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173361, 35.903629, 33.341755>,  <28.160578, 36.186150, 33.058880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173361, 35.903629, 33.341755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045440, -0.707846, -0.704903,
		0.998456, -0.009606, -0.054717,
		0.031960, -0.706301, 0.707190,
		28.182949, 35.691738, 33.553913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698698, 35.743046, 32.878967>,  <28.160578, 36.186150, 33.058880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698698, 35.743046, 32.878967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.481562, 35.526451, 33.135754>,  <28.351280, 35.396492, 33.289825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.481562, 35.526451, 33.135754>,  <28.698698, 35.743046, 32.878967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481562, 35.526451, 33.135754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235640, -0.831886, -0.502433,
		0.806101, -0.121469, 0.579177,
		-0.542840, -0.541489, 0.641961,
		28.318710, 35.364006, 33.328342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179296, 35.316757, 33.125988>,  <28.698698, 35.743046, 32.878967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179296, 35.316757, 33.125988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155724, 35.435696, 33.507168>,  <29.141581, 35.507057, 33.735874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155724, 35.435696, 33.507168>,  <29.179296, 35.316757, 33.125988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155724, 35.435696, 33.507168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642124, 0.719617, -0.264250,
		-0.764332, -0.627485, 0.148524,
		-0.058932, 0.297346, 0.952950,
		29.138044, 35.524899, 33.793053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673677, 35.769291, 32.752426>,  <29.179296, 35.316757, 33.125988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673677, 35.769291, 32.752426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.930988, 35.912243, 32.481583>,  <30.085375, 35.998016, 32.319077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.930988, 35.912243, 32.481583>,  <29.673677, 35.769291, 32.752426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930988, 35.912243, 32.481583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329983, 0.668603, 0.666394,
		0.690872, -0.652109, 0.312168,
		0.643278, 0.357383, -0.677105,
		30.123972, 36.019459, 32.278450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467026, 35.770947, 33.008957>,  <29.673677, 35.769291, 32.752426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467026, 35.770947, 33.008957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.413353, 36.047173, 32.724670>,  <30.381149, 36.212910, 32.554100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.413353, 36.047173, 32.724670>,  <30.467026, 35.770947, 33.008957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413353, 36.047173, 32.724670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361781, 0.701831, 0.613635,
		0.922556, -0.174783, -0.344008,
		-0.134182, 0.690568, -0.710712,
		30.373098, 36.254341, 32.511456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060301, 36.144176, 33.005287>,  <30.467026, 35.770947, 33.008957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060301, 36.144176, 33.005287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789175, 36.373222, 32.820820>,  <30.626499, 36.510651, 32.710140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789175, 36.373222, 32.820820>,  <31.060301, 36.144176, 33.005287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789175, 36.373222, 32.820820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169338, 0.731968, 0.659960,
		0.715465, 0.369237, -0.593105,
		-0.677816, 0.572613, -0.461172,
		30.585831, 36.545006, 32.682468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438908, 36.739994, 32.860115>,  <31.060301, 36.144176, 33.005287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438908, 36.739994, 32.860115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.057516, 36.859680, 32.845421>,  <30.828682, 36.931492, 32.836605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.057516, 36.859680, 32.845421>,  <31.438908, 36.739994, 32.860115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057516, 36.859680, 32.845421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192007, 0.696692, 0.691197,
		0.232410, 0.651988, -0.721732,
		-0.953477, 0.299219, -0.036732,
		30.771473, 36.949448, 32.834400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457966, 37.425789, 32.884678>,  <31.438908, 36.739994, 32.860115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457966, 37.425789, 32.884678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.070686, 37.381668, 32.974499>,  <30.838318, 37.355198, 33.028389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.070686, 37.381668, 32.974499>,  <31.457966, 37.425789, 32.884678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070686, 37.381668, 32.974499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116028, 0.597213, 0.793646,
		-0.221642, 0.794462, -0.565424,
		-0.968201, -0.110300, 0.224548,
		30.780226, 37.348579, 33.041862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220085, 38.080063, 32.955074>,  <31.457966, 37.425789, 32.884678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220085, 38.080063, 32.955074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.965553, 37.843433, 33.153114>,  <30.812834, 37.701458, 33.271938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.965553, 37.843433, 33.153114>,  <31.220085, 38.080063, 32.955074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965553, 37.843433, 33.153114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203561, 0.490292, 0.847453,
		-0.744074, 0.640044, -0.191568,
		-0.636331, -0.591572, 0.495102,
		30.774654, 37.665962, 33.301643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763586, 38.524204, 33.123932>,  <31.220085, 38.080063, 32.955074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763586, 38.524204, 33.123932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706760, 38.224903, 33.383141>,  <30.672665, 38.045322, 33.538666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706760, 38.224903, 33.383141>,  <30.763586, 38.524204, 33.123932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706760, 38.224903, 33.383141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075947, 0.660972, 0.746558,
		-0.986940, 0.056844, -0.150729,
		-0.142065, -0.748255, 0.648022,
		30.664141, 38.000427, 33.577549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391867, 38.759071, 33.665195>,  <30.763586, 38.524204, 33.123932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391867, 38.759071, 33.665195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505198, 38.424576, 33.852993>,  <30.573196, 38.223877, 33.965672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.505198, 38.424576, 33.852993>,  <30.391867, 38.759071, 33.665195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505198, 38.424576, 33.852993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002280, 0.488963, 0.872301,
		-0.959021, -0.248217, 0.136630,
		0.283328, -0.836243, 0.469492,
		30.590197, 38.173702, 33.993839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884083, 38.633961, 34.127373>,  <30.391867, 38.759071, 33.665195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884083, 38.633961, 34.127373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239388, 38.496502, 34.249290>,  <30.452570, 38.414028, 34.322441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239388, 38.496502, 34.249290>,  <29.884083, 38.633961, 34.127373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239388, 38.496502, 34.249290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032448, 0.614946, 0.787901,
		-0.458191, -0.709752, 0.535082,
		0.888261, -0.343647, 0.304793,
		30.505865, 38.393410, 34.340729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819170, 38.436832, 34.857002>,  <29.884083, 38.633961, 34.127373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819170, 38.436832, 34.857002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.194992, 38.535393, 34.761902>,  <30.420485, 38.594528, 34.704842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.194992, 38.535393, 34.761902>,  <29.819170, 38.436832, 34.857002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194992, 38.535393, 34.761902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060814, 0.563234, 0.824057,
		0.336952, -0.788705, 0.514206,
		0.939556, 0.246397, -0.237747,
		30.476858, 38.609310, 34.690578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192646, 38.442661, 35.482220>,  <29.819170, 38.436832, 34.857002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192646, 38.442661, 35.482220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478689, 38.634720, 35.279015>,  <30.650314, 38.749954, 35.157089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478689, 38.634720, 35.279015>,  <30.192646, 38.442661, 35.482220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478689, 38.634720, 35.279015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124056, 0.628047, 0.768224,
		0.687919, -0.612384, 0.389555,
		0.715106, 0.480149, -0.508015,
		30.693220, 38.778767, 35.126610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797123, 38.508217, 35.946869>,  <30.192646, 38.442661, 35.482220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797123, 38.508217, 35.946869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893152, 38.771290, 35.661263>,  <30.950769, 38.929134, 35.489899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893152, 38.771290, 35.661263>,  <30.797123, 38.508217, 35.946869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893152, 38.771290, 35.661263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182290, 0.691897, 0.698605,
		0.953486, -0.297872, 0.046215,
		0.240071, 0.657686, -0.714014,
		30.965174, 38.968597, 35.447060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456074, 38.734119, 36.076889>,  <30.797123, 38.508217, 35.946869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456074, 38.734119, 36.076889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.274561, 39.011459, 35.852982>,  <31.165653, 39.177864, 35.718636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.274561, 39.011459, 35.852982>,  <31.456074, 38.734119, 36.076889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274561, 39.011459, 35.852982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205136, 0.692579, 0.691559,
		0.867180, 0.198988, -0.456512,
		-0.453782, 0.693353, -0.559771,
		31.138426, 39.219463, 35.685051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802731, 39.384571, 36.319477>,  <31.456074, 38.734119, 36.076889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802731, 39.384571, 36.319477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.457720, 39.473484, 36.137646>,  <31.250713, 39.526833, 36.028549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.457720, 39.473484, 36.137646>,  <31.802731, 39.384571, 36.319477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457720, 39.473484, 36.137646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103203, 0.802187, 0.588086,
		0.495375, 0.554153, -0.668967,
		-0.862527, 0.222284, -0.454574,
		31.198961, 39.540169, 36.001274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812704, 40.109829, 36.194462>,  <31.802731, 39.384571, 36.319477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812704, 40.109829, 36.194462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428267, 40.003075, 36.165989>,  <31.197603, 39.939022, 36.148903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428267, 40.003075, 36.165989>,  <31.812704, 40.109829, 36.194462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428267, 40.003075, 36.165989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237769, 0.668217, 0.704949,
		-0.140571, 0.694449, -0.705677,
		-0.961096, -0.266883, -0.071186,
		31.139938, 39.923008, 36.144634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320608, 40.705276, 36.004601>,  <31.812704, 40.109829, 36.194462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320608, 40.705276, 36.004601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.072411, 40.451206, 36.188572>,  <30.923492, 40.298763, 36.298954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.072411, 40.451206, 36.188572>,  <31.320608, 40.705276, 36.004601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072411, 40.451206, 36.188572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316614, 0.739472, 0.594085,
		-0.717457, 0.223004, -0.659943,
		-0.620493, -0.635177, 0.459933,
		30.886263, 40.260654, 36.326553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603184, 41.133892, 36.042751>,  <31.320608, 40.705276, 36.004601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603184, 41.133892, 36.042751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.529852, 40.829014, 36.291092>,  <30.485853, 40.646088, 36.440094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.529852, 40.829014, 36.291092>,  <30.603184, 41.133892, 36.042751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529852, 40.829014, 36.291092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494473, 0.617341, 0.611871,
		-0.849639, -0.194819, -0.490060,
		-0.183330, -0.762191, 0.620849,
		30.474854, 40.600357, 36.477348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811922, 41.069633, 36.146923>,  <30.603184, 41.133892, 36.042751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811922, 41.069633, 36.146923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006437, 40.928635, 36.466740>,  <30.123146, 40.844036, 36.658630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006437, 40.928635, 36.466740>,  <29.811922, 41.069633, 36.146923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006437, 40.928635, 36.466740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527515, 0.611031, 0.590228,
		-0.696599, -0.708792, 0.111191,
		0.486290, -0.352497, 0.799542,
		30.152325, 40.822887, 36.706604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357275, 41.204647, 36.813351>,  <29.811922, 41.069633, 36.146923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357275, 41.204647, 36.813351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.723879, 41.112343, 36.944046>,  <29.943842, 41.056961, 37.022461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.723879, 41.112343, 36.944046>,  <29.357275, 41.204647, 36.813351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723879, 41.112343, 36.944046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087781, 0.680886, 0.727110,
		-0.390257, -0.695086, 0.603784,
		0.916512, -0.230759, 0.326736,
		29.998833, 41.043114, 37.042068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253801, 40.932171, 37.537041>,  <29.357275, 41.204647, 36.813351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253801, 40.932171, 37.537041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622744, 41.079266, 37.489658>,  <29.844109, 41.167522, 37.461227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622744, 41.079266, 37.489658>,  <29.253801, 40.932171, 37.537041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622744, 41.079266, 37.489658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197435, 0.712198, 0.673642,
		0.332087, -0.597950, 0.729503,
		0.922354, 0.367737, -0.118456,
		29.899450, 41.189587, 37.454121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425926, 41.071571, 38.206848>,  <29.253801, 40.932171, 37.537041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425926, 41.071571, 38.206848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682407, 41.277969, 37.979656>,  <29.836296, 41.401810, 37.843342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682407, 41.277969, 37.979656>,  <29.425926, 41.071571, 38.206848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682407, 41.277969, 37.979656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093157, 0.787036, 0.609833,
		0.761695, -0.338116, 0.552719,
		0.641204, 0.515996, -0.567984,
		29.874769, 41.432770, 37.809261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966143, 41.389050, 38.657524>,  <29.425926, 41.071571, 38.206848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966143, 41.389050, 38.657524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925562, 41.635860, 38.345371>,  <29.901215, 41.783947, 38.158081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925562, 41.635860, 38.345371>,  <29.966143, 41.389050, 38.657524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925562, 41.635860, 38.345371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178195, 0.760469, 0.624447,
		0.978751, 0.202410, 0.032800,
		-0.101451, 0.617023, -0.780378,
		29.895126, 41.820969, 38.111259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327246, 42.129688, 38.844986>,  <29.966143, 41.389050, 38.657524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327246, 42.129688, 38.844986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071119, 42.165577, 38.539845>,  <29.917444, 42.187111, 38.356758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071119, 42.165577, 38.539845>,  <30.327246, 42.129688, 38.844986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071119, 42.165577, 38.539845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371272, 0.833277, 0.409643,
		0.672423, 0.545527, -0.500248,
		-0.640316, 0.089725, -0.762853,
		29.879025, 42.192493, 38.310989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.747612, 32.005325, 43.202610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490753, 31.713615, 43.108120>,  <36.336636, 31.538589, 43.051426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490753, 31.713615, 43.108120>,  <36.747612, 32.005325, 43.202610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490753, 31.713615, 43.108120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001996, -0.306565, 0.951848,
		-0.766575, 0.611702, 0.195405,
		-0.642152, -0.729273, -0.236226,
		36.298107, 31.494833, 43.037251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363098, 32.026810, 43.754513>,  <36.747612, 32.005325, 43.202610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363098, 32.026810, 43.754513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.237713, 31.685743, 43.587322>,  <36.162483, 31.481104, 43.487007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.237713, 31.685743, 43.587322>,  <36.363098, 32.026810, 43.754513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237713, 31.685743, 43.587322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126914, -0.398593, 0.908304,
		-0.941081, 0.337767, 0.016729,
		-0.313464, -0.852664, -0.417975,
		36.143673, 31.429943, 43.461929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836720, 31.783567, 44.240456>,  <36.363098, 32.026810, 43.754513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836720, 31.783567, 44.240456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967144, 31.469181, 44.030338>,  <36.045399, 31.280548, 43.904266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967144, 31.469181, 44.030338>,  <35.836720, 31.783567, 44.240456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967144, 31.469181, 44.030338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118867, -0.517169, 0.847589,
		-0.937845, -0.338810, -0.075205,
		0.326065, -0.785967, -0.525297,
		36.064964, 31.233391, 43.872749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443192, 31.264252, 44.560848>,  <35.836720, 31.783567, 44.240456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443192, 31.264252, 44.560848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744255, 31.091921, 44.361694>,  <35.924892, 30.988522, 44.242203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744255, 31.091921, 44.361694>,  <35.443192, 31.264252, 44.560848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744255, 31.091921, 44.361694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071458, -0.698273, 0.712256,
		-0.654519, -0.571666, -0.494776,
		0.752661, -0.430829, -0.497883,
		35.970055, 30.962673, 44.212330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305916, 30.607595, 44.320148>,  <35.443192, 31.264252, 44.560848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305916, 30.607595, 44.320148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700260, 30.643549, 44.376720>,  <35.936867, 30.665121, 44.410664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700260, 30.643549, 44.376720>,  <35.305916, 30.607595, 44.320148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700260, 30.643549, 44.376720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052815, -0.634285, 0.771293,
		0.159032, -0.767856, -0.620568,
		0.985860, 0.089885, 0.141426,
		35.996017, 30.670515, 44.419147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516655, 29.932941, 44.574612>,  <35.305916, 30.607595, 44.320148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516655, 29.932941, 44.574612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834389, 30.166162, 44.642822>,  <36.025028, 30.306095, 44.683746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834389, 30.166162, 44.642822>,  <35.516655, 29.932941, 44.574612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834389, 30.166162, 44.642822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130589, -0.438038, 0.889421,
		0.593273, -0.684233, -0.424090,
		0.794338, 0.583051, 0.170523,
		36.072689, 30.341078, 44.693981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038662, 29.442711, 44.845478>,  <35.516655, 29.932941, 44.574612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038662, 29.442711, 44.845478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098213, 29.813179, 44.984066>,  <36.133945, 30.035460, 45.067219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098213, 29.813179, 44.984066>,  <36.038662, 29.442711, 44.845478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098213, 29.813179, 44.984066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069807, -0.359346, 0.930590,
		0.986388, -0.114360, -0.118152,
		0.148880, 0.926171, 0.346472,
		36.142876, 30.091030, 45.088009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680893, 29.410267, 45.282429>,  <36.038662, 29.442711, 44.845478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680893, 29.410267, 45.282429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555477, 29.775230, 45.387657>,  <36.480228, 29.994207, 45.450794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555477, 29.775230, 45.387657>,  <36.680893, 29.410267, 45.282429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555477, 29.775230, 45.387657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304273, -0.165894, 0.938028,
		0.899505, 0.374155, -0.225606,
		-0.313542, 0.912407, 0.263068,
		36.461414, 30.048952, 45.466576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144871, 29.704756, 45.761036>,  <36.680893, 29.410267, 45.282429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144871, 29.704756, 45.761036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854721, 29.961826, 45.859665>,  <36.680630, 30.116068, 45.918842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854721, 29.961826, 45.859665>,  <37.144871, 29.704756, 45.761036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854721, 29.961826, 45.859665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324985, 0.003971, 0.945711,
		0.606806, 0.766128, -0.211740,
		-0.725377, 0.642675, 0.246571,
		36.637108, 30.154629, 45.933636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361767, 29.951889, 46.366791>,  <37.144871, 29.704756, 45.761036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361767, 29.951889, 46.366791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009865, 30.142044, 46.364529>,  <36.798721, 30.256138, 46.363171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009865, 30.142044, 46.364529>,  <37.361767, 29.951889, 46.366791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009865, 30.142044, 46.364529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029032, 0.065583, 0.997425,
		0.474535, 0.877328, -0.071499,
		-0.879758, 0.475389, -0.005651,
		36.745937, 30.284660, 46.362835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432045, 30.599274, 46.724743>,  <37.361767, 29.951889, 46.366791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432045, 30.599274, 46.724743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053158, 30.472080, 46.741066>,  <36.825825, 30.395763, 46.750862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053158, 30.472080, 46.741066>,  <37.432045, 30.599274, 46.724743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053158, 30.472080, 46.741066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120670, -0.235691, 0.964307,
		-0.297015, 0.918334, 0.261621,
		-0.947217, -0.317984, 0.040812,
		36.768993, 30.376684, 46.753311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005329, 31.003309, 47.237354>,  <37.432045, 30.599274, 46.724743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005329, 31.003309, 47.237354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874130, 30.628981, 47.185730>,  <36.795410, 30.404383, 47.154755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874130, 30.628981, 47.185730>,  <37.005329, 31.003309, 47.237354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874130, 30.628981, 47.185730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277074, -0.225904, 0.933915,
		-0.903134, 0.270560, 0.333387,
		-0.327993, -0.935823, -0.129057,
		36.775734, 30.348234, 47.147015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256672, 30.686565, 47.881210>,  <37.005329, 31.003309, 47.237354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256672, 30.686565, 47.881210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933460, 30.458342, 47.822483>,  <36.739532, 30.321407, 47.787247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933460, 30.458342, 47.822483>,  <37.256672, 30.686565, 47.881210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933460, 30.458342, 47.822483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293369, -0.605784, 0.739568,
		-0.510909, 0.554517, 0.656873,
		-0.808026, -0.570558, -0.146823,
		36.691051, 30.287174, 47.778435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173004, 30.170834, 48.318439>,  <37.256672, 30.686565, 47.881210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173004, 30.170834, 48.318439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852608, 30.002563, 48.148056>,  <36.660370, 29.901602, 48.045826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852608, 30.002563, 48.148056>,  <37.173004, 30.170834, 48.318439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852608, 30.002563, 48.148056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142437, -0.824990, 0.546903,
		-0.581483, 0.377393, 0.720730,
		-0.800993, -0.420674, -0.425963,
		36.612309, 29.876362, 48.020267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671089, 30.682840, 48.883568>,  <37.173004, 30.170834, 48.318439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671089, 30.682840, 48.883568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295986, 30.641745, 49.016270>,  <36.070923, 30.617088, 49.095890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295986, 30.641745, 49.016270>,  <36.671089, 30.682840, 48.883568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295986, 30.641745, 49.016270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342032, 0.438874, -0.830905,
		-0.060231, -0.892656, -0.446697,
		-0.937756, -0.102738, 0.331751,
		36.014660, 30.610924, 49.115795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216877, 30.361481, 48.354286>,  <36.671089, 30.682840, 48.883568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216877, 30.361481, 48.354286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.024048, 30.603216, 48.608021>,  <35.908348, 30.748257, 48.760262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.024048, 30.603216, 48.608021>,  <36.216877, 30.361481, 48.354286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024048, 30.603216, 48.608021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442930, 0.456568, -0.771595,
		-0.755920, -0.652933, 0.047578,
		-0.482077, 0.604338, 0.634333,
		35.879425, 30.784517, 48.798321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589138, 30.456488, 48.025787>,  <36.216877, 30.361481, 48.354286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589138, 30.456488, 48.025787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589321, 30.741699, 48.306240>,  <35.589432, 30.912827, 48.474514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589321, 30.741699, 48.306240>,  <35.589138, 30.456488, 48.025787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589321, 30.741699, 48.306240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335125, 0.660702, -0.671688,
		-0.942174, -0.234658, 0.239258,
		0.000461, 0.713028, 0.701136,
		35.589458, 30.955608, 48.516582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875252, 30.647406, 48.001419>,  <35.589138, 30.456488, 48.025787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875252, 30.647406, 48.001419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129234, 30.918457, 48.149826>,  <35.281624, 31.081089, 48.238869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129234, 30.918457, 48.149826>,  <34.875252, 30.647406, 48.001419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129234, 30.918457, 48.149826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316442, 0.666237, -0.675272,
		-0.704769, 0.311360, 0.637460,
		0.634952, 0.677630, 0.371016,
		35.319721, 31.121746, 48.261131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461948, 31.114216, 48.201012>,  <34.875252, 30.647406, 48.001419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461948, 31.114216, 48.201012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817867, 31.278421, 48.121277>,  <35.031418, 31.376945, 48.073437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817867, 31.278421, 48.121277>,  <34.461948, 31.114216, 48.201012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817867, 31.278421, 48.121277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433605, 0.624331, -0.649768,
		-0.142284, 0.664598, 0.733529,
		0.889799, 0.410513, -0.199340,
		35.084808, 31.401575, 48.061474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267342, 31.745810, 47.900181>,  <34.461948, 31.114216, 48.201012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267342, 31.745810, 47.900181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656689, 31.720882, 47.811928>,  <34.890297, 31.705925, 47.758976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656689, 31.720882, 47.811928>,  <34.267342, 31.745810, 47.900181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656689, 31.720882, 47.811928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191146, 0.310769, -0.931067,
		0.126589, 0.948440, 0.290579,
		0.973364, -0.062319, -0.220631,
		34.948700, 31.702187, 47.745739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435524, 32.371231, 47.574459>,  <34.267342, 31.745810, 47.900181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435524, 32.371231, 47.574459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735489, 32.136646, 47.452019>,  <34.915466, 31.995897, 47.378555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735489, 32.136646, 47.452019>,  <34.435524, 32.371231, 47.574459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735489, 32.136646, 47.452019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171367, 0.274709, -0.946133,
		0.638957, 0.761972, 0.105508,
		0.749911, -0.586458, -0.306105,
		34.960461, 31.960709, 47.360188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807117, 32.877094, 47.170925>,  <34.435524, 32.371231, 47.574459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807117, 32.877094, 47.170925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926640, 32.512203, 47.058811>,  <34.998352, 32.293270, 46.991543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926640, 32.512203, 47.058811>,  <34.807117, 32.877094, 47.170925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926640, 32.512203, 47.058811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014327, 0.297958, -0.954471,
		0.954206, 0.281186, 0.102102,
		0.298806, -0.912225, -0.280285,
		35.016281, 32.238537, 46.974728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229820, 33.043358, 46.663845>,  <34.807117, 32.877094, 47.170925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229820, 33.043358, 46.663845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142834, 32.656109, 46.614143>,  <35.090641, 32.423759, 46.584324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142834, 32.656109, 46.614143>,  <35.229820, 33.043358, 46.663845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142834, 32.656109, 46.614143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100211, 0.104483, -0.989465,
		0.970909, -0.227629, 0.074295,
		-0.217469, -0.968126, -0.124255,
		35.077595, 32.365669, 46.576866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745445, 32.854252, 46.237408>,  <35.229820, 33.043358, 46.663845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745445, 32.854252, 46.237408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433559, 32.608368, 46.189774>,  <35.246429, 32.460838, 46.161194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433559, 32.608368, 46.189774>,  <35.745445, 32.854252, 46.237408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433559, 32.608368, 46.189774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021608, 0.216492, -0.976045,
		0.625765, -0.758461, -0.182084,
		-0.779712, -0.614709, -0.119084,
		35.199646, 32.423954, 46.154049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853218, 32.366375, 45.652477>,  <35.745445, 32.854252, 46.237408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853218, 32.366375, 45.652477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457581, 32.401005, 45.700138>,  <35.220200, 32.421783, 45.728737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457581, 32.401005, 45.700138>,  <35.853218, 32.366375, 45.652477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457581, 32.401005, 45.700138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099081, 0.207475, -0.973210,
		-0.108979, -0.974402, -0.196634,
		-0.989094, 0.086577, 0.119155,
		35.160851, 32.426979, 45.735886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692947, 32.113583, 44.982483>,  <35.853218, 32.366375, 45.652477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692947, 32.113583, 44.982483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349697, 32.257336, 45.129166>,  <35.143749, 32.343590, 45.217175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349697, 32.257336, 45.129166>,  <35.692947, 32.113583, 44.982483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349697, 32.257336, 45.129166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213003, 0.400668, -0.891120,
		-0.467182, -0.842798, -0.267271,
		-0.858121, 0.359385, 0.366703,
		35.092262, 32.365150, 45.239178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202240, 32.000450, 44.492626>,  <35.692947, 32.113583, 44.982483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202240, 32.000450, 44.492626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054523, 32.304283, 44.706787>,  <34.965893, 32.486584, 44.835285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054523, 32.304283, 44.706787>,  <35.202240, 32.000450, 44.492626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054523, 32.304283, 44.706787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260146, 0.468600, -0.844238,
		-0.892159, -0.451054, 0.024552,
		-0.369291, 0.759582, 0.535406,
		34.943737, 32.532158, 44.867409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510372, 31.983572, 44.227623>,  <35.202240, 32.000450, 44.492626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510372, 31.983572, 44.227623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615257, 32.347656, 44.355846>,  <34.678188, 32.566109, 44.432781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615257, 32.347656, 44.355846>,  <34.510372, 31.983572, 44.227623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615257, 32.347656, 44.355846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046214, 0.343643, -0.937962,
		-0.963902, 0.231133, 0.132173,
		0.262214, 0.910213, 0.320557,
		34.693920, 32.620720, 44.452015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820248, 32.003777, 44.073765>,  <34.510372, 31.983572, 44.227623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820248, 32.003777, 44.073765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583977, 31.717720, 43.924271>,  <33.442215, 31.546087, 43.834572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583977, 31.717720, 43.924271>,  <33.820248, 32.003777, 44.073765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583977, 31.717720, 43.924271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151757, -0.356453, 0.921906,
		-0.792511, 0.601263, 0.102020,
		-0.590674, -0.715139, -0.373739,
		33.406776, 31.503178, 43.812149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341228, 32.092979, 44.589588>,  <33.820248, 32.003777, 44.073765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341228, 32.092979, 44.589588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324726, 31.740892, 44.400482>,  <33.314823, 31.529640, 44.287018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324726, 31.740892, 44.400482>,  <33.341228, 32.092979, 44.589588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324726, 31.740892, 44.400482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076383, -0.469009, 0.879884,
		-0.996225, 0.072412, -0.047884,
		-0.041256, -0.880220, -0.472769,
		33.312347, 31.476826, 44.258652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820133, 31.722054, 44.846851>,  <33.341228, 32.092979, 44.589588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820133, 31.722054, 44.846851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030956, 31.417885, 44.695076>,  <33.157452, 31.235384, 44.604012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030956, 31.417885, 44.695076>,  <32.820133, 31.722054, 44.846851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030956, 31.417885, 44.695076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113023, -0.505239, 0.855546,
		-0.842280, -0.408038, -0.352235,
		0.527058, -0.760420, -0.379435,
		33.189075, 31.189758, 44.581245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540138, 31.224108, 45.172234>,  <32.820133, 31.722054, 44.846851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540138, 31.224108, 45.172234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848358, 31.038797, 44.997135>,  <33.033291, 30.927610, 44.892075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848358, 31.038797, 44.997135>,  <32.540138, 31.224108, 45.172234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848358, 31.038797, 44.997135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000732, -0.687442, 0.726239,
		-0.637374, -0.559286, -0.530050,
		0.770554, -0.463274, -0.437748,
		33.079525, 30.899815, 44.865810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322567, 30.483330, 45.222820>,  <32.540138, 31.224108, 45.172234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322567, 30.483330, 45.222820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719723, 30.491320, 45.175880>,  <32.958015, 30.496113, 45.147717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719723, 30.491320, 45.175880>,  <32.322567, 30.483330, 45.222820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719723, 30.491320, 45.175880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106399, -0.590999, 0.799625,
		-0.053383, -0.806425, -0.588922,
		0.992890, 0.019974, -0.117352,
		33.017590, 30.497313, 45.140675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520187, 29.722698, 45.245037>,  <32.322567, 30.483330, 45.222820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520187, 29.722698, 45.245037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822083, 29.970514, 45.331326>,  <33.003220, 30.119204, 45.383099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822083, 29.970514, 45.331326>,  <32.520187, 29.722698, 45.245037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822083, 29.970514, 45.331326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303952, -0.621649, 0.721918,
		0.581360, -0.479293, -0.657495,
		0.754741, 0.619541, 0.215720,
		33.048504, 30.156376, 45.396042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049622, 29.248461, 45.404972>,  <32.520187, 29.722698, 45.245037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049622, 29.248461, 45.404972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173969, 29.594313, 45.562847>,  <33.248577, 29.801823, 45.657574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173969, 29.594313, 45.562847>,  <33.049622, 29.248461, 45.404972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173969, 29.594313, 45.562847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450265, -0.499681, 0.739987,
		0.837033, -0.052321, -0.544645,
		0.310865, 0.864628, 0.394691,
		33.267227, 29.853701, 45.681255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638344, 28.823555, 45.032299>,  <33.049622, 29.248461, 45.404972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638344, 28.823555, 45.032299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619606, 28.447493, 44.897293>,  <33.608364, 28.221855, 44.816288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619606, 28.447493, 44.897293>,  <33.638344, 28.823555, 45.032299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619606, 28.447493, 44.897293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050857, 0.335202, -0.940773,
		0.997607, -0.061232, 0.032112,
		-0.046842, -0.940154, -0.337514,
		33.605553, 28.165447, 44.796040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098759, 28.819500, 44.546249>,  <33.638344, 28.823555, 45.032299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098759, 28.819500, 44.546249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854527, 28.516853, 44.452675>,  <33.707989, 28.335266, 44.396530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854527, 28.516853, 44.452675>,  <34.098759, 28.819500, 44.546249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854527, 28.516853, 44.452675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016587, 0.283105, -0.958945,
		0.791783, -0.589391, -0.160308,
		-0.610578, -0.756617, -0.233934,
		33.671352, 28.289867, 44.382496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430988, 28.399092, 44.071957>,  <34.098759, 28.819500, 44.546249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430988, 28.399092, 44.071957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036175, 28.359430, 44.021461>,  <33.799286, 28.335634, 43.991165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036175, 28.359430, 44.021461>,  <34.430988, 28.399092, 44.071957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036175, 28.359430, 44.021461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103989, 0.204093, -0.973413,
		0.122276, -0.973918, -0.191136,
		-0.987033, -0.099149, -0.126233,
		33.740067, 28.329685, 43.983593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452637, 28.114799, 43.428490>,  <34.430988, 28.399092, 44.071957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452637, 28.114799, 43.428490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067223, 28.190235, 43.504421>,  <33.835976, 28.235497, 43.549980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067223, 28.190235, 43.504421>,  <34.452637, 28.114799, 43.428490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067223, 28.190235, 43.504421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156735, 0.177208, -0.971613,
		-0.216876, -0.965935, -0.141187,
		-0.963534, 0.188590, 0.189828,
		33.778164, 28.246813, 43.561371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095963, 27.849985, 42.857201>,  <34.452637, 28.114799, 43.428490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095963, 27.849985, 42.857201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867962, 28.142214, 43.007595>,  <33.731163, 28.317551, 43.097832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867962, 28.142214, 43.007595>,  <34.095963, 27.849985, 42.857201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867962, 28.142214, 43.007595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163253, 0.347775, -0.923256,
		-0.805261, -0.587638, -0.078965,
		-0.570003, 0.730570, 0.375984,
		33.696960, 28.361385, 43.120392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575500, 27.939690, 42.342319>,  <34.095963, 27.849985, 42.857201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575500, 27.939690, 42.342319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565163, 28.266195, 42.573158>,  <33.558960, 28.462099, 42.711662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565163, 28.266195, 42.573158>,  <33.575500, 27.939690, 42.342319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565163, 28.266195, 42.573158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267186, 0.550648, -0.790822,
		-0.963298, -0.174632, 0.203862,
		-0.025846, 0.816266, 0.577097,
		33.557407, 28.511076, 42.746288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861217, 28.240246, 42.346390>,  <33.575500, 27.939690, 42.342319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861217, 28.240246, 42.346390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105267, 28.537415, 42.456532>,  <33.251698, 28.715715, 42.522617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105267, 28.537415, 42.456532>,  <32.861217, 28.240246, 42.346390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105267, 28.537415, 42.456532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408101, 0.592563, -0.694495,
		-0.679121, 0.311352, 0.664722,
		0.610121, 0.742920, 0.275358,
		33.288303, 28.760290, 42.539139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.504913, 26.571630, 46.195583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525951, 26.967295, 46.250420>,  <36.538574, 27.204693, 46.283321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525951, 26.967295, 46.250420>,  <36.504913, 26.571630, 46.195583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525951, 26.967295, 46.250420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057441, 0.134057, -0.989307,
		-0.996962, 0.059910, -0.049768,
		0.052598, 0.989161, 0.137092,
		36.541729, 27.264044, 46.291546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105442, 26.841501, 45.713711>,  <36.504913, 26.571630, 46.195583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105442, 26.841501, 45.713711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.335892, 27.152941, 45.813202>,  <36.474159, 27.339806, 45.872898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.335892, 27.152941, 45.813202>,  <36.105442, 26.841501, 45.713711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335892, 27.152941, 45.813202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083043, 0.246975, -0.965457,
		-0.813136, 0.576874, 0.077630,
		0.576120, 0.778601, 0.248729,
		36.508728, 27.386520, 45.887821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964577, 27.439978, 45.194897>,  <36.105442, 26.841501, 45.713711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964577, 27.439978, 45.194897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.323395, 27.528004, 45.348198>,  <36.538685, 27.580818, 45.440178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.323395, 27.528004, 45.348198>,  <35.964577, 27.439978, 45.194897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323395, 27.528004, 45.348198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324945, 0.259347, -0.909478,
		-0.299539, 0.940378, 0.161137,
		0.897043, 0.220064, 0.383256,
		36.592506, 27.594023, 45.463173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005203, 28.114866, 44.999126>,  <35.964577, 27.439978, 45.194897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005203, 28.114866, 44.999126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.378468, 27.997425, 45.082081>,  <36.602425, 27.926960, 45.131855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.378468, 27.997425, 45.082081>,  <36.005203, 28.114866, 44.999126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378468, 27.997425, 45.082081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289398, 0.271410, -0.917924,
		0.213217, 0.916588, 0.338237,
		0.933160, -0.293602, 0.207390,
		36.658417, 27.909344, 45.144299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407642, 28.637486, 44.781891>,  <36.005203, 28.114866, 44.999126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407642, 28.637486, 44.781891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647141, 28.317110, 44.781677>,  <36.790840, 28.124884, 44.781548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647141, 28.317110, 44.781677>,  <36.407642, 28.637486, 44.781891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647141, 28.317110, 44.781677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278127, 0.208544, -0.937633,
		0.751099, 0.561253, 0.347628,
		0.598745, -0.800940, -0.000538,
		36.826763, 28.076828, 44.781517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979019, 28.791988, 44.350800>,  <36.407642, 28.637486, 44.781891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979019, 28.791988, 44.350800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.996227, 28.392696, 44.367207>,  <37.006554, 28.153120, 44.377052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.996227, 28.392696, 44.367207>,  <36.979019, 28.791988, 44.350800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996227, 28.392696, 44.367207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227218, -0.030204, -0.973375,
		0.972893, 0.051200, 0.225517,
		0.043025, -0.998232, 0.041018,
		37.009136, 28.093227, 44.379513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565601, 28.618031, 44.080284>,  <36.979019, 28.791988, 44.350800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565601, 28.618031, 44.080284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.327709, 28.299000, 44.039955>,  <37.184975, 28.107582, 44.015759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.327709, 28.299000, 44.039955>,  <37.565601, 28.618031, 44.080284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327709, 28.299000, 44.039955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176226, -0.006973, -0.984325,
		0.784370, -0.603179, 0.144701,
		-0.594733, -0.797575, -0.100827,
		37.149288, 28.059727, 44.009708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934792, 28.132013, 43.696705>,  <37.565601, 28.618031, 44.080284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934792, 28.132013, 43.696705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.562214, 27.995642, 43.645821>,  <37.338669, 27.913818, 43.615292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.562214, 27.995642, 43.645821>,  <37.934792, 28.132013, 43.696705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562214, 27.995642, 43.645821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202070, -0.193871, -0.959990,
		0.302628, -0.919880, 0.249471,
		-0.931441, -0.340931, -0.127209,
		37.282780, 27.893362, 43.607658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013680, 27.549473, 43.211761>,  <37.934792, 28.132013, 43.696705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013680, 27.549473, 43.211761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.616909, 27.600090, 43.208649>,  <37.378845, 27.630461, 43.206783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.616909, 27.600090, 43.208649>,  <38.013680, 27.549473, 43.211761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616909, 27.600090, 43.208649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016723, -0.191423, -0.981365,
		-0.125670, -0.973317, 0.191995,
		-0.991931, 0.126539, -0.007779,
		37.319328, 27.638052, 43.206314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807800, 27.015633, 42.762856>,  <38.013680, 27.549473, 43.211761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807800, 27.015633, 42.762856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.521816, 27.294403, 42.785217>,  <37.350227, 27.461666, 42.798634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.521816, 27.294403, 42.785217>,  <37.807800, 27.015633, 42.762856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521816, 27.294403, 42.785217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111417, -0.034632, -0.993170,
		-0.690232, -0.716304, 0.102410,
		-0.714959, 0.696928, 0.055905,
		37.307327, 27.503481, 42.801991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294800, 26.713545, 42.380424>,  <37.807800, 27.015633, 42.762856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294800, 26.713545, 42.380424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.222019, 27.106667, 42.393036>,  <37.178352, 27.342539, 42.400604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.222019, 27.106667, 42.393036>,  <37.294800, 26.713545, 42.380424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222019, 27.106667, 42.393036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044597, 0.023782, -0.998722,
		-0.982296, -0.183123, 0.039502,
		-0.181950, 0.982802, 0.031528,
		37.167435, 27.401506, 42.402493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767773, 26.824154, 41.933807>,  <37.294800, 26.713545, 42.380424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767773, 26.824154, 41.933807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.942970, 27.182785, 41.960060>,  <37.048088, 27.397964, 41.975811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.942970, 27.182785, 41.960060>,  <36.767773, 26.824154, 41.933807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942970, 27.182785, 41.960060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032774, 0.057031, -0.997834,
		-0.898380, 0.439197, -0.004405,
		0.437995, 0.896579, 0.065630,
		37.074368, 27.451759, 41.979748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080395, 26.829796, 41.782707>,  <36.767773, 26.824154, 41.933807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080395, 26.829796, 41.782707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.829662, 26.535173, 41.681068>,  <35.679222, 26.358400, 41.620083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.829662, 26.535173, 41.681068>,  <36.080395, 26.829796, 41.782707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829662, 26.535173, 41.681068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196522, -0.166119, 0.966325,
		-0.753961, 0.655662, -0.040621,
		-0.626834, -0.736554, -0.254099,
		35.641613, 26.314207, 41.604839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446472, 26.952063, 42.212639>,  <36.080395, 26.829796, 41.782707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446472, 26.952063, 42.212639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428837, 26.569675, 42.096581>,  <35.418255, 26.340244, 42.026947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428837, 26.569675, 42.096581>,  <35.446472, 26.952063, 42.212639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428837, 26.569675, 42.096581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173090, -0.278727, 0.944643,
		-0.983919, 0.091867, -0.153180,
		-0.044086, -0.955967, -0.290146,
		35.415611, 26.282885, 42.009537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756626, 26.765715, 42.326435>,  <35.446472, 26.952063, 42.212639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756626, 26.765715, 42.326435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.995903, 26.445206, 42.330975>,  <35.139469, 26.252901, 42.333698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.995903, 26.445206, 42.330975>,  <34.756626, 26.765715, 42.326435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995903, 26.445206, 42.330975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291327, -0.204257, 0.934563,
		-0.746522, -0.562354, -0.355617,
		0.598192, -0.801272, 0.011346,
		35.175362, 26.204824, 42.334377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354832, 26.266216, 42.640244>,  <34.756626, 26.765715, 42.326435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354832, 26.266216, 42.640244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.723370, 26.112076, 42.660736>,  <34.944492, 26.019592, 42.673031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.723370, 26.112076, 42.660736>,  <34.354832, 26.266216, 42.640244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723370, 26.112076, 42.660736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222424, -0.414487, 0.882456,
		-0.318819, -0.824444, -0.467597,
		0.921348, -0.385348, 0.051230,
		34.999775, 25.996471, 42.676105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304543, 25.526327, 42.817852>,  <34.354832, 26.266216, 42.640244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304543, 25.526327, 42.817852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.671345, 25.651487, 42.916801>,  <34.891426, 25.726583, 42.976170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.671345, 25.651487, 42.916801>,  <34.304543, 25.526327, 42.817852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671345, 25.651487, 42.916801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008956, -0.603867, 0.797035,
		0.398772, -0.733102, -0.550947,
		0.917007, 0.312901, 0.247371,
		34.946445, 25.745358, 42.991013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491161, 25.013525, 43.153187>,  <34.304543, 25.526327, 42.817852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491161, 25.013525, 43.153187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.755150, 25.285049, 43.281971>,  <34.913544, 25.447964, 43.359241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.755150, 25.285049, 43.281971>,  <34.491161, 25.013525, 43.153187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755150, 25.285049, 43.281971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008235, -0.435048, 0.900369,
		0.751247, -0.591565, -0.292709,
		0.659969, 0.678811, 0.321957,
		34.953140, 25.488693, 43.378559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846088, 24.640194, 43.693630>,  <34.491161, 25.013525, 43.153187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846088, 24.640194, 43.693630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.942303, 25.022964, 43.758671>,  <35.000031, 25.252626, 43.797695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.942303, 25.022964, 43.758671>,  <34.846088, 24.640194, 43.693630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942303, 25.022964, 43.758671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122420, -0.196088, 0.972915,
		0.962890, -0.214114, -0.164312,
		0.240534, 0.956925, 0.162599,
		35.014462, 25.310041, 43.807449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384560, 24.573366, 44.143517>,  <34.846088, 24.640194, 43.693630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384560, 24.573366, 44.143517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.282951, 24.957066, 44.193012>,  <35.221985, 25.187286, 44.222710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.282951, 24.957066, 44.193012>,  <35.384560, 24.573366, 44.143517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282951, 24.957066, 44.193012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305723, -0.041739, 0.951205,
		0.917608, 0.279458, -0.282662,
		-0.254024, 0.959250, 0.123737,
		35.206745, 25.244841, 44.230133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944405, 24.904783, 44.476593>,  <35.384560, 24.573366, 44.143517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944405, 24.904783, 44.476593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615120, 25.118069, 44.554577>,  <35.417549, 25.246040, 44.601368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615120, 25.118069, 44.554577>,  <35.944405, 24.904783, 44.476593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615120, 25.118069, 44.554577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228373, -0.003399, 0.973568,
		0.519784, 0.845972, -0.118974,
		-0.823207, 0.533216, 0.194964,
		35.368156, 25.278034, 44.613068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173512, 25.377529, 44.953255>,  <35.944405, 24.904783, 44.476593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173512, 25.377529, 44.953255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.778549, 25.348001, 45.009216>,  <35.541573, 25.330286, 45.042793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.778549, 25.348001, 45.009216>,  <36.173512, 25.377529, 44.953255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778549, 25.348001, 45.009216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137098, 0.041836, 0.989674,
		-0.078908, 0.996394, -0.031189,
		-0.987410, -0.073817, 0.139905,
		35.482327, 25.325857, 45.051189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002983, 25.908228, 45.487747>,  <36.173512, 25.377529, 44.953255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002983, 25.908228, 45.487747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689728, 25.659630, 45.496082>,  <35.501774, 25.510471, 45.501083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689728, 25.659630, 45.496082>,  <36.002983, 25.908228, 45.487747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689728, 25.659630, 45.496082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003476, 0.029133, 0.999569,
		-0.621836, 0.782875, -0.020655,
		-0.783140, -0.621496, 0.020837,
		35.454784, 25.473181, 45.502335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551468, 26.141504, 46.086559>,  <36.002983, 25.908228, 45.487747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551468, 26.141504, 46.086559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.434521, 25.770535, 45.993263>,  <35.364353, 25.547953, 45.937286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.434521, 25.770535, 45.993263>,  <35.551468, 26.141504, 46.086559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434521, 25.770535, 45.993263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133448, -0.201939, 0.970264,
		-0.946948, 0.314802, -0.064721,
		-0.292371, -0.927427, -0.233236,
		35.346809, 25.492306, 45.923294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932697, 25.966047, 46.496994>,  <35.551468, 26.141504, 46.086559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932697, 25.966047, 46.496994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.122459, 25.627666, 46.399582>,  <35.236317, 25.424639, 46.341137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.122459, 25.627666, 46.399582>,  <34.932697, 25.966047, 46.496994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122459, 25.627666, 46.399582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073891, -0.237397, 0.968599,
		-0.877200, -0.477503, -0.050114,
		0.474406, -0.845951, -0.243527,
		35.264782, 25.373880, 46.326523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629608, 25.439377, 46.795876>,  <34.932697, 25.966047, 46.496994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629608, 25.439377, 46.795876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.987755, 25.282879, 46.710789>,  <35.202644, 25.188980, 46.659737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.987755, 25.282879, 46.710789>,  <34.629608, 25.439377, 46.795876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987755, 25.282879, 46.710789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043248, -0.399004, 0.915929,
		-0.443226, -0.829291, -0.340334,
		0.895366, -0.391245, -0.212714,
		35.256367, 25.165506, 46.646976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178589, 25.886755, 46.500645>,  <34.629608, 25.439377, 46.795876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178589, 25.886755, 46.500645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804550, 25.952059, 46.626465>,  <33.580128, 25.991241, 46.701958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804550, 25.952059, 46.626465>,  <34.178589, 25.886755, 46.500645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804550, 25.952059, 46.626465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169202, 0.574201, -0.801039,
		-0.311390, -0.802272, -0.509310,
		-0.935097, 0.163259, 0.314546,
		33.524021, 26.001036, 46.720829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778210, 25.827866, 45.939964>,  <34.178589, 25.886755, 46.500645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778210, 25.827866, 45.939964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.583023, 26.072374, 46.189198>,  <33.465912, 26.219080, 46.338737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.583023, 26.072374, 46.189198>,  <33.778210, 25.827866, 45.939964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583023, 26.072374, 46.189198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055835, 0.690518, -0.721157,
		-0.871075, -0.386689, -0.302819,
		-0.487965, 0.611274, 0.623084,
		33.436634, 26.255756, 46.376122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087528, 26.002737, 45.667007>,  <33.778210, 25.827866, 45.939964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087528, 26.002737, 45.667007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.194588, 26.304615, 45.906609>,  <33.258823, 26.485743, 46.050369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.194588, 26.304615, 45.906609>,  <33.087528, 26.002737, 45.667007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194588, 26.304615, 45.906609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238962, 0.654251, -0.717533,
		-0.933415, 0.048907, 0.355451,
		0.267646, 0.754695, 0.599000,
		33.274883, 26.531023, 46.086308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562893, 26.578819, 45.499691>,  <33.087528, 26.002737, 45.667007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562893, 26.578819, 45.499691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.861435, 26.766649, 45.688351>,  <33.040558, 26.879347, 45.801548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.861435, 26.766649, 45.688351>,  <32.562893, 26.578819, 45.499691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861435, 26.766649, 45.688351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007630, 0.702583, -0.711561,
		-0.665506, 0.534674, 0.520792,
		0.746353, 0.469575, 0.471653,
		33.085342, 26.907522, 45.829845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430187, 27.329376, 45.420235>,  <32.562893, 26.578819, 45.499691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430187, 27.329376, 45.420235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804382, 27.316549, 45.560997>,  <33.028900, 27.308853, 45.645454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804382, 27.316549, 45.560997>,  <32.430187, 27.329376, 45.420235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804382, 27.316549, 45.560997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238194, 0.792835, -0.560961,
		-0.261013, 0.608592, 0.749325,
		0.935487, -0.032066, 0.351903,
		33.085030, 27.306929, 45.666569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674637, 28.053236, 45.636826>,  <32.430187, 27.329376, 45.420235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674637, 28.053236, 45.636826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985432, 27.819944, 45.542057>,  <33.171909, 27.679970, 45.485195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985432, 27.819944, 45.542057>,  <32.674637, 28.053236, 45.636826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985432, 27.819944, 45.542057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355398, 0.717047, -0.599614,
		0.519598, 0.381690, 0.764415,
		0.776988, -0.583229, -0.236924,
		33.218529, 27.644976, 45.470982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277382, 28.497484, 45.614098>,  <32.674637, 28.053236, 45.636826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277382, 28.497484, 45.614098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312820, 28.168587, 45.389217>,  <33.334084, 27.971249, 45.254292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312820, 28.168587, 45.389217>,  <33.277382, 28.497484, 45.614098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312820, 28.168587, 45.389217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383139, 0.549124, -0.742743,
		0.919432, -0.149594, 0.363685,
		0.088598, -0.822244, -0.562197,
		33.339401, 27.921913, 45.220558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698467, 29.136953, 45.717823>,  <33.277382, 28.497484, 45.614098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698467, 29.136953, 45.717823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566936, 29.467686, 45.900349>,  <33.488018, 29.666124, 46.009865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566936, 29.467686, 45.900349>,  <33.698467, 29.136953, 45.717823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566936, 29.467686, 45.900349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316652, -0.358686, 0.878109,
		0.889721, 0.433240, -0.143872,
		-0.328828, 0.826830, 0.456317,
		33.468288, 29.715734, 46.037243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156113, 29.165165, 46.189610>,  <33.698467, 29.136953, 45.717823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156113, 29.165165, 46.189610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.862358, 29.416613, 46.291988>,  <33.686104, 29.567482, 46.353416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.862358, 29.416613, 46.291988>,  <34.156113, 29.165165, 46.189610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862358, 29.416613, 46.291988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354046, 0.033063, 0.934643,
		0.579074, 0.777009, -0.246842,
		-0.734387, 0.628621, 0.255951,
		33.642040, 29.605200, 46.368774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467999, 29.713308, 46.547592>,  <34.156113, 29.165165, 46.189610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467999, 29.713308, 46.547592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.089066, 29.713503, 46.675694>,  <33.861706, 29.713619, 46.752556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.089066, 29.713503, 46.675694>,  <34.467999, 29.713308, 46.547592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089066, 29.713503, 46.675694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320107, 0.031699, 0.946851,
		-0.009690, 0.999497, -0.030185,
		-0.947332, 0.000488, 0.320253,
		33.804867, 29.713650, 46.771770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431976, 29.978682, 47.282398>,  <34.467999, 29.713308, 46.547592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431976, 29.978682, 47.282398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.086254, 29.777544, 47.277985>,  <33.878822, 29.656862, 47.275337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.086254, 29.777544, 47.277985>,  <34.431976, 29.978682, 47.282398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086254, 29.777544, 47.277985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016545, -0.050357, 0.998594,
		-0.502693, 0.862909, 0.051844,
		-0.864307, -0.502844, -0.011037,
		33.826962, 29.626690, 47.274673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046482, 30.291668, 47.831135>,  <34.431976, 29.978682, 47.282398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046482, 30.291668, 47.831135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.926975, 29.917383, 47.756111>,  <33.855270, 29.692812, 47.711098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.926975, 29.917383, 47.756111>,  <34.046482, 30.291668, 47.831135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926975, 29.917383, 47.756111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077836, -0.171992, 0.982018,
		-0.951147, 0.307992, -0.021447,
		-0.298766, -0.935713, -0.187562,
		33.837345, 29.636669, 47.699844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620270, 30.245024, 48.351219>,  <34.046482, 30.291668, 47.831135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620270, 30.245024, 48.351219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.721989, 29.880804, 48.220844>,  <33.783020, 29.662273, 48.142620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.721989, 29.880804, 48.220844>,  <33.620270, 30.245024, 48.351219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721989, 29.880804, 48.220844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246489, -0.264868, 0.932249,
		-0.935188, -0.317408, 0.157085,
		0.254297, -0.910548, -0.325939,
		33.798279, 29.607639, 48.123062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256786, 29.689268, 48.767326>,  <33.620270, 30.245024, 48.351219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256786, 29.689268, 48.767326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.572166, 29.497347, 48.613369>,  <33.761395, 29.382195, 48.520996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.572166, 29.497347, 48.613369>,  <33.256786, 29.689268, 48.767326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572166, 29.497347, 48.613369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170995, -0.430095, 0.886441,
		-0.590856, -0.764727, -0.257064,
		0.788448, -0.479803, -0.384889,
		33.808701, 29.353407, 48.497902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311172, 28.977177, 49.070362>,  <33.256786, 29.689268, 48.767326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311172, 28.977177, 49.070362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672878, 29.058622, 48.920238>,  <33.889900, 29.107489, 48.830166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.672878, 29.058622, 48.920238>,  <33.311172, 28.977177, 49.070362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672878, 29.058622, 48.920238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417884, -0.241553, 0.875800,
		0.087668, -0.948786, -0.303513,
		0.904260, 0.203613, -0.375306,
		33.944157, 29.119705, 48.807648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675522, 28.320328, 49.166954>,  <33.311172, 28.977177, 49.070362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675522, 28.320328, 49.166954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.974140, 28.580257, 49.109821>,  <34.153309, 28.736216, 49.075542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.974140, 28.580257, 49.109821>,  <33.675522, 28.320328, 49.166954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974140, 28.580257, 49.109821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312043, -0.152367, 0.937770,
		0.587623, -0.744656, -0.316522,
		0.746544, 0.649824, -0.142831,
		34.198105, 28.775206, 49.066971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.153393, 34.183567, 34.069988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422710, 34.185257, 34.365730>,  <36.584301, 34.186272, 34.543175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422710, 34.185257, 34.365730>,  <36.153393, 34.183567, 34.069988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422710, 34.185257, 34.365730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566988, -0.638861, 0.519982,
		0.474546, -0.769311, -0.427746,
		0.673297, 0.004229, 0.739359,
		36.624699, 34.186527, 34.587540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251617, 33.427979, 34.361908>,  <36.153393, 34.183567, 34.069988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251617, 33.427979, 34.361908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346619, 33.728477, 34.608234>,  <36.403618, 33.908775, 34.756031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346619, 33.728477, 34.608234>,  <36.251617, 33.427979, 34.361908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346619, 33.728477, 34.608234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641833, -0.354491, 0.679990,
		0.729138, -0.556748, 0.397981,
		0.237503, 0.751244, 0.615813,
		36.417870, 33.953850, 34.792980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454937, 33.149551, 35.052036>,  <36.251617, 33.427979, 34.361908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454937, 33.149551, 35.052036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339809, 33.522423, 35.139862>,  <36.270733, 33.746143, 35.192558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339809, 33.522423, 35.139862>,  <36.454937, 33.149551, 35.052036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339809, 33.522423, 35.139862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575619, -0.351616, 0.738261,
		0.765392, 0.086100, 0.637779,
		-0.287818, 0.932177, 0.219563,
		36.253464, 33.802074, 35.205730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247383, 33.129402, 35.671791>,  <36.454937, 33.149551, 35.052036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247383, 33.129402, 35.671791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108021, 33.500038, 35.615166>,  <36.024403, 33.722420, 35.581188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108021, 33.500038, 35.615166>,  <36.247383, 33.129402, 35.671791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108021, 33.500038, 35.615166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587465, -0.098165, 0.803273,
		0.730410, 0.363031, 0.578542,
		-0.348405, 0.926592, -0.141567,
		36.003498, 33.778015, 35.572697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299461, 33.600307, 36.298252>,  <36.247383, 33.129402, 35.671791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299461, 33.600307, 36.298252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999557, 33.745476, 36.076931>,  <35.819614, 33.832577, 35.944138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999557, 33.745476, 36.076931>,  <36.299461, 33.600307, 36.298252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999557, 33.745476, 36.076931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633299, -0.151194, 0.758995,
		0.191798, 0.919473, 0.343196,
		-0.749764, 0.362919, -0.553302,
		35.774628, 33.854351, 35.910942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034855, 34.228676, 36.614445>,  <36.299461, 33.600307, 36.298252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034855, 34.228676, 36.614445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740582, 34.079334, 36.388390>,  <35.564018, 33.989731, 36.252758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740582, 34.079334, 36.388390>,  <36.034855, 34.228676, 36.614445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740582, 34.079334, 36.388390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626280, 0.057180, 0.777498,
		-0.257964, 0.925927, -0.275888,
		-0.735682, -0.373350, -0.565139,
		35.519878, 33.967331, 36.218849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547119, 34.589600, 36.802246>,  <36.034855, 34.228676, 36.614445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547119, 34.589600, 36.802246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336586, 34.290192, 36.640907>,  <35.210266, 34.110546, 36.544106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336586, 34.290192, 36.640907>,  <35.547119, 34.589600, 36.802246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336586, 34.290192, 36.640907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672548, 0.076253, 0.736115,
		-0.520243, 0.658709, -0.543552,
		-0.526333, -0.748524, -0.403344,
		35.178688, 34.065636, 36.519905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832363, 34.780758, 36.889549>,  <35.547119, 34.589600, 36.802246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832363, 34.780758, 36.889549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823441, 34.384106, 36.838684>,  <34.818085, 34.146114, 36.808167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823441, 34.384106, 36.838684>,  <34.832363, 34.780758, 36.889549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823441, 34.384106, 36.838684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720860, -0.072175, 0.689312,
		-0.692721, 0.107043, -0.713217,
		-0.022310, -0.991631, -0.127161,
		34.816746, 34.086617, 36.800537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140156, 34.596680, 37.111652>,  <34.832363, 34.780758, 36.889549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140156, 34.596680, 37.111652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330280, 34.247402, 37.068535>,  <34.444355, 34.037838, 37.042664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330280, 34.247402, 37.068535>,  <34.140156, 34.596680, 37.111652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330280, 34.247402, 37.068535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559683, -0.394613, 0.728722,
		-0.678848, -0.286041, -0.676274,
		0.475310, -0.873190, -0.107790,
		34.472874, 33.985447, 37.036198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598343, 34.200008, 37.185883>,  <34.140156, 34.596680, 37.111652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598343, 34.200008, 37.185883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931278, 33.990906, 37.259571>,  <34.131039, 33.865444, 37.303783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931278, 33.990906, 37.259571>,  <33.598343, 34.200008, 37.185883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931278, 33.990906, 37.259571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430265, -0.399861, 0.809310,
		-0.349410, -0.752884, -0.557744,
		0.832337, -0.522759, 0.184224,
		34.180981, 33.834076, 37.314838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609711, 33.300301, 37.211800>,  <33.598343, 34.200008, 37.185883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609711, 33.300301, 37.211800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904461, 33.412144, 37.457996>,  <34.081310, 33.479248, 37.605717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904461, 33.412144, 37.457996>,  <33.609711, 33.300301, 37.211800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904461, 33.412144, 37.457996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547326, -0.287649, 0.785934,
		0.396801, -0.916012, -0.058924,
		0.736874, 0.279609, 0.615497,
		34.125523, 33.496025, 37.642647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825153, 32.623497, 37.513504>,  <33.609711, 33.300301, 37.211800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825153, 32.623497, 37.513504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967949, 32.927109, 37.731289>,  <34.053627, 33.109276, 37.861961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967949, 32.927109, 37.731289>,  <33.825153, 32.623497, 37.513504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967949, 32.927109, 37.731289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453039, -0.369047, 0.811517,
		0.816895, -0.536363, 0.212124,
		0.356984, 0.759025, 0.544466,
		34.075043, 33.154816, 37.894630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664146, 31.891474, 37.305660>,  <33.825153, 32.623497, 37.513504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664146, 31.891474, 37.305660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350975, 31.643337, 37.286869>,  <33.163074, 31.494455, 37.275593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350975, 31.643337, 37.286869>,  <33.664146, 31.891474, 37.305660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350975, 31.643337, 37.286869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299764, 0.442341, -0.845267,
		0.545134, -0.647698, -0.532275,
		-0.782925, -0.620340, -0.046979,
		33.116096, 31.457235, 37.272774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739258, 31.431461, 36.700844>,  <33.664146, 31.891474, 37.305660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739258, 31.431461, 36.700844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350830, 31.384085, 36.783779>,  <33.117771, 31.355659, 36.833542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350830, 31.384085, 36.783779>,  <33.739258, 31.431461, 36.700844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350830, 31.384085, 36.783779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231187, 0.249027, -0.940499,
		0.059761, -0.961227, -0.269206,
		-0.971072, -0.118442, 0.207341,
		33.059509, 31.348553, 36.845982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530857, 30.942392, 36.209835>,  <33.739258, 31.431461, 36.700844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530857, 30.942392, 36.209835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221451, 31.162786, 36.335114>,  <33.035809, 31.295023, 36.410282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221451, 31.162786, 36.335114>,  <33.530857, 30.942392, 36.209835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221451, 31.162786, 36.335114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156859, 0.312367, -0.936922,
		-0.614061, -0.773850, -0.155194,
		-0.773515, 0.550983, 0.313198,
		32.989395, 31.328081, 36.429073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013046, 30.893915, 35.700207>,  <33.530857, 30.942392, 36.209835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013046, 30.893915, 35.700207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895340, 31.222397, 35.895767>,  <32.824715, 31.419487, 36.013103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895340, 31.222397, 35.895767>,  <33.013046, 30.893915, 35.700207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895340, 31.222397, 35.895767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305869, 0.403728, -0.862234,
		-0.905457, -0.403266, 0.132379,
		-0.294265, 0.821206, 0.488905,
		32.807060, 31.468760, 36.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358040, 31.089861, 35.241047>,  <33.013046, 30.893915, 35.700207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358040, 31.089861, 35.241047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443050, 31.410589, 35.464443>,  <32.494057, 31.603027, 35.598480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443050, 31.410589, 35.464443>,  <32.358040, 31.089861, 35.241047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443050, 31.410589, 35.464443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389027, 0.593731, -0.704373,
		-0.896376, -0.067572, 0.438113,
		0.212525, 0.801822, 0.558493,
		32.506809, 31.651136, 35.631992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753901, 31.444550, 35.403473>,  <32.358040, 31.089861, 35.241047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753901, 31.444550, 35.403473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081337, 31.670330, 35.360935>,  <32.277798, 31.805798, 35.335411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081337, 31.670330, 35.360935>,  <31.753901, 31.444550, 35.403473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081337, 31.670330, 35.360935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435268, 0.488800, -0.756053,
		-0.374772, 0.665185, 0.645813,
		0.818589, 0.564449, -0.106346,
		32.326912, 31.839664, 35.329033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519291, 32.016396, 35.136421>,  <31.753901, 31.444550, 35.403473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519291, 32.016396, 35.136421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907806, 32.091190, 35.077587>,  <32.140915, 32.136066, 35.042286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907806, 32.091190, 35.077587>,  <31.519291, 32.016396, 35.136421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907806, 32.091190, 35.077587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216623, 0.439511, -0.871725,
		-0.098356, 0.878559, 0.467398,
		0.971288, 0.186988, -0.147088,
		32.199192, 32.147285, 35.033463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503681, 32.684242, 34.726452>,  <31.519291, 32.016396, 35.136421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503681, 32.684242, 34.726452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864719, 32.517521, 34.683365>,  <32.081341, 32.417488, 34.657513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864719, 32.517521, 34.683365>,  <31.503681, 32.684242, 34.726452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864719, 32.517521, 34.683365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009588, 0.230695, -0.972979,
		0.430388, 0.879237, 0.204228,
		0.902593, -0.416800, -0.107718,
		32.135498, 32.392483, 34.651051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961584, 33.305275, 34.598305>,  <31.503681, 32.684242, 34.726452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961584, 33.305275, 34.598305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068329, 32.949711, 34.449371>,  <32.132378, 32.736374, 34.360012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068329, 32.949711, 34.449371>,  <31.961584, 33.305275, 34.598305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068329, 32.949711, 34.449371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094198, 0.408550, -0.907862,
		0.959120, 0.207202, 0.192760,
		0.266863, -0.888906, -0.372330,
		32.148388, 32.683041, 34.337673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391323, 33.501038, 34.158466>,  <31.961584, 33.305275, 34.598305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391323, 33.501038, 34.158466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355568, 33.127441, 34.020088>,  <32.334114, 32.903286, 33.937061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355568, 33.127441, 34.020088>,  <32.391323, 33.501038, 34.158466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355568, 33.127441, 34.020088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036691, 0.344008, -0.938250,
		0.995321, -0.096557, 0.003521,
		-0.089384, -0.933989, -0.345942,
		32.328754, 32.847244, 33.916306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589897, 33.520733, 33.507915>,  <32.391323, 33.501038, 34.158466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589897, 33.520733, 33.507915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450321, 33.146183, 33.492737>,  <32.366573, 32.921452, 33.483627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450321, 33.146183, 33.492737>,  <32.589897, 33.520733, 33.507915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450321, 33.146183, 33.492737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025479, 0.049958, -0.998426,
		0.936797, -0.347428, -0.041290,
		-0.348944, -0.936375, -0.037949,
		32.345638, 32.865269, 33.481354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913246, 33.248535, 32.956387>,  <32.589897, 33.520733, 33.507915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913246, 33.248535, 32.956387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570599, 33.049442, 33.010735>,  <32.365009, 32.929989, 33.043343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570599, 33.049442, 33.010735>,  <32.913246, 33.248535, 32.956387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570599, 33.049442, 33.010735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201014, 0.079421, -0.976363,
		0.475174, -0.863688, -0.168085,
		-0.856623, -0.497730, 0.135875,
		32.313610, 32.900124, 33.051498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979176, 32.595066, 32.504246>,  <32.913246, 33.248535, 32.956387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979176, 32.595066, 32.504246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597008, 32.688931, 32.575924>,  <32.367706, 32.745251, 32.618931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597008, 32.688931, 32.575924>,  <32.979176, 32.595066, 32.504246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597008, 32.688931, 32.575924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183313, 0.004352, -0.983045,
		-0.231467, -0.972067, 0.038859,
		-0.955416, 0.234665, 0.179200,
		32.310383, 32.759331, 32.629684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581974, 32.104359, 32.013828>,  <32.979176, 32.595066, 32.504246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581974, 32.104359, 32.013828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297512, 32.365917, 32.117111>,  <32.126835, 32.522854, 32.179081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297512, 32.365917, 32.117111>,  <32.581974, 32.104359, 32.013828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297512, 32.365917, 32.117111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299297, 0.050736, -0.952810,
		-0.636143, -0.754878, 0.159629,
		-0.711156, 0.653900, 0.258208,
		32.084164, 32.562088, 32.194572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328037, 31.681660, 31.980028>,  <32.581974, 32.104359, 32.013828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328037, 31.681660, 31.980028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452156, 31.336472, 31.820530>,  <33.526627, 31.129358, 31.724831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452156, 31.336472, 31.820530>,  <33.328037, 31.681660, 31.980028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452156, 31.336472, 31.820530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322034, -0.490068, 0.810017,
		-0.894433, -0.122936, -0.429973,
		0.310296, -0.862971, -0.398744,
		33.545246, 31.077579, 31.700907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936584, 31.038328, 32.171371>,  <33.328037, 31.681660, 31.980028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936584, 31.038328, 32.171371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311089, 30.915913, 32.102379>,  <33.535793, 30.842463, 32.060982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311089, 30.915913, 32.102379>,  <32.936584, 31.038328, 32.171371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311089, 30.915913, 32.102379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003698, -0.482367, 0.875962,
		-0.351278, -0.820769, -0.450491,
		0.936264, -0.306040, -0.172480,
		33.591969, 30.824100, 32.050636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964428, 30.271942, 32.159901>,  <32.936584, 31.038328, 32.171371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964428, 30.271942, 32.159901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333447, 30.409891, 32.229153>,  <33.554855, 30.492661, 32.270706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333447, 30.409891, 32.229153>,  <32.964428, 30.271942, 32.159901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333447, 30.409891, 32.229153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060636, -0.572634, 0.817566,
		0.381099, -0.743742, -0.549192,
		0.922544, 0.344874, 0.173133,
		33.610210, 30.513353, 32.281094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443172, 29.758028, 32.237396>,  <32.964428, 30.271942, 32.159901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443172, 29.758028, 32.237396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624249, 30.041595, 32.453732>,  <33.732895, 30.211737, 32.583530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624249, 30.041595, 32.453732>,  <33.443172, 29.758028, 32.237396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624249, 30.041595, 32.453732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039272, -0.590105, 0.806371,
		0.890801, -0.386278, -0.239295,
		0.452693, 0.708919, 0.540836,
		33.760056, 30.254271, 32.615982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961578, 29.448803, 32.636143>,  <33.443172, 29.758028, 32.237396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961578, 29.448803, 32.636143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921421, 29.778519, 32.859024>,  <33.897327, 29.976347, 32.992752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921421, 29.778519, 32.859024>,  <33.961578, 29.448803, 32.636143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921421, 29.778519, 32.859024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201916, -0.531496, 0.822643,
		0.974244, 0.195098, -0.113076,
		-0.100396, 0.824287, 0.557200,
		33.891304, 30.025805, 33.026184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537300, 29.429155, 33.162247>,  <33.961578, 29.448803, 32.636143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537300, 29.429155, 33.162247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259106, 29.690685, 33.281456>,  <34.092190, 29.847603, 33.352982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259106, 29.690685, 33.281456>,  <34.537300, 29.429155, 33.162247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259106, 29.690685, 33.281456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089317, -0.332874, 0.938732,
		0.712968, 0.679492, 0.173111,
		-0.695485, 0.653824, 0.298018,
		34.050461, 29.886833, 33.370861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747498, 29.660055, 33.780590>,  <34.537300, 29.429155, 33.162247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747498, 29.660055, 33.780590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366947, 29.781286, 33.802593>,  <34.138618, 29.854025, 33.815796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366947, 29.781286, 33.802593>,  <34.747498, 29.660055, 33.780590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366947, 29.781286, 33.802593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027365, -0.261045, 0.964939,
		0.306814, 0.916514, 0.256646,
		-0.951376, 0.303080, 0.055012,
		34.081535, 29.872210, 33.819096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783710, 29.916451, 34.365734>,  <34.747498, 29.660055, 33.780590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783710, 29.916451, 34.365734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396122, 29.836166, 34.308029>,  <34.163570, 29.787996, 34.273407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396122, 29.836166, 34.308029>,  <34.783710, 29.916451, 34.365734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396122, 29.836166, 34.308029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077407, -0.307879, 0.948271,
		-0.234741, 0.930014, 0.282790,
		-0.968971, -0.200709, -0.144262,
		34.105431, 29.775953, 34.264751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405621, 30.263609, 34.829876>,  <34.783710, 29.916451, 34.365734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405621, 30.263609, 34.829876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176460, 29.955349, 34.718246>,  <34.038963, 29.770393, 34.651268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176460, 29.955349, 34.718246>,  <34.405621, 30.263609, 34.829876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176460, 29.955349, 34.718246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050398, -0.372969, 0.926474,
		-0.818071, 0.516716, 0.252515,
		-0.572904, -0.770648, -0.279074,
		34.004589, 29.724155, 34.634525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930294, 30.154404, 35.403240>,  <34.405621, 30.263609, 34.829876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930294, 30.154404, 35.403240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926991, 29.801563, 35.214848>,  <33.925007, 29.589859, 35.101810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926991, 29.801563, 35.214848>,  <33.930294, 30.154404, 35.403240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926991, 29.801563, 35.214848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053497, -0.470715, 0.880662,
		-0.998534, -0.017921, 0.051078,
		-0.008261, -0.882103, -0.470983,
		33.924511, 29.536932, 35.073551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541672, 29.725149, 35.810410>,  <33.930294, 30.154404, 35.403240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541672, 29.725149, 35.810410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747311, 29.477152, 35.573322>,  <33.870693, 29.328354, 35.431072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747311, 29.477152, 35.573322>,  <33.541672, 29.725149, 35.810410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747311, 29.477152, 35.573322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131783, -0.625728, 0.768829,
		-0.847547, -0.473364, -0.239982,
		0.514099, -0.619993, -0.592715,
		33.901539, 29.291155, 35.395508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285881, 29.141642, 35.920933>,  <33.541672, 29.725149, 35.810410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285881, 29.141642, 35.920933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651821, 29.063133, 35.779781>,  <33.871387, 29.016029, 35.695091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651821, 29.063133, 35.779781>,  <33.285881, 29.141642, 35.920933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651821, 29.063133, 35.779781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154456, -0.637353, 0.754934,
		-0.373077, -0.745157, -0.552769,
		0.914854, -0.196270, -0.352876,
		33.926277, 29.004251, 35.673920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362171, 28.467104, 35.955715>,  <33.285881, 29.141642, 35.920933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362171, 28.467104, 35.955715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751179, 28.560179, 35.958786>,  <33.984585, 28.616024, 35.960629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751179, 28.560179, 35.958786>,  <33.362171, 28.467104, 35.955715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751179, 28.560179, 35.958786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158151, -0.684491, 0.711660,
		0.170850, -0.690890, -0.702482,
		0.972522, 0.232685, 0.007681,
		34.042934, 28.629984, 35.961090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761814, 27.828526, 36.065231>,  <33.362171, 28.467104, 35.955715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761814, 27.828526, 36.065231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994671, 28.133579, 36.178013>,  <34.134384, 28.316610, 36.245682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994671, 28.133579, 36.178013>,  <33.761814, 27.828526, 36.065231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994671, 28.133579, 36.178013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290438, -0.518936, 0.803959,
		0.759443, -0.386129, -0.523594,
		0.582144, 0.762633, 0.281956,
		34.169315, 28.362370, 36.262600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506660, 27.578171, 36.314251>,  <33.761814, 27.828526, 36.065231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506660, 27.578171, 36.314251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457321, 27.942045, 36.472874>,  <34.427719, 28.160370, 36.568047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457321, 27.942045, 36.472874>,  <34.506660, 27.578171, 36.314251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457321, 27.942045, 36.472874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398073, -0.320695, 0.859472,
		0.909023, 0.263872, -0.322565,
		-0.123346, 0.909685, 0.396560,
		34.420319, 28.214951, 36.591843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162872, 27.655291, 36.700924>,  <34.506660, 27.578171, 36.314251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162872, 27.655291, 36.700924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882751, 27.902639, 36.843578>,  <34.714680, 28.051048, 36.929173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882751, 27.902639, 36.843578>,  <35.162872, 27.655291, 36.700924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882751, 27.902639, 36.843578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271491, -0.231340, 0.934224,
		0.660201, 0.751066, -0.005874,
		-0.700305, 0.618370, 0.356639,
		34.672661, 28.088150, 36.950569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504711, 28.069132, 37.208107>,  <35.162872, 27.655291, 36.700924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504711, 28.069132, 37.208107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112595, 28.070053, 37.287121>,  <34.877323, 28.070606, 37.334530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112595, 28.070053, 37.287121>,  <35.504711, 28.069132, 37.208107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112595, 28.070053, 37.287121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196255, -0.102968, 0.975132,
		0.022586, 0.994682, 0.100487,
		-0.980293, 0.002304, 0.197537,
		34.818508, 28.070744, 37.346382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436119, 28.443369, 37.771278>,  <35.504711, 28.069132, 37.208107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436119, 28.443369, 37.771278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071812, 28.278862, 37.756508>,  <34.853230, 28.180157, 37.747646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071812, 28.278862, 37.756508>,  <35.436119, 28.443369, 37.771278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071812, 28.278862, 37.756508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025163, -0.144534, 0.989180,
		-0.412156, 0.899982, 0.141986,
		-0.910766, -0.411269, -0.036925,
		34.798580, 28.155481, 37.745430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011700, 28.767517, 38.342346>,  <35.436119, 28.443369, 37.771278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011700, 28.767517, 38.342346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865170, 28.408789, 38.243141>,  <34.777252, 28.193550, 38.183617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865170, 28.408789, 38.243141>,  <35.011700, 28.767517, 38.342346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865170, 28.408789, 38.243141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073401, -0.293567, 0.953116,
		-0.927586, 0.330948, 0.173369,
		-0.366327, -0.896823, -0.248017,
		34.755272, 28.139742, 38.168736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780357, 28.521925, 38.956955>,  <35.011700, 28.767517, 38.342346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780357, 28.521925, 38.956955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740238, 28.188526, 38.739616>,  <34.716167, 27.988487, 38.609215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740238, 28.188526, 38.739616>,  <34.780357, 28.521925, 38.956955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740238, 28.188526, 38.739616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121794, -0.531710, 0.838124,
		-0.987475, 0.150236, -0.048187,
		-0.100295, -0.833495, -0.543348,
		34.710148, 27.938478, 38.576611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255051, 28.182413, 39.290150>,  <34.780357, 28.521925, 38.956955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255051, 28.182413, 39.290150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469257, 27.905298, 39.096958>,  <34.597782, 27.739029, 38.981045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469257, 27.905298, 39.096958>,  <34.255051, 28.182413, 39.290150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469257, 27.905298, 39.096958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074151, -0.531112, 0.844051,
		-0.841263, -0.487817, -0.233049,
		0.535517, -0.692788, -0.482977,
		34.629913, 27.697462, 38.952065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108986, 27.654676, 39.634979>,  <34.255051, 28.182413, 39.290150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108986, 27.654676, 39.634979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406528, 27.501488, 39.415886>,  <34.585052, 27.409575, 39.284431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406528, 27.501488, 39.415886>,  <34.108986, 27.654676, 39.634979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406528, 27.501488, 39.415886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238921, -0.613008, 0.753085,
		-0.624194, -0.691042, -0.364476,
		0.743841, -0.382990, -0.547741,
		34.629684, 27.386597, 39.251568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998116, 26.927780, 39.637978>,  <34.108986, 27.654676, 39.634979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998116, 26.927780, 39.637978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384720, 26.990564, 39.556774>,  <34.616684, 27.028234, 39.508053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384720, 26.990564, 39.556774>,  <33.998116, 26.927780, 39.637978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384720, 26.990564, 39.556774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253740, -0.702569, 0.664840,
		-0.038275, -0.694090, -0.718870,
		0.966515, 0.156959, -0.203009,
		34.674675, 27.037653, 39.495872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317757, 26.308941, 39.577652>,  <33.998116, 26.927780, 39.637978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317757, 26.308941, 39.577652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600960, 26.580778, 39.654469>,  <34.770882, 26.743879, 39.700558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600960, 26.580778, 39.654469>,  <34.317757, 26.308941, 39.577652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600960, 26.580778, 39.654469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309352, -0.542907, 0.780739,
		0.634842, -0.493363, -0.594616,
		0.708009, 0.679592, 0.192037,
		34.813362, 26.784657, 39.712078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020916, 25.977468, 39.634777>,  <34.317757, 26.308941, 39.577652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020916, 25.977468, 39.634777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027676, 26.313845, 39.851124>,  <35.031731, 26.515671, 39.980930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027676, 26.313845, 39.851124>,  <35.020916, 25.977468, 39.634777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027676, 26.313845, 39.851124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280362, -0.523225, 0.804756,
		0.959746, 0.138042, -0.244607,
		0.016894, 0.840940, 0.540865,
		35.032745, 26.566126, 40.013382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543655, 25.796474, 40.051517>,  <35.020916, 25.977468, 39.634777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543655, 25.796474, 40.051517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408939, 26.126974, 40.232128>,  <35.328110, 26.325274, 40.340496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408939, 26.126974, 40.232128>,  <35.543655, 25.796474, 40.051517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408939, 26.126974, 40.232128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309615, -0.355698, 0.881826,
		0.889218, 0.436794, -0.136023,
		-0.336793, 0.826250, 0.451531,
		35.307899, 26.374849, 40.367588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125420, 25.945253, 40.557663>,  <35.543655, 25.796474, 40.051517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125420, 25.945253, 40.557663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797939, 26.144701, 40.671581>,  <35.601452, 26.264370, 40.739933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797939, 26.144701, 40.671581>,  <36.125420, 25.945253, 40.557663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797939, 26.144701, 40.671581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264227, -0.113217, 0.957792,
		0.509818, 0.859395, -0.039058,
		-0.818700, 0.498620, 0.284795,
		35.552330, 26.294287, 40.757019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290325, 26.521627, 41.140221>,  <36.125420, 25.945253, 40.557663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290325, 26.521627, 41.140221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908627, 26.402031, 41.138428>,  <35.679607, 26.330273, 41.137352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908627, 26.402031, 41.138428>,  <36.290325, 26.521627, 41.140221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908627, 26.402031, 41.138428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006135, 0.004605, 0.999971,
		-0.298961, 0.954245, -0.006228,
		-0.954246, -0.298990, -0.004478,
		35.622353, 26.312334, 41.137085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614746, 27.174429, 41.185562>,  <36.290325, 26.521627, 41.140221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614746, 27.174429, 41.185562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915718, 27.379517, 41.350952>,  <37.096302, 27.502569, 41.450184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915718, 27.379517, 41.350952>,  <36.614746, 27.174429, 41.185562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915718, 27.379517, 41.350952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261514, 0.343594, -0.901972,
		-0.604527, 0.786804, 0.124448,
		0.752434, 0.512722, 0.413472,
		37.141449, 27.533333, 41.474995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610844, 27.816992, 40.895626>,  <36.614746, 27.174429, 41.185562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610844, 27.816992, 40.895626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976452, 27.751263, 41.043980>,  <37.195816, 27.711824, 41.132992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976452, 27.751263, 41.043980>,  <36.610844, 27.816992, 40.895626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976452, 27.751263, 41.043980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403118, 0.470137, -0.785154,
		-0.045349, 0.867162, 0.495958,
		0.914024, -0.164324, 0.370888,
		37.250660, 27.701965, 41.155247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998760, 28.552389, 40.918526>,  <36.610844, 27.816992, 40.895626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998760, 28.552389, 40.918526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272503, 28.261604, 40.895954>,  <37.436749, 28.087133, 40.882412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272503, 28.261604, 40.895954>,  <36.998760, 28.552389, 40.918526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272503, 28.261604, 40.895954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464435, 0.494253, -0.734856,
		0.562100, 0.476698, 0.675872,
		0.684356, -0.726962, -0.056425,
		37.477810, 28.043516, 40.879028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584133, 28.874056, 40.721249>,  <36.998760, 28.552389, 40.918526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584133, 28.874056, 40.721249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691727, 28.492441, 40.668385>,  <37.756283, 28.263474, 40.636665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691727, 28.492441, 40.668385>,  <37.584133, 28.874056, 40.721249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691727, 28.492441, 40.668385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498833, 0.255374, -0.828221,
		0.823902, 0.156851, 0.544595,
		0.268983, -0.954035, -0.132161,
		37.772423, 28.206230, 40.628735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307949, 28.896406, 40.486065>,  <37.584133, 28.874056, 40.721249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307949, 28.896406, 40.486065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144352, 28.557367, 40.350830>,  <38.046196, 28.353945, 40.269688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144352, 28.557367, 40.350830>,  <38.307949, 28.896406, 40.486065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144352, 28.557367, 40.350830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409541, 0.160598, -0.898045,
		0.815477, -0.505754, 0.281443,
		-0.408991, -0.847597, -0.338091,
		38.021656, 28.303087, 40.249401>
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
