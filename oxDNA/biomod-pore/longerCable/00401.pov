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
	<24.478598, 34.728928, 35.219120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384815, 34.787792, 34.834751>,  <24.328547, 34.823112, 34.604130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384815, 34.787792, 34.834751>,  <24.478598, 34.728928, 35.219120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384815, 34.787792, 34.834751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881572, 0.448786, -0.146363,
		0.409710, -0.881439, -0.234954,
		-0.234454, 0.147162, -0.960924,
		24.314480, 34.831940, 34.546474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.805901, 34.734211, 35.761509>,  <24.478598, 34.728928, 35.219120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.805901, 34.734211, 35.761509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200031, 34.780594, 35.811607>,  <25.436510, 34.808422, 35.841667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200031, 34.780594, 35.811607>,  <24.805901, 34.734211, 35.761509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200031, 34.780594, 35.811607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102046, -0.988424, 0.112272,
		0.136817, -0.097844, -0.985752,
		0.985326, 0.115953, 0.125248,
		25.495628, 34.815380, 35.849182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.004442, 34.215519, 35.278530>,  <24.805901, 34.734211, 35.761509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.004442, 34.215519, 35.278530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263508, 34.302479, 35.570633>,  <25.418947, 34.354656, 35.745895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263508, 34.302479, 35.570633>,  <25.004442, 34.215519, 35.278530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263508, 34.302479, 35.570633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126577, -0.975811, 0.178244,
		0.751340, -0.023008, -0.659514,
		0.647662, 0.217401, 0.730254,
		25.457806, 34.367699, 35.789707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718937, 34.050289, 35.059711>,  <25.004442, 34.215519, 35.278530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718937, 34.050289, 35.059711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659283, 34.022736, 35.454277>,  <25.623489, 34.006203, 35.691017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659283, 34.022736, 35.454277>,  <25.718937, 34.050289, 35.059711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659283, 34.022736, 35.454277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276015, -0.960819, -0.025364,
		0.949512, 0.268482, 0.162307,
		-0.149137, -0.068883, 0.986414,
		25.614542, 34.002071, 35.750202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284014, 33.692284, 35.328560>,  <25.718937, 34.050289, 35.059711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284014, 33.692284, 35.328560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027134, 33.656525, 35.633083>,  <25.873007, 33.635071, 35.815796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027134, 33.656525, 35.633083>,  <26.284014, 33.692284, 35.328560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027134, 33.656525, 35.633083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313407, -0.936992, 0.154345,
		0.699541, 0.337720, 0.629752,
		-0.642198, -0.089398, 0.761308,
		25.834475, 33.629704, 35.861477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512701, 33.561401, 35.894550>,  <26.284014, 33.692284, 35.328560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512701, 33.561401, 35.894550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148930, 33.395699, 35.879940>,  <25.930666, 33.296276, 35.871174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148930, 33.395699, 35.879940>,  <26.512701, 33.561401, 35.894550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148930, 33.395699, 35.879940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386755, -0.874793, 0.291819,
		-0.152843, 0.251260, 0.955776,
		-0.909428, -0.414253, -0.036530,
		25.876101, 33.271423, 35.868980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505922, 33.146427, 36.416805>,  <26.512701, 33.561401, 35.894550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505922, 33.146427, 36.416805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199867, 32.986423, 36.214989>,  <26.016233, 32.890423, 36.093899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199867, 32.986423, 36.214989>,  <26.505922, 33.146427, 36.416805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199867, 32.986423, 36.214989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393990, -0.910645, 0.124488,
		-0.509250, -0.103532, 0.854369,
		-0.765138, -0.400008, -0.504537,
		25.970325, 32.866421, 36.063629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395309, 32.572453, 36.760147>,  <26.505922, 33.146427, 36.416805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395309, 32.572453, 36.760147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219362, 32.518539, 36.404991>,  <26.113792, 32.486191, 36.191898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219362, 32.518539, 36.404991>,  <26.395309, 32.572453, 36.760147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219362, 32.518539, 36.404991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270082, -0.962758, 0.012351,
		-0.856487, -0.234370, 0.459893,
		-0.439871, -0.134788, -0.887889,
		26.087400, 32.478104, 36.138626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113213, 31.923801, 36.854832>,  <26.395309, 32.572453, 36.760147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113213, 31.923801, 36.854832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124260, 31.982815, 36.459362>,  <26.130888, 32.018223, 36.222080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124260, 31.982815, 36.459362>,  <26.113213, 31.923801, 36.854832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124260, 31.982815, 36.459362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402220, -0.907090, -0.124121,
		-0.915126, -0.394235, -0.084394,
		0.027620, 0.147531, -0.988672,
		26.132545, 32.027073, 36.162762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654442, 31.429327, 36.509647>,  <26.113213, 31.923801, 36.854832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654442, 31.429327, 36.509647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918869, 31.553240, 36.236290>,  <26.077526, 31.627588, 36.072277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918869, 31.553240, 36.236290>,  <25.654442, 31.429327, 36.509647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918869, 31.553240, 36.236290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337557, -0.936205, -0.097855,
		-0.670108, -0.165995, -0.723464,
		0.661067, 0.309784, -0.683391,
		26.117189, 31.646175, 36.031273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713238, 30.853815, 35.990536>,  <25.654442, 31.429327, 36.509647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713238, 30.853815, 35.990536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045971, 31.069040, 35.936062>,  <26.245611, 31.198175, 35.903378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045971, 31.069040, 35.936062>,  <25.713238, 30.853815, 35.990536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045971, 31.069040, 35.936062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553087, -0.824086, 0.122385,
		-0.046377, -0.177126, -0.983095,
		0.831832, 0.538061, -0.136184,
		26.295521, 31.230459, 35.895206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201988, 30.538290, 35.330544>,  <25.713238, 30.853815, 35.990536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201988, 30.538290, 35.330544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387220, 30.749544, 35.615257>,  <26.498360, 30.876297, 35.786083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387220, 30.749544, 35.615257>,  <26.201988, 30.538290, 35.330544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387220, 30.749544, 35.615257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655107, -0.744874, 0.126481,
		0.596986, 0.407723, -0.690919,
		0.463078, 0.528134, 0.711782,
		26.526144, 30.907984, 35.828793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897808, 30.445576, 35.267635>,  <26.201988, 30.538290, 35.330544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897808, 30.445576, 35.267635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835493, 30.549189, 35.648926>,  <26.798103, 30.611357, 35.877701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835493, 30.549189, 35.648926>,  <26.897808, 30.445576, 35.267635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835493, 30.549189, 35.648926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542400, -0.784074, 0.301713,
		0.825550, 0.564031, -0.018350,
		-0.155787, 0.259032, 0.953222,
		26.788757, 30.626898, 35.934891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559324, 30.655151, 35.594086>,  <26.897808, 30.445576, 35.267635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559324, 30.655151, 35.594086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284363, 30.486540, 35.830658>,  <27.119387, 30.385372, 35.972603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284363, 30.486540, 35.830658>,  <27.559324, 30.655151, 35.594086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284363, 30.486540, 35.830658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692742, -0.625134, 0.359606,
		0.218139, 0.656902, 0.721731,
		-0.687404, -0.421529, 0.591430,
		27.078142, 30.360081, 36.008087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799646, 30.858360, 36.225361>,  <27.559324, 30.655151, 35.594086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799646, 30.858360, 36.225361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587608, 30.519560, 36.241325>,  <27.460386, 30.316280, 36.250904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587608, 30.519560, 36.241325>,  <27.799646, 30.858360, 36.225361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587608, 30.519560, 36.241325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692984, -0.405620, 0.596024,
		-0.488644, 0.343606, 0.801974,
		-0.530094, -0.846999, 0.039910,
		27.428579, 30.265461, 36.253300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422691, 31.514620, 36.334618>,  <27.799646, 30.858360, 36.225361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422691, 31.514620, 36.334618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191820, 31.335194, 36.061661>,  <27.053297, 31.227537, 35.897888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191820, 31.335194, 36.061661>,  <27.422691, 31.514620, 36.334618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191820, 31.335194, 36.061661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462833, 0.868143, -0.179200,
		0.672794, 0.212401, -0.708685,
		-0.577177, -0.448567, -0.682388,
		27.018667, 31.200623, 35.856945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413719, 31.958559, 35.726135>,  <27.422691, 31.514620, 36.334618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413719, 31.958559, 35.726135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077564, 31.741957, 35.735229>,  <26.875872, 31.611996, 35.740685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077564, 31.741957, 35.735229>,  <27.413719, 31.958559, 35.726135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077564, 31.741957, 35.735229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531758, 0.815698, -0.227750,
		0.104783, -0.203488, -0.973454,
		-0.840389, -0.541506, 0.022735,
		26.825447, 31.579504, 35.742050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936668, 32.198627, 35.178745>,  <27.413719, 31.958559, 35.726135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936668, 32.198627, 35.178745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684052, 32.010780, 35.425522>,  <26.532480, 31.898073, 35.573589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684052, 32.010780, 35.425522>,  <26.936668, 32.198627, 35.178745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684052, 32.010780, 35.425522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677444, 0.721248, -0.144467,
		-0.377125, -0.509180, -0.773636,
		-0.631543, -0.469613, 0.616942,
		26.494589, 31.869896, 35.610603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274843, 32.285156, 34.881767>,  <26.936668, 32.198627, 35.178745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274843, 32.285156, 34.881767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226322, 32.193382, 35.268063>,  <26.197210, 32.138317, 35.499840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226322, 32.193382, 35.268063>,  <26.274843, 32.285156, 34.881767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226322, 32.193382, 35.268063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795422, 0.604479, 0.043702,
		-0.593793, -0.762866, -0.255823,
		-0.121301, -0.229437, 0.965735,
		26.189932, 32.124550, 35.557785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532242, 32.139648, 35.036430>,  <26.274843, 32.285156, 34.881767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532242, 32.139648, 35.036430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693756, 32.263340, 35.380833>,  <25.790665, 32.337555, 35.587475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693756, 32.263340, 35.380833>,  <25.532242, 32.139648, 35.036430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693756, 32.263340, 35.380833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589597, 0.807584, -0.013540,
		-0.699523, -0.502180, 0.508412,
		0.403785, 0.309230, 0.861008,
		25.814892, 32.356110, 35.639133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983030, 32.067123, 34.622108>,  <25.532242, 32.139648, 35.036430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.983030, 32.067123, 34.622108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810776, 31.805677, 34.871056>,  <24.707424, 31.648811, 35.020424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810776, 31.805677, 34.871056>,  <24.983030, 32.067123, 34.622108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810776, 31.805677, 34.871056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420931, -0.464543, -0.779113,
		0.798355, -0.597488, -0.075077,
		-0.430635, -0.653611, 0.622371,
		24.681585, 31.609594, 35.057766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954098, 32.479717, 35.264858>,  <24.983030, 32.067123, 34.622108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954098, 32.479717, 35.264858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259890, 32.575325, 35.504337>,  <25.443365, 32.632690, 35.648026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.259890, 32.575325, 35.504337>,  <24.954098, 32.479717, 35.264858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259890, 32.575325, 35.504337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367683, 0.924515, 0.100404,
		-0.529508, -0.296888, 0.794656,
		0.764481, 0.239017, 0.598699,
		25.489233, 32.647030, 35.683949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.649529, 32.820702, 35.859283>,  <24.954098, 32.479717, 35.264858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.649529, 32.820702, 35.859283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025835, 32.955868, 35.870388>,  <25.251619, 33.036968, 35.877052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025835, 32.955868, 35.870388>,  <24.649529, 32.820702, 35.859283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025835, 32.955868, 35.870388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338577, 0.931956, 0.129707,
		0.017958, -0.131424, 0.991164,
		0.940767, 0.337915, 0.027761,
		25.308065, 33.057243, 35.878716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722748, 33.219807, 36.448048>,  <24.649529, 32.820702, 35.859283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722748, 33.219807, 36.448048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986862, 33.324886, 36.166618>,  <25.145330, 33.387936, 35.997761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986862, 33.324886, 36.166618>,  <24.722748, 33.219807, 36.448048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986862, 33.324886, 36.166618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394024, 0.918711, -0.026751,
		0.639351, 0.294887, 0.710121,
		0.660284, 0.262701, -0.703571,
		25.184948, 33.403698, 35.955547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017891, 33.616985, 36.885586>,  <24.722748, 33.219807, 36.448048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017891, 33.616985, 36.885586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279177, 33.624382, 36.582806>,  <25.435947, 33.628822, 36.401138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279177, 33.624382, 36.582806>,  <25.017891, 33.616985, 36.885586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279177, 33.624382, 36.582806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029283, 0.999571, -0.000847,
		0.756606, 0.022719, 0.653477,
		0.653215, 0.018495, -0.756946,
		25.475142, 33.629932, 36.355721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545506, 34.016060, 37.038475>,  <25.017891, 33.616985, 36.885586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545506, 34.016060, 37.038475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544912, 34.017315, 36.638477>,  <25.544558, 34.018066, 36.398479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544912, 34.017315, 36.638477>,  <25.545506, 34.016060, 37.038475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544912, 34.017315, 36.638477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176796, 0.984244, 0.002822,
		-0.984244, 0.176786, 0.003374,
		-0.002822, 0.003374, -0.999990,
		25.544468, 34.018253, 36.338478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153727, 34.390911, 36.893795>,  <25.545506, 34.016060, 37.038475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153727, 34.390911, 36.893795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906925, 34.398235, 36.579098>,  <25.758844, 34.402630, 36.390278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906925, 34.398235, 36.579098>,  <26.153727, 34.390911, 36.893795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906925, 34.398235, 36.579098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258307, 0.949052, -0.180490,
		0.743360, -0.314586, -0.590299,
		-0.617004, 0.018309, -0.786747,
		25.721825, 34.403728, 36.343075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660999, 34.456429, 36.349350>,  <26.153727, 34.390911, 36.893795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660999, 34.456429, 36.349350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294241, 34.613750, 36.322170>,  <26.074186, 34.708141, 36.305862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294241, 34.613750, 36.322170>,  <26.660999, 34.456429, 36.349350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294241, 34.613750, 36.322170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397958, 0.913891, -0.080207,
		0.030551, -0.100581, -0.994460,
		-0.916895, 0.393303, -0.067947,
		26.019173, 34.731743, 36.301785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174429, 34.226295, 36.975197>,  <26.660999, 34.456429, 36.349350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174429, 34.226295, 36.975197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303591, 33.853909, 37.043354>,  <27.381088, 33.630478, 37.084248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303591, 33.853909, 37.043354>,  <27.174429, 34.226295, 36.975197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303591, 33.853909, 37.043354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220164, 0.101213, 0.970198,
		-0.920467, -0.350798, -0.172282,
		0.322906, -0.930965, 0.170396,
		27.400463, 33.574619, 37.094475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695766, 33.655239, 37.263702>,  <27.174429, 34.226295, 36.975197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695766, 33.655239, 37.263702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074871, 33.625664, 37.387821>,  <27.302334, 33.607918, 37.462292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074871, 33.625664, 37.387821>,  <26.695766, 33.655239, 37.263702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074871, 33.625664, 37.387821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298655, 0.136068, 0.944611,
		-0.112061, -0.987937, 0.106879,
		0.947759, -0.073934, 0.310300,
		27.359200, 33.603485, 37.480911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638319, 33.020123, 37.768177>,  <26.695766, 33.655239, 37.263702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638319, 33.020123, 37.768177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950441, 33.256123, 37.851143>,  <27.137714, 33.397724, 37.900925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950441, 33.256123, 37.851143>,  <26.638319, 33.020123, 37.768177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950441, 33.256123, 37.851143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160002, -0.132284, 0.978213,
		0.604586, -0.796491, -0.008820,
		0.780304, 0.590003, 0.207417,
		27.184532, 33.433125, 37.913368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101980, 32.728943, 38.216537>,  <26.638319, 33.020123, 37.768177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101980, 32.728943, 38.216537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171434, 33.118446, 38.275379>,  <27.213106, 33.352150, 38.310684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171434, 33.118446, 38.275379>,  <27.101980, 32.728943, 38.216537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171434, 33.118446, 38.275379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138474, -0.123753, 0.982604,
		0.975026, -0.190985, 0.113352,
		0.173635, 0.973761, 0.147109,
		27.223524, 33.410576, 38.319511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536816, 32.797287, 38.773483>,  <27.101980, 32.728943, 38.216537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536816, 32.797287, 38.773483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378269, 33.164150, 38.756954>,  <27.283142, 33.384270, 38.747036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378269, 33.164150, 38.756954>,  <27.536816, 32.797287, 38.773483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378269, 33.164150, 38.756954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138203, -0.015105, 0.990289,
		0.907632, 0.398226, 0.132742,
		-0.396364, 0.917163, -0.041326,
		27.259359, 33.439301, 38.744556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599539, 33.004154, 39.492237>,  <27.536816, 32.797287, 38.773483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599539, 33.004154, 39.492237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314554, 33.228783, 39.323936>,  <27.143564, 33.363560, 39.222958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314554, 33.228783, 39.323936>,  <27.599539, 33.004154, 39.492237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314554, 33.228783, 39.323936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446712, 0.099435, 0.889135,
		0.541154, 0.821429, 0.180019,
		-0.712461, 0.561576, -0.420752,
		27.100817, 33.397255, 39.197712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495367, 33.558132, 39.905853>,  <27.599539, 33.004154, 39.492237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495367, 33.558132, 39.905853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152756, 33.534294, 39.700794>,  <26.947189, 33.519989, 39.577759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152756, 33.534294, 39.700794>,  <27.495367, 33.558132, 39.905853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152756, 33.534294, 39.700794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512571, -0.017795, 0.858460,
		-0.060285, 0.998064, -0.015306,
		-0.856526, -0.059598, -0.512651,
		26.895798, 33.516415, 39.546997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437429, 34.337975, 39.811363>,  <27.495367, 33.558132, 39.905853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437429, 34.337975, 39.811363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094452, 34.235981, 39.632580>,  <26.888664, 34.174786, 39.525311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094452, 34.235981, 39.632580>,  <27.437429, 34.337975, 39.811363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094452, 34.235981, 39.632580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376165, -0.282097, 0.882565,
		-0.351123, 0.924882, 0.145969,
		-0.857446, -0.254980, -0.446959,
		26.837217, 34.159489, 39.498493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808510, 34.622818, 40.241306>,  <27.437429, 34.337975, 39.811363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808510, 34.622818, 40.241306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633919, 34.322491, 40.043011>,  <26.529163, 34.142296, 39.924034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633919, 34.322491, 40.043011>,  <26.808510, 34.622818, 40.241306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633919, 34.322491, 40.043011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609334, -0.158712, 0.776867,
		-0.661965, 0.641159, -0.388223,
		-0.436480, -0.750816, -0.495742,
		26.502975, 34.097244, 39.894287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198570, 34.760391, 40.183319>,  <26.808510, 34.622818, 40.241306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198570, 34.760391, 40.183319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215256, 34.360756, 40.187157>,  <26.225267, 34.120975, 40.189461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215256, 34.360756, 40.187157>,  <26.198570, 34.760391, 40.183319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215256, 34.360756, 40.187157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552030, -0.015041, 0.833689,
		-0.832781, -0.040072, -0.552151,
		0.041712, -0.999084, 0.009595,
		26.227770, 34.061031, 40.190037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.542952, 34.494167, 40.280628>,  <26.198570, 34.760391, 40.183319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.542952, 34.494167, 40.280628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834192, 34.262421, 40.427162>,  <26.008938, 34.123371, 40.515083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834192, 34.262421, 40.427162>,  <25.542952, 34.494167, 40.280628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834192, 34.262421, 40.427162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530252, -0.137373, 0.836637,
		-0.434394, -0.803408, -0.407231,
		0.728103, -0.579365, 0.366335,
		26.052624, 34.088612, 40.537064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193409, 33.911400, 40.482666>,  <25.542952, 34.494167, 40.280628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193409, 33.911400, 40.482666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520588, 33.945827, 40.710194>,  <25.716896, 33.966484, 40.846710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520588, 33.945827, 40.710194>,  <25.193409, 33.911400, 40.482666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520588, 33.945827, 40.710194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499491, -0.384307, 0.776413,
		0.285428, -0.919184, -0.271351,
		0.817949, 0.086072, 0.568816,
		25.765972, 33.971649, 40.880836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628134, 33.258797, 40.645493>,  <25.193409, 33.911400, 40.482666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628134, 33.258797, 40.645493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631660, 33.548714, 40.921059>,  <25.633778, 33.722664, 41.086399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631660, 33.548714, 40.921059>,  <25.628134, 33.258797, 40.645493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631660, 33.548714, 40.921059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619397, -0.536900, 0.572788,
		0.785029, -0.431762, 0.444197,
		0.008819, 0.724789, 0.688914,
		25.634306, 33.766151, 41.127731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816242, 32.891251, 41.266796>,  <25.628134, 33.258797, 40.645493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816242, 32.891251, 41.266796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604399, 33.229137, 41.297684>,  <25.477293, 33.431870, 41.316216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604399, 33.229137, 41.297684>,  <25.816242, 32.891251, 41.266796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604399, 33.229137, 41.297684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680797, -0.477599, 0.555352,
		0.505996, 0.241548, 0.828023,
		-0.529607, 0.844721, 0.077218,
		25.445517, 33.482555, 41.320850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446693, 32.743687, 40.705357>,  <25.816242, 32.891251, 41.266796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446693, 32.743687, 40.705357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317316, 33.112709, 40.621193>,  <26.239689, 33.334122, 40.570694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317316, 33.112709, 40.621193>,  <26.446693, 32.743687, 40.705357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317316, 33.112709, 40.621193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664522, 0.063157, -0.744595,
		-0.673642, -0.380658, -0.633487,
		-0.323445, 0.922557, -0.210410,
		26.220284, 33.389477, 40.558071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344997, 32.721283, 39.960014>,  <26.446693, 32.743687, 40.705357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344997, 32.721283, 39.960014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299717, 33.109905, 40.043213>,  <26.272549, 33.343079, 40.093132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299717, 33.109905, 40.043213>,  <26.344997, 32.721283, 39.960014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299717, 33.109905, 40.043213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363476, 0.235325, -0.901392,
		-0.924700, -0.026438, -0.379777,
		-0.113202, 0.971557, 0.207996,
		26.265757, 33.401371, 40.105610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989008, 33.015984, 39.405411>,  <26.344997, 32.721283, 39.960014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989008, 33.015984, 39.405411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181458, 33.329590, 39.562302>,  <26.296928, 33.517754, 39.656437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181458, 33.329590, 39.562302>,  <25.989008, 33.015984, 39.405411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181458, 33.329590, 39.562302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201014, 0.336832, -0.919857,
		-0.853295, 0.521410, 0.004461,
		0.481125, 0.784013, 0.392228,
		26.325794, 33.564793, 39.679970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822121, 33.577972, 39.053337>,  <25.989008, 33.015984, 39.405411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822121, 33.577972, 39.053337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184265, 33.647778, 39.208187>,  <26.401552, 33.689659, 39.301098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184265, 33.647778, 39.208187>,  <25.822121, 33.577972, 39.053337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184265, 33.647778, 39.208187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364240, 0.149509, -0.919226,
		-0.218295, 0.973238, 0.071796,
		0.905360, 0.174512, 0.387129,
		26.455873, 33.700130, 39.324326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115894, 34.202473, 38.787910>,  <25.822121, 33.577972, 39.053337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115894, 34.202473, 38.787910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430754, 33.985630, 38.905563>,  <26.619669, 33.855526, 38.976154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430754, 33.985630, 38.905563>,  <26.115894, 34.202473, 38.787910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430754, 33.985630, 38.905563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444600, 0.168209, -0.879794,
		0.427466, 0.823301, 0.373427,
		0.787149, -0.542107, 0.294136,
		26.666899, 33.822998, 38.993805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695637, 34.638508, 38.713993>,  <26.115894, 34.202473, 38.787910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695637, 34.638508, 38.713993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866253, 34.276726, 38.711929>,  <26.968622, 34.059658, 38.710690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866253, 34.276726, 38.711929>,  <26.695637, 34.638508, 38.713993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866253, 34.276726, 38.711929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468816, 0.225966, -0.853903,
		0.773483, 0.361804, 0.520406,
		0.426539, -0.904454, -0.005161,
		26.994215, 34.005390, 38.710381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351316, 34.701672, 38.480793>,  <26.695637, 34.638508, 38.713993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351316, 34.701672, 38.480793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312485, 34.306438, 38.433006>,  <27.289185, 34.069298, 38.404335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312485, 34.306438, 38.433006>,  <27.351316, 34.701672, 38.480793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312485, 34.306438, 38.433006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398487, 0.071404, -0.914390,
		0.912022, -0.136375, 0.386805,
		-0.097080, -0.988081, -0.119466,
		27.283361, 34.010014, 38.397167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004408, 34.361019, 38.307213>,  <27.351316, 34.701672, 38.480793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004408, 34.361019, 38.307213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720966, 34.136723, 38.135887>,  <27.550901, 34.002144, 38.033092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720966, 34.136723, 38.135887>,  <28.004408, 34.361019, 38.307213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720966, 34.136723, 38.135887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451302, 0.106455, -0.885999,
		0.542411, -0.821120, 0.177628,
		-0.708602, -0.560739, -0.428316,
		27.508385, 33.968502, 38.007393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239195, 34.026791, 37.731060>,  <28.004408, 34.361019, 38.307213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239195, 34.026791, 37.731060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847513, 33.979362, 37.665215>,  <27.612505, 33.950905, 37.625706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847513, 33.979362, 37.665215>,  <28.239195, 34.026791, 37.731060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847513, 33.979362, 37.665215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168930, -0.027230, -0.985252,
		0.112344, -0.992572, 0.046694,
		-0.979204, -0.118575, -0.164616,
		27.553751, 33.943790, 37.615829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806610, 34.490257, 37.825390>,  <28.239195, 34.026791, 37.731060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806610, 34.490257, 37.825390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681179, 34.868755, 37.793667>,  <28.605921, 35.095856, 37.774635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681179, 34.868755, 37.793667>,  <28.806610, 34.490257, 37.825390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681179, 34.868755, 37.793667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949561, -0.312630, 0.024426,
		-0.001679, 0.082963, 0.996551,
		-0.313578, 0.946245, -0.079304,
		28.587105, 35.152630, 37.769875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149839, 35.076077, 37.683708>,  <28.806610, 34.490257, 37.825390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149839, 35.076077, 37.683708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464333, 35.049412, 37.437977>,  <29.653028, 35.033413, 37.290539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464333, 35.049412, 37.437977>,  <29.149839, 35.076077, 37.683708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464333, 35.049412, 37.437977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598226, 0.331180, 0.729689,
		0.154808, -0.941210, 0.300265,
		0.786232, -0.066664, -0.614325,
		29.700203, 35.029411, 37.253677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808573, 34.805164, 37.985348>,  <29.149839, 35.076077, 37.683708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808573, 34.805164, 37.985348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955969, 35.086727, 37.742455>,  <30.044407, 35.255665, 37.596718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955969, 35.086727, 37.742455>,  <29.808573, 34.805164, 37.985348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955969, 35.086727, 37.742455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619151, 0.301411, 0.725123,
		0.693446, -0.643168, -0.324758,
		0.368491, 0.703908, -0.607230,
		30.066517, 35.297901, 37.560284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604721, 35.331657, 38.423618>,  <29.808573, 34.805164, 37.985348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604721, 35.331657, 38.423618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869503, 35.626793, 38.476402>,  <30.028372, 35.803875, 38.508072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869503, 35.626793, 38.476402>,  <29.604721, 35.331657, 38.423618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869503, 35.626793, 38.476402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508368, -0.312575, -0.802408,
		-0.550797, 0.598244, -0.582003,
		0.661955, 0.737835, 0.131963,
		30.068090, 35.848145, 38.515991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714447, 35.777657, 37.823299>,  <29.604721, 35.331657, 38.423618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714447, 35.777657, 37.823299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078140, 35.792362, 37.989162>,  <30.296356, 35.801186, 38.088680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078140, 35.792362, 37.989162>,  <29.714447, 35.777657, 37.823299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078140, 35.792362, 37.989162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392142, -0.409910, -0.823528,
		0.139698, 0.911385, -0.387120,
		0.909235, 0.036761, 0.414656,
		30.350910, 35.803391, 38.113560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237289, 36.256706, 37.360779>,  <29.714447, 35.777657, 37.823299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237289, 36.256706, 37.360779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376547, 35.927570, 37.540436>,  <30.460100, 35.730087, 37.648232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376547, 35.927570, 37.540436>,  <30.237289, 36.256706, 37.360779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376547, 35.927570, 37.540436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399602, -0.303146, -0.865113,
		0.848007, 0.480661, 0.223271,
		0.348142, -0.822841, 0.449143,
		30.480989, 35.680717, 37.675179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963402, 35.976692, 37.056728>,  <30.237289, 36.256706, 37.360779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963402, 35.976692, 37.056728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768671, 35.665092, 37.214794>,  <30.651833, 35.478130, 37.309631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768671, 35.665092, 37.214794>,  <30.963402, 35.976692, 37.056728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768671, 35.665092, 37.214794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322574, -0.580743, -0.747451,
		0.811755, -0.236411, 0.534008,
		-0.486827, -0.779004, 0.395161,
		30.622623, 35.431393, 37.333344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922007, 36.204472, 37.812130>,  <30.963402, 35.976692, 37.056728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922007, 36.204472, 37.812130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132467, 36.497936, 37.984135>,  <31.258743, 36.674015, 38.087337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132467, 36.497936, 37.984135>,  <30.922007, 36.204472, 37.812130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132467, 36.497936, 37.984135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409508, 0.224580, -0.884232,
		-0.745298, 0.641331, -0.182278,
		0.526150, 0.733661, 0.430009,
		31.290312, 36.718033, 38.113136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853254, 36.813042, 37.435123>,  <30.922007, 36.204472, 37.812130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853254, 36.813042, 37.435123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198326, 36.849625, 37.634090>,  <31.405369, 36.871574, 37.753471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198326, 36.849625, 37.634090>,  <30.853254, 36.813042, 37.435123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198326, 36.849625, 37.634090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472367, 0.205717, -0.857059,
		-0.180710, 0.974329, 0.134266,
		0.862678, 0.091457, 0.497416,
		31.457130, 36.877060, 37.783314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187988, 36.786972, 36.858086>,  <30.853254, 36.813042, 37.435123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187988, 36.786972, 36.858086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481213, 36.841248, 37.124680>,  <31.657148, 36.873814, 37.284637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481213, 36.841248, 37.124680>,  <31.187988, 36.786972, 36.858086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481213, 36.841248, 37.124680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631342, 0.228800, -0.740985,
		-0.253037, 0.963970, 0.082058,
		0.733062, 0.135690, 0.666489,
		31.701132, 36.881954, 37.324627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609379, 37.252617, 36.556450>,  <31.187988, 36.786972, 36.858086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609379, 37.252617, 36.556450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856586, 37.144394, 36.851704>,  <32.004913, 37.079460, 37.028858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856586, 37.144394, 36.851704>,  <31.609379, 37.252617, 36.556450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856586, 37.144394, 36.851704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782122, 0.116545, -0.612129,
		0.079592, 0.955622, 0.283639,
		0.618021, -0.270561, 0.738137,
		32.041992, 37.063225, 37.073143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185841, 37.700310, 36.672680>,  <31.609379, 37.252617, 36.556450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185841, 37.700310, 36.672680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347900, 37.353897, 36.789879>,  <32.445137, 37.146049, 36.860199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347900, 37.353897, 36.789879>,  <32.185841, 37.700310, 36.672680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347900, 37.353897, 36.789879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650003, 0.047490, -0.758446,
		0.642921, 0.497735, 0.582162,
		0.405152, -0.866028, 0.292997,
		32.469444, 37.094090, 36.877777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957355, 37.748035, 36.781780>,  <32.185841, 37.700310, 36.672680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957355, 37.748035, 36.781780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844051, 37.374367, 36.694977>,  <32.776070, 37.150166, 36.642895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844051, 37.374367, 36.694977>,  <32.957355, 37.748035, 36.781780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844051, 37.374367, 36.694977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666910, -0.029262, -0.744563,
		0.689198, -0.355630, 0.631295,
		-0.283262, -0.934169, -0.217006,
		32.759071, 37.094116, 36.629875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588879, 37.239597, 36.609142>,  <32.957355, 37.748035, 36.781780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588879, 37.239597, 36.609142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278114, 37.075253, 36.418312>,  <33.091656, 36.976646, 36.303814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278114, 37.075253, 36.418312>,  <33.588879, 37.239597, 36.609142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278114, 37.075253, 36.418312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598197, -0.245354, -0.762864,
		0.196379, -0.878064, 0.436394,
		-0.776914, -0.410860, -0.477073,
		33.045040, 36.951996, 36.275188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644047, 36.436825, 36.407032>,  <33.588879, 37.239597, 36.609142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644047, 36.436825, 36.407032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419769, 36.627144, 36.135963>,  <33.285202, 36.741337, 35.973324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419769, 36.627144, 36.135963>,  <33.644047, 36.436825, 36.407032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419769, 36.627144, 36.135963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627329, -0.290080, -0.722712,
		-0.540446, -0.830341, -0.135838,
		-0.560694, 0.475802, -0.677670,
		33.251560, 36.769886, 35.932663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574394, 35.917381, 35.950813>,  <33.644047, 36.436825, 36.407032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574394, 35.917381, 35.950813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501411, 36.259995, 35.757710>,  <33.457623, 36.465565, 35.641850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501411, 36.259995, 35.757710>,  <33.574394, 35.917381, 35.950813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501411, 36.259995, 35.757710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634987, -0.272213, -0.722974,
		-0.750666, -0.438456, -0.494223,
		-0.182458, 0.856537, -0.482755,
		33.446674, 36.516956, 35.612885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492218, 35.746975, 35.308052>,  <33.574394, 35.917381, 35.950813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492218, 35.746975, 35.308052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588158, 36.135044, 35.322105>,  <33.645721, 36.367886, 35.330536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588158, 36.135044, 35.322105>,  <33.492218, 35.746975, 35.308052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588158, 36.135044, 35.322105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548572, -0.105583, -0.829410,
		-0.800964, 0.218202, -0.557535,
		0.239845, 0.970175, 0.035131,
		33.660110, 36.426098, 35.332645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196701, 36.059528, 34.722492>,  <33.492218, 35.746975, 35.308052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196701, 36.059528, 34.722492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534027, 36.230732, 34.852497>,  <33.736423, 36.333454, 34.930500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534027, 36.230732, 34.852497>,  <33.196701, 36.059528, 34.722492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534027, 36.230732, 34.852497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448344, -0.226843, -0.864598,
		-0.296329, 0.874843, -0.383195,
		0.843313, 0.428009, 0.325011,
		33.787022, 36.359135, 34.950001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468826, 36.288490, 34.170029>,  <33.196701, 36.059528, 34.722492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468826, 36.288490, 34.170029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770344, 36.250660, 34.430138>,  <33.951256, 36.227962, 34.586201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770344, 36.250660, 34.430138>,  <33.468826, 36.288490, 34.170029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770344, 36.250660, 34.430138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603187, -0.293000, -0.741833,
		0.260690, 0.951423, -0.163814,
		0.753795, -0.094578, 0.650268,
		33.996483, 36.222286, 34.625217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058399, 36.522472, 33.795357>,  <33.468826, 36.288490, 34.170029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058399, 36.522472, 33.795357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229160, 36.315563, 34.092052>,  <34.331619, 36.191418, 34.270069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229160, 36.315563, 34.092052>,  <34.058399, 36.522472, 33.795357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229160, 36.315563, 34.092052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524600, -0.526447, -0.669065,
		0.736577, 0.674746, 0.046618,
		0.426907, -0.517273, 0.741740,
		34.357231, 36.160381, 34.314575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821175, 36.508892, 33.739841>,  <34.058399, 36.522472, 33.795357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821175, 36.508892, 33.739841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743244, 36.177986, 33.950623>,  <34.696487, 35.979443, 34.077091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743244, 36.177986, 33.950623>,  <34.821175, 36.508892, 33.739841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743244, 36.177986, 33.950623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277424, -0.561789, -0.779377,
		0.940787, -0.005652, 0.338952,
		-0.194825, -0.827261, 0.526955,
		34.684795, 35.929810, 34.108707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377903, 36.043388, 33.693645>,  <34.821175, 36.508892, 33.739841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377903, 36.043388, 33.693645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085579, 35.789749, 33.794712>,  <34.910187, 35.637566, 33.855350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085579, 35.789749, 33.794712>,  <35.377903, 36.043388, 33.693645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085579, 35.789749, 33.794712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332630, -0.654066, -0.679378,
		0.596053, -0.412449, 0.688916,
		-0.730806, -0.634100, 0.252665,
		34.866337, 35.599518, 33.870510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794048, 35.428604, 33.755939>,  <35.377903, 36.043388, 33.693645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794048, 35.428604, 33.755939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405830, 35.335983, 33.729301>,  <35.172901, 35.280411, 33.713318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405830, 35.335983, 33.729301>,  <35.794048, 35.428604, 33.755939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405830, 35.335983, 33.729301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224198, -0.766710, -0.601573,
		0.088237, -0.598781, 0.796037,
		-0.970541, -0.231551, -0.066593,
		35.114670, 35.266518, 33.709324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794807, 34.654591, 33.638065>,  <35.794048, 35.428604, 33.755939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794807, 34.654591, 33.638065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444126, 34.798100, 33.509892>,  <35.233719, 34.884205, 33.432987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444126, 34.798100, 33.509892>,  <35.794807, 34.654591, 33.638065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444126, 34.798100, 33.509892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036584, -0.614468, -0.788093,
		-0.479644, -0.702644, 0.525579,
		-0.876700, 0.358776, -0.320431,
		35.181118, 34.905731, 33.413761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493382, 34.041412, 33.401482>,  <35.794807, 34.654591, 33.638065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493382, 34.041412, 33.401482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283504, 34.327175, 33.216305>,  <35.157578, 34.498634, 33.105198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283504, 34.327175, 33.216305>,  <35.493382, 34.041412, 33.401482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283504, 34.327175, 33.216305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235749, -0.644485, -0.727367,
		-0.818001, -0.272501, 0.506574,
		-0.524687, 0.714411, -0.462947,
		35.126099, 34.541500, 33.077419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036476, 33.671616, 33.072250>,  <35.493382, 34.041412, 33.401482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036476, 33.671616, 33.072250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032001, 34.020992, 32.877533>,  <35.029316, 34.230618, 32.760700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032001, 34.020992, 32.877533>,  <35.036476, 33.671616, 33.072250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032001, 34.020992, 32.877533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060478, -0.486528, -0.871569,
		-0.998107, 0.019687, 0.058269,
		-0.011191, 0.873443, -0.486797,
		35.028645, 34.283024, 32.731495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503246, 33.551003, 32.591343>,  <35.036476, 33.671616, 33.072250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503246, 33.551003, 32.591343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728153, 33.856228, 32.463856>,  <34.863098, 34.039364, 32.387363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728153, 33.856228, 32.463856>,  <34.503246, 33.551003, 32.591343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728153, 33.856228, 32.463856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002267, -0.386833, -0.922147,
		-0.826949, 0.517775, -0.219235,
		0.562272, 0.763066, -0.318717,
		34.896835, 34.085148, 32.368240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384750, 33.605740, 31.809885>,  <34.503246, 33.551003, 32.591343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384750, 33.605740, 31.809885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743999, 33.761261, 31.892071>,  <34.959549, 33.854572, 31.941381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743999, 33.761261, 31.892071>,  <34.384750, 33.605740, 31.809885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743999, 33.761261, 31.892071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294210, -0.183996, -0.937862,
		-0.326839, 0.902761, -0.279640,
		0.898118, 0.388803, 0.205464,
		35.013435, 33.877903, 31.953711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557442, 33.871433, 31.188408>,  <34.384750, 33.605740, 31.809885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557442, 33.871433, 31.188408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893646, 33.831543, 31.401421>,  <35.095371, 33.807610, 31.529228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893646, 33.831543, 31.401421>,  <34.557442, 33.871433, 31.188408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893646, 33.831543, 31.401421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512778, -0.170889, -0.841341,
		0.174905, 0.980231, -0.092499,
		0.840516, -0.099723, 0.532530,
		35.145802, 33.801624, 31.561180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043037, 34.094940, 30.760746>,  <34.557442, 33.871433, 31.188408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043037, 34.094940, 30.760746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271309, 33.928143, 31.043715>,  <35.408272, 33.828064, 31.213495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271309, 33.928143, 31.043715>,  <35.043037, 34.094940, 30.760746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271309, 33.928143, 31.043715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691587, -0.220424, -0.687838,
		0.442755, 0.881777, 0.162594,
		0.570680, -0.416992, 0.707419,
		35.442513, 33.803043, 31.255939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691311, 34.482620, 30.844912>,  <35.043037, 34.094940, 30.760746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691311, 34.482620, 30.844912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728123, 34.093273, 30.928892>,  <35.750210, 33.859665, 30.979280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728123, 34.093273, 30.928892>,  <35.691311, 34.482620, 30.844912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728123, 34.093273, 30.928892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520926, -0.132628, -0.843236,
		0.848626, 0.186975, 0.494847,
		0.092033, -0.973371, 0.209952,
		35.755733, 33.801262, 30.991879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376038, 34.328609, 30.787865>,  <35.691311, 34.482620, 30.844912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376038, 34.328609, 30.787865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218048, 33.963428, 30.746847>,  <36.123257, 33.744320, 30.722237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218048, 33.963428, 30.746847>,  <36.376038, 34.328609, 30.787865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218048, 33.963428, 30.746847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548340, -0.144716, -0.823639,
		0.737103, -0.381543, 0.557767,
		-0.394972, -0.912952, -0.102545,
		36.099556, 33.689545, 30.716084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924046, 33.899601, 30.741224>,  <36.376038, 34.328609, 30.787865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924046, 33.899601, 30.741224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620819, 33.706863, 30.565420>,  <36.438885, 33.591221, 30.459938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620819, 33.706863, 30.565420>,  <36.924046, 33.899601, 30.741224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620819, 33.706863, 30.565420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561045, -0.138211, -0.816166,
		0.332516, -0.865291, 0.375107,
		-0.758064, -0.481840, -0.439510,
		36.393398, 33.562313, 30.433567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224495, 33.507473, 30.193819>,  <36.924046, 33.899601, 30.741224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224495, 33.507473, 30.193819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839718, 33.482700, 30.087357>,  <36.608852, 33.467834, 30.023479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839718, 33.482700, 30.087357>,  <37.224495, 33.507473, 30.193819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839718, 33.482700, 30.087357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269193, -0.382276, -0.883968,
		-0.046996, -0.921970, 0.384399,
		-0.961939, -0.061934, -0.266154,
		36.551136, 33.464119, 30.007511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122765, 32.828064, 29.894123>,  <37.224495, 33.507473, 30.193819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122765, 32.828064, 29.894123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833351, 33.064365, 29.751286>,  <36.659702, 33.206146, 29.665583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833351, 33.064365, 29.751286>,  <37.122765, 32.828064, 29.894123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833351, 33.064365, 29.751286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201796, -0.313697, -0.927832,
		-0.660140, -0.743374, 0.107757,
		-0.723529, 0.590754, -0.357094,
		36.616291, 33.241592, 29.644157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729649, 32.440804, 29.346874>,  <37.122765, 32.828064, 29.894123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729649, 32.440804, 29.346874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645649, 32.829670, 29.305325>,  <36.595249, 33.062992, 29.280396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645649, 32.829670, 29.305325>,  <36.729649, 32.440804, 29.346874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645649, 32.829670, 29.305325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076704, -0.089533, -0.993026,
		-0.974689, -0.216497, -0.055768,
		-0.209994, 0.972169, -0.103873,
		36.582649, 33.121319, 29.274162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357063, 32.334938, 28.819454>,  <36.729649, 32.440804, 29.346874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357063, 32.334938, 28.819454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496845, 32.708088, 28.854385>,  <36.580715, 32.931976, 28.875343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496845, 32.708088, 28.854385>,  <36.357063, 32.334938, 28.819454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496845, 32.708088, 28.854385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163176, 0.031186, -0.986104,
		-0.922635, 0.358848, -0.141325,
		0.349454, 0.932875, 0.087328,
		36.601681, 32.987949, 28.880585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946529, 32.729492, 28.348927>,  <36.357063, 32.334938, 28.819454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946529, 32.729492, 28.348927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293240, 32.916386, 28.418652>,  <36.501266, 33.028522, 28.460487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293240, 32.916386, 28.418652>,  <35.946529, 32.729492, 28.348927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293240, 32.916386, 28.418652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216512, -0.037704, -0.975552,
		-0.449242, 0.883328, -0.133844,
		0.866778, 0.467237, 0.174313,
		36.553272, 33.056557, 28.470945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074051, 33.055134, 27.689014>,  <35.946529, 32.729492, 28.348927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074051, 33.055134, 27.689014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417854, 33.086544, 27.891037>,  <36.624134, 33.105389, 28.012251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417854, 33.086544, 27.891037>,  <36.074051, 33.055134, 27.689014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417854, 33.086544, 27.891037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511124, -0.130142, -0.849597,
		-0.000983, 0.988381, -0.151993,
		0.859506, 0.078523, 0.505058,
		36.675705, 33.110100, 28.042555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468315, 33.710995, 27.294090>,  <36.074051, 33.055134, 27.689014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468315, 33.710995, 27.294090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738922, 33.497406, 27.496952>,  <36.901287, 33.369255, 27.618670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738922, 33.497406, 27.496952>,  <36.468315, 33.710995, 27.294090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738922, 33.497406, 27.496952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566625, -0.062461, -0.821605,
		0.470389, 0.843194, 0.260305,
		0.676513, -0.533969, 0.507156,
		36.941875, 33.337215, 27.649099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044060, 34.023216, 27.145773>,  <36.468315, 33.710995, 27.294090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044060, 34.023216, 27.145773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154278, 33.651413, 27.243828>,  <37.220409, 33.428333, 27.302662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154278, 33.651413, 27.243828>,  <37.044060, 34.023216, 27.145773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154278, 33.651413, 27.243828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312261, -0.154632, -0.937327,
		0.909157, 0.334826, 0.247640,
		0.275548, -0.929505, 0.245138,
		37.236942, 33.372562, 27.317369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659157, 33.970142, 26.681656>,  <37.044060, 34.023216, 27.145773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659157, 33.970142, 26.681656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573349, 33.599876, 26.806314>,  <37.521866, 33.377716, 26.881109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573349, 33.599876, 26.806314>,  <37.659157, 33.970142, 26.681656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573349, 33.599876, 26.806314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361093, -0.371632, -0.855279,
		0.907521, -0.070938, 0.413973,
		-0.214518, -0.925666, 0.311649,
		37.508995, 33.322178, 26.899809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329147, 33.544613, 26.619667>,  <37.659157, 33.970142, 26.681656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329147, 33.544613, 26.619667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008492, 33.305557, 26.613979>,  <37.816097, 33.162125, 26.610567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008492, 33.305557, 26.613979>,  <38.329147, 33.544613, 26.619667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008492, 33.305557, 26.613979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381756, -0.493469, -0.781506,
		0.460045, -0.631911, 0.623736,
		-0.801636, -0.597643, -0.014218,
		37.768002, 33.126263, 26.609715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579990, 32.992188, 26.410995>,  <38.329147, 33.544613, 26.619667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579990, 32.992188, 26.410995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191669, 32.920628, 26.347073>,  <37.958675, 32.877689, 26.308718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191669, 32.920628, 26.347073>,  <38.579990, 32.992188, 26.410995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191669, 32.920628, 26.347073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233550, -0.552788, -0.799925,
		0.054768, -0.813892, 0.578430,
		-0.970801, -0.178902, -0.159809,
		37.900429, 32.866959, 26.299129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486633, 32.284000, 26.383968>,  <38.579990, 32.992188, 26.410995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486633, 32.284000, 26.383968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168861, 32.418552, 26.181690>,  <37.978199, 32.499283, 26.060324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168861, 32.418552, 26.181690>,  <38.486633, 32.284000, 26.383968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168861, 32.418552, 26.181690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337180, -0.448257, -0.827874,
		-0.505164, -0.828198, 0.242687,
		-0.794430, 0.336383, -0.505695,
		37.930531, 32.519466, 26.029982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264412, 31.711302, 26.072672>,  <38.486633, 32.284000, 26.383968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264412, 31.711302, 26.072672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094215, 32.000145, 25.854492>,  <37.992096, 32.173450, 25.723583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094215, 32.000145, 25.854492>,  <38.264412, 31.711302, 26.072672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094215, 32.000145, 25.854492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385841, -0.400446, -0.831125,
		-0.818586, -0.564095, -0.108232,
		-0.425493, 0.722108, -0.545451,
		37.966568, 32.216778, 25.690857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023319, 31.367617, 25.409252>,  <38.264412, 31.711302, 26.072672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023319, 31.367617, 25.409252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044407, 31.755877, 25.315392>,  <38.057060, 31.988832, 25.259075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044407, 31.755877, 25.315392>,  <38.023319, 31.367617, 25.409252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044407, 31.755877, 25.315392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246719, -0.240352, -0.938808,
		-0.967652, -0.008400, -0.252149,
		0.052719, 0.970649, -0.234650,
		38.060223, 32.047070, 25.244997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625385, 31.473892, 24.722408>,  <38.023319, 31.367617, 25.409252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625385, 31.473892, 24.722408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862450, 31.794292, 24.756239>,  <38.004688, 31.986532, 24.776537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862450, 31.794292, 24.756239>,  <37.625385, 31.473892, 24.722408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862450, 31.794292, 24.756239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234530, -0.071159, -0.969501,
		-0.770555, 0.594417, -0.230032,
		0.592656, 0.801003, 0.084576,
		38.040245, 32.034592, 24.781612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617878, 31.817053, 24.030327>,  <37.625385, 31.473892, 24.722408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617878, 31.817053, 24.030327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947086, 31.950003, 24.214573>,  <38.144611, 32.029774, 24.325121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947086, 31.950003, 24.214573>,  <37.617878, 31.817053, 24.030327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947086, 31.950003, 24.214573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539994, -0.206293, -0.815996,
		-0.176196, 0.920309, -0.349264,
		0.823019, 0.332376, 0.460614,
		38.193993, 32.049717, 24.352757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970524, 32.313515, 23.602398>,  <37.617878, 31.817053, 24.030327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970524, 32.313515, 23.602398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251999, 32.205948, 23.865461>,  <38.420883, 32.141407, 24.023298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251999, 32.205948, 23.865461>,  <37.970524, 32.313515, 23.602398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251999, 32.205948, 23.865461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696223, 0.076277, -0.713762,
		0.141776, 0.960139, 0.240899,
		0.703686, -0.268914, 0.657656,
		38.463104, 32.125275, 24.062757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555092, 32.674126, 23.521330>,  <37.970524, 32.313515, 23.602398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555092, 32.674126, 23.521330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711506, 32.353703, 23.702612>,  <38.805355, 32.161449, 23.811382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711506, 32.353703, 23.702612>,  <38.555092, 32.674126, 23.521330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711506, 32.353703, 23.702612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792060, 0.042098, -0.608990,
		0.468759, 0.597101, 0.650950,
		0.391032, -0.801061, 0.453206,
		38.828815, 32.113384, 23.838573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220360, 32.847260, 23.615574>,  <38.555092, 32.674126, 23.521330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220360, 32.847260, 23.615574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212318, 32.449890, 23.660675>,  <39.207493, 32.211468, 23.687737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212318, 32.449890, 23.660675>,  <39.220360, 32.847260, 23.615574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212318, 32.449890, 23.660675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774609, -0.086775, -0.626458,
		0.632120, 0.074749, 0.771256,
		-0.020099, -0.993420, 0.112754,
		39.206287, 32.151863, 23.694502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876209, 32.704578, 23.675547>,  <39.220360, 32.847260, 23.615574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876209, 32.704578, 23.675547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704151, 32.363510, 23.556936>,  <39.600914, 32.158871, 23.485771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704151, 32.363510, 23.556936>,  <39.876209, 32.704578, 23.675547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704151, 32.363510, 23.556936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527899, 0.028873, -0.848816,
		0.732322, -0.521652, 0.437704,
		-0.430148, -0.852670, -0.296524,
		39.575108, 32.107708, 23.467979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369007, 32.411720, 23.223503>,  <39.876209, 32.704578, 23.675547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369007, 32.411720, 23.223503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054279, 32.172573, 23.162235>,  <39.865440, 32.029083, 23.125475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054279, 32.172573, 23.162235>,  <40.369007, 32.411720, 23.223503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054279, 32.172573, 23.162235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198428, -0.010059, -0.980064,
		0.584409, -0.801530, 0.126549,
		-0.786824, -0.597869, -0.153167,
		39.818233, 31.993212, 23.116285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619190, 31.827230, 22.851086>,  <40.369007, 32.411720, 23.223503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619190, 31.827230, 22.851086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226612, 31.857340, 22.780556>,  <39.991066, 31.875406, 22.738237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226612, 31.857340, 22.780556>,  <40.619190, 31.827230, 22.851086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226612, 31.857340, 22.780556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177921, 0.015026, -0.983930,
		-0.071418, -0.997049, -0.028140,
		-0.981450, 0.075277, -0.176322,
		39.932178, 31.879923, 22.727659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472332, 31.304365, 22.430599>,  <40.619190, 31.827230, 22.851086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472332, 31.304365, 22.430599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170589, 31.556950, 22.358810>,  <39.989544, 31.708500, 22.315737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170589, 31.556950, 22.358810>,  <40.472332, 31.304365, 22.430599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170589, 31.556950, 22.358810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224632, -0.008594, -0.974406,
		-0.616840, -0.775361, -0.135363,
		-0.754353, 0.631460, -0.179472,
		39.944283, 31.746387, 22.304970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948616, 31.072313, 21.960211>,  <40.472332, 31.304365, 22.430599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948616, 31.072313, 21.960211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915428, 31.469679, 21.928595>,  <39.895515, 31.708097, 21.909626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915428, 31.469679, 21.928595>,  <39.948616, 31.072313, 21.960211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915428, 31.469679, 21.928595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131854, -0.067672, -0.988957,
		-0.987791, -0.092471, -0.125371,
		-0.082965, 0.993413, -0.079038,
		39.890537, 31.767702, 21.904882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699615, 31.085865, 21.286409>,  <39.948616, 31.072313, 21.960211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699615, 31.085865, 21.286409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811813, 31.460072, 21.372324>,  <39.879131, 31.684595, 21.423872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811813, 31.460072, 21.372324>,  <39.699615, 31.085865, 21.286409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811813, 31.460072, 21.372324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117290, 0.188687, -0.975008,
		-0.952662, 0.298678, -0.056800,
		0.280496, 0.935515, 0.214787,
		39.895962, 31.740726, 21.436760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208828, 31.639135, 21.031828>,  <39.699615, 31.085865, 21.286409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208828, 31.639135, 21.031828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602371, 31.708210, 21.013027>,  <39.838497, 31.749655, 21.001747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602371, 31.708210, 21.013027>,  <39.208828, 31.639135, 21.031828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602371, 31.708210, 21.013027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096518, 0.290793, -0.951905,
		-0.150713, 0.941073, 0.302765,
		0.983855, 0.172686, -0.047004,
		39.897526, 31.760015, 20.998926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343842, 32.325047, 20.861664>,  <39.208828, 31.639135, 21.031828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343842, 32.325047, 20.861664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628895, 32.076134, 20.732100>,  <39.799927, 31.926786, 20.654362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628895, 32.076134, 20.732100>,  <39.343842, 32.325047, 20.861664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628895, 32.076134, 20.732100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141060, 0.325181, -0.935072,
		0.687206, 0.712056, 0.143957,
		0.712636, -0.622281, -0.323909,
		39.842686, 31.889450, 20.634928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822960, 32.708061, 20.466717>,  <39.343842, 32.325047, 20.861664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822960, 32.708061, 20.466717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813133, 32.321888, 20.362921>,  <39.807236, 32.090183, 20.300644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813133, 32.321888, 20.362921>,  <39.822960, 32.708061, 20.466717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813133, 32.321888, 20.362921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321720, 0.253395, -0.912298,
		0.946516, 0.061068, -0.316825,
		-0.024570, -0.965434, -0.259489,
		39.805763, 32.032257, 20.285074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303379, 32.670036, 19.817177>,  <39.822960, 32.708061, 20.466717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303379, 32.670036, 19.817177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004578, 32.404800, 19.836369>,  <39.825298, 32.245659, 19.847883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004578, 32.404800, 19.836369>,  <40.303379, 32.670036, 19.817177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004578, 32.404800, 19.836369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299283, 0.270959, -0.914883,
		0.593649, -0.697778, -0.400858,
		-0.747001, -0.663089, 0.047979,
		39.780476, 32.205875, 19.850761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444168, 32.011959, 19.421129>,  <40.303379, 32.670036, 19.817177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444168, 32.011959, 19.421129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062580, 32.129753, 19.443844>,  <39.833630, 32.200428, 19.457472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062580, 32.129753, 19.443844>,  <40.444168, 32.011959, 19.421129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062580, 32.129753, 19.443844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010402, 0.156745, -0.987584,
		-0.299731, -0.942714, -0.146466,
		-0.953967, 0.294486, 0.056787,
		39.776390, 32.218098, 19.460880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178246, 32.300446, 19.358110>,  <40.444168, 32.011959, 19.421129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178246, 32.300446, 19.358110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420315, 32.213654, 19.664494>,  <41.565556, 32.161579, 19.848324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420315, 32.213654, 19.664494>,  <41.178246, 32.300446, 19.358110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420315, 32.213654, 19.664494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440155, 0.710513, 0.549031,
		-0.663347, -0.669398, 0.334480,
		0.605172, -0.216976, 0.765956,
		41.601868, 32.148560, 19.894279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822777, 32.157696, 20.066872>,  <41.178246, 32.300446, 19.358110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822777, 32.157696, 20.066872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189198, 32.309364, 20.119135>,  <41.409050, 32.400364, 20.150494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189198, 32.309364, 20.119135>,  <40.822777, 32.157696, 20.066872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189198, 32.309364, 20.119135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326475, 0.515811, 0.792056,
		0.232928, -0.768225, 0.596301,
		0.916056, 0.379169, 0.130659,
		41.464016, 32.423115, 20.158333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019730, 32.064419, 20.816406>,  <40.822777, 32.157696, 20.066872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019730, 32.064419, 20.816406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275375, 32.335018, 20.670048>,  <41.428764, 32.497379, 20.582233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275375, 32.335018, 20.670048>,  <41.019730, 32.064419, 20.816406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275375, 32.335018, 20.670048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003667, 0.478411, 0.878129,
		0.769102, -0.559884, 0.308240,
		0.639116, 0.676501, -0.365894,
		41.467110, 32.537968, 20.560280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625221, 32.142071, 21.233326>,  <41.019730, 32.064419, 20.816406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625221, 32.142071, 21.233326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541840, 32.485882, 21.046665>,  <41.491810, 32.692169, 20.934668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541840, 32.485882, 21.046665>,  <41.625221, 32.142071, 21.233326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541840, 32.485882, 21.046665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094503, 0.492604, 0.865107,
		0.973456, 0.136235, -0.183913,
		-0.208454, 0.859524, -0.466653,
		41.479305, 32.743740, 20.906670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058853, 32.680206, 21.451019>,  <41.625221, 32.142071, 21.233326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058853, 32.680206, 21.451019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720455, 32.845589, 21.316347>,  <41.517418, 32.944817, 21.235544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720455, 32.845589, 21.316347>,  <42.058853, 32.680206, 21.451019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720455, 32.845589, 21.316347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143840, 0.431056, 0.890786,
		0.513427, 0.802026, -0.305199,
		-0.845992, 0.413454, -0.336679,
		41.466656, 32.969624, 21.215343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048286, 33.510647, 21.358236>,  <42.058853, 32.680206, 21.451019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048286, 33.510647, 21.358236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724640, 33.307304, 21.476152>,  <41.530453, 33.185299, 21.546902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724640, 33.307304, 21.476152>,  <42.048286, 33.510647, 21.358236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724640, 33.307304, 21.476152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045327, 0.554142, 0.831187,
		-0.585895, 0.659166, -0.471409,
		-0.809118, -0.508356, 0.294792,
		41.481903, 33.154797, 21.564590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676407, 34.005741, 21.709990>,  <42.048286, 33.510647, 21.358236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676407, 34.005741, 21.709990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526493, 33.658962, 21.841410>,  <41.436543, 33.450897, 21.920261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526493, 33.658962, 21.841410>,  <41.676407, 34.005741, 21.709990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526493, 33.658962, 21.841410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104332, 0.391568, 0.914215,
		-0.921222, 0.308358, -0.237204,
		-0.374787, -0.866943, 0.328550,
		41.414059, 33.398880, 21.939974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093494, 34.169685, 22.241804>,  <41.676407, 34.005741, 21.709990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093494, 34.169685, 22.241804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206112, 33.793026, 22.315592>,  <41.273682, 33.567028, 22.359865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206112, 33.793026, 22.315592>,  <41.093494, 34.169685, 22.241804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206112, 33.793026, 22.315592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100442, 0.162269, 0.981621,
		-0.954278, -0.294896, -0.048895,
		0.281542, -0.941650, 0.184470,
		41.290573, 33.510532, 22.370934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628883, 33.946075, 22.700329>,  <41.093494, 34.169685, 22.241804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628883, 33.946075, 22.700329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948124, 33.709690, 22.747301>,  <41.139668, 33.567860, 22.775484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948124, 33.709690, 22.747301>,  <40.628883, 33.946075, 22.700329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948124, 33.709690, 22.747301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090882, 0.074591, 0.993064,
		-0.595628, -0.803239, 0.005823,
		0.798102, -0.590968, 0.117429,
		41.187553, 33.532398, 22.782530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448307, 33.548672, 23.251949>,  <40.628883, 33.946075, 22.700329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448307, 33.548672, 23.251949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841145, 33.473972, 23.261936>,  <41.076847, 33.429153, 23.267929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841145, 33.473972, 23.261936>,  <40.448307, 33.548672, 23.251949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841145, 33.473972, 23.261936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021299, 0.021637, 0.999539,
		-0.187207, -0.982168, 0.017272,
		0.982090, -0.186753, 0.024969,
		41.135773, 33.417946, 23.269426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520081, 33.150463, 23.853783>,  <40.448307, 33.548672, 23.251949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520081, 33.150463, 23.853783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890167, 33.277790, 23.771179>,  <41.112221, 33.354187, 23.721617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890167, 33.277790, 23.771179>,  <40.520081, 33.150463, 23.853783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890167, 33.277790, 23.771179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217451, 0.001191, 0.976070,
		0.310948, -0.947983, -0.068117,
		0.925217, 0.318319, -0.206510,
		41.167732, 33.373287, 23.709227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024952, 32.764839, 24.277927>,  <40.520081, 33.150463, 23.853783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024952, 32.764839, 24.277927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187019, 33.119358, 24.188202>,  <41.284260, 33.332069, 24.134367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187019, 33.119358, 24.188202>,  <41.024952, 32.764839, 24.277927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187019, 33.119358, 24.188202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216909, 0.145158, 0.965339,
		0.888138, -0.439781, -0.133432,
		0.405169, 0.886297, -0.224312,
		41.308571, 33.385246, 24.120909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705711, 32.882328, 24.700481>,  <41.024952, 32.764839, 24.277927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705711, 32.882328, 24.700481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585594, 33.242405, 24.574324>,  <41.513523, 33.458450, 24.498629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585594, 33.242405, 24.574324>,  <41.705711, 32.882328, 24.700481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585594, 33.242405, 24.574324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305151, 0.403942, 0.862388,
		0.903719, 0.162724, -0.395996,
		-0.300291, 0.900195, -0.315395,
		41.495506, 33.512463, 24.479706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165333, 33.283203, 24.951231>,  <41.705711, 32.882328, 24.700481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165333, 33.283203, 24.951231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900440, 33.569588, 24.862816>,  <41.741505, 33.741417, 24.809767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900440, 33.569588, 24.862816>,  <42.165333, 33.283203, 24.951231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900440, 33.569588, 24.862816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297262, 0.521811, 0.799593,
		0.687815, 0.463807, -0.558385,
		-0.662228, 0.715958, -0.221037,
		41.701771, 33.784374, 24.796505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512115, 33.847179, 24.981388>,  <42.165333, 33.283203, 24.951231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512115, 33.847179, 24.981388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123577, 33.928036, 25.031395>,  <41.890453, 33.976551, 25.061399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123577, 33.928036, 25.031395>,  <42.512115, 33.847179, 24.981388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123577, 33.928036, 25.031395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206696, 0.458766, 0.864182,
		0.117333, 0.865258, -0.487402,
		-0.971344, 0.202141, 0.125017,
		41.832172, 33.988678, 25.068901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486050, 34.525188, 25.329620>,  <42.512115, 33.847179, 24.981388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486050, 34.525188, 25.329620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117413, 34.379539, 25.383406>,  <41.896229, 34.292149, 25.415678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117413, 34.379539, 25.383406>,  <42.486050, 34.525188, 25.329620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117413, 34.379539, 25.383406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053041, 0.461303, 0.885656,
		-0.384518, 0.809081, -0.444447,
		-0.921592, -0.364125, 0.134465,
		41.840935, 34.270302, 25.423744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011681, 35.046421, 25.666864>,  <42.486050, 34.525188, 25.329620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011681, 35.046421, 25.666864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841373, 34.692318, 25.741734>,  <41.739189, 34.479855, 25.786655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841373, 34.692318, 25.741734>,  <42.011681, 35.046421, 25.666864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841373, 34.692318, 25.741734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333054, 0.345665, 0.877263,
		-0.841304, 0.311176, -0.442014,
		-0.425772, -0.885260, 0.187171,
		41.713642, 34.426739, 25.797884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415359, 35.224403, 25.940580>,  <42.011681, 35.046421, 25.666864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415359, 35.224403, 25.940580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474670, 34.848721, 26.064447>,  <41.510258, 34.623310, 26.138767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474670, 34.848721, 26.064447>,  <41.415359, 35.224403, 25.940580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474670, 34.848721, 26.064447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511384, 0.195197, 0.836890,
		-0.846463, -0.282454, -0.451354,
		0.148280, -0.939211, 0.309669,
		41.519154, 34.566956, 26.157349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809254, 34.962276, 26.171175>,  <41.415359, 35.224403, 25.940580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809254, 34.962276, 26.171175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064243, 34.719040, 26.360430>,  <41.217236, 34.573097, 26.473982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064243, 34.719040, 26.360430>,  <40.809254, 34.962276, 26.171175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064243, 34.719040, 26.360430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451322, 0.202986, 0.868968,
		-0.624450, -0.767479, -0.145046,
		0.637472, -0.608089, 0.473135,
		41.255486, 34.536613, 26.502371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450901, 34.697605, 26.650240>,  <40.809254, 34.962276, 26.171175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450901, 34.697605, 26.650240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825119, 34.649754, 26.783175>,  <41.049648, 34.621044, 26.862936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825119, 34.649754, 26.783175>,  <40.450901, 34.697605, 26.650240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825119, 34.649754, 26.783175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312516, 0.158109, 0.936662,
		-0.164595, -0.980148, 0.110532,
		0.935544, -0.119627, 0.332336,
		41.105782, 34.613865, 26.882875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314785, 34.297379, 27.220407>,  <40.450901, 34.697605, 26.650240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314785, 34.297379, 27.220407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684113, 34.443745, 27.267025>,  <40.905708, 34.531563, 27.294994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684113, 34.443745, 27.267025>,  <40.314785, 34.297379, 27.220407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684113, 34.443745, 27.267025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163509, 0.099997, 0.981461,
		0.347475, -0.925261, 0.152160,
		0.923324, 0.365912, 0.116542,
		40.961109, 34.553520, 27.301987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583221, 34.038956, 27.898874>,  <40.314785, 34.297379, 27.220407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583221, 34.038956, 27.898874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804726, 34.355824, 27.796261>,  <40.937630, 34.545944, 27.734692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804726, 34.355824, 27.796261>,  <40.583221, 34.038956, 27.898874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804726, 34.355824, 27.796261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100019, 0.369136, 0.923978,
		0.826646, -0.486006, 0.283646,
		0.553762, 0.792172, -0.256535,
		40.970856, 34.593475, 27.719301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230736, 34.142815, 28.418877>,  <40.583221, 34.038956, 27.898874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230736, 34.142815, 28.418877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126091, 34.474724, 28.221680>,  <41.063305, 34.673870, 28.103361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126091, 34.474724, 28.221680>,  <41.230736, 34.142815, 28.418877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126091, 34.474724, 28.221680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178169, 0.460484, 0.869604,
		0.948586, 0.315333, 0.027372,
		-0.261610, 0.829771, -0.492991,
		41.047607, 34.723656, 28.073782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539307, 34.774704, 28.793173>,  <41.230736, 34.142815, 28.418877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539307, 34.774704, 28.793173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289570, 34.979950, 28.557575>,  <41.139729, 35.103100, 28.416218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289570, 34.979950, 28.557575>,  <41.539307, 34.774704, 28.793173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289570, 34.979950, 28.557575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195761, 0.627166, 0.753884,
		0.756227, 0.585979, -0.291115,
		-0.624338, 0.513119, -0.588992,
		41.102268, 35.133884, 28.380878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702583, 35.507374, 28.867912>,  <41.539307, 34.774704, 28.793173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702583, 35.507374, 28.867912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325928, 35.475994, 28.736973>,  <41.099934, 35.457165, 28.658409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325928, 35.475994, 28.736973>,  <41.702583, 35.507374, 28.867912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325928, 35.475994, 28.736973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331738, 0.381274, 0.862890,
		0.057116, 0.921127, -0.385048,
		-0.941641, -0.078451, -0.327350,
		41.043434, 35.452457, 28.638767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469273, 36.146538, 29.052551>,  <41.702583, 35.507374, 28.867912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469273, 36.146538, 29.052551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144272, 35.917576, 29.008383>,  <40.949272, 35.780197, 28.981882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144272, 35.917576, 29.008383>,  <41.469273, 36.146538, 29.052551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144272, 35.917576, 29.008383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419297, 0.442218, 0.792864,
		-0.405012, 0.690501, -0.599311,
		-0.812499, -0.572409, -0.110422,
		40.900520, 35.745853, 28.975256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068039, 36.665794, 29.070494>,  <41.469273, 36.146538, 29.052551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068039, 36.665794, 29.070494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874947, 36.320137, 29.127386>,  <40.759090, 36.112743, 29.161522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874947, 36.320137, 29.127386>,  <41.068039, 36.665794, 29.070494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874947, 36.320137, 29.127386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363970, 0.345674, 0.864890,
		-0.796556, 0.365738, -0.481388,
		-0.482726, -0.864145, 0.142231,
		40.730129, 36.060894, 29.170055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416241, 36.867168, 29.381983>,  <41.068039, 36.665794, 29.070494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416241, 36.867168, 29.381983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397011, 36.476616, 29.466238>,  <40.385471, 36.242283, 29.516790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397011, 36.476616, 29.466238>,  <40.416241, 36.867168, 29.381983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397011, 36.476616, 29.466238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429418, 0.210601, 0.878207,
		-0.901825, -0.048231, -0.429401,
		-0.048076, -0.976382, 0.210637,
		40.382587, 36.183701, 29.529428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732670, 36.768463, 29.568747>,  <40.416241, 36.867168, 29.381983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732670, 36.768463, 29.568747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930382, 36.456059, 29.721434>,  <40.049007, 36.268616, 29.813046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930382, 36.456059, 29.721434>,  <39.732670, 36.768463, 29.568747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930382, 36.456059, 29.721434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447693, 0.147699, 0.881905,
		-0.745158, -0.606799, -0.276649,
		0.494278, -0.781012, 0.381718,
		40.078667, 36.221756, 29.835949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259048, 36.370972, 29.855742>,  <39.732670, 36.768463, 29.568747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259048, 36.370972, 29.855742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591328, 36.277939, 30.058065>,  <39.790695, 36.222118, 30.179461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591328, 36.277939, 30.058065>,  <39.259048, 36.370972, 29.855742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591328, 36.277939, 30.058065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473786, 0.181757, 0.861680,
		-0.292344, -0.955443, 0.040793,
		0.830700, -0.232580, 0.505811,
		39.840538, 36.208164, 30.209808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052853, 36.008068, 30.365013>,  <39.259048, 36.370972, 29.855742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052853, 36.008068, 30.365013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414394, 36.125477, 30.489527>,  <39.631317, 36.195923, 30.564236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414394, 36.125477, 30.489527>,  <39.052853, 36.008068, 30.365013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414394, 36.125477, 30.489527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391053, 0.271585, 0.879385,
		0.173575, -0.916564, 0.360254,
		0.903852, 0.293518, 0.311285,
		39.685551, 36.213531, 30.582912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103542, 35.668690, 30.996014>,  <39.052853, 36.008068, 30.365013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103542, 35.668690, 30.996014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373623, 35.963409, 30.982023>,  <39.535671, 36.140240, 30.973629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373623, 35.963409, 30.982023>,  <39.103542, 35.668690, 30.996014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373623, 35.963409, 30.982023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285856, 0.305081, 0.908412,
		0.679988, -0.603367, 0.416611,
		0.675206, 0.736800, -0.034975,
		39.576183, 36.184448, 30.971531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545265, 35.616241, 31.620165>,  <39.103542, 35.668690, 30.996014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545265, 35.616241, 31.620165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565273, 35.992371, 31.485531>,  <39.577278, 36.218048, 31.404751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565273, 35.992371, 31.485531>,  <39.545265, 35.616241, 31.620165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565273, 35.992371, 31.485531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486551, 0.317255, 0.814013,
		0.872219, 0.123048, 0.473385,
		0.050021, 0.940324, -0.336585,
		39.580280, 36.274467, 31.384556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923061, 36.070374, 32.095219>,  <39.545265, 35.616241, 31.620165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923061, 36.070374, 32.095219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716221, 36.347000, 31.893486>,  <39.592117, 36.512974, 31.772446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716221, 36.347000, 31.893486>,  <39.923061, 36.070374, 32.095219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716221, 36.347000, 31.893486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436093, 0.294142, 0.850472,
		0.736501, 0.659712, 0.149486,
		-0.517097, 0.691563, -0.504332,
		39.561092, 36.554470, 31.742186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938793, 36.610958, 32.493519>,  <39.923061, 36.070374, 32.095219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938793, 36.610958, 32.493519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630436, 36.707874, 32.257889>,  <39.445419, 36.766026, 32.116512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630436, 36.707874, 32.257889>,  <39.938793, 36.610958, 32.493519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630436, 36.707874, 32.257889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476659, 0.394011, 0.785844,
		0.422508, 0.886594, -0.188251,
		-0.770898, 0.242293, -0.589076,
		39.399166, 36.780563, 32.081165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758732, 37.254845, 32.770824>,  <39.938793, 36.610958, 32.493519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758732, 37.254845, 32.770824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444519, 37.139736, 32.551689>,  <39.255989, 37.070671, 32.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444519, 37.139736, 32.551689>,  <39.758732, 37.254845, 32.770824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444519, 37.139736, 32.551689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616651, 0.290031, 0.731863,
		-0.051718, 0.912727, -0.405283,
		-0.785536, -0.287768, -0.547835,
		39.208858, 37.053406, 32.387341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326405, 37.792221, 32.774380>,  <39.758732, 37.254845, 32.770824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326405, 37.792221, 32.774380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088757, 37.483326, 32.684334>,  <38.946167, 37.297989, 32.630306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088757, 37.483326, 32.684334>,  <39.326405, 37.792221, 32.774380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088757, 37.483326, 32.684334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668158, 0.317962, 0.672656,
		-0.447873, 0.550046, -0.704883,
		-0.594118, -0.772237, -0.225111,
		38.910522, 37.251656, 32.616802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711929, 38.058258, 32.710773>,  <39.326405, 37.792221, 32.774380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711929, 38.058258, 32.710773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655907, 37.671932, 32.798031>,  <38.622292, 37.440136, 32.850388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655907, 37.671932, 32.798031>,  <38.711929, 38.058258, 32.710773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655907, 37.671932, 32.798031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771798, 0.244503, 0.586980,
		-0.620251, -0.086154, -0.779658,
		-0.140058, -0.965813, 0.218147,
		38.613888, 37.382187, 32.863476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086044, 38.097336, 32.996613>,  <38.711929, 38.058258, 32.710773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086044, 38.097336, 32.996613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141399, 37.714096, 33.096928>,  <38.174614, 37.484154, 33.157116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141399, 37.714096, 33.096928>,  <38.086044, 38.097336, 32.996613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141399, 37.714096, 33.096928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783355, 0.049042, 0.619637,
		-0.605973, -0.282204, -0.743745,
		0.138389, -0.958100, 0.250785,
		38.182915, 37.426666, 33.172165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404858, 37.785217, 32.929710>,  <38.086044, 38.097336, 32.996613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404858, 37.785217, 32.929710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646305, 37.588963, 33.181084>,  <37.791172, 37.471210, 33.331905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646305, 37.588963, 33.181084>,  <37.404858, 37.785217, 32.929710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646305, 37.588963, 33.181084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667212, 0.120620, 0.735037,
		-0.436436, -0.862977, -0.254549,
		0.603616, -0.490635, 0.628431,
		37.827389, 37.441772, 33.369614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970509, 37.473320, 33.304455>,  <37.404858, 37.785217, 32.929710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970509, 37.473320, 33.304455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301350, 37.435413, 33.526054>,  <37.499855, 37.412670, 33.659016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301350, 37.435413, 33.526054>,  <36.970509, 37.473320, 33.304455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301350, 37.435413, 33.526054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559778, -0.050437, 0.827106,
		-0.050437, -0.994221, -0.094764,
		-0.827106, 0.094764, -0.553999,
		37.549480, 37.406982, 33.692253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771393, 36.888412, 33.730289>,  <36.970509, 37.473320, 33.304455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771393, 36.888412, 33.730289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055309, 37.122921, 33.886486>,  <37.225658, 37.263626, 33.980206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055309, 37.122921, 33.886486>,  <36.771393, 36.888412, 33.730289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055309, 37.122921, 33.886486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499505, 0.028032, 0.865857,
		0.496680, -0.809630, 0.312742,
		0.709791, 0.586271, 0.390491,
		37.268246, 37.298801, 34.003632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749573, 36.752216, 34.368057>,  <36.771393, 36.888412, 33.730289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749573, 36.752216, 34.368057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997509, 37.061569, 34.421234>,  <37.146271, 37.247181, 34.453140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997509, 37.061569, 34.421234>,  <36.749573, 36.752216, 34.368057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997509, 37.061569, 34.421234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309222, 0.085008, 0.947183,
		0.721234, -0.628213, 0.291839,
		0.619841, 0.773383, 0.132947,
		37.183460, 37.293583, 34.461117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265049, 36.632504, 35.012962>,  <36.749573, 36.752216, 34.368057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265049, 36.632504, 35.012962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184608, 37.021366, 34.964848>,  <37.136345, 37.254684, 34.935978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184608, 37.021366, 34.964848>,  <37.265049, 36.632504, 35.012962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184608, 37.021366, 34.964848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220120, 0.074805, 0.972600,
		0.954519, 0.222065, 0.198948,
		-0.201098, 0.972158, -0.120284,
		37.124279, 37.313015, 34.928761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658363, 37.059277, 35.616772>,  <37.265049, 36.632504, 35.012962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658363, 37.059277, 35.616772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367424, 37.308788, 35.502319>,  <37.192860, 37.458496, 35.433647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367424, 37.308788, 35.502319>,  <37.658363, 37.059277, 35.616772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367424, 37.308788, 35.502319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094168, 0.322274, 0.941951,
		0.679778, 0.712070, -0.175666,
		-0.727347, 0.623776, -0.286129,
		37.149220, 37.495922, 35.416481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170097, 36.609291, 35.276112>,  <37.658363, 37.059277, 35.616772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170097, 36.609291, 35.276112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406479, 36.514797, 35.584648>,  <38.548309, 36.458103, 35.769772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406479, 36.514797, 35.584648>,  <38.170097, 36.609291, 35.276112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406479, 36.514797, 35.584648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740881, -0.219369, -0.634800,
		0.319168, 0.946611, 0.045382,
		0.590954, -0.236231, 0.771342,
		38.583763, 36.443928, 35.816051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760185, 36.861671, 35.067234>,  <38.170097, 36.609291, 35.276112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760185, 36.861671, 35.067234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858627, 36.599709, 35.353039>,  <38.917694, 36.442532, 35.524521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858627, 36.599709, 35.353039>,  <38.760185, 36.861671, 35.067234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858627, 36.599709, 35.353039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795411, -0.284779, -0.534997,
		0.553852, 0.699995, 0.450837,
		0.246106, -0.654910, 0.714510,
		38.932461, 36.403236, 35.567390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388638, 37.084579, 35.452484>,  <38.760185, 36.861671, 35.067234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388638, 37.084579, 35.452484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339268, 36.687660, 35.456749>,  <39.309647, 36.449509, 35.459309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339268, 36.687660, 35.456749>,  <39.388638, 37.084579, 35.452484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339268, 36.687660, 35.456749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924182, -0.118849, -0.362992,
		0.361463, -0.034948, 0.931731,
		-0.123422, -0.992297, 0.010661,
		39.302242, 36.389973, 35.459946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063274, 36.831165, 35.473381>,  <39.388638, 37.084579, 35.452484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063274, 36.831165, 35.473381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858646, 36.502949, 35.371395>,  <39.735870, 36.306019, 35.310204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858646, 36.502949, 35.371395>,  <40.063274, 36.831165, 35.473381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858646, 36.502949, 35.371395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788953, -0.331024, -0.517665,
		0.340366, -0.465977, 0.816711,
		-0.511571, -0.820542, -0.254964,
		39.705173, 36.256786, 35.294907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540417, 36.337132, 35.595310>,  <40.063274, 36.831165, 35.473381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540417, 36.337132, 35.595310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267651, 36.176392, 35.350849>,  <40.103992, 36.079948, 35.204170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267651, 36.176392, 35.350849>,  <40.540417, 36.337132, 35.595310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267651, 36.176392, 35.350849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731030, -0.346712, -0.587695,
		0.024272, -0.847529, 0.530194,
		-0.681913, -0.401852, -0.611154,
		40.063076, 36.055836, 35.167503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852764, 35.667770, 35.528931>,  <40.540417, 36.337132, 35.595310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852764, 35.667770, 35.528931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607052, 35.762295, 35.227783>,  <40.459625, 35.819012, 35.047092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607052, 35.762295, 35.227783>,  <40.852764, 35.667770, 35.528931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607052, 35.762295, 35.227783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659985, -0.369112, -0.654351,
		-0.432528, -0.898839, 0.070772,
		-0.614279, 0.236317, -0.752872,
		40.422768, 35.833191, 35.001923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803150, 35.039810, 35.168629>,  <40.852764, 35.667770, 35.528931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803150, 35.039810, 35.168629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702789, 35.344307, 34.929443>,  <40.642574, 35.527004, 34.785931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702789, 35.344307, 34.929443>,  <40.803150, 35.039810, 35.168629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702789, 35.344307, 34.929443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684858, -0.296966, -0.665417,
		-0.684118, -0.576474, -0.446834,
		-0.250901, 0.761242, -0.597963,
		40.627518, 35.572681, 34.750053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507832, 34.695984, 34.570976>,  <40.803150, 35.039810, 35.168629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507832, 34.695984, 34.570976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600269, 35.067776, 34.455975>,  <40.655731, 35.290852, 34.386974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600269, 35.067776, 34.455975>,  <40.507832, 34.695984, 34.570976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600269, 35.067776, 34.455975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613404, -0.368565, -0.698495,
		-0.755202, -0.014936, -0.655322,
		0.231096, 0.929482, -0.287503,
		40.669598, 35.346619, 34.369724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528992, 34.699718, 33.840721>,  <40.507832, 34.695984, 34.570976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528992, 34.699718, 33.840721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718533, 35.042088, 33.923527>,  <40.832256, 35.247509, 33.973209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718533, 35.042088, 33.923527>,  <40.528992, 34.699718, 33.840721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718533, 35.042088, 33.923527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565903, -0.115869, -0.816289,
		-0.674696, 0.503951, -0.539276,
		0.473855, 0.855925, 0.207011,
		40.860687, 35.298866, 33.985630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430508, 35.061161, 33.264477>,  <40.528992, 34.699718, 33.840721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430508, 35.061161, 33.264477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772785, 35.181915, 33.432594>,  <40.978153, 35.254368, 33.533466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772785, 35.181915, 33.432594>,  <40.430508, 35.061161, 33.264477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772785, 35.181915, 33.432594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456824, -0.059131, -0.887590,
		-0.243097, 0.951509, -0.188506,
		0.855696, 0.301884, 0.420297,
		41.029495, 35.272480, 33.558685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741070, 35.540333, 32.753109>,  <40.430508, 35.061161, 33.264477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741070, 35.540333, 32.753109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041500, 35.432484, 32.994167>,  <41.221760, 35.367775, 33.138802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041500, 35.432484, 32.994167>,  <40.741070, 35.540333, 32.753109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041500, 35.432484, 32.994167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590724, -0.133185, -0.795806,
		0.294834, 0.953710, 0.059243,
		0.751078, -0.269627, 0.602647,
		41.266823, 35.351597, 33.174961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229301, 35.973782, 32.520069>,  <40.741070, 35.540333, 32.753109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229301, 35.973782, 32.520069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434727, 35.695530, 32.721008>,  <41.557983, 35.528580, 32.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434727, 35.695530, 32.721008>,  <41.229301, 35.973782, 32.520069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434727, 35.695530, 32.721008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630139, -0.091603, -0.771060,
		0.582388, 0.712538, 0.391299,
		0.513565, -0.695628, 0.502346,
		41.588795, 35.486843, 32.871712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976711, 36.175919, 32.377235>,  <41.229301, 35.973782, 32.520069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976711, 36.175919, 32.377235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973240, 35.801449, 32.517807>,  <41.971157, 35.576767, 32.602150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973240, 35.801449, 32.517807>,  <41.976711, 36.175919, 32.377235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973240, 35.801449, 32.517807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646679, -0.273311, -0.712115,
		0.762713, 0.221083, 0.607775,
		-0.008675, -0.936175, 0.351428,
		41.970638, 35.520596, 32.623234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606979, 35.970482, 32.395615>,  <41.976711, 36.175919, 32.377235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606979, 35.970482, 32.395615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426502, 35.613670, 32.384964>,  <42.318214, 35.399582, 32.378574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426502, 35.613670, 32.384964>,  <42.606979, 35.970482, 32.395615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426502, 35.613670, 32.384964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621587, -0.292711, -0.726602,
		0.640356, -0.344388, 0.686543,
		-0.451191, -0.892030, -0.026628,
		42.291145, 35.346062, 32.376976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129761, 35.340519, 32.427116>,  <42.606979, 35.970482, 32.395615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129761, 35.340519, 32.427116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794052, 35.238445, 32.235073>,  <42.592625, 35.177200, 32.119846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794052, 35.238445, 32.235073>,  <43.129761, 35.340519, 32.427116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794052, 35.238445, 32.235073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542057, -0.461485, -0.702287,
		-0.042349, -0.849655, 0.525636,
		-0.839274, -0.255183, -0.480105,
		42.542271, 35.161892, 32.091042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285175, 34.824306, 32.046242>,  <43.129761, 35.340519, 32.427116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285175, 34.824306, 32.046242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923943, 34.876389, 31.882536>,  <42.707203, 34.907639, 31.784313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923943, 34.876389, 31.882536>,  <43.285175, 34.824306, 32.046242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923943, 34.876389, 31.882536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336994, -0.375914, -0.863206,
		-0.266238, -0.917462, 0.295603,
		-0.903079, 0.130202, -0.409261,
		42.653019, 34.915451, 31.759758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080811, 34.129646, 31.671886>,  <43.285175, 34.824306, 32.046242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080811, 34.129646, 31.671886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881325, 34.445396, 31.528683>,  <42.761635, 34.634846, 31.442760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881325, 34.445396, 31.528683>,  <43.080811, 34.129646, 31.671886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881325, 34.445396, 31.528683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098069, -0.359001, -0.928171,
		-0.861203, -0.497998, 0.101624,
		-0.498710, 0.789377, -0.358011,
		42.731712, 34.682209, 31.421280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430443, 33.851131, 31.174860>,  <43.080811, 34.129646, 31.671886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430443, 33.851131, 31.174860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553020, 34.215534, 31.064476>,  <42.626568, 34.434177, 30.998245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553020, 34.215534, 31.064476>,  <42.430443, 33.851131, 31.174860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553020, 34.215534, 31.064476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059676, -0.307722, -0.949603,
		-0.950016, 0.274532, -0.148665,
		0.306443, 0.911010, -0.275958,
		42.644955, 34.488838, 30.981689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107113, 33.966866, 30.605022>,  <42.430443, 33.851131, 31.174860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107113, 33.966866, 30.605022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368370, 34.266312, 30.559464>,  <42.525124, 34.445980, 30.532127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368370, 34.266312, 30.559464>,  <42.107113, 33.966866, 30.605022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368370, 34.266312, 30.559464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095558, -0.230695, -0.968323,
		-0.751180, 0.621570, -0.222213,
		0.653144, 0.748619, -0.113897,
		42.564312, 34.490898, 30.525293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950348, 34.222107, 29.980448>,  <42.107113, 33.966866, 30.605022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950348, 34.222107, 29.980448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316147, 34.365105, 30.056229>,  <42.535625, 34.450905, 30.101696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316147, 34.365105, 30.056229>,  <41.950348, 34.222107, 29.980448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316147, 34.365105, 30.056229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270784, -0.192885, -0.943118,
		-0.300620, 0.913778, -0.273198,
		0.914496, 0.357498, 0.189451,
		42.590496, 34.472355, 30.113064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135296, 34.712700, 29.496675>,  <41.950348, 34.222107, 29.980448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135296, 34.712700, 29.496675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490269, 34.574924, 29.619196>,  <42.703251, 34.492260, 29.692709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490269, 34.574924, 29.619196>,  <42.135296, 34.712700, 29.496675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490269, 34.574924, 29.619196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269173, -0.152185, -0.950992,
		0.374176, 0.926391, -0.042340,
		0.887434, -0.344441, 0.306303,
		42.756500, 34.471592, 29.711086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639091, 35.004959, 28.909674>,  <42.135296, 34.712700, 29.496675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639091, 35.004959, 28.909674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850052, 34.725574, 29.103165>,  <42.976627, 34.557941, 29.219259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850052, 34.725574, 29.103165>,  <42.639091, 35.004959, 28.909674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850052, 34.725574, 29.103165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470230, -0.234231, -0.850894,
		0.707625, 0.676226, 0.204905,
		0.527401, -0.698466, 0.483729,
		43.008270, 34.516033, 29.248283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325504, 34.963871, 28.566839>,  <42.639091, 35.004959, 28.909674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325504, 34.963871, 28.566839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307751, 34.608986, 28.750528>,  <43.297100, 34.396057, 28.860743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307751, 34.608986, 28.750528>,  <43.325504, 34.963871, 28.566839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307751, 34.608986, 28.750528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311314, -0.449072, -0.837507,
		0.949270, 0.105791, 0.296133,
		-0.044384, -0.887211, 0.459225,
		43.294434, 34.342823, 28.888296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963894, 34.631573, 28.385931>,  <43.325504, 34.963871, 28.566839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963894, 34.631573, 28.385931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717472, 34.338970, 28.502811>,  <43.569618, 34.163410, 28.572939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717472, 34.338970, 28.502811>,  <43.963894, 34.631573, 28.385931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717472, 34.338970, 28.502811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266912, -0.542861, -0.796279,
		0.741104, -0.412560, 0.529678,
		-0.616054, -0.731503, 0.292199,
		43.532658, 34.119518, 28.590471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326584, 34.001472, 28.513577>,  <43.963894, 34.631573, 28.385931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326584, 34.001472, 28.513577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950695, 33.910519, 28.411419>,  <43.725163, 33.855946, 28.350124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950695, 33.910519, 28.411419>,  <44.326584, 34.001472, 28.513577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950695, 33.910519, 28.411419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341453, -0.583813, -0.736595,
		0.018387, -0.779397, 0.626260,
		-0.939719, -0.227382, -0.255393,
		43.668777, 33.842304, 28.334801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355072, 33.330826, 28.462765>,  <44.326584, 34.001472, 28.513577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355072, 33.330826, 28.462765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033630, 33.447262, 28.255117>,  <43.840763, 33.517124, 28.130529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033630, 33.447262, 28.255117>,  <44.355072, 33.330826, 28.462765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033630, 33.447262, 28.255117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182297, -0.709918, -0.680282,
		-0.566554, -0.641313, 0.517430,
		-0.803607, 0.291091, -0.519117,
		43.792549, 33.534588, 28.099382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159676, 32.730072, 28.214865>,  <44.355072, 33.330826, 28.462765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159676, 32.730072, 28.214865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948959, 32.973122, 27.977114>,  <43.822529, 33.118954, 27.834463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948959, 32.973122, 27.977114>,  <44.159676, 32.730072, 28.214865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948959, 32.973122, 27.977114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114145, -0.642366, -0.757850,
		-0.842296, -0.467073, 0.269034,
		-0.526790, 0.607626, -0.594377,
		43.790924, 33.155411, 27.798801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751411, 32.242325, 27.761200>,  <44.159676, 32.730072, 28.214865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751411, 32.242325, 27.761200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743752, 32.599773, 27.581833>,  <43.739155, 32.814243, 27.474213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743752, 32.599773, 27.581833>,  <43.751411, 32.242325, 27.761200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743752, 32.599773, 27.581833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009163, -0.448639, -0.893666,
		-0.999775, -0.013001, 0.016778,
		-0.019146, 0.893618, -0.448419,
		43.738007, 32.867859, 27.447308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130192, 32.259933, 27.273533>,  <43.751411, 32.242325, 27.761200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130192, 32.259933, 27.273533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407330, 32.513672, 27.136379>,  <43.573612, 32.665916, 27.054087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407330, 32.513672, 27.136379>,  <43.130192, 32.259933, 27.273533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407330, 32.513672, 27.136379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178169, -0.310168, -0.933837,
		-0.698732, 0.708093, -0.101875,
		0.692842, 0.634351, -0.342885,
		43.615181, 32.703976, 27.033514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779881, 32.519619, 26.671535>,  <43.130192, 32.259933, 27.273533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779881, 32.519619, 26.671535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162716, 32.617958, 26.610163>,  <43.392418, 32.676960, 26.573339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162716, 32.617958, 26.610163>,  <42.779881, 32.519619, 26.671535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162716, 32.617958, 26.610163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109818, -0.182275, -0.977096,
		-0.268180, 0.952017, -0.147455,
		0.957089, 0.245844, -0.153431,
		43.449844, 32.691711, 26.564133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767822, 32.815014, 25.975977>,  <42.779881, 32.519619, 26.671535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767822, 32.815014, 25.975977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155922, 32.730122, 26.022572>,  <43.388783, 32.679188, 26.050529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155922, 32.730122, 26.022572>,  <42.767822, 32.815014, 25.975977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155922, 32.730122, 26.022572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052892, -0.283714, -0.957449,
		0.236251, 0.935128, -0.264049,
		0.970252, -0.212232, 0.116489,
		43.446999, 32.666451, 26.057518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119362, 32.952862, 25.327507>,  <42.767822, 32.815014, 25.975977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119362, 32.952862, 25.327507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360100, 32.698723, 25.521051>,  <43.504543, 32.546242, 25.637178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360100, 32.698723, 25.521051>,  <43.119362, 32.952862, 25.327507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360100, 32.698723, 25.521051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148884, -0.505994, -0.849590,
		0.784615, 0.583358, -0.209936,
		0.601842, -0.635345, 0.483863,
		43.540653, 32.508118, 25.666210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510891, 32.822712, 24.862919>,  <43.119362, 32.952862, 25.327507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510891, 32.822712, 24.862919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612724, 32.532879, 25.119095>,  <43.673824, 32.358978, 25.272800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612724, 32.532879, 25.119095>,  <43.510891, 32.822712, 24.862919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612724, 32.532879, 25.119095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379367, -0.534344, -0.755353,
		0.889532, 0.435263, 0.138848,
		0.254585, -0.724585, 0.640440,
		43.689098, 32.315502, 25.311228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169720, 32.589237, 24.606817>,  <43.510891, 32.822712, 24.862919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169720, 32.589237, 24.606817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000751, 32.295757, 24.819702>,  <43.899372, 32.119671, 24.947433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000751, 32.295757, 24.819702>,  <44.169720, 32.589237, 24.606817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000751, 32.295757, 24.819702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109116, -0.624064, -0.773717,
		0.899810, -0.268758, 0.343673,
		-0.422417, -0.733698, 0.532213,
		43.874027, 32.075649, 24.979366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653221, 32.028629, 24.517990>,  <44.169720, 32.589237, 24.606817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653221, 32.028629, 24.517990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298836, 31.868834, 24.612209>,  <44.086205, 31.772957, 24.668741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298836, 31.868834, 24.612209>,  <44.653221, 32.028629, 24.517990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298836, 31.868834, 24.612209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217451, -0.806459, -0.549853,
		0.409617, -0.435929, 0.801361,
		-0.885962, -0.399486, 0.235547,
		44.033047, 31.748987, 24.682873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817917, 31.355377, 24.475952>,  <44.653221, 32.028629, 24.517990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817917, 31.355377, 24.475952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418007, 31.358629, 24.468155>,  <44.178059, 31.360580, 24.463476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418007, 31.358629, 24.468155>,  <44.817917, 31.355377, 24.475952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418007, 31.358629, 24.468155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004030, -0.832548, -0.553938,
		-0.020732, -0.553893, 0.832330,
		-0.999777, 0.008130, -0.019493,
		44.118073, 31.361069, 24.462307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664501, 30.700529, 24.682117>,  <44.817917, 31.355377, 24.475952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664501, 30.700529, 24.682117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374649, 30.837952, 24.443161>,  <44.200737, 30.920404, 24.299788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374649, 30.837952, 24.443161>,  <44.664501, 30.700529, 24.682117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374649, 30.837952, 24.443161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024176, -0.853665, -0.520262,
		-0.688711, -0.391441, 0.610288,
		-0.724633, 0.343556, -0.597391,
		44.157261, 30.941019, 24.263943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379032, 30.022659, 24.446375>,  <44.664501, 30.700529, 24.682117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379032, 30.022659, 24.446375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192638, 30.296209, 24.221813>,  <44.080803, 30.460339, 24.087076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192638, 30.296209, 24.221813>,  <44.379032, 30.022659, 24.446375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192638, 30.296209, 24.221813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006000, -0.632047, -0.774907,
		-0.884774, -0.364462, 0.290420,
		-0.465982, 0.683875, -0.561405,
		44.052845, 30.501371, 24.053392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454483, 29.266644, 24.321239>,  <44.379032, 30.022659, 24.446375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454483, 29.266644, 24.321239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556896, 28.940950, 24.529652>,  <44.618343, 28.745535, 24.654699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556896, 28.940950, 24.529652>,  <44.454483, 29.266644, 24.321239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556896, 28.940950, 24.529652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472043, 0.575672, 0.667666,
		-0.843578, 0.075005, 0.531743,
		0.256031, -0.814233, 0.521030,
		44.633705, 28.696680, 24.685961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199516, 29.381035, 25.006468>,  <44.454483, 29.266644, 24.321239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199516, 29.381035, 25.006468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446232, 29.077776, 25.091118>,  <44.594261, 28.895821, 25.141909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446232, 29.077776, 25.091118>,  <44.199516, 29.381035, 25.006468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446232, 29.077776, 25.091118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233856, 0.433220, 0.870420,
		-0.751586, -0.487376, 0.444503,
		0.616790, -0.758146, 0.211626,
		44.631268, 28.850332, 25.154606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027081, 29.178085, 25.634859>,  <44.199516, 29.381035, 25.006468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027081, 29.178085, 25.634859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408939, 29.067856, 25.589769>,  <44.638054, 29.001719, 25.562716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408939, 29.067856, 25.589769>,  <44.027081, 29.178085, 25.634859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408939, 29.067856, 25.589769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199742, 0.311999, 0.928849,
		-0.220795, -0.909239, 0.352893,
		0.954648, -0.275573, -0.112725,
		44.695335, 28.985184, 25.555952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232437, 28.865767, 26.206076>,  <44.027081, 29.178085, 25.634859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232437, 28.865767, 26.206076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599243, 28.960466, 26.077682>,  <44.819328, 29.017286, 26.000647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599243, 28.960466, 26.077682>,  <44.232437, 28.865767, 26.206076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599243, 28.960466, 26.077682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210658, 0.395877, 0.893815,
		0.338678, -0.887261, 0.313153,
		0.917017, 0.236747, -0.320983,
		44.874348, 29.031490, 25.981388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680229, 28.521387, 26.736485>,  <44.232437, 28.865767, 26.206076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680229, 28.521387, 26.736485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905102, 28.802620, 26.562300>,  <45.040024, 28.971359, 26.457788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905102, 28.802620, 26.562300>,  <44.680229, 28.521387, 26.736485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905102, 28.802620, 26.562300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175534, 0.413107, 0.893605,
		0.808170, -0.578807, 0.108827,
		0.562182, 0.703082, -0.435461,
		45.073757, 29.013544, 26.431662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292572, 28.592682, 27.084770>,  <44.680229, 28.521387, 26.736485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292572, 28.592682, 27.084770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253277, 28.939869, 26.890047>,  <45.229698, 29.148182, 26.773212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253277, 28.939869, 26.890047>,  <45.292572, 28.592682, 27.084770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.253277, 28.939869, 26.890047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214007, 0.496156, 0.841446,
		0.971880, -0.021519, -0.234492,
		-0.098238, 0.867967, -0.486809,
		45.223804, 29.200258, 26.744005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887035, 29.061714, 27.308014>,  <45.292572, 28.592682, 27.084770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887035, 29.061714, 27.308014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611816, 29.312363, 27.161623>,  <45.446686, 29.462751, 27.073788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611816, 29.312363, 27.161623>,  <45.887035, 29.061714, 27.308014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611816, 29.312363, 27.161623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204048, 0.651047, 0.731097,
		0.696390, 0.428350, -0.575810,
		-0.688044, 0.626621, -0.365979,
		45.405403, 29.500349, 27.051828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107773, 29.750418, 27.523552>,  <45.887035, 29.061714, 27.308014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107773, 29.750418, 27.523552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731415, 29.826702, 27.411592>,  <45.505600, 29.872473, 27.344416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731415, 29.826702, 27.411592>,  <46.107773, 29.750418, 27.523552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731415, 29.826702, 27.411592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015515, 0.801270, 0.598102,
		0.338341, 0.567094, -0.750952,
		-0.940896, 0.190711, -0.279901,
		45.449146, 29.883915, 27.327621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029411, 30.511999, 27.287655>,  <46.107773, 29.750418, 27.523552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029411, 30.511999, 27.287655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686146, 30.372082, 27.437962>,  <45.480186, 30.288132, 27.528147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686146, 30.372082, 27.437962>,  <46.029411, 30.511999, 27.287655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686146, 30.372082, 27.437962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025179, 0.702396, 0.711341,
		-0.512759, 0.619908, -0.593963,
		-0.858163, -0.349792, 0.375768,
		45.428696, 30.267145, 27.550692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601902, 31.137844, 27.548239>,  <46.029411, 30.511999, 27.287655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601902, 31.137844, 27.548239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423347, 30.820793, 27.714363>,  <45.316216, 30.630562, 27.814037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423347, 30.820793, 27.714363>,  <45.601902, 31.137844, 27.548239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423347, 30.820793, 27.714363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189823, 0.537429, 0.821667,
		-0.874476, 0.287943, -0.390359,
		-0.446383, -0.792628, 0.415311,
		45.289433, 30.583004, 27.838957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796638, 31.331057, 27.647892>,  <45.601902, 31.137844, 27.548239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796638, 31.331057, 27.647892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879215, 31.019711, 27.885052>,  <44.928761, 30.832903, 28.027348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879215, 31.019711, 27.885052>,  <44.796638, 31.331057, 27.647892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879215, 31.019711, 27.885052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331285, 0.514562, 0.790871,
		-0.920670, -0.359685, -0.151635,
		0.206439, -0.778365, 0.592900,
		44.941147, 30.786201, 28.062922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246841, 31.262236, 28.044199>,  <44.796638, 31.331057, 27.647892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246841, 31.262236, 28.044199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521893, 31.075481, 28.266619>,  <44.686924, 30.963428, 28.400070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521893, 31.075481, 28.266619>,  <44.246841, 31.262236, 28.044199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521893, 31.075481, 28.266619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331857, 0.479063, 0.812631,
		-0.645789, -0.743314, 0.174476,
		0.687625, -0.466887, 0.556047,
		44.728180, 30.935415, 28.433434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884132, 31.129526, 28.626854>,  <44.246841, 31.262236, 28.044199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884132, 31.129526, 28.626854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272308, 31.120407, 28.722965>,  <44.505215, 31.114935, 28.780632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272308, 31.120407, 28.722965>,  <43.884132, 31.129526, 28.626854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272308, 31.120407, 28.722965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202278, 0.466283, 0.861199,
		-0.131673, -0.884342, 0.447886,
		0.970436, -0.022799, 0.240280,
		44.563438, 31.113567, 28.795050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880630, 30.821409, 29.275070>,  <43.884132, 31.129526, 28.626854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880630, 30.821409, 29.275070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215794, 31.032938, 29.221029>,  <44.416893, 31.159855, 29.188604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215794, 31.032938, 29.221029>,  <43.880630, 30.821409, 29.275070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215794, 31.032938, 29.221029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218698, 0.552079, 0.804599,
		0.500072, -0.644639, 0.578246,
		0.837914, 0.528818, -0.135098,
		44.467167, 31.191584, 29.180500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271900, 30.737877, 29.856909>,  <43.880630, 30.821409, 29.275070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271900, 30.737877, 29.856909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412025, 31.077917, 29.699625>,  <44.496101, 31.281940, 29.605255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412025, 31.077917, 29.699625>,  <44.271900, 30.737877, 29.856909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412025, 31.077917, 29.699625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216108, 0.481845, 0.849190,
		0.911362, -0.212502, 0.352508,
		0.350308, 0.850100, -0.393212,
		44.517117, 31.332947, 29.581661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721584, 31.075705, 30.392815>,  <44.271900, 30.737877, 29.856909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721584, 31.075705, 30.392815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612259, 31.384050, 30.162661>,  <44.546661, 31.569057, 30.024569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612259, 31.384050, 30.162661>,  <44.721584, 31.075705, 30.392815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612259, 31.384050, 30.162661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133843, 0.561864, 0.816330,
		0.952567, 0.300127, -0.050391,
		-0.273315, 0.770865, -0.575383,
		44.530266, 31.615311, 29.990046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083248, 31.567059, 30.764479>,  <44.721584, 31.075705, 30.392815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083248, 31.567059, 30.764479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811676, 31.724928, 30.516838>,  <44.648731, 31.819649, 30.368254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811676, 31.724928, 30.516838>,  <45.083248, 31.567059, 30.764479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811676, 31.724928, 30.516838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302837, 0.617621, 0.725833,
		0.668836, 0.680278, -0.299801,
		-0.678931, 0.394673, -0.619100,
		44.607998, 31.843330, 30.331108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180321, 32.373871, 30.659641>,  <45.083248, 31.567059, 30.764479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180321, 32.373871, 30.659641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796192, 32.292385, 30.583439>,  <44.565716, 32.243496, 30.537718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796192, 32.292385, 30.583439>,  <45.180321, 32.373871, 30.659641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796192, 32.292385, 30.583439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277410, 0.626835, 0.728095,
		-0.028905, 0.752050, -0.658472,
		-0.960317, -0.203712, -0.190508,
		44.508099, 32.231270, 30.526287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797272, 32.959965, 30.788124>,  <45.180321, 32.373871, 30.659641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797272, 32.959965, 30.788124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501656, 32.693539, 30.747774>,  <44.324287, 32.533684, 30.723564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501656, 32.693539, 30.747774>,  <44.797272, 32.959965, 30.788124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501656, 32.693539, 30.747774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544008, 0.501752, 0.672533,
		-0.397336, 0.551907, -0.733160,
		-0.739040, -0.666066, -0.100877,
		44.279945, 32.493717, 30.717510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152374, 33.320122, 30.718187>,  <44.797272, 32.959965, 30.788124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152374, 33.320122, 30.718187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078060, 32.960907, 30.877691>,  <44.033474, 32.745377, 30.973394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078060, 32.960907, 30.877691>,  <44.152374, 33.320122, 30.718187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078060, 32.960907, 30.877691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600844, 0.424939, 0.677063,
		-0.777478, -0.113808, -0.618527,
		-0.185781, -0.898039, 0.398761,
		44.022327, 32.691494, 30.997320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496994, 33.355808, 30.800600>,  <44.152374, 33.320122, 30.718187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496994, 33.355808, 30.800600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554691, 33.035812, 31.033566>,  <43.589310, 32.843815, 31.173344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554691, 33.035812, 31.033566>,  <43.496994, 33.355808, 30.800600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554691, 33.035812, 31.033566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554440, 0.422166, 0.717197,
		-0.819628, -0.426362, -0.382654,
		0.144242, -0.799994, 0.582412,
		43.597965, 32.795815, 31.208288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803417, 33.160500, 31.108196>,  <43.496994, 33.355808, 30.800600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803417, 33.160500, 31.108196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088745, 33.004852, 31.341354>,  <43.259941, 32.911465, 31.481249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088745, 33.004852, 31.341354>,  <42.803417, 33.160500, 31.108196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088745, 33.004852, 31.341354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458963, 0.369194, 0.808115,
		-0.529650, -0.843970, 0.084764,
		0.713319, -0.389115, 0.582894,
		43.302742, 32.888119, 31.516222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425850, 32.806149, 31.771587>,  <42.803417, 33.160500, 31.108196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425850, 32.806149, 31.771587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800224, 32.829041, 31.910585>,  <43.024849, 32.842773, 31.993984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800224, 32.829041, 31.910585>,  <42.425850, 32.806149, 31.771587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800224, 32.829041, 31.910585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344374, 0.355259, 0.869021,
		-0.073722, -0.933014, 0.352206,
		0.935933, 0.057225, 0.347497,
		43.081005, 32.846207, 32.014835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493954, 32.452785, 32.426300>,  <42.425850, 32.806149, 31.771587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493954, 32.452785, 32.426300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797550, 32.711327, 32.394917>,  <42.979710, 32.866451, 32.376087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797550, 32.711327, 32.394917>,  <42.493954, 32.452785, 32.426300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797550, 32.711327, 32.394917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158244, 0.300007, 0.940720,
		0.631576, -0.701585, 0.329985,
		0.758993, 0.646355, -0.078455,
		43.025249, 32.905231, 32.371380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981667, 32.279896, 33.100014>,  <42.493954, 32.452785, 32.426300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981667, 32.279896, 33.100014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033642, 32.651375, 32.961082>,  <43.064827, 32.874264, 32.877724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033642, 32.651375, 32.961082>,  <42.981667, 32.279896, 33.100014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033642, 32.651375, 32.961082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060681, 0.357086, 0.932098,
		0.989664, -0.100038, 0.102752,
		0.129936, 0.928699, -0.347325,
		43.072624, 32.929985, 32.856884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564049, 32.508629, 33.546688>,  <42.981667, 32.279896, 33.100014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564049, 32.508629, 33.546688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392719, 32.828125, 33.377666>,  <43.289921, 33.019825, 33.276253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392719, 32.828125, 33.377666>,  <43.564049, 32.508629, 33.546688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392719, 32.828125, 33.377666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130592, 0.407991, 0.903598,
		0.894138, 0.442215, -0.070443,
		-0.428325, 0.798742, -0.422550,
		43.264221, 33.067749, 33.250900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890274, 33.123146, 33.752975>,  <43.564049, 32.508629, 33.546688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890274, 33.123146, 33.752975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507393, 33.199791, 33.666222>,  <43.277664, 33.245777, 33.614170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507393, 33.199791, 33.666222>,  <43.890274, 33.123146, 33.752975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507393, 33.199791, 33.666222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076527, 0.555167, 0.828211,
		0.279107, 0.809366, -0.516745,
		-0.957206, 0.191615, -0.216889,
		43.220230, 33.257275, 33.601154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735001, 33.893494, 33.841511>,  <43.890274, 33.123146, 33.752975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735001, 33.893494, 33.841511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370495, 33.729694, 33.859001>,  <43.151791, 33.631416, 33.869495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370495, 33.729694, 33.859001>,  <43.735001, 33.893494, 33.841511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370495, 33.729694, 33.859001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285710, 0.705106, 0.648995,
		-0.296593, 0.578912, -0.759535,
		-0.911264, -0.409494, 0.043729,
		43.097115, 33.606846, 33.872120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286987, 34.452431, 34.001957>,  <43.735001, 33.893494, 33.841511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286987, 34.452431, 34.001957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097744, 34.117352, 34.111088>,  <42.984200, 33.916306, 34.176567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097744, 34.117352, 34.111088>,  <43.286987, 34.452431, 34.001957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097744, 34.117352, 34.111088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208277, 0.407251, 0.889251,
		-0.856033, 0.363885, -0.367145,
		-0.473105, -0.837696, 0.272832,
		42.955814, 33.866043, 34.192936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618679, 34.671398, 34.334827>,  <43.286987, 34.452431, 34.001957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618679, 34.671398, 34.334827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679710, 34.294285, 34.453411>,  <42.716328, 34.068016, 34.524563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679710, 34.294285, 34.453411>,  <42.618679, 34.671398, 34.334827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679710, 34.294285, 34.453411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484030, 0.190244, 0.854121,
		-0.861646, -0.273816, -0.427306,
		0.152580, -0.942779, 0.296458,
		42.725483, 34.011452, 34.542347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934456, 34.431950, 34.637894>,  <42.618679, 34.671398, 34.334827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934456, 34.431950, 34.637894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230480, 34.213642, 34.795097>,  <42.408092, 34.082657, 34.889420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230480, 34.213642, 34.795097>,  <41.934456, 34.431950, 34.637894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230480, 34.213642, 34.795097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388169, 0.130588, 0.912289,
		-0.549220, -0.827699, -0.115207,
		0.740056, -0.545767, 0.393008,
		42.452496, 34.049911, 34.912998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621544, 34.106030, 35.127842>,  <41.934456, 34.431950, 34.637894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621544, 34.106030, 35.127842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998940, 34.057068, 35.251026>,  <42.225376, 34.027691, 35.324936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998940, 34.057068, 35.251026>,  <41.621544, 34.106030, 35.127842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998940, 34.057068, 35.251026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302756, 0.059513, 0.951208,
		-0.134763, -0.990694, 0.019090,
		0.943492, -0.122408, 0.307959,
		42.281986, 34.020344, 35.343414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669640, 33.517601, 35.450867>,  <41.621544, 34.106030, 35.127842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669640, 33.517601, 35.450867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946056, 33.765160, 35.600227>,  <42.111908, 33.913692, 35.689846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946056, 33.765160, 35.600227>,  <41.669640, 33.517601, 35.450867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946056, 33.765160, 35.600227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369189, -0.141912, 0.918455,
		0.621415, -0.772550, 0.130421,
		0.691044, 0.618892, 0.373403,
		42.153370, 33.950829, 35.712250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701923, 33.310760, 36.180714>,  <41.669640, 33.517601, 35.450867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701923, 33.310760, 36.180714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948097, 33.625076, 36.205276>,  <42.095802, 33.813667, 36.220013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948097, 33.625076, 36.205276>,  <41.701923, 33.310760, 36.180714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948097, 33.625076, 36.205276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186908, 0.069811, 0.979894,
		0.765705, -0.614539, 0.189835,
		0.615436, 0.785791, 0.061408,
		42.132729, 33.860813, 36.223698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227310, 33.101852, 36.569336>,  <41.701923, 33.310760, 36.180714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227310, 33.101852, 36.569336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156681, 33.494148, 36.602745>,  <42.114304, 33.729527, 36.622791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156681, 33.494148, 36.602745>,  <42.227310, 33.101852, 36.569336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156681, 33.494148, 36.602745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238019, -0.124882, 0.963198,
		0.955076, 0.150193, 0.255485,
		-0.176572, 0.980738, 0.083523,
		42.103710, 33.788368, 36.627804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454597, 33.211098, 37.275417>,  <42.227310, 33.101852, 36.569336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454597, 33.211098, 37.275417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211185, 33.514156, 37.181049>,  <42.065136, 33.695992, 37.124428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211185, 33.514156, 37.181049>,  <42.454597, 33.211098, 37.275417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211185, 33.514156, 37.181049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328420, 0.030180, 0.944050,
		0.722377, 0.651966, 0.230460,
		-0.608533, 0.757647, -0.235920,
		42.028625, 33.741451, 37.110271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422665, 33.528984, 37.869038>,  <42.454597, 33.211098, 37.275417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422665, 33.528984, 37.869038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111340, 33.697704, 37.682995>,  <41.924545, 33.798935, 37.571369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111340, 33.697704, 37.682995>,  <42.422665, 33.528984, 37.869038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111340, 33.697704, 37.682995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408728, 0.221953, 0.885256,
		0.476631, 0.879103, -0.000347,
		-0.778308, 0.421799, -0.465104,
		41.877846, 33.824245, 37.543465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366436, 34.280476, 38.065434>,  <42.422665, 33.528984, 37.869038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366436, 34.280476, 38.065434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006733, 34.136974, 37.965324>,  <41.790913, 34.050873, 37.905258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006733, 34.136974, 37.965324>,  <42.366436, 34.280476, 38.065434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006733, 34.136974, 37.965324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355878, 0.267349, 0.895475,
		-0.254349, 0.894325, -0.368088,
		-0.899254, -0.358757, -0.250271,
		41.736958, 34.029346, 37.890244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876236, 34.742290, 38.432087>,  <42.366436, 34.280476, 38.065434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876236, 34.742290, 38.432087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647274, 34.444405, 38.294823>,  <41.509899, 34.265675, 38.212463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647274, 34.444405, 38.294823>,  <41.876236, 34.742290, 38.432087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647274, 34.444405, 38.294823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517381, 0.003341, 0.855748,
		-0.636140, 0.667377, -0.387213,
		-0.572401, -0.744712, -0.343163,
		41.475555, 34.220989, 38.191875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124134, 34.915371, 38.437710>,  <41.876236, 34.742290, 38.432087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124134, 34.915371, 38.437710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147285, 34.516716, 38.460938>,  <41.161179, 34.277523, 38.474873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147285, 34.516716, 38.460938>,  <41.124134, 34.915371, 38.437710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147285, 34.516716, 38.460938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348896, 0.034305, 0.936534,
		-0.935372, -0.074468, -0.345735,
		0.057882, -0.996633, 0.058069,
		41.164650, 34.217728, 38.478359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416149, 34.524090, 38.465736>,  <41.124134, 34.915371, 38.437710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416149, 34.524090, 38.465736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701832, 34.328129, 38.665699>,  <40.873241, 34.210552, 38.785675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701832, 34.328129, 38.665699>,  <40.416149, 34.524090, 38.465736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701832, 34.328129, 38.665699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533255, 0.081781, 0.841993,
		-0.453375, -0.867935, -0.202832,
		0.714206, -0.489899, 0.499908,
		40.916096, 34.181160, 38.815670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129379, 34.077812, 38.981506>,  <40.416149, 34.524090, 38.465736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129379, 34.077812, 38.981506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488579, 34.178902, 39.125576>,  <40.704098, 34.239555, 39.212017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488579, 34.178902, 39.125576>,  <40.129379, 34.077812, 38.981506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488579, 34.178902, 39.125576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380007, 0.032847, 0.924400,
		0.221786, -0.966981, 0.125533,
		0.898001, 0.252722, 0.360174,
		40.757980, 34.254719, 39.233627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343189, 33.625538, 39.585556>,  <40.129379, 34.077812, 38.981506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343189, 33.625538, 39.585556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570461, 33.951809, 39.629078>,  <40.706825, 34.147572, 39.655190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570461, 33.951809, 39.629078>,  <40.343189, 33.625538, 39.585556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570461, 33.951809, 39.629078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203440, 0.011118, 0.979024,
		0.797358, -0.578401, 0.172258,
		0.568184, 0.815677, 0.108804,
		40.740917, 34.196510, 39.661720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756310, 33.515270, 40.240467>,  <40.343189, 33.625538, 39.585556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756310, 33.515270, 40.240467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695942, 33.896004, 40.133709>,  <40.659721, 34.124443, 40.069653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695942, 33.896004, 40.133709>,  <40.756310, 33.515270, 40.240467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695942, 33.896004, 40.133709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364277, 0.197442, 0.910120,
		0.918981, 0.234579, 0.316933,
		-0.150919, 0.951835, -0.266897,
		40.650665, 34.181553, 40.053638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048996, 33.932194, 40.751171>,  <40.756310, 33.515270, 40.240467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048996, 33.932194, 40.751171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781902, 34.166115, 40.566936>,  <40.621647, 34.306469, 40.456398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781902, 34.166115, 40.566936>,  <41.048996, 33.932194, 40.751171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781902, 34.166115, 40.566936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335304, 0.316121, 0.887490,
		0.664609, 0.747041, -0.014996,
		-0.667732, 0.584806, -0.460583,
		40.581581, 34.341557, 40.428761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079960, 34.466145, 41.095486>,  <41.048996, 33.932194, 40.751171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079960, 34.466145, 41.095486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720078, 34.476402, 40.921188>,  <40.504147, 34.482555, 40.816612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720078, 34.476402, 40.921188>,  <41.079960, 34.466145, 41.095486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720078, 34.476402, 40.921188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394367, 0.380113, 0.836654,
		0.187086, 0.924585, -0.331877,
		-0.899707, 0.025645, -0.435739,
		40.450165, 34.484097, 40.790466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749691, 34.945423, 41.504181>,  <41.079960, 34.466145, 41.095486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749691, 34.945423, 41.504181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466393, 34.772999, 41.280544>,  <40.296413, 34.669544, 41.146362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466393, 34.772999, 41.280544>,  <40.749691, 34.945423, 41.504181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466393, 34.772999, 41.280544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698711, 0.314733, 0.642453,
		-0.100969, 0.845656, -0.524091,
		-0.708243, -0.431056, -0.559091,
		40.253922, 34.643681, 41.112816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118973, 35.424870, 41.656921>,  <40.749691, 34.945423, 41.504181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118973, 35.424870, 41.656921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968063, 35.097946, 41.482712>,  <39.877518, 34.901794, 41.378185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968063, 35.097946, 41.482712>,  <40.118973, 35.424870, 41.656921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968063, 35.097946, 41.482712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713365, -0.043428, 0.699446,
		-0.590574, 0.574567, -0.566653,
		-0.377270, -0.817305, -0.435524,
		39.854881, 34.852757, 41.352055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262234, 35.473331, 41.491604>,  <40.118973, 35.424870, 41.656921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262234, 35.473331, 41.491604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399429, 35.105705, 41.569244>,  <39.481747, 34.885128, 41.615829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399429, 35.105705, 41.569244>,  <39.262234, 35.473331, 41.491604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399429, 35.105705, 41.569244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648790, -0.082353, 0.756498,
		-0.679286, -0.385405, -0.624526,
		0.342990, -0.919065, 0.194105,
		39.502327, 34.829987, 41.627476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686806, 34.989300, 41.552052>,  <39.262234, 35.473331, 41.491604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686806, 34.989300, 41.552052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991318, 34.842564, 41.765923>,  <39.174026, 34.754520, 41.894245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991318, 34.842564, 41.765923>,  <38.686806, 34.989300, 41.552052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991318, 34.842564, 41.765923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593593, -0.062416, 0.802341,
		-0.260958, -0.928188, -0.265270,
		0.761281, -0.366840, 0.534678,
		39.219704, 34.732513, 41.926327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415184, 34.485737, 41.985718>,  <38.686806, 34.989300, 41.552052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415184, 34.485737, 41.985718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738613, 34.561367, 42.208591>,  <38.932671, 34.606743, 42.342316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738613, 34.561367, 42.208591>,  <38.415184, 34.485737, 41.985718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738613, 34.561367, 42.208591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514627, -0.231820, 0.825481,
		0.285242, -0.954207, -0.090143,
		0.808577, 0.189072, 0.557186,
		38.981186, 34.618088, 42.375748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449120, 33.931099, 42.587563>,  <38.415184, 34.485737, 41.985718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449120, 33.931099, 42.587563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692692, 34.229580, 42.695179>,  <38.838837, 34.408669, 42.759750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692692, 34.229580, 42.695179>,  <38.449120, 33.931099, 42.587563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692692, 34.229580, 42.695179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330914, -0.069282, 0.941114,
		0.720901, -0.662106, 0.204740,
		0.608932, 0.746201, 0.269045,
		38.875370, 34.453442, 42.775894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622978, 33.779495, 43.282600>,  <38.449120, 33.931099, 42.587563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622978, 33.779495, 43.282600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747192, 34.157856, 43.244987>,  <38.821720, 34.384872, 43.222420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747192, 34.157856, 43.244987>,  <38.622978, 33.779495, 43.282600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747192, 34.157856, 43.244987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378140, 0.213684, 0.900749,
		0.872109, -0.244163, 0.424040,
		0.310540, 0.945898, -0.094029,
		38.840355, 34.441624, 43.216778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041431, 33.810020, 43.755810>,  <38.622978, 33.779495, 43.282600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041431, 33.810020, 43.755810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910694, 34.177998, 43.669201>,  <38.832253, 34.398785, 43.617233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910694, 34.177998, 43.669201>,  <39.041431, 33.810020, 43.755810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910694, 34.177998, 43.669201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247244, 0.137898, 0.959090,
		0.912166, 0.367003, 0.182380,
		-0.326839, 0.919942, -0.216525,
		38.812641, 34.453979, 43.604244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487877, 34.416008, 44.006538>,  <39.041431, 33.810020, 43.755810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487877, 34.416008, 44.006538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122887, 34.573086, 43.960625>,  <38.903893, 34.667332, 43.933075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122887, 34.573086, 43.960625>,  <39.487877, 34.416008, 44.006538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122887, 34.573086, 43.960625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037103, 0.199974, 0.979098,
		0.407445, 0.897663, -0.167902,
		-0.912476, 0.392699, -0.114785,
		38.849144, 34.690895, 43.926189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516052, 34.966393, 44.416981>,  <39.487877, 34.416008, 44.006538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516052, 34.966393, 44.416981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127811, 34.892174, 44.355648>,  <38.894867, 34.847645, 44.318848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127811, 34.892174, 44.355648>,  <39.516052, 34.966393, 44.416981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127811, 34.892174, 44.355648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214270, 0.375795, 0.901591,
		-0.109663, 0.907938, -0.404502,
		-0.970599, -0.185543, -0.153333,
		38.836632, 34.836510, 44.309647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246605, 35.535553, 44.610928>,  <39.516052, 34.966393, 44.416981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246605, 35.535553, 44.610928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935280, 35.286861, 44.646000>,  <38.748486, 35.137646, 44.667046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935280, 35.286861, 44.646000>,  <39.246605, 35.535553, 44.610928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935280, 35.286861, 44.646000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200988, 0.379005, 0.903304,
		-0.594841, 0.685428, -0.419943,
		-0.778311, -0.621726, 0.087685,
		38.701786, 35.100342, 44.672306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598454, 35.935410, 44.977009>,  <39.246605, 35.535553, 44.610928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598454, 35.935410, 44.977009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537971, 35.541454, 45.010777>,  <38.501682, 35.305080, 45.031036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537971, 35.541454, 45.010777>,  <38.598454, 35.935410, 44.977009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537971, 35.541454, 45.010777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301379, 0.127268, 0.944973,
		-0.941439, 0.117441, -0.316069,
		-0.151204, -0.984891, 0.084420,
		38.492611, 35.245987, 45.036102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931915, 35.888718, 45.218632>,  <38.598454, 35.935410, 44.977009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931915, 35.888718, 45.218632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113792, 35.547234, 45.320168>,  <38.222919, 35.342342, 45.381088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113792, 35.547234, 45.320168>,  <37.931915, 35.888718, 45.218632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113792, 35.547234, 45.320168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275163, 0.136411, 0.951671,
		-0.847077, -0.502566, -0.172884,
		0.454694, -0.853710, 0.253838,
		38.250202, 35.291122, 45.396320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478867, 35.460632, 45.678268>,  <37.931915, 35.888718, 45.218632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478867, 35.460632, 45.678268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864471, 35.382748, 45.750668>,  <38.095837, 35.336018, 45.794106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864471, 35.382748, 45.750668>,  <37.478867, 35.460632, 45.678268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864471, 35.382748, 45.750668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144012, 0.189794, 0.971205,
		-0.223457, -0.962323, 0.154924,
		0.964016, -0.194712, 0.180997,
		38.153675, 35.324333, 45.804966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562714, 34.809391, 46.118984>,  <37.478867, 35.460632, 45.678268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562714, 34.809391, 46.118984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827797, 35.107590, 46.147453>,  <37.986847, 35.286507, 46.164536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827797, 35.107590, 46.147453>,  <37.562714, 34.809391, 46.118984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827797, 35.107590, 46.147453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161648, 0.049606, 0.985601,
		0.731228, -0.664666, 0.153381,
		0.662704, 0.745492, 0.071168,
		38.026608, 35.331238, 46.168804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811584, 34.742851, 46.798878>,  <37.562714, 34.809391, 46.118984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811584, 34.742851, 46.798878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991840, 35.073387, 46.663769>,  <38.099995, 35.271709, 46.582703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991840, 35.073387, 46.663769>,  <37.811584, 34.742851, 46.798878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991840, 35.073387, 46.663769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180061, 0.286458, 0.941020,
		0.874359, -0.484880, -0.019702,
		0.450639, 0.826337, -0.337775,
		38.127033, 35.321289, 46.562435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469330, 34.880089, 47.172787>,  <37.811584, 34.742851, 46.798878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469330, 34.880089, 47.172787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370216, 35.239689, 47.028336>,  <38.310749, 35.455448, 46.941666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370216, 35.239689, 47.028336>,  <38.469330, 34.880089, 47.172787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370216, 35.239689, 47.028336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221603, 0.415456, 0.882206,
		0.943132, 0.138566, -0.302162,
		-0.247779, 0.898997, -0.361123,
		38.295883, 35.509388, 46.919998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980030, 35.536785, 47.060360>,  <38.469330, 34.880089, 47.172787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980030, 35.536785, 47.060360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250729, 35.784588, 46.901249>,  <39.413147, 35.933270, 46.805782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250729, 35.784588, 46.901249>,  <38.980030, 35.536785, 47.060360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250729, 35.784588, 46.901249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714422, -0.422130, 0.558039,
		0.177795, -0.661831, -0.728263,
		0.676750, 0.619504, -0.397774,
		39.453754, 35.970440, 46.781918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998627, 35.115528, 46.423504>,  <38.980030, 35.536785, 47.060360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998627, 35.115528, 46.423504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656448, 34.908611, 46.413540>,  <38.451141, 34.784462, 46.407562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656448, 34.908611, 46.413540>,  <38.998627, 35.115528, 46.423504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656448, 34.908611, 46.413540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005484, 0.057135, -0.998351,
		0.517864, -0.853898, -0.051712,
		-0.855445, -0.517294, -0.024906,
		38.399815, 34.753422, 46.406067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129162, 34.575401, 46.008629>,  <38.998627, 35.115528, 46.423504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129162, 34.575401, 46.008629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737373, 34.652763, 45.985893>,  <38.502300, 34.699181, 45.972252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737373, 34.652763, 45.985893>,  <39.129162, 34.575401, 46.008629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737373, 34.652763, 45.985893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071148, 0.067876, -0.995154,
		-0.188606, -0.978769, -0.080242,
		-0.979472, 0.193401, -0.056835,
		38.443531, 34.710785, 45.968842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705227, 34.128952, 45.732601>,  <39.129162, 34.575401, 46.008629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705227, 34.128952, 45.732601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545086, 34.479588, 45.625786>,  <38.449001, 34.689968, 45.561699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545086, 34.479588, 45.625786>,  <38.705227, 34.128952, 45.732601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545086, 34.479588, 45.625786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186224, -0.207499, -0.960346,
		-0.897241, -0.434202, -0.080170,
		-0.400348, 0.876592, -0.267035,
		38.424980, 34.742565, 45.545673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189346, 34.012379, 45.188805>,  <38.705227, 34.128952, 45.732601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189346, 34.012379, 45.188805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289562, 34.392757, 45.116222>,  <38.349689, 34.620987, 45.072674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289562, 34.392757, 45.116222>,  <38.189346, 34.012379, 45.188805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289562, 34.392757, 45.116222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004005, -0.188452, -0.982074,
		-0.968099, 0.245320, -0.051023,
		0.250537, 0.950949, -0.181458,
		38.364723, 34.678043, 45.061787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870712, 34.163883, 44.610474>,  <38.189346, 34.012379, 45.188805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870712, 34.163883, 44.610474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106758, 34.486549, 44.623440>,  <38.248386, 34.680149, 44.631218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106758, 34.486549, 44.623440>,  <37.870712, 34.163883, 44.610474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106758, 34.486549, 44.623440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026970, 0.020426, -0.999427,
		-0.806868, 0.590651, -0.009702,
		0.590115, 0.806668, 0.032411,
		38.283794, 34.728550, 44.633163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632648, 34.660347, 44.095703>,  <37.870712, 34.163883, 44.610474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632648, 34.660347, 44.095703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003548, 34.773773, 44.193520>,  <38.226086, 34.841831, 44.252209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003548, 34.773773, 44.193520>,  <37.632648, 34.660347, 44.095703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003548, 34.773773, 44.193520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221301, 0.111808, -0.968775,
		-0.302057, 0.952411, 0.040920,
		0.927247, 0.283570, 0.244542,
		38.281723, 34.858845, 44.266884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739517, 35.320282, 43.804756>,  <37.632648, 34.660347, 44.095703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739517, 35.320282, 43.804756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075054, 35.105000, 43.837433>,  <38.276379, 34.975830, 43.857040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075054, 35.105000, 43.837433>,  <37.739517, 35.320282, 43.804756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075054, 35.105000, 43.837433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209321, 0.180365, -0.961069,
		0.502518, 0.823288, 0.263956,
		0.838845, -0.538206, 0.081694,
		38.326706, 34.943539, 43.861942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343647, 35.659931, 43.424263>,  <37.739517, 35.320282, 43.804756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343647, 35.659931, 43.424263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520294, 35.306461, 43.486355>,  <38.626282, 35.094379, 43.523609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520294, 35.306461, 43.486355>,  <38.343647, 35.659931, 43.424263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520294, 35.306461, 43.486355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464198, 0.076978, -0.882380,
		0.767787, 0.461730, 0.444194,
		0.441615, -0.883674, 0.155232,
		38.652779, 35.041359, 43.532925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029934, 35.744461, 43.216400>,  <38.343647, 35.659931, 43.424263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029934, 35.744461, 43.216400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947826, 35.353142, 43.227737>,  <38.898560, 35.118351, 43.234539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947826, 35.353142, 43.227737>,  <39.029934, 35.744461, 43.216400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947826, 35.353142, 43.227737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615535, -0.151563, -0.773398,
		0.760907, -0.141310, 0.633286,
		-0.205272, -0.978294, 0.028343,
		38.886246, 35.059654, 43.236240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660862, 35.500584, 42.982006>,  <39.029934, 35.744461, 43.216400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660862, 35.500584, 42.982006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395977, 35.208885, 42.913097>,  <39.237045, 35.033867, 42.871754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395977, 35.208885, 42.913097>,  <39.660862, 35.500584, 42.982006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395977, 35.208885, 42.913097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479279, -0.235499, -0.845477,
		0.575989, -0.642452, 0.505462,
		-0.662214, -0.729243, -0.172269,
		39.197311, 34.990112, 42.861416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083218, 34.879894, 42.898491>,  <39.660862, 35.500584, 42.982006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083218, 34.879894, 42.898491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733219, 34.803730, 42.720451>,  <39.523220, 34.758030, 42.613628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733219, 34.803730, 42.720451>,  <40.083218, 34.879894, 42.898491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733219, 34.803730, 42.720451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481765, -0.433089, -0.761798,
		-0.047711, -0.881009, 0.470688,
		-0.875001, -0.190415, -0.445103,
		39.470718, 34.746605, 42.586922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186745, 34.199142, 42.568729>,  <40.083218, 34.879894, 42.898491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186745, 34.199142, 42.568729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875362, 34.361919, 42.377563>,  <39.688534, 34.459587, 42.262863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875362, 34.361919, 42.377563>,  <40.186745, 34.199142, 42.568729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875362, 34.361919, 42.377563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359429, -0.335201, -0.870891,
		-0.514599, -0.849728, 0.114673,
		-0.778459, 0.406943, -0.477911,
		39.641823, 34.484001, 42.234192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901695, 33.691486, 42.095692>,  <40.186745, 34.199142, 42.568729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901695, 33.691486, 42.095692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781307, 34.043098, 41.947784>,  <39.709076, 34.254066, 41.859039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781307, 34.043098, 41.947784>,  <39.901695, 33.691486, 42.095692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781307, 34.043098, 41.947784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309507, -0.276720, -0.909743,
		-0.902010, -0.388251, -0.188781,
		-0.300969, 0.879026, -0.369771,
		39.691017, 34.306805, 41.836853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514481, 33.655972, 41.507835>,  <39.901695, 33.691486, 42.095692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514481, 33.655972, 41.507835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680176, 34.015785, 41.452339>,  <39.779591, 34.231674, 41.419041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680176, 34.015785, 41.452339>,  <39.514481, 33.655972, 41.507835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680176, 34.015785, 41.452339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390167, -0.313216, -0.865832,
		-0.822301, 0.304524, -0.480713,
		0.414234, 0.899534, -0.138743,
		39.804447, 34.285645, 41.410717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303238, 33.866516, 40.761841>,  <39.514481, 33.655972, 41.507835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303238, 33.866516, 40.761841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466221, 34.184414, 40.941780>,  <39.564011, 34.375153, 41.049744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466221, 34.184414, 40.941780>,  <39.303238, 33.866516, 40.761841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466221, 34.184414, 40.941780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738647, 0.002852, -0.674086,
		-0.537008, 0.606940, -0.585872,
		0.407459, 0.794742, 0.449846,
		39.588459, 34.422836, 41.076733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234200, 34.362816, 40.343700>,  <39.303238, 33.866516, 40.761841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234200, 34.362816, 40.343700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548279, 34.428699, 40.582474>,  <39.736729, 34.468227, 40.725739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548279, 34.428699, 40.582474>,  <39.234200, 34.362816, 40.343700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548279, 34.428699, 40.582474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583739, 0.124822, -0.802289,
		-0.206653, 0.978413, 0.001865,
		0.785203, 0.164706, 0.596933,
		39.783840, 34.478111, 40.761555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600262, 34.832516, 39.910583>,  <39.234200, 34.362816, 40.343700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600262, 34.832516, 39.910583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840130, 34.718235, 40.209587>,  <39.984051, 34.649666, 40.388988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840130, 34.718235, 40.209587>,  <39.600262, 34.832516, 39.910583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840130, 34.718235, 40.209587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795117, 0.107134, -0.596918,
		0.090457, 0.952312, 0.291411,
		0.599672, -0.285701, 0.747508,
		40.020031, 34.632526, 40.433838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087475, 35.358349, 39.943340>,  <39.600262, 34.832516, 39.910583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087475, 35.358349, 39.943340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247177, 35.041702, 40.128357>,  <40.342999, 34.851715, 40.239365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247177, 35.041702, 40.128357>,  <40.087475, 35.358349, 39.943340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247177, 35.041702, 40.128357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780782, 0.029117, -0.624124,
		0.480599, 0.610326, 0.629704,
		0.399254, -0.791615, 0.462538,
		40.366955, 34.804218, 40.267117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821552, 35.434971, 39.847931>,  <40.087475, 35.358349, 39.943340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821552, 35.434971, 39.847931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757435, 35.044350, 39.905399>,  <40.718964, 34.809975, 39.939880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757435, 35.044350, 39.905399>,  <40.821552, 35.434971, 39.847931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757435, 35.044350, 39.905399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691143, -0.214961, -0.690009,
		0.704717, -0.011308, 0.709398,
		-0.160295, -0.976557, 0.143671,
		40.709347, 34.751381, 39.948502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504128, 35.191376, 39.806648>,  <40.821552, 35.434971, 39.847931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504128, 35.191376, 39.806648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267933, 34.873001, 39.753262>,  <41.126217, 34.681976, 39.721230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267933, 34.873001, 39.753262>,  <41.504128, 35.191376, 39.806648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267933, 34.873001, 39.753262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592240, -0.315010, -0.741633,
		0.548251, -0.516965, 0.657395,
		-0.590484, -0.795937, -0.133463,
		41.090786, 34.634220, 39.713223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903103, 34.627781, 39.672001>,  <41.504128, 35.191376, 39.806648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903103, 34.627781, 39.672001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544819, 34.533115, 39.521427>,  <41.329849, 34.476318, 39.431084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544819, 34.533115, 39.521427>,  <41.903103, 34.627781, 39.672001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544819, 34.533115, 39.521427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440369, -0.355057, -0.824627,
		0.061502, -0.904393, 0.422245,
		-0.895708, -0.236660, -0.376430,
		41.276108, 34.462116, 39.408497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978794, 34.015106, 39.232410>,  <41.903103, 34.627781, 39.672001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978794, 34.015106, 39.232410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667656, 34.232319, 39.105873>,  <41.480972, 34.362648, 39.029949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667656, 34.232319, 39.105873>,  <41.978794, 34.015106, 39.232410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667656, 34.232319, 39.105873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336350, -0.065489, -0.939457,
		-0.530871, -0.837155, -0.131708,
		-0.777846, 0.543031, -0.316344,
		41.434303, 34.395229, 39.010971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544338, 33.921619, 39.739002>,  <41.978794, 34.015106, 39.232410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544338, 33.921619, 39.739002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845432, 33.775822, 39.519718>,  <43.026089, 33.688343, 39.388149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845432, 33.775822, 39.519718>,  <42.544338, 33.921619, 39.739002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845432, 33.775822, 39.519718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166655, 0.911115, -0.376956,
		0.636879, 0.192387, 0.746574,
		0.752736, -0.364496, -0.548207,
		43.071255, 33.666473, 39.355255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110298, 34.404251, 39.950661>,  <42.544338, 33.921619, 39.739002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110298, 34.404251, 39.950661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251877, 34.210842, 39.630428>,  <43.336826, 34.094799, 39.438290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251877, 34.210842, 39.630428>,  <43.110298, 34.404251, 39.950661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251877, 34.210842, 39.630428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349604, 0.862343, -0.366255,
		0.867466, -0.150251, 0.474265,
		0.353949, -0.483519, -0.800581,
		43.358063, 34.065788, 39.390255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890629, 34.466564, 39.832397>,  <43.110298, 34.404251, 39.950661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890629, 34.466564, 39.832397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714573, 34.429565, 39.475136>,  <43.608940, 34.407364, 39.260780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714573, 34.429565, 39.475136>,  <43.890629, 34.466564, 39.832397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714573, 34.429565, 39.475136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313080, 0.916451, -0.249196,
		0.841580, -0.389310, -0.374407,
		-0.440140, -0.092499, -0.893152,
		43.582531, 34.401817, 39.207191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361866, 34.591755, 39.200516>,  <43.890629, 34.466564, 39.832397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361866, 34.591755, 39.200516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998585, 34.728325, 39.103683>,  <43.780617, 34.810268, 39.045586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998585, 34.728325, 39.103683>,  <44.361866, 34.591755, 39.200516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998585, 34.728325, 39.103683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391451, 0.897619, -0.202598,
		0.148119, -0.278761, -0.948869,
		-0.908200, 0.341428, -0.242076,
		43.726124, 34.830753, 39.031059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358894, 34.879597, 38.490910>,  <44.361866, 34.591755, 39.200516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358894, 34.879597, 38.490910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113941, 35.043171, 38.761543>,  <43.966969, 35.141315, 38.923923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113941, 35.043171, 38.761543>,  <44.358894, 34.879597, 38.490910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113941, 35.043171, 38.761543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587126, 0.808361, 0.042831,
		-0.529409, 0.423470, -0.735119,
		-0.612379, 0.408932, 0.676584,
		43.930229, 35.165852, 38.964520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752403, 34.217976, 38.267521>,  <44.358894, 34.879597, 38.490910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752403, 34.217976, 38.267521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628178, 33.902317, 38.055557>,  <44.553642, 33.712921, 37.928379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628178, 33.902317, 38.055557>,  <44.752403, 34.217976, 38.267521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628178, 33.902317, 38.055557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896056, -0.057006, -0.440266,
		0.317225, -0.611559, 0.724820,
		-0.310567, -0.789142, -0.529908,
		44.535007, 33.665573, 37.896584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285431, 33.757099, 38.211529>,  <44.752403, 34.217976, 38.267521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285431, 33.757099, 38.211529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059879, 33.611992, 37.914761>,  <44.924549, 33.524929, 37.736702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059879, 33.611992, 37.914761>,  <45.285431, 33.757099, 38.211529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059879, 33.611992, 37.914761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823872, -0.184821, -0.535796,
		0.057248, -0.913368, 0.403091,
		-0.563878, -0.362768, -0.741917,
		44.890717, 33.503162, 37.692184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539303, 33.138706, 38.106117>,  <45.285431, 33.757099, 38.211529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539303, 33.138706, 38.106117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377689, 33.298431, 37.776924>,  <45.280720, 33.394268, 37.579407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377689, 33.298431, 37.776924>,  <45.539303, 33.138706, 38.106117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377689, 33.298431, 37.776924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853194, -0.159938, -0.496468,
		-0.329874, -0.902755, -0.276075,
		-0.404034, 0.399317, -0.822984,
		45.256477, 33.418228, 37.530029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614895, 32.647861, 37.592590>,  <45.539303, 33.138706, 38.106117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614895, 32.647861, 37.592590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595371, 33.007252, 37.418072>,  <45.583656, 33.222885, 37.313358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595371, 33.007252, 37.418072>,  <45.614895, 32.647861, 37.592590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595371, 33.007252, 37.418072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792294, -0.231155, -0.564657,
		-0.608184, -0.373237, -0.700576,
		-0.048809, 0.898477, -0.436298,
		45.580730, 33.276794, 37.287182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875462, 32.627953, 36.919514>,  <45.614895, 32.647861, 37.592590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875462, 32.627953, 36.919514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943085, 33.018810, 36.971077>,  <45.983658, 33.253323, 37.002014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943085, 33.018810, 36.971077>,  <45.875462, 32.627953, 36.919514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943085, 33.018810, 36.971077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790964, -0.056475, -0.609251,
		-0.588044, 0.204957, -0.782430,
		0.169057, 0.977140, 0.128904,
		45.993801, 33.311951, 37.009747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843758, 31.880207, 36.780052>,  <45.875462, 32.627953, 36.919514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843758, 31.880207, 36.780052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934456, 31.632797, 37.080990>,  <45.988876, 31.484352, 37.261551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934456, 31.632797, 37.080990>,  <45.843758, 31.880207, 36.780052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934456, 31.632797, 37.080990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144235, -0.742618, -0.653999,
		0.963215, 0.256805, -0.079172,
		0.226744, -0.618522, 0.752341,
		46.002480, 31.447241, 37.306694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.378613, 31.423719, 36.623962>,  <45.843758, 31.880207, 36.780052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.378613, 31.423719, 36.623962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163948, 31.225006, 36.896782>,  <46.035149, 31.105778, 37.060474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163948, 31.225006, 36.896782>,  <46.378613, 31.423719, 36.623962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163948, 31.225006, 36.896782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085094, -0.772331, -0.629495,
		0.839495, -0.395866, 0.372209,
		-0.536664, -0.496785, 0.682053,
		46.002949, 31.075970, 37.101398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.620575, 31.079294, 35.916286>,  <46.378613, 31.423719, 36.623962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.620575, 31.079294, 35.916286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543888, 31.387859, 35.673580>,  <46.497875, 31.572998, 35.527958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543888, 31.387859, 35.673580>,  <46.620575, 31.079294, 35.916286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543888, 31.387859, 35.673580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338493, 0.528329, 0.778646,
		0.921231, 0.354668, 0.159828,
		-0.191719, 0.771414, -0.606766,
		46.486374, 31.619284, 35.491550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933506, 31.623583, 36.183277>,  <46.620575, 31.079294, 35.916286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933506, 31.623583, 36.183277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592331, 31.708937, 35.992710>,  <46.387627, 31.760149, 35.878372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592331, 31.708937, 35.992710>,  <46.933506, 31.623583, 36.183277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592331, 31.708937, 35.992710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347806, 0.448262, 0.823463,
		0.389273, 0.868060, -0.308121,
		-0.852934, 0.213385, -0.476413,
		46.336449, 31.772953, 35.849785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.821938, 32.350285, 36.228035>,  <46.933506, 31.623583, 36.183277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.821938, 32.350285, 36.228035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475113, 32.158421, 36.174175>,  <46.267017, 32.043304, 36.141857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475113, 32.158421, 36.174175>,  <46.821938, 32.350285, 36.228035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.475113, 32.158421, 36.174175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402669, 0.515575, 0.756333,
		-0.293356, 0.710009, -0.640179,
		-0.867064, -0.479656, -0.134652,
		46.214993, 32.014523, 36.133781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094006, 32.702034, 35.634796>,  <46.821938, 32.350285, 36.228035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094006, 32.702034, 35.634796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.027565, 33.074806, 35.763741>,  <46.987701, 33.298470, 35.841106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.027565, 33.074806, 35.763741>,  <47.094006, 32.702034, 35.634796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.027565, 33.074806, 35.763741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187275, 0.350764, -0.917547,
		-0.968163, -0.092034, -0.232790,
		-0.166100, 0.931930, 0.322361,
		46.977734, 33.354385, 35.860447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992260, 33.009846, 35.003567>,  <47.094006, 32.702034, 35.634796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992260, 33.009846, 35.003567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030613, 33.300488, 35.275700>,  <47.053627, 33.474873, 35.438980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030613, 33.300488, 35.275700>,  <46.992260, 33.009846, 35.003567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030613, 33.300488, 35.275700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379583, 0.605140, -0.699801,
		-0.920175, 0.325342, -0.217783,
		0.095886, 0.726607, 0.680330,
		47.059380, 33.518471, 35.479797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.999123, 33.616959, 34.529404>,  <46.992260, 33.009846, 35.003567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.999123, 33.616959, 34.529404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133034, 33.744576, 34.884060>,  <47.213379, 33.821144, 35.096855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133034, 33.744576, 34.884060>,  <46.999123, 33.616959, 34.529404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133034, 33.744576, 34.884060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400266, 0.803682, -0.440320,
		-0.853061, 0.502302, 0.141351,
		0.334774, 0.319042, 0.886644,
		47.233467, 33.840286, 35.150055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.914902, 34.297096, 34.494366>,  <46.999123, 33.616959, 34.529404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.914902, 34.297096, 34.494366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.176804, 34.241070, 34.791466>,  <47.333946, 34.207455, 34.969727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.176804, 34.241070, 34.791466>,  <46.914902, 34.297096, 34.494366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.176804, 34.241070, 34.791466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595479, 0.700807, -0.392777,
		-0.465505, 0.699464, 0.542269,
		0.654759, -0.140070, 0.742746,
		47.373230, 34.199047, 35.014290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258560, 34.950821, 34.492455>,  <46.914902, 34.297096, 34.494366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258560, 34.950821, 34.492455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497765, 34.741177, 34.735001>,  <47.641289, 34.615391, 34.880527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497765, 34.741177, 34.735001>,  <47.258560, 34.950821, 34.492455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.497765, 34.741177, 34.735001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782759, 0.544505, -0.301333,
		-0.172237, 0.654841, 0.735879,
		0.598015, -0.524115, 0.606367,
		47.677170, 34.583942, 34.916912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.599949, 35.489418, 34.899529>,  <47.258560, 34.950821, 34.492455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.599949, 35.489418, 34.899529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830147, 35.164349, 34.936104>,  <47.968266, 34.969307, 34.958050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830147, 35.164349, 34.936104>,  <47.599949, 35.489418, 34.899529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.830147, 35.164349, 34.936104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793213, 0.527479, -0.304268,
		0.199036, 0.247639, 0.948187,
		0.575498, -0.812675, 0.091443,
		48.002796, 34.920547, 34.963535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.858734, 30.643185, 29.152380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491699, 30.769327, 29.055561>,  <38.271477, 30.845013, 28.997471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491699, 30.769327, 29.055561>,  <38.858734, 30.643185, 29.152380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491699, 30.769327, 29.055561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154319, 0.278557, 0.947941,
		0.366362, 0.907170, -0.206934,
		-0.917586, 0.315355, -0.242046,
		38.216423, 30.863934, 28.982946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864445, 31.361456, 29.408716>,  <38.858734, 30.643185, 29.152380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864445, 31.361456, 29.408716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489677, 31.232891, 29.353746>,  <38.264816, 31.155752, 29.320765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489677, 31.232891, 29.353746>,  <38.864445, 31.361456, 29.408716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489677, 31.232891, 29.353746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269557, 0.414015, 0.869443,
		-0.222553, 0.851637, -0.474536,
		-0.936915, -0.321412, -0.137425,
		38.208603, 31.136467, 29.312519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342228, 31.870955, 29.636396>,  <38.864445, 31.361456, 29.408716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342228, 31.870955, 29.636396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113297, 31.542986, 29.631224>,  <37.975937, 31.346205, 29.628120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113297, 31.542986, 29.631224>,  <38.342228, 31.870955, 29.636396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113297, 31.542986, 29.631224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476503, 0.319695, 0.818987,
		-0.667373, 0.474890, -0.573666,
		-0.572327, -0.819924, -0.012931,
		37.941597, 31.297009, 29.627344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697849, 32.092449, 29.741095>,  <38.342228, 31.870955, 29.636396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697849, 32.092449, 29.741095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697155, 31.705971, 29.844223>,  <37.696739, 31.474085, 29.906099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697155, 31.705971, 29.844223>,  <37.697849, 32.092449, 29.741095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697155, 31.705971, 29.844223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506616, 0.223137, 0.832797,
		-0.862170, -0.129166, -0.489876,
		-0.001740, -0.966191, 0.257820,
		37.696632, 31.416113, 29.921570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003395, 31.984871, 29.968613>,  <37.697849, 32.092449, 29.741095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003395, 31.984871, 29.968613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200489, 31.674728, 30.126616>,  <37.318745, 31.488644, 30.221418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200489, 31.674728, 30.126616>,  <37.003395, 31.984871, 29.968613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200489, 31.674728, 30.126616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456593, 0.156057, 0.875882,
		-0.740764, -0.611940, -0.277127,
		0.492739, -0.775355, 0.395009,
		37.348312, 31.442122, 30.245119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507458, 31.706907, 30.422962>,  <37.003395, 31.984871, 29.968613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507458, 31.706907, 30.422962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829506, 31.507435, 30.551397>,  <37.022736, 31.387751, 30.628458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829506, 31.507435, 30.551397>,  <36.507458, 31.706907, 30.422962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829506, 31.507435, 30.551397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439167, -0.137374, 0.887841,
		-0.398642, -0.855830, -0.329607,
		0.805120, -0.498683, 0.321089,
		37.071041, 31.357830, 30.647724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322506, 30.999308, 30.766535>,  <36.507458, 31.706907, 30.422962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322506, 30.999308, 30.766535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666733, 31.127632, 30.924780>,  <36.873268, 31.204626, 31.019728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666733, 31.127632, 30.924780>,  <36.322506, 30.999308, 30.766535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666733, 31.127632, 30.924780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357340, -0.173216, 0.917771,
		0.362957, -0.931170, -0.034426,
		0.860564, 0.320810, 0.395614,
		36.924904, 31.223875, 31.043465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285137, 30.808292, 31.372208>,  <36.322506, 30.999308, 30.766535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285137, 30.808292, 31.372208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595570, 31.053892, 31.429771>,  <36.781830, 31.201252, 31.464310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595570, 31.053892, 31.429771>,  <36.285137, 30.808292, 31.372208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595570, 31.053892, 31.429771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284616, 0.137380, 0.948747,
		0.562758, -0.777260, 0.281371,
		0.776078, 0.613998, 0.143909,
		36.828392, 31.238091, 31.472944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660084, 30.599293, 32.060440>,  <36.285137, 30.808292, 31.372208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660084, 30.599293, 32.060440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741631, 30.984228, 31.988499>,  <36.790558, 31.215189, 31.945335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741631, 30.984228, 31.988499>,  <36.660084, 30.599293, 32.060440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741631, 30.984228, 31.988499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108205, 0.204731, 0.972819,
		0.973001, -0.178862, 0.145867,
		0.203864, 0.962337, -0.179850,
		36.802792, 31.272930, 31.934544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146786, 30.771694, 32.581551>,  <36.660084, 30.599293, 32.060440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146786, 30.771694, 32.581551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995789, 31.119173, 32.453259>,  <36.905190, 31.327662, 32.376286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995789, 31.119173, 32.453259>,  <37.146786, 30.771694, 32.581551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995789, 31.119173, 32.453259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084731, 0.312498, 0.946132,
		0.922130, 0.384329, -0.044359,
		-0.377488, 0.868698, -0.320728,
		36.882542, 31.379782, 32.357040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444794, 31.331287, 32.929970>,  <37.146786, 30.771694, 32.581551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444794, 31.331287, 32.929970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116642, 31.528412, 32.813957>,  <36.919750, 31.646687, 32.744350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116642, 31.528412, 32.813957>,  <37.444794, 31.331287, 32.929970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116642, 31.528412, 32.813957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103126, 0.371373, 0.922739,
		0.562445, 0.786904, -0.253845,
		-0.820378, 0.492812, -0.290027,
		36.870529, 31.676256, 32.726948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570866, 31.924782, 33.265125>,  <37.444794, 31.331287, 32.929970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570866, 31.924782, 33.265125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.183563, 31.927124, 33.165165>,  <36.951183, 31.928530, 33.105190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.183563, 31.927124, 33.165165>,  <37.570866, 31.924782, 33.265125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183563, 31.927124, 33.165165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231670, 0.354465, 0.905916,
		0.093885, 0.935051, -0.341855,
		-0.968253, 0.005854, -0.249902,
		36.893085, 31.928881, 33.090195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395706, 32.583054, 33.428738>,  <37.570866, 31.924782, 33.265125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395706, 32.583054, 33.428738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060902, 32.365238, 33.407215>,  <36.860020, 32.234550, 33.394302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060902, 32.365238, 33.407215>,  <37.395706, 32.583054, 33.428738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060902, 32.365238, 33.407215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214294, 0.235737, 0.947896,
		-0.503478, 0.804929, -0.314005,
		-0.837011, -0.544534, -0.053804,
		36.809799, 32.201878, 33.391075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863838, 32.980068, 33.720684>,  <37.395706, 32.583054, 33.428738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863838, 32.980068, 33.720684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721428, 32.607777, 33.754143>,  <36.635983, 32.384403, 33.774216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721428, 32.607777, 33.754143>,  <36.863838, 32.980068, 33.720684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721428, 32.607777, 33.754143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260714, 0.184886, 0.947547,
		-0.897371, 0.315544, -0.308477,
		-0.356026, -0.930725, 0.083644,
		36.614620, 32.328560, 33.779236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046543, 32.884212, 33.974072>,  <36.863838, 32.980068, 33.720684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046543, 32.884212, 33.974072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250610, 32.561134, 34.092293>,  <36.373051, 32.367287, 34.163227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250610, 32.561134, 34.092293>,  <36.046543, 32.884212, 33.974072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250610, 32.561134, 34.092293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344837, 0.122721, 0.930606,
		-0.787921, -0.576681, -0.215917,
		0.510165, -0.807700, 0.295556,
		36.403660, 32.318825, 34.180958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650669, 32.681324, 34.567078>,  <36.046543, 32.884212, 33.974072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650669, 32.681324, 34.567078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956406, 32.426052, 34.603989>,  <36.139847, 32.272888, 34.626133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.956406, 32.426052, 34.603989>,  <35.650669, 32.681324, 34.567078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956406, 32.426052, 34.603989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046970, 0.087620, 0.995046,
		-0.643100, -0.764888, 0.036997,
		0.764341, -0.638176, 0.092275,
		36.185707, 32.234600, 34.631672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476639, 32.111927, 35.061192>,  <35.650669, 32.681324, 34.567078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476639, 32.111927, 35.061192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874619, 32.141369, 35.033920>,  <36.113407, 32.159035, 35.017555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874619, 32.141369, 35.033920>,  <35.476639, 32.111927, 35.061192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874619, 32.141369, 35.033920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061240, 0.092759, 0.993804,
		0.079454, -0.992966, 0.087785,
		0.994955, 0.073586, -0.068179,
		36.173103, 32.163452, 35.013466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686279, 31.634129, 35.615936>,  <35.476639, 32.111927, 35.061192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686279, 31.634129, 35.615936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018589, 31.834570, 35.519020>,  <36.217976, 31.954836, 35.460869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018589, 31.834570, 35.519020>,  <35.686279, 31.634129, 35.615936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018589, 31.834570, 35.519020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279053, 0.001663, 0.960274,
		0.481602, -0.865384, -0.138454,
		0.830776, 0.501106, -0.242289,
		36.267822, 31.984901, 35.446335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305153, 31.257442, 35.934113>,  <35.686279, 31.634129, 35.615936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305153, 31.257442, 35.934113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357044, 31.650114, 35.878284>,  <36.388180, 31.885717, 35.844788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357044, 31.650114, 35.878284>,  <36.305153, 31.257442, 35.934113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357044, 31.650114, 35.878284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149908, 0.119724, 0.981424,
		0.980152, -0.148242, -0.131630,
		0.129729, 0.981677, -0.139570,
		36.395962, 31.944618, 35.836414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971039, 31.442450, 36.343239>,  <36.305153, 31.257442, 35.934113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971039, 31.442450, 36.343239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810066, 31.804979, 36.291656>,  <36.713482, 32.022495, 36.260708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810066, 31.804979, 36.291656>,  <36.971039, 31.442450, 36.343239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810066, 31.804979, 36.291656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191605, 0.221135, 0.956236,
		0.895175, 0.360109, -0.262647,
		-0.402430, 0.906323, -0.128956,
		36.689339, 32.076878, 36.252972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505405, 31.894468, 36.588074>,  <36.971039, 31.442450, 36.343239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505405, 31.894468, 36.588074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178291, 32.124245, 36.602226>,  <36.982025, 32.262112, 36.610718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178291, 32.124245, 36.602226>,  <37.505405, 31.894468, 36.588074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178291, 32.124245, 36.602226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176935, 0.192443, 0.965225,
		0.547655, 0.795603, -0.259015,
		-0.817782, 0.574440, 0.035378,
		36.932957, 32.296577, 36.612839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555214, 32.123322, 37.255665>,  <37.505405, 31.894468, 36.588074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555214, 32.123322, 37.255665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224850, 32.312748, 37.133286>,  <37.026630, 32.426403, 37.059856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224850, 32.312748, 37.133286>,  <37.555214, 32.123322, 37.255665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224850, 32.312748, 37.133286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132799, 0.363983, 0.921890,
		0.547934, 0.802031, -0.237729,
		-0.825913, 0.473564, -0.305947,
		36.977077, 32.454819, 37.041500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275814, 32.339378, 37.241241>,  <37.555214, 32.123322, 37.255665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275814, 32.339378, 37.241241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600948, 32.229538, 37.446720>,  <38.796028, 32.163635, 37.570007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600948, 32.229538, 37.446720>,  <38.275814, 32.339378, 37.241241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600948, 32.229538, 37.446720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388465, -0.401596, -0.829346,
		0.434036, 0.873680, -0.219762,
		0.812839, -0.274597, 0.513701,
		38.844799, 32.147160, 37.600830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830898, 32.660236, 36.834305>,  <38.275814, 32.339378, 37.241241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830898, 32.660236, 36.834305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.958763, 32.357708, 37.062622>,  <39.035480, 32.176193, 37.199612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.958763, 32.357708, 37.062622>,  <38.830898, 32.660236, 36.834305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958763, 32.357708, 37.062622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644010, -0.268447, -0.716371,
		0.695030, 0.596592, 0.401263,
		0.319663, -0.756316, 0.570790,
		39.054661, 32.130814, 37.233860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613003, 32.762650, 36.855007>,  <38.830898, 32.660236, 36.834305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613003, 32.762650, 36.855007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525990, 32.375729, 36.907185>,  <39.473782, 32.143578, 36.938492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525990, 32.375729, 36.907185>,  <39.613003, 32.762650, 36.855007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525990, 32.375729, 36.907185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631551, -0.241387, -0.736801,
		0.744193, -0.077895, 0.663407,
		-0.217531, -0.967298, 0.130444,
		39.460732, 32.085541, 36.946320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189674, 32.415112, 36.747025>,  <39.613003, 32.762650, 36.855007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189674, 32.415112, 36.747025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910851, 32.134422, 36.688118>,  <39.743557, 31.966009, 36.652775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910851, 32.134422, 36.688118>,  <40.189674, 32.415112, 36.747025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910851, 32.134422, 36.688118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490996, -0.317484, -0.811250,
		0.522520, -0.637798, 0.565850,
		-0.697062, -0.701725, -0.147265,
		39.701733, 31.923904, 36.643940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592976, 31.847088, 36.478527>,  <40.189674, 32.415112, 36.747025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592976, 31.847088, 36.478527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210869, 31.760159, 36.398289>,  <39.981606, 31.708002, 36.350147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210869, 31.760159, 36.398289>,  <40.592976, 31.847088, 36.478527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210869, 31.760159, 36.398289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290408, -0.560985, -0.775215,
		0.055941, -0.798791, 0.599002,
		-0.955266, -0.217322, -0.200593,
		39.924290, 31.694962, 36.338112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654076, 31.141798, 36.321259>,  <40.592976, 31.847088, 36.478527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654076, 31.141798, 36.321259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303600, 31.249189, 36.161152>,  <40.093315, 31.313623, 36.065086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303600, 31.249189, 36.161152>,  <40.654076, 31.141798, 36.321259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303600, 31.249189, 36.161152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272495, -0.409064, -0.870869,
		-0.397529, -0.872121, 0.285264,
		-0.876195, 0.268463, -0.400264,
		40.040745, 31.329733, 36.041073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327732, 30.483528, 35.965847>,  <40.654076, 31.141798, 36.321259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327732, 30.483528, 35.965847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.192707, 30.825899, 35.809162>,  <40.111694, 31.031322, 35.715153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.192707, 30.825899, 35.809162>,  <40.327732, 30.483528, 35.965847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192707, 30.825899, 35.809162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152884, -0.360760, -0.920043,
		-0.928806, -0.370455, -0.009081,
		-0.337558, 0.855930, -0.391712,
		40.091438, 31.082678, 35.691647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163269, 30.318989, 35.276527>,  <40.327732, 30.483528, 35.965847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163269, 30.318989, 35.276527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189716, 30.717758, 35.259708>,  <40.205585, 30.957020, 35.249619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189716, 30.717758, 35.259708>,  <40.163269, 30.318989, 35.276527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189716, 30.717758, 35.259708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270970, -0.058496, -0.960809,
		-0.960315, 0.052131, -0.274004,
		0.066116, 0.996925, -0.042049,
		40.209553, 31.016836, 35.247093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918713, 30.407644, 34.639503>,  <40.163269, 30.318989, 35.276527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918713, 30.407644, 34.639503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063534, 30.774086, 34.708408>,  <40.150425, 30.993950, 34.749752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063534, 30.774086, 34.708408>,  <39.918713, 30.407644, 34.639503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063534, 30.774086, 34.708408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365072, 0.030685, -0.930473,
		-0.857695, 0.399768, -0.323334,
		0.362052, 0.916102, 0.172263,
		40.172150, 31.048916, 34.760086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778542, 30.759651, 34.052715>,  <39.918713, 30.407644, 34.639503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778542, 30.759651, 34.052715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065899, 30.975613, 34.228176>,  <40.238312, 31.105190, 34.333454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065899, 30.975613, 34.228176>,  <39.778542, 30.759651, 34.052715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065899, 30.975613, 34.228176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362861, 0.247151, -0.898470,
		-0.593501, 0.804624, -0.018359,
		0.718393, 0.539904, 0.438651,
		40.281418, 31.137585, 34.359772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824223, 31.339409, 33.735634>,  <39.778542, 30.759651, 34.052715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824223, 31.339409, 33.735634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.178310, 31.325573, 33.921188>,  <40.390762, 31.317270, 34.032520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.178310, 31.325573, 33.921188>,  <39.824223, 31.339409, 33.735634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178310, 31.325573, 33.921188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444329, 0.358063, -0.821196,
		-0.137696, 0.933056, 0.332334,
		0.885218, -0.034591, 0.463888,
		40.443874, 31.315195, 34.060356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115108, 31.976334, 33.703117>,  <39.824223, 31.339409, 33.735634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115108, 31.976334, 33.703117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404884, 31.704891, 33.751579>,  <40.578751, 31.542025, 33.780655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404884, 31.704891, 33.751579>,  <40.115108, 31.976334, 33.703117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404884, 31.704891, 33.751579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399080, 0.269572, -0.876393,
		0.562068, 0.683244, 0.466108,
		0.724441, -0.678607, 0.121151,
		40.622215, 31.501308, 33.787926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581989, 32.310349, 33.354790>,  <40.115108, 31.976334, 33.703117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581989, 32.310349, 33.354790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689129, 31.929207, 33.411819>,  <40.753414, 31.700521, 33.446037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.689129, 31.929207, 33.411819>,  <40.581989, 32.310349, 33.354790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689129, 31.929207, 33.411819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300415, -0.058007, -0.952043,
		0.915428, 0.297834, 0.270714,
		0.267848, -0.952854, 0.142575,
		40.769482, 31.643351, 33.454594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293686, 32.221848, 33.026218>,  <40.581989, 32.310349, 33.354790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293686, 32.221848, 33.026218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.119930, 31.862957, 33.057919>,  <41.015675, 31.647621, 33.076939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.119930, 31.862957, 33.057919>,  <41.293686, 32.221848, 33.026218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119930, 31.862957, 33.057919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266745, -0.212179, -0.940121,
		0.860320, -0.387243, 0.331500,
		-0.434393, -0.897231, 0.079246,
		40.989613, 31.593788, 33.081692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725300, 31.745203, 32.659714>,  <41.293686, 32.221848, 33.026218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725300, 31.745203, 32.659714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.379272, 31.547148, 32.691936>,  <41.171654, 31.428314, 32.711269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.379272, 31.547148, 32.691936>,  <41.725300, 31.745203, 32.659714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379272, 31.547148, 32.691936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111764, -0.346779, -0.931264,
		0.489039, -0.796607, 0.355327,
		-0.865072, -0.495137, 0.080557,
		41.119751, 31.398607, 32.716103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844746, 31.079466, 32.439495>,  <41.725300, 31.745203, 32.659714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844746, 31.079466, 32.439495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.449627, 31.121691, 32.393688>,  <41.212555, 31.147026, 32.366203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.449627, 31.121691, 32.393688>,  <41.844746, 31.079466, 32.439495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449627, 31.121691, 32.393688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068549, -0.365591, -0.928248,
		-0.139854, -0.924770, 0.353894,
		-0.987796, 0.105560, -0.114522,
		41.153290, 31.153358, 32.359333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667961, 30.596241, 31.966488>,  <41.844746, 31.079466, 32.439495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667961, 30.596241, 31.966488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.306065, 30.766258, 31.955254>,  <41.088928, 30.868269, 31.948513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.306065, 30.766258, 31.955254>,  <41.667961, 30.596241, 31.966488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306065, 30.766258, 31.955254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088242, -0.251514, -0.963823,
		-0.416728, -0.869529, 0.265061,
		-0.904738, 0.425042, -0.028085,
		41.034641, 30.893770, 31.946829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312878, 30.245705, 31.489223>,  <41.667961, 30.596241, 31.966488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312878, 30.245705, 31.489223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120872, 30.595417, 31.518118>,  <41.005669, 30.805244, 31.535454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120872, 30.595417, 31.518118>,  <41.312878, 30.245705, 31.489223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120872, 30.595417, 31.518118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153822, -0.002818, -0.988095,
		-0.863669, -0.485411, 0.135836,
		-0.480015, 0.874282, 0.072234,
		40.976868, 30.857702, 31.539787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.519085, 30.170687, 31.212271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.665741, 30.541807, 31.184685>,  <40.753735, 30.764481, 31.168133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.665741, 30.541807, 31.184685>,  <40.519085, 30.170687, 31.212271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665741, 30.541807, 31.184685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118909, -0.026789, -0.992544,
		-0.922732, 0.372110, 0.100502,
		0.366643, 0.927802, -0.068967,
		40.775734, 30.820148, 31.163996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025837, 30.654167, 30.731327>,  <40.519085, 30.170687, 31.212271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025837, 30.654167, 30.731327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369373, 30.858341, 30.748514>,  <40.575497, 30.980844, 30.758827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369373, 30.858341, 30.748514>,  <40.025837, 30.654167, 30.731327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369373, 30.858341, 30.748514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062019, 0.186884, -0.980422,
		-0.508470, 0.839364, 0.192160,
		0.858843, 0.510433, 0.042969,
		40.627026, 31.011471, 30.761404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867764, 31.266710, 30.275177>,  <40.025837, 30.654167, 30.731327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867764, 31.266710, 30.275177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.267048, 31.244415, 30.283794>,  <40.506618, 31.231039, 30.288965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.267048, 31.244415, 30.283794>,  <39.867764, 31.266710, 30.275177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267048, 31.244415, 30.283794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029833, 0.152502, -0.987853,
		0.051773, 0.986730, 0.153893,
		0.998213, -0.055736, 0.021542,
		40.566513, 31.227695, 30.290257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218349, 31.825445, 29.783554>,  <39.867764, 31.266710, 30.275177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218349, 31.825445, 29.783554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500504, 31.544703, 29.823215>,  <40.669796, 31.376257, 29.847013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500504, 31.544703, 29.823215>,  <40.218349, 31.825445, 29.783554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500504, 31.544703, 29.823215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084256, -0.055872, -0.994877,
		0.703802, 0.710122, 0.019724,
		0.705382, -0.701858, 0.099155,
		40.712116, 31.334145, 29.852962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631702, 31.999468, 29.216938>,  <40.218349, 31.825445, 29.783554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631702, 31.999468, 29.216938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720882, 31.622643, 29.317181>,  <40.774391, 31.396547, 29.377327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720882, 31.622643, 29.317181>,  <40.631702, 31.999468, 29.216938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720882, 31.622643, 29.317181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056437, -0.244175, -0.968088,
		0.973194, 0.229982, -0.001273,
		0.222953, -0.942065, 0.250609,
		40.787769, 31.340023, 29.392363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188423, 31.745008, 28.749580>,  <40.631702, 31.999468, 29.216938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188423, 31.745008, 28.749580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.075577, 31.390291, 28.896008>,  <41.007870, 31.177460, 28.983864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.075577, 31.390291, 28.896008>,  <41.188423, 31.745008, 28.749580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075577, 31.390291, 28.896008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026337, -0.388584, -0.921037,
		0.959020, -0.250196, 0.132980,
		-0.282113, -0.886795, 0.366070,
		40.990944, 31.124252, 29.005829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648918, 31.162247, 28.485655>,  <41.188423, 31.745008, 28.749580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648918, 31.162247, 28.485655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307304, 30.992041, 28.605364>,  <41.102337, 30.889917, 28.677189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307304, 30.992041, 28.605364>,  <41.648918, 31.162247, 28.485655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307304, 30.992041, 28.605364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025898, -0.609342, -0.792484,
		0.519574, -0.669057, 0.531419,
		-0.854033, -0.425517, 0.299271,
		41.051094, 30.864386, 28.695145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745850, 30.534372, 28.332626>,  <41.648918, 31.162247, 28.485655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745850, 30.534372, 28.332626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348984, 30.565498, 28.371710>,  <41.110863, 30.584173, 28.395161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348984, 30.565498, 28.371710>,  <41.745850, 30.534372, 28.332626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348984, 30.565498, 28.371710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124598, -0.671747, -0.730227,
		0.008815, -0.736682, 0.676181,
		-0.992168, 0.077814, 0.097710,
		41.051334, 30.588842, 28.401022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528336, 29.896870, 28.494926>,  <41.745850, 30.534372, 28.332626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528336, 29.896870, 28.494926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.235275, 30.122807, 28.343044>,  <41.059441, 30.258369, 28.251915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.235275, 30.122807, 28.343044>,  <41.528336, 29.896870, 28.494926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235275, 30.122807, 28.343044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000522, -0.558359, -0.829599,
		-0.680604, -0.607609, 0.409377,
		-0.732652, 0.564842, -0.379704,
		41.015480, 30.292259, 28.229134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017731, 29.387434, 28.426769>,  <41.528336, 29.896870, 28.494926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017731, 29.387434, 28.426769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.016300, 29.715326, 28.197676>,  <41.015442, 29.912062, 28.060219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.016300, 29.715326, 28.197676>,  <41.017731, 29.387434, 28.426769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016300, 29.715326, 28.197676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141903, -0.566527, -0.811733,
		-0.989874, -0.084177, -0.114296,
		-0.003578, 0.819732, -0.572735,
		41.015228, 29.961246, 28.025854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666374, 29.203163, 27.860523>,  <41.017731, 29.387434, 28.426769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666374, 29.203163, 27.860523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863857, 29.532959, 27.749912>,  <40.982346, 29.730837, 27.683546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863857, 29.532959, 27.749912>,  <40.666374, 29.203163, 27.860523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863857, 29.532959, 27.749912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196214, -0.415397, -0.888226,
		-0.847202, 0.384267, -0.366862,
		0.493709, 0.824490, -0.276527,
		41.011971, 29.780306, 27.666954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596771, 29.375750, 27.082865>,  <40.666374, 29.203163, 27.860523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596771, 29.375750, 27.082865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.936031, 29.567583, 27.172874>,  <41.139587, 29.682682, 27.226879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.936031, 29.567583, 27.172874>,  <40.596771, 29.375750, 27.082865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936031, 29.567583, 27.172874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347958, -0.184048, -0.919267,
		-0.399450, 0.857978, -0.322976,
		0.848154, 0.479583, 0.225022,
		41.190479, 29.711458, 27.240381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862415, 29.710846, 26.423080>,  <40.596771, 29.375750, 27.082865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862415, 29.710846, 26.423080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.179623, 29.711397, 26.666759>,  <41.369946, 29.711729, 26.812967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.179623, 29.711397, 26.666759>,  <40.862415, 29.710846, 26.423080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179623, 29.711397, 26.666759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588367, -0.261020, -0.765306,
		0.157958, 0.965333, -0.207804,
		0.793015, 0.001379, 0.609200,
		41.417526, 29.711811, 26.849520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354584, 30.061609, 26.088631>,  <40.862415, 29.710846, 26.423080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354584, 30.061609, 26.088631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.555973, 29.840611, 26.354342>,  <41.676807, 29.708012, 26.513767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.555973, 29.840611, 26.354342>,  <41.354584, 30.061609, 26.088631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555973, 29.840611, 26.354342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643345, -0.273475, -0.715066,
		0.576735, 0.787374, 0.217759,
		0.503472, -0.552498, 0.664276,
		41.707016, 29.674862, 26.553625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088642, 30.091364, 25.893839>,  <41.354584, 30.061609, 26.088631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088642, 30.091364, 25.893839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.089756, 29.762924, 26.122150>,  <42.090424, 29.565861, 26.259138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.089756, 29.762924, 26.122150>,  <42.088642, 30.091364, 25.893839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089756, 29.762924, 26.122150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540636, -0.478939, -0.691614,
		0.841252, 0.310508, 0.442584,
		0.002781, -0.821099, 0.570780,
		42.090591, 29.516594, 26.293385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853920, 29.900835, 25.939926>,  <42.088642, 30.091364, 25.893839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853920, 29.900835, 25.939926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.591015, 29.607111, 26.007797>,  <42.433270, 29.430878, 26.048521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.591015, 29.607111, 26.007797>,  <42.853920, 29.900835, 25.939926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591015, 29.607111, 26.007797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440218, -0.556801, -0.704401,
		0.611725, -0.388283, 0.689223,
		-0.657267, -0.734308, 0.169680,
		42.393833, 29.386818, 26.058701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242474, 29.375616, 26.075893>,  <42.853920, 29.900835, 25.939926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242474, 29.375616, 26.075893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.895191, 29.218088, 25.955143>,  <42.686821, 29.123571, 25.882692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.895191, 29.218088, 25.955143>,  <43.242474, 29.375616, 26.075893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895191, 29.218088, 25.955143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493506, -0.621888, -0.608036,
		0.051723, -0.676877, 0.734277,
		-0.868203, -0.393819, -0.301876,
		42.634731, 29.099943, 25.864580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487762, 28.751703, 25.803015>,  <43.242474, 29.375616, 26.075893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487762, 28.751703, 25.803015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107006, 28.747419, 25.680521>,  <42.878551, 28.744848, 25.607025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107006, 28.747419, 25.680521>,  <43.487762, 28.751703, 25.803015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107006, 28.747419, 25.680521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209341, -0.752541, -0.624386,
		-0.223766, -0.658458, 0.718583,
		-0.951896, -0.010712, -0.306235,
		42.821438, 28.744205, 25.588650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187935, 28.045918, 25.869808>,  <43.487762, 28.751703, 25.803015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187935, 28.045918, 25.869808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.031921, 28.249813, 25.563074>,  <42.938313, 28.372150, 25.379034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.031921, 28.249813, 25.563074>,  <43.187935, 28.045918, 25.869808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031921, 28.249813, 25.563074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284153, -0.725518, -0.626802,
		-0.875858, -0.462375, 0.138136,
		-0.390038, 0.509738, -0.766837,
		42.914909, 28.402735, 25.333023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028744, 27.486713, 25.511442>,  <43.187935, 28.045918, 25.869808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028744, 27.486713, 25.511442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.992119, 27.793444, 25.257326>,  <42.970142, 27.977482, 25.104856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.992119, 27.793444, 25.257326>,  <43.028744, 27.486713, 25.511442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992119, 27.793444, 25.257326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279943, -0.592419, -0.755428,
		-0.955640, -0.247012, -0.160426,
		-0.091561, 0.766828, -0.635289,
		42.964649, 28.023493, 25.066740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518833, 27.290098, 25.087753>,  <43.028744, 27.486713, 25.511442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518833, 27.290098, 25.087753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.713184, 27.577229, 24.888294>,  <42.829796, 27.749506, 24.768620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.713184, 27.577229, 24.888294>,  <42.518833, 27.290098, 25.087753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713184, 27.577229, 24.888294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047151, -0.591214, -0.805135,
		-0.872754, 0.367686, -0.321104,
		0.485878, 0.717826, -0.498647,
		42.858948, 27.792576, 24.738701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272015, 27.124882, 24.456175>,  <42.518833, 27.290098, 25.087753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272015, 27.124882, 24.456175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573029, 27.381947, 24.398664>,  <42.753639, 27.536186, 24.364159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573029, 27.381947, 24.398664>,  <42.272015, 27.124882, 24.456175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573029, 27.381947, 24.398664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250466, -0.481223, -0.840055,
		-0.609060, 0.596162, -0.523103,
		0.752538, 0.642663, -0.143775,
		42.798790, 27.574745, 24.355532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383011, 27.099483, 23.676260>,  <42.272015, 27.124882, 24.456175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383011, 27.099483, 23.676260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.619270, 27.391090, 23.814632>,  <42.761028, 27.566053, 23.897655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.619270, 27.391090, 23.814632>,  <42.383011, 27.099483, 23.676260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619270, 27.391090, 23.814632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272634, 0.223196, -0.935871,
		-0.759475, 0.647086, -0.066923,
		0.590652, 0.729016, 0.345929,
		42.796467, 27.609795, 23.918411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010696, 27.079277, 23.048840>,  <42.383011, 27.099483, 23.676260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010696, 27.079277, 23.048840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.734852, 27.135025, 22.764582>,  <41.569347, 27.168474, 22.594027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.734852, 27.135025, 22.764582>,  <42.010696, 27.079277, 23.048840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734852, 27.135025, 22.764582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463475, 0.669077, 0.580971,
		0.556445, 0.730009, -0.396808,
		-0.689608, 0.139368, -0.710645,
		41.527969, 27.176836, 22.551388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906231, 27.827513, 22.951075>,  <42.010696, 27.079277, 23.048840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906231, 27.827513, 22.951075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.556580, 27.687294, 22.816599>,  <41.346790, 27.603163, 22.735914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.556580, 27.687294, 22.816599>,  <41.906231, 27.827513, 22.951075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556580, 27.687294, 22.816599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482103, 0.710328, 0.512846,
		0.059028, 0.610369, -0.789915,
		-0.874124, -0.350548, -0.336190,
		41.294342, 27.582130, 22.715742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656265, 28.413876, 22.639051>,  <41.906231, 27.827513, 22.951075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656265, 28.413876, 22.639051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.362804, 28.160959, 22.738619>,  <41.186729, 28.009209, 22.798359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.362804, 28.160959, 22.738619>,  <41.656265, 28.413876, 22.639051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362804, 28.160959, 22.738619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505387, 0.752589, 0.422130,
		-0.454242, 0.183897, -0.871691,
		-0.733653, -0.632291, 0.248919,
		41.142708, 27.971272, 22.813293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222534, 28.878105, 22.760370>,  <41.656265, 28.413876, 22.639051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222534, 28.878105, 22.760370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017879, 28.556507, 22.881580>,  <40.895088, 28.363548, 22.954308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017879, 28.556507, 22.881580>,  <41.222534, 28.878105, 22.760370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017879, 28.556507, 22.881580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635156, 0.591427, 0.496781,
		-0.578627, 0.061700, -0.813255,
		-0.511633, -0.803995, 0.303026,
		40.864391, 28.315310, 22.972488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458633, 28.973223, 22.663406>,  <41.222534, 28.878105, 22.760370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458633, 28.973223, 22.663406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483772, 28.676226, 22.930164>,  <40.498856, 28.498028, 23.090219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483772, 28.676226, 22.930164>,  <40.458633, 28.973223, 22.663406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483772, 28.676226, 22.930164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523989, 0.544162, 0.655228,
		-0.849403, -0.390626, -0.354859,
		0.062848, -0.742495, 0.666897,
		40.502628, 28.453478, 23.130234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831486, 28.867298, 22.819477>,  <40.458633, 28.973223, 22.663406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831486, 28.867298, 22.819477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.030464, 28.716640, 23.132063>,  <40.149853, 28.626245, 23.319614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.030464, 28.716640, 23.132063>,  <39.831486, 28.867298, 22.819477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030464, 28.716640, 23.132063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435005, 0.671083, 0.600348,
		-0.750545, -0.638582, 0.169985,
		0.497446, -0.376644, 0.781465,
		40.179699, 28.603647, 23.366503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319206, 28.725185, 23.321911>,  <39.831486, 28.867298, 22.819477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319206, 28.725185, 23.321911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.663467, 28.735491, 23.525328>,  <39.870026, 28.741674, 23.647377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.663467, 28.735491, 23.525328>,  <39.319206, 28.725185, 23.321911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663467, 28.735491, 23.525328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477200, 0.389243, 0.787890,
		-0.177647, -0.920775, 0.347297,
		0.860652, 0.025764, 0.508541,
		39.921661, 28.743219, 23.677891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143688, 28.585176, 24.028301>,  <39.319206, 28.725185, 23.321911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143688, 28.585176, 24.028301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499386, 28.765326, 24.060333>,  <39.712803, 28.873415, 24.079552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499386, 28.765326, 24.060333>,  <39.143688, 28.585176, 24.028301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499386, 28.765326, 24.060333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318353, 0.483600, 0.815342,
		0.328481, -0.750530, 0.573415,
		0.889242, 0.450372, 0.080080,
		39.766159, 28.900438, 24.084356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386818, 28.557812, 24.761337>,  <39.143688, 28.585176, 24.028301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386818, 28.557812, 24.761337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599575, 28.855274, 24.599321>,  <39.727230, 29.033752, 24.502111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599575, 28.855274, 24.599321>,  <39.386818, 28.557812, 24.761337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599575, 28.855274, 24.599321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165916, 0.560564, 0.811319,
		0.830396, -0.364335, 0.421548,
		0.531897, 0.743658, -0.405041,
		39.759144, 29.078371, 24.477810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920666, 28.795250, 25.194576>,  <39.386818, 28.557812, 24.761337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920666, 28.795250, 25.194576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.924915, 29.100584, 24.936211>,  <39.927464, 29.283785, 24.781191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.924915, 29.100584, 24.936211>,  <39.920666, 28.795250, 25.194576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924915, 29.100584, 24.936211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072246, 0.643675, 0.761881,
		0.997330, -0.054758, -0.048311,
		0.010622, 0.763338, -0.645913,
		39.928101, 29.329586, 24.742437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504089, 29.173433, 25.431213>,  <39.920666, 28.795250, 25.194576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504089, 29.173433, 25.431213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.262249, 29.418341, 25.227417>,  <40.117146, 29.565285, 25.105139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.262249, 29.418341, 25.227417>,  <40.504089, 29.173433, 25.431213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262249, 29.418341, 25.227417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016713, 0.629747, 0.776621,
		0.796352, 0.478062, -0.370514,
		-0.604603, 0.612271, -0.509490,
		40.080868, 29.602022, 25.074570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740452, 29.933653, 25.399414>,  <40.504089, 29.173433, 25.431213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740452, 29.933653, 25.399414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.345158, 29.961758, 25.345081>,  <40.107979, 29.978621, 25.312481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.345158, 29.961758, 25.345081>,  <40.740452, 29.933653, 25.399414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345158, 29.961758, 25.345081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051697, 0.682437, 0.729114,
		0.143927, 0.727559, -0.670777,
		-0.988237, 0.070262, -0.135834,
		40.048687, 29.982836, 25.304331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451561, 30.646761, 25.644072>,  <40.740452, 29.933653, 25.399414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451561, 30.646761, 25.644072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134666, 30.402712, 25.648418>,  <39.944530, 30.256283, 25.651028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134666, 30.402712, 25.648418>,  <40.451561, 30.646761, 25.644072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134666, 30.402712, 25.648418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305372, 0.411816, 0.858578,
		-0.528312, 0.676875, -0.512569,
		-0.792233, -0.610121, 0.010869,
		39.896996, 30.219675, 25.651678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889267, 31.089916, 25.937576>,  <40.451561, 30.646761, 25.644072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889267, 31.089916, 25.937576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.714626, 30.730089, 25.942595>,  <39.609840, 30.514193, 25.945606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.714626, 30.730089, 25.942595>,  <39.889267, 31.089916, 25.937576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714626, 30.730089, 25.942595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497717, 0.253136, 0.829578,
		-0.749438, 0.355950, -0.558249,
		-0.436602, -0.899567, 0.012548,
		39.583645, 30.460218, 25.946360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124523, 31.177736, 25.931484>,  <39.889267, 31.089916, 25.937576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124523, 31.177736, 25.931484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223797, 30.824976, 26.091810>,  <39.283363, 30.613319, 26.188005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223797, 30.824976, 26.091810>,  <39.124523, 31.177736, 25.931484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223797, 30.824976, 26.091810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629683, 0.167554, 0.758568,
		-0.736140, -0.440652, -0.513734,
		0.248187, -0.881902, 0.400814,
		39.298252, 30.560406, 26.212055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521530, 31.041235, 26.298513>,  <39.124523, 31.177736, 25.931484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521530, 31.041235, 26.298513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.767422, 30.762093, 26.445541>,  <38.914955, 30.594606, 26.533758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.767422, 30.762093, 26.445541>,  <38.521530, 31.041235, 26.298513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767422, 30.762093, 26.445541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336891, 0.189062, 0.922367,
		-0.713174, -0.690833, -0.118880,
		0.614725, -0.697858, 0.367569,
		38.951839, 30.552734, 26.555813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089840, 30.591808, 26.629274>,  <38.521530, 31.041235, 26.298513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089840, 30.591808, 26.629274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436317, 30.563974, 26.827208>,  <38.644203, 30.547274, 26.945967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436317, 30.563974, 26.827208>,  <38.089840, 30.591808, 26.629274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436317, 30.563974, 26.827208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475871, 0.187289, 0.859343,
		-0.152473, -0.979837, 0.129116,
		0.866198, -0.069584, 0.494832,
		38.696178, 30.543098, 26.975657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925625, 30.139265, 27.114620>,  <38.089840, 30.591808, 26.629274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925625, 30.139265, 27.114620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256130, 30.309530, 27.262184>,  <38.454433, 30.411690, 27.350721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256130, 30.309530, 27.262184>,  <37.925625, 30.139265, 27.114620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256130, 30.309530, 27.262184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420775, 0.031028, 0.906634,
		0.374473, -0.904350, 0.204745,
		0.826268, 0.425662, 0.368909,
		38.504009, 30.437229, 27.372856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256447, 29.681101, 27.710541>,  <37.925625, 30.139265, 27.114620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256447, 29.681101, 27.710541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316109, 30.074547, 27.751051>,  <38.351906, 30.310614, 27.775358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316109, 30.074547, 27.751051>,  <38.256447, 29.681101, 27.710541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316109, 30.074547, 27.751051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377730, -0.037979, 0.925136,
		0.913823, -0.176241, 0.365876,
		0.149152, 0.983614, 0.101278,
		38.360855, 30.369631, 27.781435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284489, 29.763844, 28.351097>,  <38.256447, 29.681101, 27.710541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284489, 29.763844, 28.351097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276222, 30.157829, 28.282488>,  <38.271263, 30.394220, 28.241323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276222, 30.157829, 28.282488>,  <38.284489, 29.763844, 28.351097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276222, 30.157829, 28.282488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407669, 0.148347, 0.900998,
		0.912896, 0.088541, 0.398474,
		-0.020662, 0.984964, -0.171521,
		38.270023, 30.453318, 28.231031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585247, 30.053812, 28.870892>,  <38.284489, 29.763844, 28.351097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585247, 30.053812, 28.870892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370438, 30.357607, 28.724035>,  <38.241554, 30.539883, 28.635921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370438, 30.357607, 28.724035>,  <38.585247, 30.053812, 28.870892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370438, 30.357607, 28.724035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241942, 0.278268, 0.929533,
		0.808130, 0.588004, 0.034316,
		-0.537020, 0.759485, -0.367140,
		38.209332, 30.585453, 28.613894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.508240, 30.525932, 34.075165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254581, 30.817492, 33.971958>,  <41.102386, 30.992426, 33.910034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254581, 30.817492, 33.971958>,  <41.508240, 30.525932, 34.075165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254581, 30.817492, 33.971958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184576, 0.181350, 0.965942,
		0.750863, 0.660169, 0.019535,
		-0.634143, 0.728896, -0.258020,
		41.064339, 31.036160, 33.894550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583942, 31.029720, 34.599747>,  <41.508240, 30.525932, 34.075165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583942, 31.029720, 34.599747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237469, 31.134470, 34.429501>,  <41.029587, 31.197321, 34.327351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237469, 31.134470, 34.429501>,  <41.583942, 31.029720, 34.599747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237469, 31.134470, 34.429501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466966, -0.120842, 0.875979,
		0.177965, 0.957506, 0.226958,
		-0.866182, 0.261875, -0.425617,
		40.977615, 31.213032, 34.301815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387089, 31.583866, 34.904266>,  <41.583942, 31.029720, 34.599747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387089, 31.583866, 34.904266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040211, 31.455904, 34.751617>,  <40.832085, 31.379128, 34.660027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040211, 31.455904, 34.751617>,  <41.387089, 31.583866, 34.904266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040211, 31.455904, 34.751617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429004, 0.090818, 0.898726,
		-0.252849, 0.943087, -0.215997,
		-0.867193, -0.319905, -0.381625,
		40.780052, 31.359932, 34.637131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899525, 32.068188, 35.172359>,  <41.387089, 31.583866, 34.904266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899525, 32.068188, 35.172359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.695454, 31.746521, 35.050354>,  <40.573009, 31.553522, 34.977150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.695454, 31.746521, 35.050354>,  <40.899525, 32.068188, 35.172359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695454, 31.746521, 35.050354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552961, 0.035060, 0.832469,
		-0.658749, 0.593371, -0.462558,
		-0.510180, -0.804165, -0.305016,
		40.542400, 31.505272, 34.958851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222088, 32.285381, 35.055698>,  <40.899525, 32.068188, 35.172359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222088, 32.285381, 35.055698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212357, 31.895178, 35.143135>,  <40.206520, 31.661055, 35.195599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212357, 31.895178, 35.143135>,  <40.222088, 32.285381, 35.055698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212357, 31.895178, 35.143135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611801, 0.187456, 0.768479,
		-0.790638, -0.115043, -0.601379,
		-0.024324, -0.975513, 0.218593,
		40.205059, 31.602524, 35.208714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519382, 32.148529, 35.182262>,  <40.222088, 32.285381, 35.055698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519382, 32.148529, 35.182262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702946, 31.820498, 35.319012>,  <39.813084, 31.623680, 35.401062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702946, 31.820498, 35.319012>,  <39.519382, 32.148529, 35.182262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702946, 31.820498, 35.319012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660395, -0.057431, 0.748719,
		-0.594372, -0.569365, -0.567931,
		0.458911, -0.820077, 0.341871,
		39.840618, 31.574474, 35.421574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929134, 31.705359, 35.400665>,  <39.519382, 32.148529, 35.182262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929134, 31.705359, 35.400665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266567, 31.607924, 35.592094>,  <39.469028, 31.549461, 35.706951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266567, 31.607924, 35.592094>,  <38.929134, 31.705359, 35.400665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266567, 31.607924, 35.592094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413035, 0.275199, 0.868141,
		-0.343171, -0.930016, 0.131543,
		0.843585, -0.243589, 0.478569,
		39.519642, 31.534847, 35.735664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769394, 31.209717, 35.998390>,  <38.929134, 31.705359, 35.400665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769394, 31.209717, 35.998390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115620, 31.373863, 36.113213>,  <39.323357, 31.472351, 36.182106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115620, 31.373863, 36.113213>,  <38.769394, 31.209717, 35.998390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115620, 31.373863, 36.113213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372953, 0.145665, 0.916345,
		0.334224, -0.900212, 0.279130,
		0.865564, 0.410366, 0.287052,
		39.375290, 31.496973, 36.199329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880905, 30.950832, 36.602367>,  <38.769394, 31.209717, 35.998390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880905, 30.950832, 36.602367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131794, 31.262094, 36.615463>,  <39.282326, 31.448851, 36.623322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131794, 31.262094, 36.615463>,  <38.880905, 30.950832, 36.602367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131794, 31.262094, 36.615463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126083, 0.059971, 0.990205,
		0.768569, -0.625204, 0.135727,
		0.627220, 0.778154, 0.032736,
		39.319962, 31.495541, 36.625282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111141, 30.867756, 37.259674>,  <38.880905, 30.950832, 36.602367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111141, 30.867756, 37.259674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.239796, 31.233171, 37.160076>,  <39.316986, 31.452421, 37.100319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.239796, 31.233171, 37.160076>,  <39.111141, 30.867756, 37.259674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239796, 31.233171, 37.160076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088890, 0.290935, 0.952605,
		0.942683, -0.284257, 0.174779,
		0.321633, 0.913540, -0.248992,
		39.336285, 31.507233, 37.085381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537102, 31.030266, 37.778759>,  <39.111141, 30.867756, 37.259674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537102, 31.030266, 37.778759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413197, 31.370907, 37.609608>,  <39.338856, 31.575291, 37.508118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413197, 31.370907, 37.609608>,  <39.537102, 31.030266, 37.778759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413197, 31.370907, 37.609608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270362, 0.347503, 0.897856,
		0.911567, 0.392449, 0.122599,
		-0.309759, 0.851602, -0.422875,
		39.320271, 31.626387, 37.482746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905151, 31.582663, 38.122051>,  <39.537102, 31.030266, 37.778759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905151, 31.582663, 38.122051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.593456, 31.777998, 37.964916>,  <39.406441, 31.895199, 37.870636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.593456, 31.777998, 37.964916>,  <39.905151, 31.582663, 38.122051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593456, 31.777998, 37.964916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240172, 0.346277, 0.906868,
		0.578887, 0.801012, -0.152546,
		-0.779235, 0.488337, -0.392835,
		39.359684, 31.924500, 37.847065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838627, 32.372227, 38.251999>,  <39.905151, 31.582663, 38.122051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838627, 32.372227, 38.251999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477474, 32.203350, 38.219616>,  <39.260780, 32.102024, 38.200188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477474, 32.203350, 38.219616>,  <39.838627, 32.372227, 38.251999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477474, 32.203350, 38.219616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205471, 0.258417, 0.943929,
		-0.377601, 0.868891, -0.320070,
		-0.902883, -0.422194, -0.080954,
		39.206608, 32.076691, 38.195332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218403, 32.989834, 38.599079>,  <39.838627, 32.372227, 38.251999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218403, 32.989834, 38.599079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857677, 33.047691, 38.436199>,  <39.641243, 33.082405, 38.338470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857677, 33.047691, 38.436199>,  <40.218403, 32.989834, 38.599079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857677, 33.047691, 38.436199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429071, -0.411553, 0.804066,
		-0.051284, 0.899836, 0.433205,
		-0.901814, 0.144640, -0.407200,
		39.587132, 33.091084, 38.314041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982159, 32.930931, 38.450626>,  <40.218403, 32.989834, 38.599079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982159, 32.930931, 38.450626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044090, 33.326077, 38.455708>,  <41.081249, 33.563164, 38.458755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044090, 33.326077, 38.455708>,  <40.982159, 32.930931, 38.450626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044090, 33.326077, 38.455708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109539, -0.004386, -0.993973,
		-0.981850, 0.155289, -0.108888,
		0.154831, 0.987859, 0.012704,
		41.090538, 33.622433, 38.459518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606602, 33.226772, 37.868069>,  <40.982159, 32.930931, 38.450626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606602, 33.226772, 37.868069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884548, 33.504101, 37.944454>,  <41.051315, 33.670498, 37.990284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884548, 33.504101, 37.944454>,  <40.606602, 33.226772, 37.868069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884548, 33.504101, 37.944454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203002, 0.065631, -0.976976,
		-0.689891, 0.717634, -0.095141,
		0.694867, 0.693321, 0.190959,
		41.093010, 33.712097, 38.001743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536716, 33.883301, 37.440041>,  <40.606602, 33.226772, 37.868069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536716, 33.883301, 37.440041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911282, 33.881516, 37.580391>,  <41.136021, 33.880444, 37.664600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911282, 33.881516, 37.580391>,  <40.536716, 33.883301, 37.440041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911282, 33.881516, 37.580391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347561, 0.149423, -0.925675,
		-0.048295, 0.988763, 0.141473,
		0.936413, -0.004465, 0.350872,
		41.192207, 33.880177, 37.685654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811974, 34.469791, 37.102711>,  <40.536716, 33.883301, 37.440041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811974, 34.469791, 37.102711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135567, 34.279621, 37.240997>,  <41.329723, 34.165520, 37.323967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135567, 34.279621, 37.240997>,  <40.811974, 34.469791, 37.102711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135567, 34.279621, 37.240997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490821, 0.222673, -0.842325,
		0.323481, 0.851110, 0.413487,
		0.808984, -0.475424, 0.345713,
		41.378262, 34.136993, 37.344711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401665, 34.857643, 36.952354>,  <40.811974, 34.469791, 37.102711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401665, 34.857643, 36.952354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575573, 34.499912, 36.994598>,  <41.679920, 34.285275, 37.019947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575573, 34.499912, 36.994598>,  <41.401665, 34.857643, 36.952354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575573, 34.499912, 36.994598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439932, 0.108598, -0.891440,
		0.785768, 0.434037, 0.440658,
		0.434773, -0.894325, 0.105614,
		41.706005, 34.231613, 37.026283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000576, 35.028484, 36.611656>,  <41.401665, 34.857643, 36.952354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000576, 35.028484, 36.611656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.007702, 34.628578, 36.616478>,  <42.011978, 34.388634, 36.619370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.007702, 34.628578, 36.616478>,  <42.000576, 35.028484, 36.611656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007702, 34.628578, 36.616478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368726, -0.004634, -0.929527,
		0.929367, 0.021003, 0.368558,
		0.017815, -0.999769, 0.012051,
		42.013046, 34.328648, 36.620094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748928, 34.957405, 36.423553>,  <42.000576, 35.028484, 36.611656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748928, 34.957405, 36.423553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562538, 34.607975, 36.367374>,  <42.450703, 34.398315, 36.333668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562538, 34.607975, 36.367374>,  <42.748928, 34.957405, 36.423553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562538, 34.607975, 36.367374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438950, -0.090415, -0.893951,
		0.768239, -0.478208, 0.425589,
		-0.465974, -0.873580, -0.140449,
		42.422745, 34.345901, 36.325241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264011, 34.377941, 36.167339>,  <42.748928, 34.957405, 36.423553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264011, 34.377941, 36.167339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897045, 34.284477, 36.038498>,  <42.676865, 34.228397, 35.961193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897045, 34.284477, 36.038498>,  <43.264011, 34.377941, 36.167339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897045, 34.284477, 36.038498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358252, -0.132629, -0.924156,
		0.173219, -0.963230, 0.205385,
		-0.917415, -0.233661, -0.322105,
		42.621822, 34.214378, 35.941868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534435, 33.994476, 35.593235>,  <43.264011, 34.377941, 36.167339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534435, 33.994476, 35.593235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137383, 33.997471, 35.544849>,  <42.899151, 33.999268, 35.515816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137383, 33.997471, 35.544849>,  <43.534435, 33.994476, 35.593235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137383, 33.997471, 35.544849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101904, -0.488756, -0.866449,
		-0.065613, -0.872389, 0.484389,
		-0.992628, 0.007489, -0.120968,
		42.839596, 33.999718, 35.508560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204262, 33.254074, 35.503151>,  <43.534435, 33.994476, 35.593235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204262, 33.254074, 35.503151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.999653, 33.531403, 35.300110>,  <42.876888, 33.697800, 35.178288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.999653, 33.531403, 35.300110>,  <43.204262, 33.254074, 35.503151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999653, 33.531403, 35.300110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168812, -0.498136, -0.850508,
		-0.842526, -0.520740, 0.137765,
		-0.511519, 0.693318, -0.507600,
		42.846195, 33.739399, 35.147831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876854, 32.841026, 34.973000>,  <43.204262, 33.254074, 35.503151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876854, 32.841026, 34.973000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.827595, 33.219723, 34.853992>,  <42.798038, 33.446941, 34.782589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.827595, 33.219723, 34.853992>,  <42.876854, 32.841026, 34.973000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827595, 33.219723, 34.853992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011162, -0.301100, -0.953527,
		-0.992326, -0.114101, 0.047647,
		-0.123144, 0.946742, -0.297515,
		42.790653, 33.503746, 34.764736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366787, 32.741905, 34.447609>,  <42.876854, 32.841026, 34.973000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366787, 32.741905, 34.447609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548210, 33.092354, 34.382259>,  <42.657066, 33.302624, 34.343048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548210, 33.092354, 34.382259>,  <42.366787, 32.741905, 34.447609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548210, 33.092354, 34.382259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078180, -0.221722, -0.971971,
		-0.887790, 0.428075, -0.169059,
		0.453560, 0.876123, -0.163375,
		42.684277, 33.355190, 34.333248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936943, 33.139473, 33.943848>,  <42.366787, 32.741905, 34.447609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936943, 33.139473, 33.943848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312664, 33.274338, 33.918461>,  <42.538097, 33.355255, 33.903229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312664, 33.274338, 33.918461>,  <41.936943, 33.139473, 33.943848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312664, 33.274338, 33.918461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057915, -0.338158, -0.939306,
		-0.338158, 0.878619, -0.337161,
		0.939306, 0.337161, -0.063466,
		42.594456, 33.375484, 33.899422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093792, 33.727821, 33.373032>,  <41.936943, 33.139473, 33.943848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093792, 33.727821, 33.373032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.434639, 33.530334, 33.442478>,  <42.639145, 33.411842, 33.484146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.434639, 33.530334, 33.442478>,  <42.093792, 33.727821, 33.373032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434639, 33.530334, 33.442478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008469, -0.318694, -0.947820,
		0.523285, 0.809122, -0.267383,
		0.852116, -0.493715, 0.173621,
		42.690273, 33.382221, 33.494564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149803, 34.484283, 33.452209>,  <42.093792, 33.727821, 33.373032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149803, 34.484283, 33.452209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006214, 34.809307, 33.268520>,  <41.920059, 35.004322, 33.158306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006214, 34.809307, 33.268520>,  <42.149803, 34.484283, 33.452209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006214, 34.809307, 33.268520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399754, 0.310748, 0.862342,
		0.843406, 0.493133, 0.213274,
		-0.358975, 0.812561, -0.459219,
		41.898521, 35.053074, 33.130756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312065, 35.149128, 33.870255>,  <42.149803, 34.484283, 33.452209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312065, 35.149128, 33.870255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973686, 35.196560, 33.662289>,  <41.770660, 35.225021, 33.537510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973686, 35.196560, 33.662289>,  <42.312065, 35.149128, 33.870255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973686, 35.196560, 33.662289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469512, 0.296658, 0.831597,
		0.252850, 0.947593, -0.195281,
		-0.845946, 0.118583, -0.519916,
		41.719902, 35.232136, 33.506313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103516, 35.786339, 34.118504>,  <42.312065, 35.149128, 33.870255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103516, 35.786339, 34.118504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781002, 35.619061, 33.951164>,  <41.587494, 35.518696, 33.850761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781002, 35.619061, 33.951164>,  <42.103516, 35.786339, 34.118504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781002, 35.619061, 33.951164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586662, 0.474826, 0.656024,
		-0.075701, 0.774373, -0.628184,
		-0.806286, -0.418194, -0.418350,
		41.539116, 35.493603, 33.825661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641754, 36.291313, 34.081806>,  <42.103516, 35.786339, 34.118504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641754, 36.291313, 34.081806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.395195, 35.977585, 34.053825>,  <41.247261, 35.789349, 34.037037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.395195, 35.977585, 34.053825>,  <41.641754, 36.291313, 34.081806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395195, 35.977585, 34.053825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673610, 0.479209, 0.562679,
		-0.407802, 0.393952, -0.823711,
		-0.616399, -0.784321, -0.069947,
		41.210274, 35.742287, 34.032841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984127, 36.593300, 34.071358>,  <41.641754, 36.291313, 34.081806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984127, 36.593300, 34.071358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885506, 36.211559, 34.138805>,  <40.826332, 35.982517, 34.179272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885506, 36.211559, 34.138805>,  <40.984127, 36.593300, 34.071358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885506, 36.211559, 34.138805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815423, 0.298309, 0.496082,
		-0.523735, -0.015185, -0.851746,
		-0.246550, -0.954349, 0.168617,
		40.811543, 35.925255, 34.189392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286209, 36.547672, 33.973183>,  <40.984127, 36.593300, 34.071358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286209, 36.547672, 33.973183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392403, 36.255276, 34.224632>,  <40.456120, 36.079838, 34.375504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392403, 36.255276, 34.224632>,  <40.286209, 36.547672, 33.973183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392403, 36.255276, 34.224632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749194, 0.253972, 0.611725,
		-0.606819, -0.633365, -0.480229,
		0.265480, -0.730991, 0.628628,
		40.472046, 36.035980, 34.413219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694183, 36.121964, 33.929707>,  <40.286209, 36.547672, 33.973183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694183, 36.121964, 33.929707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914646, 36.057514, 34.257187>,  <40.046925, 36.018845, 34.453674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914646, 36.057514, 34.257187>,  <39.694183, 36.121964, 33.929707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914646, 36.057514, 34.257187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833761, -0.067865, 0.547938,
		-0.032726, -0.984598, -0.171745,
		0.551154, -0.161126, 0.818698,
		40.079994, 36.009178, 34.502796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219879, 35.607101, 34.341797>,  <39.694183, 36.121964, 33.929707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219879, 35.607101, 34.341797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503090, 35.739212, 34.591476>,  <39.673016, 35.818478, 34.741283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503090, 35.739212, 34.591476>,  <39.219879, 35.607101, 34.341797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503090, 35.739212, 34.591476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648219, -0.046771, 0.760016,
		0.280207, -0.942726, 0.180974,
		0.708022, 0.330272, 0.624199,
		39.715496, 35.838295, 34.778736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121597, 35.234268, 34.904743>,  <39.219879, 35.607101, 34.341797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121597, 35.234268, 34.904743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.305172, 35.562557, 35.040859>,  <39.415318, 35.759529, 35.122528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.305172, 35.562557, 35.040859>,  <39.121597, 35.234268, 34.904743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305172, 35.562557, 35.040859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652339, 0.051245, 0.756193,
		0.603185, -0.569028, 0.558905,
		0.458936, 0.820720, 0.340289,
		39.442852, 35.808773, 35.142944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050255, 35.202168, 35.718765>,  <39.121597, 35.234268, 34.904743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050255, 35.202168, 35.718765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168365, 35.575680, 35.637905>,  <39.239231, 35.799786, 35.589390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168365, 35.575680, 35.637905>,  <39.050255, 35.202168, 35.718765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168365, 35.575680, 35.637905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506106, 0.332334, 0.795871,
		0.810351, -0.132693, 0.570722,
		0.295277, 0.933781, -0.202150,
		39.256950, 35.855816, 35.577259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256172, 35.469898, 36.458225>,  <39.050255, 35.202168, 35.718765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256172, 35.469898, 36.458225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179039, 35.763054, 36.197247>,  <39.132759, 35.938950, 36.040661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179039, 35.763054, 36.197247>,  <39.256172, 35.469898, 36.458225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179039, 35.763054, 36.197247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604986, 0.434701, 0.667103,
		0.772533, 0.523359, 0.359566,
		-0.192831, 0.732891, -0.652446,
		39.121189, 35.982922, 36.001514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215076, 36.077690, 36.879913>,  <39.256172, 35.469898, 36.458225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215076, 36.077690, 36.879913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028969, 36.205936, 36.549889>,  <38.917305, 36.282887, 36.351875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.028969, 36.205936, 36.549889>,  <39.215076, 36.077690, 36.879913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028969, 36.205936, 36.549889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581355, 0.592198, 0.557967,
		0.667494, 0.739260, -0.089140,
		-0.465271, 0.320618, -0.825062,
		38.889389, 36.302120, 36.302372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.916367, 34.219688, 30.110371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544678, 34.299950, 29.986246>,  <43.321667, 34.348106, 29.911772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544678, 34.299950, 29.986246>,  <43.916367, 34.219688, 30.110371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544678, 34.299950, 29.986246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259300, 0.244243, 0.934403,
		0.263282, 0.948727, -0.174925,
		-0.929218, 0.200654, -0.310310,
		43.265911, 34.360146, 29.893152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839764, 34.918415, 30.247210>,  <43.916367, 34.219688, 30.110371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839764, 34.918415, 30.247210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465054, 34.782742, 30.212799>,  <43.240227, 34.701336, 30.192152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465054, 34.782742, 30.212799>,  <43.839764, 34.918415, 30.247210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465054, 34.782742, 30.212799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236966, 0.434012, 0.869184,
		-0.257478, 0.834617, -0.486948,
		-0.936777, -0.339186, -0.086028,
		43.184021, 34.680984, 30.186991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386711, 35.442120, 30.540735>,  <43.839764, 34.918415, 30.247210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386711, 35.442120, 30.540735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121368, 35.145618, 30.499746>,  <42.962162, 34.967720, 30.475153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121368, 35.145618, 30.499746>,  <43.386711, 35.442120, 30.540735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121368, 35.145618, 30.499746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413053, 0.248529, 0.876139,
		-0.623972, 0.623522, -0.471040,
		-0.663360, -0.741251, -0.102473,
		42.922359, 34.923244, 30.469004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820362, 35.751507, 30.611429>,  <43.386711, 35.442120, 30.540735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820362, 35.751507, 30.611429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766857, 35.376190, 30.739000>,  <42.734756, 35.151001, 30.815542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766857, 35.376190, 30.739000>,  <42.820362, 35.751507, 30.611429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766857, 35.376190, 30.739000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317398, 0.345427, 0.883141,
		-0.938811, 0.016901, -0.344017,
		-0.133759, -0.938293, 0.318926,
		42.726730, 35.094704, 30.834679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096050, 35.675312, 30.808657>,  <42.820362, 35.751507, 30.611429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096050, 35.675312, 30.808657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278591, 35.373623, 30.997505>,  <42.388115, 35.192612, 31.110813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278591, 35.373623, 30.997505>,  <42.096050, 35.675312, 30.808657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278591, 35.373623, 30.997505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459844, 0.254340, 0.850797,
		-0.761767, -0.605363, -0.230755,
		0.456350, -0.754220, 0.472120,
		42.415497, 35.147358, 31.139141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538303, 35.241768, 31.138912>,  <42.096050, 35.675312, 30.808657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538303, 35.241768, 31.138912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868504, 35.091839, 31.307705>,  <42.066624, 35.001881, 31.408979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868504, 35.091839, 31.307705>,  <41.538303, 35.241768, 31.138912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868504, 35.091839, 31.307705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407653, 0.121135, 0.905066,
		-0.390353, -0.919150, -0.052799,
		0.825496, -0.374819, 0.421979,
		42.116154, 34.979393, 31.434299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375957, 34.634342, 31.621494>,  <41.538303, 35.241768, 31.138912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375957, 34.634342, 31.621494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714893, 34.800438, 31.753912>,  <41.918255, 34.900097, 31.833363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714893, 34.800438, 31.753912>,  <41.375957, 34.634342, 31.621494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714893, 34.800438, 31.753912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404912, 0.101840, 0.908667,
		0.343604, -0.903992, 0.254430,
		0.847339, 0.415243, 0.331044,
		41.969093, 34.925011, 31.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657139, 34.227238, 32.112659>,  <41.375957, 34.634342, 31.621494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657139, 34.227238, 32.112659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835033, 34.571629, 32.211391>,  <41.941769, 34.778263, 32.270630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835033, 34.571629, 32.211391>,  <41.657139, 34.227238, 32.112659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835033, 34.571629, 32.211391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390999, -0.061310, 0.918347,
		0.805810, -0.504933, 0.309375,
		0.444736, 0.860979, 0.246833,
		41.968452, 34.829922, 32.285442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793236, 34.147091, 32.852436>,  <41.657139, 34.227238, 32.112659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793236, 34.147091, 32.852436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852886, 34.539654, 32.804115>,  <41.888676, 34.775192, 32.775124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852886, 34.539654, 32.804115>,  <41.793236, 34.147091, 32.852436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852886, 34.539654, 32.804115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384384, 0.170097, 0.907368,
		0.911049, -0.088876, 0.402605,
		0.149125, 0.981412, -0.120804,
		41.897625, 34.834076, 32.767876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538651, 34.085213, 32.779907>,  <41.793236, 34.147091, 32.852436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538651, 34.085213, 32.779907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762333, 33.783070, 32.916569>,  <42.896542, 33.601784, 32.998566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762333, 33.783070, 32.916569>,  <42.538651, 34.085213, 32.779907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762333, 33.783070, 32.916569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261137, -0.230639, -0.937344,
		0.786830, 0.613381, 0.068279,
		0.559201, -0.755360, 0.341650,
		42.930092, 33.556461, 33.019062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243664, 34.163166, 32.489437>,  <42.538651, 34.085213, 32.779907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243664, 34.163166, 32.489437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206581, 33.783974, 32.611252>,  <43.184330, 33.556458, 32.684341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206581, 33.783974, 32.611252>,  <43.243664, 34.163166, 32.489437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206581, 33.783974, 32.611252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439809, -0.313389, -0.841638,
		0.893293, 0.055910, 0.445983,
		-0.092710, -0.947977, 0.304539,
		43.178768, 33.499580, 32.702614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963280, 33.804214, 32.484241>,  <43.243664, 34.163166, 32.489437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963280, 33.804214, 32.484241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685055, 33.519531, 32.444897>,  <43.518120, 33.348721, 32.421288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685055, 33.519531, 32.444897>,  <43.963280, 33.804214, 32.484241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685055, 33.519531, 32.444897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453554, -0.328776, -0.828369,
		0.557214, -0.620793, 0.551479,
		-0.695559, -0.711704, -0.098364,
		43.476387, 33.306019, 32.415386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373550, 33.133396, 32.239624>,  <43.963280, 33.804214, 32.484241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373550, 33.133396, 32.239624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988922, 33.043922, 32.175934>,  <43.758144, 32.990238, 32.137722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988922, 33.043922, 32.175934>,  <44.373550, 33.133396, 32.239624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988922, 33.043922, 32.175934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256817, -0.527586, -0.809752,
		0.097129, -0.819522, 0.564756,
		-0.961567, -0.223689, -0.159223,
		43.700451, 32.976814, 32.128166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236485, 32.396038, 32.229153>,  <44.373550, 33.133396, 32.239624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236485, 32.396038, 32.229153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954475, 32.561745, 31.998907>,  <43.785271, 32.661167, 31.860760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954475, 32.561745, 31.998907>,  <44.236485, 32.396038, 32.229153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954475, 32.561745, 31.998907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225549, -0.638531, -0.735803,
		-0.672367, -0.648583, 0.356739,
		-0.705018, 0.414268, -0.575614,
		43.742970, 32.686024, 31.826223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069847, 31.780216, 31.927330>,  <44.236485, 32.396038, 32.229153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069847, 31.780216, 31.927330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907284, 32.065380, 31.698736>,  <43.809746, 32.236477, 31.561581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907284, 32.065380, 31.698736>,  <44.069847, 31.780216, 31.927330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907284, 32.065380, 31.698736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317814, -0.476111, -0.819946,
		-0.856638, -0.514857, -0.033078,
		-0.406406, 0.712910, -0.571483,
		43.785362, 32.279255, 31.527290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617390, 31.534260, 31.359409>,  <44.069847, 31.780216, 31.927330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617390, 31.534260, 31.359409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739647, 31.895580, 31.238989>,  <43.813000, 32.112373, 31.166737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739647, 31.895580, 31.238989>,  <43.617390, 31.534260, 31.359409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739647, 31.895580, 31.238989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177451, -0.364680, -0.914068,
		-0.935464, 0.225957, -0.271753,
		0.305643, 0.903301, -0.301049,
		43.831341, 32.166569, 31.148674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325848, 31.609449, 30.698498>,  <43.617390, 31.534260, 31.359409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325848, 31.609449, 30.698498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602585, 31.898241, 30.702356>,  <43.768627, 32.071518, 30.704672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602585, 31.898241, 30.702356>,  <43.325848, 31.609449, 30.698498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602585, 31.898241, 30.702356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335208, -0.309325, -0.889918,
		-0.639520, 0.618920, -0.456019,
		0.691846, 0.721981, 0.009647,
		43.810139, 32.114834, 30.705250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302776, 32.084812, 30.025908>,  <43.325848, 31.609449, 30.698498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302776, 32.084812, 30.025908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665890, 32.126923, 30.188311>,  <43.883759, 32.152187, 30.285753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665890, 32.126923, 30.188311>,  <43.302776, 32.084812, 30.025908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665890, 32.126923, 30.188311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418019, -0.147545, -0.896376,
		-0.034463, 0.983436, -0.177947,
		0.907784, 0.105277, 0.406010,
		43.938225, 32.158504, 30.310114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661648, 32.478924, 29.563900>,  <43.302776, 32.084812, 30.025908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661648, 32.478924, 29.563900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946247, 32.289139, 29.771229>,  <44.117004, 32.175266, 29.895626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946247, 32.289139, 29.771229>,  <43.661648, 32.478924, 29.563900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946247, 32.289139, 29.771229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445730, -0.265508, -0.854886,
		0.543232, 0.839279, 0.022575,
		0.711494, -0.474464, 0.518324,
		44.159695, 32.146801, 29.926725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317829, 32.625919, 29.215429>,  <43.661648, 32.478924, 29.563900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317829, 32.625919, 29.215429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361469, 32.302017, 29.446045>,  <44.387653, 32.107677, 29.584414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361469, 32.302017, 29.446045>,  <44.317829, 32.625919, 29.215429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361469, 32.302017, 29.446045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398436, -0.495745, -0.771678,
		0.910684, 0.313906, 0.268547,
		0.109103, -0.809753, 0.576538,
		44.394199, 32.059090, 29.619007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072067, 32.470707, 29.207209>,  <44.317829, 32.625919, 29.215429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072067, 32.470707, 29.207209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875233, 32.132515, 29.290171>,  <44.757133, 31.929600, 29.339949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875233, 32.132515, 29.290171>,  <45.072067, 32.470707, 29.207209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875233, 32.132515, 29.290171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533230, -0.481057, -0.695880,
		0.688126, -0.231837, 0.687556,
		-0.492085, -0.845479, 0.207406,
		44.727608, 31.878872, 29.352392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531517, 31.933008, 28.989981>,  <45.072067, 32.470707, 29.207209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531517, 31.933008, 28.989981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194969, 31.721161, 29.033054>,  <44.993038, 31.594053, 29.058899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194969, 31.721161, 29.033054>,  <45.531517, 31.933008, 28.989981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194969, 31.721161, 29.033054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351773, -0.687919, -0.634842,
		0.410299, -0.496260, 0.765102,
		-0.841374, -0.529617, 0.107682,
		44.942558, 31.562275, 29.065359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796234, 31.232367, 29.061209>,  <45.531517, 31.933008, 28.989981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796234, 31.232367, 29.061209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408997, 31.165831, 28.986237>,  <45.176655, 31.125910, 28.941254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408997, 31.165831, 28.986237>,  <45.796234, 31.232367, 29.061209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408997, 31.165831, 28.986237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248832, -0.726635, -0.640378,
		-0.029672, -0.666583, 0.744840,
		-0.968092, -0.166339, -0.187428,
		45.118568, 31.115929, 28.930008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.698883, 32.538612, 25.970009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061749, 32.664886, 26.081285>,  <37.279469, 32.740650, 26.148050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061749, 32.664886, 26.081285>,  <36.698883, 32.538612, 25.970009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061749, 32.664886, 26.081285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304047, 0.034777, 0.952022,
		0.290868, -0.948225, 0.127532,
		0.907166, 0.315688, 0.278190,
		37.333900, 32.759594, 26.164742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708435, 32.360447, 26.737509>,  <36.698883, 32.538612, 25.970009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708435, 32.360447, 26.737509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.045013, 32.569618, 26.683069>,  <37.246960, 32.695122, 26.650406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.045013, 32.569618, 26.683069>,  <36.708435, 32.360447, 26.737509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045013, 32.569618, 26.683069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005073, 0.259503, 0.965729,
		0.540325, -0.811914, 0.221010,
		0.841442, 0.522928, -0.136097,
		37.297447, 32.726498, 26.642241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241383, 32.085392, 27.240395>,  <36.708435, 32.360447, 26.737509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241383, 32.085392, 27.240395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334225, 32.464237, 27.151762>,  <37.389931, 32.691544, 27.098583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334225, 32.464237, 27.151762>,  <37.241383, 32.085392, 27.240395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334225, 32.464237, 27.151762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047371, 0.238538, 0.969977,
		0.971537, -0.214639, 0.100232,
		0.232104, 0.947116, -0.221581,
		37.403854, 32.748371, 27.085287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726879, 32.203957, 27.640369>,  <37.241383, 32.085392, 27.240395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726879, 32.203957, 27.640369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.553726, 32.549236, 27.536446>,  <37.449833, 32.756405, 27.474092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.553726, 32.549236, 27.536446>,  <37.726879, 32.203957, 27.640369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553726, 32.549236, 27.536446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145917, 0.217312, 0.965134,
		0.889562, 0.455702, 0.031885,
		-0.432884, 0.863199, -0.259807,
		37.423862, 32.808197, 27.458504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042145, 32.714233, 28.055056>,  <37.726879, 32.203957, 27.640369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042145, 32.714233, 28.055056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687084, 32.873196, 27.961988>,  <37.474049, 32.968575, 27.906149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687084, 32.873196, 27.961988>,  <38.042145, 32.714233, 28.055056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687084, 32.873196, 27.961988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135188, 0.258099, 0.956613,
		0.440217, 0.880597, -0.175379,
		-0.887656, 0.397409, -0.232666,
		37.420788, 32.992416, 27.892189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913410, 33.065517, 28.644062>,  <38.042145, 32.714233, 28.055056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913410, 33.065517, 28.644062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.555195, 33.097450, 28.468960>,  <37.340263, 33.116611, 28.363899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.555195, 33.097450, 28.468960>,  <37.913410, 33.065517, 28.644062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555195, 33.097450, 28.468960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430829, 0.090531, 0.897881,
		0.111309, 0.992689, -0.046681,
		-0.895543, 0.079831, -0.437756,
		37.286533, 33.121399, 28.337633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605793, 33.724339, 28.738371>,  <37.913410, 33.065517, 28.644062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605793, 33.724339, 28.738371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273884, 33.513947, 28.663729>,  <37.074738, 33.387711, 28.618944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273884, 33.513947, 28.663729>,  <37.605793, 33.724339, 28.738371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273884, 33.513947, 28.663729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397854, 0.322992, 0.858713,
		-0.391395, 0.786778, -0.477273,
		-0.829772, -0.525981, -0.186606,
		37.024952, 33.356152, 28.607746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977222, 34.167355, 28.687336>,  <37.605793, 33.724339, 28.738371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977222, 34.167355, 28.687336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871368, 33.799156, 28.802336>,  <36.807858, 33.578236, 28.871336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871368, 33.799156, 28.802336>,  <36.977222, 34.167355, 28.687336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871368, 33.799156, 28.802336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453457, 0.381892, 0.805317,
		-0.851084, 0.082747, -0.518468,
		-0.264636, -0.920495, 0.287500,
		36.791977, 33.523006, 28.888586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363960, 34.353943, 28.971268>,  <36.977222, 34.167355, 28.687336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363960, 34.353943, 28.971268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.406776, 33.967525, 29.065329>,  <36.432465, 33.735676, 29.121765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.406776, 33.967525, 29.065329>,  <36.363960, 34.353943, 28.971268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406776, 33.967525, 29.065329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329775, 0.188626, 0.925023,
		-0.937972, -0.176558, -0.298388,
		0.107036, -0.966047, 0.235150,
		36.438889, 33.677711, 29.135874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719460, 34.082348, 29.245447>,  <36.363960, 34.353943, 28.971268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719460, 34.082348, 29.245447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997829, 33.830189, 29.383018>,  <36.164852, 33.678894, 29.465561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997829, 33.830189, 29.383018>,  <35.719460, 34.082348, 29.245447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997829, 33.830189, 29.383018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389848, 0.070558, 0.918172,
		-0.603084, -0.773056, -0.196658,
		0.695923, -0.630402, 0.343927,
		36.206608, 33.641068, 29.486197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286613, 33.616116, 29.704081>,  <35.719460, 34.082348, 29.245447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286613, 33.616116, 29.704081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673367, 33.552299, 29.783756>,  <35.905418, 33.514008, 29.831562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673367, 33.552299, 29.783756>,  <35.286613, 33.616116, 29.704081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673367, 33.552299, 29.783756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199274, 0.015646, 0.979819,
		-0.159441, -0.987067, -0.016665,
		0.966886, -0.159544, 0.199191,
		35.963432, 33.504436, 29.843513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340210, 32.928619, 30.083572>,  <35.286613, 33.616116, 29.704081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340210, 32.928619, 30.083572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684002, 33.111485, 30.175051>,  <35.890278, 33.221203, 30.229939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684002, 33.111485, 30.175051>,  <35.340210, 32.928619, 30.083572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684002, 33.111485, 30.175051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250937, -0.012438, 0.967924,
		0.445339, -0.889298, 0.104028,
		0.859479, 0.457159, 0.228697,
		35.941845, 33.248631, 30.243660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549297, 32.570068, 30.797636>,  <35.340210, 32.928619, 30.083572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549297, 32.570068, 30.797636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748135, 32.917137, 30.794819>,  <35.867435, 33.125378, 30.793129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748135, 32.917137, 30.794819>,  <35.549297, 32.570068, 30.797636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748135, 32.917137, 30.794819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241926, 0.146383, 0.959189,
		0.833291, -0.475099, 0.282677,
		0.497089, 0.867671, -0.007041,
		35.897263, 33.177437, 30.792707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914074, 32.611362, 31.485928>,  <35.549297, 32.570068, 30.797636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914074, 32.611362, 31.485928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883022, 32.980556, 31.335161>,  <35.864391, 33.202072, 31.244701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883022, 32.980556, 31.335161>,  <35.914074, 32.611362, 31.485928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883022, 32.980556, 31.335161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325161, 0.333948, 0.884731,
		0.942467, 0.191236, 0.274197,
		-0.077625, 0.922989, -0.376917,
		35.859734, 33.257454, 31.222086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597496, 32.504646, 31.775974>,  <35.914074, 32.611362, 31.485928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597496, 32.504646, 31.775974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675632, 32.158066, 31.959761>,  <36.722515, 31.950119, 32.070034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675632, 32.158066, 31.959761>,  <36.597496, 32.504646, 31.775974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675632, 32.158066, 31.959761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470351, -0.328329, -0.819127,
		0.860588, 0.376120, 0.343399,
		0.195342, -0.866449, 0.459465,
		36.734234, 31.898130, 32.097599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248127, 32.493233, 31.685207>,  <36.597496, 32.504646, 31.775974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248127, 32.493233, 31.685207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110706, 32.124187, 31.755365>,  <37.028255, 31.902761, 31.797461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110706, 32.124187, 31.755365>,  <37.248127, 32.493233, 31.685207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110706, 32.124187, 31.755365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420066, -0.317999, -0.849954,
		0.839952, -0.218324, 0.496806,
		-0.343549, -0.922611, 0.175393,
		37.007641, 31.847404, 31.807983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837017, 32.063705, 31.614365>,  <37.248127, 32.493233, 31.685207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837017, 32.063705, 31.614365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530727, 31.809772, 31.573088>,  <37.346954, 31.657413, 31.548321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530727, 31.809772, 31.573088>,  <37.837017, 32.063705, 31.614365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530727, 31.809772, 31.573088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464808, -0.435317, -0.771008,
		0.444538, -0.638348, 0.628409,
		-0.765728, -0.634832, -0.103194,
		37.301010, 31.619324, 31.542130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114113, 31.517195, 31.484159>,  <37.837017, 32.063705, 31.614365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114113, 31.517195, 31.484159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742092, 31.454451, 31.351252>,  <37.518879, 31.416803, 31.271507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742092, 31.454451, 31.351252>,  <38.114113, 31.517195, 31.484159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742092, 31.454451, 31.351252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364947, -0.289288, -0.884944,
		0.042691, -0.944302, 0.326298,
		-0.930049, -0.156861, -0.332270,
		37.463078, 31.407393, 31.251570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318352, 31.007633, 31.000057>,  <38.114113, 31.517195, 31.484159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318352, 31.007633, 31.000057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946762, 31.108135, 30.891336>,  <37.723808, 31.168436, 30.826105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946762, 31.108135, 30.891336>,  <38.318352, 31.007633, 31.000057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946762, 31.108135, 30.891336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231421, -0.178828, -0.956277,
		-0.288876, -0.951258, 0.107981,
		-0.928976, 0.251256, -0.271800,
		37.668068, 31.183512, 30.809797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084324, 30.463259, 30.680780>,  <38.318352, 31.007633, 31.000057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084324, 30.463259, 30.680780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.859703, 30.771915, 30.561298>,  <37.724930, 30.957109, 30.489609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.859703, 30.771915, 30.561298>,  <38.084324, 30.463259, 30.680780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859703, 30.771915, 30.561298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101359, -0.294129, -0.950376,
		-0.821208, -0.563964, 0.086957,
		-0.561555, 0.771643, -0.298704,
		37.691238, 31.003408, 30.471687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928368, 30.188288, 30.070906>,  <38.084324, 30.463259, 30.680780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928368, 30.188288, 30.070906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.807957, 30.569733, 30.069803>,  <37.735710, 30.798599, 30.069141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.807957, 30.569733, 30.069803>,  <37.928368, 30.188288, 30.070906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807957, 30.569733, 30.069803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011020, -0.006369, -0.999919,
		-0.953553, -0.300968, 0.012426,
		-0.301023, 0.953613, -0.002757,
		37.717651, 30.855816, 30.068975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279556, 30.184361, 29.646704>,  <37.928368, 30.188288, 30.070906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279556, 30.184361, 29.646704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484989, 30.527538, 29.651955>,  <37.608250, 30.733444, 29.655106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484989, 30.527538, 29.651955>,  <37.279556, 30.184361, 29.646704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484989, 30.527538, 29.651955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074668, -0.029444, -0.996774,
		-0.854788, 0.512902, -0.079183,
		0.513579, 0.857942, 0.013129,
		37.639061, 30.784922, 29.655893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986073, 30.627052, 29.065983>,  <37.279556, 30.184361, 29.646704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986073, 30.627052, 29.065983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.345592, 30.787851, 29.135912>,  <37.561302, 30.884331, 29.177870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.345592, 30.787851, 29.135912>,  <36.986073, 30.627052, 29.065983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345592, 30.787851, 29.135912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119462, 0.159101, -0.980008,
		-0.421777, 0.901712, 0.094976,
		0.898796, 0.401998, 0.174825,
		37.615231, 30.908451, 29.188360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009674, 31.184759, 28.602633>,  <36.986073, 30.627052, 29.065983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009674, 31.184759, 28.602633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382763, 31.090809, 28.712070>,  <37.606617, 31.034439, 28.777733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382763, 31.090809, 28.712070>,  <37.009674, 31.184759, 28.602633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382763, 31.090809, 28.712070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271537, -0.041707, -0.961524,
		0.237251, 0.971130, 0.024877,
		0.932727, -0.234878, 0.273593,
		37.662582, 31.020346, 28.794147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580566, 31.589224, 28.256069>,  <37.009674, 31.184759, 28.602633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580566, 31.589224, 28.256069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794563, 31.270065, 28.367172>,  <37.922962, 31.078569, 28.433834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794563, 31.270065, 28.367172>,  <37.580566, 31.589224, 28.256069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794563, 31.270065, 28.367172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392181, -0.056659, -0.918141,
		0.748318, 0.600127, 0.282608,
		0.534989, -0.797896, 0.277757,
		37.955059, 31.030697, 28.450499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236240, 31.719997, 27.927895>,  <37.580566, 31.589224, 28.256069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236240, 31.719997, 27.927895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.256691, 31.334482, 28.032579>,  <38.268959, 31.103172, 28.095390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.256691, 31.334482, 28.032579>,  <38.236240, 31.719997, 27.927895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256691, 31.334482, 28.032579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507358, -0.200657, -0.838048,
		0.860218, 0.175627, 0.478728,
		0.051124, -0.963790, 0.261715,
		38.272030, 31.045345, 28.111094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960384, 31.572250, 27.694450>,  <38.236240, 31.719997, 27.927895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960384, 31.572250, 27.694450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804409, 31.207087, 27.742685>,  <38.710823, 30.987988, 27.771627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804409, 31.207087, 27.742685>,  <38.960384, 31.572250, 27.694450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804409, 31.207087, 27.742685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642361, -0.363502, -0.674713,
		0.659787, -0.185636, 0.728162,
		-0.389939, -0.912911, 0.120589,
		38.687428, 30.933214, 27.778862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545502, 31.076290, 27.792576>,  <38.960384, 31.572250, 27.694450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545502, 31.076290, 27.792576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229656, 30.876060, 27.650625>,  <39.040150, 30.755922, 27.565454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229656, 30.876060, 27.650625>,  <39.545502, 31.076290, 27.792576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229656, 30.876060, 27.650625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537745, -0.285969, -0.793128,
		0.295537, -0.817096, 0.494987,
		-0.789613, -0.500576, -0.354874,
		38.992771, 30.725887, 27.544163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734863, 30.803841, 28.502199>,  <39.545502, 31.076290, 27.792576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734863, 30.803841, 28.502199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.125008, 30.723333, 28.466045>,  <40.359093, 30.675030, 28.444353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.125008, 30.723333, 28.466045>,  <39.734863, 30.803841, 28.502199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125008, 30.723333, 28.466045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119336, 0.136691, 0.983400,
		-0.185573, -0.969952, 0.157341,
		0.975357, -0.201269, -0.090384,
		40.417614, 30.662952, 28.438931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942383, 30.246174, 28.984215>,  <39.734863, 30.803841, 28.502199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942383, 30.246174, 28.984215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278114, 30.440786, 28.887211>,  <40.479553, 30.557554, 28.829008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278114, 30.440786, 28.887211>,  <39.942383, 30.246174, 28.984215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278114, 30.440786, 28.887211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216739, 0.109615, 0.970056,
		0.498548, -0.866758, -0.013448,
		0.839330, 0.486534, -0.242508,
		40.529915, 30.586746, 28.814459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500359, 30.008701, 29.487122>,  <39.942383, 30.246174, 28.984215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500359, 30.008701, 29.487122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.652180, 30.347651, 29.338583>,  <40.743271, 30.551020, 29.249460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.652180, 30.347651, 29.338583>,  <40.500359, 30.008701, 29.487122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652180, 30.347651, 29.338583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204692, 0.314519, 0.926919,
		0.902243, -0.427824, -0.054075,
		0.379551, 0.847375, -0.371345,
		40.766045, 30.601864, 29.227180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156292, 30.084129, 29.740934>,  <40.500359, 30.008701, 29.487122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156292, 30.084129, 29.740934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.041252, 30.453766, 29.640265>,  <40.972229, 30.675549, 29.579863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.041252, 30.453766, 29.640265>,  <41.156292, 30.084129, 29.740934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041252, 30.453766, 29.640265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062969, 0.280454, 0.957800,
		0.955679, 0.259612, -0.138847,
		-0.287596, 0.924093, -0.251676,
		40.954975, 30.730993, 29.564762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628452, 30.433228, 30.059351>,  <41.156292, 30.084129, 29.740934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628452, 30.433228, 30.059351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.346096, 30.705624, 29.981401>,  <41.176682, 30.869062, 29.934631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.346096, 30.705624, 29.981401>,  <41.628452, 30.433228, 30.059351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346096, 30.705624, 29.981401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089936, 0.359058, 0.928972,
		0.702592, 0.638222, -0.314700,
		-0.705886, 0.680991, -0.194873,
		41.134331, 30.909922, 29.922939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865547, 31.019875, 30.435884>,  <41.628452, 30.433228, 30.059351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865547, 31.019875, 30.435884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.475952, 31.074236, 30.363354>,  <41.242195, 31.106853, 30.319836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.475952, 31.074236, 30.363354>,  <41.865547, 31.019875, 30.435884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475952, 31.074236, 30.363354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156862, 0.173118, 0.972329,
		0.163533, 0.975480, -0.147297,
		-0.973987, 0.135903, -0.181326,
		41.183758, 31.115007, 30.308956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713570, 31.636986, 30.720224>,  <41.865547, 31.019875, 30.435884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713570, 31.636986, 30.720224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.359272, 31.451584, 30.730234>,  <41.146694, 31.340342, 30.736240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.359272, 31.451584, 30.730234>,  <41.713570, 31.636986, 30.720224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359272, 31.451584, 30.730234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114685, 0.270760, 0.955791,
		-0.449791, 0.843712, -0.292980,
		-0.885740, -0.463507, 0.025024,
		41.093552, 31.312532, 30.737741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132870, 32.061413, 31.000687>,  <41.713570, 31.636986, 30.720224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132870, 32.061413, 31.000687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.014030, 31.683540, 31.056265>,  <40.942726, 31.456816, 31.089611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.014030, 31.683540, 31.056265>,  <41.132870, 32.061413, 31.000687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014030, 31.683540, 31.056265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113998, 0.179568, 0.977118,
		-0.948017, 0.274462, -0.161042,
		-0.297100, -0.944683, 0.138945,
		40.924900, 31.400135, 31.097948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535397, 32.072624, 31.455387>,  <41.132870, 32.061413, 31.000687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535397, 32.072624, 31.455387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658291, 31.693104, 31.484747>,  <40.732029, 31.465393, 31.502363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658291, 31.693104, 31.484747>,  <40.535397, 32.072624, 31.455387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658291, 31.693104, 31.484747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074196, 0.100776, 0.992139,
		-0.948736, -0.299375, 0.101359,
		0.307236, -0.948798, 0.073398,
		40.750462, 31.408464, 31.506765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003670, 31.666430, 31.843449>,  <40.535397, 32.072624, 31.455387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003670, 31.666430, 31.843449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.313107, 31.414686, 31.873011>,  <40.498768, 31.263639, 31.890747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.313107, 31.414686, 31.873011>,  <40.003670, 31.666430, 31.843449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313107, 31.414686, 31.873011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111297, -0.020129, 0.993583,
		-0.623834, -0.776854, -0.085617,
		0.773592, -0.629360, 0.073904,
		40.545185, 31.225878, 31.895182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815479, 31.243776, 32.376785>,  <40.003670, 31.666430, 31.843449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815479, 31.243776, 32.376785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211094, 31.187859, 32.357738>,  <40.448463, 31.154308, 32.346310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.211094, 31.187859, 32.357738>,  <39.815479, 31.243776, 32.376785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211094, 31.187859, 32.357738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040603, -0.052571, 0.997791,
		-0.141991, -0.988783, -0.046318,
		0.989034, -0.139797, -0.047612,
		40.507805, 31.145920, 32.343456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975636, 30.737396, 32.848026>,  <39.815479, 31.243776, 32.376785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975636, 30.737396, 32.848026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320927, 30.935635, 32.809601>,  <40.528099, 31.054577, 32.786545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320927, 30.935635, 32.809601>,  <39.975636, 30.737396, 32.848026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320927, 30.935635, 32.809601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096546, 0.024709, 0.995022,
		0.495503, -0.868202, -0.026518,
		0.863224, 0.495596, -0.096064,
		40.579895, 31.084312, 32.780781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467327, 30.430403, 33.234062>,  <39.975636, 30.737396, 32.848026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467327, 30.430403, 33.234062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.628883, 30.794779, 33.200455>,  <40.725819, 31.013405, 33.180290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.628883, 30.794779, 33.200455>,  <40.467327, 30.430403, 33.234062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628883, 30.794779, 33.200455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165926, 0.017377, 0.985985,
		0.899634, -0.412170, -0.144130,
		0.403889, 0.910941, -0.084023,
		40.750050, 31.068062, 33.175247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885017, 30.358379, 33.743206>,  <40.467327, 30.430403, 33.234062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885017, 30.358379, 33.743206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.871719, 30.743383, 33.635529>,  <40.863743, 30.974386, 33.570923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.871719, 30.743383, 33.635529>,  <40.885017, 30.358379, 33.743206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871719, 30.743383, 33.635529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111629, 0.264084, 0.958018,
		0.993194, 0.061897, 0.098665,
		-0.033243, 0.962512, -0.269196,
		40.861748, 31.032137, 33.554771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.631039, 30.418926, 29.154608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.376549, 30.613878, 28.915382>,  <45.223854, 30.730850, 28.771847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.376549, 30.613878, 28.915382>,  <45.631039, 30.418926, 29.154608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376549, 30.613878, 28.915382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037953, -0.754481, -0.655224,
		-0.770579, -0.439560, 0.461513,
		-0.636213, 0.487386, -0.598070,
		45.185680, 30.760092, 28.735964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110962, 29.804401, 28.918097>,  <45.631039, 30.418926, 29.154608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110962, 29.804401, 28.918097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.079220, 30.104877, 28.655977>,  <45.060177, 30.285164, 28.498705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.079220, 30.104877, 28.655977>,  <45.110962, 29.804401, 28.918097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079220, 30.104877, 28.655977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094129, -0.648787, -0.755126,
		-0.992393, -0.121604, -0.019225,
		-0.079353, 0.751191, -0.655298,
		45.055412, 30.330235, 28.459389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609325, 29.582212, 28.369684>,  <45.110962, 29.804401, 28.918097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609325, 29.582212, 28.369684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.827900, 29.877890, 28.212204>,  <44.959045, 30.055296, 28.117716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.827900, 29.877890, 28.212204>,  <44.609325, 29.582212, 28.369684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827900, 29.877890, 28.212204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032601, -0.488506, -0.871951,
		-0.836864, 0.463633, -0.291038,
		0.546440, 0.739192, -0.393698,
		44.991833, 30.099648, 28.094095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218830, 29.722605, 27.808371>,  <44.609325, 29.582212, 28.369684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218830, 29.722605, 27.808371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.585823, 29.870403, 27.749437>,  <44.806019, 29.959082, 27.714077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.585823, 29.870403, 27.749437>,  <44.218830, 29.722605, 27.808371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585823, 29.870403, 27.749437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041517, -0.457311, -0.888337,
		-0.395613, 0.808913, -0.434913,
		0.917478, 0.369494, -0.147335,
		44.861065, 29.981251, 27.705236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198986, 30.049063, 27.114277>,  <44.218830, 29.722605, 27.808371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198986, 30.049063, 27.114277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.589607, 29.997162, 27.182997>,  <44.823978, 29.966021, 27.224230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.589607, 29.997162, 27.182997>,  <44.198986, 30.049063, 27.114277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589607, 29.997162, 27.182997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062924, -0.591122, -0.804124,
		0.205894, 0.796077, -0.569095,
		0.976549, -0.129754, 0.171801,
		44.882572, 29.958235, 27.234537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523029, 30.186718, 26.509174>,  <44.198986, 30.049063, 27.114277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523029, 30.186718, 26.509174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.843540, 30.012156, 26.672886>,  <45.035847, 29.907417, 26.771112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.843540, 30.012156, 26.672886>,  <44.523029, 30.186718, 26.509174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843540, 30.012156, 26.672886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206881, -0.439781, -0.873952,
		0.561393, 0.784947, -0.262100,
		0.801273, -0.436407, 0.409280,
		45.083923, 29.881233, 26.795670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190285, 30.296370, 26.086128>,  <44.523029, 30.186718, 26.509174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190285, 30.296370, 26.086128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.212849, 29.956095, 26.295183>,  <45.226387, 29.751930, 26.420616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.212849, 29.956095, 26.295183>,  <45.190285, 30.296370, 26.086128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212849, 29.956095, 26.295183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041418, -0.521027, -0.852535,
		0.997548, 0.069737, 0.005844,
		0.056408, -0.850687, 0.522638,
		45.229771, 29.700890, 26.451975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678150, 29.933809, 25.749199>,  <45.190285, 30.296370, 26.086128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678150, 29.933809, 25.749199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.499172, 29.657143, 25.975964>,  <45.391785, 29.491142, 26.112022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.499172, 29.657143, 25.975964>,  <45.678150, 29.933809, 25.749199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.499172, 29.657143, 25.975964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075976, -0.661018, -0.746514,
		0.891078, -0.290952, 0.348320,
		-0.447445, -0.691666, 0.566913,
		45.364937, 29.449642, 26.146038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045670, 29.332161, 25.671391>,  <45.678150, 29.933809, 25.749199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045670, 29.332161, 25.671391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.681511, 29.206070, 25.778578>,  <45.463017, 29.130415, 25.842890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.681511, 29.206070, 25.778578>,  <46.045670, 29.332161, 25.671391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681511, 29.206070, 25.778578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006379, -0.636914, -0.770908,
		0.413686, -0.703542, 0.577834,
		-0.910397, -0.315228, 0.267970,
		45.408390, 29.111502, 25.858969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912086, 28.582888, 25.456108>,  <46.045670, 29.332161, 25.671391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912086, 28.582888, 25.456108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.535229, 28.712015, 25.492237>,  <45.309116, 28.789492, 25.513914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.535229, 28.712015, 25.492237>,  <45.912086, 28.582888, 25.456108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535229, 28.712015, 25.492237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287404, -0.639209, -0.713309,
		-0.172535, -0.697997, 0.695005,
		-0.942142, 0.322818, 0.090321,
		45.252586, 28.808861, 25.519333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651653, 28.059107, 25.163429>,  <45.912086, 28.582888, 25.456108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651653, 28.059107, 25.163429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.326290, 28.288559, 25.202040>,  <45.131073, 28.426229, 25.225206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.326290, 28.288559, 25.202040>,  <45.651653, 28.059107, 25.163429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326290, 28.288559, 25.202040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423086, -0.469536, -0.774942,
		-0.399206, -0.671183, 0.624619,
		-0.813409, 0.573628, 0.096526,
		45.082268, 28.460648, 25.230997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072308, 27.635878, 25.320934>,  <45.651653, 28.059107, 25.163429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072308, 27.635878, 25.320934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.933605, 27.965553, 25.141838>,  <44.850384, 28.163359, 25.034380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.933605, 27.965553, 25.141838>,  <45.072308, 27.635878, 25.320934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933605, 27.965553, 25.141838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530937, -0.565992, -0.630681,
		-0.773219, 0.019032, 0.633853,
		-0.346753, 0.824191, -0.447741,
		44.829578, 28.212811, 25.007517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421993, 27.662508, 25.314363>,  <45.072308, 27.635878, 25.320934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421993, 27.662508, 25.314363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.528492, 27.861538, 24.984144>,  <44.592392, 27.980957, 24.786013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.528492, 27.861538, 24.984144>,  <44.421993, 27.662508, 25.314363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528492, 27.861538, 24.984144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518172, -0.648297, -0.557862,
		-0.812778, 0.576307, 0.085220,
		0.266252, 0.497576, -0.825547,
		44.608368, 28.010811, 24.736481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882351, 27.947868, 24.840874>,  <44.421993, 27.662508, 25.314363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882351, 27.947868, 24.840874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.192745, 27.841703, 24.611998>,  <44.378983, 27.778004, 24.474672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.192745, 27.841703, 24.611998>,  <43.882351, 27.947868, 24.840874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192745, 27.841703, 24.611998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566991, -0.690970, -0.448420,
		-0.276351, 0.672395, -0.686669,
		0.775984, -0.265414, -0.572192,
		44.425541, 27.762079, 24.440340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892723, 28.223492, 24.136578>,  <43.882351, 27.947868, 24.840874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892723, 28.223492, 24.136578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.544697, 28.044048, 24.218290>,  <43.335880, 27.936382, 24.267319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.544697, 28.044048, 24.218290>,  <43.892723, 28.223492, 24.136578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544697, 28.044048, 24.218290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220752, 0.725155, 0.652241,
		-0.440737, 0.522398, -0.729966,
		-0.870068, -0.448608, 0.204283,
		43.283676, 27.909466, 24.279575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392830, 28.733170, 23.974321>,  <43.892723, 28.223492, 24.136578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392830, 28.733170, 23.974321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.232418, 28.454546, 24.212307>,  <43.136169, 28.287373, 24.355099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.232418, 28.454546, 24.212307>,  <43.392830, 28.733170, 23.974321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232418, 28.454546, 24.212307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127933, 0.685700, 0.716554,
		-0.907088, 0.211244, -0.364099,
		-0.401030, -0.696557, 0.594965,
		43.112110, 28.245579, 24.390797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825134, 29.070335, 24.235771>,  <43.392830, 28.733170, 23.974321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825134, 29.070335, 24.235771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.875370, 28.763521, 24.487450>,  <42.905510, 28.579433, 24.638456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.875370, 28.763521, 24.487450>,  <42.825134, 29.070335, 24.235771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875370, 28.763521, 24.487450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494188, 0.501562, 0.710080,
		-0.860236, -0.400120, -0.316067,
		0.125590, -0.767033, 0.629196,
		42.913048, 28.533411, 24.676208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167583, 28.974411, 24.467234>,  <42.825134, 29.070335, 24.235771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167583, 28.974411, 24.467234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.428528, 28.807367, 24.720224>,  <42.585094, 28.707140, 24.872019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.428528, 28.807367, 24.720224>,  <42.167583, 28.974411, 24.467234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428528, 28.807367, 24.720224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451470, 0.456171, 0.766866,
		-0.608769, -0.785817, 0.109048,
		0.652361, -0.417612, 0.632476,
		42.624237, 28.682083, 24.909967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680927, 28.806358, 25.013763>,  <42.167583, 28.974411, 24.467234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680927, 28.806358, 25.013763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.038498, 28.783644, 25.191605>,  <42.253040, 28.770016, 25.298309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.038498, 28.783644, 25.191605>,  <41.680927, 28.806358, 25.013763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038498, 28.783644, 25.191605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382550, 0.420237, 0.822835,
		-0.233563, -0.905636, 0.353938,
		0.893926, -0.056784, 0.444603,
		42.306675, 28.766609, 25.324986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531593, 28.505093, 25.638348>,  <41.680927, 28.806358, 25.013763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531593, 28.505093, 25.638348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.878296, 28.700020, 25.680771>,  <42.086319, 28.816977, 25.706224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.878296, 28.700020, 25.680771>,  <41.531593, 28.505093, 25.638348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878296, 28.700020, 25.680771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320763, 0.381886, 0.866761,
		0.381886, -0.785293, 0.487317,
		-0.866761, -0.487317, -0.106056,
		42.138325, 28.846214, 25.712587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740307, 28.284908, 26.309858>,  <41.531593, 28.505093, 25.638348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740307, 28.284908, 26.309858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.924763, 28.626554, 26.213661>,  <42.035435, 28.831543, 26.155943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.924763, 28.626554, 26.213661>,  <41.740307, 28.284908, 26.309858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924763, 28.626554, 26.213661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378162, 0.434355, 0.817514,
		0.802712, -0.286040, 0.523292,
		0.461137, 0.854118, -0.240493,
		42.063103, 28.882790, 26.141514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048908, 28.407034, 26.925293>,  <41.740307, 28.284908, 26.309858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048908, 28.407034, 26.925293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.029041, 28.754196, 26.727596>,  <42.017120, 28.962494, 26.608978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.029041, 28.754196, 26.727596>,  <42.048908, 28.407034, 26.925293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029041, 28.754196, 26.727596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392552, 0.438065, 0.808704,
		0.918388, 0.234181, 0.318940,
		-0.049667, 0.867905, -0.494242,
		42.014141, 29.014568, 26.579325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316765, 28.968039, 27.417683>,  <42.048908, 28.407034, 26.925293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316765, 28.968039, 27.417683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.130806, 29.196520, 27.147099>,  <42.019230, 29.333609, 26.984749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.130806, 29.196520, 27.147099>,  <42.316765, 28.968039, 27.417683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130806, 29.196520, 27.147099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390594, 0.553352, 0.735689,
		0.794548, 0.606241, -0.034145,
		-0.464899, 0.571203, -0.676459,
		41.991337, 29.367880, 26.944160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441139, 29.713724, 27.688560>,  <42.316765, 28.968039, 27.417683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441139, 29.713724, 27.688560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.134708, 29.721170, 27.431568>,  <41.950851, 29.725637, 27.277372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.134708, 29.721170, 27.431568>,  <42.441139, 29.713724, 27.688560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134708, 29.721170, 27.431568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492883, 0.624565, 0.605792,
		0.412548, 0.780751, -0.469289,
		-0.766075, 0.018613, -0.642482,
		41.904884, 29.726755, 27.238823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245296, 30.428883, 27.572380>,  <42.441139, 29.713724, 27.688560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245296, 30.428883, 27.572380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.931606, 30.202663, 27.470284>,  <41.743393, 30.066931, 27.409025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.931606, 30.202663, 27.470284>,  <42.245296, 30.428883, 27.572380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931606, 30.202663, 27.470284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596637, 0.574395, 0.560442,
		-0.170349, 0.591797, -0.787881,
		-0.784223, -0.565550, -0.255241,
		41.696339, 30.032999, 27.393711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704567, 30.845661, 27.303211>,  <42.245296, 30.428883, 27.572380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704567, 30.845661, 27.303211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.522499, 30.515463, 27.436705>,  <41.413258, 30.317345, 27.516800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.522499, 30.515463, 27.436705>,  <41.704567, 30.845661, 27.303211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522499, 30.515463, 27.436705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566691, 0.557675, 0.606515,
		-0.686789, 0.086946, -0.721638,
		-0.455173, -0.825493, 0.333734,
		41.385948, 30.267815, 27.536825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070625, 31.064615, 27.310894>,  <41.704567, 30.845661, 27.303211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070625, 31.064615, 27.310894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.076591, 30.731750, 27.532625>,  <41.080170, 30.532032, 27.665665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.076591, 30.731750, 27.532625>,  <41.070625, 31.064615, 27.310894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076591, 30.731750, 27.532625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583058, 0.443141, 0.680933,
		-0.812294, -0.333361, -0.478590,
		0.014914, -0.832163, 0.554330,
		41.081066, 30.482101, 27.698925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316284, 30.983232, 27.396814>,  <41.070625, 31.064615, 27.310894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316284, 30.983232, 27.396814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525158, 30.767452, 27.661030>,  <40.650482, 30.637983, 27.819559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525158, 30.767452, 27.661030>,  <40.316284, 30.983232, 27.396814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525158, 30.767452, 27.661030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646352, 0.254951, 0.719186,
		-0.556370, -0.802492, -0.215543,
		0.522189, -0.539451, 0.660540,
		40.681816, 30.605618, 27.859192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823402, 30.462122, 27.534685>,  <40.316284, 30.983232, 27.396814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823402, 30.462122, 27.534685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462784, 30.504715, 27.366934>,  <39.246414, 30.530270, 27.266283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462784, 30.504715, 27.366934>,  <39.823402, 30.462122, 27.534685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462784, 30.504715, 27.366934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365601, -0.330920, -0.869959,
		-0.231416, -0.937632, 0.259409,
		-0.901544, 0.106482, -0.419379,
		39.192322, 30.536659, 27.241119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947376, 29.833334, 27.015749>,  <39.823402, 30.462122, 27.534685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947376, 29.833334, 27.015749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621822, 30.022406, 26.880592>,  <39.426491, 30.135849, 26.799500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621822, 30.022406, 26.880592>,  <39.947376, 29.833334, 27.015749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621822, 30.022406, 26.880592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103140, -0.454768, -0.884618,
		-0.571803, -0.754824, 0.321375,
		-0.813882, 0.472681, -0.337891,
		39.377659, 30.164209, 26.779224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606739, 29.388723, 26.657986>,  <39.947376, 29.833334, 27.015749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606739, 29.388723, 26.657986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.476700, 29.743399, 26.526476>,  <39.398678, 29.956203, 26.447569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.476700, 29.743399, 26.526476>,  <39.606739, 29.388723, 26.657986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476700, 29.743399, 26.526476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157350, -0.292096, -0.943356,
		-0.932499, -0.358413, -0.044562,
		-0.325095, 0.886690, -0.328775,
		39.379169, 30.009405, 26.427843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166683, 29.260220, 26.080696>,  <39.606739, 29.388723, 26.657986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166683, 29.260220, 26.080696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.284245, 29.640438, 26.040537>,  <39.354782, 29.868568, 26.016441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.284245, 29.640438, 26.040537>,  <39.166683, 29.260220, 26.080696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284245, 29.640438, 26.040537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321049, -0.197107, -0.926324,
		-0.900303, 0.240020, -0.363103,
		0.293907, 0.950547, -0.100398,
		39.372417, 29.925602, 26.010418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770565, 29.660719, 25.500425>,  <39.166683, 29.260220, 26.080696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770565, 29.660719, 25.500425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135437, 29.811695, 25.564257>,  <39.354359, 29.902281, 25.602556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135437, 29.811695, 25.564257>,  <38.770565, 29.660719, 25.500425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135437, 29.811695, 25.564257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269318, -0.258666, -0.927664,
		-0.308858, 0.889175, -0.337601,
		0.912181, 0.377438, 0.159580,
		39.409092, 29.924927, 25.612131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829395, 30.051022, 24.918531>,  <38.770565, 29.660719, 25.500425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829395, 30.051022, 24.918531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205551, 30.037292, 25.053873>,  <39.431244, 30.029055, 25.135078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205551, 30.037292, 25.053873>,  <38.829395, 30.051022, 24.918531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205551, 30.037292, 25.053873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310068, -0.322177, -0.894461,
		0.139708, 0.946057, -0.292331,
		0.940393, -0.034321, 0.338352,
		39.487671, 30.026997, 25.155378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214085, 30.373493, 24.440098>,  <38.829395, 30.051022, 24.918531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214085, 30.373493, 24.440098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.489716, 30.139822, 24.611635>,  <39.655094, 29.999620, 24.714558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.489716, 30.139822, 24.611635>,  <39.214085, 30.373493, 24.440098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489716, 30.139822, 24.611635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236778, -0.377796, -0.895101,
		0.684912, 0.718338, -0.122012,
		0.689081, -0.584176, 0.428844,
		39.696442, 29.964569, 24.740288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520004, 31.218355, 24.469242>,  <39.214085, 30.373493, 24.440098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520004, 31.218355, 24.469242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290760, 31.486145, 24.280203>,  <39.153214, 31.646818, 24.166780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290760, 31.486145, 24.280203>,  <39.520004, 31.218355, 24.469242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290760, 31.486145, 24.280203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524479, 0.143460, 0.839250,
		0.629655, 0.728851, 0.268907,
		-0.573111, 0.669474, -0.472597,
		39.118828, 31.686987, 24.138424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312206, 31.701305, 24.939505>,  <39.520004, 31.218355, 24.469242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312206, 31.701305, 24.939505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.063629, 31.849518, 24.663383>,  <38.914482, 31.938444, 24.497711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.063629, 31.849518, 24.663383>,  <39.312206, 31.701305, 24.939505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063629, 31.849518, 24.663383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529354, 0.450976, 0.718613,
		0.577578, 0.811990, -0.084113,
		-0.621439, 0.370530, -0.690305,
		38.877197, 31.960676, 24.456291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243214, 32.414986, 25.100840>,  <39.312206, 31.701305, 24.939505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243214, 32.414986, 25.100840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.932087, 32.319229, 24.868391>,  <38.745411, 32.261776, 24.728922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.932087, 32.319229, 24.868391>,  <39.243214, 32.414986, 25.100840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932087, 32.319229, 24.868391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620848, 0.436464, 0.651188,
		0.097750, 0.867290, -0.488112,
		-0.777812, -0.239390, -0.581120,
		38.698742, 32.247414, 24.694056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826115, 32.994545, 25.042084>,  <39.243214, 32.414986, 25.100840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826115, 32.994545, 25.042084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.599003, 32.673622, 24.968412>,  <38.462734, 32.481068, 24.924210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.599003, 32.673622, 24.968412>,  <38.826115, 32.994545, 25.042084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599003, 32.673622, 24.968412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657971, 0.307876, 0.687231,
		-0.494669, 0.511381, -0.702704,
		-0.567782, -0.802310, -0.184177,
		38.428669, 32.432930, 24.913158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190331, 33.265831, 24.859631>,  <38.826115, 32.994545, 25.042084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190331, 33.265831, 24.859631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142143, 32.885330, 24.973198>,  <38.113232, 32.657028, 25.041338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142143, 32.885330, 24.973198>,  <38.190331, 33.265831, 24.859631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142143, 32.885330, 24.973198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428182, 0.307817, 0.849652,
		-0.895627, -0.019213, -0.444391,
		-0.120467, -0.951251, 0.283916,
		38.106003, 32.599957, 25.058372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527771, 33.230480, 24.982372>,  <38.190331, 33.265831, 24.859631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527771, 33.230480, 24.982372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.674061, 32.917065, 25.183296>,  <37.761833, 32.729015, 25.303850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.674061, 32.917065, 25.183296>,  <37.527771, 33.230480, 24.982372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674061, 32.917065, 25.183296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525585, 0.271545, 0.806241,
		-0.768121, -0.558865, -0.312507,
		0.365720, -0.783539, 0.502310,
		37.783775, 32.682003, 25.333990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949841, 32.847649, 25.279665>,  <37.527771, 33.230480, 24.982372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949841, 32.847649, 25.279665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248436, 32.760841, 25.531269>,  <37.427593, 32.708755, 25.682232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248436, 32.760841, 25.531269>,  <36.949841, 32.847649, 25.279665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248436, 32.760841, 25.531269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612996, 0.143403, 0.776963,
		-0.258819, -0.965576, -0.025984,
		0.746491, -0.217021, 0.629010,
		37.472382, 32.695736, 25.719973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.586170, 31.299387, 23.145849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.715508, 31.067724, 23.445189>,  <43.793110, 30.928726, 23.624792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.715508, 31.067724, 23.445189>,  <43.586170, 31.299387, 23.145849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715508, 31.067724, 23.445189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393560, 0.636884, 0.662940,
		-0.860557, -0.508879, -0.021999,
		0.323346, -0.579155, 0.748349,
		43.812511, 30.893978, 23.669693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069317, 31.284433, 23.725046>,  <43.586170, 31.299387, 23.145849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069317, 31.284433, 23.725046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.419956, 31.187719, 23.891472>,  <43.630341, 31.129692, 23.991327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.419956, 31.187719, 23.891472>,  <43.069317, 31.284433, 23.725046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419956, 31.187719, 23.891472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168681, 0.655366, 0.736235,
		-0.450685, -0.715567, 0.533710,
		0.876601, -0.241783, 0.416066,
		43.682938, 31.115185, 24.016291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842613, 31.338161, 24.405485>,  <43.069317, 31.284433, 23.725046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842613, 31.338161, 24.405485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.242592, 31.334700, 24.407373>,  <43.482582, 31.332623, 24.408506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.242592, 31.334700, 24.407373>,  <42.842613, 31.338161, 24.405485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242592, 31.334700, 24.407373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002005, 0.647461, 0.762096,
		-0.009654, -0.762049, 0.647447,
		0.999951, -0.008656, 0.004723,
		43.542576, 31.332104, 24.408791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018131, 31.112621, 25.099070>,  <42.842613, 31.338161, 24.405485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018131, 31.112621, 25.099070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.326599, 31.330414, 24.967108>,  <43.511681, 31.461090, 24.887930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.326599, 31.330414, 24.967108>,  <43.018131, 31.112621, 25.099070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326599, 31.330414, 24.967108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001255, 0.519506, 0.854466,
		0.636630, -0.658523, 0.401310,
		0.771168, 0.544483, -0.329906,
		43.557949, 31.493759, 24.868135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333744, 31.202515, 25.741125>,  <43.018131, 31.112621, 25.099070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333744, 31.202515, 25.741125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.553223, 31.443842, 25.509630>,  <43.684910, 31.588638, 25.370733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.553223, 31.443842, 25.509630>,  <43.333744, 31.202515, 25.741125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553223, 31.443842, 25.509630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052836, 0.665843, 0.744218,
		0.834349, -0.438930, 0.333471,
		0.548699, 0.603318, -0.578737,
		43.717831, 31.624838, 25.336010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911900, 31.276966, 26.063547>,  <43.333744, 31.202515, 25.741125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911900, 31.276966, 26.063547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.856087, 31.592360, 25.823938>,  <43.822598, 31.781595, 25.680174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.856087, 31.592360, 25.823938>,  <43.911900, 31.276966, 26.063547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856087, 31.592360, 25.823938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064658, 0.610904, 0.789060,
		0.988104, 0.071371, -0.136225,
		-0.139537, 0.788481, -0.599021,
		43.814224, 31.828903, 25.644232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394444, 31.761587, 26.294615>,  <43.911900, 31.276966, 26.063547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394444, 31.761587, 26.294615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.152592, 31.995573, 26.078377>,  <44.007481, 32.135963, 25.948633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.152592, 31.995573, 26.078377>,  <44.394444, 31.761587, 26.294615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152592, 31.995573, 26.078377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161612, 0.754685, 0.635872,
		0.779941, 0.297098, -0.550839,
		-0.604626, 0.584965, -0.540595,
		43.971203, 32.171062, 25.916199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718121, 32.475788, 26.247200>,  <44.394444, 31.761587, 26.294615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718121, 32.475788, 26.247200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.321743, 32.508652, 26.204700>,  <44.083916, 32.528370, 26.179201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.321743, 32.508652, 26.204700>,  <44.718121, 32.475788, 26.247200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321743, 32.508652, 26.204700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038040, 0.587008, 0.808687,
		0.128809, 0.805401, -0.578565,
		-0.990940, 0.082158, -0.106249,
		44.024460, 32.533298, 26.172825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607494, 33.141815, 26.232456>,  <44.718121, 32.475788, 26.247200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607494, 33.141815, 26.232456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.269230, 32.976944, 26.368086>,  <44.066273, 32.878021, 26.449463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.269230, 32.976944, 26.368086>,  <44.607494, 33.141815, 26.232456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269230, 32.976944, 26.368086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023266, 0.663164, 0.748113,
		-0.533213, 0.624761, -0.570401,
		-0.845661, -0.412174, 0.339072,
		44.015533, 32.853291, 26.469807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502052, 33.620644, 26.682095>,  <44.607494, 33.141815, 26.232456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502052, 33.620644, 26.682095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.210030, 33.358719, 26.760313>,  <44.034817, 33.201565, 26.807245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.210030, 33.358719, 26.760313>,  <44.502052, 33.620644, 26.682095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210030, 33.358719, 26.760313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274033, 0.542637, 0.794009,
		-0.626039, 0.526084, -0.575596,
		-0.730056, -0.654813, 0.195547,
		43.991013, 33.162273, 26.818977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770054, 34.010513, 26.761934>,  <44.502052, 33.620644, 26.682095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770054, 34.010513, 26.761934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.743740, 33.659866, 26.952606>,  <43.727951, 33.449478, 27.067009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.743740, 33.659866, 26.952606>,  <43.770054, 34.010513, 26.761934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743740, 33.659866, 26.952606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399175, 0.460941, 0.792586,
		-0.914512, -0.138139, -0.380244,
		-0.065783, -0.876613, 0.476678,
		43.724007, 33.396881, 27.095610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019653, 33.878654, 26.995142>,  <43.770054, 34.010513, 26.761934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019653, 33.878654, 26.995142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.267418, 33.672798, 27.232281>,  <43.416077, 33.549282, 27.374565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.267418, 33.672798, 27.232281>,  <43.019653, 33.878654, 26.995142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267418, 33.672798, 27.232281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476579, 0.353597, 0.804886,
		-0.623859, -0.781096, -0.026246,
		0.619413, -0.514644, 0.592849,
		43.453243, 33.518406, 27.410135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231144, 33.853054, 26.947145>,  <43.019653, 33.878654, 26.995142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231144, 33.853054, 26.947145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916161, 34.066452, 26.823668>,  <41.727169, 34.194489, 26.749580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916161, 34.066452, 26.823668>,  <42.231144, 33.853054, 26.947145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916161, 34.066452, 26.823668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080076, -0.408037, -0.909447,
		-0.611141, -0.740873, 0.278593,
		-0.787461, 0.533492, -0.308694,
		41.679924, 34.226498, 26.731060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879059, 33.367531, 26.476305>,  <42.231144, 33.853054, 26.947145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879059, 33.367531, 26.476305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.770382, 33.745667, 26.404167>,  <41.705177, 33.972546, 26.360884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.770382, 33.745667, 26.404167>,  <41.879059, 33.367531, 26.476305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770382, 33.745667, 26.404167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046614, -0.174248, -0.983598,
		-0.961255, -0.275643, 0.003276,
		-0.271692, 0.945335, -0.180345,
		41.688873, 34.029266, 26.350063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130363, 33.331009, 26.055408>,  <41.879059, 33.367531, 26.476305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130363, 33.331009, 26.055408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.341888, 33.662785, 25.983418>,  <41.468803, 33.861851, 25.940224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.341888, 33.662785, 25.983418>,  <41.130363, 33.331009, 26.055408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341888, 33.662785, 25.983418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047592, -0.182739, -0.982009,
		-0.847403, 0.527864, -0.057160,
		0.528813, 0.829437, -0.179976,
		41.500534, 33.911617, 25.929424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709461, 33.656227, 25.600298>,  <41.130363, 33.331009, 26.055408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709461, 33.656227, 25.600298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.064129, 33.834541, 25.551165>,  <41.276932, 33.941528, 25.521685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.064129, 33.834541, 25.551165>,  <40.709461, 33.656227, 25.600298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064129, 33.834541, 25.551165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123485, -0.027712, -0.991959,
		-0.445606, 0.894710, 0.030476,
		0.886672, 0.445786, -0.122832,
		41.330132, 33.968277, 25.514315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510052, 34.165043, 25.168510>,  <40.709461, 33.656227, 25.600298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510052, 34.165043, 25.168510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.908806, 34.151825, 25.139877>,  <41.148060, 34.143894, 25.122698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.908806, 34.151825, 25.139877>,  <40.510052, 34.165043, 25.168510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908806, 34.151825, 25.139877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070409, 0.035477, -0.996887,
		0.035477, 0.998824, 0.033040,
		0.996887, -0.033040, -0.071585,
		41.207870, 34.141914, 25.118402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682510, 34.511097, 24.517439>,  <40.510052, 34.165043, 25.168510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682510, 34.511097, 24.517439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009987, 34.299240, 24.606188>,  <41.206470, 34.172127, 24.659437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009987, 34.299240, 24.606188>,  <40.682510, 34.511097, 24.517439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009987, 34.299240, 24.606188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077656, -0.280708, -0.956646,
		0.568965, 0.800424, -0.188682,
		0.818687, -0.529646, 0.221871,
		41.255592, 34.140347, 24.672749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222649, 34.660885, 23.949417>,  <40.682510, 34.511097, 24.517439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222649, 34.660885, 23.949417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311920, 34.312553, 24.124619>,  <41.365482, 34.103554, 24.229740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311920, 34.312553, 24.124619>,  <41.222649, 34.660885, 23.949417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311920, 34.312553, 24.124619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156321, -0.411548, -0.897882,
		0.962161, 0.268858, 0.044280,
		0.223180, -0.870829, 0.438004,
		41.378876, 34.051304, 24.256020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892574, 34.452446, 23.696682>,  <41.222649, 34.660885, 23.949417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892574, 34.452446, 23.696682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715931, 34.124477, 23.842400>,  <41.609943, 33.927696, 23.929831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715931, 34.124477, 23.842400>,  <41.892574, 34.452446, 23.696682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715931, 34.124477, 23.842400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082023, -0.441229, -0.893638,
		0.893449, -0.364760, 0.262104,
		-0.441611, -0.819919, 0.364296,
		41.583447, 33.878502, 23.951689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396656, 33.854622, 23.465921>,  <41.892574, 34.452446, 23.696682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396656, 33.854622, 23.465921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.028507, 33.709885, 23.525240>,  <41.807617, 33.623043, 23.560831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.028507, 33.709885, 23.525240>,  <42.396656, 33.854622, 23.465921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028507, 33.709885, 23.525240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027050, -0.319413, -0.947229,
		0.390113, -0.875812, 0.284191,
		-0.920369, -0.361839, 0.148298,
		41.752396, 33.601334, 23.569729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399586, 33.265026, 23.128910>,  <42.396656, 33.854622, 23.465921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399586, 33.265026, 23.128910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005505, 33.315083, 23.175747>,  <41.769054, 33.345116, 23.203850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005505, 33.315083, 23.175747>,  <42.399586, 33.265026, 23.128910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005505, 33.315083, 23.175747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162094, -0.458585, -0.873742,
		-0.055639, -0.879796, 0.472085,
		-0.985205, 0.125136, 0.117094,
		41.709942, 33.352623, 23.210875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122932, 32.608353, 23.070242>,  <42.399586, 33.265026, 23.128910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122932, 32.608353, 23.070242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.850224, 32.881680, 22.965733>,  <41.686600, 33.045677, 22.903027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.850224, 32.881680, 22.965733>,  <42.122932, 32.608353, 23.070242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850224, 32.881680, 22.965733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042398, -0.393452, -0.918367,
		-0.730335, -0.615039, 0.297215,
		-0.681771, 0.683317, -0.261275,
		41.645691, 33.086674, 22.887350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682240, 32.280338, 22.591652>,  <42.122932, 32.608353, 23.070242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682240, 32.280338, 22.591652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.571739, 32.660034, 22.531481>,  <41.505440, 32.887852, 22.495378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.571739, 32.660034, 22.531481>,  <41.682240, 32.280338, 22.591652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571739, 32.660034, 22.531481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193119, -0.208150, -0.958842,
		-0.941484, -0.235828, 0.240818,
		-0.276248, 0.949241, -0.150427,
		41.488865, 32.944805, 22.486353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013302, 32.229424, 22.357466>,  <41.682240, 32.280338, 22.591652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013302, 32.229424, 22.357466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.146191, 32.584499, 22.229948>,  <41.225925, 32.797546, 22.153439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.146191, 32.584499, 22.229948>,  <41.013302, 32.229424, 22.357466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146191, 32.584499, 22.229948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106382, -0.300567, -0.947809,
		-0.937181, 0.348801, -0.005422,
		0.332227, 0.887692, -0.318792,
		41.245857, 32.850807, 22.134310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463081, 32.490368, 21.896894>,  <41.013302, 32.229424, 22.357466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463081, 32.490368, 21.896894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.792721, 32.692822, 21.795153>,  <40.990505, 32.814293, 21.734108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.792721, 32.692822, 21.795153>,  <40.463081, 32.490368, 21.896894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792721, 32.692822, 21.795153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215190, -0.135637, -0.967107,
		-0.523984, 0.851723, -0.002863,
		0.824096, 0.506133, -0.254353,
		41.039951, 32.844662, 21.718847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129280, 33.046730, 21.455812>,  <40.463081, 32.490368, 21.896894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129280, 33.046730, 21.455812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.070354, 32.651554, 21.474871>,  <40.035000, 32.414448, 21.486305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.070354, 32.651554, 21.474871>,  <40.129280, 33.046730, 21.455812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070354, 32.651554, 21.474871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503037, 0.116311, 0.856403,
		-0.851617, 0.102196, -0.514105,
		-0.147317, -0.987941, 0.047644,
		40.026161, 32.355171, 21.489164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579430, 32.999809, 21.805277>,  <40.129280, 33.046730, 21.455812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579430, 32.999809, 21.805277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677570, 32.612514, 21.824528>,  <39.736454, 32.380138, 21.836079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677570, 32.612514, 21.824528>,  <39.579430, 32.999809, 21.805277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677570, 32.612514, 21.824528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487027, -0.080188, 0.869698,
		-0.838215, -0.236824, -0.491233,
		0.245356, -0.968238, 0.048125,
		39.751179, 32.322044, 21.838964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107044, 32.638874, 22.034533>,  <39.579430, 32.999809, 21.805277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107044, 32.638874, 22.034533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.366066, 32.344704, 22.114353>,  <39.521481, 32.168201, 22.162245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.366066, 32.344704, 22.114353>,  <39.107044, 32.638874, 22.034533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366066, 32.344704, 22.114353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497250, -0.209375, 0.841965,
		-0.577423, -0.644444, -0.501273,
		0.647553, -0.735427, 0.199552,
		39.560333, 32.124077, 22.174219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718227, 32.150955, 22.401016>,  <39.107044, 32.638874, 22.034533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718227, 32.150955, 22.401016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.089912, 32.037346, 22.495588>,  <39.312923, 31.969181, 22.552332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.089912, 32.037346, 22.495588>,  <38.718227, 32.150955, 22.401016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089912, 32.037346, 22.495588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282812, -0.134719, 0.949667,
		-0.237875, -0.949306, -0.205508,
		0.929211, -0.284022, 0.236428,
		39.368675, 31.952139, 22.566517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736450, 31.399975, 22.743479>,  <38.718227, 32.150955, 22.401016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736450, 31.399975, 22.743479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074947, 31.574589, 22.865662>,  <39.278046, 31.679358, 22.938971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074947, 31.574589, 22.865662>,  <38.736450, 31.399975, 22.743479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074947, 31.574589, 22.865662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180759, -0.304076, 0.935342,
		0.501190, -0.846744, -0.178416,
		0.846247, 0.436534, 0.305457,
		39.328823, 31.705549, 22.957298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056004, 30.946409, 23.170464>,  <38.736450, 31.399975, 22.743479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056004, 30.946409, 23.170464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.210594, 31.302105, 23.268351>,  <39.303349, 31.515522, 23.327084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.210594, 31.302105, 23.268351>,  <39.056004, 30.946409, 23.170464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210594, 31.302105, 23.268351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426366, -0.063022, 0.902353,
		0.817830, -0.453081, 0.354785,
		0.386480, 0.889239, 0.244719,
		39.326538, 31.568876, 23.341766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275211, 30.860622, 23.899477>,  <39.056004, 30.946409, 23.170464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275211, 30.860622, 23.899477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.231850, 31.252428, 23.831593>,  <39.205833, 31.487511, 23.790863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.231850, 31.252428, 23.831593>,  <39.275211, 30.860622, 23.899477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231850, 31.252428, 23.831593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388784, 0.115346, 0.914080,
		0.914929, 0.165070, 0.368315,
		-0.108404, 0.979514, -0.169710,
		39.199329, 31.546282, 23.780680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860424, 30.346096, 23.949223>,  <39.275211, 30.860622, 23.899477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860424, 30.346096, 23.949223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872501, 30.037363, 24.203266>,  <39.879749, 29.852123, 24.355692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872501, 30.037363, 24.203266>,  <39.860424, 30.346096, 23.949223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872501, 30.037363, 24.203266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520852, -0.530164, -0.669059,
		0.853113, 0.350997, 0.386005,
		0.030192, -0.771834, 0.635107,
		39.881557, 29.805813, 24.393799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494328, 30.007801, 23.834013>,  <39.860424, 30.346096, 23.949223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494328, 30.007801, 23.834013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.245781, 29.748070, 24.009409>,  <40.096653, 29.592230, 24.114647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.245781, 29.748070, 24.009409>,  <40.494328, 30.007801, 23.834013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245781, 29.748070, 24.009409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451905, -0.754181, -0.476437,
		0.640065, -0.097887, 0.762059,
		-0.621368, -0.649329, 0.438489,
		40.059372, 29.553270, 24.140955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934902, 29.479691, 24.088718>,  <40.494328, 30.007801, 23.834013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934902, 29.479691, 24.088718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.576294, 29.302794, 24.099102>,  <40.361130, 29.196655, 24.105333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.576294, 29.302794, 24.099102>,  <40.934902, 29.479691, 24.088718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576294, 29.302794, 24.099102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400140, -0.833533, -0.380935,
		0.190104, -0.331128, 0.924237,
		-0.896520, -0.442241, 0.025960,
		40.307339, 29.170120, 24.106890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047798, 28.765499, 24.264103>,  <40.934902, 29.479691, 24.088718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047798, 28.765499, 24.264103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.678337, 28.754332, 24.111219>,  <40.456661, 28.747631, 24.019489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.678337, 28.754332, 24.111219>,  <41.047798, 28.765499, 24.264103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678337, 28.754332, 24.111219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228201, -0.841310, -0.490022,
		-0.307873, -0.539831, 0.783452,
		-0.923655, -0.027920, -0.382207,
		40.401241, 28.745956, 23.996557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784191, 28.068569, 24.373598>,  <41.047798, 28.765499, 24.264103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784191, 28.068569, 24.373598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.579060, 28.231905, 24.071535>,  <40.455978, 28.329906, 23.890297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.579060, 28.231905, 24.071535>,  <40.784191, 28.068569, 24.373598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579060, 28.231905, 24.071535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361507, -0.695128, -0.621378,
		-0.778665, -0.591656, 0.208865,
		-0.512830, 0.408339, -0.755159,
		40.425209, 28.354406, 23.844988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455124, 27.442949, 23.997435>,  <40.784191, 28.068569, 24.373598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455124, 27.442949, 23.997435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.437420, 27.750536, 23.742332>,  <40.426796, 27.935087, 23.589272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.437420, 27.750536, 23.742332>,  <40.455124, 27.442949, 23.997435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437420, 27.750536, 23.742332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326151, -0.592279, -0.736771,
		-0.944281, -0.240616, -0.224584,
		-0.044263, 0.768967, -0.637755,
		40.424141, 27.981226, 23.551006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083775, 27.277031, 23.396023>,  <40.455124, 27.442949, 23.997435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083775, 27.277031, 23.396023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.323818, 27.576801, 23.284143>,  <40.467846, 27.756662, 23.217016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.323818, 27.576801, 23.284143>,  <40.083775, 27.277031, 23.396023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323818, 27.576801, 23.284143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441367, -0.601835, -0.665575,
		-0.667132, 0.275967, -0.691938,
		0.600109, 0.749424, -0.279701,
		40.503849, 27.801628, 23.200233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065708, 27.188602, 22.724564>,  <40.083775, 27.277031, 23.396023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065708, 27.188602, 22.724564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.399639, 27.398815, 22.790142>,  <40.599998, 27.524942, 22.829489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.399639, 27.398815, 22.790142>,  <40.065708, 27.188602, 22.724564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399639, 27.398815, 22.790142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490551, -0.574990, -0.654787,
		-0.249843, 0.627059, -0.737818,
		0.834828, 0.525532, 0.163947,
		40.650089, 27.556475, 22.839327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248215, 27.205151, 22.119621>,  <40.065708, 27.188602, 22.724564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248215, 27.205151, 22.119621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.579464, 27.309435, 22.318115>,  <40.778214, 27.372005, 22.437212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.579464, 27.309435, 22.318115>,  <40.248215, 27.205151, 22.119621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579464, 27.309435, 22.318115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525798, -0.668136, -0.526431,
		0.194304, 0.696867, -0.690379,
		0.828120, 0.260712, 0.496233,
		40.827900, 27.387650, 22.466986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.826496, 32.508381, 37.052555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205421, 32.622314, 36.993938>,  <36.432777, 32.690674, 36.958771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205421, 32.622314, 36.993938>,  <35.826496, 32.508381, 37.052555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205421, 32.622314, 36.993938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099511, -0.173143, -0.979857,
		-0.304471, 0.942809, -0.135676,
		0.947309, 0.284837, -0.146537,
		36.489613, 32.707764, 36.949978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925224, 33.078873, 36.538250>,  <35.826496, 32.508381, 37.052555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925224, 33.078873, 36.538250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249157, 32.844326, 36.545727>,  <36.443516, 32.703598, 36.550213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249157, 32.844326, 36.545727>,  <35.925224, 33.078873, 36.538250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249157, 32.844326, 36.545727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017305, -0.055729, -0.998296,
		0.586409, 0.808126, -0.055278,
		0.809830, -0.586367, 0.018696,
		36.492107, 32.668415, 36.551334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259056, 33.260166, 36.036968>,  <35.925224, 33.078873, 36.538250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259056, 33.260166, 36.036968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404354, 32.893810, 36.105320>,  <36.491531, 32.673996, 36.146332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404354, 32.893810, 36.105320>,  <36.259056, 33.260166, 36.036968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404354, 32.893810, 36.105320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085783, -0.149747, -0.984996,
		0.927737, 0.372451, 0.024173,
		0.363243, -0.915891, 0.170876,
		36.513329, 32.619041, 36.156582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872997, 33.171860, 35.597301>,  <36.259056, 33.260166, 36.036968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872997, 33.171860, 35.597301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729389, 32.804695, 35.664883>,  <36.643223, 32.584396, 35.705433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729389, 32.804695, 35.664883>,  <36.872997, 33.171860, 35.597301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729389, 32.804695, 35.664883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132333, -0.229256, -0.964329,
		0.923900, -0.323856, 0.203778,
		-0.359021, -0.917910, 0.168953,
		36.621681, 32.529324, 35.715569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247421, 32.820065, 35.208176>,  <36.872997, 33.171860, 35.597301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247421, 32.820065, 35.208176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956364, 32.556599, 35.284798>,  <36.781731, 32.398518, 35.330772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956364, 32.556599, 35.284798>,  <37.247421, 32.820065, 35.208176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956364, 32.556599, 35.284798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123472, -0.400465, -0.907955,
		0.674750, -0.637017, 0.372723,
		-0.727645, -0.658663, 0.191560,
		36.738071, 32.359001, 35.342266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464314, 32.206543, 35.020058>,  <37.247421, 32.820065, 35.208176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464314, 32.206543, 35.020058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065155, 32.180691, 35.022121>,  <36.825661, 32.165180, 35.023357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065155, 32.180691, 35.022121>,  <37.464314, 32.206543, 35.020058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065155, 32.180691, 35.022121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016214, -0.325767, -0.945311,
		0.062779, -0.943238, 0.326130,
		-0.997896, -0.064633, 0.005158,
		36.765785, 32.161301, 35.023670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248871, 31.485115, 34.658405>,  <37.464314, 32.206543, 35.020058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248871, 31.485115, 34.658405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931995, 31.729128, 34.665398>,  <36.741871, 31.875536, 34.669594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931995, 31.729128, 34.665398>,  <37.248871, 31.485115, 34.658405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931995, 31.729128, 34.665398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202970, -0.236348, -0.950233,
		-0.575542, -0.756307, 0.311049,
		-0.792184, 0.610032, 0.017480,
		36.694340, 31.912138, 34.670643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742142, 31.098539, 34.353184>,  <37.248871, 31.485115, 34.658405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742142, 31.098539, 34.353184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630219, 31.478378, 34.296650>,  <36.563065, 31.706282, 34.262730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630219, 31.478378, 34.296650>,  <36.742142, 31.098539, 34.353184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630219, 31.478378, 34.296650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140718, -0.186186, -0.972386,
		-0.949688, -0.252193, 0.185722,
		-0.279807, 0.949597, -0.141330,
		36.546276, 31.763258, 34.254250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131405, 31.155182, 33.888672>,  <36.742142, 31.098539, 34.353184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131405, 31.155182, 33.888672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256920, 31.532524, 33.845562>,  <36.332230, 31.758930, 33.819695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256920, 31.532524, 33.845562>,  <36.131405, 31.155182, 33.888672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256920, 31.532524, 33.845562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234819, -0.032881, -0.971483,
		-0.919999, 0.330145, 0.211201,
		0.313786, 0.943357, -0.107775,
		36.351055, 31.815531, 33.813229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739819, 31.344790, 33.305305>,  <36.131405, 31.155182, 33.888672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739819, 31.344790, 33.305305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042427, 31.605656, 33.324715>,  <36.223991, 31.762175, 33.336361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042427, 31.605656, 33.324715>,  <35.739819, 31.344790, 33.305305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042427, 31.605656, 33.324715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078405, -0.016792, -0.996780,
		-0.649251, 0.757890, -0.063837,
		0.756522, 0.652166, 0.048521,
		36.269382, 31.801306, 33.339272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658394, 31.878887, 32.834412>,  <35.739819, 31.344790, 33.305305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658394, 31.878887, 32.834412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050499, 31.904623, 32.909187>,  <36.285763, 31.920065, 32.954052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050499, 31.904623, 32.909187>,  <35.658394, 31.878887, 32.834412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050499, 31.904623, 32.909187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186043, 0.019738, -0.982343,
		-0.066895, 0.997733, 0.007378,
		0.980262, 0.064341, 0.186942,
		36.344578, 31.923925, 32.965271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892899, 32.302074, 32.238316>,  <35.658394, 31.878887, 32.834412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892899, 32.302074, 32.238316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203716, 32.104225, 32.394035>,  <36.390205, 31.985518, 32.487469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203716, 32.104225, 32.394035>,  <35.892899, 32.302074, 32.238316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203716, 32.104225, 32.394035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335383, -0.198036, -0.921032,
		0.532655, 0.846247, 0.012004,
		0.777043, -0.494619, 0.389302,
		36.436829, 31.955839, 32.510826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168118, 33.050419, 32.079922>,  <35.892899, 32.302074, 32.238316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168118, 33.050419, 32.079922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957897, 33.269199, 31.819262>,  <35.831764, 33.400467, 31.662867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957897, 33.269199, 31.819262>,  <36.168118, 33.050419, 32.079922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957897, 33.269199, 31.819262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376385, 0.537444, 0.754645,
		0.762976, 0.641873, -0.076590,
		-0.525549, 0.546949, -0.651648,
		35.800232, 33.433285, 31.623768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265137, 33.759048, 32.230976>,  <36.168118, 33.050419, 32.079922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265137, 33.759048, 32.230976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929935, 33.798122, 32.016235>,  <35.728817, 33.821568, 31.887390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929935, 33.798122, 32.016235>,  <36.265137, 33.759048, 32.230976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929935, 33.798122, 32.016235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420847, 0.510545, 0.749821,
		0.347338, 0.854284, -0.386725,
		-0.838000, 0.097689, -0.536854,
		35.678535, 33.827431, 31.855179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162357, 34.416840, 32.229794>,  <36.265137, 33.759048, 32.230976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162357, 34.416840, 32.229794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815292, 34.238472, 32.141865>,  <35.607056, 34.131451, 32.089108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815292, 34.238472, 32.141865>,  <36.162357, 34.416840, 32.229794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815292, 34.238472, 32.141865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458985, 0.548565, 0.698863,
		-0.191046, 0.707273, -0.680637,
		-0.867660, -0.445917, -0.219826,
		35.554993, 34.104698, 32.075916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730576, 35.002823, 31.924782>,  <36.162357, 34.416840, 32.229794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730576, 35.002823, 31.924782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467125, 34.728012, 32.047550>,  <35.309055, 34.563126, 32.121212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467125, 34.728012, 32.047550>,  <35.730576, 35.002823, 31.924782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467125, 34.728012, 32.047550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334534, 0.632708, 0.698403,
		-0.674013, 0.357314, -0.646554,
		-0.658630, -0.687027, 0.306920,
		35.269535, 34.521904, 32.139626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112148, 35.319580, 31.961817>,  <35.730576, 35.002823, 31.924782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112148, 35.319580, 31.961817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086647, 35.013420, 32.217972>,  <35.071346, 34.829723, 32.371666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086647, 35.013420, 32.217972>,  <35.112148, 35.319580, 31.961817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086647, 35.013420, 32.217972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340693, 0.619834, 0.706919,
		-0.938010, -0.173105, -0.300286,
		-0.063757, -0.765402, 0.640386,
		35.067520, 34.783798, 32.410088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528221, 35.495300, 32.497150>,  <35.112148, 35.319580, 31.961817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528221, 35.495300, 32.497150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.692551, 35.182358, 32.684402>,  <34.791149, 34.994591, 32.796753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.692551, 35.182358, 32.684402>,  <34.528221, 35.495300, 32.497150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692551, 35.182358, 32.684402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303142, 0.367027, 0.879430,
		-0.859843, -0.503198, -0.086382,
		0.410822, -0.782358, 0.468126,
		34.815796, 34.947651, 32.824841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043957, 35.196037, 32.911777>,  <34.528221, 35.495300, 32.497150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043957, 35.196037, 32.911777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403938, 35.116890, 33.067173>,  <34.619926, 35.069401, 33.160412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403938, 35.116890, 33.067173>,  <34.043957, 35.196037, 32.911777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403938, 35.116890, 33.067173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309509, 0.337604, 0.888948,
		-0.307053, -0.920256, 0.242586,
		0.899957, -0.197871, 0.388489,
		34.673927, 35.057529, 33.183720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950684, 34.714764, 33.469463>,  <34.043957, 35.196037, 32.911777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950684, 34.714764, 33.469463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275600, 34.940609, 33.527969>,  <34.470551, 35.076118, 33.563072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275600, 34.940609, 33.527969>,  <33.950684, 34.714764, 33.469463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275600, 34.940609, 33.527969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316893, 0.216696, 0.923375,
		0.489657, -0.796399, 0.354943,
		0.812290, 0.564616, 0.146267,
		34.519287, 35.109993, 33.571850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945793, 34.733574, 34.204914>,  <33.950684, 34.714764, 33.469463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945793, 34.733574, 34.204914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244888, 34.974312, 34.092716>,  <34.424347, 35.118755, 34.025398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244888, 34.974312, 34.092716>,  <33.945793, 34.733574, 34.204914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244888, 34.974312, 34.092716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151567, 0.565986, 0.810363,
		0.646465, -0.563424, 0.514428,
		0.747737, 0.601841, -0.280494,
		34.469208, 35.154865, 34.008568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043201, 35.071651, 34.819286>,  <33.945793, 34.733574, 34.204914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043201, 35.071651, 34.819286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266033, 35.302811, 34.580727>,  <34.399731, 35.441505, 34.437592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266033, 35.302811, 34.580727>,  <34.043201, 35.071651, 34.819286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266033, 35.302811, 34.580727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071761, 0.748970, 0.658707,
		0.827354, -0.324153, 0.458705,
		0.557078, 0.577901, -0.596402,
		34.433159, 35.476181, 34.401806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632759, 35.353401, 35.239655>,  <34.043201, 35.071651, 34.819286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632759, 35.353401, 35.239655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536793, 35.606327, 34.945004>,  <34.479214, 35.758083, 34.768211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536793, 35.606327, 34.945004>,  <34.632759, 35.353401, 35.239655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536793, 35.606327, 34.945004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388230, 0.632982, 0.669784,
		0.889785, 0.446673, 0.093619,
		-0.239916, 0.632310, -0.736630,
		34.464817, 35.796021, 34.724014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874199, 35.965988, 35.560375>,  <34.632759, 35.353401, 35.239655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874199, 35.965988, 35.560375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611031, 36.046513, 35.270103>,  <34.453129, 36.094826, 35.095940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611031, 36.046513, 35.270103>,  <34.874199, 35.965988, 35.560375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611031, 36.046513, 35.270103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498756, 0.605512, 0.620160,
		0.564253, 0.769954, -0.297975,
		-0.657922, 0.201311, -0.725681,
		34.413654, 36.106907, 35.052399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031116, 36.747219, 35.298035>,  <34.874199, 35.965988, 35.560375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031116, 36.747219, 35.298035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664467, 36.598179, 35.240116>,  <34.444477, 36.508755, 35.205364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664467, 36.598179, 35.240116>,  <35.031116, 36.747219, 35.298035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664467, 36.598179, 35.240116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384482, 0.722622, 0.574448,
		-0.109406, 0.582226, -0.805632,
		-0.916626, -0.372600, -0.144796,
		34.389481, 36.486401, 35.196678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572079, 37.223415, 34.985226>,  <35.031116, 36.747219, 35.298035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572079, 37.223415, 34.985226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337833, 36.971207, 35.188992>,  <34.197285, 36.819881, 35.311249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337833, 36.971207, 35.188992>,  <34.572079, 37.223415, 34.985226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337833, 36.971207, 35.188992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341916, 0.761946, 0.550029,
		-0.734949, 0.147928, -0.661791,
		-0.585614, -0.630521, 0.509412,
		34.162148, 36.782051, 35.341816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344349, 37.324364, 34.779583>,  <34.572079, 37.223415, 34.985226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344349, 37.324364, 34.779583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676922, 37.281548, 34.561493>,  <35.876465, 37.255859, 34.430641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676922, 37.281548, 34.561493>,  <35.344349, 37.324364, 34.779583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676922, 37.281548, 34.561493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249237, 0.948856, 0.193785,
		0.496595, -0.297009, 0.815585,
		0.831429, -0.107041, -0.545223,
		35.926350, 37.249435, 34.397926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083622, 37.622551, 35.043327>,  <35.344349, 37.324364, 34.779583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083622, 37.622551, 35.043327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371140, 37.769089, 35.279678>,  <36.543648, 37.857010, 35.421490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.371140, 37.769089, 35.279678>,  <36.083622, 37.622551, 35.043327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371140, 37.769089, 35.279678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693088, -0.310975, -0.650325,
		-0.054493, 0.876977, -0.477432,
		0.718790, 0.366341, 0.590877,
		36.586777, 37.878990, 35.456940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296383, 38.296036, 34.880943>,  <36.083622, 37.622551, 35.043327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296383, 38.296036, 34.880943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587330, 38.083595, 35.054779>,  <36.761898, 37.956131, 35.159081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587330, 38.083595, 35.054779>,  <36.296383, 38.296036, 34.880943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587330, 38.083595, 35.054779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424866, -0.148809, -0.892942,
		0.538912, 0.834140, 0.117407,
		0.727367, -0.531099, 0.434593,
		36.805538, 37.924267, 35.185158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902561, 38.584492, 34.731098>,  <36.296383, 38.296036, 34.880943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902561, 38.584492, 34.731098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977997, 38.196198, 34.790562>,  <37.023258, 37.963219, 34.826241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977997, 38.196198, 34.790562>,  <36.902561, 38.584492, 34.731098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977997, 38.196198, 34.790562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547007, -0.021881, -0.836842,
		0.815608, 0.239136, 0.526875,
		0.188591, -0.970739, 0.148655,
		37.034573, 37.904976, 34.835159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667873, 38.465897, 34.657654>,  <36.902561, 38.584492, 34.731098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667873, 38.465897, 34.657654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498348, 38.111378, 34.582970>,  <37.396633, 37.898666, 34.538158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498348, 38.111378, 34.582970>,  <37.667873, 38.465897, 34.657654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498348, 38.111378, 34.582970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532437, -0.077020, -0.842958,
		0.732732, -0.456665, 0.504540,
		-0.423809, -0.886298, -0.186711,
		37.371204, 37.845490, 34.526955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253265, 38.102081, 34.475094>,  <37.667873, 38.465897, 34.657654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253265, 38.102081, 34.475094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965534, 37.852612, 34.352722>,  <37.792896, 37.702930, 34.279301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965534, 37.852612, 34.352722>,  <38.253265, 38.102081, 34.475094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965534, 37.852612, 34.352722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651625, -0.453190, -0.608279,
		0.240725, -0.636904, 0.732397,
		-0.719330, -0.623676, -0.305929,
		37.749737, 37.665508, 34.260944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593670, 37.448341, 34.476749>,  <38.253265, 38.102081, 34.475094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593670, 37.448341, 34.476749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281063, 37.416771, 34.229202>,  <38.093498, 37.397827, 34.080673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281063, 37.416771, 34.229202>,  <38.593670, 37.448341, 34.476749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281063, 37.416771, 34.229202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557252, -0.534347, -0.635566,
		-0.280526, -0.841573, 0.461585,
		-0.781521, -0.078926, -0.618866,
		38.046608, 37.393093, 34.043541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573921, 36.799240, 34.196640>,  <38.593670, 37.448341, 34.476749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573921, 36.799240, 34.196640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356731, 37.008759, 33.934093>,  <38.226418, 37.134468, 33.776566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356731, 37.008759, 33.934093>,  <38.573921, 36.799240, 34.196640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356731, 37.008759, 33.934093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474252, -0.453766, -0.754441,
		-0.693010, -0.720925, -0.002029,
		-0.542975, 0.523797, -0.656365,
		38.193840, 37.165897, 33.737183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474033, 36.331223, 33.702618>,  <38.573921, 36.799240, 34.196640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474033, 36.331223, 33.702618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418987, 36.685905, 33.526066>,  <38.385960, 36.898716, 33.420135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418987, 36.685905, 33.526066>,  <38.474033, 36.331223, 33.702618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418987, 36.685905, 33.526066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400402, -0.357781, -0.843606,
		-0.905946, -0.292825, -0.305802,
		-0.137619, 0.886705, -0.441378,
		38.377701, 36.951916, 33.393654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439774, 36.119419, 33.088890>,  <38.474033, 36.331223, 33.702618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439774, 36.119419, 33.088890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478943, 36.513481, 33.032497>,  <38.502445, 36.749920, 32.998661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.478943, 36.513481, 33.032497>,  <38.439774, 36.119419, 33.088890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478943, 36.513481, 33.032497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627229, -0.171079, -0.759813,
		-0.772654, -0.014025, -0.634672,
		0.097922, 0.985158, -0.140982,
		38.508320, 36.809029, 32.990204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143711, 36.236202, 32.434055>,  <38.439774, 36.119419, 33.088890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143711, 36.236202, 32.434055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.399437, 36.533882, 32.511456>,  <38.552872, 36.712490, 32.557896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.399437, 36.533882, 32.511456>,  <38.143711, 36.236202, 32.434055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399437, 36.533882, 32.511456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505466, -0.217094, -0.835089,
		-0.579464, 0.631695, -0.514959,
		0.639316, 0.744199, 0.193502,
		38.591232, 36.757141, 32.569508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121750, 36.517132, 31.796423>,  <38.143711, 36.236202, 32.434055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121750, 36.517132, 31.796423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441677, 36.691246, 31.961744>,  <38.633633, 36.795715, 32.060936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441677, 36.691246, 31.961744>,  <38.121750, 36.517132, 31.796423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441677, 36.691246, 31.961744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473387, -0.034089, -0.880194,
		-0.369044, 0.899649, -0.233322,
		0.799819, 0.435282, 0.413302,
		38.681622, 36.821831, 32.085735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381580, 36.974552, 31.327364>,  <38.121750, 36.517132, 31.796423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381580, 36.974552, 31.327364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699642, 36.921818, 31.564125>,  <38.890480, 36.890175, 31.706181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699642, 36.921818, 31.564125>,  <38.381580, 36.974552, 31.327364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699642, 36.921818, 31.564125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580700, -0.115633, -0.805864,
		0.174687, 0.984504, -0.015388,
		0.795155, -0.131838, 0.591901,
		38.938190, 36.882267, 31.741695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976685, 37.485935, 31.059244>,  <38.381580, 36.974552, 31.327364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976685, 37.485935, 31.059244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.128395, 37.171520, 31.254505>,  <39.219421, 36.982872, 31.371662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.128395, 37.171520, 31.254505>,  <38.976685, 37.485935, 31.059244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128395, 37.171520, 31.254505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640600, -0.157621, -0.751523,
		0.667670, 0.597744, 0.443755,
		0.379274, -0.786039, 0.488154,
		39.242176, 36.935707, 31.400951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665501, 37.476879, 30.974512>,  <38.976685, 37.485935, 31.059244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665501, 37.476879, 30.974512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.616222, 37.100029, 31.099232>,  <39.586655, 36.873917, 31.174063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.616222, 37.100029, 31.099232>,  <39.665501, 37.476879, 30.974512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616222, 37.100029, 31.099232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684845, -0.308097, -0.660352,
		0.718199, 0.132179, 0.683168,
		-0.123197, -0.942128, 0.311797,
		39.579262, 36.817390, 31.192770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380543, 37.220631, 30.913164>,  <39.665501, 37.476879, 30.974512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380543, 37.220631, 30.913164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.143646, 36.900585, 30.951260>,  <40.001511, 36.708557, 30.974117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.143646, 36.900585, 30.951260>,  <40.380543, 37.220631, 30.913164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143646, 36.900585, 30.951260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521680, -0.470828, -0.711457,
		0.614089, -0.371667, 0.696246,
		-0.592237, -0.800115, 0.095239,
		39.965977, 36.660549, 30.979832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837078, 36.640953, 30.905945>,  <40.380543, 37.220631, 30.913164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837078, 36.640953, 30.905945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.472404, 36.508625, 30.808456>,  <40.253601, 36.429230, 30.749964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.472404, 36.508625, 30.808456>,  <40.837078, 36.640953, 30.905945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472404, 36.508625, 30.808456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395084, -0.542750, -0.741168,
		0.112909, -0.771999, 0.625515,
		-0.911680, -0.330816, -0.243723,
		40.198902, 36.409382, 30.735340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958519, 36.002617, 30.764896>,  <40.837078, 36.640953, 30.905945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958519, 36.002617, 30.764896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.605980, 36.074654, 30.590174>,  <40.394459, 36.117874, 30.485340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.605980, 36.074654, 30.590174>,  <40.958519, 36.002617, 30.764896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605980, 36.074654, 30.590174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288935, -0.526046, -0.799870,
		-0.373828, -0.831170, 0.411594,
		-0.881345, 0.180090, -0.436805,
		40.341576, 36.128681, 30.459131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726700, 35.334415, 30.512531>,  <40.958519, 36.002617, 30.764896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726700, 35.334415, 30.512531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.515915, 35.591640, 30.290260>,  <40.389442, 35.745975, 30.156898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.515915, 35.591640, 30.290260>,  <40.726700, 35.334415, 30.512531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515915, 35.591640, 30.290260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261088, -0.499718, -0.825903,
		-0.808790, -0.580302, 0.095437,
		-0.526964, 0.643064, -0.555676,
		40.357826, 35.784561, 30.123558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332878, 34.957138, 29.984589>,  <40.726700, 35.334415, 30.512531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332878, 34.957138, 29.984589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.327621, 35.324806, 29.827133>,  <40.324467, 35.545406, 29.732660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.327621, 35.324806, 29.827133>,  <40.332878, 34.957138, 29.984589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327621, 35.324806, 29.827133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285219, -0.373871, -0.882536,
		-0.958372, -0.123875, -0.257251,
		-0.013145, 0.919171, -0.393639,
		40.323677, 35.600559, 29.709042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022350, 34.805534, 29.390013>,  <40.332878, 34.957138, 29.984589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022350, 34.805534, 29.390013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.214119, 35.154110, 29.348549>,  <40.329182, 35.363255, 29.323669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.214119, 35.154110, 29.348549>,  <40.022350, 34.805534, 29.390013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214119, 35.154110, 29.348549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290894, -0.269245, -0.918089,
		-0.827970, 0.409998, -0.382579,
		0.479422, 0.871441, -0.103661,
		40.357944, 35.415543, 29.317451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892342, 34.931900, 28.767683>,  <40.022350, 34.805534, 29.390013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892342, 34.931900, 28.767683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.184914, 35.199875, 28.818571>,  <40.360458, 35.360661, 28.849104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.184914, 35.199875, 28.818571>,  <39.892342, 34.931900, 28.767683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184914, 35.199875, 28.818571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426582, -0.303971, -0.851839,
		-0.532010, 0.677333, -0.508119,
		0.731432, 0.669941, 0.127222,
		40.404343, 35.400856, 28.856737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819172, 35.309864, 28.202463>,  <39.892342, 34.931900, 28.767683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819172, 35.309864, 28.202463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.192661, 35.353806, 28.338755>,  <40.416756, 35.380169, 28.420528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.192661, 35.353806, 28.338755>,  <39.819172, 35.309864, 28.202463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192661, 35.353806, 28.338755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355399, -0.169969, -0.919131,
		-0.043054, 0.979308, -0.197744,
		0.933723, 0.109850, 0.340727,
		40.472778, 35.386761, 28.440973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210480, 35.767624, 27.710274>,  <39.819172, 35.309864, 28.202463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210480, 35.767624, 27.710274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.479427, 35.563877, 27.925112>,  <40.640797, 35.441628, 28.054014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.479427, 35.563877, 27.925112>,  <40.210480, 35.767624, 27.710274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479427, 35.563877, 27.925112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310972, -0.464078, -0.829414,
		0.671731, 0.724690, -0.153630,
		0.672365, -0.509368, 0.537094,
		40.681137, 35.411068, 28.086241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856049, 35.798611, 27.350534>,  <40.210480, 35.767624, 27.710274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856049, 35.798611, 27.350534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.917419, 35.482586, 27.587942>,  <40.954243, 35.292973, 27.730387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.917419, 35.482586, 27.587942>,  <40.856049, 35.798611, 27.350534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917419, 35.482586, 27.587942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516488, -0.447942, -0.729786,
		0.842437, 0.418514, 0.339331,
		0.153425, -0.790059, 0.593521,
		40.963448, 35.245567, 27.765999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635696, 35.651749, 27.444695>,  <40.856049, 35.798611, 27.350534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635696, 35.651749, 27.444695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.430634, 35.318333, 27.527054>,  <41.307594, 35.118282, 27.576469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.430634, 35.318333, 27.527054>,  <41.635696, 35.651749, 27.444695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430634, 35.318333, 27.527054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384308, -0.437216, -0.813111,
		0.767781, -0.337721, 0.544478,
		-0.512659, -0.833539, 0.205897,
		41.276836, 35.068272, 27.588823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130569, 35.166668, 27.405327>,  <41.635696, 35.651749, 27.444695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130569, 35.166668, 27.405327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.788094, 34.960548, 27.390331>,  <41.582607, 34.836876, 27.381334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.788094, 34.960548, 27.390331>,  <42.130569, 35.166668, 27.405327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788094, 34.960548, 27.390331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319226, -0.470554, -0.822602,
		0.406246, -0.716271, 0.567380,
		-0.856189, -0.515302, -0.037491,
		41.531239, 34.805958, 27.379084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288151, 34.443653, 27.373306>,  <42.130569, 35.166668, 27.405327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288151, 34.443653, 27.373306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.921001, 34.489098, 27.221199>,  <41.700710, 34.516365, 27.129934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.921001, 34.489098, 27.221199>,  <42.288151, 34.443653, 27.373306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921001, 34.489098, 27.221199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297399, -0.437577, -0.848576,
		-0.262800, -0.891976, 0.367853,
		-0.917872, 0.113606, -0.380268,
		41.645641, 34.523178, 27.107119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637276, 33.802105, 27.684776>,  <42.288151, 34.443653, 27.373306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637276, 33.802105, 27.684776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.996944, 33.685276, 27.815123>,  <43.212746, 33.615177, 27.893330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.996944, 33.685276, 27.815123>,  <42.637276, 33.802105, 27.684776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996944, 33.685276, 27.815123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256780, 0.250825, 0.933354,
		-0.354346, -0.922918, 0.150535,
		0.899168, -0.292076, 0.325866,
		43.266693, 33.597652, 27.912882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489986, 33.375881, 28.167521>,  <42.637276, 33.802105, 27.684776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489986, 33.375881, 28.167521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.857182, 33.520073, 28.233673>,  <43.077499, 33.606586, 28.273365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.857182, 33.520073, 28.233673>,  <42.489986, 33.375881, 28.167521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857182, 33.520073, 28.233673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285328, 0.310639, 0.906692,
		0.275463, -0.879524, 0.388017,
		0.917991, 0.360472, 0.165383,
		43.132580, 33.628216, 28.283287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659714, 33.195164, 28.939760>,  <42.489986, 33.375881, 28.167521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659714, 33.195164, 28.939760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.930382, 33.473156, 28.842508>,  <43.092785, 33.639950, 28.784157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.930382, 33.473156, 28.842508>,  <42.659714, 33.195164, 28.939760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930382, 33.473156, 28.842508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106646, 0.419247, 0.901587,
		0.728518, -0.584152, 0.357810,
		0.676675, 0.694981, -0.243131,
		43.133385, 33.681652, 28.769569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059845, 33.201817, 29.435703>,  <42.659714, 33.195164, 28.939760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059845, 33.201817, 29.435703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.126472, 33.561562, 29.274008>,  <43.166447, 33.777409, 29.176991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.126472, 33.561562, 29.274008>,  <43.059845, 33.201817, 29.435703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126472, 33.561562, 29.274008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223803, 0.433750, 0.872796,
		0.960296, -0.054906, 0.273526,
		0.166564, 0.899359, -0.404240,
		43.176441, 33.831367, 29.152737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630226, 33.501896, 29.821983>,  <43.059845, 33.201817, 29.435703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630226, 33.501896, 29.821983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.435364, 33.809990, 29.657343>,  <43.318447, 33.994846, 29.558559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.435364, 33.809990, 29.657343>,  <43.630226, 33.501896, 29.821983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435364, 33.809990, 29.657343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447524, 0.184548, 0.875023,
		0.749936, 0.610471, 0.254797,
		-0.487154, 0.770238, -0.411600,
		43.289219, 34.041061, 29.533863>
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
