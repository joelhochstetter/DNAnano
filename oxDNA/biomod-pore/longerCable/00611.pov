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
	<24.094875, 34.663029, 34.790688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299345, 34.974182, 34.936893>,  <24.422028, 35.160873, 35.024616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299345, 34.974182, 34.936893>,  <24.094875, 34.663029, 34.790688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299345, 34.974182, 34.936893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517255, -0.618069, 0.591977,
		0.686401, -0.113541, -0.718305,
		0.511176, 0.777881, 0.365514,
		24.452698, 35.207546, 35.046547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779512, 34.581795, 34.834206>,  <24.094875, 34.663029, 34.790688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779512, 34.581795, 34.834206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686872, 34.826546, 35.136719>,  <24.631289, 34.973396, 35.318226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686872, 34.826546, 35.136719>,  <24.779512, 34.581795, 34.834206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686872, 34.826546, 35.136719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410946, -0.643113, 0.646165,
		0.881751, 0.460444, -0.102504,
		-0.231601, 0.611880, 0.756283,
		24.617392, 35.010109, 35.363602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604998, 34.454842, 34.209602>,  <24.779512, 34.581795, 34.834206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604998, 34.454842, 34.209602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960091, 34.572765, 34.351036>,  <25.173147, 34.643520, 34.435894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960091, 34.572765, 34.351036>,  <24.604998, 34.454842, 34.209602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960091, 34.572765, 34.351036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317110, -0.948373, -0.005438,
		0.333725, 0.116952, -0.935387,
		0.887732, 0.294806, 0.353583,
		25.226410, 34.661209, 34.457111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263783, 34.308773, 33.802032>,  <24.604998, 34.454842, 34.209602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263783, 34.308773, 33.802032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282574, 34.257870, 34.198334>,  <25.293848, 34.227325, 34.436115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282574, 34.257870, 34.198334>,  <25.263783, 34.308773, 33.802032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282574, 34.257870, 34.198334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538422, -0.832205, -0.132426,
		0.841365, 0.539666, 0.029424,
		0.046980, -0.127261, 0.990756,
		25.296667, 34.219692, 34.495560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883778, 34.300652, 34.047363>,  <25.263783, 34.308773, 33.802032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883778, 34.300652, 34.047363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686934, 34.081852, 34.318249>,  <25.568827, 33.950573, 34.480782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686934, 34.081852, 34.318249>,  <25.883778, 34.300652, 34.047363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686934, 34.081852, 34.318249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721865, -0.691211, -0.033742,
		0.486556, 0.472254, 0.735011,
		-0.492113, -0.546996, 0.677216,
		25.539299, 33.917755, 34.521412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407721, 33.822819, 34.221489>,  <25.883778, 34.300652, 34.047363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407721, 33.822819, 34.221489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112228, 33.651279, 34.429478>,  <25.934933, 33.548355, 34.554272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112228, 33.651279, 34.429478>,  <26.407721, 33.822819, 34.221489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112228, 33.651279, 34.429478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555442, -0.824350, 0.109232,
		0.381792, 0.369505, 0.847172,
		-0.738728, -0.428851, 0.519968,
		25.890610, 33.522625, 34.585468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529327, 33.588467, 34.927197>,  <26.407721, 33.822819, 34.221489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529327, 33.588467, 34.927197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292122, 33.330894, 34.733829>,  <26.149799, 33.176353, 34.617809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292122, 33.330894, 34.733829>,  <26.529327, 33.588467, 34.927197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292122, 33.330894, 34.733829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685800, -0.718517, 0.115808,
		-0.421916, -0.262853, 0.867695,
		-0.593013, -0.643927, -0.483419,
		26.114218, 33.137718, 34.588802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769871, 33.134758, 35.276108>,  <26.529327, 33.588467, 34.927197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769871, 33.134758, 35.276108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584682, 32.930176, 34.986538>,  <26.473570, 32.807426, 34.812798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584682, 32.930176, 34.986538>,  <26.769871, 33.134758, 35.276108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584682, 32.930176, 34.986538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655329, -0.747442, 0.108973,
		-0.596828, -0.423958, 0.681217,
		-0.462970, -0.511459, -0.723925,
		26.445791, 32.776737, 34.769360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547600, 32.461987, 35.518349>,  <26.769871, 33.134758, 35.276108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547600, 32.461987, 35.518349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656967, 32.493694, 35.134899>,  <26.722588, 32.512718, 34.904831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656967, 32.493694, 35.134899>,  <26.547600, 32.461987, 35.518349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656967, 32.493694, 35.134899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703343, -0.696312, 0.143030,
		-0.656164, -0.713348, -0.246138,
		0.273419, 0.079268, -0.958623,
		26.738993, 32.517475, 34.847313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524317, 31.838972, 35.281239>,  <26.547600, 32.461987, 35.518349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524317, 31.838972, 35.281239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757248, 32.037354, 35.023579>,  <26.897007, 32.156384, 34.868984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757248, 32.037354, 35.023579>,  <26.524317, 31.838972, 35.281239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757248, 32.037354, 35.023579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629226, -0.776676, -0.029158,
		-0.514754, -0.388334, -0.764346,
		0.582326, 0.495955, -0.644147,
		26.931946, 32.186142, 34.830334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787140, 31.412710, 34.643253>,  <26.524317, 31.838972, 35.281239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787140, 31.412710, 34.643253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069344, 31.694908, 34.670181>,  <27.238667, 31.864227, 34.686337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069344, 31.694908, 34.670181>,  <26.787140, 31.412710, 34.643253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069344, 31.694908, 34.670181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704465, -0.708493, 0.042030,
		0.077347, 0.017772, -0.996846,
		0.705511, 0.705494, 0.067319,
		27.280996, 31.906557, 34.690376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339100, 31.402166, 34.036415>,  <26.787140, 31.412710, 34.643253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339100, 31.402166, 34.036415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471567, 31.523327, 34.393867>,  <27.551046, 31.596024, 34.608341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471567, 31.523327, 34.393867>,  <27.339100, 31.402166, 34.036415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471567, 31.523327, 34.393867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692890, -0.720936, -0.012409,
		0.640494, 0.623299, -0.448627,
		0.331166, 0.302902, 0.893633,
		27.570917, 31.614197, 34.661957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943808, 31.705879, 33.894215>,  <27.339100, 31.402166, 34.036415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943808, 31.705879, 33.894215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935726, 31.576775, 34.272720>,  <27.930878, 31.499311, 34.499825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935726, 31.576775, 34.272720>,  <27.943808, 31.705879, 33.894215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935726, 31.576775, 34.272720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608738, -0.754774, -0.244447,
		0.793114, 0.571088, 0.211727,
		-0.020205, -0.322761, 0.946265,
		27.929665, 31.479946, 34.556599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871943, 31.034765, 33.692608>,  <27.943808, 31.705879, 33.894215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871943, 31.034765, 33.692608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719902, 31.318623, 33.455311>,  <27.628677, 31.488937, 33.312935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719902, 31.318623, 33.455311>,  <27.871943, 31.034765, 33.692608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719902, 31.318623, 33.455311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838850, -0.005740, -0.544333,
		-0.389687, -0.704539, -0.593101,
		-0.380099, 0.709642, -0.593240,
		27.605873, 31.531515, 33.277340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968380, 30.248581, 33.526798>,  <27.871943, 31.034765, 33.692608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968380, 30.248581, 33.526798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587912, 30.362827, 33.479977>,  <27.359631, 30.431376, 33.451885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587912, 30.362827, 33.479977>,  <27.968380, 30.248581, 33.526798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587912, 30.362827, 33.479977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173553, 0.181264, -0.967999,
		-0.255259, -0.941045, -0.221983,
		-0.951169, 0.285616, -0.117052,
		27.302561, 30.448511, 33.444862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865885, 29.659416, 32.948280>,  <27.968380, 30.248581, 33.526798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865885, 29.659416, 32.948280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025913, 29.322147, 32.804611>,  <28.121929, 29.119785, 32.718410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025913, 29.322147, 32.804611>,  <27.865885, 29.659416, 32.948280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025913, 29.322147, 32.804611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630751, -0.031011, 0.775366,
		-0.664905, -0.536749, 0.519425,
		0.400069, -0.843172, -0.359174,
		28.145933, 29.069197, 32.696857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870634, 29.064552, 33.495144>,  <27.865885, 29.659416, 32.948280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870634, 29.064552, 33.495144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190800, 29.040596, 33.256565>,  <28.382900, 29.026222, 33.113419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190800, 29.040596, 33.256565>,  <27.870634, 29.064552, 33.495144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190800, 29.040596, 33.256565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598106, 0.013310, 0.801307,
		-0.040052, -0.998116, 0.046475,
		0.800416, -0.059891, -0.596446,
		28.430925, 29.022629, 33.077633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219749, 28.417799, 33.636364>,  <27.870634, 29.064552, 33.495144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219749, 28.417799, 33.636364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473495, 28.704756, 33.521172>,  <28.625742, 28.876930, 33.452057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473495, 28.704756, 33.521172>,  <28.219749, 28.417799, 33.636364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473495, 28.704756, 33.521172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592112, -0.211424, 0.777626,
		0.496976, -0.663815, -0.558896,
		0.634364, 0.717391, -0.287980,
		28.663805, 28.919973, 33.434776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803150, 28.117897, 33.535625>,  <28.219749, 28.417799, 33.636364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803150, 28.117897, 33.535625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843609, 28.504564, 33.629711>,  <28.867884, 28.736565, 33.686161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843609, 28.504564, 33.629711>,  <28.803150, 28.117897, 33.535625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843609, 28.504564, 33.629711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611986, -0.246856, 0.751355,
		0.784374, 0.067952, -0.616555,
		0.101144, 0.966667, 0.235214,
		28.873953, 28.794565, 33.700275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555773, 28.237106, 33.426075>,  <28.803150, 28.117897, 33.535625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555773, 28.237106, 33.426075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365551, 28.475574, 33.684818>,  <29.251419, 28.618656, 33.840065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365551, 28.475574, 33.684818>,  <29.555773, 28.237106, 33.426075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365551, 28.475574, 33.684818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640048, -0.269960, 0.719347,
		0.603480, 0.756110, -0.253198,
		-0.475552, 0.596170, 0.646863,
		29.222885, 28.654425, 33.878876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133516, 28.446409, 33.846798>,  <29.555773, 28.237106, 33.426075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133516, 28.446409, 33.846798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790745, 28.552544, 34.023556>,  <29.585081, 28.616224, 34.129612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790745, 28.552544, 34.023556>,  <30.133516, 28.446409, 33.846798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790745, 28.552544, 34.023556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448348, -0.039233, 0.892998,
		0.254281, 0.963358, -0.085343,
		-0.856928, 0.265336, 0.441895,
		29.533667, 28.632145, 34.156124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166481, 29.134029, 34.162346>,  <30.133516, 28.446409, 33.846798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166481, 29.134029, 34.162346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926645, 28.859882, 34.327641>,  <29.782743, 28.695395, 34.426819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926645, 28.859882, 34.327641>,  <30.166481, 29.134029, 34.162346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926645, 28.859882, 34.327641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381083, 0.209552, 0.900480,
		-0.703753, 0.697396, 0.135536,
		-0.599589, -0.685366, 0.413239,
		29.746769, 28.654272, 34.451611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762184, 29.406601, 34.707748>,  <30.166481, 29.134029, 34.162346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762184, 29.406601, 34.707748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764605, 29.012144, 34.774059>,  <29.766056, 28.775469, 34.813847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764605, 29.012144, 34.774059>,  <29.762184, 29.406601, 34.707748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764605, 29.012144, 34.774059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350975, 0.157330, 0.923073,
		-0.936365, 0.052601, 0.347064,
		0.006049, -0.986144, 0.165780,
		29.766418, 28.716301, 34.823792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382324, 29.203693, 35.312660>,  <29.762184, 29.406601, 34.707748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382324, 29.203693, 35.312660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685535, 28.955931, 35.230949>,  <29.867462, 28.807274, 35.181923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685535, 28.955931, 35.230949>,  <29.382324, 29.203693, 35.312660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685535, 28.955931, 35.230949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269282, 0.011958, 0.962987,
		-0.594036, -0.784980, 0.175859,
		0.758029, -0.619405, -0.204278,
		29.912945, 28.770109, 35.169666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226126, 28.570234, 35.826252>,  <29.382324, 29.203693, 35.312660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226126, 28.570234, 35.826252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594912, 28.628679, 35.682789>,  <29.816183, 28.663746, 35.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594912, 28.628679, 35.682789>,  <29.226126, 28.570234, 35.826252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594912, 28.628679, 35.682789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341632, 0.129348, 0.930890,
		0.182408, -0.980775, 0.069336,
		0.921962, 0.146114, -0.358659,
		29.871500, 28.672512, 35.575191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660255, 28.122784, 36.161648>,  <29.226126, 28.570234, 35.826252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660255, 28.122784, 36.161648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887939, 28.429543, 36.043076>,  <30.024549, 28.613598, 35.971931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887939, 28.429543, 36.043076>,  <29.660255, 28.122784, 36.161648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887939, 28.429543, 36.043076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388064, 0.067260, 0.919175,
		0.724848, -0.638238, -0.259319,
		0.569211, 0.766895, -0.296430,
		30.058702, 28.659611, 35.954147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460114, 28.109518, 36.294834>,  <29.660255, 28.122784, 36.161648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460114, 28.109518, 36.294834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266562, 28.459431, 36.304771>,  <30.150431, 28.669378, 36.310734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266562, 28.459431, 36.304771>,  <30.460114, 28.109518, 36.294834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266562, 28.459431, 36.304771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425135, 0.210162, 0.880393,
		0.764932, 0.436564, -0.473594,
		-0.483880, 0.874782, 0.024839,
		30.121397, 28.721865, 36.312222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828157, 27.376930, 36.497467>,  <30.460114, 28.109518, 36.294834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828157, 27.376930, 36.497467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527081, 27.159636, 36.348682>,  <30.346436, 27.029259, 36.259411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527081, 27.159636, 36.348682>,  <30.828157, 27.376930, 36.497467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527081, 27.159636, 36.348682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001114, 0.566015, -0.824394,
		0.658376, -0.620098, -0.426638,
		-0.752689, -0.543236, -0.371960,
		30.301273, 26.996666, 36.237095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922592, 26.645992, 36.398701>,  <30.828157, 27.376930, 36.497467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922592, 26.645992, 36.398701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834011, 26.652145, 36.008682>,  <30.780863, 26.655836, 35.774670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834011, 26.652145, 36.008682>,  <30.922592, 26.645992, 36.398701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834011, 26.652145, 36.008682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785256, 0.595674, -0.168952,
		0.578214, -0.803079, -0.143992,
		-0.221454, 0.015380, -0.975049,
		30.767574, 26.656759, 35.716167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510338, 26.414543, 36.044418>,  <30.922592, 26.645992, 36.398701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510338, 26.414543, 36.044418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335459, 26.643373, 35.766834>,  <31.230532, 26.780672, 35.600285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335459, 26.643373, 35.766834>,  <31.510338, 26.414543, 36.044418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335459, 26.643373, 35.766834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896602, 0.337685, -0.286485,
		0.070450, -0.747459, -0.660562,
		-0.437197, 0.572078, -0.693963,
		31.204300, 26.814997, 35.558643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842571, 26.312410, 35.385735>,  <31.510338, 26.414543, 36.044418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842571, 26.312410, 35.385735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713348, 26.686861, 35.441299>,  <31.635815, 26.911531, 35.474640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713348, 26.686861, 35.441299>,  <31.842571, 26.312410, 35.385735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713348, 26.686861, 35.441299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895568, 0.349850, -0.274886,
		-0.305928, 0.035606, -0.951389,
		-0.323056, 0.936129, 0.138917,
		31.616432, 26.967699, 35.482975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868776, 26.822180, 34.749210>,  <31.842571, 26.312410, 35.385735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868776, 26.822180, 34.749210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909086, 27.023132, 35.092712>,  <31.933271, 27.143703, 35.298813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909086, 27.023132, 35.092712>,  <31.868776, 26.822180, 34.749210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909086, 27.023132, 35.092712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974030, 0.126084, -0.188064,
		-0.202755, 0.855403, -0.476629,
		0.100775, 0.502382, 0.858753,
		31.939320, 27.173847, 35.350338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224068, 27.440140, 34.568752>,  <31.868776, 26.822180, 34.749210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224068, 27.440140, 34.568752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313423, 27.300039, 34.932602>,  <32.367035, 27.215979, 35.150913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313423, 27.300039, 34.932602>,  <32.224068, 27.440140, 34.568752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313423, 27.300039, 34.932602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961064, 0.234865, -0.145584,
		-0.162648, 0.906732, 0.389080,
		0.223387, -0.350252, 0.909627,
		32.380440, 27.194963, 35.205490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456928, 27.981462, 34.989906>,  <32.224068, 27.440140, 34.568752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456928, 27.981462, 34.989906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568031, 27.599079, 35.027843>,  <32.634693, 27.369650, 35.050606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568031, 27.599079, 35.027843>,  <32.456928, 27.981462, 34.989906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568031, 27.599079, 35.027843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925703, 0.239958, -0.292395,
		0.256757, 0.169016, 0.951582,
		0.277759, -0.955957, 0.094847,
		32.651360, 27.312292, 35.056297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156181, 27.858032, 35.363232>,  <32.456928, 27.981462, 34.989906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156181, 27.858032, 35.363232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083626, 27.585787, 35.079296>,  <33.040092, 27.422440, 34.908936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083626, 27.585787, 35.079296>,  <33.156181, 27.858032, 35.363232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083626, 27.585787, 35.079296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893829, 0.186891, -0.407605,
		0.410082, -0.708407, 0.574450,
		-0.181391, -0.680611, -0.709835,
		33.029209, 27.381603, 34.866344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791233, 28.009478, 34.902306>,  <33.156181, 27.858032, 35.363232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791233, 28.009478, 34.902306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185059, 27.975458, 34.963482>,  <34.421356, 27.955046, 35.000187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185059, 27.975458, 34.963482>,  <33.791233, 28.009478, 34.902306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185059, 27.975458, 34.963482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067739, 0.620628, 0.781174,
		-0.161360, -0.779479, 0.605289,
		0.984568, -0.085049, 0.152945,
		34.480431, 27.949944, 35.009365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193363, 28.215742, 34.247742>,  <33.791233, 28.009478, 34.902306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193363, 28.215742, 34.247742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800148, 28.279032, 34.210655>,  <33.564217, 28.317005, 34.188404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800148, 28.279032, 34.210655>,  <34.193363, 28.215742, 34.247742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800148, 28.279032, 34.210655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109956, -0.103932, 0.988488,
		0.146768, 0.981918, 0.119567,
		-0.983041, 0.158225, -0.092713,
		33.505238, 28.326500, 34.182842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295658, 27.598078, 33.911098>,  <34.193363, 28.215742, 34.247742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295658, 27.598078, 33.911098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676262, 27.485884, 33.860554>,  <34.904625, 27.418568, 33.830227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676262, 27.485884, 33.860554>,  <34.295658, 27.598078, 33.911098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676262, 27.485884, 33.860554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281613, 0.628828, 0.724755,
		-0.123824, -0.725192, 0.677321,
		0.951505, -0.280485, -0.126360,
		34.961712, 27.401739, 33.822647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349457, 27.467030, 34.543972>,  <34.295658, 27.598078, 33.911098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349457, 27.467030, 34.543972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693695, 27.560417, 34.362923>,  <34.900238, 27.616449, 34.254292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693695, 27.560417, 34.362923>,  <34.349457, 27.467030, 34.543972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693695, 27.560417, 34.362923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255186, 0.571449, 0.779952,
		0.440745, -0.786727, 0.432209,
		0.860595, 0.233466, -0.452625,
		34.951874, 27.630457, 34.227135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680138, 27.283365, 35.120846>,  <34.349457, 27.467030, 34.543972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680138, 27.283365, 35.120846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916222, 27.508942, 34.889809>,  <35.057873, 27.644287, 34.751186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916222, 27.508942, 34.889809>,  <34.680138, 27.283365, 35.120846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916222, 27.508942, 34.889809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226222, 0.571296, 0.788951,
		0.774901, -0.596315, 0.209611,
		0.590213, 0.563940, -0.577598,
		35.093285, 27.678123, 34.716530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338947, 27.260281, 35.383492>,  <34.680138, 27.283365, 35.120846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338947, 27.260281, 35.383492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296165, 27.622051, 35.218292>,  <35.270496, 27.839113, 35.119171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296165, 27.622051, 35.218292>,  <35.338947, 27.260281, 35.383492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296165, 27.622051, 35.218292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459428, 0.413336, 0.786180,
		0.881752, -0.105658, -0.459728,
		-0.106957, 0.904428, -0.413002,
		35.264080, 27.893379, 35.094391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905930, 27.711044, 35.509403>,  <35.338947, 27.260281, 35.383492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905930, 27.711044, 35.509403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614464, 27.980526, 35.460136>,  <35.439583, 28.142214, 35.430576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614464, 27.980526, 35.460136>,  <35.905930, 27.711044, 35.509403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614464, 27.980526, 35.460136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448534, 0.605343, 0.657553,
		0.517553, 0.423893, -0.743272,
		-0.728667, 0.673702, -0.123167,
		35.395863, 28.182636, 35.423187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168652, 28.297918, 35.290943>,  <35.905930, 27.711044, 35.509403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168652, 28.297918, 35.290943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824657, 28.419590, 35.454842>,  <35.618259, 28.492594, 35.553181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824657, 28.419590, 35.454842>,  <36.168652, 28.297918, 35.290943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824657, 28.419590, 35.454842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451370, 0.828007, 0.332670,
		-0.238082, 0.471041, -0.849375,
		-0.859989, 0.304180, 0.409747,
		35.566662, 28.510843, 35.577766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769875, 27.950392, 35.005943>,  <36.168652, 28.297918, 35.290943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769875, 27.950392, 35.005943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003647, 28.223171, 34.830040>,  <37.143909, 28.386839, 34.724499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003647, 28.223171, 34.830040>,  <36.769875, 27.950392, 35.005943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003647, 28.223171, 34.830040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669605, 0.711419, 0.213337,
		0.458339, 0.169786, 0.872409,
		0.584427, 0.681951, -0.439761,
		37.178974, 28.427757, 34.698112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886486, 28.590401, 35.473778>,  <36.769875, 27.950392, 35.005943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886486, 28.590401, 35.473778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859390, 28.635380, 35.077240>,  <36.843132, 28.662367, 34.839317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859390, 28.635380, 35.077240>,  <36.886486, 28.590401, 35.473778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859390, 28.635380, 35.077240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871695, 0.476692, 0.113637,
		0.485344, 0.871849, 0.065727,
		-0.067743, 0.112447, -0.991346,
		36.839066, 28.669113, 34.779835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812328, 29.334734, 35.325809>,  <36.886486, 28.590401, 35.473778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812328, 29.334734, 35.325809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640980, 29.078922, 35.070465>,  <36.538170, 28.925436, 34.917259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640980, 29.078922, 35.070465>,  <36.812328, 29.334734, 35.325809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640980, 29.078922, 35.070465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902942, 0.275983, 0.329437,
		-0.034508, 0.717522, -0.695680,
		-0.428374, -0.639528, -0.638357,
		36.512466, 28.887064, 34.878960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262573, 29.996744, 35.382462>,  <36.812328, 29.334734, 35.325809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262573, 29.996744, 35.382462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583061, 30.233376, 35.346497>,  <36.775352, 30.375355, 35.324917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583061, 30.233376, 35.346497>,  <36.262573, 29.996744, 35.382462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583061, 30.233376, 35.346497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344164, -0.578522, -0.739502,
		-0.489493, 0.561557, -0.667122,
		0.801217, 0.591580, -0.089915,
		36.823425, 30.410851, 35.319523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479210, 30.032509, 34.680847>,  <36.262573, 29.996744, 35.382462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479210, 30.032509, 34.680847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828625, 30.142138, 34.841755>,  <37.038273, 30.207914, 34.938297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828625, 30.142138, 34.841755>,  <36.479210, 30.032509, 34.680847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828625, 30.142138, 34.841755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486667, -0.507834, -0.710816,
		0.009469, 0.816694, -0.576994,
		0.873536, 0.274074, 0.402267,
		37.090687, 30.224360, 34.962437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893414, 30.138083, 34.140972>,  <36.479210, 30.032509, 34.680847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893414, 30.138083, 34.140972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156666, 30.063517, 34.432755>,  <37.314617, 30.018778, 34.607826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156666, 30.063517, 34.432755>,  <36.893414, 30.138083, 34.140972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156666, 30.063517, 34.432755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534028, -0.567385, -0.626808,
		0.530729, 0.802075, -0.273866,
		0.658135, -0.186413, 0.729458,
		37.354107, 30.007593, 34.651592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559818, 30.150560, 33.854107>,  <36.893414, 30.138083, 34.140972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559818, 30.150560, 33.854107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650112, 29.935061, 34.178772>,  <37.704288, 29.805761, 34.373569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650112, 29.935061, 34.178772>,  <37.559818, 30.150560, 33.854107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650112, 29.935061, 34.178772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575474, -0.598516, -0.557322,
		0.786048, 0.592899, 0.174928,
		0.225738, -0.538748, 0.811661,
		37.717834, 29.773436, 34.422272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552860, 30.282290, 33.147388>,  <37.559818, 30.150560, 33.854107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552860, 30.282290, 33.147388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891335, 30.362726, 32.949989>,  <38.094418, 30.410988, 32.831551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891335, 30.362726, 32.949989>,  <37.552860, 30.282290, 33.147388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891335, 30.362726, 32.949989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174904, -0.769963, -0.613649,
		-0.503371, 0.605574, -0.616358,
		0.846183, 0.201089, -0.493494,
		38.145191, 30.423054, 32.801941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447002, 30.326115, 32.481552>,  <37.552860, 30.282290, 33.147388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447002, 30.326115, 32.481552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793617, 30.154079, 32.582851>,  <38.001587, 30.050858, 32.643631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793617, 30.154079, 32.582851>,  <37.447002, 30.326115, 32.481552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793617, 30.154079, 32.582851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282184, -0.840687, -0.462188,
		0.411680, 0.329043, -0.849853,
		0.866540, -0.430088, 0.253244,
		38.053577, 30.025053, 32.658825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955437, 30.185472, 31.877880>,  <37.447002, 30.326115, 32.481552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955437, 30.185472, 31.877880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946381, 29.916647, 32.173939>,  <37.940948, 29.755352, 32.351574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946381, 29.916647, 32.173939>,  <37.955437, 30.185472, 31.877880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946381, 29.916647, 32.173939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072754, -0.737265, -0.671675,
		0.997093, -0.069055, -0.032204,
		-0.022640, -0.672066, 0.740145,
		37.939590, 29.715027, 32.395981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105511, 29.544708, 31.483393>,  <37.955437, 30.185472, 31.877880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105511, 29.544708, 31.483393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009434, 29.426041, 31.853106>,  <37.951786, 29.354841, 32.074932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009434, 29.426041, 31.853106>,  <38.105511, 29.544708, 31.483393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009434, 29.426041, 31.853106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115029, -0.936748, -0.330563,
		0.963885, -0.185719, 0.190877,
		-0.240196, -0.296668, 0.924281,
		37.937374, 29.337040, 32.130390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576408, 29.173700, 31.893759>,  <38.105511, 29.544708, 31.483393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576408, 29.173700, 31.893759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220463, 29.069738, 32.043739>,  <38.006897, 29.007362, 32.133728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220463, 29.069738, 32.043739>,  <38.576408, 29.173700, 31.893759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220463, 29.069738, 32.043739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164543, -0.949384, -0.267574,
		0.425518, -0.176409, 0.887589,
		-0.889865, -0.259904, 0.374953,
		37.953503, 28.991768, 32.156223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393013, 28.952808, 31.904953>,  <38.576408, 29.173700, 31.893759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393013, 28.952808, 31.904953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144058, 28.674862, 32.049065>,  <38.994686, 28.508095, 32.135532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144058, 28.674862, 32.049065>,  <39.393013, 28.952808, 31.904953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144058, 28.674862, 32.049065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782597, 0.560319, -0.271264,
		-0.013378, -0.450783, -0.892533,
		-0.622385, -0.694865, 0.360278,
		38.957344, 28.466402, 32.157146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712440, 28.705236, 32.576416>,  <39.393013, 28.952808, 31.904953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712440, 28.705236, 32.576416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738811, 28.410061, 32.845074>,  <39.754635, 28.232956, 33.006268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738811, 28.410061, 32.845074>,  <39.712440, 28.705236, 32.576416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738811, 28.410061, 32.845074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609619, -0.503090, -0.612589,
		0.789948, 0.449831, 0.416694,
		0.065927, -0.737938, 0.671640,
		39.758591, 28.188679, 33.046566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420876, 28.633018, 32.730328>,  <39.712440, 28.705236, 32.576416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420876, 28.633018, 32.730328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239960, 28.287394, 32.818718>,  <40.131409, 28.080019, 32.871750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239960, 28.287394, 32.818718>,  <40.420876, 28.633018, 32.730328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239960, 28.287394, 32.818718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608953, -0.480211, -0.631327,
		0.651619, -0.150983, 0.743369,
		-0.452293, -0.864061, 0.220973,
		40.104271, 28.028175, 32.885010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953472, 28.185869, 32.926189>,  <40.420876, 28.633018, 32.730328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953472, 28.185869, 32.926189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648792, 27.966711, 32.787846>,  <40.465984, 27.835217, 32.704838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648792, 27.966711, 32.787846>,  <40.953472, 28.185869, 32.926189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648792, 27.966711, 32.787846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600623, -0.396868, -0.694080,
		0.243023, -0.736414, 0.631375,
		-0.761703, -0.547897, -0.345859,
		40.420280, 27.802341, 32.684090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116276, 27.491364, 32.851467>,  <40.953472, 28.185869, 32.926189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116276, 27.491364, 32.851467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807266, 27.532192, 32.600777>,  <40.621861, 27.556690, 32.450363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807266, 27.532192, 32.600777>,  <41.116276, 27.491364, 32.851467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807266, 27.532192, 32.600777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555601, -0.369206, -0.744980,
		-0.307430, -0.923725, 0.228512,
		-0.772525, 0.102068, -0.626728,
		40.575508, 27.562813, 32.412758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013374, 26.859940, 32.549702>,  <41.116276, 27.491364, 32.851467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013374, 26.859940, 32.549702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855541, 27.128859, 32.299160>,  <40.760841, 27.290211, 32.148834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855541, 27.128859, 32.299160>,  <41.013374, 26.859940, 32.549702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855541, 27.128859, 32.299160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630645, -0.297624, -0.716734,
		-0.668277, -0.677818, -0.306544,
		-0.394580, 0.672297, -0.626358,
		40.737167, 27.330547, 32.111252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973560, 26.528955, 31.882919>,  <41.013374, 26.859940, 32.549702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973560, 26.528955, 31.882919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992344, 26.919294, 31.797585>,  <41.003616, 27.153498, 31.746384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992344, 26.919294, 31.797585>,  <40.973560, 26.528955, 31.882919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992344, 26.919294, 31.797585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727618, -0.179746, -0.662015,
		-0.684373, -0.124138, -0.718487,
		0.046964, 0.975849, -0.213338,
		41.006432, 27.212049, 31.733583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939651, 26.672354, 31.167166>,  <40.973560, 26.528955, 31.882919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939651, 26.672354, 31.167166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139214, 26.977919, 31.330889>,  <41.258949, 27.161259, 31.429123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139214, 26.977919, 31.330889>,  <40.939651, 26.672354, 31.167166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139214, 26.977919, 31.330889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749189, -0.142733, -0.646795,
		-0.435674, 0.629335, -0.643526,
		0.498903, 0.763914, 0.409305,
		41.288883, 27.207092, 31.453680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070156, 27.159151, 30.591946>,  <40.939651, 26.672354, 31.167166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070156, 27.159151, 30.591946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339958, 27.190897, 30.885540>,  <41.501839, 27.209944, 31.061697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339958, 27.190897, 30.885540>,  <41.070156, 27.159151, 30.591946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339958, 27.190897, 30.885540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721921, 0.137146, -0.678249,
		-0.154491, 0.987366, 0.035212,
		0.674509, 0.079363, 0.733988,
		41.542313, 27.214706, 31.105736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380737, 27.862917, 30.516737>,  <41.070156, 27.159151, 30.591946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380737, 27.862917, 30.516737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636875, 27.640247, 30.728426>,  <41.790558, 27.506645, 30.855440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636875, 27.640247, 30.728426>,  <41.380737, 27.862917, 30.516737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636875, 27.640247, 30.728426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742970, 0.274145, -0.610607,
		0.194825, 0.784194, 0.589138,
		0.640343, -0.556673, 0.529222,
		41.828979, 27.473246, 30.887192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669090, 28.572287, 30.698830>,  <41.380737, 27.862917, 30.516737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669090, 28.572287, 30.698830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639229, 28.851227, 30.983961>,  <41.621311, 29.018591, 31.155041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639229, 28.851227, 30.983961>,  <41.669090, 28.572287, 30.698830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639229, 28.851227, 30.983961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544727, 0.570235, -0.614902,
		-0.835284, -0.434204, 0.337296,
		-0.074655, 0.697351, 0.712830,
		41.616833, 29.060432, 31.197811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933117, 28.825262, 30.886391>,  <41.669090, 28.572287, 30.698830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933117, 28.825262, 30.886391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174721, 29.140186, 30.935898>,  <41.319683, 29.329140, 30.965603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174721, 29.140186, 30.935898>,  <40.933117, 28.825262, 30.886391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174721, 29.140186, 30.935898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654728, 0.578730, -0.486214,
		-0.454429, 0.212642, 0.865030,
		0.604008, 0.787309, 0.123769,
		41.355923, 29.376379, 30.973028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458591, 29.294554, 31.074694>,  <40.933117, 28.825262, 30.886391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458591, 29.294554, 31.074694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772835, 29.513508, 30.959324>,  <40.961380, 29.644880, 30.890102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772835, 29.513508, 30.959324>,  <40.458591, 29.294554, 31.074694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772835, 29.513508, 30.959324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618498, 0.682150, -0.390040,
		-0.016756, 0.484807, 0.874461,
		0.785608, 0.547387, -0.288422,
		41.008518, 29.677725, 30.872797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305088, 29.897896, 31.314278>,  <40.458591, 29.294554, 31.074694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305088, 29.897896, 31.314278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589882, 29.998322, 31.051964>,  <40.760757, 30.058577, 30.894575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589882, 29.998322, 31.051964>,  <40.305088, 29.897896, 31.314278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589882, 29.998322, 31.051964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557370, 0.770096, -0.310307,
		0.427110, 0.586446, 0.688228,
		0.711980, 0.251063, -0.655783,
		40.803474, 30.073641, 30.855228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382233, 30.629625, 31.355349>,  <40.305088, 29.897896, 31.314278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382233, 30.629625, 31.355349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507362, 30.518051, 30.992176>,  <40.582439, 30.451107, 30.774273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507362, 30.518051, 30.992176>,  <40.382233, 30.629625, 31.355349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507362, 30.518051, 30.992176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607773, 0.675798, -0.417024,
		0.729900, 0.682270, 0.041875,
		0.312822, -0.278936, -0.907930,
		40.601208, 30.434370, 30.719797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561996, 31.335751, 31.024593>,  <40.382233, 30.629625, 31.355349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561996, 31.335751, 31.024593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472374, 31.058266, 30.750788>,  <40.418598, 30.891775, 30.586504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472374, 31.058266, 30.750788>,  <40.561996, 31.335751, 31.024593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472374, 31.058266, 30.750788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568045, 0.663686, -0.486668,
		0.791911, 0.279794, -0.542764,
		-0.224059, -0.693712, -0.684516,
		40.405155, 30.850153, 30.545433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631306, 31.666975, 30.324070>,  <40.561996, 31.335751, 31.024593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631306, 31.666975, 30.324070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422974, 31.330837, 30.263998>,  <40.297974, 31.129154, 30.227955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422974, 31.330837, 30.263998>,  <40.631306, 31.666975, 30.324070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422974, 31.330837, 30.263998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645180, 0.502696, -0.575359,
		0.558996, -0.202771, -0.803994,
		-0.520831, -0.840345, -0.150182,
		40.266724, 31.078733, 30.218943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440788, 31.686214, 29.605776>,  <40.631306, 31.666975, 30.324070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440788, 31.686214, 29.605776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177837, 31.434145, 29.771055>,  <40.020065, 31.282904, 29.870222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177837, 31.434145, 29.771055>,  <40.440788, 31.686214, 29.605776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177837, 31.434145, 29.771055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729487, 0.394702, -0.558621,
		0.188938, -0.668650, -0.719173,
		-0.657382, -0.630173, 0.413197,
		39.980621, 31.245092, 29.895014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065594, 31.431181, 29.026236>,  <40.440788, 31.686214, 29.605776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065594, 31.431181, 29.026236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847610, 31.407150, 29.360760>,  <39.716820, 31.392731, 29.561474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847610, 31.407150, 29.360760>,  <40.065594, 31.431181, 29.026236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847610, 31.407150, 29.360760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768020, 0.435951, -0.469140,
		-0.336404, -0.897963, -0.283716,
		-0.544957, -0.060079, 0.836309,
		39.684124, 31.389126, 29.611652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428509, 31.350933, 28.604187>,  <40.065594, 31.431181, 29.026236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428509, 31.350933, 28.604187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352417, 31.396494, 28.994230>,  <39.306763, 31.423830, 29.228256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352417, 31.396494, 28.994230>,  <39.428509, 31.350933, 28.604187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352417, 31.396494, 28.994230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914371, 0.341036, -0.218219,
		-0.357404, -0.933124, 0.039277,
		-0.190230, 0.113906, 0.975109,
		39.295349, 31.430666, 29.286762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806923, 30.893372, 28.930487>,  <39.428509, 31.350933, 28.604187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806923, 30.893372, 28.930487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847115, 31.228348, 29.145370>,  <38.871231, 31.429335, 29.274302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847115, 31.228348, 29.145370>,  <38.806923, 30.893372, 28.930487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847115, 31.228348, 29.145370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976378, 0.186805, -0.108586,
		-0.191287, -0.513608, 0.836430,
		0.100479, 0.837443, 0.537209,
		38.877258, 31.479580, 29.306534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192810, 30.822454, 29.330357>,  <38.806923, 30.893372, 28.930487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192810, 30.822454, 29.330357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321522, 31.200863, 29.314857>,  <38.398746, 31.427908, 29.305559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321522, 31.200863, 29.314857>,  <38.192810, 30.822454, 29.330357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321522, 31.200863, 29.314857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850814, 0.270951, -0.450223,
		-0.415423, 0.177837, 0.892075,
		0.321775, 0.946023, -0.038747,
		38.418053, 31.484671, 29.303234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667587, 31.180149, 29.635870>,  <38.192810, 30.822454, 29.330357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667587, 31.180149, 29.635870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869408, 31.449747, 29.420034>,  <37.990501, 31.611506, 29.290533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869408, 31.449747, 29.420034>,  <37.667587, 31.180149, 29.635870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869408, 31.449747, 29.420034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829754, 0.205818, -0.518794,
		-0.238607, 0.709485, 0.663097,
		0.504554, 0.673995, -0.539589,
		38.020775, 31.651945, 29.258158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144539, 31.623230, 29.602987>,  <37.667587, 31.180149, 29.635870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144539, 31.623230, 29.602987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400871, 31.733805, 29.316515>,  <37.554672, 31.800150, 29.144630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400871, 31.733805, 29.316515>,  <37.144539, 31.623230, 29.602987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400871, 31.733805, 29.316515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766750, 0.276424, -0.579382,
		0.037808, 0.920420, 0.389100,
		0.640832, 0.276437, -0.716182,
		37.593121, 31.816736, 29.101660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976898, 32.340767, 29.393856>,  <37.144539, 31.623230, 29.602987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976898, 32.340767, 29.393856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171772, 32.145180, 29.104424>,  <37.288696, 32.027828, 28.930763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171772, 32.145180, 29.104424>,  <36.976898, 32.340767, 29.393856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171772, 32.145180, 29.104424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645030, 0.357083, -0.675594,
		0.588721, 0.795867, -0.141433,
		0.487180, -0.488965, -0.723581,
		37.317924, 31.998489, 28.887350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128899, 32.856232, 28.797279>,  <36.976898, 32.340767, 29.393856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128899, 32.856232, 28.797279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210320, 32.507362, 28.619347>,  <37.259171, 32.298038, 28.512587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210320, 32.507362, 28.619347>,  <37.128899, 32.856232, 28.797279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210320, 32.507362, 28.619347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550497, 0.273764, -0.788674,
		0.809642, 0.405415, -0.424404,
		0.203554, -0.872176, -0.444831,
		37.271385, 32.245708, 28.485897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411926, 32.997761, 28.162558>,  <37.128899, 32.856232, 28.797279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411926, 32.997761, 28.162558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265820, 32.625401, 28.162180>,  <37.178158, 32.401985, 28.161953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265820, 32.625401, 28.162180>,  <37.411926, 32.997761, 28.162558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265820, 32.625401, 28.162180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594253, 0.233950, -0.769500,
		0.716551, -0.280508, -0.638646,
		-0.365262, -0.930904, -0.000945,
		37.156242, 32.346130, 28.161896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296925, 32.822586, 27.467915>,  <37.411926, 32.997761, 28.162558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296925, 32.822586, 27.467915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051331, 32.578400, 27.668058>,  <36.903976, 32.431889, 27.788145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051331, 32.578400, 27.668058>,  <37.296925, 32.822586, 27.467915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051331, 32.578400, 27.668058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755456, 0.270802, -0.596618,
		0.228711, -0.744316, -0.627443,
		-0.613984, -0.610459, 0.500363,
		36.867134, 32.395260, 27.818167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876366, 32.692204, 26.937742>,  <37.296925, 32.822586, 27.467915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876366, 32.692204, 26.937742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689369, 32.541641, 27.257687>,  <36.577171, 32.451305, 27.449654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689369, 32.541641, 27.257687>,  <36.876366, 32.692204, 26.937742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689369, 32.541641, 27.257687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881258, 0.269631, -0.388179,
		-0.069556, -0.886353, -0.457757,
		-0.467489, -0.376402, 0.799860,
		36.549122, 32.428722, 27.497644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369335, 32.137741, 26.704359>,  <36.876366, 32.692204, 26.937742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369335, 32.137741, 26.704359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229343, 32.277180, 27.052151>,  <36.145348, 32.360844, 27.260826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229343, 32.277180, 27.052151>,  <36.369335, 32.137741, 26.704359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229343, 32.277180, 27.052151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873097, 0.214942, -0.437608,
		-0.339436, -0.912295, 0.229131,
		-0.349978, 0.348594, 0.869482,
		36.124352, 32.381760, 27.312996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717609, 31.737795, 26.825394>,  <36.369335, 32.137741, 26.704359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717609, 31.737795, 26.825394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702122, 32.063938, 27.056458>,  <35.692829, 32.259624, 27.195097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702122, 32.063938, 27.056458>,  <35.717609, 31.737795, 26.825394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702122, 32.063938, 27.056458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856438, 0.270744, -0.439559,
		-0.514796, -0.511752, 0.687819,
		-0.038722, 0.815357, 0.577662,
		35.690506, 32.308544, 27.229755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968971, 31.880646, 26.936970>,  <35.717609, 31.737795, 26.825394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968971, 31.880646, 26.936970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148323, 32.225918, 27.029814>,  <35.255936, 32.433083, 27.085520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148323, 32.225918, 27.029814>,  <34.968971, 31.880646, 26.936970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148323, 32.225918, 27.029814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790875, 0.504120, -0.346958,
		-0.416498, -0.028000, 0.908705,
		0.448381, 0.863180, 0.232110,
		35.282837, 32.484871, 27.099447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541862, 32.184673, 27.444624>,  <34.968971, 31.880646, 26.936970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541862, 32.184673, 27.444624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766121, 32.454121, 27.251995>,  <34.900677, 32.615791, 27.136417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766121, 32.454121, 27.251995>,  <34.541862, 32.184673, 27.444624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766121, 32.454121, 27.251995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827827, 0.469645, -0.306817,
		0.019489, 0.570673, 0.820946,
		0.560645, 0.673622, -0.481572,
		34.934315, 32.656208, 27.107523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155910, 32.750866, 27.581001>,  <34.541862, 32.184673, 27.444624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155910, 32.750866, 27.581001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387962, 32.866634, 27.276453>,  <34.527195, 32.936096, 27.093725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387962, 32.866634, 27.276453>,  <34.155910, 32.750866, 27.581001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387962, 32.866634, 27.276453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798125, 0.388614, -0.460408,
		0.162626, 0.874764, 0.456443,
		0.580129, 0.289425, -0.761370,
		34.562000, 32.953461, 27.048042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110378, 33.515327, 27.494751>,  <34.155910, 32.750866, 27.581001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110378, 33.515327, 27.494751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240166, 33.389587, 27.137897>,  <34.318039, 33.314144, 26.923786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240166, 33.389587, 27.137897>,  <34.110378, 33.515327, 27.494751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240166, 33.389587, 27.137897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882121, 0.239892, -0.405358,
		0.341439, 0.918498, -0.199453,
		0.324473, -0.314347, -0.892134,
		34.337509, 33.295284, 26.870256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040142, 33.995747, 27.006662>,  <34.110378, 33.515327, 27.494751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040142, 33.995747, 27.006662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015335, 33.656467, 26.796246>,  <34.000450, 33.452900, 26.669996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015335, 33.656467, 26.796246>,  <34.040142, 33.995747, 27.006662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015335, 33.656467, 26.796246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834114, 0.333478, -0.439370,
		0.548094, 0.411530, -0.728173,
		-0.062015, -0.848195, -0.526040,
		33.996731, 33.402008, 26.638433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652550, 34.250679, 26.416737>,  <34.040142, 33.995747, 27.006662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652550, 34.250679, 26.416737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662830, 33.853722, 26.368584>,  <33.668999, 33.615547, 26.339691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662830, 33.853722, 26.368584>,  <33.652550, 34.250679, 26.416737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662830, 33.853722, 26.368584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764740, 0.058036, -0.641720,
		0.643826, 0.108558, -0.757432,
		0.025706, -0.992395, -0.120384,
		33.670544, 33.556004, 26.332468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568188, 34.143105, 25.669958>,  <33.652550, 34.250679, 26.416737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568188, 34.143105, 25.669958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482727, 33.800690, 25.858236>,  <33.431450, 33.595242, 25.971203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482727, 33.800690, 25.858236>,  <33.568188, 34.143105, 25.669958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482727, 33.800690, 25.858236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756992, -0.159491, -0.633660,
		0.617509, -0.491695, -0.613938,
		-0.213650, -0.856037, 0.470696,
		33.418633, 33.543880, 25.999445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390217, 33.771191, 25.116949>,  <33.568188, 34.143105, 25.669958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390217, 33.771191, 25.116949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226738, 33.582535, 25.429493>,  <33.128651, 33.469341, 25.617020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226738, 33.582535, 25.429493>,  <33.390217, 33.771191, 25.116949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226738, 33.582535, 25.429493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868407, -0.062426, -0.491906,
		0.280779, -0.879579, -0.384061,
		-0.408695, -0.471638, 0.781361,
		33.104130, 33.441044, 25.663902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140942, 33.104019, 24.808731>,  <33.390217, 33.771191, 25.116949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140942, 33.104019, 24.808731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942200, 33.184662, 25.146368>,  <32.822956, 33.233047, 25.348949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942200, 33.184662, 25.146368>,  <33.140942, 33.104019, 24.808731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942200, 33.184662, 25.146368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867724, -0.099976, -0.486888,
		-0.013770, -0.974351, 0.224612,
		-0.496856, 0.201605, 0.844091,
		32.793144, 33.245144, 25.399595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667248, 32.617733, 24.770267>,  <33.140942, 33.104019, 24.808731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667248, 32.617733, 24.770267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532383, 32.896084, 25.023907>,  <32.451466, 33.063095, 25.176090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532383, 32.896084, 25.023907>,  <32.667248, 32.617733, 24.770267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532383, 32.896084, 25.023907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854906, 0.055775, -0.515775,
		-0.394282, -0.715994, 0.576103,
		-0.337160, 0.695875, 0.634099,
		32.431236, 33.104847, 25.214136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971851, 32.492283, 24.905117>,  <32.667248, 32.617733, 24.770267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971851, 32.492283, 24.905117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014702, 32.875145, 25.012733>,  <32.040413, 33.104862, 25.077303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014702, 32.875145, 25.012733>,  <31.971851, 32.492283, 24.905117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014702, 32.875145, 25.012733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741664, 0.257147, -0.619524,
		-0.662162, -0.133171, 0.737432,
		0.107126, 0.957152, 0.269042,
		32.046841, 33.162292, 25.093447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313881, 32.745907, 25.056524>,  <31.971851, 32.492283, 24.905117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313881, 32.745907, 25.056524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555387, 33.047390, 24.952682>,  <31.700291, 33.228279, 24.890377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555387, 33.047390, 24.952682>,  <31.313881, 32.745907, 25.056524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555387, 33.047390, 24.952682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680340, 0.317469, -0.660569,
		-0.415460, 0.575446, 0.704454,
		0.603764, 0.753708, -0.259603,
		31.736517, 33.273502, 24.874802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933846, 33.249126, 24.868124>,  <31.313881, 32.745907, 25.056524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933846, 33.249126, 24.868124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255058, 33.407875, 24.690300>,  <31.447786, 33.503124, 24.583607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255058, 33.407875, 24.690300>,  <30.933846, 33.249126, 24.868124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255058, 33.407875, 24.690300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581913, 0.361316, -0.728580,
		-0.128528, 0.843766, 0.521094,
		0.803030, 0.396875, -0.444559,
		31.495968, 33.526936, 24.556932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651272, 33.824280, 24.733446>,  <30.933846, 33.249126, 24.868124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651272, 33.824280, 24.733446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972775, 33.777454, 24.500114>,  <31.165676, 33.749359, 24.360115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972775, 33.777454, 24.500114>,  <30.651272, 33.824280, 24.733446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972775, 33.777454, 24.500114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558800, 0.188063, -0.807698,
		0.204256, 0.975155, 0.085741,
		0.803755, -0.117065, -0.583329,
		31.213902, 33.742336, 24.325115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721064, 34.502594, 24.334723>,  <30.651272, 33.824280, 24.733446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721064, 34.502594, 24.334723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922367, 34.209599, 24.151335>,  <31.043150, 34.033802, 24.041302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922367, 34.209599, 24.151335>,  <30.721064, 34.502594, 24.334723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922367, 34.209599, 24.151335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514367, 0.172405, -0.840062,
		0.694375, 0.658592, -0.290001,
		0.503260, -0.732484, -0.458471,
		31.073345, 33.989853, 24.013794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913557, 34.737297, 23.566792>,  <30.721064, 34.502594, 24.334723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913557, 34.737297, 23.566792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987322, 34.345467, 23.534750>,  <31.031580, 34.110367, 23.515526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987322, 34.345467, 23.534750>,  <30.913557, 34.737297, 23.566792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987322, 34.345467, 23.534750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384858, 0.003024, -0.922971,
		0.904366, 0.201034, -0.376442,
		0.184410, -0.979580, -0.080104,
		31.042645, 34.051594, 23.510719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340572, 34.546013, 22.926378>,  <30.913557, 34.737297, 23.566792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340572, 34.546013, 22.926378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116653, 34.227592, 23.018406>,  <30.982302, 34.036541, 23.073624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116653, 34.227592, 23.018406>,  <31.340572, 34.546013, 22.926378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116653, 34.227592, 23.018406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448223, 0.057375, -0.892079,
		0.696938, -0.602507, -0.388926,
		-0.559798, -0.796048, 0.230070,
		30.948713, 33.988777, 23.087427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283346, 34.224651, 22.348703>,  <31.340572, 34.546013, 22.926378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283346, 34.224651, 22.348703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014603, 34.009285, 22.552158>,  <30.853357, 33.880066, 22.674231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014603, 34.009285, 22.552158>,  <31.283346, 34.224651, 22.348703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014603, 34.009285, 22.552158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506679, -0.166804, -0.845844,
		0.540263, -0.826002, -0.160738,
		-0.671857, -0.538421, 0.508636,
		30.813046, 33.847759, 22.704750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222630, 33.436684, 22.075275>,  <31.283346, 34.224651, 22.348703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222630, 33.436684, 22.075275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880720, 33.562344, 22.240526>,  <30.675575, 33.637741, 22.339676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880720, 33.562344, 22.240526>,  <31.222630, 33.436684, 22.075275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880720, 33.562344, 22.240526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456450, -0.076185, -0.886482,
		-0.247012, -0.946313, 0.208513,
		-0.854774, 0.314147, 0.413126,
		30.624289, 33.656590, 22.364464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703449, 33.096260, 21.673326>,  <31.222630, 33.436684, 22.075275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703449, 33.096260, 21.673326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512331, 33.399582, 21.850723>,  <30.397659, 33.581573, 21.957161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512331, 33.399582, 21.850723>,  <30.703449, 33.096260, 21.673326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512331, 33.399582, 21.850723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509733, 0.171848, -0.842995,
		-0.715460, -0.628842, 0.304424,
		-0.477796, 0.758304, 0.443492,
		30.368992, 33.627071, 21.983770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125988, 33.108620, 21.347315>,  <30.703449, 33.096260, 21.673326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125988, 33.108620, 21.347315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073017, 33.456043, 21.538338>,  <30.041235, 33.664497, 21.652952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073017, 33.456043, 21.538338>,  <30.125988, 33.108620, 21.347315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073017, 33.456043, 21.538338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453827, 0.375202, -0.808248,
		-0.881194, -0.323765, 0.344489,
		-0.132429, 0.868562, 0.477560,
		30.033289, 33.716610, 21.681606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395412, 33.231869, 21.264936>,  <30.125988, 33.108620, 21.347315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395412, 33.231869, 21.264936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611996, 33.564793, 21.312401>,  <29.741945, 33.764545, 21.340879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611996, 33.564793, 21.312401>,  <29.395412, 33.231869, 21.264936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611996, 33.564793, 21.312401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581963, 0.472914, -0.661567,
		-0.606745, 0.289157, 0.740438,
		0.541460, 0.832310, 0.118659,
		29.774433, 33.814487, 21.347998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918936, 33.782917, 21.317747>,  <29.395412, 33.231869, 21.264936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918936, 33.782917, 21.317747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253012, 33.962536, 21.190744>,  <29.453457, 34.070309, 21.114542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253012, 33.962536, 21.190744>,  <28.918936, 33.782917, 21.317747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253012, 33.962536, 21.190744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491352, 0.868605, -0.064015,
		0.247043, 0.209473, 0.946092,
		0.835190, 0.449050, -0.317508,
		29.503569, 34.097252, 21.095491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790936, 34.466034, 21.584051>,  <28.918936, 33.782917, 21.317747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790936, 34.466034, 21.584051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048092, 34.476006, 21.277830>,  <29.202387, 34.481987, 21.094097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048092, 34.476006, 21.277830>,  <28.790936, 34.466034, 21.584051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048092, 34.476006, 21.277830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534426, 0.730587, -0.425007,
		0.548707, 0.682364, 0.483012,
		0.642892, 0.024929, -0.765551,
		29.240959, 34.483486, 21.048164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157112, 35.114803, 21.589727>,  <28.790936, 34.466034, 21.584051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157112, 35.114803, 21.589727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109486, 34.957333, 21.225126>,  <29.080910, 34.862850, 21.006365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109486, 34.957333, 21.225126>,  <29.157112, 35.114803, 21.589727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109486, 34.957333, 21.225126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488397, 0.822514, -0.291445,
		0.864460, 0.410474, -0.290206,
		-0.119068, -0.393678, -0.911504,
		29.073765, 34.839230, 20.951675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326757, 35.619198, 21.223812>,  <29.157112, 35.114803, 21.589727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326757, 35.619198, 21.223812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078253, 35.363682, 21.042273>,  <28.929150, 35.210373, 20.933350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078253, 35.363682, 21.042273>,  <29.326757, 35.619198, 21.223812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078253, 35.363682, 21.042273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524166, 0.769299, -0.365279,
		0.582483, 0.010958, -0.812770,
		-0.621260, -0.638795, -0.453847,
		28.891874, 35.172043, 20.906118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046755, 35.568607, 20.835644>,  <29.326757, 35.619198, 21.223812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046755, 35.568607, 20.835644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139688, 35.645752, 20.454315>,  <30.195450, 35.692039, 20.225517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139688, 35.645752, 20.454315>,  <30.046755, 35.568607, 20.835644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139688, 35.645752, 20.454315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605416, -0.738444, -0.296939,
		-0.761244, 0.646146, -0.054805,
		0.232336, 0.192863, -0.953322,
		30.209389, 35.703609, 20.168318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511595, 35.812294, 20.460434>,  <30.046755, 35.568607, 20.835644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511595, 35.812294, 20.460434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760851, 35.580975, 20.249811>,  <29.910404, 35.442181, 20.123438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760851, 35.580975, 20.249811>,  <29.511595, 35.812294, 20.460434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760851, 35.580975, 20.249811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724940, -0.679750, -0.111364,
		-0.293524, 0.451117, -0.842815,
		0.623141, -0.578302, -0.526556,
		29.947794, 35.407482, 20.091845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358786, 35.729431, 19.726728>,  <29.511595, 35.812294, 20.460434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358786, 35.729431, 19.726728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468578, 35.380314, 19.888165>,  <29.534454, 35.170841, 19.985025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468578, 35.380314, 19.888165>,  <29.358786, 35.729431, 19.726728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468578, 35.380314, 19.888165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832776, -0.425606, -0.354039,
		0.480774, -0.238923, -0.843666,
		0.274481, -0.872797, 0.403589,
		29.550922, 35.118473, 20.009241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340240, 35.312275, 19.247423>,  <29.358786, 35.729431, 19.726728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340240, 35.312275, 19.247423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248341, 35.146988, 19.599892>,  <29.193201, 35.047817, 19.811373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248341, 35.146988, 19.599892>,  <29.340240, 35.312275, 19.247423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248341, 35.146988, 19.599892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900776, -0.252556, -0.353295,
		0.368533, -0.874909, -0.314192,
		-0.229750, -0.413218, 0.881173,
		29.179415, 35.023022, 19.864244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203093, 34.534340, 19.233248>,  <29.340240, 35.312275, 19.247423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203093, 34.534340, 19.233248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003008, 34.674545, 19.549963>,  <28.882957, 34.758667, 19.739992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003008, 34.674545, 19.549963>,  <29.203093, 34.534340, 19.233248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003008, 34.674545, 19.549963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834861, -0.437868, -0.333585,
		0.229774, -0.827897, 0.511655,
		-0.500211, 0.350511, 0.791789,
		28.852945, 34.779697, 19.787500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948786, 34.551697, 18.989225>,  <29.203093, 34.534340, 19.233248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948786, 34.551697, 18.989225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067532, 34.929733, 19.043886>,  <30.138779, 35.156555, 19.076683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067532, 34.929733, 19.043886>,  <29.948786, 34.551697, 18.989225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067532, 34.929733, 19.043886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936138, -0.316273, 0.153674,
		0.188455, 0.082304, -0.978627,
		0.296866, 0.945091, 0.136651,
		30.156591, 35.213261, 19.084881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682537, 34.770115, 18.500086>,  <29.948786, 34.551697, 18.989225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682537, 34.770115, 18.500086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619644, 34.993900, 18.825609>,  <30.581909, 35.128170, 19.020924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619644, 34.993900, 18.825609>,  <30.682537, 34.770115, 18.500086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619644, 34.993900, 18.825609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952522, -0.131653, 0.274536,
		0.260732, 0.818334, -0.512199,
		-0.157230, 0.559461, 0.813807,
		30.572475, 35.161739, 19.069752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224009, 35.388439, 18.595055>,  <30.682537, 34.770115, 18.500086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224009, 35.388439, 18.595055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082977, 35.248077, 18.942055>,  <30.998358, 35.163860, 19.150255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082977, 35.248077, 18.942055>,  <31.224009, 35.388439, 18.595055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082977, 35.248077, 18.942055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924924, -0.271487, 0.266101,
		0.142140, 0.896194, 0.420277,
		-0.352578, -0.350901, 0.867501,
		30.977203, 35.142807, 19.202305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648373, 35.558578, 19.137754>,  <31.224009, 35.388439, 18.595055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648373, 35.558578, 19.137754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444332, 35.262508, 19.312994>,  <31.321907, 35.084866, 19.418137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444332, 35.262508, 19.312994>,  <31.648373, 35.558578, 19.137754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444332, 35.262508, 19.312994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856169, -0.388237, 0.340949,
		-0.082278, 0.549005, 0.831760,
		-0.510103, -0.740180, 0.438098,
		31.291302, 35.040455, 19.444424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968843, 35.522907, 19.822342>,  <31.648373, 35.558578, 19.137754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968843, 35.522907, 19.822342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779997, 35.181038, 19.735962>,  <31.666689, 34.975918, 19.684134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779997, 35.181038, 19.735962>,  <31.968843, 35.522907, 19.822342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779997, 35.181038, 19.735962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788812, -0.518951, 0.329340,
		-0.393547, -0.014858, 0.919184,
		-0.472118, -0.854675, -0.215952,
		31.638361, 34.924637, 19.671177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141060, 35.107903, 20.460938>,  <31.968843, 35.522907, 19.822342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141060, 35.107903, 20.460938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994623, 34.846947, 20.195496>,  <31.906761, 34.690372, 20.036230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994623, 34.846947, 20.195496>,  <32.141060, 35.107903, 20.460938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994623, 34.846947, 20.195496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712336, -0.655318, 0.251269,
		-0.598795, -0.380721, 0.704625,
		-0.366090, -0.652388, -0.663602,
		31.884796, 34.651230, 19.996414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060905, 34.567509, 20.755787>,  <32.141060, 35.107903, 20.460938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060905, 34.567509, 20.755787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105434, 34.440418, 20.379137>,  <32.132153, 34.364166, 20.153147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105434, 34.440418, 20.379137>,  <32.060905, 34.567509, 20.755787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105434, 34.440418, 20.379137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711983, -0.635537, 0.298617,
		-0.693316, -0.703665, 0.155463,
		0.111324, -0.317723, -0.941626,
		32.138832, 34.345100, 20.096649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129440, 33.896759, 20.815439>,  <32.060905, 34.567509, 20.755787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129440, 33.896759, 20.815439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281254, 33.952568, 20.449600>,  <32.372341, 33.986053, 20.230097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281254, 33.952568, 20.449600>,  <32.129440, 33.896759, 20.815439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281254, 33.952568, 20.449600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668799, -0.724439, 0.167021,
		-0.639269, -0.675073, -0.368256,
		0.379530, 0.139518, -0.914599,
		32.395111, 33.994423, 20.175220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297924, 33.221775, 20.558027>,  <32.129440, 33.896759, 20.815439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297924, 33.221775, 20.558027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502388, 33.468071, 20.318169>,  <32.625065, 33.615849, 20.174253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502388, 33.468071, 20.318169>,  <32.297924, 33.221775, 20.558027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502388, 33.468071, 20.318169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794460, -0.604702, 0.056294,
		-0.327944, -0.505170, -0.798284,
		0.511161, 0.615743, -0.599645,
		32.655735, 33.652794, 20.138275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673519, 32.852352, 19.929857>,  <32.297924, 33.221775, 20.558027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673519, 32.852352, 19.929857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856106, 33.196400, 20.020918>,  <32.965660, 33.402828, 20.075554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856106, 33.196400, 20.020918>,  <32.673519, 32.852352, 19.929857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856106, 33.196400, 20.020918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887445, -0.458498, -0.047130,
		0.063840, 0.223541, -0.972602,
		0.456471, 0.860122, 0.227651,
		32.993046, 33.454437, 20.089212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180313, 32.866989, 19.495890>,  <32.673519, 32.852352, 19.929857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180313, 32.866989, 19.495890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294712, 33.128475, 19.776134>,  <33.363354, 33.285366, 19.944281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294712, 33.128475, 19.776134>,  <33.180313, 32.866989, 19.495890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294712, 33.128475, 19.776134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848752, -0.512195, 0.131439,
		0.444773, 0.557054, -0.701332,
		0.286000, 0.653718, 0.700612,
		33.380512, 33.324589, 19.986319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973209, 32.980808, 19.507103>,  <33.180313, 32.866989, 19.495890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973209, 32.980808, 19.507103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905289, 33.149979, 19.863148>,  <33.864536, 33.251480, 20.076775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905289, 33.149979, 19.863148>,  <33.973209, 32.980808, 19.507103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905289, 33.149979, 19.863148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875261, -0.350347, 0.333429,
		0.452865, 0.835697, -0.310684,
		-0.169798, 0.422928, 0.890113,
		33.854351, 33.276855, 20.130182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683407, 33.075653, 19.718626>,  <33.973209, 32.980808, 19.507103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683407, 33.075653, 19.718626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480103, 33.147762, 20.055475>,  <34.358120, 33.191029, 20.257584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480103, 33.147762, 20.055475>,  <34.683407, 33.075653, 19.718626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480103, 33.147762, 20.055475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768491, -0.346408, 0.537981,
		0.388702, 0.920599, 0.037526,
		-0.508264, 0.180276, 0.842121,
		34.327621, 33.201843, 20.308111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038532, 33.501968, 20.019321>,  <34.683407, 33.075653, 19.718626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038532, 33.501968, 20.019321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833782, 33.343475, 20.324209>,  <34.710930, 33.248379, 20.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833782, 33.343475, 20.324209>,  <35.038532, 33.501968, 20.019321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833782, 33.343475, 20.324209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847094, -0.085249, 0.524561,
		-0.142870, 0.914183, 0.379285,
		-0.511878, -0.396234, 0.762220,
		34.680218, 33.224606, 20.552876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406712, 33.727940, 20.601002>,  <35.038532, 33.501968, 20.019321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406712, 33.727940, 20.601002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185001, 33.416740, 20.719320>,  <35.051975, 33.230019, 20.790312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185001, 33.416740, 20.719320>,  <35.406712, 33.727940, 20.601002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185001, 33.416740, 20.719320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683353, -0.222465, 0.695369,
		-0.475194, 0.587557, 0.654956,
		-0.554274, -0.778001, 0.295795,
		35.018719, 33.183338, 20.808060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252129, 33.738014, 21.376289>,  <35.406712, 33.727940, 20.601002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252129, 33.738014, 21.376289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195530, 33.357712, 21.265985>,  <35.161572, 33.129532, 21.199804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195530, 33.357712, 21.265985>,  <35.252129, 33.738014, 21.376289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195530, 33.357712, 21.265985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621173, -0.302170, 0.723076,
		-0.770794, -0.068979, 0.633340,
		-0.141499, -0.950755, -0.275758,
		35.153080, 33.072487, 21.183258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086697, 33.396053, 21.919823>,  <35.252129, 33.738014, 21.376289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086697, 33.396053, 21.919823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229145, 33.108440, 21.681103>,  <35.314613, 32.935875, 21.537870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229145, 33.108440, 21.681103>,  <35.086697, 33.396053, 21.919823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229145, 33.108440, 21.681103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645101, -0.272878, 0.713710,
		-0.676033, -0.639165, 0.366669,
		0.356123, -0.719031, -0.596801,
		35.335983, 32.892731, 21.502062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004780, 32.733776, 22.303652>,  <35.086697, 33.396053, 21.919823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004780, 32.733776, 22.303652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300831, 32.696686, 22.037233>,  <35.478462, 32.674431, 21.877382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300831, 32.696686, 22.037233>,  <35.004780, 32.733776, 22.303652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300831, 32.696686, 22.037233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607059, -0.333963, 0.721074,
		-0.289300, -0.938013, -0.190882,
		0.740125, -0.092730, -0.666045,
		35.522869, 32.668865, 21.837420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275902, 32.075871, 22.377483>,  <35.004780, 32.733776, 22.303652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275902, 32.075871, 22.377483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565498, 32.272362, 22.183771>,  <35.739258, 32.390259, 22.067545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565498, 32.272362, 22.183771>,  <35.275902, 32.075871, 22.377483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565498, 32.272362, 22.183771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680493, -0.393628, 0.618051,
		0.112981, -0.777013, -0.619263,
		0.723993, 0.491232, -0.484279,
		35.782696, 32.419731, 22.038486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769535, 31.537786, 22.360136>,  <35.275902, 32.075871, 22.377483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769535, 31.537786, 22.360136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949947, 31.893560, 22.330532>,  <36.058193, 32.107025, 22.312771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949947, 31.893560, 22.330532>,  <35.769535, 31.537786, 22.360136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949947, 31.893560, 22.330532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672514, -0.284165, 0.683356,
		0.586771, -0.357983, -0.726324,
		0.451026, 0.889437, -0.074009,
		36.085255, 32.160393, 22.308329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431370, 31.304863, 22.303259>,  <35.769535, 31.537786, 22.360136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431370, 31.304863, 22.303259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448265, 31.693628, 22.395864>,  <36.458401, 31.926888, 22.451427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448265, 31.693628, 22.395864>,  <36.431370, 31.304863, 22.303259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448265, 31.693628, 22.395864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856812, -0.154422, 0.491962,
		0.513896, 0.177587, -0.839270,
		0.042235, 0.971914, 0.231516,
		36.460938, 31.985203, 22.465319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148312, 31.532110, 22.127998>,  <36.431370, 31.304863, 22.303259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148312, 31.532110, 22.127998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986774, 31.764549, 22.410625>,  <36.889851, 31.904013, 22.580202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986774, 31.764549, 22.410625>,  <37.148312, 31.532110, 22.127998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986774, 31.764549, 22.410625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788679, -0.170224, 0.590770,
		0.463571, 0.795831, -0.389557,
		-0.403842, 0.581099, 0.706566,
		36.865623, 31.938879, 22.622595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833870, 31.912861, 22.434444>,  <37.148312, 31.532110, 22.127998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833870, 31.912861, 22.434444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527061, 32.036926, 22.659117>,  <37.342976, 32.111366, 22.793921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527061, 32.036926, 22.659117>,  <37.833870, 31.912861, 22.434444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527061, 32.036926, 22.659117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625956, 0.169430, 0.761231,
		0.140941, 0.935463, -0.324105,
		-0.767017, 0.310164, 0.561679,
		37.296955, 32.129974, 22.827621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073124, 32.533562, 22.706604>,  <37.833870, 31.912861, 22.434444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073124, 32.533562, 22.706604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793499, 32.379311, 22.947468>,  <37.625725, 32.286758, 23.091986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793499, 32.379311, 22.947468>,  <38.073124, 32.533562, 22.706604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793499, 32.379311, 22.947468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566115, 0.215972, 0.795531,
		-0.436829, 0.897021, 0.067332,
		-0.699067, -0.385629, 0.602160,
		37.583778, 32.263622, 23.128117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099781, 33.024033, 23.276453>,  <38.073124, 32.533562, 22.706604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099781, 33.024033, 23.276453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928864, 32.686451, 23.406168>,  <37.826313, 32.483902, 23.483997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928864, 32.686451, 23.406168>,  <38.099781, 33.024033, 23.276453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928864, 32.686451, 23.406168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553867, 0.039150, 0.831684,
		-0.714598, 0.534988, 0.450709,
		-0.427295, -0.843952, 0.324289,
		37.800674, 32.433266, 23.503454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853657, 33.143341, 23.971016>,  <38.099781, 33.024033, 23.276453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853657, 33.143341, 23.971016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905106, 32.752110, 23.905521>,  <37.935974, 32.517368, 23.866224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905106, 32.752110, 23.905521>,  <37.853657, 33.143341, 23.971016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905106, 32.752110, 23.905521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453682, -0.088784, 0.886730,
		-0.881833, -0.188335, 0.432320,
		0.128619, -0.978084, -0.163737,
		37.943691, 32.458683, 23.856400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818821, 32.865715, 24.643820>,  <37.853657, 33.143341, 23.971016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818821, 32.865715, 24.643820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991333, 32.579151, 24.424456>,  <38.094841, 32.407211, 24.292837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991333, 32.579151, 24.424456>,  <37.818821, 32.865715, 24.643820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991333, 32.579151, 24.424456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593821, -0.232228, 0.770355,
		-0.679248, -0.657894, 0.325265,
		0.431277, -0.716411, -0.548411,
		38.120716, 32.364227, 24.259932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909134, 32.351570, 25.142260>,  <37.818821, 32.865715, 24.643820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909134, 32.351570, 25.142260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139328, 32.223152, 24.841396>,  <38.277447, 32.146099, 24.660879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139328, 32.223152, 24.841396>,  <37.909134, 32.351570, 25.142260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139328, 32.223152, 24.841396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569259, -0.503070, 0.650280,
		-0.587159, -0.802402, -0.106751,
		0.575489, -0.321049, -0.752157,
		38.311974, 32.126839, 24.615749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053478, 31.629593, 25.236258>,  <37.909134, 32.351570, 25.142260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053478, 31.629593, 25.236258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356468, 31.787643, 25.028370>,  <38.538261, 31.882473, 24.903637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356468, 31.787643, 25.028370>,  <38.053478, 31.629593, 25.236258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356468, 31.787643, 25.028370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651923, -0.415072, 0.634596,
		0.035026, -0.819506, -0.571999,
		0.757476, 0.395127, -0.519717,
		38.583710, 31.906181, 24.872456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606537, 31.055134, 25.188671>,  <38.053478, 31.629593, 25.236258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606537, 31.055134, 25.188671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784393, 31.408869, 25.131752>,  <38.891106, 31.621109, 25.097601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784393, 31.408869, 25.131752>,  <38.606537, 31.055134, 25.188671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784393, 31.408869, 25.131752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752078, -0.282311, 0.595550,
		0.486495, -0.371822, -0.790615,
		0.444638, 0.884336, -0.142296,
		38.917786, 31.674170, 25.089064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289494, 30.843256, 25.192249>,  <38.606537, 31.055134, 25.188671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289494, 30.843256, 25.192249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362129, 31.236578, 25.196939>,  <39.405712, 31.472570, 25.199753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362129, 31.236578, 25.196939>,  <39.289494, 30.843256, 25.192249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362129, 31.236578, 25.196939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628159, -0.125163, 0.767952,
		0.756598, -0.132090, -0.640400,
		0.181593, 0.983304, 0.011725,
		39.416607, 31.531569, 25.200457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064014, 31.013857, 25.111958>,  <39.289494, 30.843256, 25.192249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064014, 31.013857, 25.111958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925949, 31.354597, 25.269545>,  <39.843109, 31.559042, 25.364098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925949, 31.354597, 25.269545>,  <40.064014, 31.013857, 25.111958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925949, 31.354597, 25.269545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701742, -0.044503, 0.711040,
		0.623233, 0.521890, -0.582419,
		-0.345165, 0.851851, 0.393968,
		39.822399, 31.610153, 25.387735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659557, 31.344105, 25.381762>,  <40.064014, 31.013857, 25.111958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659557, 31.344105, 25.381762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390408, 31.542831, 25.601002>,  <40.228916, 31.662067, 25.732546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390408, 31.542831, 25.601002>,  <40.659557, 31.344105, 25.381762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390408, 31.542831, 25.601002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597600, -0.071652, 0.798587,
		0.436023, 0.864893, -0.248685,
		-0.672873, 0.496816, 0.548102,
		40.188545, 31.691875, 25.765432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971184, 31.798723, 25.751736>,  <40.659557, 31.344105, 25.381762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971184, 31.798723, 25.751736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643772, 31.745153, 25.975189>,  <40.447323, 31.713011, 26.109261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643772, 31.745153, 25.975189>,  <40.971184, 31.798723, 25.751736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643772, 31.745153, 25.975189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568425, -0.048223, 0.821321,
		-0.083055, 0.989818, 0.115598,
		-0.818532, -0.133924, 0.558632,
		40.398212, 31.704977, 26.142778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121071, 32.130253, 26.383198>,  <40.971184, 31.798723, 25.751736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121071, 32.130253, 26.383198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841000, 31.863506, 26.485207>,  <40.672955, 31.703459, 26.546412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841000, 31.863506, 26.485207>,  <41.121071, 32.130253, 26.383198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841000, 31.863506, 26.485207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495852, -0.197206, 0.845719,
		-0.513690, 0.718609, 0.468747,
		-0.700181, -0.666867, 0.255021,
		40.630947, 31.663446, 26.561712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888458, 32.317699, 27.096313>,  <41.121071, 32.130253, 26.383198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888458, 32.317699, 27.096313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792278, 31.932562, 27.047146>,  <40.734570, 31.701479, 27.017645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792278, 31.932562, 27.047146>,  <40.888458, 32.317699, 27.096313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792278, 31.932562, 27.047146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480781, -0.228148, 0.846639,
		-0.843229, 0.144475, 0.517776,
		-0.240448, -0.962848, -0.122920,
		40.720142, 31.643707, 27.010269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550564, 32.174732, 27.707378>,  <40.888458, 32.317699, 27.096313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550564, 32.174732, 27.707378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657063, 31.818794, 27.559164>,  <40.720963, 31.605232, 27.470236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657063, 31.818794, 27.559164>,  <40.550564, 32.174732, 27.707378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657063, 31.818794, 27.559164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375101, -0.258461, 0.890223,
		-0.887926, -0.376007, 0.264966,
		0.266247, -0.889841, -0.370534,
		40.736938, 31.551842, 27.448004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421867, 31.696507, 28.243525>,  <40.550564, 32.174732, 27.707378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421867, 31.696507, 28.243525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687622, 31.512096, 28.008221>,  <40.847073, 31.401451, 27.867039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687622, 31.512096, 28.008221>,  <40.421867, 31.696507, 28.243525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687622, 31.512096, 28.008221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565426, -0.204673, 0.799001,
		-0.488761, -0.863461, 0.124694,
		0.664384, -0.461026, -0.588259,
		40.886936, 31.373789, 27.831743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523254, 31.059883, 28.616039>,  <40.421867, 31.696507, 28.243525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523254, 31.059883, 28.616039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830669, 31.103741, 28.363905>,  <41.015118, 31.130054, 28.212624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830669, 31.103741, 28.363905>,  <40.523254, 31.059883, 28.616039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830669, 31.103741, 28.363905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638192, -0.201190, 0.743124,
		-0.045337, -0.973396, -0.224597,
		0.768541, 0.109646, -0.630335,
		41.061234, 31.136635, 28.174805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915817, 30.396391, 28.721760>,  <40.523254, 31.059883, 28.616039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915817, 30.396391, 28.721760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176949, 30.636690, 28.537186>,  <41.333626, 30.780869, 28.426441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176949, 30.636690, 28.537186>,  <40.915817, 30.396391, 28.721760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176949, 30.636690, 28.537186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687999, -0.215324, 0.693032,
		0.316978, -0.769896, -0.553882,
		0.652826, 0.600746, -0.461435,
		41.372795, 30.816914, 28.398756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512554, 29.967600, 28.629215>,  <40.915817, 30.396391, 28.721760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512554, 29.967600, 28.629215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591175, 30.359716, 28.621237>,  <41.638348, 30.594986, 28.616449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591175, 30.359716, 28.621237>,  <41.512554, 29.967600, 28.629215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591175, 30.359716, 28.621237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795499, -0.147538, 0.587719,
		0.573193, -0.131384, -0.808819,
		0.196549, 0.980291, -0.019948,
		41.650139, 30.653803, 28.615252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150421, 29.928102, 28.548872>,  <41.512554, 29.967600, 28.629215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150421, 29.928102, 28.548872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115971, 30.303755, 28.681910>,  <42.095299, 30.529146, 28.761732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115971, 30.303755, 28.681910>,  <42.150421, 29.928102, 28.548872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115971, 30.303755, 28.681910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805794, -0.130657, 0.577602,
		0.585899, 0.317749, -0.745492,
		-0.086129, 0.939129, 0.332592,
		42.090134, 30.585493, 28.781687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172626, 29.794455, 27.813190>,  <42.150421, 29.928102, 28.548872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172626, 29.794455, 27.813190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203510, 29.414541, 27.691895>,  <42.222042, 29.186594, 27.619118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203510, 29.414541, 27.691895>,  <42.172626, 29.794455, 27.813190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203510, 29.414541, 27.691895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074240, 0.297827, -0.951728,
		0.994247, 0.095994, -0.047517,
		0.077208, -0.949781, -0.303240,
		42.226673, 29.129606, 27.600922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560654, 29.832312, 27.156599>,  <42.172626, 29.794455, 27.813190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560654, 29.832312, 27.156599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410526, 29.461803, 27.142986>,  <42.320450, 29.239498, 27.134819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410526, 29.461803, 27.142986>,  <42.560654, 29.832312, 27.156599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410526, 29.461803, 27.142986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072388, 0.007311, -0.997350,
		0.924065, -0.376786, 0.064307,
		-0.375317, -0.926271, -0.034030,
		42.297932, 29.183922, 27.132778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626259, 29.601791, 26.459265>,  <42.560654, 29.832312, 27.156599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626259, 29.601791, 26.459265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338089, 29.351814, 26.579556>,  <42.165188, 29.201828, 26.651730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338089, 29.351814, 26.579556>,  <42.626259, 29.601791, 26.459265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338089, 29.351814, 26.579556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264209, -0.153606, -0.952155,
		0.641236, -0.765409, -0.054454,
		-0.720424, -0.624943, 0.300725,
		42.121964, 29.164331, 26.669773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714520, 28.907558, 25.963009>,  <42.626259, 29.601791, 26.459265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714520, 28.907558, 25.963009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353046, 28.940413, 26.131109>,  <42.136162, 28.960125, 26.231970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353046, 28.940413, 26.131109>,  <42.714520, 28.907558, 25.963009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353046, 28.940413, 26.131109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426151, -0.268450, -0.863904,
		0.041861, -0.959786, 0.277595,
		-0.903683, 0.082134, 0.420251,
		42.081940, 28.965054, 26.257185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322414, 28.278925, 25.726089>,  <42.714520, 28.907558, 25.963009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322414, 28.278925, 25.726089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063843, 28.560595, 25.843575>,  <41.908699, 28.729597, 25.914066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063843, 28.560595, 25.843575>,  <42.322414, 28.278925, 25.726089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063843, 28.560595, 25.843575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589870, -0.217085, -0.777770,
		-0.483927, -0.676025, 0.555703,
		-0.646427, 0.704177, 0.293713,
		41.869915, 28.771847, 25.931688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729568, 28.052809, 25.480429>,  <42.322414, 28.278925, 25.726089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729568, 28.052809, 25.480429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681816, 28.443666, 25.550783>,  <41.653164, 28.678181, 25.592997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681816, 28.443666, 25.550783>,  <41.729568, 28.052809, 25.480429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681816, 28.443666, 25.550783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703220, 0.041838, -0.709740,
		-0.700878, -0.208418, 0.682153,
		-0.119382, 0.977144, 0.175887,
		41.646000, 28.736811, 25.603550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990566, 28.119244, 25.578506>,  <41.729568, 28.052809, 25.480429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990566, 28.119244, 25.578506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156574, 28.457205, 25.443510>,  <41.256180, 28.659981, 25.362513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156574, 28.457205, 25.443510>,  <40.990566, 28.119244, 25.578506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156574, 28.457205, 25.443510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731193, 0.089003, -0.676339,
		-0.541403, 0.527463, 0.654725,
		0.415017, 0.844903, -0.337491,
		41.281078, 28.710676, 25.342262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324894, 28.497999, 25.368458>,  <40.990566, 28.119244, 25.578506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324894, 28.497999, 25.368458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627068, 28.663834, 25.165506>,  <40.808372, 28.763334, 25.043736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627068, 28.663834, 25.165506>,  <40.324894, 28.497999, 25.368458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627068, 28.663834, 25.165506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590834, 0.096280, -0.801027,
		-0.283245, 0.904902, 0.317685,
		0.755438, 0.414587, -0.507376,
		40.853699, 28.788210, 25.013294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027378, 29.191551, 25.051632>,  <40.324894, 28.497999, 25.368458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027378, 29.191551, 25.051632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346981, 29.097147, 24.830402>,  <40.538742, 29.040504, 24.697664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346981, 29.097147, 24.830402>,  <40.027378, 29.191551, 25.051632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346981, 29.097147, 24.830402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558982, 0.047522, -0.827817,
		0.221659, 0.970587, -0.093956,
		0.799003, -0.236013, -0.553075,
		40.586681, 29.026342, 24.664480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110428, 29.793228, 24.693394>,  <40.027378, 29.191551, 25.051632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110428, 29.793228, 24.693394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315479, 29.511450, 24.497038>,  <40.438511, 29.342382, 24.379225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315479, 29.511450, 24.497038>,  <40.110428, 29.793228, 24.693394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315479, 29.511450, 24.497038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649836, 0.055362, -0.758055,
		0.561184, 0.707597, -0.429393,
		0.512626, -0.704444, -0.490891,
		40.469269, 29.300117, 24.349771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240726, 30.100107, 24.066793>,  <40.110428, 29.793228, 24.693394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240726, 30.100107, 24.066793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271313, 29.715899, 23.959795>,  <40.289665, 29.485374, 23.895596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271313, 29.715899, 23.959795>,  <40.240726, 30.100107, 24.066793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271313, 29.715899, 23.959795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681782, 0.145393, -0.716962,
		0.727548, 0.237198, -0.643747,
		0.076466, -0.960519, -0.267498,
		40.294254, 29.427742, 23.879545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116558, 30.141397, 23.334715>,  <40.240726, 30.100107, 24.066793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116558, 30.141397, 23.334715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073185, 29.753986, 23.424332>,  <40.047161, 29.521540, 23.478102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073185, 29.753986, 23.424332>,  <40.116558, 30.141397, 23.334715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073185, 29.753986, 23.424332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653545, -0.100371, -0.750203,
		0.749081, -0.227768, -0.622093,
		-0.108433, -0.968528, 0.224042,
		40.040657, 29.463428, 23.491545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251373, 29.826033, 22.636181>,  <40.116558, 30.141397, 23.334715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251373, 29.826033, 22.636181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031738, 29.582354, 22.865051>,  <39.899956, 29.436146, 23.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031738, 29.582354, 22.865051>,  <40.251373, 29.826033, 22.636181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031738, 29.582354, 22.865051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731570, 0.019311, -0.681492,
		0.404113, -0.792785, -0.456273,
		-0.549088, -0.609196, 0.572174,
		39.867012, 29.399595, 23.036703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933460, 29.574837, 22.132870>,  <40.251373, 29.826033, 22.636181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933460, 29.574837, 22.132870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718925, 29.469032, 22.453465>,  <39.590206, 29.405550, 22.645821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718925, 29.469032, 22.453465>,  <39.933460, 29.574837, 22.132870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718925, 29.469032, 22.453465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824859, -0.036856, -0.564136,
		0.178761, -0.963677, -0.198420,
		-0.536332, -0.264514, 0.801486,
		39.558025, 29.389679, 22.693911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591267, 28.937737, 21.960993>,  <39.933460, 29.574837, 22.132870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591267, 28.937737, 21.960993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398315, 29.129358, 22.254337>,  <39.282547, 29.244331, 22.430344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398315, 29.129358, 22.254337>,  <39.591267, 28.937737, 21.960993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398315, 29.129358, 22.254337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838656, -0.010839, -0.544554,
		-0.252923, -0.877717, 0.406992,
		-0.482376, 0.479056, 0.733362,
		39.253601, 29.273075, 22.474346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889786, 28.652576, 21.895201>,  <39.591267, 28.937737, 21.960993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889786, 28.652576, 21.895201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865536, 28.983063, 22.119234>,  <38.850986, 29.181355, 22.253654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865536, 28.983063, 22.119234>,  <38.889786, 28.652576, 21.895201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865536, 28.983063, 22.119234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775574, 0.314228, -0.547490,
		-0.628338, -0.467580, 0.621739,
		-0.060628, 0.826214, 0.560085,
		38.847347, 29.230927, 22.287260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263813, 28.696550, 22.198183>,  <38.889786, 28.652576, 21.895201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263813, 28.696550, 22.198183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391769, 29.075293, 22.184725>,  <38.468544, 29.302538, 22.176651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391769, 29.075293, 22.184725>,  <38.263813, 28.696550, 22.198183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391769, 29.075293, 22.184725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810571, 0.255117, -0.527153,
		-0.490555, 0.195903, 0.849104,
		0.319892, 0.946856, -0.033644,
		38.487736, 29.359350, 22.174631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721626, 29.013271, 22.422272>,  <38.263813, 28.696550, 22.198183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721626, 29.013271, 22.422272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939693, 29.265921, 22.201786>,  <38.070534, 29.417511, 22.069494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939693, 29.265921, 22.201786>,  <37.721626, 29.013271, 22.422272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939693, 29.265921, 22.201786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824962, 0.287276, -0.486735,
		-0.149082, 0.720086, 0.677680,
		0.545172, 0.631624, -0.551215,
		38.103245, 29.455408, 22.036421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357616, 29.551426, 22.428778>,  <37.721626, 29.013271, 22.422272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357616, 29.551426, 22.428778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602802, 29.659740, 22.131872>,  <37.749912, 29.724730, 21.953730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602802, 29.659740, 22.131872>,  <37.357616, 29.551426, 22.428778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602802, 29.659740, 22.131872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766104, 0.433520, -0.474495,
		0.193299, 0.859497, 0.473182,
		0.612960, 0.270787, -0.742262,
		37.786690, 29.740976, 21.909193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142200, 30.195395, 22.311535>,  <37.357616, 29.551426, 22.428778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142200, 30.195395, 22.311535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340752, 30.072767, 21.986666>,  <37.459881, 29.999191, 21.791744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340752, 30.072767, 21.986666>,  <37.142200, 30.195395, 22.311535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340752, 30.072767, 21.986666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710718, 0.393715, -0.582983,
		0.498490, 0.866605, -0.022454,
		0.496375, -0.306569, -0.812174,
		37.489666, 29.980797, 21.743013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010738, 30.745190, 21.806311>,  <37.142200, 30.195395, 22.311535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010738, 30.745190, 21.806311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145107, 30.436584, 21.590191>,  <37.225731, 30.251421, 21.460520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145107, 30.436584, 21.590191>,  <37.010738, 30.745190, 21.806311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145107, 30.436584, 21.590191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670372, 0.207107, -0.712536,
		0.661630, 0.601560, -0.447628,
		0.335927, -0.771513, -0.540297,
		37.245884, 30.205132, 21.428102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023018, 31.085306, 21.054701>,  <37.010738, 30.745190, 21.806311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023018, 31.085306, 21.054701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034004, 30.686390, 21.027391>,  <37.040596, 30.447041, 21.011005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034004, 30.686390, 21.027391>,  <37.023018, 31.085306, 21.054701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034004, 30.686390, 21.027391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775434, 0.021848, -0.631050,
		0.630831, 0.070271, -0.772732,
		0.027462, -0.997289, -0.068272,
		37.042244, 30.387203, 21.006910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117638, 31.005604, 20.388996>,  <37.023018, 31.085306, 21.054701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117638, 31.005604, 20.388996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967804, 30.673336, 20.553764>,  <36.877903, 30.473976, 20.652626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967804, 30.673336, 20.553764>,  <37.117638, 31.005604, 20.388996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967804, 30.673336, 20.553764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801266, 0.066464, -0.594605,
		0.466542, -0.552786, -0.690483,
		-0.374582, -0.830668, 0.411921,
		36.855431, 30.424135, 20.677341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937828, 30.490395, 19.810032>,  <37.117638, 31.005604, 20.388996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937828, 30.490395, 19.810032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726059, 30.390331, 20.134285>,  <36.598995, 30.330294, 20.328836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726059, 30.390331, 20.134285>,  <36.937828, 30.490395, 19.810032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726059, 30.390331, 20.134285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835372, -0.012810, -0.549536,
		0.147857, -0.968120, -0.202195,
		-0.529427, -0.250160, 0.810634,
		36.567230, 30.315285, 20.377476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326977, 30.103909, 19.599787>,  <36.937828, 30.490395, 19.810032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326977, 30.103909, 19.599787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222404, 30.205666, 19.972225>,  <36.159660, 30.266720, 20.195688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222404, 30.205666, 19.972225>,  <36.326977, 30.103909, 19.599787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222404, 30.205666, 19.972225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964046, -0.021215, -0.264886,
		-0.047633, -0.966868, 0.250794,
		-0.261431, 0.254395, 0.931095,
		36.143974, 30.281984, 20.251554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814220, 29.706030, 19.749678>,  <36.326977, 30.103909, 19.599787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814220, 29.706030, 19.749678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764187, 30.014585, 19.999258>,  <35.734169, 30.199718, 20.149006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764187, 30.014585, 19.999258>,  <35.814220, 29.706030, 19.749678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764187, 30.014585, 19.999258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980105, 0.001616, -0.198474,
		-0.154108, -0.636364, 0.755838,
		-0.125080, 0.771387, 0.623953,
		35.726662, 30.246002, 20.186443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254303, 29.506315, 20.292145>,  <35.814220, 29.706030, 19.749678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254303, 29.506315, 20.292145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291145, 29.903782, 20.266397>,  <35.313251, 30.142262, 20.250948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291145, 29.903782, 20.266397>,  <35.254303, 29.506315, 20.292145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291145, 29.903782, 20.266397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993034, 0.086888, -0.079590,
		-0.073493, 0.071252, 0.994747,
		0.092103, 0.993667, -0.064369,
		35.318775, 30.201881, 20.247087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744656, 29.734705, 20.835785>,  <35.254303, 29.506315, 20.292145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744656, 29.734705, 20.835785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794094, 30.032831, 20.573723>,  <34.823757, 30.211708, 20.416487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794094, 30.032831, 20.573723>,  <34.744656, 29.734705, 20.835785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794094, 30.032831, 20.573723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989307, 0.144063, -0.022742,
		0.077433, 0.650959, 0.755153,
		0.123594, 0.745318, -0.655154,
		34.831173, 30.256426, 20.377176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332447, 30.359568, 21.168743>,  <34.744656, 29.734705, 20.835785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332447, 30.359568, 21.168743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409645, 30.425371, 20.781818>,  <34.455963, 30.464853, 20.549664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409645, 30.425371, 20.781818>,  <34.332447, 30.359568, 21.168743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409645, 30.425371, 20.781818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928815, 0.348442, -0.126059,
		0.316314, 0.922781, 0.220047,
		0.192999, 0.164509, -0.967310,
		34.467545, 30.474724, 20.491625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997063, 31.010178, 21.037365>,  <34.332447, 30.359568, 21.168743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997063, 31.010178, 21.037365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022945, 30.826561, 20.682943>,  <34.038475, 30.716391, 20.470289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022945, 30.826561, 20.682943>,  <33.997063, 31.010178, 21.037365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022945, 30.826561, 20.682943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886469, 0.381295, -0.262274,
		0.458243, 0.802432, -0.382252,
		0.064706, -0.459040, -0.886056,
		34.042358, 30.688848, 20.417126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932442, 31.586033, 20.450047>,  <33.997063, 31.010178, 21.037365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932442, 31.586033, 20.450047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841068, 31.223822, 20.307032>,  <33.786243, 31.006495, 20.221222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841068, 31.223822, 20.307032>,  <33.932442, 31.586033, 20.450047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841068, 31.223822, 20.307032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801562, 0.383371, -0.458831,
		0.552555, 0.181775, -0.813413,
		-0.228434, -0.905530, -0.357538,
		33.772537, 30.952162, 20.199770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656891, 31.829473, 19.865835>,  <33.932442, 31.586033, 20.450047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656891, 31.829473, 19.865835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519913, 31.454048, 19.882919>,  <33.437725, 31.228792, 19.893169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519913, 31.454048, 19.882919>,  <33.656891, 31.829473, 19.865835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519913, 31.454048, 19.882919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805654, 0.269960, -0.527298,
		0.483374, -0.214981, -0.848606,
		-0.342449, -0.938565, 0.042709,
		33.417179, 31.172478, 19.895733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391911, 31.758162, 19.198626>,  <33.656891, 31.829473, 19.865835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391911, 31.758162, 19.198626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253223, 31.471786, 19.441021>,  <33.170010, 31.299961, 19.586458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253223, 31.471786, 19.441021>,  <33.391911, 31.758162, 19.198626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253223, 31.471786, 19.441021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915109, 0.116433, -0.386030,
		0.205816, -0.688387, -0.695530,
		-0.346721, -0.715937, 0.605986,
		33.149208, 31.257006, 19.622818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093590, 31.174017, 18.735641>,  <33.391911, 31.758162, 19.198626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093590, 31.174017, 18.735641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912445, 31.166277, 19.092190>,  <32.803761, 31.161633, 19.306120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912445, 31.166277, 19.092190>,  <33.093590, 31.174017, 18.735641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912445, 31.166277, 19.092190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887862, -0.081454, -0.452842,
		0.081369, -0.996489, 0.019707,
		-0.452857, -0.019350, 0.891373,
		32.776588, 31.160473, 19.359602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540771, 30.693441, 18.656122>,  <33.093590, 31.174017, 18.735641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540771, 30.693441, 18.656122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440113, 30.912802, 18.975103>,  <32.379719, 31.044418, 19.166492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440113, 30.912802, 18.975103>,  <32.540771, 30.693441, 18.656122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440113, 30.912802, 18.975103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950133, 0.016828, -0.311392,
		-0.184187, -0.836046, 0.516819,
		-0.251641, 0.548401, 0.797454,
		32.364620, 31.077322, 19.214340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863031, 30.526802, 18.707188>,  <32.540771, 30.693441, 18.656122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863031, 30.526802, 18.707188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896517, 30.835127, 18.959803>,  <31.916607, 31.020123, 19.111372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896517, 30.835127, 18.959803>,  <31.863031, 30.526802, 18.707188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896517, 30.835127, 18.959803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989242, 0.140582, -0.040457,
		-0.119968, -0.621357, 0.774289,
		0.083712, 0.770812, 0.631538,
		31.921631, 31.066370, 19.149263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380146, 30.415844, 19.280365>,  <31.863031, 30.526802, 18.707188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380146, 30.415844, 19.280365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444601, 30.810059, 19.259377>,  <31.483274, 31.046587, 19.246784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444601, 30.810059, 19.259377>,  <31.380146, 30.415844, 19.280365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444601, 30.810059, 19.259377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981938, 0.154754, -0.108848,
		-0.099154, 0.069063, 0.992673,
		0.161137, 0.985536, -0.052472,
		31.492943, 31.105719, 19.243635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893583, 30.670071, 19.676861>,  <31.380146, 30.415844, 19.280365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893583, 30.670071, 19.676861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999989, 30.981606, 19.449654>,  <31.063831, 31.168528, 19.313330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999989, 30.981606, 19.449654>,  <30.893583, 30.670071, 19.676861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999989, 30.981606, 19.449654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912021, 0.012517, -0.409953,
		-0.312177, 0.627099, 0.713647,
		0.266014, 0.778839, -0.568019,
		31.079792, 31.215258, 19.279247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277754, 30.124500, 19.769676>,  <30.893583, 30.670071, 19.676861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277754, 30.124500, 19.769676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025272, 29.816994, 19.728540>,  <29.873783, 29.632488, 19.703859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025272, 29.816994, 19.728540>,  <30.277754, 30.124500, 19.769676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025272, 29.816994, 19.728540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578606, -0.555017, 0.597638,
		-0.516523, 0.317728, 0.795143,
		-0.631204, -0.768769, -0.102839,
		29.835911, 29.586363, 19.697689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447289, 29.804708, 20.344631>,  <30.277754, 30.124500, 19.769676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447289, 29.804708, 20.344631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246389, 29.521757, 20.145689>,  <30.125851, 29.351986, 20.026323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246389, 29.521757, 20.145689>,  <30.447289, 29.804708, 20.344631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246389, 29.521757, 20.145689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521124, -0.706584, 0.478715,
		-0.690056, -0.018749, 0.723513,
		-0.502248, -0.707381, -0.497353,
		30.095715, 29.309544, 19.996483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271643, 29.297646, 20.875368>,  <30.447289, 29.804708, 20.344631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271643, 29.297646, 20.875368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279591, 29.101025, 20.527121>,  <30.284359, 28.983051, 20.318172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279591, 29.101025, 20.527121>,  <30.271643, 29.297646, 20.875368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279591, 29.101025, 20.527121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643176, -0.660405, 0.387544,
		-0.765461, -0.567662, 0.303034,
		0.019869, -0.491554, -0.870621,
		30.285551, 28.953558, 20.265934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140902, 28.575644, 21.019491>,  <30.271643, 29.297646, 20.875368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140902, 28.575644, 21.019491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350620, 28.588018, 20.679102>,  <30.476452, 28.595444, 20.474869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350620, 28.588018, 20.679102>,  <30.140902, 28.575644, 21.019491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350620, 28.588018, 20.679102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621104, -0.697538, 0.357310,
		-0.582532, -0.715880, -0.384932,
		0.524296, 0.030938, -0.850974,
		30.507910, 28.597300, 20.423809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450911, 27.924688, 20.986370>,  <30.140902, 28.575644, 21.019491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450911, 27.924688, 20.986370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677395, 28.093868, 20.703381>,  <30.813286, 28.195375, 20.533587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677395, 28.093868, 20.703381>,  <30.450911, 27.924688, 20.986370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677395, 28.093868, 20.703381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794679, -0.507991, 0.332311,
		-0.218841, -0.750374, -0.623738,
		0.566210, 0.422948, -0.707475,
		30.847258, 28.220753, 20.491138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987726, 27.454149, 20.705116>,  <30.450911, 27.924688, 20.986370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987726, 27.454149, 20.705116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124212, 27.817343, 20.607845>,  <31.206104, 28.035259, 20.549482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124212, 27.817343, 20.607845>,  <30.987726, 27.454149, 20.705116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124212, 27.817343, 20.607845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912435, -0.257765, 0.317835,
		0.225908, -0.330331, -0.916432,
		0.341215, 0.907986, -0.243175,
		31.226576, 28.089739, 20.534893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491362, 27.236059, 20.289476>,  <30.987726, 27.454149, 20.705116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491362, 27.236059, 20.289476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570370, 27.613253, 20.396637>,  <31.617775, 27.839569, 20.460934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570370, 27.613253, 20.396637>,  <31.491362, 27.236059, 20.289476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570370, 27.613253, 20.396637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921070, -0.272074, 0.278578,
		0.335583, 0.191733, -0.922292,
		0.197519, 0.942982, 0.267903,
		31.629625, 27.896147, 20.477007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127495, 27.369392, 20.021881>,  <31.491362, 27.236059, 20.289476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127495, 27.369392, 20.021881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094879, 27.649799, 20.305269>,  <32.075310, 27.818043, 20.475302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094879, 27.649799, 20.305269>,  <32.127495, 27.369392, 20.021881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094879, 27.649799, 20.305269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890772, -0.267599, 0.367309,
		0.447075, 0.661035, -0.602625,
		-0.081542, 0.701016, 0.708468,
		32.070415, 27.860104, 20.517809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736336, 27.784618, 20.023569>,  <32.127495, 27.369392, 20.021881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736336, 27.784618, 20.023569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586815, 27.803970, 20.394068>,  <32.497105, 27.815582, 20.616367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586815, 27.803970, 20.394068>,  <32.736336, 27.784618, 20.023569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586815, 27.803970, 20.394068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919166, -0.114321, 0.376914,
		0.124125, 0.992265, -0.001736,
		-0.373800, 0.048380, 0.926247,
		32.474674, 27.818485, 20.671942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142765, 28.248123, 20.310804>,  <32.736336, 27.784618, 20.023569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142765, 28.248123, 20.310804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972900, 28.045294, 20.610813>,  <32.870979, 27.923595, 20.790819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972900, 28.045294, 20.610813>,  <33.142765, 28.248123, 20.310804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972900, 28.045294, 20.610813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893407, -0.100591, 0.437843,
		-0.146572, 0.856013, 0.495740,
		-0.424666, -0.507073, 0.750024,
		32.845501, 27.893171, 20.835821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361019, 28.525539, 20.873167>,  <33.142765, 28.248123, 20.310804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361019, 28.525539, 20.873167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234974, 28.166817, 20.997385>,  <33.159348, 27.951584, 21.071917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234974, 28.166817, 20.997385>,  <33.361019, 28.525539, 20.873167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234974, 28.166817, 20.997385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763898, -0.045505, 0.643731,
		-0.563170, 0.440077, 0.699408,
		-0.315117, -0.896806, 0.310547,
		33.140438, 27.897776, 21.090549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388039, 28.643129, 21.636951>,  <33.361019, 28.525539, 20.873167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388039, 28.643129, 21.636951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410690, 28.257532, 21.533020>,  <33.424282, 28.026175, 21.470661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410690, 28.257532, 21.533020>,  <33.388039, 28.643129, 21.636951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410690, 28.257532, 21.533020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667442, -0.156989, 0.727926,
		-0.742505, -0.214645, 0.634518,
		0.056633, -0.963993, -0.259828,
		33.427681, 27.968334, 21.455072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405163, 28.262831, 22.295467>,  <33.388039, 28.643129, 21.636951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405163, 28.262831, 22.295467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553402, 28.023325, 22.011457>,  <33.642345, 27.879622, 21.841051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553402, 28.023325, 22.011457>,  <33.405163, 28.262831, 22.295467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553402, 28.023325, 22.011457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804407, -0.175242, 0.567643,
		-0.464311, -0.781519, 0.416705,
		0.370600, -0.598763, -0.710027,
		33.664581, 27.843697, 21.798449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692745, 27.799923, 22.678719>,  <33.405163, 28.262831, 22.295467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692745, 27.799923, 22.678719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862026, 27.757158, 22.318836>,  <33.963593, 27.731501, 22.102907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862026, 27.757158, 22.318836>,  <33.692745, 27.799923, 22.678719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862026, 27.757158, 22.318836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839062, -0.328450, 0.433701,
		-0.341878, -0.938451, -0.049291,
		0.423197, -0.106915, -0.899708,
		33.988987, 27.725084, 22.048923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961910, 27.173141, 22.634058>,  <33.692745, 27.799923, 22.678719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961910, 27.173141, 22.634058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158813, 27.391590, 22.362932>,  <34.276955, 27.522659, 22.200256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158813, 27.391590, 22.362932>,  <33.961910, 27.173141, 22.634058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158813, 27.391590, 22.362932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863522, -0.208352, 0.459260,
		0.109587, -0.811383, -0.574150,
		0.492261, 0.546120, -0.677814,
		34.306492, 27.555426, 22.159588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494419, 26.733204, 22.451832>,  <33.961910, 27.173141, 22.634058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494419, 26.733204, 22.451832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586838, 27.106289, 22.341080>,  <34.642288, 27.330141, 22.274630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586838, 27.106289, 22.341080>,  <34.494419, 26.733204, 22.451832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586838, 27.106289, 22.341080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912650, -0.109144, 0.393901,
		0.337178, -0.343701, -0.876459,
		0.231044, 0.932715, -0.276878,
		34.656151, 27.386103, 22.258017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119846, 26.660044, 21.955307>,  <34.494419, 26.733204, 22.451832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119846, 26.660044, 21.955307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123173, 27.030010, 22.107340>,  <35.125168, 27.251989, 22.198559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123173, 27.030010, 22.107340>,  <35.119846, 26.660044, 21.955307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123173, 27.030010, 22.107340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952110, -0.123501, 0.279704,
		0.305644, 0.359552, -0.881649,
		0.008317, 0.924916, 0.380080,
		35.125668, 27.307486, 22.221363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705509, 26.911007, 21.737185>,  <35.119846, 26.660044, 21.955307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705509, 26.911007, 21.737185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600418, 27.137613, 22.049603>,  <35.537361, 27.273577, 22.237053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600418, 27.137613, 22.049603>,  <35.705509, 26.911007, 21.737185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600418, 27.137613, 22.049603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956834, 0.048727, 0.286520,
		0.124260, 0.822609, -0.554864,
		-0.262731, 0.566516, 0.781045,
		35.521599, 27.307568, 22.283916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195751, 27.351831, 21.757767>,  <35.705509, 26.911007, 21.737185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195751, 27.351831, 21.757767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015171, 27.370304, 22.114206>,  <35.906822, 27.381388, 22.328070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015171, 27.370304, 22.114206>,  <36.195751, 27.351831, 21.757767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015171, 27.370304, 22.114206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886266, 0.139096, 0.441798,
		-0.103545, 0.989202, -0.103725,
		-0.451455, 0.046181, 0.891098,
		35.879734, 27.384159, 22.381536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451168, 27.871994, 22.056005>,  <36.195751, 27.351831, 21.757767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451168, 27.871994, 22.056005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334473, 27.648474, 22.366522>,  <36.264454, 27.514362, 22.552832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334473, 27.648474, 22.366522>,  <36.451168, 27.871994, 22.056005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334473, 27.648474, 22.366522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922449, 0.050244, 0.382836,
		-0.252932, 0.827780, 0.500805,
		-0.291741, -0.558799, 0.776293,
		36.246952, 27.480835, 22.599409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875534, 28.171040, 22.621737>,  <36.451168, 27.871994, 22.056005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875534, 28.171040, 22.621737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723640, 27.847876, 22.801996>,  <36.632504, 27.653976, 22.910152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723640, 27.847876, 22.801996>,  <36.875534, 28.171040, 22.621737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723640, 27.847876, 22.801996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840477, -0.097755, 0.532957,
		-0.386529, 0.581140, 0.716151,
		-0.379730, -0.807911, 0.450649,
		36.609722, 27.605503, 22.937191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019138, 28.271599, 23.233944>,  <36.875534, 28.171040, 22.621737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019138, 28.271599, 23.233944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970554, 27.874737, 23.222126>,  <36.941402, 27.636620, 23.215036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970554, 27.874737, 23.222126>,  <37.019138, 28.271599, 23.233944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970554, 27.874737, 23.222126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816183, -0.116769, 0.565871,
		-0.564882, 0.044620, 0.823964,
		-0.121463, -0.992156, -0.029543,
		36.934116, 27.577089, 23.213263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213631, 28.168613, 23.944401>,  <37.019138, 28.271599, 23.233944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213631, 28.168613, 23.944401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236523, 27.818359, 23.752575>,  <37.250259, 27.608206, 23.637480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236523, 27.818359, 23.752575>,  <37.213631, 28.168613, 23.944401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236523, 27.818359, 23.752575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723401, -0.294681, 0.624383,
		-0.688052, -0.382652, 0.616572,
		0.057229, -0.875637, -0.479567,
		37.253693, 27.555668, 23.608706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209812, 27.610418, 24.436489>,  <37.213631, 28.168613, 23.944401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209812, 27.610418, 24.436489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387257, 27.465324, 24.108677>,  <37.493725, 27.378267, 23.911989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387257, 27.465324, 24.108677>,  <37.209812, 27.610418, 24.436489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387257, 27.465324, 24.108677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785017, -0.283904, 0.550588,
		-0.432386, -0.887594, 0.158810,
		0.443612, -0.362735, -0.819532,
		37.520340, 27.356504, 23.862818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420593, 26.869749, 24.542265>,  <37.209812, 27.610418, 24.436489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420593, 26.869749, 24.542265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644554, 26.993404, 24.234774>,  <37.778931, 27.067598, 24.050278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644554, 26.993404, 24.234774>,  <37.420593, 26.869749, 24.542265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644554, 26.993404, 24.234774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784177, -0.497296, 0.371165,
		-0.267545, -0.810635, -0.520855,
		0.559899, 0.309139, -0.768730,
		37.812523, 27.086145, 24.004154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857445, 26.341953, 24.332644>,  <37.420593, 26.869749, 24.542265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857445, 26.341953, 24.332644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061241, 26.637865, 24.156851>,  <38.183517, 26.815413, 24.051374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061241, 26.637865, 24.156851>,  <37.857445, 26.341953, 24.332644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061241, 26.637865, 24.156851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859500, -0.461843, 0.219001,
		-0.040959, -0.489314, -0.871145,
		0.509492, 0.739779, -0.439482,
		38.214088, 26.859798, 24.025005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320965, 26.068132, 23.804171>,  <37.857445, 26.341953, 24.332644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320965, 26.068132, 23.804171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473103, 26.421566, 23.913433>,  <38.564384, 26.633627, 23.978991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473103, 26.421566, 23.913433>,  <38.320965, 26.068132, 23.804171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473103, 26.421566, 23.913433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818677, -0.459061, 0.345008,
		0.430240, 0.092407, -0.897972,
		0.380343, 0.883586, 0.273158,
		38.587204, 26.686642, 23.995380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984104, 25.990658, 23.599852>,  <38.320965, 26.068132, 23.804171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984104, 25.990658, 23.599852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988415, 26.284481, 23.871235>,  <38.991001, 26.460775, 24.034065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988415, 26.284481, 23.871235>,  <38.984104, 25.990658, 23.599852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988415, 26.284481, 23.871235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942464, -0.234185, 0.238578,
		0.334135, 0.636852, -0.694819,
		0.010777, 0.734559, 0.678459,
		38.991650, 26.504848, 24.074772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625965, 26.168633, 23.624939>,  <38.984104, 25.990658, 23.599852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625965, 26.168633, 23.624939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486832, 26.312376, 23.971321>,  <39.403351, 26.398623, 24.179150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486832, 26.312376, 23.971321>,  <39.625965, 26.168633, 23.624939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486832, 26.312376, 23.971321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838936, -0.293054, 0.458592,
		0.418569, 0.885992, -0.199544,
		-0.347832, 0.359356, 0.865954,
		39.382481, 26.420183, 24.231108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226540, 26.370535, 23.897312>,  <39.625965, 26.168633, 23.624939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226540, 26.370535, 23.897312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965588, 26.377743, 24.200382>,  <39.809017, 26.382069, 24.382225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965588, 26.377743, 24.200382>,  <40.226540, 26.370535, 23.897312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965588, 26.377743, 24.200382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753592, -0.090883, 0.651029,
		0.080593, 0.995698, 0.045710,
		-0.652383, 0.018022, 0.757675,
		39.769875, 26.383150, 24.427685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628963, 26.717888, 24.427433>,  <40.226540, 26.370535, 23.897312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628963, 26.717888, 24.427433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330006, 26.541023, 24.625786>,  <40.150631, 26.434904, 24.744799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330006, 26.541023, 24.625786>,  <40.628963, 26.717888, 24.427433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330006, 26.541023, 24.625786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610161, -0.161475, 0.775648,
		-0.262888, 0.882281, 0.390474,
		-0.747392, -0.442160, 0.495883,
		40.105789, 26.408375, 24.774551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550083, 27.038700, 25.098841>,  <40.628963, 26.717888, 24.427433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550083, 27.038700, 25.098841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395351, 26.670774, 25.125095>,  <40.302513, 26.450020, 25.140848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395351, 26.670774, 25.125095>,  <40.550083, 27.038700, 25.098841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395351, 26.670774, 25.125095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581532, -0.188086, 0.791482,
		-0.715670, 0.344338, 0.607658,
		-0.386830, -0.919812, 0.065636,
		40.279301, 26.394831, 25.144787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408684, 26.918978, 25.872751>,  <40.550083, 27.038700, 25.098841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408684, 26.918978, 25.872751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414265, 26.558407, 25.699669>,  <40.417614, 26.342064, 25.595819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414265, 26.558407, 25.699669>,  <40.408684, 26.918978, 25.872751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414265, 26.558407, 25.699669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590935, -0.341654, 0.730800,
		-0.806598, -0.265895, 0.527919,
		0.013950, -0.901428, -0.432704,
		40.418449, 26.287979, 25.569859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289566, 26.445215, 26.336079>,  <40.408684, 26.918978, 25.872751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289566, 26.445215, 26.336079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465523, 26.212479, 26.062450>,  <40.571098, 26.072836, 25.898273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465523, 26.212479, 26.062450>,  <40.289566, 26.445215, 26.336079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465523, 26.212479, 26.062450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529525, -0.447175, 0.720859,
		-0.725327, -0.679332, 0.111393,
		0.439890, -0.581844, -0.684071,
		40.597488, 26.037926, 25.857229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169781, 25.747604, 26.524811>,  <40.289566, 26.445215, 26.336079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169781, 25.747604, 26.524811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490189, 25.763088, 26.285856>,  <40.682434, 25.772379, 26.142485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490189, 25.763088, 26.285856>,  <40.169781, 25.747604, 26.524811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490189, 25.763088, 26.285856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533602, -0.498514, 0.683193,
		-0.271360, -0.866017, -0.419974,
		0.801020, 0.038708, -0.597385,
		40.730495, 25.774700, 26.106640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512257, 25.336721, 26.903435>,  <40.169781, 25.747604, 26.524811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512257, 25.336721, 26.903435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784409, 25.457516, 26.636335>,  <40.947701, 25.529991, 26.476076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784409, 25.457516, 26.636335>,  <40.512257, 25.336721, 26.903435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784409, 25.457516, 26.636335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729785, -0.362562, 0.579623,
		-0.067064, -0.881677, -0.467063,
		0.680380, 0.301984, -0.667750,
		40.988522, 25.548111, 26.436010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920681, 24.782501, 26.804436>,  <40.512257, 25.336721, 26.903435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920681, 24.782501, 26.804436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122322, 25.114054, 26.707413>,  <41.243309, 25.312984, 26.649199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122322, 25.114054, 26.707413>,  <40.920681, 24.782501, 26.804436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122322, 25.114054, 26.707413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773154, -0.307973, 0.554423,
		0.384850, -0.467020, -0.796104,
		0.504106, 0.828881, -0.242555,
		41.273552, 25.362719, 26.634645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584785, 24.578672, 26.868664>,  <40.920681, 24.782501, 26.804436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584785, 24.578672, 26.868664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623379, 24.976357, 26.849733>,  <41.646534, 25.214966, 26.838375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623379, 24.976357, 26.849733>,  <41.584785, 24.578672, 26.868664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623379, 24.976357, 26.849733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706828, -0.034963, 0.706521,
		0.700775, -0.101620, -0.706108,
		0.096484, 0.994209, -0.047327,
		41.652325, 25.274620, 26.835535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274734, 24.662485, 26.886339>,  <41.584785, 24.578672, 26.868664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274734, 24.662485, 26.886339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091469, 24.988310, 27.028648>,  <41.981510, 25.183804, 27.114035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091469, 24.988310, 27.028648>,  <42.274734, 24.662485, 26.886339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091469, 24.988310, 27.028648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677676, 0.061102, 0.732818,
		0.575186, 0.576852, -0.580003,
		-0.458167, 0.814560, 0.355774,
		41.954018, 25.232677, 27.135380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797630, 25.268629, 26.876703>,  <42.274734, 24.662485, 26.886339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797630, 25.268629, 26.876703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488178, 25.276455, 27.130035>,  <42.302505, 25.281151, 27.282036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488178, 25.276455, 27.130035>,  <42.797630, 25.268629, 26.876703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488178, 25.276455, 27.130035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623888, 0.198149, 0.755976,
		-0.110702, 0.979977, -0.165502,
		-0.773633, 0.019567, 0.633331,
		42.256088, 25.282326, 27.320034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889297, 25.703430, 27.381519>,  <42.797630, 25.268629, 26.876703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889297, 25.703430, 27.381519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597115, 25.524935, 27.588322>,  <42.421803, 25.417837, 27.712402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597115, 25.524935, 27.588322>,  <42.889297, 25.703430, 27.381519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597115, 25.524935, 27.588322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489093, 0.186559, 0.852047,
		-0.476670, 0.875252, 0.081979,
		-0.730462, -0.446240, 0.517006,
		42.377975, 25.391064, 27.743423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546474, 26.135185, 27.959291>,  <42.889297, 25.703430, 27.381519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546474, 26.135185, 27.959291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603577, 25.742994, 28.013384>,  <42.637840, 25.507681, 28.045839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603577, 25.742994, 28.013384>,  <42.546474, 26.135185, 27.959291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603577, 25.742994, 28.013384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587148, 0.193884, 0.785917,
		-0.796792, -0.032796, 0.603363,
		0.142757, -0.980476, 0.135229,
		42.646404, 25.448851, 28.053953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263985, 25.802618, 28.634796>,  <42.546474, 26.135185, 27.959291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263985, 25.802618, 28.634796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582397, 25.581253, 28.536768>,  <42.773445, 25.448433, 28.477951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582397, 25.581253, 28.536768>,  <42.263985, 25.802618, 28.634796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582397, 25.581253, 28.536768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392320, 0.163469, 0.905187,
		-0.460881, -0.816708, 0.347242,
		0.796036, -0.553413, -0.245071,
		42.821209, 25.415230, 28.463247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311115, 25.357529, 29.172670>,  <42.263985, 25.802618, 28.634796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311115, 25.357529, 29.172670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662849, 25.414898, 28.991034>,  <42.873890, 25.449320, 28.882051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662849, 25.414898, 28.991034>,  <42.311115, 25.357529, 29.172670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662849, 25.414898, 28.991034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413233, 0.244079, 0.877305,
		0.236628, -0.959096, 0.155377,
		0.879344, 0.143388, -0.454086,
		42.926651, 25.457924, 28.854807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864227, 24.919565, 29.438616>,  <42.311115, 25.357529, 29.172670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864227, 24.919565, 29.438616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012104, 25.261259, 29.292404>,  <43.100830, 25.466276, 29.204678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012104, 25.261259, 29.292404>,  <42.864227, 24.919565, 29.438616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012104, 25.261259, 29.292404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425789, 0.193910, 0.883800,
		0.825854, -0.482368, -0.292039,
		0.369687, 0.854237, -0.365528,
		43.123009, 25.517530, 29.182745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578468, 25.081425, 29.510700>,  <42.864227, 24.919565, 29.438616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578468, 25.081425, 29.510700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418682, 25.447729, 29.493679>,  <43.322811, 25.667511, 29.483467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418682, 25.447729, 29.493679>,  <43.578468, 25.081425, 29.510700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418682, 25.447729, 29.493679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380407, 0.207812, 0.901169,
		0.834097, 0.343798, -0.431375,
		-0.399465, 0.915760, -0.042552,
		43.298843, 25.722458, 29.480913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140289, 25.586851, 29.623425>,  <43.578468, 25.081425, 29.510700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140289, 25.586851, 29.623425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807693, 25.757032, 29.766321>,  <43.608135, 25.859140, 29.852058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807693, 25.757032, 29.766321>,  <44.140289, 25.586851, 29.623425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807693, 25.757032, 29.766321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477581, 0.218900, 0.850882,
		0.283810, 0.878107, -0.385200,
		-0.831486, 0.425453, 0.357241,
		43.558247, 25.884668, 29.873493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329205, 26.246906, 29.765057>,  <44.140289, 25.586851, 29.623425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329205, 26.246906, 29.765057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030769, 26.141535, 30.009665>,  <43.851707, 26.078312, 30.156429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030769, 26.141535, 30.009665>,  <44.329205, 26.246906, 29.765057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030769, 26.141535, 30.009665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507240, 0.370100, 0.778289,
		-0.431348, 0.890860, -0.142506,
		-0.746088, -0.263429, 0.611522,
		43.806942, 26.062506, 30.193121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072250, 26.780386, 30.174698>,  <44.329205, 26.246906, 29.765057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072250, 26.780386, 30.174698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968910, 26.446898, 30.369905>,  <43.906906, 26.246803, 30.487030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968910, 26.446898, 30.369905>,  <44.072250, 26.780386, 30.174698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968910, 26.446898, 30.369905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316522, 0.404232, 0.858143,
		-0.912727, 0.376168, 0.159460,
		-0.258347, -0.833723, 0.488019,
		43.891407, 26.196781, 30.516312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006676, 27.110004, 29.512512>,  <44.072250, 26.780386, 30.174698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006676, 27.110004, 29.512512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675278, 27.049351, 29.296881>,  <43.476440, 27.012959, 29.167501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675278, 27.049351, 29.296881>,  <44.006676, 27.110004, 29.512512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675278, 27.049351, 29.296881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471611, -0.330155, 0.817668,
		-0.301967, 0.931668, 0.202018,
		-0.828492, -0.151634, -0.539080,
		43.426731, 27.003860, 29.135157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410000, 27.664036, 29.714500>,  <44.006676, 27.110004, 29.512512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410000, 27.664036, 29.714500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310753, 27.297932, 29.587545>,  <43.251205, 27.078270, 29.511372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310753, 27.297932, 29.587545>,  <43.410000, 27.664036, 29.714500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310753, 27.297932, 29.587545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341814, -0.223845, 0.912720,
		-0.906421, 0.334952, -0.257308,
		-0.248121, -0.915260, -0.317389,
		43.236317, 27.023354, 29.492329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703030, 27.650982, 29.663017>,  <43.410000, 27.664036, 29.714500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703030, 27.650982, 29.663017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911667, 27.329563, 29.777742>,  <43.036850, 27.136713, 29.846577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911667, 27.329563, 29.777742>,  <42.703030, 27.650982, 29.663017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911667, 27.329563, 29.777742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457969, 0.019950, 0.888744,
		-0.719868, -0.594909, -0.357593,
		0.521588, -0.803545, 0.286811,
		43.068142, 27.088499, 29.863785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419853, 26.940411, 29.851042>,  <42.703030, 27.650982, 29.663017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419853, 26.940411, 29.851042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728672, 27.098001, 30.050529>,  <42.913963, 27.192556, 30.170221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728672, 27.098001, 30.050529>,  <42.419853, 26.940411, 29.851042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728672, 27.098001, 30.050529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570974, 0.085299, 0.816525,
		0.279153, -0.915153, 0.290807,
		0.772051, 0.393978, 0.498717,
		42.960289, 27.216194, 30.200146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585300, 26.397423, 30.409225>,  <42.419853, 26.940411, 29.851042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585300, 26.397423, 30.409225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617001, 26.787903, 30.489975>,  <42.636021, 27.022190, 30.538425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617001, 26.787903, 30.489975>,  <42.585300, 26.397423, 30.409225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617001, 26.787903, 30.489975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605996, -0.113620, 0.787312,
		0.791510, -0.184728, 0.582569,
		0.079247, 0.976200, 0.201875,
		42.640774, 27.080763, 30.550537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769569, 26.557192, 31.013145>,  <42.585300, 26.397423, 30.409225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769569, 26.557192, 31.013145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577347, 26.898678, 30.932905>,  <42.462013, 27.103569, 30.884760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577347, 26.898678, 30.932905>,  <42.769569, 26.557192, 31.013145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577347, 26.898678, 30.932905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505804, -0.082953, 0.858651,
		0.716402, 0.514092, 0.471676,
		-0.480553, 0.853714, -0.200602,
		42.433182, 27.154793, 30.872725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725765, 26.701292, 31.654142>,  <42.769569, 26.557192, 31.013145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725765, 26.701292, 31.654142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476387, 26.929117, 31.439884>,  <42.326759, 27.065813, 31.311329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476387, 26.929117, 31.439884>,  <42.725765, 26.701292, 31.654142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476387, 26.929117, 31.439884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646098, 0.010515, 0.763182,
		0.440313, 0.821880, 0.361439,
		-0.623443, 0.569564, -0.535645,
		42.289352, 27.099987, 31.279190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466316, 27.249767, 32.051098>,  <42.725765, 26.701292, 31.654142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466316, 27.249767, 32.051098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187996, 27.240728, 31.763943>,  <42.021004, 27.235306, 31.591650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187996, 27.240728, 31.763943>,  <42.466316, 27.249767, 32.051098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187996, 27.240728, 31.763943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718117, 0.003467, 0.695913,
		-0.013236, 0.999739, -0.018639,
		-0.695796, -0.022597, -0.717884,
		41.979256, 27.233950, 31.548578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051323, 27.900217, 32.083202>,  <42.466316, 27.249767, 32.051098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051323, 27.900217, 32.083202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849155, 27.588636, 31.934725>,  <41.727856, 27.401688, 31.845638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849155, 27.588636, 31.934725>,  <42.051323, 27.900217, 32.083202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849155, 27.588636, 31.934725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673912, 0.087685, 0.733590,
		-0.538881, 0.620926, -0.569261,
		-0.505421, -0.778949, -0.371197,
		41.697529, 27.354952, 31.823366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418804, 28.200403, 31.992434>,  <42.051323, 27.900217, 32.083202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418804, 28.200403, 31.992434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414875, 27.802355, 32.031712>,  <41.412518, 27.563526, 32.055279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414875, 27.802355, 32.031712>,  <41.418804, 28.200403, 31.992434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414875, 27.802355, 32.031712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767804, 0.070413, 0.636804,
		-0.640610, -0.069140, -0.764747,
		-0.009820, -0.995119, 0.098193,
		41.411930, 27.503819, 32.061169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918373, 28.308226, 31.449200>,  <41.418804, 28.200403, 31.992434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918373, 28.308226, 31.449200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840740, 27.917519, 31.485544>,  <40.794163, 27.683094, 31.507351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840740, 27.917519, 31.485544>,  <40.918373, 28.308226, 31.449200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840740, 27.917519, 31.485544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700803, 0.202864, 0.683902,
		-0.686447, 0.069055, -0.723894,
		-0.194078, -0.976769, 0.090861,
		40.782516, 27.624489, 31.512802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199020, 28.184084, 31.320986>,  <40.918373, 28.308226, 31.449200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199020, 28.184084, 31.320986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346592, 27.898235, 31.558710>,  <40.435135, 27.726727, 31.701345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346592, 27.898235, 31.558710>,  <40.199020, 28.184084, 31.320986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346592, 27.898235, 31.558710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680919, 0.227422, 0.696153,
		-0.632645, -0.661510, -0.402696,
		0.368930, -0.714621, 0.594312,
		40.457272, 27.683849, 31.737003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623863, 27.646917, 31.508001>,  <40.199020, 28.184084, 31.320986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623863, 27.646917, 31.508001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903095, 27.644371, 31.794397>,  <40.070637, 27.642843, 31.966234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903095, 27.644371, 31.794397>,  <39.623863, 27.646917, 31.508001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903095, 27.644371, 31.794397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694549, 0.237003, 0.679288,
		-0.174016, -0.971488, 0.161025,
		0.698083, -0.006367, 0.715988,
		40.112522, 27.642462, 32.009193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306297, 27.296976, 32.094162>,  <39.623863, 27.646917, 31.508001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306297, 27.296976, 32.094162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631104, 27.469404, 32.251545>,  <39.825989, 27.572861, 32.345974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631104, 27.469404, 32.251545>,  <39.306297, 27.296976, 32.094162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631104, 27.469404, 32.251545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534654, 0.279080, 0.797659,
		0.234047, -0.858072, 0.457093,
		0.812014, 0.431077, 0.393454,
		39.874706, 27.598726, 32.369583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291203, 27.040049, 32.780460>,  <39.306297, 27.296976, 32.094162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291203, 27.040049, 32.780460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502163, 27.377354, 32.738968>,  <39.628738, 27.579737, 32.714073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502163, 27.377354, 32.738968>,  <39.291203, 27.040049, 32.780460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502163, 27.377354, 32.738968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616417, 0.463804, 0.636330,
		0.584705, -0.271656, 0.764410,
		0.527399, 0.843261, -0.103735,
		39.660381, 27.630331, 32.707848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309216, 27.370270, 33.452484>,  <39.291203, 27.040049, 32.780460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309216, 27.370270, 33.452484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362900, 27.640764, 33.162743>,  <39.395111, 27.803061, 32.988895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362900, 27.640764, 33.162743>,  <39.309216, 27.370270, 33.452484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362900, 27.640764, 33.162743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595056, 0.639504, 0.486767,
		0.792399, 0.365705, 0.488224,
		0.134208, 0.676235, -0.724358,
		39.403164, 27.843636, 32.945435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700363, 27.880028, 33.681335>,  <39.309216, 27.370270, 33.452484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700363, 27.880028, 33.681335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467308, 28.001459, 33.379772>,  <39.327473, 28.074318, 33.198833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467308, 28.001459, 33.379772>,  <39.700363, 27.880028, 33.681335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467308, 28.001459, 33.379772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273595, 0.800215, 0.533668,
		0.765294, 0.517201, -0.383181,
		-0.582641, 0.303577, -0.753904,
		39.292515, 28.092533, 33.153603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843422, 28.526224, 33.767403>,  <39.700363, 27.880028, 33.681335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843422, 28.526224, 33.767403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500580, 28.492651, 33.564102>,  <39.294872, 28.472507, 33.442123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500580, 28.492651, 33.564102>,  <39.843422, 28.526224, 33.767403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500580, 28.492651, 33.564102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441617, 0.627684, 0.641083,
		0.265213, 0.773930, -0.575060,
		-0.857109, -0.083933, -0.508251,
		39.243446, 28.467472, 33.411629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510048, 29.229769, 33.761898>,  <39.843422, 28.526224, 33.767403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510048, 29.229769, 33.761898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245041, 28.938444, 33.691898>,  <39.086037, 28.763649, 33.649899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245041, 28.938444, 33.691898>,  <39.510048, 29.229769, 33.761898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245041, 28.938444, 33.691898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590848, 0.364540, 0.719728,
		-0.460394, 0.580233, -0.671839,
		-0.662522, -0.728313, -0.174997,
		39.046284, 28.719950, 33.639400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785938, 29.444023, 33.564671>,  <39.510048, 29.229769, 33.761898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785938, 29.444023, 33.564671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807610, 29.094797, 33.758503>,  <38.820610, 28.885262, 33.874802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807610, 29.094797, 33.758503>,  <38.785938, 29.444023, 33.564671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807610, 29.094797, 33.758503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548987, 0.379326, 0.744799,
		-0.834073, -0.306380, -0.458751,
		0.054175, -0.873065, 0.484585,
		38.823860, 28.832878, 33.903877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087685, 29.157234, 33.671661>,  <38.785938, 29.444023, 33.564671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087685, 29.157234, 33.671661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354294, 29.050606, 33.950138>,  <38.514259, 28.986628, 34.117226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354294, 29.050606, 33.950138>,  <38.087685, 29.157234, 33.671661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354294, 29.050606, 33.950138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534807, 0.479620, 0.695662,
		-0.519354, -0.836004, 0.177113,
		0.666523, -0.266574, 0.696193,
		38.554253, 28.970634, 34.158997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731125, 29.005878, 34.259190>,  <38.087685, 29.157234, 33.671661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731125, 29.005878, 34.259190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102898, 29.101988, 34.371208>,  <38.325962, 29.159653, 34.438419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102898, 29.101988, 34.371208>,  <37.731125, 29.005878, 34.259190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102898, 29.101988, 34.371208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368556, 0.567679, 0.736143,
		0.017900, -0.787407, 0.616174,
		0.929433, 0.240271, 0.280042,
		38.381729, 29.174068, 34.455219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851315, 28.786203, 34.973663>,  <37.731125, 29.005878, 34.259190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851315, 28.786203, 34.973663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007614, 29.130486, 34.843121>,  <38.101395, 29.337055, 34.764797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007614, 29.130486, 34.843121>,  <37.851315, 28.786203, 34.973663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007614, 29.130486, 34.843121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699971, 0.508078, 0.501894,
		0.597795, 0.032325, 0.800997,
		0.390745, 0.860704, -0.326353,
		38.124836, 29.388697, 34.745216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110542, 29.342072, 35.562340>,  <37.851315, 28.786203, 34.973663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110542, 29.342072, 35.562340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996815, 29.499838, 35.212803>,  <37.928577, 29.594498, 35.003082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996815, 29.499838, 35.212803>,  <38.110542, 29.342072, 35.562340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996815, 29.499838, 35.212803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660464, 0.580102, 0.476727,
		0.694946, 0.712683, 0.095564,
		-0.284318, 0.394416, -0.873842,
		37.911518, 29.618162, 34.950649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256950, 30.080107, 35.543106>,  <38.110542, 29.342072, 35.562340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256950, 30.080107, 35.543106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969406, 30.023527, 35.270863>,  <37.796879, 29.989578, 35.107517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969406, 30.023527, 35.270863>,  <38.256950, 30.080107, 35.543106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969406, 30.023527, 35.270863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544779, 0.722799, 0.425179,
		0.431803, 0.676427, -0.596652,
		-0.718862, -0.141450, -0.680610,
		37.753746, 29.981092, 35.066681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045788, 30.820995, 35.240650>,  <38.256950, 30.080107, 35.543106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045788, 30.820995, 35.240650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762211, 30.539383, 35.223991>,  <37.592064, 30.370415, 35.213997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762211, 30.539383, 35.223991>,  <38.045788, 30.820995, 35.240650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762211, 30.539383, 35.223991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651394, 0.631020, 0.421306,
		-0.270335, 0.325810, -0.905962,
		-0.708946, -0.704032, -0.041644,
		37.549526, 30.328173, 35.211498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511398, 31.144619, 34.981922>,  <38.045788, 30.820995, 35.240650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511398, 31.144619, 34.981922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394604, 30.826473, 35.194389>,  <37.324528, 30.635586, 35.321869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394604, 30.826473, 35.194389>,  <37.511398, 31.144619, 34.981922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394604, 30.826473, 35.194389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592993, 0.586290, 0.551927,
		-0.750400, -0.153822, -0.642836,
		-0.291990, -0.795363, 0.531168,
		37.307007, 30.587864, 35.353741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748116, 31.460417, 34.219879>,  <37.511398, 31.144619, 34.981922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748116, 31.460417, 34.219879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852928, 31.135859, 34.428867>,  <37.915817, 30.941124, 34.554260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852928, 31.135859, 34.428867>,  <37.748116, 31.460417, 34.219879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852928, 31.135859, 34.428867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753966, -0.165811, -0.635643,
		0.602389, 0.560485, 0.568317,
		0.262035, -0.811396, 0.522469,
		37.931538, 30.892439, 34.585609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531681, 31.512030, 34.426022>,  <37.748116, 31.460417, 34.219879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531681, 31.512030, 34.426022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411381, 31.132158, 34.391014>,  <38.339203, 30.904236, 34.370010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411381, 31.132158, 34.391014>,  <38.531681, 31.512030, 34.426022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411381, 31.132158, 34.391014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803375, -0.202819, -0.559869,
		0.513946, -0.238688, 0.823946,
		-0.300746, -0.949680, -0.087518,
		38.321156, 30.847254, 34.364758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753300, 31.181707, 35.093708>,  <38.531681, 31.512030, 34.426022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753300, 31.181707, 35.093708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609558, 30.834536, 34.956558>,  <38.523312, 30.626232, 34.874268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609558, 30.834536, 34.956558>,  <38.753300, 31.181707, 35.093708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609558, 30.834536, 34.956558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854243, -0.453851, 0.253552,
		-0.375678, -0.201781, 0.904517,
		-0.359354, -0.867931, -0.342871,
		38.501751, 30.574156, 34.853695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378582, 31.252584, 35.387703>,  <38.753300, 31.181707, 35.093708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378582, 31.252584, 35.387703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513573, 30.956612, 35.154942>,  <39.594566, 30.779028, 35.015285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513573, 30.956612, 35.154942>,  <39.378582, 31.252584, 35.387703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513573, 30.956612, 35.154942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524746, 0.661086, -0.536290,
		0.781504, -0.124364, 0.611379,
		0.337479, -0.739932, -0.581901,
		39.614815, 30.734632, 34.980370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092201, 31.093277, 35.270626>,  <39.378582, 31.252584, 35.387703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092201, 31.093277, 35.270626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872143, 31.013983, 34.946148>,  <39.740108, 30.966406, 34.751461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872143, 31.013983, 34.946148>,  <40.092201, 31.093277, 35.270626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872143, 31.013983, 34.946148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628862, 0.540787, -0.558643,
		0.549426, -0.817467, -0.172853,
		-0.550149, -0.198232, -0.811197,
		39.707100, 30.954512, 34.702789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619125, 31.711432, 35.110653>,  <40.092201, 31.093277, 35.270626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619125, 31.711432, 35.110653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764633, 31.559048, 34.770641>,  <40.851940, 31.467617, 34.566635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764633, 31.559048, 34.770641>,  <40.619125, 31.711432, 35.110653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764633, 31.559048, 34.770641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385473, 0.892308, -0.234942,
		0.847986, -0.242196, 0.471445,
		0.363772, -0.380957, -0.850024,
		40.873764, 31.444761, 34.515633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369900, 31.767040, 35.046764>,  <40.619125, 31.711432, 35.110653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369900, 31.767040, 35.046764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152782, 31.777493, 34.710979>,  <41.022511, 31.783764, 34.509510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152782, 31.777493, 34.710979>,  <41.369900, 31.767040, 35.046764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152782, 31.777493, 34.710979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200395, 0.974676, -0.099237,
		0.815607, -0.222089, -0.534287,
		-0.542796, 0.026129, -0.839458,
		40.989944, 31.785332, 34.459141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763134, 31.944872, 34.361595>,  <41.369900, 31.767040, 35.046764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763134, 31.944872, 34.361595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382160, 32.063477, 34.389736>,  <41.153576, 32.134640, 34.406620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382160, 32.063477, 34.389736>,  <41.763134, 31.944872, 34.361595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382160, 32.063477, 34.389736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289979, 0.952797, -0.089938,
		-0.093696, -0.065261, -0.993460,
		-0.952435, 0.296509, 0.070349,
		41.096428, 32.152428, 34.410839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480595, 32.341873, 33.751446>,  <41.763134, 31.944872, 34.361595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480595, 32.341873, 33.751446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310520, 32.450306, 34.096867>,  <41.208473, 32.515366, 34.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310520, 32.450306, 34.096867>,  <41.480595, 32.341873, 33.751446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310520, 32.450306, 34.096867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297220, 0.943004, -0.149677,
		-0.854911, 0.193025, -0.481527,
		-0.425191, 0.271080, 0.863556,
		41.182964, 32.531631, 34.355934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158829, 32.958603, 33.648365>,  <41.480595, 32.341873, 33.751446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158829, 32.958603, 33.648365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254730, 32.956631, 34.036694>,  <41.312271, 32.955448, 34.269691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254730, 32.956631, 34.036694>,  <41.158829, 32.958603, 33.648365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254730, 32.956631, 34.036694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096658, 0.995140, -0.018820,
		-0.966010, 0.098349, 0.239066,
		0.239755, -0.004928, 0.970821,
		41.326656, 32.955151, 34.327938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648384, 33.293339, 34.062279>,  <41.158829, 32.958603, 33.648365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648384, 33.293339, 34.062279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033794, 33.326492, 34.164062>,  <41.265041, 33.346386, 34.225132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033794, 33.326492, 34.164062>,  <40.648384, 33.293339, 34.062279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033794, 33.326492, 34.164062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002273, 0.948263, -0.317478,
		-0.267610, 0.306477, 0.913486,
		0.963525, 0.082885, 0.254461,
		41.322853, 33.351357, 34.240402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059059, 33.318119, 34.548733>,  <40.648384, 33.293339, 34.062279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059059, 33.318119, 34.548733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911083, 33.412384, 34.908199>,  <39.822296, 33.468945, 35.123878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911083, 33.412384, 34.908199>,  <40.059059, 33.318119, 34.548733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911083, 33.412384, 34.908199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910864, 0.282475, 0.300889,
		-0.182944, 0.929877, -0.319156,
		-0.369943, 0.235661, 0.898669,
		39.800098, 33.483082, 35.177799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094810, 34.095085, 34.782665>,  <40.059059, 33.318119, 34.548733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094810, 34.095085, 34.782665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108597, 33.857204, 35.103947>,  <40.116867, 33.714478, 35.296715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108597, 33.857204, 35.103947>,  <40.094810, 34.095085, 34.782665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108597, 33.857204, 35.103947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965479, 0.227440, 0.126973,
		-0.258192, 0.771103, 0.582011,
		0.034463, -0.594702, 0.803207,
		40.118935, 33.678795, 35.344910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370708, 34.442707, 35.359173>,  <40.094810, 34.095085, 34.782665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370708, 34.442707, 35.359173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470890, 34.055462, 35.356983>,  <40.530998, 33.823116, 35.355671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470890, 34.055462, 35.356983>,  <40.370708, 34.442707, 35.359173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470890, 34.055462, 35.356983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966597, 0.249732, 0.057649,
		-0.054444, -0.019729, 0.998322,
		0.250450, -0.968114, -0.005474,
		40.546024, 33.765026, 35.355339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898903, 34.745506, 35.756615>,  <40.370708, 34.442707, 35.359173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898903, 34.745506, 35.756615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987961, 34.395569, 35.584530>,  <41.041393, 34.185608, 35.481277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987961, 34.395569, 35.584530>,  <40.898903, 34.745506, 35.756615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987961, 34.395569, 35.584530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966178, 0.139104, 0.217140,
		-0.130118, -0.464010, 0.876221,
		0.222641, -0.874840, -0.430216,
		41.054752, 34.133118, 35.455463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201290, 34.149033, 36.152447>,  <40.898903, 34.745506, 35.756615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201290, 34.149033, 36.152447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363266, 34.160183, 35.786880>,  <41.460453, 34.166874, 35.567539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363266, 34.160183, 35.786880>,  <41.201290, 34.149033, 36.152447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363266, 34.160183, 35.786880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897052, 0.181356, 0.402998,
		0.176978, -0.983022, 0.048435,
		0.404941, 0.027873, -0.913918,
		41.484749, 34.168545, 35.512707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697166, 33.594349, 36.034145>,  <41.201290, 34.149033, 36.152447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697166, 33.594349, 36.034145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798458, 33.925526, 35.833992>,  <41.859234, 34.124233, 35.713902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798458, 33.925526, 35.833992>,  <41.697166, 33.594349, 36.034145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798458, 33.925526, 35.833992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909399, -0.027317, 0.415027,
		0.329951, -0.560143, -0.759850,
		0.253231, 0.827946, -0.500380,
		41.874428, 34.173908, 35.683880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402969, 33.530098, 35.609474>,  <41.697166, 33.594349, 36.034145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402969, 33.530098, 35.609474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321808, 33.906464, 35.717922>,  <42.273109, 34.132282, 35.782990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321808, 33.906464, 35.717922>,  <42.402969, 33.530098, 35.609474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321808, 33.906464, 35.717922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911585, 0.080411, 0.403171,
		0.357550, 0.328953, -0.874041,
		-0.202907, 0.940917, 0.271118,
		42.260937, 34.188740, 35.799259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945213, 34.062763, 35.321606>,  <42.402969, 33.530098, 35.609474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945213, 34.062763, 35.321606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772224, 34.193245, 35.657837>,  <42.668430, 34.271534, 35.859573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772224, 34.193245, 35.657837>,  <42.945213, 34.062763, 35.321606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772224, 34.193245, 35.657837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896336, 0.054479, 0.440015,
		0.097741, 0.943729, -0.315948,
		-0.432468, 0.326203, 0.840573,
		42.642483, 34.291107, 35.910007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305134, 34.724209, 35.646526>,  <42.945213, 34.062763, 35.321606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305134, 34.724209, 35.646526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133709, 34.509296, 35.937088>,  <43.030853, 34.380348, 36.111423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133709, 34.509296, 35.937088>,  <43.305134, 34.724209, 35.646526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133709, 34.509296, 35.937088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870735, -0.031014, 0.490774,
		-0.241154, 0.842834, 0.481120,
		-0.428562, -0.537280, 0.726405,
		43.005142, 34.348114, 36.155010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790253, 34.563061, 35.980358>,  <43.305134, 34.724209, 35.646526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790253, 34.563061, 35.980358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527046, 34.361862, 36.204502>,  <43.369122, 34.241142, 36.338989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527046, 34.361862, 36.204502>,  <43.790253, 34.563061, 35.980358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527046, 34.361862, 36.204502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743694, -0.317483, 0.588323,
		-0.118024, 0.803862, 0.582988,
		-0.658020, -0.503001, 0.560357,
		43.329639, 34.210960, 36.372608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617313, 34.524460, 36.101315>,  <43.790253, 34.563061, 35.980358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617313, 34.524460, 36.101315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934471, 34.748779, 36.196663>,  <45.124767, 34.883373, 36.253872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934471, 34.748779, 36.196663>,  <44.617313, 34.524460, 36.101315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934471, 34.748779, 36.196663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233111, 0.082271, -0.968964,
		-0.563006, 0.823853, -0.065497,
		0.792895, 0.560801, 0.238369,
		45.172340, 34.917019, 36.268173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724327, 34.992058, 35.570980>,  <44.617313, 34.524460, 36.101315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724327, 34.992058, 35.570980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071445, 35.024635, 35.767063>,  <45.279716, 35.044182, 35.884712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071445, 35.024635, 35.767063>,  <44.724327, 34.992058, 35.570980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071445, 35.024635, 35.767063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483925, 0.085651, -0.870908,
		-0.112913, 0.992991, 0.034917,
		0.867795, 0.081439, 0.490204,
		45.331783, 35.049068, 35.914124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955544, 35.673893, 35.394630>,  <44.724327, 34.992058, 35.570980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955544, 35.673893, 35.394630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246006, 35.415367, 35.488415>,  <45.420284, 35.260250, 35.544685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246006, 35.415367, 35.488415>,  <44.955544, 35.673893, 35.394630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246006, 35.415367, 35.488415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476988, 0.227980, -0.848827,
		0.495156, 0.728218, 0.473834,
		0.726156, -0.646316, 0.234466,
		45.463852, 35.221474, 35.558754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661732, 35.909317, 35.489872>,  <44.955544, 35.673893, 35.394630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661732, 35.909317, 35.489872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713123, 35.537289, 35.352200>,  <45.743958, 35.314072, 35.269596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713123, 35.537289, 35.352200>,  <45.661732, 35.909317, 35.489872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713123, 35.537289, 35.352200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417839, 0.365519, -0.831749,
		0.899391, -0.036954, 0.435580,
		0.128477, -0.930070, -0.344186,
		45.751667, 35.258266, 35.248943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365196, 35.626698, 35.326889>,  <45.661732, 35.909317, 35.489872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365196, 35.626698, 35.326889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089779, 35.465633, 35.085632>,  <45.924530, 35.368996, 34.940880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089779, 35.465633, 35.085632>,  <46.365196, 35.626698, 35.326889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089779, 35.465633, 35.085632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435638, 0.435250, -0.787894,
		0.579769, -0.805248, -0.124275,
		-0.688540, -0.402658, -0.603141,
		45.883217, 35.344837, 34.904690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705677, 35.317993, 34.746017>,  <46.365196, 35.626698, 35.326889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705677, 35.317993, 34.746017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334099, 35.423771, 34.642384>,  <46.111153, 35.487240, 34.580204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334099, 35.423771, 34.642384>,  <46.705677, 35.317993, 34.746017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334099, 35.423771, 34.642384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360516, 0.487069, -0.795482,
		-0.084170, -0.832365, -0.547799,
		-0.928947, 0.264446, -0.259085,
		46.055416, 35.503105, 34.564659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673687, 36.041439, 34.785103>,  <46.705677, 35.317993, 34.746017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673687, 36.041439, 34.785103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896832, 35.869167, 35.068878>,  <47.030720, 35.765804, 35.239143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.896832, 35.869167, 35.068878>,  <46.673687, 36.041439, 34.785103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.896832, 35.869167, 35.068878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381722, -0.625883, -0.680117,
		0.736939, 0.650220, -0.184757,
		0.557862, -0.430679, 0.709441,
		47.064190, 35.739964, 35.281712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.482170, 36.052761, 34.739418>,  <46.673687, 36.041439, 34.785103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.482170, 36.052761, 34.739418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308422, 35.725239, 34.889557>,  <47.204174, 35.528725, 34.979641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308422, 35.725239, 34.889557>,  <47.482170, 36.052761, 34.739418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.308422, 35.725239, 34.889557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418211, -0.552407, -0.721073,
		0.797762, -0.156236, 0.582380,
		-0.434368, -0.818802, 0.375350,
		47.178112, 35.479599, 35.002163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.932568, 35.509140, 34.618423>,  <47.482170, 36.052761, 34.739418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.932568, 35.509140, 34.618423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592201, 35.318199, 34.706131>,  <47.387981, 35.203632, 34.758755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592201, 35.318199, 34.706131>,  <47.932568, 35.509140, 34.618423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592201, 35.318199, 34.706131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283352, -0.768567, -0.573600,
		0.442331, -0.425956, 0.789244,
		-0.850915, -0.477354, 0.219266,
		47.336926, 35.174992, 34.771912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.006226, 34.846962, 35.019817>,  <47.932568, 35.509140, 34.618423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.006226, 34.846962, 35.019817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684689, 34.863979, 34.782490>,  <47.491768, 34.874191, 34.640095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684689, 34.863979, 34.782490>,  <48.006226, 34.846962, 35.019817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.684689, 34.863979, 34.782490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302840, -0.829227, -0.469756,
		-0.511982, -0.557291, 0.653683,
		-0.803843, 0.042545, -0.593319,
		47.443535, 34.876743, 34.604492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.675060, 28.898006, 25.513863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576149, 29.271667, 25.616789>,  <33.516804, 29.495865, 25.678545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576149, 29.271667, 25.616789>,  <33.675060, 28.898006, 25.513863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576149, 29.271667, 25.616789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958056, 0.196016, 0.209061,
		0.144857, 0.298219, -0.943441,
		-0.247276, 0.934153, 0.257316,
		33.501965, 29.551914, 25.693983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269817, 29.251642, 25.243969>,  <33.675060, 28.898006, 25.513863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269817, 29.251642, 25.243969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076675, 29.475395, 25.513470>,  <33.960789, 29.609646, 25.675171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076675, 29.475395, 25.513470>,  <34.269817, 29.251642, 25.243969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076675, 29.475395, 25.513470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849715, 0.113255, 0.514935,
		0.211739, 0.821138, -0.530000,
		-0.482858, 0.559381, 0.673752,
		33.931820, 29.643209, 25.715595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801098, 29.790451, 25.350359>,  <34.269817, 29.251642, 25.243969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801098, 29.790451, 25.350359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543709, 29.798504, 25.656443>,  <34.389275, 29.803335, 25.840092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543709, 29.798504, 25.656443>,  <34.801098, 29.790451, 25.350359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543709, 29.798504, 25.656443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760611, 0.129299, 0.636202,
		-0.086134, 0.991401, -0.098511,
		-0.643469, 0.020130, 0.765208,
		34.350670, 29.804543, 25.886005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022106, 30.431980, 25.740528>,  <34.801098, 29.790451, 25.350359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022106, 30.431980, 25.740528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817814, 30.201172, 25.995462>,  <34.695240, 30.062687, 26.148424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.817814, 30.201172, 25.995462>,  <35.022106, 30.431980, 25.740528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817814, 30.201172, 25.995462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729413, 0.101586, 0.676488,
		-0.455094, 0.810386, 0.369005,
		-0.510731, -0.577023, 0.637338,
		34.664597, 30.028065, 26.186665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135731, 30.791153, 26.318897>,  <35.022106, 30.431980, 25.740528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135731, 30.791153, 26.318897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003159, 30.433470, 26.439260>,  <34.923615, 30.218861, 26.511478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003159, 30.433470, 26.439260>,  <35.135731, 30.791153, 26.318897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003159, 30.433470, 26.439260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660534, 0.007817, 0.750755,
		-0.673684, 0.447583, 0.588064,
		-0.331429, -0.894208, 0.300910,
		34.903728, 30.165207, 26.529533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189346, 30.819485, 27.087894>,  <35.135731, 30.791153, 26.318897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189346, 30.819485, 27.087894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187088, 30.433926, 26.981411>,  <35.185734, 30.202589, 26.917521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187088, 30.433926, 26.981411>,  <35.189346, 30.819485, 27.087894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187088, 30.433926, 26.981411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633154, -0.209498, 0.745135,
		-0.774005, -0.164344, 0.611479,
		-0.005646, -0.963899, -0.266207,
		35.185394, 30.144756, 26.901548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112331, 30.513563, 27.730188>,  <35.189346, 30.819485, 27.087894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112331, 30.513563, 27.730188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.261616, 30.263081, 27.456379>,  <35.351189, 30.112791, 27.292093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.261616, 30.263081, 27.456379>,  <35.112331, 30.513563, 27.730188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261616, 30.263081, 27.456379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701051, -0.292907, 0.650179,
		-0.607649, -0.722544, 0.329686,
		0.373215, -0.626207, -0.684525,
		35.373581, 30.075218, 27.251020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257160, 29.953554, 28.144428>,  <35.112331, 30.513563, 27.730188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257160, 29.953554, 28.144428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484192, 29.902788, 27.819036>,  <35.620411, 29.872328, 27.623802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484192, 29.902788, 27.819036>,  <35.257160, 29.953554, 28.144428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484192, 29.902788, 27.819036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774554, -0.252689, 0.579840,
		-0.279150, -0.959187, -0.045114,
		0.567575, -0.126919, -0.813480,
		35.654465, 29.864714, 27.574993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525784, 29.208740, 28.087240>,  <35.257160, 29.953554, 28.144428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525784, 29.208740, 28.087240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788822, 29.445526, 27.900846>,  <35.946644, 29.587597, 27.789009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788822, 29.445526, 27.900846>,  <35.525784, 29.208740, 28.087240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788822, 29.445526, 27.900846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746946, -0.431708, 0.505668,
		0.098168, -0.680592, -0.726057,
		0.657598, 0.591965, -0.465985,
		35.986103, 29.623116, 27.761051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023113, 28.767424, 27.899597>,  <35.525784, 29.208740, 28.087240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023113, 28.767424, 27.899597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212746, 29.115822, 27.848049>,  <36.326527, 29.324862, 27.817120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212746, 29.115822, 27.848049>,  <36.023113, 28.767424, 27.899597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212746, 29.115822, 27.848049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807216, -0.371502, 0.458681,
		0.351633, -0.321481, -0.879207,
		0.474084, 0.870997, -0.128872,
		36.354973, 29.377121, 27.809387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579426, 28.565132, 27.649099>,  <36.023113, 28.767424, 27.899597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579426, 28.565132, 27.649099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672508, 28.926273, 27.793715>,  <36.728359, 29.142958, 27.880484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672508, 28.926273, 27.793715>,  <36.579426, 28.565132, 27.649099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672508, 28.926273, 27.793715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843609, -0.372357, 0.386877,
		0.483913, 0.214967, -0.848303,
		0.232706, 0.902851, 0.361536,
		36.742321, 29.197128, 27.902176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271652, 28.602713, 27.404747>,  <36.579426, 28.565132, 27.649099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271652, 28.602713, 27.404747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236664, 28.885309, 27.685665>,  <37.215672, 29.054867, 27.854216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236664, 28.885309, 27.685665>,  <37.271652, 28.602713, 27.404747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236664, 28.885309, 27.685665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930117, -0.194515, 0.311522,
		0.356694, 0.680467, -0.640105,
		-0.087471, 0.706490, 0.702296,
		37.210423, 29.097256, 27.896355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812305, 29.012905, 27.295967>,  <37.271652, 28.602713, 27.404747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812305, 29.012905, 27.295967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705975, 29.081068, 27.675503>,  <37.642178, 29.121965, 27.903225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705975, 29.081068, 27.675503>,  <37.812305, 29.012905, 27.295967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705975, 29.081068, 27.675503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963929, 0.033372, 0.264058,
		0.013332, 0.984809, -0.173130,
		-0.265824, 0.170405, 0.948841,
		37.626228, 29.132189, 27.960155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306351, 29.565836, 27.494658>,  <37.812305, 29.012905, 27.295967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306351, 29.565836, 27.494658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137016, 29.418497, 27.825743>,  <38.035416, 29.330093, 28.024393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137016, 29.418497, 27.825743>,  <38.306351, 29.565836, 27.494658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137016, 29.418497, 27.825743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859645, 0.125096, 0.495340,
		-0.286000, 0.921234, 0.263689,
		-0.423337, -0.368346, 0.827712,
		38.010014, 29.307993, 28.074057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698807, 29.895821, 28.069027>,  <38.306351, 29.565836, 27.494658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698807, 29.895821, 28.069027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.518215, 29.566402, 28.206396>,  <38.409863, 29.368752, 28.288818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.518215, 29.566402, 28.206396>,  <38.698807, 29.895821, 28.069027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518215, 29.566402, 28.206396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863965, -0.307278, 0.398930,
		-0.223011, 0.476813, 0.850244,
		-0.451477, -0.823547, 0.343423,
		38.382771, 29.319338, 28.309423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925163, 29.814878, 28.659996>,  <38.698807, 29.895821, 28.069027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925163, 29.814878, 28.659996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793159, 29.443319, 28.592770>,  <38.713959, 29.220385, 28.552433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793159, 29.443319, 28.592770>,  <38.925163, 29.814878, 28.659996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793159, 29.443319, 28.592770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848445, -0.369916, 0.378554,
		-0.413808, -0.017670, 0.910193,
		-0.330006, -0.928897, -0.168066,
		38.694157, 29.164650, 28.542349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003201, 29.469034, 29.267855>,  <38.925163, 29.814878, 28.659996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003201, 29.469034, 29.267855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984322, 29.175482, 28.996799>,  <38.972996, 28.999350, 28.834167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984322, 29.175482, 28.996799>,  <39.003201, 29.469034, 29.267855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984322, 29.175482, 28.996799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804539, -0.430000, 0.409654,
		-0.592021, -0.525850, 0.610731,
		-0.047198, -0.733881, -0.677636,
		38.970161, 28.955317, 28.793509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087105, 28.871170, 29.616943>,  <39.003201, 29.469034, 29.267855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087105, 28.871170, 29.616943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201748, 28.770033, 29.247311>,  <39.270535, 28.709351, 29.025532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201748, 28.770033, 29.247311>,  <39.087105, 28.871170, 29.616943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201748, 28.770033, 29.247311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803938, -0.461157, 0.375524,
		-0.521096, -0.850532, 0.071102,
		0.286606, -0.252845, -0.924081,
		39.287731, 28.694180, 28.970087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287663, 28.124933, 29.732969>,  <39.087105, 28.871170, 29.616943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287663, 28.124933, 29.732969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416779, 28.236176, 29.371094>,  <39.494247, 28.302921, 29.153969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416779, 28.236176, 29.371094>,  <39.287663, 28.124933, 29.732969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416779, 28.236176, 29.371094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813588, -0.569938, 0.115088,
		-0.483610, -0.773194, -0.410235,
		0.322794, 0.278105, -0.904689,
		39.513618, 28.319607, 29.099688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519863, 27.603079, 29.392990>,  <39.287663, 28.124933, 29.732969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519863, 27.603079, 29.392990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726650, 27.890955, 29.207607>,  <39.850723, 28.063681, 29.096378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726650, 27.890955, 29.207607>,  <39.519863, 27.603079, 29.392990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726650, 27.890955, 29.207607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854279, -0.468148, 0.225929,
		-0.054367, -0.512719, -0.856834,
		0.516963, 0.719692, -0.463457,
		39.881741, 28.106863, 29.068571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002857, 27.242449, 29.047592>,  <39.519863, 27.603079, 29.392990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002857, 27.242449, 29.047592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135498, 27.613304, 29.117392>,  <40.215084, 27.835817, 29.159271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135498, 27.613304, 29.117392>,  <40.002857, 27.242449, 29.047592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135498, 27.613304, 29.117392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880657, -0.370541, 0.295198,
		0.338348, 0.055782, -0.939366,
		0.331607, 0.927139, 0.174497,
		40.234982, 27.891445, 29.169741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963894, 26.508486, 29.079483>,  <40.002857, 27.242449, 29.047592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963894, 26.508486, 29.079483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102749, 26.170393, 28.916965>,  <40.186062, 25.967537, 28.819454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102749, 26.170393, 28.916965>,  <39.963894, 26.508486, 29.079483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102749, 26.170393, 28.916965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766524, -0.006123, -0.642186,
		0.540309, 0.534363, -0.650017,
		0.347141, -0.845233, -0.406294,
		40.206890, 25.916822, 28.795076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058754, 26.549976, 28.276159>,  <39.963894, 26.508486, 29.079483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058754, 26.549976, 28.276159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994564, 26.171402, 28.388239>,  <39.956051, 25.944258, 28.455486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994564, 26.171402, 28.388239>,  <40.058754, 26.549976, 28.276159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994564, 26.171402, 28.388239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757619, -0.063853, -0.649566,
		0.632663, -0.316520, -0.706790,
		-0.160470, -0.946435, 0.280199,
		39.946423, 25.887472, 28.472298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911934, 26.220165, 27.647387>,  <40.058754, 26.549976, 28.276159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911934, 26.220165, 27.647387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.773006, 25.987093, 27.941286>,  <39.689651, 25.847250, 28.117626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.773006, 25.987093, 27.941286>,  <39.911934, 26.220165, 27.647387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773006, 25.987093, 27.941286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890254, -0.041314, -0.453587,
		0.294652, -0.811650, -0.504385,
		-0.347315, -0.582681, 0.734748,
		39.668812, 25.812288, 28.161711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844116, 25.554672, 27.358913>,  <39.911934, 26.220165, 27.647387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844116, 25.554672, 27.358913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.599281, 25.554991, 27.675228>,  <39.452381, 25.555182, 27.865017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.599281, 25.554991, 27.675228>,  <39.844116, 25.554672, 27.358913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599281, 25.554991, 27.675228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726809, -0.394604, -0.562172,
		0.311600, -0.918851, 0.242113,
		-0.612091, 0.000797, 0.790787,
		39.415653, 25.555229, 27.912464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392033, 25.082912, 27.267193>,  <39.844116, 25.554672, 27.358913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392033, 25.082912, 27.267193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162945, 25.253086, 27.547478>,  <39.025490, 25.355190, 27.715649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162945, 25.253086, 27.547478>,  <39.392033, 25.082912, 27.267193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162945, 25.253086, 27.547478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819744, -0.300475, -0.487580,
		0.003114, -0.853652, 0.520835,
		-0.572721, 0.425433, 0.700712,
		38.991127, 25.380716, 27.757690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837421, 24.623030, 27.386679>,  <39.392033, 25.082912, 27.267193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837421, 24.623030, 27.386679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683094, 24.942482, 27.571430>,  <38.590496, 25.134153, 27.682281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683094, 24.942482, 27.571430>,  <38.837421, 24.623030, 27.386679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683094, 24.942482, 27.571430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900133, -0.216105, -0.378233,
		-0.202256, -0.561679, 0.802253,
		-0.385816, 0.798634, 0.461877,
		38.567348, 25.182072, 27.709993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302330, 24.355186, 27.671869>,  <38.837421, 24.623030, 27.386679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302330, 24.355186, 27.671869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205830, 24.742537, 27.646410>,  <38.147930, 24.974947, 27.631134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205830, 24.742537, 27.646410>,  <38.302330, 24.355186, 27.671869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205830, 24.742537, 27.646410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882071, -0.246153, -0.401696,
		-0.404659, -0.040767, 0.913559,
		-0.241251, 0.968373, -0.063649,
		38.133453, 25.033049, 27.627316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666355, 24.352072, 27.995667>,  <38.302330, 24.355186, 27.671869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666355, 24.352072, 27.995667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695183, 24.666485, 27.750080>,  <37.712479, 24.855133, 27.602728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695183, 24.666485, 27.750080>,  <37.666355, 24.352072, 27.995667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695183, 24.666485, 27.750080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946326, -0.140569, -0.291046,
		-0.315077, 0.601989, 0.733713,
		0.072069, 0.786034, -0.613968,
		37.716805, 24.902294, 27.565889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139603, 24.817249, 28.268650>,  <37.666355, 24.352072, 27.995667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139603, 24.817249, 28.268650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223583, 24.900076, 27.886436>,  <37.273972, 24.949772, 27.657108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223583, 24.900076, 27.886436>,  <37.139603, 24.817249, 28.268650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223583, 24.900076, 27.886436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977166, 0.077121, -0.197988,
		0.032696, 0.975283, 0.218528,
		0.209947, 0.207065, -0.955535,
		37.286568, 24.962194, 27.599775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746868, 25.335333, 28.136322>,  <37.139603, 24.817249, 28.268650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746868, 25.335333, 28.136322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844894, 25.228615, 27.763493>,  <36.903709, 25.164583, 27.539795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844894, 25.228615, 27.763493>,  <36.746868, 25.335333, 28.136322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844894, 25.228615, 27.763493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874572, 0.354074, -0.331293,
		0.418412, 0.896354, -0.146562,
		0.245062, -0.266796, -0.932075,
		36.918411, 25.148577, 27.483870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524502, 25.923447, 27.638964>,  <36.746868, 25.335333, 28.136322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524502, 25.923447, 27.638964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569599, 25.599440, 27.408777>,  <36.596657, 25.405035, 27.270666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569599, 25.599440, 27.408777>,  <36.524502, 25.923447, 27.638964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569599, 25.599440, 27.408777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889167, 0.176246, -0.422279,
		0.443477, 0.559292, -0.700372,
		0.112740, -0.810018, -0.575465,
		36.603420, 25.356434, 27.236137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188919, 26.098259, 26.874496>,  <36.524502, 25.923447, 27.638964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188919, 26.098259, 26.874496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206306, 25.698927, 26.889696>,  <36.216740, 25.459328, 26.898817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206306, 25.698927, 26.889696>,  <36.188919, 26.098259, 26.874496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206306, 25.698927, 26.889696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859051, -0.056770, -0.508733,
		0.510041, -0.010529, -0.860085,
		0.043470, -0.998331, 0.038000,
		36.219349, 25.399427, 26.901096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179276, 25.880262, 26.182167>,  <36.188919, 26.098259, 26.874496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179276, 25.880262, 26.182167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058514, 25.562134, 26.392429>,  <35.986057, 25.371256, 26.518587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058514, 25.562134, 26.392429>,  <36.179276, 25.880262, 26.182167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058514, 25.562134, 26.392429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889203, 0.036103, -0.456085,
		0.343758, -0.605110, -0.718104,
		-0.301908, -0.795323, 0.525655,
		35.967941, 25.323538, 26.550125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012184, 25.370882, 25.764286>,  <36.179276, 25.880262, 26.182167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012184, 25.370882, 25.764286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797123, 25.295877, 26.093105>,  <35.668083, 25.250875, 26.290398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797123, 25.295877, 26.093105>,  <36.012184, 25.370882, 25.764286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797123, 25.295877, 26.093105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839740, 0.206848, -0.502046,
		-0.075901, -0.960236, -0.268673,
		-0.537658, -0.187509, 0.822049,
		35.635826, 25.239624, 26.339720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447250, 24.978987, 25.560244>,  <36.012184, 25.370882, 25.764286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447250, 24.978987, 25.560244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312332, 25.113522, 25.911949>,  <35.231380, 25.194242, 26.122972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312332, 25.113522, 25.911949>,  <35.447250, 24.978987, 25.560244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312332, 25.113522, 25.911949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905270, 0.140379, -0.400973,
		-0.258293, -0.931220, 0.257128,
		-0.337298, 0.336339, 0.879264,
		35.211143, 25.214422, 26.175728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802906, 24.638668, 25.563320>,  <35.447250, 24.978987, 25.560244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802906, 24.638668, 25.563320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792210, 24.938005, 25.828428>,  <34.785793, 25.117609, 25.987494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792210, 24.938005, 25.828428>,  <34.802906, 24.638668, 25.563320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792210, 24.938005, 25.828428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846463, 0.335746, -0.413250,
		-0.531776, -0.572061, 0.624469,
		-0.026741, 0.748346, 0.662770,
		34.784187, 25.162510, 26.027260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158855, 24.702845, 25.709772>,  <34.802906, 24.638668, 25.563320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158855, 24.702845, 25.709772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292118, 25.067490, 25.806086>,  <34.372074, 25.286276, 25.863873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292118, 25.067490, 25.806086>,  <34.158855, 24.702845, 25.709772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292118, 25.067490, 25.806086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744735, 0.411034, -0.525757,
		-0.578256, -0.004162, 0.815845,
		0.333152, 0.911610, 0.240783,
		34.392063, 25.340973, 25.878321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608936, 25.115114, 26.042368>,  <34.158855, 24.702845, 25.709772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608936, 25.115114, 26.042368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878635, 25.366114, 25.886602>,  <34.040455, 25.516712, 25.793142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878635, 25.366114, 25.886602>,  <33.608936, 25.115114, 26.042368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878635, 25.366114, 25.886602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738389, 0.582275, -0.340200,
		0.013272, 0.516917, 0.855933,
		0.674244, 0.627497, -0.389414,
		34.080910, 25.554363, 25.769777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429039, 25.876329, 26.234396>,  <33.608936, 25.115114, 26.042368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429039, 25.876329, 26.234396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690239, 25.914421, 25.933857>,  <33.846958, 25.937275, 25.753534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690239, 25.914421, 25.933857>,  <33.429039, 25.876329, 26.234396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690239, 25.914421, 25.933857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556235, 0.733587, -0.390452,
		0.513996, 0.672891, 0.532002,
		0.653001, 0.095228, -0.751346,
		33.886139, 25.942989, 25.708452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.418602, 26.571577, 26.095860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.580112, 26.410994, 25.767033>,  <33.677017, 26.314644, 25.569736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.580112, 26.410994, 25.767033>,  <33.418602, 26.571577, 26.095860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580112, 26.410994, 25.767033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385897, 0.739985, -0.550913,
		0.829488, 0.539678, 0.143865,
		0.403774, -0.401458, -0.822069,
		33.701244, 26.290556, 25.520412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748398, 27.123848, 25.653492>,  <33.418602, 26.571577, 26.095860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748398, 27.123848, 25.653492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.677654, 26.808390, 25.417948>,  <33.635208, 26.619114, 25.276621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.677654, 26.808390, 25.417948>,  <33.748398, 27.123848, 25.653492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677654, 26.808390, 25.417948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641990, 0.545935, -0.538335,
		0.746035, 0.282831, -0.602858,
		-0.176863, -0.788646, -0.588861,
		33.624596, 26.571796, 25.241289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803398, 27.352247, 24.999374>,  <33.748398, 27.123848, 25.653492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803398, 27.352247, 24.999374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582836, 27.026127, 24.928682>,  <33.450497, 26.830454, 24.886267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582836, 27.026127, 24.928682>,  <33.803398, 27.352247, 24.999374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582836, 27.026127, 24.928682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611162, 0.538986, -0.579633,
		0.567831, -0.211604, -0.795482,
		-0.551407, -0.815302, -0.176729,
		33.417416, 26.781536, 24.875664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734226, 27.398544, 24.330750>,  <33.803398, 27.352247, 24.999374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734226, 27.398544, 24.330750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445343, 27.161716, 24.473780>,  <33.272011, 27.019619, 24.559597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445343, 27.161716, 24.473780>,  <33.734226, 27.398544, 24.330750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445343, 27.161716, 24.473780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691437, 0.604545, -0.395526,
		0.018009, -0.532895, -0.845990,
		-0.722212, -0.592072, 0.357576,
		33.228680, 26.984095, 24.581053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210403, 27.469603, 23.843969>,  <33.734226, 27.398544, 24.330750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210403, 27.469603, 23.843969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971786, 27.308979, 24.121929>,  <32.828617, 27.212605, 24.288704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971786, 27.308979, 24.121929>,  <33.210403, 27.469603, 23.843969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971786, 27.308979, 24.121929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734876, 0.621353, -0.271804,
		-0.322631, -0.672808, -0.665762,
		-0.596545, -0.401560, 0.694898,
		32.792824, 27.188511, 24.330399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577633, 27.164518, 23.500307>,  <33.210403, 27.469603, 23.843969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577633, 27.164518, 23.500307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.457130, 27.232529, 23.875612>,  <32.384827, 27.273335, 24.100796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.457130, 27.232529, 23.875612>,  <32.577633, 27.164518, 23.500307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457130, 27.232529, 23.875612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825831, 0.445396, -0.345870,
		-0.476704, -0.879042, 0.006232,
		-0.301258, 0.170024, 0.938262,
		32.366753, 27.283535, 24.157091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907721, 27.049868, 23.505175>,  <32.577633, 27.164518, 23.500307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907721, 27.049868, 23.505175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929495, 27.249176, 23.851299>,  <31.942560, 27.368761, 24.058973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929495, 27.249176, 23.851299>,  <31.907721, 27.049868, 23.505175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929495, 27.249176, 23.851299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898493, 0.402492, -0.175242,
		-0.435599, -0.767937, 0.469603,
		0.054437, 0.498270, 0.865311,
		31.945826, 27.398657, 24.110893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273167, 26.920931, 23.912731>,  <31.907721, 27.049868, 23.505175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273167, 26.920931, 23.912731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.422476, 27.271494, 24.034435>,  <31.512060, 27.481833, 24.107458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.422476, 27.271494, 24.034435>,  <31.273167, 26.920931, 23.912731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422476, 27.271494, 24.034435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919422, 0.393244, -0.004765,
		-0.123825, -0.277965, 0.952577,
		0.373271, 0.876410, 0.304261,
		31.534456, 27.534416, 24.125713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858381, 27.140928, 24.469841>,  <31.273167, 26.920931, 23.912731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858381, 27.140928, 24.469841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.054813, 27.468054, 24.349827>,  <31.172672, 27.664330, 24.277819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.054813, 27.468054, 24.349827>,  <30.858381, 27.140928, 24.469841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054813, 27.468054, 24.349827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835078, 0.540003, 0.105084,
		0.247958, 0.198948, 0.948123,
		0.491083, 0.817812, -0.300035,
		31.202139, 27.713398, 24.259817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493162, 27.786930, 24.825619>,  <30.858381, 27.140928, 24.469841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493162, 27.786930, 24.825619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710569, 27.947676, 24.530838>,  <30.841013, 28.044123, 24.353970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710569, 27.947676, 24.530838>,  <30.493162, 27.786930, 24.825619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710569, 27.947676, 24.530838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678828, 0.726853, -0.104295,
		0.493742, 0.556948, 0.667853,
		0.543518, 0.401862, -0.736950,
		30.873625, 28.068233, 24.309753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277475, 28.490471, 24.798132>,  <30.493162, 27.786930, 24.825619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277475, 28.490471, 24.798132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.468885, 28.458818, 24.448332>,  <30.583731, 28.439827, 24.238451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.468885, 28.458818, 24.448332>,  <30.277475, 28.490471, 24.798132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468885, 28.458818, 24.448332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679530, 0.597373, -0.425893,
		0.556105, 0.798050, 0.232085,
		0.478525, -0.079133, -0.874501,
		30.612442, 28.435080, 24.185982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262819, 29.089300, 24.530594>,  <30.277475, 28.490471, 24.798132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262819, 29.089300, 24.530594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.328796, 28.860323, 24.209320>,  <30.368382, 28.722937, 24.016556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.328796, 28.860323, 24.209320>,  <30.262819, 29.089300, 24.530594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328796, 28.860323, 24.209320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761327, 0.443816, -0.472660,
		0.627037, 0.689448, -0.362611,
		0.164942, -0.572441, -0.803184,
		30.378279, 28.688591, 23.968365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206480, 29.556189, 23.945644>,  <30.262819, 29.089300, 24.530594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206480, 29.556189, 23.945644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.105562, 29.193853, 23.809526>,  <30.045012, 28.976452, 23.727856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.105562, 29.193853, 23.809526>,  <30.206480, 29.556189, 23.945644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105562, 29.193853, 23.809526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485481, 0.422702, -0.765266,
		0.837053, -0.027863, -0.546412,
		-0.252292, -0.905840, -0.340297,
		30.029875, 28.922102, 23.707438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171841, 29.724613, 23.306919>,  <30.206480, 29.556189, 23.945644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171841, 29.724613, 23.306919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.015516, 29.358271, 23.270102>,  <29.921722, 29.138464, 23.248011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.015516, 29.358271, 23.270102>,  <30.171841, 29.724613, 23.306919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015516, 29.358271, 23.270102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641659, 0.342760, -0.686141,
		0.659956, -0.209090, -0.721622,
		-0.390809, -0.915859, -0.092042,
		29.898273, 29.083513, 23.242489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094650, 29.699345, 22.665977>,  <30.171841, 29.724613, 23.306919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094650, 29.699345, 22.665977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.842735, 29.417210, 22.796127>,  <29.691586, 29.247929, 22.874218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.842735, 29.417210, 22.796127>,  <30.094650, 29.699345, 22.665977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842735, 29.417210, 22.796127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643522, 0.239179, -0.727099,
		0.435025, -0.667305, -0.604531,
		-0.629788, -0.705335, 0.325376,
		29.653799, 29.205608, 22.893740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728451, 29.560930, 22.052334>,  <30.094650, 29.699345, 22.665977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728451, 29.560930, 22.052334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515985, 29.397137, 22.349033>,  <29.388506, 29.298861, 22.527054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515985, 29.397137, 22.349033>,  <29.728451, 29.560930, 22.052334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515985, 29.397137, 22.349033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846383, 0.216368, -0.486643,
		0.038780, -0.886290, -0.461504,
		-0.531161, -0.409481, 0.741750,
		29.356638, 29.274292, 22.571558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194988, 28.949484, 21.728603>,  <29.728451, 29.560930, 22.052334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194988, 28.949484, 21.728603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.078043, 29.104313, 22.078392>,  <29.007875, 29.197210, 22.288265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.078043, 29.104313, 22.078392>,  <29.194988, 28.949484, 21.728603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078043, 29.104313, 22.078392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940846, 0.047344, -0.335511,
		-0.171268, -0.920833, 0.350334,
		-0.292364, 0.387073, 0.874470,
		28.990334, 29.220434, 22.340733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569635, 28.568453, 21.887976>,  <29.194988, 28.949484, 21.728603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569635, 28.568453, 21.887976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.560465, 28.910248, 22.095562>,  <28.554962, 29.115324, 22.220114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.560465, 28.910248, 22.095562>,  <28.569635, 28.568453, 21.887976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560465, 28.910248, 22.095562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905725, 0.202012, -0.372629,
		-0.423245, -0.478584, 0.769299,
		-0.022926, 0.854487, 0.518966,
		28.553587, 29.166594, 22.251251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912048, 28.621225, 22.149326>,  <28.569635, 28.568453, 21.887976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912048, 28.621225, 22.149326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.054419, 28.994761, 22.163563>,  <28.139841, 29.218882, 22.172104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.054419, 28.994761, 22.163563>,  <27.912048, 28.621225, 22.149326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054419, 28.994761, 22.163563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845589, 0.338039, -0.413169,
		-0.397863, 0.116964, 0.909959,
		0.355927, 0.933836, 0.035590,
		28.161198, 29.274912, 22.174240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276352, 28.977087, 22.087160>,  <27.912048, 28.621225, 22.149326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276352, 28.977087, 22.087160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.564583, 29.247322, 22.024748>,  <27.737522, 29.409464, 21.987301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.564583, 29.247322, 22.024748>,  <27.276352, 28.977087, 22.087160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564583, 29.247322, 22.024748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627335, 0.539377, -0.561714,
		-0.295328, 0.502643, 0.812485,
		0.720577, 0.675590, -0.156033,
		27.780756, 29.449999, 21.977938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926498, 29.577284, 22.084345>,  <27.276352, 28.977087, 22.087160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926498, 29.577284, 22.084345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.268787, 29.686941, 21.908806>,  <27.474161, 29.752735, 21.803482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.268787, 29.686941, 21.908806>,  <26.926498, 29.577284, 22.084345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268787, 29.686941, 21.908806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505073, 0.626834, -0.593280,
		0.112442, 0.729332, 0.674856,
		0.855721, 0.274142, -0.438848,
		27.525503, 29.769184, 21.777151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999008, 30.278461, 22.128370>,  <26.926498, 29.577284, 22.084345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999008, 30.278461, 22.128370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.210897, 30.176046, 21.804930>,  <27.338032, 30.114597, 21.610865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.210897, 30.176046, 21.804930>,  <26.999008, 30.278461, 22.128370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210897, 30.176046, 21.804930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433511, 0.737686, -0.517578,
		0.729015, 0.624711, 0.279774,
		0.529723, -0.256037, -0.808603,
		27.369814, 30.099236, 21.562349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152014, 30.920349, 21.840008>,  <26.999008, 30.278461, 22.128370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152014, 30.920349, 21.840008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.133806, 30.615593, 21.581566>,  <27.122883, 30.432739, 21.426500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.133806, 30.615593, 21.581566>,  <27.152014, 30.920349, 21.840008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133806, 30.615593, 21.581566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602440, 0.536865, -0.590629,
		0.796865, 0.362357, -0.483429,
		-0.045518, -0.761888, -0.646107,
		27.120152, 30.387026, 21.387733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368374, 31.388577, 21.289528>,  <27.152014, 30.920349, 21.840008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368374, 31.388577, 21.289528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.420488, 31.757465, 21.143908>,  <27.451757, 31.978798, 21.056536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.420488, 31.757465, 21.143908>,  <27.368374, 31.388577, 21.289528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420488, 31.757465, 21.143908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353251, 0.299907, 0.886154,
		0.926412, -0.244056, -0.286702,
		0.130287, 0.922222, -0.364050,
		27.459574, 32.034130, 21.034693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091326, 31.499802, 21.223789>,  <27.368374, 31.388577, 21.289528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091326, 31.499802, 21.223789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.869654, 31.823555, 21.301544>,  <27.736650, 32.017807, 21.348198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.869654, 31.823555, 21.301544>,  <28.091326, 31.499802, 21.223789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869654, 31.823555, 21.301544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600853, 0.227346, 0.766348,
		0.576075, 0.541493, -0.612309,
		-0.554178, 0.809382, 0.194389,
		27.703400, 32.066368, 21.359861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544798, 32.083641, 21.171398>,  <28.091326, 31.499802, 21.223789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544798, 32.083641, 21.171398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.243206, 32.172226, 21.418774>,  <28.062250, 32.225376, 21.567198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.243206, 32.172226, 21.418774>,  <28.544798, 32.083641, 21.171398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243206, 32.172226, 21.418774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650694, 0.122742, 0.749354,
		0.090046, 0.967413, -0.236650,
		-0.753982, 0.221463, 0.618438,
		28.017012, 32.238667, 21.604305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736221, 32.730461, 21.406118>,  <28.544798, 32.083641, 21.171398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736221, 32.730461, 21.406118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.477591, 32.588108, 21.676018>,  <28.322412, 32.502697, 21.837957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.477591, 32.588108, 21.676018>,  <28.736221, 32.730461, 21.406118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477591, 32.588108, 21.676018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629845, 0.249977, 0.735396,
		-0.430385, 0.900477, 0.062520,
		-0.646579, -0.355882, 0.674747,
		28.283617, 32.481342, 21.878443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886366, 33.105930, 21.946646>,  <28.736221, 32.730461, 21.406118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886366, 33.105930, 21.946646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.683155, 32.793026, 22.090855>,  <28.561228, 32.605282, 22.177380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.683155, 32.793026, 22.090855>,  <28.886366, 33.105930, 21.946646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683155, 32.793026, 22.090855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599182, -0.020269, 0.800356,
		-0.618781, 0.622621, 0.479014,
		-0.508027, -0.782261, 0.360521,
		28.530746, 32.558346, 22.199011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771656, 33.222164, 22.730837>,  <28.886366, 33.105930, 21.946646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771656, 33.222164, 22.730837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730965, 32.835255, 22.637850>,  <28.706551, 32.603111, 22.582058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730965, 32.835255, 22.637850>,  <28.771656, 33.222164, 22.730837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730965, 32.835255, 22.637850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573426, -0.247966, 0.780830,
		-0.812917, -0.053869, 0.579883,
		-0.101729, -0.967270, -0.232465,
		28.700445, 32.545074, 22.568110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936077, 33.001900, 23.287369>,  <28.771656, 33.222164, 22.730837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936077, 33.001900, 23.287369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.955179, 32.666405, 23.070393>,  <28.966640, 32.465107, 22.940207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.955179, 32.666405, 23.070393>,  <28.936077, 33.001900, 23.287369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955179, 32.666405, 23.070393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584872, -0.416748, 0.695878,
		-0.809719, -0.350487, 0.470653,
		0.047753, -0.838737, -0.542439,
		28.969505, 32.414783, 22.907661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980734, 32.493603, 23.726921>,  <28.936077, 33.001900, 23.287369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980734, 32.493603, 23.726921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125580, 32.314331, 23.399994>,  <29.212486, 32.206768, 23.203838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125580, 32.314331, 23.399994>,  <28.980734, 32.493603, 23.726921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125580, 32.314331, 23.399994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651925, -0.504934, 0.565717,
		-0.666234, -0.737684, 0.109336,
		0.362113, -0.448179, -0.817319,
		29.234213, 32.179878, 23.154799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056475, 31.796501, 23.920488>,  <28.980734, 32.493603, 23.726921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056475, 31.796501, 23.920488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.278399, 31.816988, 23.588329>,  <29.411552, 31.829281, 23.389034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.278399, 31.816988, 23.588329>,  <29.056475, 31.796501, 23.920488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278399, 31.816988, 23.588329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682365, -0.599043, 0.418958,
		-0.475985, -0.799077, -0.367306,
		0.554812, 0.051220, -0.830398,
		29.444841, 31.832354, 23.339211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216230, 31.081427, 23.795355>,  <29.056475, 31.796501, 23.920488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216230, 31.081427, 23.795355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.479322, 31.313637, 23.603361>,  <29.637178, 31.452963, 23.488165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.479322, 31.313637, 23.603361>,  <29.216230, 31.081427, 23.795355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479322, 31.313637, 23.603361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743086, -0.604408, 0.287253,
		-0.123348, -0.545603, -0.828916,
		0.657730, 0.580524, -0.479983,
		29.676641, 31.487793, 23.459366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642027, 30.745037, 23.284176>,  <29.216230, 31.081427, 23.795355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642027, 30.745037, 23.284176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868414, 31.056995, 23.391090>,  <30.004246, 31.244171, 23.455240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868414, 31.056995, 23.391090>,  <29.642027, 30.745037, 23.284176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868414, 31.056995, 23.391090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741128, -0.623313, 0.249419,
		0.361125, 0.056931, -0.930778,
		0.565967, 0.779897, 0.267287,
		30.038204, 31.290964, 23.471277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296497, 30.517368, 23.083912>,  <29.642027, 30.745037, 23.284176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296497, 30.517368, 23.083912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395514, 30.831451, 23.310951>,  <30.454924, 31.019901, 23.447176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395514, 30.831451, 23.310951>,  <30.296497, 30.517368, 23.083912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395514, 30.831451, 23.310951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748551, -0.526938, 0.402503,
		0.615139, 0.325242, -0.718207,
		0.247540, 0.785210, 0.567600,
		30.469776, 31.067015, 23.481232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991947, 30.580883, 23.052456>,  <30.296497, 30.517368, 23.083912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991947, 30.580883, 23.052456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871016, 30.759449, 23.389338>,  <30.798456, 30.866589, 23.591467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871016, 30.759449, 23.389338>,  <30.991947, 30.580883, 23.052456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871016, 30.759449, 23.389338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623588, -0.575620, 0.528961,
		0.720927, 0.685109, -0.104353,
		-0.302328, 0.446415, 0.842206,
		30.780317, 30.893373, 23.642000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610355, 30.701077, 23.380423>,  <30.991947, 30.580883, 23.052456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610355, 30.701077, 23.380423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357798, 30.742958, 23.687767>,  <31.206263, 30.768087, 23.872173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357798, 30.742958, 23.687767>,  <31.610355, 30.701077, 23.380423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357798, 30.742958, 23.687767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694778, -0.363700, 0.620488,
		0.344420, 0.925613, 0.156893,
		-0.631394, 0.104702, 0.768362,
		31.168379, 30.774368, 23.918276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921206, 31.049023, 23.873007>,  <31.610355, 30.701077, 23.380423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921206, 31.049023, 23.873007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640385, 30.847097, 24.073919>,  <31.471891, 30.725943, 24.194468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640385, 30.847097, 24.073919>,  <31.921206, 31.049023, 23.873007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640385, 30.847097, 24.073919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698705, -0.352011, 0.622815,
		-0.137596, 0.788196, 0.599846,
		-0.702053, -0.504812, 0.502281,
		31.429770, 30.695654, 24.224604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950394, 31.175251, 24.625618>,  <31.921206, 31.049023, 23.873007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950394, 31.175251, 24.625618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.749542, 30.829908, 24.605682>,  <31.629030, 30.622704, 24.593721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.749542, 30.829908, 24.605682>,  <31.950394, 31.175251, 24.625618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749542, 30.829908, 24.605682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563058, -0.370132, 0.738896,
		-0.656377, 0.342959, 0.671973,
		-0.502130, -0.863355, -0.049840,
		31.598904, 30.570902, 24.590731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983858, 30.906801, 25.299627>,  <31.950394, 31.175251, 24.625618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983858, 30.906801, 25.299627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873951, 30.571507, 25.111217>,  <31.808006, 30.370331, 24.998171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873951, 30.571507, 25.111217>,  <31.983858, 30.906801, 25.299627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873951, 30.571507, 25.111217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761432, -0.488832, 0.425751,
		-0.587132, -0.241671, 0.772574,
		-0.274767, -0.838235, -0.471025,
		31.791521, 30.320036, 24.969910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850664, 30.482012, 25.808132>,  <31.983858, 30.906801, 25.299627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850664, 30.482012, 25.808132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939585, 30.254612, 25.491301>,  <31.992937, 30.118172, 25.301201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939585, 30.254612, 25.491301>,  <31.850664, 30.482012, 25.808132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939585, 30.254612, 25.491301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692415, -0.479892, 0.538763,
		-0.686399, -0.668216, 0.286956,
		0.222302, -0.568499, -0.792080,
		32.006275, 30.084063, 25.253677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023151, 29.847919, 26.101812>,  <31.850664, 30.482012, 25.808132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023151, 29.847919, 26.101812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.165459, 29.836931, 25.728146>,  <32.250843, 29.830338, 25.503944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.165459, 29.836931, 25.728146>,  <32.023151, 29.847919, 26.101812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165459, 29.836931, 25.728146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883075, -0.317344, 0.345645,
		-0.305947, -0.947913, -0.088646,
		0.355773, -0.027468, -0.934169,
		32.272190, 29.828690, 25.447895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368408, 29.149940, 26.115820>,  <32.023151, 29.847919, 26.101812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368408, 29.149940, 26.115820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514561, 29.398565, 25.838646>,  <32.602253, 29.547739, 25.672342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514561, 29.398565, 25.838646>,  <32.368408, 29.149940, 26.115820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514561, 29.398565, 25.838646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895007, -0.029984, 0.445043,
		0.255844, -0.782792, -0.567258,
		0.365384, 0.621561, -0.692933,
		32.624176, 29.585033, 25.630766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032177, 28.876690, 25.882223>,  <32.368408, 29.149940, 26.115820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032177, 28.876690, 25.882223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040981, 29.262102, 25.775549>,  <33.046265, 29.493349, 25.711544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040981, 29.262102, 25.775549>,  <33.032177, 28.876690, 25.882223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040981, 29.262102, 25.775549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963966, 0.050279, 0.261230,
		0.265112, -0.262825, -0.927706,
		0.022013, 0.963533, -0.266684,
		33.047585, 29.551163, 25.695543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.529957, 24.369867, 27.323397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.663376, 24.679785, 27.108572>,  <35.743427, 24.865736, 26.979677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.663376, 24.679785, 27.108572>,  <35.529957, 24.369867, 27.323397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663376, 24.679785, 27.108572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932866, -0.189058, 0.306623,
		0.136034, -0.603282, -0.785841,
		0.333550, 0.774796, -0.537063,
		35.763439, 24.912224, 26.947453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052826, 24.096394, 26.892302>,  <35.529957, 24.369867, 27.323397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052826, 24.096394, 26.892302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107220, 24.491957, 26.916212>,  <36.139858, 24.729294, 26.930559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107220, 24.491957, 26.916212>,  <36.052826, 24.096394, 26.892302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107220, 24.491957, 26.916212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958724, -0.146565, 0.243654,
		0.249712, 0.024177, -0.968018,
		0.135987, 0.988906, 0.059778,
		36.148014, 24.788628, 26.934145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585136, 24.238897, 26.519999>,  <36.052826, 24.096394, 26.892302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585136, 24.238897, 26.519999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.597931, 24.588455, 26.714024>,  <36.605606, 24.798189, 26.830439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.597931, 24.588455, 26.714024>,  <36.585136, 24.238897, 26.519999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597931, 24.588455, 26.714024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966026, -0.151553, 0.209344,
		0.256458, 0.461888, -0.849052,
		0.031983, 0.873894, 0.485063,
		36.607525, 24.850624, 26.859543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254234, 24.646307, 26.311295>,  <36.585136, 24.238897, 26.519999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254234, 24.646307, 26.311295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144077, 24.824718, 26.651932>,  <37.077984, 24.931767, 26.856314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144077, 24.824718, 26.651932>,  <37.254234, 24.646307, 26.311295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144077, 24.824718, 26.651932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961330, 0.126304, 0.244729,
		0.001596, 0.886061, -0.463566,
		-0.275395, 0.446031, 0.851595,
		37.061459, 24.958529, 26.907410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564819, 25.262499, 26.361631>,  <37.254234, 24.646307, 26.311295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564819, 25.262499, 26.361631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.473545, 25.143658, 26.732504>,  <37.418781, 25.072353, 26.955027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.473545, 25.143658, 26.732504>,  <37.564819, 25.262499, 26.361631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473545, 25.143658, 26.732504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956297, 0.110443, 0.270737,
		-0.182837, 0.948437, 0.258916,
		-0.228181, -0.297101, 0.927181,
		37.405090, 25.054527, 27.010658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809467, 25.892159, 26.771936>,  <37.564819, 25.262499, 26.361631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809467, 25.892159, 26.771936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744946, 25.597677, 27.034838>,  <37.706230, 25.420988, 27.192579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744946, 25.597677, 27.034838>,  <37.809467, 25.892159, 26.771936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744946, 25.597677, 27.034838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903599, 0.157625, 0.398325,
		-0.396849, 0.658147, 0.639808,
		-0.161307, -0.736204, 0.657254,
		37.696552, 25.376816, 27.232014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864460, 26.247416, 27.462566>,  <37.809467, 25.892159, 26.771936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864460, 26.247416, 27.462566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.937061, 25.857298, 27.512936>,  <37.980621, 25.623228, 27.543158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.937061, 25.857298, 27.512936>,  <37.864460, 26.247416, 27.462566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937061, 25.857298, 27.512936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904422, 0.215832, 0.368019,
		-0.386105, 0.047090, 0.921252,
		0.181505, -0.975294, 0.125923,
		37.991512, 25.564709, 27.550713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078022, 26.314533, 28.073446>,  <37.864460, 26.247416, 27.462566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078022, 26.314533, 28.073446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213997, 25.957567, 27.954762>,  <38.295582, 25.743387, 27.883551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213997, 25.957567, 27.954762>,  <38.078022, 26.314533, 28.073446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213997, 25.957567, 27.954762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880650, 0.191357, 0.433403,
		-0.329996, -0.408631, 0.850954,
		0.339938, -0.892414, -0.296714,
		38.315979, 25.689842, 27.865747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264240, 25.913897, 28.738895>,  <38.078022, 26.314533, 28.073446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264240, 25.913897, 28.738895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.483833, 25.754009, 28.445272>,  <38.615589, 25.658077, 28.269098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.483833, 25.754009, 28.445272>,  <38.264240, 25.913897, 28.738895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483833, 25.754009, 28.445272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813314, 0.052983, 0.579407,
		-0.192707, -0.915105, 0.354184,
		0.548984, -0.399719, -0.734058,
		38.648529, 25.634094, 28.225056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674381, 25.400944, 29.023811>,  <38.264240, 25.913897, 28.738895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674381, 25.400944, 29.023811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890255, 25.464563, 28.693127>,  <39.019779, 25.502735, 28.494717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890255, 25.464563, 28.693127>,  <38.674381, 25.400944, 29.023811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890255, 25.464563, 28.693127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834304, 0.030320, 0.550471,
		0.112617, -0.986805, -0.116331,
		0.539680, 0.159047, -0.826710,
		39.052158, 25.512278, 28.445114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280079, 24.908302, 29.066849>,  <38.674381, 25.400944, 29.023811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280079, 24.908302, 29.066849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405537, 25.154448, 28.777586>,  <39.480812, 25.302135, 28.604029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405537, 25.154448, 28.777586>,  <39.280079, 24.908302, 29.066849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405537, 25.154448, 28.777586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918069, -0.002072, 0.396416,
		0.242442, -0.788240, -0.565597,
		0.313642, 0.615365, -0.723156,
		39.499630, 25.339058, 28.560638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892235, 24.638735, 28.771544>,  <39.280079, 24.908302, 29.066849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892235, 24.638735, 28.771544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.935867, 25.024691, 28.675968>,  <39.962048, 25.256264, 28.618624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.935867, 25.024691, 28.675968>,  <39.892235, 24.638735, 28.771544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935867, 25.024691, 28.675968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934043, -0.017252, 0.356743,
		0.340096, -0.262090, -0.903130,
		0.109080, 0.964889, -0.238936,
		39.968590, 25.314157, 28.604288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621143, 24.737753, 28.498629>,  <39.892235, 24.638735, 28.771544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621143, 24.737753, 28.498629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483269, 25.094828, 28.614763>,  <40.400543, 25.309072, 28.684444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483269, 25.094828, 28.614763>,  <40.621143, 24.737753, 28.498629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483269, 25.094828, 28.614763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920986, 0.261765, 0.288554,
		0.181588, 0.366859, -0.912382,
		-0.344688, 0.892689, 0.290339,
		40.379864, 25.362635, 28.701864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086609, 25.389368, 28.272554>,  <40.621143, 24.737753, 28.498629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086609, 25.389368, 28.272554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879345, 25.452627, 28.608768>,  <40.754986, 25.490583, 28.810497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879345, 25.452627, 28.608768>,  <41.086609, 25.389368, 28.272554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879345, 25.452627, 28.608768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833258, 0.314936, 0.454419,
		-0.192848, 0.935844, -0.294967,
		-0.518161, 0.158150, 0.840535,
		40.723896, 25.500072, 28.860929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366718, 25.940359, 28.056826>,  <41.086609, 25.389368, 28.272554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366718, 25.940359, 28.056826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.686684, 25.815016, 27.852102>,  <41.878662, 25.739811, 27.729267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.686684, 25.815016, 27.852102>,  <41.366718, 25.940359, 28.056826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686684, 25.815016, 27.852102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502487, 0.116544, -0.856694,
		0.328098, 0.942457, -0.064233,
		0.799911, -0.313356, -0.511811,
		41.926659, 25.721008, 27.698559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352547, 26.345762, 27.477097>,  <41.366718, 25.940359, 28.056826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352547, 26.345762, 27.477097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578968, 26.037992, 27.358727>,  <41.714821, 25.853331, 27.287704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578968, 26.037992, 27.358727>,  <41.352547, 26.345762, 27.477097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578968, 26.037992, 27.358727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443131, 0.018702, -0.896262,
		0.695139, 0.638466, -0.330369,
		0.566054, -0.769423, -0.295925,
		41.748783, 25.807165, 27.269949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688896, 26.572969, 26.964544>,  <41.352547, 26.345762, 27.477097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688896, 26.572969, 26.964544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696621, 26.176395, 26.912882>,  <41.701256, 25.938450, 26.881886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696621, 26.176395, 26.912882>,  <41.688896, 26.572969, 26.964544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696621, 26.176395, 26.912882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365619, 0.113228, -0.923851,
		0.930564, 0.065065, -0.360301,
		0.019315, -0.991436, -0.129155,
		41.702415, 25.878965, 26.874136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901608, 26.415321, 26.234581>,  <41.688896, 26.572969, 26.964544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901608, 26.415321, 26.234581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733490, 26.074139, 26.358398>,  <41.632618, 25.869429, 26.432690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733490, 26.074139, 26.358398>,  <41.901608, 26.415321, 26.234581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733490, 26.074139, 26.358398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579118, -0.010476, -0.815177,
		0.698553, -0.521877, -0.489560,
		-0.420293, -0.852957, 0.309546,
		41.607403, 25.818253, 26.451262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028629, 25.931484, 25.742897>,  <41.901608, 26.415321, 26.234581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028629, 25.931484, 25.742897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.693325, 25.812185, 25.925489>,  <41.492142, 25.740606, 26.035044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.693325, 25.812185, 25.925489>,  <42.028629, 25.931484, 25.742897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693325, 25.812185, 25.925489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535601, 0.293376, -0.791873,
		0.102254, -0.908284, -0.405666,
		-0.838258, -0.298247, 0.456479,
		41.441849, 25.722712, 26.062433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685413, 25.618748, 25.236233>,  <42.028629, 25.931484, 25.742897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685413, 25.618748, 25.236233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.393539, 25.673483, 25.504213>,  <41.218414, 25.706324, 25.665003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.393539, 25.673483, 25.504213>,  <41.685413, 25.618748, 25.236233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393539, 25.673483, 25.504213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669734, 0.054576, -0.740593,
		-0.137908, -0.989088, 0.051826,
		-0.729683, 0.136843, 0.669953,
		41.174633, 25.714535, 25.705198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056435, 25.274342, 24.924927>,  <41.685413, 25.618748, 25.236233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056435, 25.274342, 24.924927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921867, 25.517048, 25.212999>,  <40.841129, 25.662672, 25.385843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921867, 25.517048, 25.212999>,  <41.056435, 25.274342, 24.924927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921867, 25.517048, 25.212999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790470, 0.233718, -0.566157,
		-0.511843, -0.759745, 0.401003,
		-0.336413, 0.606764, 0.720183,
		40.820942, 25.699078, 25.429054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393986, 25.127611, 24.920317>,  <41.056435, 25.274342, 24.924927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393986, 25.127611, 24.920317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403725, 25.467342, 25.131239>,  <40.409569, 25.671181, 25.257793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403725, 25.467342, 25.131239>,  <40.393986, 25.127611, 24.920317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403725, 25.467342, 25.131239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777603, 0.347587, -0.523943,
		-0.628284, -0.397276, 0.668903,
		0.024352, 0.849326, 0.527307,
		40.411030, 25.722139, 25.289431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732929, 25.201134, 25.300629>,  <40.393986, 25.127611, 24.920317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732929, 25.201134, 25.300629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885178, 25.566090, 25.240402>,  <39.976528, 25.785063, 25.204266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885178, 25.566090, 25.240402>,  <39.732929, 25.201134, 25.300629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885178, 25.566090, 25.240402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848825, 0.280112, -0.448368,
		-0.366911, 0.298464, 0.881076,
		0.380622, 0.912391, -0.150568,
		39.999363, 25.839808, 25.195232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220665, 25.730915, 25.472416>,  <39.732929, 25.201134, 25.300629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220665, 25.730915, 25.472416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485939, 25.943306, 25.261417>,  <39.645103, 26.070740, 25.134819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485939, 25.943306, 25.261417>,  <39.220665, 25.730915, 25.472416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485939, 25.943306, 25.261417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747026, 0.513138, -0.422659,
		0.046256, 0.674353, 0.736959,
		0.663183, 0.530977, -0.527495,
		39.684895, 26.102600, 25.103168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122017, 26.431717, 25.571804>,  <39.220665, 25.730915, 25.472416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122017, 26.431717, 25.571804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298031, 26.399355, 25.214073>,  <39.403641, 26.379938, 24.999435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298031, 26.399355, 25.214073>,  <39.122017, 26.431717, 25.571804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298031, 26.399355, 25.214073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744630, 0.523761, -0.413764,
		0.501889, 0.848015, 0.170232,
		0.440039, -0.080903, -0.894327,
		39.430042, 26.375084, 24.945776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056839, 27.075649, 25.325979>,  <39.122017, 26.431717, 25.571804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056839, 27.075649, 25.325979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.132938, 26.859640, 24.998032>,  <39.178600, 26.730036, 24.801264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.132938, 26.859640, 24.998032>,  <39.056839, 27.075649, 25.325979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132938, 26.859640, 24.998032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758194, 0.449694, -0.472141,
		0.623655, 0.711444, -0.323885,
		0.190253, -0.540021, -0.819867,
		39.190014, 26.697634, 24.752071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076141, 27.592091, 24.853092>,  <39.056839, 27.075649, 25.325979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076141, 27.592091, 24.853092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056278, 27.255291, 24.638218>,  <39.044361, 27.053211, 24.509293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056278, 27.255291, 24.638218>,  <39.076141, 27.592091, 24.853092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056278, 27.255291, 24.638218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600921, 0.454795, -0.657309,
		0.797764, 0.290166, -0.528560,
		-0.049658, -0.842000, -0.537186,
		39.041382, 27.002691, 24.477062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147091, 27.811014, 24.233084>,  <39.076141, 27.592091, 24.853092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147091, 27.811014, 24.233084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973450, 27.455748, 24.172798>,  <38.869263, 27.242588, 24.136627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973450, 27.455748, 24.172798>,  <39.147091, 27.811014, 24.233084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973450, 27.455748, 24.172798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730575, 0.444971, -0.517940,
		0.527079, -0.114733, -0.842035,
		-0.434106, -0.888165, -0.150714,
		38.843220, 27.189299, 24.127584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690948, 28.237047, 23.827948>,  <39.147091, 27.811014, 24.233084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690948, 28.237047, 23.827948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829334, 28.599695, 23.731327>,  <39.912365, 28.817284, 23.673355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829334, 28.599695, 23.731327>,  <39.690948, 28.237047, 23.827948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829334, 28.599695, 23.731327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673177, -0.060525, 0.737001,
		0.653559, -0.417587, -0.631254,
		0.345968, 0.906619, -0.241553,
		39.933125, 28.871681, 23.658861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407669, 28.142782, 23.768717>,  <39.690948, 28.237047, 23.827948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407669, 28.142782, 23.768717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.374760, 28.539085, 23.811846>,  <40.355015, 28.776867, 23.837723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.374760, 28.539085, 23.811846>,  <40.407669, 28.142782, 23.768717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374760, 28.539085, 23.811846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702876, -0.019015, 0.711058,
		0.706538, 0.134287, -0.694817,
		-0.082274, 0.990760, 0.107822,
		40.350079, 28.836313, 23.844193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121136, 28.404373, 23.676523>,  <40.407669, 28.142782, 23.768717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121136, 28.404373, 23.676523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921558, 28.683903, 23.881540>,  <40.801811, 28.851620, 24.004551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921558, 28.683903, 23.881540>,  <41.121136, 28.404373, 23.676523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921558, 28.683903, 23.881540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724488, 0.011793, 0.689187,
		0.475574, 0.715198, -0.512172,
		-0.498945, 0.698822, 0.512544,
		40.771873, 28.893549, 24.035303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654415, 28.879152, 23.944401>,  <41.121136, 28.404373, 23.676523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654415, 28.879152, 23.944401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.319706, 28.921364, 24.159317>,  <41.118881, 28.946690, 24.288267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.319706, 28.921364, 24.159317>,  <41.654415, 28.879152, 23.944401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319706, 28.921364, 24.159317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546404, 0.097311, 0.831849,
		0.035498, 0.989644, -0.139087,
		-0.836769, 0.105527, 0.537291,
		41.068676, 28.953022, 24.320505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782761, 29.451252, 24.373121>,  <41.654415, 28.879152, 23.944401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782761, 29.451252, 24.373121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507332, 29.231724, 24.562717>,  <41.342075, 29.100008, 24.676476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507332, 29.231724, 24.562717>,  <41.782761, 29.451252, 24.373121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507332, 29.231724, 24.562717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489983, 0.129736, 0.862024,
		-0.534589, 0.825812, 0.179580,
		-0.688572, -0.548819, 0.473989,
		41.300758, 29.067078, 24.704914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608459, 29.921066, 25.061733>,  <41.782761, 29.451252, 24.373121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608459, 29.921066, 25.061733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.489384, 29.551369, 25.157356>,  <41.417938, 29.329550, 25.214731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.489384, 29.551369, 25.157356>,  <41.608459, 29.921066, 25.061733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489384, 29.551369, 25.157356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252537, 0.165253, 0.953371,
		-0.920655, 0.344180, 0.184212,
		-0.297690, -0.924246, 0.239059,
		41.400078, 29.274096, 25.229074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292389, 30.010527, 25.697790>,  <41.608459, 29.921066, 25.061733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292389, 30.010527, 25.697790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369606, 29.618328, 25.683020>,  <41.415936, 29.383009, 25.674156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369606, 29.618328, 25.683020>,  <41.292389, 30.010527, 25.697790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369606, 29.618328, 25.683020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240654, 0.010828, 0.970551,
		-0.951220, -0.196244, 0.238051,
		0.193042, -0.980495, -0.036927,
		41.427517, 29.324179, 25.671942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982300, 29.696571, 26.243160>,  <41.292389, 30.010527, 25.697790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982300, 29.696571, 26.243160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232540, 29.394032, 26.166674>,  <41.382683, 29.212507, 26.120783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232540, 29.394032, 26.166674>,  <40.982300, 29.696571, 26.243160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232540, 29.394032, 26.166674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201323, -0.080284, 0.976230,
		-0.753722, -0.649223, 0.102045,
		0.625598, -0.756350, -0.191215,
		41.420219, 29.167128, 26.109310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922279, 29.094208, 26.825357>,  <40.982300, 29.696571, 26.243160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922279, 29.094208, 26.825357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.275608, 29.067467, 26.639765>,  <41.487606, 29.051422, 26.528410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.275608, 29.067467, 26.639765>,  <40.922279, 29.094208, 26.825357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275608, 29.067467, 26.639765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451961, -0.141236, 0.880786,
		-0.124398, -0.987718, -0.094549,
		0.883322, -0.066836, -0.463979,
		41.540604, 29.047411, 26.500570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158413, 28.384499, 26.971750>,  <40.922279, 29.094208, 26.825357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158413, 28.384499, 26.971750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.456898, 28.636818, 26.886656>,  <41.635990, 28.788210, 26.835600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.456898, 28.636818, 26.886656>,  <41.158413, 28.384499, 26.971750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456898, 28.636818, 26.886656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451058, -0.244067, 0.858474,
		0.489602, -0.736563, -0.466653,
		0.746215, 0.630798, -0.212737,
		41.680763, 28.826057, 26.822834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753567, 27.990398, 27.140333>,  <41.158413, 28.384499, 26.971750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753567, 27.990398, 27.140333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930202, 28.348877, 27.123230>,  <42.036182, 28.563965, 27.112968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930202, 28.348877, 27.123230>,  <41.753567, 27.990398, 27.140333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930202, 28.348877, 27.123230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438551, -0.174024, 0.881697,
		0.782734, -0.408099, -0.469876,
		0.441589, 0.896198, -0.042758,
		42.062679, 28.617737, 27.110403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536682, 27.932198, 27.313290>,  <41.753567, 27.990398, 27.140333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536682, 27.932198, 27.313290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409378, 28.299225, 27.408604>,  <42.332996, 28.519442, 27.465792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409378, 28.299225, 27.408604>,  <42.536682, 27.932198, 27.313290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409378, 28.299225, 27.408604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420689, -0.088551, 0.902873,
		0.849547, 0.387594, -0.357828,
		-0.318262, 0.917567, 0.238285,
		42.313900, 28.574495, 27.480089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.673313, 29.240402, 20.641941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538887, 29.528130, 20.885134>,  <37.458233, 29.700766, 21.031050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538887, 29.528130, 20.885134>,  <37.673313, 29.240402, 20.641941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538887, 29.528130, 20.885134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883886, 0.017925, 0.467359,
		0.325282, 0.694448, -0.641821,
		-0.336061, 0.719320, 0.607982,
		37.438068, 29.743925, 21.067528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149963, 29.685659, 20.574778>,  <37.673313, 29.240402, 20.641941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149963, 29.685659, 20.574778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972332, 29.746428, 20.927984>,  <37.865753, 29.782888, 21.139908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972332, 29.746428, 20.927984>,  <38.149963, 29.685659, 20.574778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972332, 29.746428, 20.927984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894698, 0.022308, 0.446114,
		0.048076, 0.988141, -0.145829,
		-0.444076, 0.151921, 0.883016,
		37.839108, 29.792004, 21.192888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566261, 30.068329, 20.955570>,  <38.149963, 29.685659, 20.574778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566261, 30.068329, 20.955570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326736, 29.974607, 21.261911>,  <38.183022, 29.918375, 21.445717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326736, 29.974607, 21.261911>,  <38.566261, 30.068329, 20.955570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326736, 29.974607, 21.261911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778306, 0.055255, 0.625449,
		-0.188861, 0.970592, 0.149271,
		-0.598808, -0.234302, 0.765854,
		38.147095, 29.904318, 21.491667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865536, 30.334152, 21.544039>,  <38.566261, 30.068329, 20.955570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865536, 30.334152, 21.544039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611591, 30.070112, 21.704651>,  <38.459225, 29.911688, 21.801018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611591, 30.070112, 21.704651>,  <38.865536, 30.334152, 21.544039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611591, 30.070112, 21.704651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673431, -0.218001, 0.706375,
		-0.378743, 0.718851, 0.582930,
		-0.634858, -0.660098, 0.401531,
		38.421135, 29.872084, 21.825109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939270, 30.548662, 22.325935>,  <38.865536, 30.334152, 21.544039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939270, 30.548662, 22.325935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787640, 30.180784, 22.285009>,  <38.696663, 29.960058, 22.260454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787640, 30.180784, 22.285009>,  <38.939270, 30.548662, 22.325935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787640, 30.180784, 22.285009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547158, -0.311934, 0.776734,
		-0.746273, 0.238456, 0.621463,
		-0.379072, -0.919693, -0.102315,
		38.673920, 29.904877, 22.254314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722679, 30.336958, 22.996124>,  <38.939270, 30.548662, 22.325935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722679, 30.336958, 22.996124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774921, 30.002495, 22.783041>,  <38.806267, 29.801817, 22.655191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774921, 30.002495, 22.783041>,  <38.722679, 30.336958, 22.996124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774921, 30.002495, 22.783041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621725, -0.349457, 0.700955,
		-0.772269, -0.422749, 0.474219,
		0.130609, -0.836160, -0.532709,
		38.814106, 29.751646, 22.623228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573372, 29.777298, 23.476952>,  <38.722679, 30.336958, 22.996124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573372, 29.777298, 23.476952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786114, 29.643181, 23.165901>,  <38.913761, 29.562710, 22.979271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786114, 29.643181, 23.165901>,  <38.573372, 29.777298, 23.476952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786114, 29.643181, 23.165901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710910, -0.322185, 0.625143,
		-0.460147, -0.885311, 0.067007,
		0.531857, -0.335294, -0.777629,
		38.945671, 29.542593, 22.932613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731388, 29.119493, 23.722809>,  <38.573372, 29.777298, 23.476952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731388, 29.119493, 23.722809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986492, 29.227856, 23.434401>,  <39.139557, 29.292873, 23.261356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986492, 29.227856, 23.434401>,  <38.731388, 29.119493, 23.722809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986492, 29.227856, 23.434401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766699, -0.312848, 0.560624,
		-0.073694, -0.910350, -0.407224,
		0.637763, 0.270904, -0.721019,
		39.177822, 29.309126, 23.218094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073345, 28.541386, 23.599592>,  <38.731388, 29.119493, 23.722809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073345, 28.541386, 23.599592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328094, 28.818102, 23.463465>,  <39.480946, 28.984131, 23.381788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328094, 28.818102, 23.463465>,  <39.073345, 28.541386, 23.599592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328094, 28.818102, 23.463465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726107, -0.389837, 0.566388,
		0.259153, -0.607826, -0.750591,
		0.636874, 0.691791, -0.340319,
		39.519157, 29.025639, 23.361368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787415, 27.888014, 23.525124>,  <39.073345, 28.541386, 23.599592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787415, 27.888014, 23.525124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620911, 27.556700, 23.675150>,  <38.521008, 27.357912, 23.765165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620911, 27.556700, 23.675150>,  <38.787415, 27.888014, 23.525124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620911, 27.556700, 23.675150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902140, 0.324751, -0.284043,
		0.113465, -0.456597, -0.882408,
		-0.416256, -0.828285, 0.375067,
		38.496033, 27.308214, 23.787670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458000, 27.504490, 22.964352>,  <38.787415, 27.888014, 23.525124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458000, 27.504490, 22.964352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261402, 27.382584, 23.290676>,  <38.143444, 27.309439, 23.486471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261402, 27.382584, 23.290676>,  <38.458000, 27.504490, 22.964352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261402, 27.382584, 23.290676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870306, 0.137863, -0.472823,
		0.031629, -0.942397, -0.332997,
		-0.491495, -0.304764, 0.815813,
		38.113953, 27.291153, 23.535419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051949, 27.053190, 22.701780>,  <38.458000, 27.504490, 22.964352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051949, 27.053190, 22.701780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893970, 27.133713, 23.060331>,  <37.799183, 27.182026, 23.275461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893970, 27.133713, 23.060331>,  <38.051949, 27.053190, 22.701780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893970, 27.133713, 23.060331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903266, 0.093038, -0.418874,
		-0.167720, -0.975100, 0.145090,
		-0.394945, 0.201308, 0.896378,
		37.775486, 27.194105, 23.329245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530560, 26.468725, 22.957809>,  <38.051949, 27.053190, 22.701780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530560, 26.468725, 22.957809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434292, 26.807308, 23.147793>,  <37.376530, 27.010458, 23.261782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434292, 26.807308, 23.147793>,  <37.530560, 26.468725, 22.957809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434292, 26.807308, 23.147793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958553, -0.130398, -0.253324,
		-0.152497, -0.516233, 0.842762,
		-0.240669, 0.846463, 0.474951,
		37.362091, 27.061247, 23.290279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719795, 26.315218, 23.209526>,  <37.530560, 26.468725, 22.957809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719795, 26.315218, 23.209526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787212, 26.709171, 23.225531>,  <36.827663, 26.945543, 23.235134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787212, 26.709171, 23.225531>,  <36.719795, 26.315218, 23.209526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787212, 26.709171, 23.225531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887237, 0.169268, -0.429138,
		-0.429423, 0.036830, 0.902352,
		0.168545, 0.984882, 0.040011,
		36.837776, 27.004635, 23.237534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119858, 26.487349, 23.406054>,  <36.719795, 26.315218, 23.209526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119858, 26.487349, 23.406054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285149, 26.820841, 23.259556>,  <36.384323, 27.020937, 23.171658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285149, 26.820841, 23.259556>,  <36.119858, 26.487349, 23.406054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285149, 26.820841, 23.259556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861202, 0.227105, -0.454703,
		-0.295924, 0.503306, 0.811857,
		0.413232, 0.833730, -0.366242,
		36.409119, 27.070959, 23.149683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839127, 26.948448, 23.691631>,  <36.119858, 26.487349, 23.406054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839127, 26.948448, 23.691631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944771, 27.125311, 23.348763>,  <36.008156, 27.231428, 23.143042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944771, 27.125311, 23.348763>,  <35.839127, 26.948448, 23.691631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944771, 27.125311, 23.348763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964226, 0.100120, -0.245448,
		-0.022707, 0.891332, 0.452782,
		0.264108, 0.442158, -0.857172,
		36.024002, 27.257957, 23.091612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398560, 27.548611, 23.585278>,  <35.839127, 26.948448, 23.691631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398560, 27.548611, 23.585278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561222, 27.500931, 23.222969>,  <35.658821, 27.472322, 23.005585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561222, 27.500931, 23.222969>,  <35.398560, 27.548611, 23.585278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561222, 27.500931, 23.222969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810620, 0.410170, -0.417918,
		0.421337, 0.904185, 0.070172,
		0.406658, -0.119202, -0.905771,
		35.683220, 27.465170, 22.951239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259789, 28.170362, 23.237564>,  <35.398560, 27.548611, 23.585278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259789, 28.170362, 23.237564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366085, 27.919138, 22.945011>,  <35.429863, 27.768404, 22.769480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366085, 27.919138, 22.945011>,  <35.259789, 28.170362, 23.237564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366085, 27.919138, 22.945011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585468, 0.497594, -0.640022,
		0.765904, 0.598282, -0.235478,
		0.265741, -0.628060, -0.731384,
		35.445808, 27.730721, 22.725595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202393, 28.578804, 22.639000>,  <35.259789, 28.170362, 23.237564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202393, 28.578804, 22.639000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168983, 28.197063, 22.524290>,  <35.148937, 27.968019, 22.455465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168983, 28.197063, 22.524290>,  <35.202393, 28.578804, 22.639000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168983, 28.197063, 22.524290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705300, 0.259913, -0.659543,
		0.703972, 0.147174, -0.694812,
		-0.083524, -0.954350, -0.286773,
		35.143925, 27.910759, 22.438257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112415, 28.573582, 21.934820>,  <35.202393, 28.578804, 22.639000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112415, 28.573582, 21.934820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973175, 28.208166, 22.018980>,  <34.889629, 27.988916, 22.069477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973175, 28.208166, 22.018980>,  <35.112415, 28.573582, 21.934820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973175, 28.208166, 22.018980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770920, 0.151259, -0.618711,
		0.533392, -0.377578, -0.756920,
		-0.348103, -0.913540, 0.210402,
		34.868744, 27.934105, 22.082100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898380, 28.231529, 21.222921>,  <35.112415, 28.573582, 21.934820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898380, 28.231529, 21.222921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723507, 28.025629, 21.517920>,  <34.618584, 27.902088, 21.694918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723507, 28.025629, 21.517920>,  <34.898380, 28.231529, 21.222921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723507, 28.025629, 21.517920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785894, -0.180072, -0.591562,
		0.437309, -0.838216, -0.325814,
		-0.437186, -0.514751, 0.737495,
		34.592350, 27.871204, 21.739168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538395, 27.603411, 20.905054>,  <34.898380, 28.231529, 21.222921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538395, 27.603411, 20.905054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372448, 27.656136, 21.265167>,  <34.272881, 27.687771, 21.481236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372448, 27.656136, 21.265167>,  <34.538395, 27.603411, 20.905054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372448, 27.656136, 21.265167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877891, -0.318046, -0.357985,
		0.239144, -0.938867, 0.247665,
		-0.414870, 0.131813, 0.900282,
		34.247986, 27.695679, 21.535252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151909, 26.905842, 21.099129>,  <34.538395, 27.603411, 20.905054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151909, 26.905842, 21.099129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006634, 27.225143, 21.291328>,  <33.919468, 27.416725, 21.406649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006634, 27.225143, 21.291328>,  <34.151909, 26.905842, 21.099129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006634, 27.225143, 21.291328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927833, -0.262845, -0.264648,
		-0.084959, -0.541942, 0.836110,
		-0.363191, 0.798255, 0.480501,
		33.897675, 27.464621, 21.435478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.092461, 33.353893, 26.485512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.323238, 33.324036, 26.160166>,  <32.461704, 33.306122, 25.964958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.323238, 33.324036, 26.160166>,  <32.092461, 33.353893, 26.485512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323238, 33.324036, 26.160166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740296, -0.372954, 0.559346,
		-0.345098, -0.924843, -0.159917,
		0.576948, -0.074644, -0.813363,
		32.496323, 33.301643, 25.916157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581264, 32.812008, 26.654425>,  <32.092461, 33.353893, 26.485512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581264, 32.812008, 26.654425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.744305, 33.007851, 26.346100>,  <32.842129, 33.125355, 26.161106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.744305, 33.007851, 26.346100>,  <32.581264, 32.812008, 26.654425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744305, 33.007851, 26.346100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912528, -0.186955, 0.363785,
		0.034006, -0.851664, -0.522983,
		0.407597, 0.489608, -0.770810,
		32.866585, 33.154732, 26.114857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060486, 32.370872, 26.401344>,  <32.581264, 32.812008, 26.654425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060486, 32.370872, 26.401344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.173702, 32.736546, 26.285301>,  <33.241634, 32.955948, 26.215675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.173702, 32.736546, 26.285301>,  <33.060486, 32.370872, 26.401344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173702, 32.736546, 26.285301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935250, -0.196029, 0.294754,
		0.212588, -0.354751, -0.910471,
		0.283043, 0.914180, -0.290107,
		33.258614, 33.010799, 26.198269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693321, 32.265724, 26.033026>,  <33.060486, 32.370872, 26.401344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693321, 32.265724, 26.033026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.692043, 32.651569, 26.138487>,  <33.691277, 32.883076, 26.201763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.692043, 32.651569, 26.138487>,  <33.693321, 32.265724, 26.033026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692043, 32.651569, 26.138487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987855, -0.037913, 0.150679,
		0.155343, 0.260930, -0.952777,
		-0.003194, 0.964613, 0.263651,
		33.691086, 32.940952, 26.217583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231560, 32.530869, 25.785601>,  <33.693321, 32.265724, 26.033026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231560, 32.530869, 25.785601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.164772, 32.786503, 26.085917>,  <34.124699, 32.939884, 26.266106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.164772, 32.786503, 26.085917>,  <34.231560, 32.530869, 25.785601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164772, 32.786503, 26.085917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965608, -0.047934, 0.255545,
		0.199305, 0.767637, -0.609107,
		-0.166969, 0.639090, 0.750790,
		34.114681, 32.978230, 26.311153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792248, 32.930458, 25.732189>,  <34.231560, 32.530869, 25.785601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792248, 32.930458, 25.732189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651775, 33.040813, 26.090084>,  <34.567490, 33.107025, 26.304821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651775, 33.040813, 26.090084>,  <34.792248, 32.930458, 25.732189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651775, 33.040813, 26.090084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930847, -0.000178, 0.365410,
		0.100972, 0.961189, -0.256748,
		-0.351183, 0.275889, 0.894738,
		34.546421, 33.123581, 26.358505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327538, 33.272472, 26.031391>,  <34.792248, 32.930458, 25.732189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327538, 33.272472, 26.031391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097771, 33.188046, 26.347744>,  <34.959911, 33.137390, 26.537556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097771, 33.188046, 26.347744>,  <35.327538, 33.272472, 26.031391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097771, 33.188046, 26.347744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818367, -0.169314, 0.549188,
		0.017990, 0.962695, 0.269990,
		-0.574414, -0.211071, 0.790884,
		34.925446, 33.124725, 26.585009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583118, 33.667271, 26.543610>,  <35.327538, 33.272472, 26.031391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583118, 33.667271, 26.543610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.389465, 33.357712, 26.706924>,  <35.273273, 33.171978, 26.804913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.389465, 33.357712, 26.706924>,  <35.583118, 33.667271, 26.543610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389465, 33.357712, 26.706924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810325, -0.220499, 0.542912,
		-0.330130, 0.593689, 0.733858,
		-0.484135, -0.773895, 0.408288,
		35.244225, 33.125542, 26.829411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792622, 33.680016, 27.322933>,  <35.583118, 33.667271, 26.543610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792622, 33.680016, 27.322933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640896, 33.317417, 27.248755>,  <35.549862, 33.099857, 27.204248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640896, 33.317417, 27.248755>,  <35.792622, 33.680016, 27.322933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640896, 33.317417, 27.248755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723049, -0.415458, 0.551901,
		-0.577340, 0.075258, 0.813028,
		-0.379314, -0.906494, -0.185445,
		35.527103, 33.045467, 27.193121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753403, 33.418663, 27.958788>,  <35.792622, 33.680016, 27.322933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753403, 33.418663, 27.958788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735825, 33.103325, 27.713322>,  <35.725277, 32.914124, 27.566042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735825, 33.103325, 27.713322>,  <35.753403, 33.418663, 27.958788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735825, 33.103325, 27.713322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725734, -0.447332, 0.522689,
		-0.686570, -0.422389, 0.591784,
		-0.043946, -0.788341, -0.613667,
		35.722641, 32.866821, 27.529221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736088, 32.815350, 28.468115>,  <35.753403, 33.418663, 27.958788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736088, 32.815350, 28.468115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.867065, 32.690327, 28.111443>,  <35.945652, 32.615314, 27.897440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.867065, 32.690327, 28.111443>,  <35.736088, 32.815350, 28.468115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867065, 32.690327, 28.111443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734055, -0.510050, 0.448345,
		-0.594933, -0.801348, 0.062421,
		0.327442, -0.312556, -0.891679,
		35.965298, 32.596561, 27.843939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871746, 32.061768, 28.600384>,  <35.736088, 32.815350, 28.468115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871746, 32.061768, 28.600384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068169, 32.169586, 28.269033>,  <36.186020, 32.234276, 28.070223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068169, 32.169586, 28.269033>,  <35.871746, 32.061768, 28.600384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068169, 32.169586, 28.269033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791282, -0.535722, 0.294744,
		-0.364333, -0.800216, -0.476357,
		0.491054, 0.269547, -0.828378,
		36.215485, 32.250450, 28.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202980, 31.480461, 28.423727>,  <35.871746, 32.061768, 28.600384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202980, 31.480461, 28.423727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399956, 31.765516, 28.223866>,  <36.518139, 31.936550, 28.103949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399956, 31.765516, 28.223866>,  <36.202980, 31.480461, 28.423727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399956, 31.765516, 28.223866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869968, -0.386023, 0.306827,
		0.025778, -0.585777, -0.810063,
		0.492435, 0.712637, -0.499656,
		36.547688, 31.979307, 28.073969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675331, 31.139051, 28.083721>,  <36.202980, 31.480461, 28.423727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675331, 31.139051, 28.083721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813225, 31.513041, 28.117151>,  <36.895962, 31.737434, 28.137209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813225, 31.513041, 28.117151>,  <36.675331, 31.139051, 28.083721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813225, 31.513041, 28.117151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783453, -0.335624, 0.523027,
		0.517066, -0.114829, -0.848208,
		0.344738, 0.934971, 0.083577,
		36.916645, 31.793531, 28.142223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899158, 30.527573, 27.554058>,  <36.675331, 31.139051, 28.083721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899158, 30.527573, 27.554058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743813, 30.173120, 27.655209>,  <36.650604, 29.960449, 27.715899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.743813, 30.173120, 27.655209>,  <36.899158, 30.527573, 27.554058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743813, 30.173120, 27.655209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774922, 0.165549, -0.609992,
		0.498670, -0.432855, -0.750976,
		-0.388361, -0.886132, 0.252874,
		36.627304, 29.907280, 27.731071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810371, 30.251259, 26.907490>,  <36.899158, 30.527573, 27.554058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810371, 30.251259, 26.907490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573109, 30.069641, 27.173424>,  <36.430752, 29.960670, 27.332985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573109, 30.069641, 27.173424>,  <36.810371, 30.251259, 26.907490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573109, 30.069641, 27.173424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771680, 0.085233, -0.630273,
		0.229506, -0.886892, -0.400935,
		-0.593158, -0.454045, 0.664836,
		36.395161, 29.933428, 27.372875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433372, 29.648624, 26.565983>,  <36.810371, 30.251259, 26.907490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433372, 29.648624, 26.565983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183483, 29.719309, 26.870218>,  <36.033550, 29.761721, 27.052759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183483, 29.719309, 26.870218>,  <36.433372, 29.648624, 26.565983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183483, 29.719309, 26.870218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769936, 0.022875, -0.637711,
		-0.130090, -0.983997, 0.121767,
		-0.624720, 0.176713, 0.760591,
		35.996067, 29.772322, 27.098396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922138, 29.177338, 26.399048>,  <36.433372, 29.648624, 26.565983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922138, 29.177338, 26.399048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785717, 29.441469, 26.666676>,  <35.703865, 29.599947, 26.827253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785717, 29.441469, 26.666676>,  <35.922138, 29.177338, 26.399048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785717, 29.441469, 26.666676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859922, 0.068385, -0.505824,
		-0.379764, -0.747858, 0.544507,
		-0.341048, 0.660327, 0.669070,
		35.683403, 29.639566, 26.867397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306850, 28.917006, 26.577484>,  <35.922138, 29.177338, 26.399048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306850, 28.917006, 26.577484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274597, 29.307205, 26.659365>,  <35.255245, 29.541325, 26.708492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274597, 29.307205, 26.659365>,  <35.306850, 28.917006, 26.577484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274597, 29.307205, 26.659365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872809, 0.030078, -0.487134,
		-0.481355, -0.217941, 0.848999,
		-0.080630, 0.975498, 0.204699,
		35.250408, 29.599855, 26.720774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606174, 28.993032, 26.923960>,  <35.306850, 28.917006, 26.577484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606174, 28.993032, 26.923960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.704502, 29.348993, 26.770260>,  <34.763496, 29.562571, 26.678040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.704502, 29.348993, 26.770260>,  <34.606174, 28.993032, 26.923960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704502, 29.348993, 26.770260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855211, 0.012510, -0.518129,
		-0.456277, 0.455981, 0.764128,
		0.245816, 0.889902, -0.384252,
		34.778248, 29.615963, 26.654984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075718, 29.352173, 27.072762>,  <34.606174, 28.993032, 26.923960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075718, 29.352173, 27.072762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.240414, 29.565424, 26.777126>,  <34.339230, 29.693375, 26.599745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.240414, 29.565424, 26.777126>,  <34.075718, 29.352173, 27.072762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240414, 29.565424, 26.777126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894164, 0.079794, -0.440572,
		-0.175905, 0.842265, 0.509556,
		0.411738, 0.533125, -0.739087,
		34.363934, 29.725361, 26.555401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627922, 29.913233, 26.986919>,  <34.075718, 29.352173, 27.072762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627922, 29.913233, 26.986919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.835308, 29.870211, 26.647596>,  <33.959740, 29.844398, 26.444002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.835308, 29.870211, 26.647596>,  <33.627922, 29.913233, 26.986919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835308, 29.870211, 26.647596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833299, 0.159015, -0.529459,
		0.191839, 0.981400, -0.007180,
		0.518469, -0.107554, -0.848305,
		33.990849, 29.837944, 26.393105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383827, 30.429790, 26.557768>,  <33.627922, 29.913233, 26.986919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383827, 30.429790, 26.557768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.564037, 30.182571, 26.300072>,  <33.672161, 30.034241, 26.145454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.564037, 30.182571, 26.300072>,  <33.383827, 30.429790, 26.557768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564037, 30.182571, 26.300072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780640, 0.077408, -0.620168,
		0.433162, 0.782322, -0.447597,
		0.450523, -0.618045, -0.644242,
		33.699196, 29.997158, 26.106798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267746, 30.787731, 25.947924>,  <33.383827, 30.429790, 26.557768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267746, 30.787731, 25.947924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.323803, 30.397066, 25.882824>,  <33.357437, 30.162666, 25.843763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.323803, 30.397066, 25.882824>,  <33.267746, 30.787731, 25.947924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323803, 30.397066, 25.882824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812538, -0.019513, -0.582582,
		0.565811, 0.213885, -0.796311,
		0.140144, -0.976664, -0.162749,
		33.365845, 30.104067, 25.834000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167412, 30.758070, 25.253590>,  <33.267746, 30.787731, 25.947924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167412, 30.758070, 25.253590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.115204, 30.384449, 25.386560>,  <33.083878, 30.160276, 25.466343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.115204, 30.384449, 25.386560>,  <33.167412, 30.758070, 25.253590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115204, 30.384449, 25.386560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747201, -0.127709, -0.652212,
		0.651655, -0.333520, -0.681256,
		-0.130523, -0.934053, 0.332429,
		33.076046, 30.104233, 25.486290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068298, 30.411182, 24.669199>,  <33.167412, 30.758070, 25.253590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068298, 30.411182, 24.669199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.933094, 30.173080, 24.960793>,  <32.851971, 30.030220, 25.135750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.933094, 30.173080, 24.960793>,  <33.068298, 30.411182, 24.669199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933094, 30.173080, 24.960793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756991, -0.288279, -0.586395,
		0.559205, -0.750046, -0.353158,
		-0.338015, -0.595252, 0.728985,
		32.831688, 29.994505, 25.179489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836849, 29.747326, 24.271757>,  <33.068298, 30.411182, 24.669199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836849, 29.747326, 24.271757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.662346, 29.758007, 24.631527>,  <32.557644, 29.764416, 24.847389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.662346, 29.758007, 24.631527>,  <32.836849, 29.747326, 24.271757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662346, 29.758007, 24.631527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891861, -0.145508, -0.428266,
		0.119439, -0.988997, 0.087291,
		-0.436255, 0.026700, 0.899427,
		32.531471, 29.766018, 24.901356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272808, 29.282774, 24.216066>,  <32.836849, 29.747326, 24.271757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272808, 29.282774, 24.216066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.189133, 29.527784, 24.520973>,  <32.138927, 29.674791, 24.703918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.189133, 29.527784, 24.520973>,  <32.272808, 29.282774, 24.216066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189133, 29.527784, 24.520973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936310, 0.099391, -0.336816,
		-0.282070, -0.784177, 0.552722,
		-0.209188, 0.612525, 0.762268,
		32.126377, 29.711542, 24.749653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173325, 28.583950, 24.579075>,  <32.272808, 29.282774, 24.216066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173325, 28.583950, 24.579075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.991734, 28.266405, 24.417242>,  <31.882778, 28.075878, 24.320143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.991734, 28.266405, 24.417242>,  <32.173325, 28.583950, 24.579075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991734, 28.266405, 24.417242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859843, -0.509381, 0.034666,
		-0.233606, -0.332138, 0.913845,
		-0.453981, -0.793861, -0.404581,
		31.855539, 28.028246, 24.295868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193726, 28.140688, 25.154434>,  <32.173325, 28.583950, 24.579075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193726, 28.140688, 25.154434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.137230, 27.943493, 24.811035>,  <32.103333, 27.825176, 24.604996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.137230, 27.943493, 24.811035>,  <32.193726, 28.140688, 25.154434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137230, 27.943493, 24.811035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649656, -0.700500, 0.295374,
		-0.746992, -0.516008, 0.419211,
		-0.141242, -0.492986, -0.858496,
		32.094856, 27.795597, 24.553486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055347, 27.426167, 25.413544>,  <32.193726, 28.140688, 25.154434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055347, 27.426167, 25.413544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.157169, 27.412304, 25.026968>,  <32.218262, 27.403986, 24.795023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.157169, 27.412304, 25.026968>,  <32.055347, 27.426167, 25.413544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157169, 27.412304, 25.026968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775477, -0.589770, 0.225404,
		-0.577787, -0.806827, -0.123255,
		0.254554, -0.034654, -0.966437,
		32.233536, 27.401907, 24.737038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174335, 26.715237, 25.348534>,  <32.055347, 27.426167, 25.413544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174335, 26.715237, 25.348534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.366516, 26.844870, 25.022556>,  <32.481827, 26.922649, 24.826969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.366516, 26.844870, 25.022556>,  <32.174335, 26.715237, 25.348534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366516, 26.844870, 25.022556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696176, -0.706066, 0.129653,
		-0.533386, -0.629638, -0.564850,
		0.480455, 0.324080, -0.814945,
		32.510654, 26.942093, 24.778072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322144, 26.145069, 24.990465>,  <32.174335, 26.715237, 25.348534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322144, 26.145069, 24.990465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.590317, 26.412880, 24.862558>,  <32.751221, 26.573566, 24.785814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.590317, 26.412880, 24.862558>,  <32.322144, 26.145069, 24.990465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590317, 26.412880, 24.862558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704644, -0.709513, -0.008191,
		-0.232361, -0.219829, -0.947462,
		0.670436, 0.669526, -0.319765,
		32.791447, 26.613737, 24.766628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758152, 25.773090, 24.494999>,  <32.322144, 26.145069, 24.990465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758152, 25.773090, 24.494999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.976360, 26.089216, 24.606575>,  <33.107285, 26.278893, 24.673521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.976360, 26.089216, 24.606575>,  <32.758152, 25.773090, 24.494999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976360, 26.089216, 24.606575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789037, -0.596509, 0.146963,
		0.282537, 0.139922, -0.948997,
		0.545522, 0.790316, 0.278940,
		33.140018, 26.326311, 24.690256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463966, 25.669794, 24.354609>,  <32.758152, 25.773090, 24.494999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463966, 25.669794, 24.354609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.491432, 25.933327, 24.654270>,  <33.507912, 26.091446, 24.834066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.491432, 25.933327, 24.654270>,  <33.463966, 25.669794, 24.354609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491432, 25.933327, 24.654270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758950, -0.521884, 0.389399,
		0.647518, 0.541831, -0.535854,
		0.068666, 0.658830, 0.749152,
		33.512032, 26.130976, 24.879015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203518, 25.646322, 24.482088>,  <33.463966, 25.669794, 24.354609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203518, 25.646322, 24.482088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040257, 25.842772, 24.789907>,  <33.942299, 25.960642, 24.974600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040257, 25.842772, 24.789907>,  <34.203518, 25.646322, 24.482088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040257, 25.842772, 24.789907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658530, -0.425415, 0.620773,
		0.632255, 0.760143, -0.149785,
		-0.408156, 0.491125, 0.769548,
		33.917809, 25.990108, 25.020773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788284, 25.911268, 24.810543>,  <34.203518, 25.646322, 24.482088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788284, 25.911268, 24.810543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.499660, 25.929508, 25.086884>,  <34.326485, 25.940453, 25.252687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.499660, 25.929508, 25.086884>,  <34.788284, 25.911268, 24.810543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499660, 25.929508, 25.086884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629244, -0.373031, 0.681836,
		0.288799, 0.926698, 0.240472,
		-0.721559, 0.045598, 0.690850,
		34.283192, 25.943188, 25.294138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059521, 26.268784, 25.412642>,  <34.788284, 25.911268, 24.810543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059521, 26.268784, 25.412642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.731956, 26.082775, 25.547188>,  <34.535419, 25.971170, 25.627916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.731956, 26.082775, 25.547188>,  <35.059521, 26.268784, 25.412642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731956, 26.082775, 25.547188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494228, -0.273437, 0.825210,
		-0.291765, 0.842013, 0.453747,
		-0.818909, -0.465022, 0.336367,
		34.486282, 25.943268, 25.648098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953651, 26.441378, 26.130552>,  <35.059521, 26.268784, 25.412642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953651, 26.441378, 26.130552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.769779, 26.091896, 26.066881>,  <34.659458, 25.882208, 26.028679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.769779, 26.091896, 26.066881>,  <34.953651, 26.441378, 26.130552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769779, 26.091896, 26.066881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475848, -0.393648, 0.786517,
		-0.749844, 0.285800, 0.596702,
		-0.459677, -0.873704, -0.159177,
		34.631878, 25.829784, 26.019129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907619, 26.257376, 26.768267>,  <34.953651, 26.441378, 26.130552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907619, 26.257376, 26.768267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.873119, 25.942553, 26.523937>,  <34.852421, 25.753658, 26.377340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.873119, 25.942553, 26.523937>,  <34.907619, 26.257376, 26.768267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873119, 25.942553, 26.523937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382060, -0.592361, 0.709323,
		-0.920104, -0.172193, 0.351792,
		-0.086247, -0.787056, -0.610822,
		34.847244, 25.706436, 26.340691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846451, 25.725523, 27.278193>,  <34.907619, 26.257376, 26.768267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846451, 25.725523, 27.278193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960369, 25.563419, 26.930708>,  <35.028721, 25.466158, 26.722218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960369, 25.563419, 26.930708>,  <34.846451, 25.725523, 27.278193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960369, 25.563419, 26.930708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772034, -0.440203, 0.458459,
		-0.568203, -0.801241, 0.187506,
		0.284795, -0.405259, -0.868710,
		35.045807, 25.441841, 26.670095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977230, 25.081919, 27.418610>,  <34.846451, 25.725523, 27.278193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977230, 25.081919, 27.418610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.179668, 25.127243, 27.076609>,  <35.301132, 25.154438, 26.871408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.179668, 25.127243, 27.076609>,  <34.977230, 25.081919, 27.418610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179668, 25.127243, 27.076609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793309, -0.450137, 0.409922,
		-0.338421, -0.885741, -0.317702,
		0.506094, 0.113309, -0.855002,
		35.331497, 25.161236, 26.820108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.476292, 26.612312, 21.239792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.459148, 27.007759, 21.297480>,  <33.448864, 27.245028, 21.332092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.459148, 27.007759, 21.297480>,  <33.476292, 26.612312, 21.239792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459148, 27.007759, 21.297480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931705, 0.012565, -0.362998,
		-0.360678, -0.149927, 0.920561,
		-0.042857, 0.988617, 0.144219,
		33.446293, 27.304344, 21.340746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778294, 26.771866, 21.573160>,  <33.476292, 26.612312, 21.239792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778294, 26.771866, 21.573160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908752, 27.114605, 21.413439>,  <32.987030, 27.320248, 21.317606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908752, 27.114605, 21.413439>,  <32.778294, 26.771866, 21.573160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908752, 27.114605, 21.413439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923466, 0.198493, -0.328348,
		-0.202085, 0.475832, 0.856006,
		0.326149, 0.856846, -0.399302,
		33.006596, 27.371658, 21.293648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250538, 27.313080, 21.782270>,  <32.778294, 26.771866, 21.573160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250538, 27.313080, 21.782270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.447994, 27.488638, 21.481955>,  <32.566467, 27.593973, 21.301765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.447994, 27.488638, 21.481955>,  <32.250538, 27.313080, 21.782270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447994, 27.488638, 21.481955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833593, 0.484852, -0.264655,
		0.247866, 0.756499, 0.605204,
		0.493645, 0.438894, -0.750790,
		32.596088, 27.620306, 21.256718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045715, 27.927828, 21.850555>,  <32.250538, 27.313080, 21.782270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045715, 27.927828, 21.850555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159943, 27.872932, 21.471163>,  <32.228477, 27.839994, 21.243526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159943, 27.872932, 21.471163>,  <32.045715, 27.927828, 21.850555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159943, 27.872932, 21.471163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879522, 0.355564, -0.316253,
		0.380648, 0.924522, -0.019166,
		0.285568, -0.137238, -0.948481,
		32.245613, 27.831760, 21.186619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930819, 28.546860, 21.604485>,  <32.045715, 27.927828, 21.850555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930819, 28.546860, 21.604485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955481, 28.306488, 21.285717>,  <31.970278, 28.162266, 21.094456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955481, 28.306488, 21.285717>,  <31.930819, 28.546860, 21.604485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955481, 28.306488, 21.285717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782991, 0.466030, -0.411996,
		0.618969, 0.649384, -0.441788,
		0.061657, -0.600929, -0.796921,
		31.973978, 28.126209, 21.046640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895239, 28.990580, 21.021778>,  <31.930819, 28.546860, 21.604485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895239, 28.990580, 21.021778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786165, 28.641352, 20.860092>,  <31.720720, 28.431814, 20.763081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786165, 28.641352, 20.860092>,  <31.895239, 28.990580, 21.021778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786165, 28.641352, 20.860092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632243, 0.479296, -0.608723,
		0.725197, 0.089574, -0.682690,
		-0.272685, -0.873070, -0.404217,
		31.704359, 28.379431, 20.738827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732014, 29.238741, 20.314034>,  <31.895239, 28.990580, 21.021778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732014, 29.238741, 20.314034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570494, 28.879410, 20.383266>,  <31.473581, 28.663811, 20.424807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570494, 28.879410, 20.383266>,  <31.732014, 29.238741, 20.314034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570494, 28.879410, 20.383266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751992, 0.218176, -0.622019,
		0.521014, -0.381325, -0.763633,
		-0.403798, -0.898327, 0.173081,
		31.449354, 28.609911, 20.435190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694315, 28.774549, 19.710270>,  <31.732014, 29.238741, 20.314034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694315, 28.774549, 19.710270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407566, 28.603798, 19.930767>,  <31.235518, 28.501347, 20.063065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407566, 28.603798, 19.930767>,  <31.694315, 28.774549, 19.710270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407566, 28.603798, 19.930767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693668, 0.357165, -0.625506,
		0.070131, -0.830787, -0.552154,
		-0.716872, -0.426879, 0.551242,
		31.192505, 28.475735, 20.096140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079994, 28.562414, 19.239965>,  <31.694315, 28.774549, 19.710270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079994, 28.562414, 19.239965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.903833, 28.574369, 19.598886>,  <30.798138, 28.581543, 19.814240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.903833, 28.574369, 19.598886>,  <31.079994, 28.562414, 19.239965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903833, 28.574369, 19.598886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833340, 0.358263, -0.420941,
		-0.334054, -0.933142, -0.132869,
		-0.440400, 0.029891, 0.897304,
		30.771713, 28.583336, 19.868078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377815, 28.218695, 19.187346>,  <31.079994, 28.562414, 19.239965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377815, 28.218695, 19.187346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.365091, 28.463499, 19.503429>,  <30.357458, 28.610382, 19.693081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.365091, 28.463499, 19.503429>,  <30.377815, 28.218695, 19.187346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365091, 28.463499, 19.503429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925093, 0.281297, -0.255098,
		-0.378406, -0.739133, 0.557218,
		-0.031808, 0.612009, 0.790211,
		30.355549, 28.647102, 19.740492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633615, 28.208740, 19.435465>,  <30.377815, 28.218695, 19.187346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633615, 28.208740, 19.435465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.767326, 28.548740, 19.598320>,  <29.847553, 28.752741, 19.696033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.767326, 28.548740, 19.598320>,  <29.633615, 28.208740, 19.435465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767326, 28.548740, 19.598320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905638, 0.409287, -0.110924,
		-0.260922, -0.331641, 0.906606,
		0.334275, 0.849999, 0.407139,
		29.867609, 28.803740, 19.720461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073675, 28.477625, 19.711884>,  <29.633615, 28.208740, 19.435465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073675, 28.477625, 19.711884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.313213, 28.797674, 19.698103>,  <29.456936, 28.989704, 19.689835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.313213, 28.797674, 19.698103>,  <29.073675, 28.477625, 19.711884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313213, 28.797674, 19.698103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798318, 0.592957, -0.105315,
		-0.063837, 0.090571, 0.993842,
		0.598844, 0.800124, -0.034452,
		29.492867, 29.037712, 19.687767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733379, 29.009476, 20.095619>,  <29.073675, 28.477625, 19.711884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733379, 29.009476, 20.095619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.982925, 29.208992, 19.854954>,  <29.132652, 29.328701, 19.710554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.982925, 29.208992, 19.854954>,  <28.733379, 29.009476, 20.095619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982925, 29.208992, 19.854954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669730, 0.737993, -0.082633,
		0.402808, 0.454506, 0.794463,
		0.623865, 0.498790, -0.601666,
		29.170084, 29.358629, 19.674454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731804, 29.658026, 20.331953>,  <28.733379, 29.009476, 20.095619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731804, 29.658026, 20.331953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.836140, 29.700354, 19.948128>,  <28.898741, 29.725750, 19.717833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.836140, 29.700354, 19.948128>,  <28.731804, 29.658026, 20.331953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836140, 29.700354, 19.948128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557139, 0.828241, -0.060111,
		0.788389, 0.550290, 0.274997,
		0.260842, 0.105821, -0.959564,
		28.914392, 29.732100, 19.660259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076805, 29.830349, 20.510414>,  <28.731804, 29.658026, 20.331953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076805, 29.830349, 20.510414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.852758, 29.892174, 20.835960>,  <27.718330, 29.929268, 21.031288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.852758, 29.892174, 20.835960>,  <28.076805, 29.830349, 20.510414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852758, 29.892174, 20.835960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607075, -0.591897, 0.530206,
		0.563674, 0.791056, 0.237702,
		-0.560118, 0.154560, 0.813867,
		27.684723, 29.938541, 21.080120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557299, 29.927320, 21.056131>,  <28.076805, 29.830349, 20.510414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557299, 29.927320, 21.056131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.235708, 29.915743, 21.293713>,  <28.042753, 29.908796, 21.436262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.235708, 29.915743, 21.293713>,  <28.557299, 29.927320, 21.056131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235708, 29.915743, 21.293713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571576, -0.313202, 0.758423,
		0.164074, 0.949245, 0.268352,
		-0.803978, -0.028946, 0.593954,
		27.994514, 29.907059, 21.471899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705322, 30.413603, 21.565145>,  <28.557299, 29.927320, 21.056131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705322, 30.413603, 21.565145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.450397, 30.131346, 21.689020>,  <28.297443, 29.961992, 21.763344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.450397, 30.131346, 21.689020>,  <28.705322, 30.413603, 21.565145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450397, 30.131346, 21.689020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648714, -0.274361, 0.709856,
		-0.415938, 0.653297, 0.632612,
		-0.637311, -0.705641, 0.309686,
		28.259205, 29.919653, 21.781925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677286, 30.486946, 22.319321>,  <28.705322, 30.413603, 21.565145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677286, 30.486946, 22.319321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.524727, 30.121029, 22.266117>,  <28.433191, 29.901478, 22.234196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.524727, 30.121029, 22.266117>,  <28.677286, 30.486946, 22.319321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524727, 30.121029, 22.266117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681257, -0.375406, 0.628457,
		-0.624840, 0.149078, 0.766388,
		-0.381396, -0.914793, -0.133008,
		28.410309, 29.846592, 22.226215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648226, 30.184893, 22.999384>,  <28.677286, 30.486946, 22.319321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648226, 30.184893, 22.999384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.602818, 29.869768, 22.757238>,  <28.575573, 29.680693, 22.611952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.602818, 29.869768, 22.757238>,  <28.648226, 30.184893, 22.999384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602818, 29.869768, 22.757238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751592, -0.466586, 0.466269,
		-0.649787, -0.402055, 0.645080,
		-0.113519, -0.787813, -0.605363,
		28.568762, 29.633425, 22.575630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593147, 29.668255, 23.498983>,  <28.648226, 30.184893, 22.999384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593147, 29.668255, 23.498983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.714487, 29.549906, 23.136671>,  <28.787291, 29.478897, 22.919283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.714487, 29.549906, 23.136671>,  <28.593147, 29.668255, 23.498983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714487, 29.549906, 23.136671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704879, -0.569962, 0.422243,
		-0.641191, -0.766553, 0.035657,
		0.303348, -0.295872, -0.905781,
		28.805492, 29.461143, 22.864937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496469, 28.860151, 23.433811>,  <28.593147, 29.668255, 23.498983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496469, 28.860151, 23.433811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.770557, 28.995728, 23.175945>,  <28.935011, 29.077074, 23.021227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.770557, 28.995728, 23.175945>,  <28.496469, 28.860151, 23.433811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770557, 28.995728, 23.175945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652829, -0.678271, 0.337287,
		-0.322936, -0.651971, -0.686037,
		0.685221, 0.338942, -0.644663,
		28.976124, 29.097410, 22.982546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860647, 28.229689, 23.252724>,  <28.496469, 28.860151, 23.433811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860647, 28.229689, 23.252724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.099316, 28.531015, 23.142090>,  <29.242516, 28.711811, 23.075708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.099316, 28.531015, 23.142090>,  <28.860647, 28.229689, 23.252724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099316, 28.531015, 23.142090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790139, -0.491262, 0.366529,
		0.140235, -0.437238, -0.888345,
		0.596670, 0.753316, -0.276587,
		29.278316, 28.757010, 23.059114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393044, 27.919281, 22.912243>,  <28.860647, 28.229689, 23.252724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393044, 27.919281, 22.912243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.529192, 28.265940, 23.058159>,  <29.610882, 28.473934, 23.145708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.529192, 28.265940, 23.058159>,  <29.393044, 27.919281, 22.912243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529192, 28.265940, 23.058159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898782, -0.413861, 0.144601,
		0.276291, 0.278650, -0.919792,
		0.340373, 0.866645, 0.364792,
		29.631304, 28.525932, 23.167597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981985, 27.995007, 22.614307>,  <29.393044, 27.919281, 22.912243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981985, 27.995007, 22.614307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.984451, 28.210915, 22.951023>,  <29.985931, 28.340460, 23.153053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.984451, 28.210915, 22.951023>,  <29.981985, 27.995007, 22.614307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984451, 28.210915, 22.951023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904078, -0.362740, 0.225972,
		0.427324, 0.759651, -0.490229,
		0.006166, 0.539769, 0.841791,
		29.986301, 28.372845, 23.203560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572384, 28.042454, 22.856924>,  <29.981985, 27.995007, 22.614307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572384, 28.042454, 22.856924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.492615, 28.222162, 23.205265>,  <30.444754, 28.329987, 23.414270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.492615, 28.222162, 23.205265>,  <30.572384, 28.042454, 22.856924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492615, 28.222162, 23.205265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860534, -0.344811, 0.374948,
		0.468734, 0.824172, -0.317850,
		-0.199423, 0.449272, 0.870853,
		30.432787, 28.356943, 23.466520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210226, 28.037195, 23.150442>,  <30.572384, 28.042454, 22.856924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210226, 28.037195, 23.150442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.023609, 28.181499, 23.473475>,  <30.911640, 28.268082, 23.667294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.023609, 28.181499, 23.473475>,  <31.210226, 28.037195, 23.150442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023609, 28.181499, 23.473475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840697, -0.102904, 0.531639,
		0.274899, 0.926963, -0.255283,
		-0.466540, 0.360762, 0.807583,
		30.883648, 28.289728, 23.715750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630501, 28.548790, 23.359930>,  <31.210226, 28.037195, 23.150442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630501, 28.548790, 23.359930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.393553, 28.391010, 23.640930>,  <31.251385, 28.296343, 23.809530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.393553, 28.391010, 23.640930>,  <31.630501, 28.548790, 23.359930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393553, 28.391010, 23.640930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805629, -0.281682, 0.521170,
		-0.007694, 0.874679, 0.484641,
		-0.592371, -0.394451, 0.702499,
		31.215841, 28.272675, 23.851681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913879, 28.725418, 23.889345>,  <31.630501, 28.548790, 23.359930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913879, 28.725418, 23.889345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697172, 28.419600, 24.029034>,  <31.567148, 28.236109, 24.112846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697172, 28.419600, 24.029034>,  <31.913879, 28.725418, 23.889345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697172, 28.419600, 24.029034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834776, -0.440896, 0.329788,
		-0.098168, 0.470190, 0.877089,
		-0.541768, -0.764547, 0.349221,
		31.534641, 28.190235, 24.133801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449728, 29.216297, 24.383699>,  <31.913879, 28.725418, 23.889345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449728, 29.216297, 24.383699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549126, 29.542707, 24.592449>,  <31.608765, 29.738554, 24.717699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549126, 29.542707, 24.592449>,  <31.449728, 29.216297, 24.383699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549126, 29.542707, 24.592449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873369, 0.421757, -0.243615,
		-0.418900, -0.395253, 0.817495,
		0.248495, 0.816025, 0.521876,
		31.623674, 29.787516, 24.749012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825558, 29.501728, 24.639326>,  <31.449728, 29.216297, 24.383699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825558, 29.501728, 24.639326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.068359, 29.819574, 24.634720>,  <31.214041, 30.010283, 24.631956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.068359, 29.819574, 24.634720>,  <30.825558, 29.501728, 24.639326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068359, 29.819574, 24.634720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758548, 0.575007, -0.306549,
		-0.236966, 0.194813, 0.951785,
		0.607003, 0.794616, -0.011518,
		31.250460, 30.057959, 24.631264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459805, 30.109753, 24.859648>,  <30.825558, 29.501728, 24.639326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459805, 30.109753, 24.859648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.750460, 30.277702, 24.642132>,  <30.924852, 30.378471, 24.511623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.750460, 30.277702, 24.642132>,  <30.459805, 30.109753, 24.859648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750460, 30.277702, 24.642132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655226, 0.661539, -0.364754,
		0.206587, 0.621348, 0.755810,
		0.726637, 0.419872, -0.543789,
		30.968451, 30.403664, 24.478994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302238, 30.869356, 24.872406>,  <30.459805, 30.109753, 24.859648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302238, 30.869356, 24.872406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.564072, 30.842920, 24.571167>,  <30.721170, 30.827059, 24.390423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.564072, 30.842920, 24.571167>,  <30.302238, 30.869356, 24.872406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564072, 30.842920, 24.571167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559556, 0.627498, -0.541427,
		0.508350, 0.775808, 0.373767,
		0.654581, -0.066091, -0.753097,
		30.760447, 30.823093, 24.345238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590197, 31.547165, 24.743977>,  <30.302238, 30.869356, 24.872406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590197, 31.547165, 24.743977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.662106, 31.354244, 24.401033>,  <30.705252, 31.238491, 24.195267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.662106, 31.354244, 24.401033>,  <30.590197, 31.547165, 24.743977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662106, 31.354244, 24.401033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536183, 0.682668, -0.496458,
		0.824736, 0.548952, -0.135877,
		0.179773, -0.482302, -0.857360,
		30.716038, 31.209553, 24.143826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772825, 31.982752, 24.283537>,  <30.590197, 31.547165, 24.743977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772825, 31.982752, 24.283537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645615, 31.689114, 24.043549>,  <30.569288, 31.512930, 23.899555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645615, 31.689114, 24.043549>,  <30.772825, 31.982752, 24.283537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645615, 31.689114, 24.043549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523730, 0.663534, -0.534257,
		0.790295, 0.144314, -0.595489,
		-0.318026, -0.734096, -0.599969,
		30.550207, 31.468885, 23.863558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879372, 32.186420, 23.586063>,  <30.772825, 31.982752, 24.283537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879372, 32.186420, 23.586063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.580976, 31.920439, 23.571440>,  <30.401939, 31.760849, 23.562666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.580976, 31.920439, 23.571440>,  <30.879372, 32.186420, 23.586063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580976, 31.920439, 23.571440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556770, 0.652853, -0.513605,
		0.365392, -0.362788, -0.857247,
		-0.745986, -0.664957, -0.036557,
		30.357182, 31.720951, 23.560472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199615, 32.804859, 23.265238>,  <30.879372, 32.186420, 23.586063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199615, 32.804859, 23.265238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.150269, 33.193108, 23.347872>,  <31.120661, 33.426056, 23.397453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.150269, 33.193108, 23.347872>,  <31.199615, 32.804859, 23.265238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150269, 33.193108, 23.347872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705442, -0.060638, 0.706169,
		0.697948, 0.232853, -0.677235,
		-0.123367, 0.970620, 0.206587,
		31.113258, 33.484295, 23.409847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932024, 33.062683, 23.374020>,  <31.199615, 32.804859, 23.265238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932024, 33.062683, 23.374020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.678429, 33.305763, 23.565336>,  <31.526272, 33.451611, 23.680126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.678429, 33.305763, 23.565336>,  <31.932024, 33.062683, 23.374020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678429, 33.305763, 23.565336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696339, 0.179542, 0.694893,
		0.336410, 0.773608, -0.536990,
		-0.633987, 0.607697, 0.478294,
		31.488232, 33.488071, 23.708824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283985, 33.559406, 23.609703>,  <31.932024, 33.062683, 23.374020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283985, 33.559406, 23.609703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959961, 33.629372, 23.833565>,  <31.765547, 33.671352, 23.967882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959961, 33.629372, 23.833565>,  <32.283985, 33.559406, 23.609703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959961, 33.629372, 23.833565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564470, -0.025681, 0.825054,
		0.158689, 0.984248, -0.077932,
		-0.810057, 0.174917, 0.559654,
		31.716944, 33.681847, 24.001461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476158, 34.163254, 24.006695>,  <32.283985, 33.559406, 23.609703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476158, 34.163254, 24.006695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190155, 33.933846, 24.166615>,  <32.018555, 33.796200, 24.262566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190155, 33.933846, 24.166615>,  <32.476158, 34.163254, 24.006695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190155, 33.933846, 24.166615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498886, -0.017934, 0.866482,
		-0.489778, 0.818992, 0.298946,
		-0.715003, -0.573524, 0.399800,
		31.975655, 33.761787, 24.286554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524796, 34.277802, 24.671703>,  <32.476158, 34.163254, 24.006695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524796, 34.277802, 24.671703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291775, 33.954338, 24.704464>,  <32.151962, 33.760262, 24.724121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291775, 33.954338, 24.704464>,  <32.524796, 34.277802, 24.671703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291775, 33.954338, 24.704464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331565, -0.144433, 0.932311,
		-0.742088, 0.570279, 0.352262,
		-0.582555, -0.808654, 0.081902,
		32.117008, 33.711742, 24.729034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254173, 34.413166, 25.341890>,  <32.524796, 34.277802, 24.671703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254173, 34.413166, 25.341890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.196049, 34.028965, 25.246964>,  <32.161175, 33.798443, 25.190006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.196049, 34.028965, 25.246964>,  <32.254173, 34.413166, 25.341890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196049, 34.028965, 25.246964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482008, -0.278202, 0.830826,
		-0.864032, 0.006342, 0.503396,
		-0.145315, -0.960502, -0.237318,
		32.152454, 33.740814, 25.175768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941628, 34.052715, 25.930578>,  <32.254173, 34.413166, 25.341890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941628, 34.052715, 25.930578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101990, 33.757992, 25.712814>,  <32.198208, 33.581158, 25.582155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101990, 33.757992, 25.712814>,  <31.941628, 34.052715, 25.930578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101990, 33.757992, 25.712814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541154, -0.289036, 0.789690,
		-0.739207, -0.611202, 0.282852,
		0.400906, -0.736811, -0.544412,
		32.222263, 33.536949, 25.549490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.442984, 32.299484, 18.659525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.330564, 31.969826, 18.856215>,  <31.263113, 31.772030, 18.974228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.330564, 31.969826, 18.856215>,  <31.442984, 32.299484, 18.659525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330564, 31.969826, 18.856215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910913, -0.067806, 0.406989,
		-0.302077, 0.562302, 0.769783,
		-0.281047, -0.824148, 0.491725,
		31.246250, 31.722582, 19.003733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674335, 32.402489, 19.265179>,  <31.442984, 32.299484, 18.659525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674335, 32.402489, 19.265179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.636835, 32.005150, 19.238415>,  <31.614336, 31.766747, 19.222357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.636835, 32.005150, 19.238415>,  <31.674335, 32.402489, 19.265179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636835, 32.005150, 19.238415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877809, -0.114179, 0.465204,
		-0.469748, -0.015119, 0.882671,
		-0.093749, -0.993345, -0.066907,
		31.608711, 31.707146, 19.218342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910601, 32.151588, 19.961195>,  <31.674335, 32.402489, 19.265179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910601, 32.151588, 19.961195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.935368, 31.850735, 19.698757>,  <31.950228, 31.670223, 19.541294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.935368, 31.850735, 19.698757>,  <31.910601, 32.151588, 19.961195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935368, 31.850735, 19.698757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792057, -0.362951, 0.490829,
		-0.607299, -0.550055, 0.573260,
		0.061917, -0.752134, -0.656095,
		31.953943, 31.625093, 19.501928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179455, 31.652794, 20.386963>,  <31.910601, 32.151588, 19.961195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179455, 31.652794, 20.386963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.228626, 31.466406, 20.036474>,  <32.258129, 31.354572, 19.826181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.228626, 31.466406, 20.036474>,  <32.179455, 31.652794, 20.386963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228626, 31.466406, 20.036474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849054, -0.407733, 0.335948,
		-0.513805, -0.785255, 0.345511,
		0.122929, -0.465970, -0.876220,
		32.265507, 31.326614, 19.773609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365692, 31.048706, 20.591503>,  <32.179455, 31.652794, 20.386963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365692, 31.048706, 20.591503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.476368, 31.076952, 20.208158>,  <32.542774, 31.093901, 19.978151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.476368, 31.076952, 20.208158>,  <32.365692, 31.048706, 20.591503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476368, 31.076952, 20.208158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858734, -0.465777, 0.213607,
		-0.431298, -0.882080, -0.189517,
		0.276691, 0.070617, -0.958360,
		32.559376, 31.098137, 19.920650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706829, 30.436865, 20.538651>,  <32.365692, 31.048706, 20.591503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706829, 30.436865, 20.538651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.827618, 30.684015, 20.248260>,  <32.900089, 30.832306, 20.074026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.827618, 30.684015, 20.248260>,  <32.706829, 30.436865, 20.538651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827618, 30.684015, 20.248260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889779, -0.456036, -0.018029,
		-0.342211, -0.640514, -0.687483,
		0.301969, 0.617877, -0.725976,
		32.918209, 30.869379, 20.030468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942768, 29.949348, 19.993719>,  <32.706829, 30.436865, 20.538651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942768, 29.949348, 19.993719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.111374, 30.311855, 19.981010>,  <33.212536, 30.529360, 19.973385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.111374, 30.311855, 19.981010>,  <32.942768, 29.949348, 19.993719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111374, 30.311855, 19.981010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906697, -0.420611, 0.031409,
		0.015102, -0.042046, -0.999002,
		0.421512, 0.906266, -0.031771,
		33.237827, 30.583735, 19.971479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543915, 29.839575, 19.578804>,  <32.942768, 29.949348, 19.993719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543915, 29.839575, 19.578804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.607445, 30.174219, 19.788511>,  <33.645561, 30.375006, 19.914335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.607445, 30.174219, 19.788511>,  <33.543915, 29.839575, 19.578804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607445, 30.174219, 19.788511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974148, -0.219196, 0.054669,
		0.160654, 0.502032, -0.849796,
		0.158826, 0.836610, 0.524268,
		33.655094, 30.425201, 19.945791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163914, 30.080145, 19.270485>,  <33.543915, 29.839575, 19.578804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163914, 30.080145, 19.270485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.141415, 30.265375, 19.624298>,  <34.127914, 30.376513, 19.836586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.141415, 30.265375, 19.624298>,  <34.163914, 30.080145, 19.270485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141415, 30.265375, 19.624298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996298, -0.031651, 0.079922,
		0.065006, 0.885753, -0.459581,
		-0.056245, 0.463076, 0.884532,
		34.124542, 30.404299, 19.889658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583378, 30.699472, 19.207825>,  <34.163914, 30.080145, 19.270485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583378, 30.699472, 19.207825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.559727, 30.612543, 19.597548>,  <34.545536, 30.560387, 19.831381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.559727, 30.612543, 19.597548>,  <34.583378, 30.699472, 19.207825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559727, 30.612543, 19.597548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965565, 0.235258, 0.111077,
		-0.253353, 0.947325, 0.195927,
		-0.059132, -0.217322, 0.974307,
		34.541988, 30.547346, 19.889839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061882, 31.236029, 19.534941>,  <34.583378, 30.699472, 19.207825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061882, 31.236029, 19.534941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001850, 30.938152, 19.795069>,  <34.965832, 30.759426, 19.951145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001850, 30.938152, 19.795069>,  <35.061882, 31.236029, 19.534941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001850, 30.938152, 19.795069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962389, 0.040624, 0.268619,
		-0.226456, 0.666173, 0.710585,
		-0.150080, -0.744690, 0.650318,
		34.956825, 30.714745, 19.990164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387970, 31.460377, 20.242659>,  <35.061882, 31.236029, 19.534941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387970, 31.460377, 20.242659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.348690, 31.063196, 20.216105>,  <35.325123, 30.824888, 20.200172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.348690, 31.063196, 20.216105>,  <35.387970, 31.460377, 20.242659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348690, 31.063196, 20.216105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905194, -0.116839, 0.408623,
		-0.413499, -0.019968, 0.910286,
		-0.098198, -0.992950, -0.066388,
		35.319229, 30.765310, 20.196188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012478, 31.793886, 20.769629>,  <35.387970, 31.460377, 20.242659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012478, 31.793886, 20.769629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.067226, 32.170235, 20.893581>,  <35.100075, 32.396042, 20.967953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.067226, 32.170235, 20.893581>,  <35.012478, 31.793886, 20.769629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067226, 32.170235, 20.893581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836237, 0.277441, -0.473005,
		-0.531011, -0.194393, 0.824766,
		0.136875, 0.940871, 0.309883,
		35.108288, 32.452496, 20.986546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406464, 32.054745, 21.215353>,  <35.012478, 31.793886, 20.769629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406464, 32.054745, 21.215353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.580555, 32.381599, 21.064161>,  <34.685009, 32.577713, 20.973446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.580555, 32.381599, 21.064161>,  <34.406464, 32.054745, 21.215353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580555, 32.381599, 21.064161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887113, 0.317577, -0.334927,
		-0.153642, 0.481081, 0.863108,
		0.435230, 0.817133, -0.377979,
		34.711124, 32.626740, 20.950768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976688, 32.620041, 21.429197>,  <34.406464, 32.054745, 21.215353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976688, 32.620041, 21.429197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.203545, 32.834808, 21.179373>,  <34.339657, 32.963669, 21.029478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.203545, 32.834808, 21.179373>,  <33.976688, 32.620041, 21.429197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203545, 32.834808, 21.179373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823561, 0.379063, -0.421970,
		0.010184, 0.753677, 0.657165,
		0.567136, 0.536919, -0.624560,
		34.373684, 32.995884, 20.992004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780403, 33.241928, 21.489941>,  <33.976688, 32.620041, 21.429197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780403, 33.241928, 21.489941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.943146, 33.210217, 21.125923>,  <34.040791, 33.191189, 20.907513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.943146, 33.210217, 21.125923>,  <33.780403, 33.241928, 21.489941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943146, 33.210217, 21.125923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713666, 0.594277, -0.370831,
		0.570219, 0.800344, 0.185205,
		0.406855, -0.079280, -0.910046,
		34.065201, 33.186432, 20.852909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615650, 33.871552, 21.281178>,  <33.780403, 33.241928, 21.489941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615650, 33.871552, 21.281178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.679832, 33.673355, 20.939713>,  <33.718342, 33.554440, 20.734833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.679832, 33.673355, 20.939713>,  <33.615650, 33.871552, 21.281178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679832, 33.673355, 20.939713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676010, 0.575022, -0.460825,
		0.719210, 0.651030, -0.242688,
		0.160460, -0.495489, -0.853665,
		33.727970, 33.524708, 20.683613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764664, 34.299500, 20.809353>,  <33.615650, 33.871552, 21.281178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764664, 34.299500, 20.809353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.615612, 33.997021, 20.594200>,  <33.526180, 33.815533, 20.465109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.615612, 33.997021, 20.594200>,  <33.764664, 34.299500, 20.809353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615612, 33.997021, 20.594200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650569, 0.626207, -0.429679,
		0.661748, 0.189821, -0.725298,
		-0.372625, -0.756196, -0.537883,
		33.503826, 33.770161, 20.432835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628231, 34.606369, 20.109921>,  <33.764664, 34.299500, 20.809353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628231, 34.606369, 20.109921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.431984, 34.258717, 20.134890>,  <33.314236, 34.050125, 20.149872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.431984, 34.258717, 20.134890>,  <33.628231, 34.606369, 20.109921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431984, 34.258717, 20.134890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824737, 0.440046, -0.355203,
		0.281250, -0.225752, -0.932703,
		-0.490619, -0.869135, 0.062424,
		33.284798, 33.997974, 20.153616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383938, 34.443027, 19.425241>,  <33.628231, 34.606369, 20.109921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383938, 34.443027, 19.425241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151806, 34.224739, 19.667036>,  <33.012527, 34.093765, 19.812113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151806, 34.224739, 19.667036>,  <33.383938, 34.443027, 19.425241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151806, 34.224739, 19.667036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791515, 0.552614, -0.261000,
		-0.191616, -0.629928, -0.752645,
		-0.580333, -0.545718, 0.604487,
		32.977707, 34.061024, 19.848383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897957, 34.257504, 18.970156>,  <33.383938, 34.443027, 19.425241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897957, 34.257504, 18.970156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.749062, 34.185707, 19.334402>,  <32.659725, 34.142632, 19.552950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.749062, 34.185707, 19.334402>,  <32.897957, 34.257504, 18.970156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749062, 34.185707, 19.334402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823777, 0.515888, -0.235056,
		-0.427587, -0.837642, -0.339890,
		-0.372238, -0.179487, 0.910617,
		32.637390, 34.131863, 19.607588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210407, 33.926357, 18.863546>,  <32.897957, 34.257504, 18.970156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210407, 33.926357, 18.863546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200268, 34.054794, 19.242229>,  <32.194183, 34.131859, 19.469439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200268, 34.054794, 19.242229>,  <32.210407, 33.926357, 18.863546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200268, 34.054794, 19.242229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816070, 0.540331, -0.205117,
		-0.577397, -0.777778, 0.248341,
		-0.025349, 0.321097, 0.946707,
		32.192661, 34.151123, 19.526241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541746, 33.715210, 19.091705>,  <32.210407, 33.926357, 18.863546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541746, 33.715210, 19.091705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.640369, 34.001896, 19.352638>,  <31.699543, 34.173908, 19.509197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.640369, 34.001896, 19.352638>,  <31.541746, 33.715210, 19.091705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640369, 34.001896, 19.352638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869194, 0.461233, -0.178229,
		-0.428615, -0.523058, 0.736682,
		0.246558, 0.716711, 0.652330,
		31.714336, 34.216908, 19.548338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038485, 33.771198, 19.546368>,  <31.541746, 33.715210, 19.091705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038485, 33.771198, 19.546368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221607, 34.126369, 19.564220>,  <31.331480, 34.339474, 19.574932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221607, 34.126369, 19.564220>,  <31.038485, 33.771198, 19.546368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221607, 34.126369, 19.564220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852041, 0.452527, -0.263147,
		-0.253853, 0.082441, 0.963723,
		0.457805, 0.887932, 0.044632,
		31.358948, 34.392750, 19.577610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620813, 34.154991, 20.082340>,  <31.038485, 33.771198, 19.546368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620813, 34.154991, 20.082340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.820118, 34.437103, 19.880619>,  <30.939701, 34.606369, 19.759586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.820118, 34.437103, 19.880619>,  <30.620813, 34.154991, 20.082340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820118, 34.437103, 19.880619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845836, 0.523209, -0.103989,
		0.190514, 0.478371, 0.857243,
		0.498262, 0.705276, -0.504302,
		30.969597, 34.648685, 19.729328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378143, 34.725574, 20.351927>,  <30.620813, 34.154991, 20.082340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378143, 34.725574, 20.351927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.546144, 34.822605, 20.002127>,  <30.646946, 34.880825, 19.792246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.546144, 34.822605, 20.002127>,  <30.378143, 34.725574, 20.351927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546144, 34.822605, 20.002127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833025, 0.485399, -0.265440,
		0.360092, 0.839967, 0.405942,
		0.420004, 0.242577, -0.874501,
		30.672146, 34.895378, 19.739777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709557, 34.495361, 20.924059>,  <30.378143, 34.725574, 20.351927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709557, 34.495361, 20.924059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320724, 34.416424, 20.974844>,  <30.087425, 34.369061, 21.005316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320724, 34.416424, 20.974844>,  <30.709557, 34.495361, 20.924059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320724, 34.416424, 20.974844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215963, -0.540761, 0.812980,
		-0.091780, 0.817700, 0.568281,
		-0.972078, -0.197343, 0.126962,
		30.029100, 34.357220, 21.012932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565222, 34.856041, 21.533066>,  <30.709557, 34.495361, 20.924059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565222, 34.856041, 21.533066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314253, 34.547348, 21.491550>,  <30.163671, 34.362133, 21.466642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314253, 34.547348, 21.491550>,  <30.565222, 34.856041, 21.533066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314253, 34.547348, 21.491550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263492, -0.335839, 0.904314,
		-0.732742, 0.540041, 0.414058,
		-0.627424, -0.771731, -0.103786,
		30.126026, 34.315830, 21.460415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128208, 34.883297, 22.156687>,  <30.565222, 34.856041, 21.533066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128208, 34.883297, 22.156687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086355, 34.506767, 22.028336>,  <30.061243, 34.280849, 21.951324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086355, 34.506767, 22.028336>,  <30.128208, 34.883297, 22.156687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086355, 34.506767, 22.028336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160090, -0.334383, 0.928741,
		-0.981541, 0.045808, 0.185684,
		-0.104633, -0.941323, -0.320878,
		30.054966, 34.224369, 21.932072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599056, 34.512959, 22.568117>,  <30.128208, 34.883297, 22.156687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599056, 34.512959, 22.568117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837896, 34.231609, 22.413853>,  <29.981199, 34.062798, 22.321295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837896, 34.231609, 22.413853>,  <29.599056, 34.512959, 22.568117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837896, 34.231609, 22.413853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273410, -0.273533, 0.922186,
		-0.754135, -0.656079, 0.028985,
		0.597099, -0.703378, -0.385660,
		30.017027, 34.020596, 22.298155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514677, 33.851467, 22.983944>,  <29.599056, 34.512959, 22.568117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514677, 33.851467, 22.983944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864197, 33.785988, 22.800783>,  <30.073910, 33.746700, 22.690886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864197, 33.785988, 22.800783>,  <29.514677, 33.851467, 22.983944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864197, 33.785988, 22.800783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436746, -0.149884, 0.887011,
		-0.213839, -0.975057, -0.059472,
		0.873800, -0.163703, -0.457903,
		30.126337, 33.736877, 22.663412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789074, 33.252415, 23.209930>,  <29.514677, 33.851467, 22.983944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789074, 33.252415, 23.209930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.104221, 33.450409, 23.063366>,  <30.293310, 33.569206, 22.975428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.104221, 33.450409, 23.063366>,  <29.789074, 33.252415, 23.209930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104221, 33.450409, 23.063366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515653, -0.204932, 0.831928,
		0.336699, -0.844391, -0.416698,
		0.787867, 0.494981, -0.366413,
		30.340582, 33.598904, 22.953442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399843, 32.893291, 23.372515>,  <29.789074, 33.252415, 23.209930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399843, 32.893291, 23.372515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555626, 33.255150, 23.303299>,  <30.649096, 33.472263, 23.261770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555626, 33.255150, 23.303299>,  <30.399843, 32.893291, 23.372515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555626, 33.255150, 23.303299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572361, -0.090516, 0.814991,
		0.721614, -0.416444, -0.553035,
		0.389456, 0.904645, -0.173038,
		30.672462, 33.526543, 23.251387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498745, 32.367153, 22.911131>,  <30.399843, 32.893291, 23.372515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498745, 32.367153, 22.911131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264488, 32.080406, 23.062458>,  <30.123934, 31.908358, 23.153254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.264488, 32.080406, 23.062458>,  <30.498745, 32.367153, 22.911131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264488, 32.080406, 23.062458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741298, 0.284884, -0.607715,
		0.327877, -0.636348, -0.698254,
		-0.585639, -0.716870, 0.378317,
		30.088797, 31.865345, 23.175953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204273, 32.003124, 22.289097>,  <30.498745, 32.367153, 22.911131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204273, 32.003124, 22.289097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964882, 31.958967, 22.606497>,  <29.821247, 31.932474, 22.796936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.964882, 31.958967, 22.606497>,  <30.204273, 32.003124, 22.289097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964882, 31.958967, 22.606497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793064, 0.221919, -0.567276,
		-0.113471, -0.968796, -0.220360,
		-0.598477, -0.110390, 0.793499,
		29.785339, 31.925850, 22.844547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614845, 31.698843, 22.034365>,  <30.204273, 32.003124, 22.289097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614845, 31.698843, 22.034365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.479044, 31.816139, 22.391855>,  <29.397562, 31.886517, 22.606350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.479044, 31.816139, 22.391855>,  <29.614845, 31.698843, 22.034365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479044, 31.816139, 22.391855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792425, 0.422733, -0.439726,
		-0.506753, -0.857500, 0.088851,
		-0.339505, 0.293240, 0.893726,
		29.377192, 31.904112, 22.659973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012955, 31.333399, 22.213011>,  <29.614845, 31.698843, 22.034365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012955, 31.333399, 22.213011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002775, 31.667948, 22.432037>,  <28.996668, 31.868677, 22.563454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002775, 31.667948, 22.432037>,  <29.012955, 31.333399, 22.213011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002775, 31.667948, 22.432037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872871, 0.248403, -0.419992,
		-0.487288, -0.488644, 0.723725,
		-0.025451, 0.836375, 0.547567,
		28.995140, 31.918859, 22.596308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409079, 31.330664, 22.540262>,  <29.012955, 31.333399, 22.213011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409079, 31.330664, 22.540262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.511143, 31.717398, 22.535778>,  <28.572382, 31.949438, 22.533087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.511143, 31.717398, 22.535778>,  <28.409079, 31.330664, 22.540262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511143, 31.717398, 22.535778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903518, 0.234290, -0.358835,
		-0.344307, 0.101689, 0.933334,
		0.255160, 0.966834, -0.011210,
		28.587690, 32.007446, 22.532415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866167, 31.629665, 22.853090>,  <28.409079, 31.330664, 22.540262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866167, 31.629665, 22.853090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071163, 31.898188, 22.638912>,  <28.194160, 32.059299, 22.510405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071163, 31.898188, 22.638912>,  <27.866167, 31.629665, 22.853090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071163, 31.898188, 22.638912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832093, 0.234242, -0.502744,
		-0.212071, 0.703192, 0.678636,
		0.512491, 0.671306, -0.535445,
		28.224911, 32.099579, 22.478279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441072, 32.161209, 22.814651>,  <27.866167, 31.629665, 22.853090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441072, 32.161209, 22.814651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691694, 32.275314, 22.524532>,  <27.842068, 32.343777, 22.350460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691694, 32.275314, 22.524532>,  <27.441072, 32.161209, 22.814651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691694, 32.275314, 22.524532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769088, 0.075579, -0.634659,
		-0.126224, 0.955466, 0.266743,
		0.626555, 0.285259, -0.725297,
		27.879662, 32.360893, 22.306944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029819, 32.641487, 22.364065>,  <27.441072, 32.161209, 22.814651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029819, 32.641487, 22.364065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.327253, 32.511810, 22.130146>,  <27.505713, 32.434006, 21.989796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.327253, 32.511810, 22.130146>,  <27.029819, 32.641487, 22.364065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327253, 32.511810, 22.130146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664434, -0.260264, -0.700564,
		0.074913, 0.909486, -0.408929,
		0.743583, -0.324188, -0.584796,
		27.550327, 32.414555, 21.954708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966219, 33.057968, 21.655424>,  <27.029819, 32.641487, 22.364065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966219, 33.057968, 21.655424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.177065, 32.727951, 21.573980>,  <27.303574, 32.529942, 21.525114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.177065, 32.727951, 21.573980>,  <26.966219, 33.057968, 21.655424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177065, 32.727951, 21.573980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662997, -0.249391, -0.705861,
		0.531586, 0.507062, -0.678458,
		0.527116, -0.825041, -0.203608,
		27.335199, 32.480438, 21.512897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.656902, 28.934961, 29.894554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.698288, 28.644949, 29.622194>,  <40.723118, 28.470942, 29.458778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.698288, 28.644949, 29.622194>,  <40.656902, 28.934961, 29.894554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698288, 28.644949, 29.622194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886170, 0.243670, -0.394116,
		0.451662, 0.644168, -0.617292,
		0.103462, -0.725033, -0.680899,
		40.729328, 28.427439, 29.417925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602238, 29.111025, 29.103613>,  <40.656902, 28.934961, 29.894554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602238, 29.111025, 29.103613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.547924, 28.720978, 29.033522>,  <40.515335, 28.486950, 28.991467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.547924, 28.720978, 29.033522>,  <40.602238, 29.111025, 29.103613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547924, 28.720978, 29.033522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860461, 0.203740, -0.467009,
		0.491090, 0.087364, -0.866717,
		-0.135785, -0.975119, -0.175228,
		40.507187, 28.428442, 28.980953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442017, 29.060335, 28.455170>,  <40.602238, 29.111025, 29.103613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442017, 29.060335, 28.455170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.269188, 28.757099, 28.650560>,  <40.165489, 28.575157, 28.767796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.269188, 28.757099, 28.650560>,  <40.442017, 29.060335, 28.455170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269188, 28.757099, 28.650560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888087, 0.263436, -0.376699,
		0.156889, -0.596572, -0.787075,
		-0.432073, -0.758092, 0.488478,
		40.139565, 28.529673, 28.797104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060608, 28.805073, 27.985903>,  <40.442017, 29.060335, 28.455170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060608, 28.805073, 27.985903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.901253, 28.653360, 28.319954>,  <39.805641, 28.562332, 28.520384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.901253, 28.653360, 28.319954>,  <40.060608, 28.805073, 27.985903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901253, 28.653360, 28.319954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917219, 0.164799, -0.362700,
		-0.000064, -0.910488, -0.413534,
		-0.398384, -0.379278, 0.835128,
		39.781738, 28.539576, 28.570492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526260, 28.380398, 27.742237>,  <40.060608, 28.805073, 27.985903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526260, 28.380398, 27.742237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.444672, 28.438791, 28.129450>,  <39.395718, 28.473827, 28.361776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.444672, 28.438791, 28.129450>,  <39.526260, 28.380398, 27.742237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444672, 28.438791, 28.129450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974219, 0.067096, -0.215398,
		-0.096395, -0.987009, 0.128534,
		-0.203976, 0.145983, 0.968030,
		39.383480, 28.482586, 28.419859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808651, 28.060747, 27.858404>,  <39.526260, 28.380398, 27.742237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808651, 28.060747, 27.858404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.874557, 28.314741, 28.160305>,  <38.914101, 28.467138, 28.341446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.874557, 28.314741, 28.160305>,  <38.808651, 28.060747, 27.858404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874557, 28.314741, 28.160305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972217, 0.233549, 0.015745,
		-0.166273, -0.736375, 0.655824,
		0.164762, 0.634985, 0.754750,
		38.923985, 28.505238, 28.386730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191372, 27.935251, 28.258816>,  <38.808651, 28.060747, 27.858404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191372, 27.935251, 28.258816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346527, 28.294668, 28.340954>,  <38.439621, 28.510319, 28.390238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346527, 28.294668, 28.340954>,  <38.191372, 27.935251, 28.258816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346527, 28.294668, 28.340954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921388, 0.383871, 0.060715,
		-0.024272, -0.212755, 0.976804,
		0.387885, 0.898542, 0.205347,
		38.462891, 28.564230, 28.402557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745033, 28.233425, 28.773573>,  <38.191372, 27.935251, 28.258816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745033, 28.233425, 28.773573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955292, 28.550014, 28.648825>,  <38.081448, 28.739969, 28.573975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955292, 28.550014, 28.648825>,  <37.745033, 28.233425, 28.773573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955292, 28.550014, 28.648825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850618, 0.494203, -0.179476,
		0.012077, 0.359624, 0.933019,
		0.525645, 0.791476, -0.311872,
		38.112984, 28.787457, 28.555264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556236, 28.781326, 29.158104>,  <37.745033, 28.233425, 28.773573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556236, 28.781326, 29.158104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684479, 28.944073, 28.815952>,  <37.761425, 29.041721, 28.610662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684479, 28.944073, 28.815952>,  <37.556236, 28.781326, 29.158104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684479, 28.944073, 28.815952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866690, 0.490365, -0.091598,
		0.382179, 0.770715, 0.509841,
		0.320605, 0.406867, -0.855378,
		37.780659, 29.066133, 28.559340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211601, 29.364761, 29.192236>,  <37.556236, 28.781326, 29.158104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211601, 29.364761, 29.192236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349808, 29.321310, 28.819395>,  <37.432732, 29.295238, 28.595690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349808, 29.321310, 28.819395>,  <37.211601, 29.364761, 29.192236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349808, 29.321310, 28.819395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765713, 0.541577, -0.346955,
		0.542495, 0.833604, 0.103947,
		0.345518, -0.108628, -0.932104,
		37.453465, 29.288721, 28.539764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996532, 30.041250, 28.840446>,  <37.211601, 29.364761, 29.192236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996532, 30.041250, 28.840446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073982, 29.771315, 28.555601>,  <37.120453, 29.609354, 28.384695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073982, 29.771315, 28.555601>,  <36.996532, 30.041250, 28.840446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073982, 29.771315, 28.555601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797474, 0.314518, -0.514892,
		0.571441, 0.667586, -0.477267,
		0.193625, -0.674838, -0.712112,
		37.132069, 29.568863, 28.341969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991653, 30.416882, 28.309898>,  <36.996532, 30.041250, 28.840446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991653, 30.416882, 28.309898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913124, 30.045820, 28.182831>,  <36.866005, 29.823183, 28.106590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913124, 30.045820, 28.182831>,  <36.991653, 30.416882, 28.309898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913124, 30.045820, 28.182831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844895, 0.324451, -0.425305,
		0.497604, 0.184900, -0.847468,
		-0.196323, -0.927655, -0.317669,
		36.854229, 29.767523, 28.087530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536983, 31.056675, 28.032190>,  <36.991653, 30.416882, 28.309898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536983, 31.056675, 28.032190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449524, 31.421562, 28.170782>,  <37.397049, 31.640495, 28.253937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449524, 31.421562, 28.170782>,  <37.536983, 31.056675, 28.032190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449524, 31.421562, 28.170782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846396, 0.000598, 0.532554,
		0.485600, 0.409700, -0.772230,
		-0.218649, 0.912220, 0.346478,
		37.383930, 31.695229, 28.274725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098183, 31.557613, 27.945799>,  <37.536983, 31.056675, 28.032190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098183, 31.557613, 27.945799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.862953, 31.678698, 28.245810>,  <37.721817, 31.751348, 28.425816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.862953, 31.678698, 28.245810>,  <38.098183, 31.557613, 27.945799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862953, 31.678698, 28.245810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804084, 0.118718, 0.582541,
		0.087300, 0.945660, -0.313220,
		-0.588071, 0.302711, 0.750026,
		37.686531, 31.769510, 28.470818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503330, 32.078579, 28.187767>,  <38.098183, 31.557613, 27.945799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503330, 32.078579, 28.187767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225903, 32.005741, 28.466564>,  <38.059444, 31.962038, 28.633842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225903, 32.005741, 28.466564>,  <38.503330, 32.078579, 28.187767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225903, 32.005741, 28.466564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711428, -0.021022, 0.702445,
		-0.113261, 0.983056, 0.144129,
		-0.693572, -0.182097, 0.696992,
		38.017830, 31.951113, 28.675661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565006, 32.684837, 28.722092>,  <38.503330, 32.078579, 28.187767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565006, 32.684837, 28.722092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.397259, 32.358181, 28.880701>,  <38.296612, 32.162186, 28.975866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.397259, 32.358181, 28.880701>,  <38.565006, 32.684837, 28.722092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397259, 32.358181, 28.880701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733032, -0.046948, 0.678572,
		-0.535534, 0.575233, 0.618312,
		-0.419366, -0.816641, 0.396522,
		38.271450, 32.113190, 28.999657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664959, 32.803131, 29.463488>,  <38.565006, 32.684837, 28.722092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664959, 32.803131, 29.463488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585644, 32.413540, 29.419573>,  <38.538055, 32.179787, 29.393225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585644, 32.413540, 29.419573>,  <38.664959, 32.803131, 29.463488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585644, 32.413540, 29.419573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718294, -0.220609, 0.659837,
		-0.666886, 0.051977, 0.743345,
		-0.198285, -0.973976, -0.109787,
		38.526157, 32.121346, 29.386637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049965, 32.406937, 30.168282>,  <38.664959, 32.803131, 29.463488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049965, 32.406937, 30.168282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981319, 32.123371, 29.894642>,  <38.940132, 31.953232, 29.730457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981319, 32.123371, 29.894642>,  <39.049965, 32.406937, 30.168282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981319, 32.123371, 29.894642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800392, -0.505192, 0.322729,
		-0.574388, -0.492164, 0.654104,
		-0.171613, -0.708911, -0.684101,
		38.929836, 31.910698, 29.689411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054478, 31.829174, 30.607412>,  <39.049965, 32.406937, 30.168282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054478, 31.829174, 30.607412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115208, 31.709482, 30.230602>,  <39.151646, 31.637667, 30.004517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115208, 31.709482, 30.230602>,  <39.054478, 31.829174, 30.607412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115208, 31.709482, 30.230602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725394, -0.613649, 0.311832,
		-0.671382, -0.730683, 0.123891,
		0.151825, -0.299228, -0.942026,
		39.160755, 31.619713, 29.947994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006435, 31.127678, 30.707399>,  <39.054478, 31.829174, 30.607412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006435, 31.127678, 30.707399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202190, 31.192108, 30.364574>,  <39.319641, 31.230766, 30.158880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202190, 31.192108, 30.364574>,  <39.006435, 31.127678, 30.707399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202190, 31.192108, 30.364574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698424, -0.660911, 0.274590,
		-0.522212, -0.732974, -0.435941,
		0.489385, 0.161077, -0.857062,
		39.349007, 31.240431, 30.107456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113533, 30.394382, 30.313572>,  <39.006435, 31.127678, 30.707399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113533, 30.394382, 30.313572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.373768, 30.669971, 30.185791>,  <39.529907, 30.835325, 30.109121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.373768, 30.669971, 30.185791>,  <39.113533, 30.394382, 30.313572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373768, 30.669971, 30.185791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759159, -0.601292, 0.249252,
		-0.020357, -0.404676, -0.914234,
		0.650588, 0.688974, -0.319454,
		39.568943, 30.876663, 30.089954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628208, 30.011709, 29.900887>,  <39.113533, 30.394382, 30.313572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628208, 30.011709, 29.900887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.804760, 30.350296, 30.020002>,  <39.910690, 30.553448, 30.091471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.804760, 30.350296, 30.020002>,  <39.628208, 30.011709, 29.900887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804760, 30.350296, 30.020002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875787, -0.478638, 0.062466,
		0.195408, 0.233228, -0.952586,
		0.441375, 0.846469, 0.297788,
		39.937172, 30.604237, 30.109339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324421, 29.962133, 29.578648>,  <39.628208, 30.011709, 29.900887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324421, 29.962133, 29.578648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.344116, 30.252148, 29.853428>,  <40.355934, 30.426157, 30.018295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.344116, 30.252148, 29.853428>,  <40.324421, 29.962133, 29.578648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344116, 30.252148, 29.853428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878990, -0.358063, 0.314909,
		0.474291, 0.588315, -0.654930,
		0.049241, 0.725036, 0.686949,
		40.358887, 30.469658, 30.059513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994846, 30.257277, 29.463209>,  <40.324421, 29.962133, 29.578648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994846, 30.257277, 29.463209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.871731, 30.302301, 29.841118>,  <40.797863, 30.329317, 30.067863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.871731, 30.302301, 29.841118>,  <40.994846, 30.257277, 29.463209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871731, 30.302301, 29.841118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760625, -0.567425, 0.315401,
		0.571591, 0.815695, 0.089028,
		-0.307788, 0.112564, 0.944773,
		40.779396, 30.336071, 30.124550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665478, 30.324688, 29.894434>,  <40.994846, 30.257277, 29.463209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665478, 30.324688, 29.894434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.402576, 30.259275, 30.188721>,  <41.244835, 30.220028, 30.365294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.402576, 30.259275, 30.188721>,  <41.665478, 30.324688, 29.894434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402576, 30.259275, 30.188721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635331, -0.645345, 0.424127,
		0.405435, 0.746182, 0.528048,
		-0.657249, -0.163529, 0.735718,
		41.205402, 30.210217, 30.409435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975185, 30.412455, 30.564739>,  <41.665478, 30.324688, 29.894434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975185, 30.412455, 30.564739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.661564, 30.175175, 30.637810>,  <41.473389, 30.032806, 30.681652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.661564, 30.175175, 30.637810>,  <41.975185, 30.412455, 30.564739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661564, 30.175175, 30.637810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594568, -0.633311, 0.495384,
		-0.178171, 0.497022, 0.849249,
		-0.784056, -0.593200, 0.182675,
		41.426346, 29.997215, 30.692612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993874, 31.072252, 29.985470>,  <41.975185, 30.412455, 30.564739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993874, 31.072252, 29.985470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.343712, 31.242805, 29.893147>,  <42.553616, 31.345137, 29.837751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.343712, 31.242805, 29.893147>,  <41.993874, 31.072252, 29.985470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343712, 31.242805, 29.893147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462628, -0.876350, 0.134117,
		-0.145086, -0.224077, -0.963712,
		0.874601, 0.426381, -0.230810,
		42.606091, 31.370720, 29.823904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742203, 31.769773, 29.957180>,  <41.993874, 31.072252, 29.985470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742203, 31.769773, 29.957180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.125751, 31.860506, 29.888926>,  <42.355881, 31.914946, 29.847973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.125751, 31.860506, 29.888926>,  <41.742203, 31.769773, 29.957180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125751, 31.860506, 29.888926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045101, 0.715273, 0.697388,
		0.280241, -0.661008, 0.696084,
		0.958870, 0.226831, -0.170637,
		42.413414, 31.928556, 29.837734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991722, 31.770605, 29.249266>,  <41.742203, 31.769773, 29.957180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991722, 31.770605, 29.249266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.023438, 31.410358, 29.078337>,  <42.042465, 31.194210, 28.975779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.023438, 31.410358, 29.078337>,  <41.991722, 31.770605, 29.249266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023438, 31.410358, 29.078337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755706, 0.225252, -0.614955,
		0.650094, 0.371689, -0.662741,
		0.079289, -0.900616, -0.427323,
		42.047226, 31.140173, 28.950140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233250, 31.857246, 28.563478>,  <41.991722, 31.770605, 29.249266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233250, 31.857246, 28.563478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.037331, 31.509899, 28.594563>,  <41.919781, 31.301491, 28.613213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.037331, 31.509899, 28.594563>,  <42.233250, 31.857246, 28.563478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037331, 31.509899, 28.594563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594221, 0.267281, -0.758592,
		0.637967, -0.417731, -0.646915,
		-0.489796, -0.868367, 0.077708,
		41.890392, 31.249390, 28.617874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115421, 31.683081, 27.849195>,  <42.233250, 31.857246, 28.563478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115421, 31.683081, 27.849195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.903477, 31.400118, 28.036308>,  <41.776310, 31.230339, 28.148575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.903477, 31.400118, 28.036308>,  <42.115421, 31.683081, 27.849195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903477, 31.400118, 28.036308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610275, -0.064971, -0.789521,
		0.588906, -0.703813, -0.397288,
		-0.529863, -0.707408, 0.467780,
		41.744518, 31.187895, 28.176643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067947, 31.130028, 27.347401>,  <42.115421, 31.683081, 27.849195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067947, 31.130028, 27.347401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.763271, 31.127394, 27.606564>,  <41.580463, 31.125814, 27.762060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.763271, 31.127394, 27.606564>,  <42.067947, 31.130028, 27.347401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763271, 31.127394, 27.606564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647671, -0.021008, -0.761630,
		0.018631, -0.999758, 0.011733,
		-0.761692, -0.006591, 0.647906,
		41.534763, 31.125418, 27.800936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657028, 30.673985, 27.030012>,  <42.067947, 31.130028, 27.347401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657028, 30.673985, 27.030012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.416985, 30.875465, 27.278578>,  <41.272961, 30.996355, 27.427717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.416985, 30.875465, 27.278578>,  <41.657028, 30.673985, 27.030012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416985, 30.875465, 27.278578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707844, 0.027468, -0.705835,
		-0.372602, -0.863439, 0.340060,
		-0.600105, 0.503705, 0.621415,
		41.236954, 31.026577, 27.465002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962467, 30.372967, 26.960199>,  <41.657028, 30.673985, 27.030012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962467, 30.372967, 26.960199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.896435, 30.740376, 27.103903>,  <40.856815, 30.960821, 27.190125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.896435, 30.740376, 27.103903>,  <40.962467, 30.372967, 26.960199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896435, 30.740376, 27.103903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670202, 0.162772, -0.724110,
		-0.723588, -0.360310, 0.588725,
		-0.165076, 0.918522, 0.359260,
		40.846912, 31.015932, 27.211681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255219, 30.485571, 26.811384>,  <40.962467, 30.372967, 26.960199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255219, 30.485571, 26.811384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.397423, 30.851633, 26.887384>,  <40.482746, 31.071270, 26.932985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.397423, 30.851633, 26.887384>,  <40.255219, 30.485571, 26.811384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397423, 30.851633, 26.887384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632484, 0.385217, -0.671990,
		-0.688168, 0.118728, 0.715771,
		0.355512, 0.915156, 0.190000,
		40.504078, 31.126181, 26.944384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635296, 30.864721, 26.892191>,  <40.255219, 30.485571, 26.811384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635296, 30.864721, 26.892191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932896, 31.109158, 26.784098>,  <40.111458, 31.255819, 26.719242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932896, 31.109158, 26.784098>,  <39.635296, 30.864721, 26.892191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932896, 31.109158, 26.784098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535361, 0.303190, -0.788330,
		-0.399809, 0.731194, 0.552728,
		0.744004, 0.611090, -0.270235,
		40.156097, 31.292484, 26.703028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283924, 31.465403, 26.754858>,  <39.635296, 30.864721, 26.892191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283924, 31.465403, 26.754858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.630756, 31.530493, 26.566525>,  <39.838856, 31.569548, 26.453524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.630756, 31.530493, 26.566525>,  <39.283924, 31.465403, 26.754858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630756, 31.530493, 26.566525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495005, 0.387684, -0.777606,
		0.055999, 0.907316, 0.416704,
		0.867084, 0.162725, -0.470836,
		39.890881, 31.579309, 26.425274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215294, 32.166546, 26.434439>,  <39.283924, 31.465403, 26.754858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215294, 32.166546, 26.434439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.521275, 32.023502, 26.220163>,  <39.704865, 31.937675, 26.091599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.521275, 32.023502, 26.220163>,  <39.215294, 32.166546, 26.434439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521275, 32.023502, 26.220163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438271, 0.320464, -0.839775,
		0.471979, 0.877166, 0.088411,
		0.764954, -0.357608, -0.535688,
		39.750759, 31.916220, 26.059456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312248, 32.682976, 25.909904>,  <39.215294, 32.166546, 26.434439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312248, 32.682976, 25.909904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475834, 32.349800, 25.760794>,  <39.573986, 32.149895, 25.671328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475834, 32.349800, 25.760794>,  <39.312248, 32.682976, 25.909904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475834, 32.349800, 25.760794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545923, 0.104024, -0.831352,
		0.731243, 0.543500, -0.412178,
		0.408963, -0.832939, -0.372776,
		39.598522, 32.099918, 25.648960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359974, 32.876640, 25.272749>,  <39.312248, 32.682976, 25.909904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359974, 32.876640, 25.272749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396564, 32.478504, 25.260557>,  <39.418518, 32.239624, 25.253242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396564, 32.478504, 25.260557>,  <39.359974, 32.876640, 25.272749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396564, 32.478504, 25.260557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739370, -0.047384, -0.671630,
		0.667056, 0.083975, -0.740260,
		0.091477, -0.995341, -0.030481,
		39.424007, 32.179901, 25.251413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342655, 32.822880, 24.647549>,  <39.359974, 32.876640, 25.272749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342655, 32.822880, 24.647549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244518, 32.457886, 24.778502>,  <39.185638, 32.238888, 24.857073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244518, 32.457886, 24.778502>,  <39.342655, 32.822880, 24.647549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244518, 32.457886, 24.778502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582448, -0.131214, -0.802208,
		0.774961, -0.387494, -0.499284,
		-0.245338, -0.912486, 0.327381,
		39.170918, 32.184139, 24.876717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497467, 32.447788, 24.052322>,  <39.342655, 32.822880, 24.647549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497467, 32.447788, 24.052322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228970, 32.291431, 24.304237>,  <39.067871, 32.197617, 24.455387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228970, 32.291431, 24.304237>,  <39.497467, 32.447788, 24.052322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228970, 32.291431, 24.304237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689290, 0.016707, -0.724293,
		0.272600, -0.920284, -0.280654,
		-0.671244, -0.390895, 0.629789,
		39.027596, 32.174164, 24.493174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242752, 31.851379, 23.722694>,  <39.497467, 32.447788, 24.052322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242752, 31.851379, 23.722694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946568, 31.948195, 23.973494>,  <38.768856, 32.006283, 24.123974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946568, 31.948195, 23.973494>,  <39.242752, 31.851379, 23.722694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946568, 31.948195, 23.973494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663005, -0.110155, -0.740466,
		-0.110155, -0.963993, 0.242040,
		0.740466, -0.242040, -0.626998,
		38.724426, 32.020805, 24.161592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692326, 31.565948, 23.425442>,  <39.242752, 31.851379, 23.722694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692326, 31.565948, 23.425442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496414, 31.791153, 23.691715>,  <38.378868, 31.926275, 23.851480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496414, 31.791153, 23.691715>,  <38.692326, 31.565948, 23.425442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496414, 31.791153, 23.691715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817999, -0.032570, -0.574297,
		-0.301653, -0.825808, 0.476494,
		-0.489778, 0.563010, 0.665686,
		38.349480, 31.960056, 23.891420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089466, 31.182623, 23.656330>,  <38.692326, 31.565948, 23.425442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089466, 31.182623, 23.656330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033855, 31.574316, 23.715359>,  <38.000488, 31.809332, 23.750776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033855, 31.574316, 23.715359>,  <38.089466, 31.182623, 23.656330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033855, 31.574316, 23.715359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810569, -0.026921, -0.585024,
		-0.568901, -0.200953, 0.797477,
		-0.139031, 0.979231, 0.147571,
		37.992146, 31.868086, 23.759630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428772, 31.212023, 23.859791>,  <38.089466, 31.182623, 23.656330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428772, 31.212023, 23.859791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529427, 31.585873, 23.759268>,  <37.589817, 31.810183, 23.698954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529427, 31.585873, 23.759268>,  <37.428772, 31.212023, 23.859791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529427, 31.585873, 23.759268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777072, 0.040321, -0.628118,
		-0.576923, 0.353339, 0.736418,
		0.251632, 0.934626, -0.251308,
		37.604916, 31.866261, 23.683876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733795, 31.531086, 23.867844>,  <37.428772, 31.212023, 23.859791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733795, 31.531086, 23.867844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.011585, 31.751894, 23.683245>,  <37.178257, 31.884378, 23.572485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.011585, 31.751894, 23.683245>,  <36.733795, 31.531086, 23.867844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011585, 31.751894, 23.683245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666260, 0.251197, -0.702137,
		-0.271669, 0.795092, 0.542240,
		0.694473, 0.552022, -0.461496,
		37.219929, 31.917501, 23.544796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400230, 32.200691, 23.755039>,  <36.733795, 31.531086, 23.867844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400230, 32.200691, 23.755039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702854, 32.185719, 23.493898>,  <36.884430, 32.176735, 23.337214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702854, 32.185719, 23.493898>,  <36.400230, 32.200691, 23.755039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702854, 32.185719, 23.493898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643574, 0.134285, -0.753512,
		0.115876, 0.990236, 0.077502,
		0.756561, -0.037435, -0.652850,
		36.929821, 32.174488, 23.298044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512737, 32.899166, 23.448189>,  <36.400230, 32.200691, 23.755039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512737, 32.899166, 23.448189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611702, 32.614792, 23.184870>,  <36.671082, 32.444168, 23.026878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611702, 32.614792, 23.184870>,  <36.512737, 32.899166, 23.448189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611702, 32.614792, 23.184870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555207, 0.452787, -0.697660,
		0.794061, 0.538101, -0.282692,
		0.247413, -0.710937, -0.658298,
		36.685925, 32.401512, 22.987381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441357, 33.239162, 22.803150>,  <36.512737, 32.899166, 23.448189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441357, 33.239162, 22.803150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489925, 32.857628, 22.693270>,  <36.519066, 32.628708, 22.627342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489925, 32.857628, 22.693270>,  <36.441357, 33.239162, 22.803150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489925, 32.857628, 22.693270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437050, 0.197103, -0.877575,
		0.891204, 0.226610, -0.392941,
		0.121417, -0.953833, -0.274699,
		36.526352, 32.571476, 22.610861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758667, 33.284637, 22.108213>,  <36.441357, 33.239162, 22.803150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758667, 33.284637, 22.108213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.572701, 32.933388, 22.153381>,  <36.461121, 32.722637, 22.180481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.572701, 32.933388, 22.153381>,  <36.758667, 33.284637, 22.108213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572701, 32.933388, 22.153381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532095, 0.175198, -0.828360,
		0.707618, -0.445204, -0.548698,
		-0.464920, -0.878122, 0.112918,
		36.433224, 32.669952, 22.187256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803272, 32.882462, 21.447374>,  <36.758667, 33.284637, 22.108213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803272, 32.882462, 21.447374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476692, 32.751183, 21.637402>,  <36.280743, 32.672417, 21.751419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476692, 32.751183, 21.637402>,  <36.803272, 32.882462, 21.447374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476692, 32.751183, 21.637402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545470, 0.168529, -0.821012,
		0.189416, -0.929444, -0.316632,
		-0.816446, -0.328226, 0.475062,
		36.231758, 32.652725, 21.779922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455383, 32.567924, 20.910828>,  <36.803272, 32.882462, 21.447374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455383, 32.567924, 20.910828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167507, 32.580341, 21.188267>,  <35.994781, 32.587791, 21.354731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167507, 32.580341, 21.188267>,  <36.455383, 32.567924, 20.910828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167507, 32.580341, 21.188267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693790, -0.070125, -0.716756,
		0.026395, -0.997055, 0.072000,
		-0.719694, 0.031034, 0.693597,
		35.951599, 32.589653, 21.396345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979980, 31.965897, 20.794632>,  <36.455383, 32.567924, 20.910828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979980, 31.965897, 20.794632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790432, 32.257038, 20.992895>,  <35.676704, 32.431725, 21.111853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790432, 32.257038, 20.992895>,  <35.979980, 31.965897, 20.794632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790432, 32.257038, 20.992895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716435, 0.008623, -0.697600,
		-0.512026, -0.685676, 0.517375,
		-0.473866, 0.727856, 0.495658,
		35.648273, 32.475395, 21.141592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591148, 31.266243, 20.889450>,  <35.979980, 31.965897, 20.794632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591148, 31.266243, 20.889450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629856, 30.953499, 20.643091>,  <35.653080, 30.765852, 20.495275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629856, 30.953499, 20.643091>,  <35.591148, 31.266243, 20.889450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629856, 30.953499, 20.643091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840955, -0.266761, 0.470779,
		-0.532381, -0.563499, 0.631695,
		0.096772, -0.781862, -0.615896,
		35.658886, 30.718941, 20.458323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817532, 30.779364, 21.388496>,  <35.591148, 31.266243, 20.889450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817532, 30.779364, 21.388496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924160, 30.639225, 21.029343>,  <35.988136, 30.555141, 20.813850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924160, 30.639225, 21.029343>,  <35.817532, 30.779364, 21.388496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924160, 30.639225, 21.029343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690421, -0.580607, 0.431525,
		-0.672502, -0.734950, 0.087116,
		0.266570, -0.350348, -0.897885,
		36.004131, 30.534121, 20.759977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966255, 30.033644, 21.492407>,  <35.817532, 30.779364, 21.388496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966255, 30.033644, 21.492407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141884, 30.115154, 21.142391>,  <36.247261, 30.164061, 20.932383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141884, 30.115154, 21.142391>,  <35.966255, 30.033644, 21.492407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141884, 30.115154, 21.142391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838153, -0.443691, 0.317236,
		-0.323601, -0.872704, -0.365609,
		0.439071, 0.203779, -0.875038,
		36.273605, 30.176289, 20.879879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306625, 29.373665, 21.227184>,  <35.966255, 30.033644, 21.492407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306625, 29.373665, 21.227184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477402, 29.694008, 21.059212>,  <36.579868, 29.886213, 20.958427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477402, 29.694008, 21.059212>,  <36.306625, 29.373665, 21.227184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477402, 29.694008, 21.059212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898675, -0.324154, 0.295478,
		0.100514, -0.503536, -0.858108,
		0.426943, 0.800860, -0.419933,
		36.605484, 29.934265, 20.933231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954159, 29.044949, 20.833740>,  <36.306625, 29.373665, 21.227184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954159, 29.044949, 20.833740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984604, 29.434799, 20.917942>,  <37.002872, 29.668709, 20.968464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984604, 29.434799, 20.917942>,  <36.954159, 29.044949, 20.833740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984604, 29.434799, 20.917942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936987, -0.142105, 0.319157,
		0.340972, 0.172948, -0.924027,
		0.076112, 0.974626, 0.210504,
		37.007439, 29.727186, 20.981092>
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
