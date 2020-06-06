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
	<24.626997, 34.519051, 34.774212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617762, 34.877556, 34.951385>,  <24.612221, 35.092659, 35.057690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617762, 34.877556, 34.951385>,  <24.626997, 34.519051, 34.774212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617762, 34.877556, 34.951385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890657, -0.182797, 0.416312,
		0.454089, 0.404110, -0.794039,
		-0.023088, 0.896259, 0.442930,
		24.610836, 35.146435, 35.084263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948862, 34.343475, 35.403862>,  <24.626997, 34.519051, 34.774212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948862, 34.343475, 35.403862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154436, 34.030502, 35.544525>,  <25.277781, 33.842716, 35.628922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154436, 34.030502, 35.544525>,  <24.948862, 34.343475, 35.403862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154436, 34.030502, 35.544525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622682, 0.058308, -0.780299,
		0.590030, 0.619995, 0.517175,
		0.513937, -0.782436, 0.351656,
		25.308617, 33.795773, 35.650021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619410, 34.674335, 35.366695>,  <24.948862, 34.343475, 35.403862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619410, 34.674335, 35.366695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598404, 34.277313, 35.322739>,  <25.585800, 34.039101, 35.296364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598404, 34.277313, 35.322739>,  <25.619410, 34.674335, 35.366695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598404, 34.277313, 35.322739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563122, 0.061445, -0.824087,
		0.824704, -0.105161, 0.555702,
		-0.052516, -0.992555, -0.109893,
		25.582649, 33.979546, 35.289772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520903, 34.601795, 36.156967>,  <25.619410, 34.674335, 35.366695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520903, 34.601795, 36.156967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896145, 34.703606, 36.063007>,  <26.121290, 34.764690, 36.006630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896145, 34.703606, 36.063007>,  <25.520903, 34.601795, 36.156967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896145, 34.703606, 36.063007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264587, 0.964289, -0.011827,
		0.223500, 0.073246, 0.971948,
		0.938105, 0.254522, -0.234899,
		26.177576, 34.779961, 35.992538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704088, 35.245377, 36.570145>,  <25.520903, 34.601795, 36.156967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704088, 35.245377, 36.570145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939493, 35.243698, 36.246754>,  <26.080736, 35.242691, 36.052719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939493, 35.243698, 36.246754>,  <25.704088, 35.245377, 36.570145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939493, 35.243698, 36.246754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099805, 0.991961, -0.077793,
		0.802305, 0.126472, 0.583361,
		0.588511, -0.004192, -0.808479,
		26.116047, 35.242439, 36.004211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166491, 35.781326, 36.635811>,  <25.704088, 35.245377, 36.570145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166491, 35.781326, 36.635811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188112, 35.702244, 36.244305>,  <26.201086, 35.654793, 36.009399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188112, 35.702244, 36.244305>,  <26.166491, 35.781326, 36.635811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188112, 35.702244, 36.244305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179139, 0.962379, -0.204290,
		0.982338, 0.186378, 0.016604,
		0.054055, -0.197707, -0.978770,
		26.204329, 35.642933, 35.950672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468481, 36.396351, 36.410484>,  <26.166491, 35.781326, 36.635811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468481, 36.396351, 36.410484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323025, 36.219727, 36.082390>,  <26.235750, 36.113750, 35.885532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323025, 36.219727, 36.082390>,  <26.468481, 36.396351, 36.410484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323025, 36.219727, 36.082390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223478, 0.896157, -0.383354,
		0.904336, 0.043903, -0.424557,
		-0.363639, -0.441560, -0.820239,
		26.213932, 36.087257, 35.836319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893776, 36.590073, 35.921547>,  <26.468481, 36.396351, 36.410484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893776, 36.590073, 35.921547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531742, 36.499798, 35.777390>,  <26.314522, 36.445633, 35.690895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531742, 36.499798, 35.777390>,  <26.893776, 36.590073, 35.921547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531742, 36.499798, 35.777390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039579, 0.888559, -0.457052,
		0.423383, -0.399408, -0.813155,
		-0.905086, -0.225691, -0.360392,
		26.260216, 36.432091, 35.669273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892061, 36.850498, 35.283260>,  <26.893776, 36.590073, 35.921547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892061, 36.850498, 35.283260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497864, 36.811768, 35.339012>,  <26.261345, 36.788528, 35.372463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497864, 36.811768, 35.339012>,  <26.892061, 36.850498, 35.283260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497864, 36.811768, 35.339012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139899, 0.928406, -0.344225,
		-0.096068, -0.358730, -0.928485,
		-0.985494, -0.096826, 0.139376,
		26.202215, 36.782719, 35.380825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677416, 37.186249, 34.651138>,  <26.892061, 36.850498, 35.283260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677416, 37.186249, 34.651138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363054, 37.167759, 34.897785>,  <26.174438, 37.156666, 35.045773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363054, 37.167759, 34.897785>,  <26.677416, 37.186249, 34.651138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363054, 37.167759, 34.897785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357179, 0.847952, -0.391664,
		-0.504759, -0.528053, -0.682919,
		-0.785902, -0.046228, 0.616621,
		26.127283, 37.153889, 35.082771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093584, 37.381580, 34.186260>,  <26.677416, 37.186249, 34.651138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093584, 37.381580, 34.186260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994133, 37.445122, 34.568455>,  <25.934462, 37.483246, 34.797771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994133, 37.445122, 34.568455>,  <26.093584, 37.381580, 34.186260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994133, 37.445122, 34.568455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380899, 0.890948, -0.247239,
		-0.890561, -0.425414, -0.161008,
		-0.248628, 0.158854, 0.955484,
		25.919544, 37.492779, 34.855099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419447, 37.673321, 34.230362>,  <26.093584, 37.381580, 34.186260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419447, 37.673321, 34.230362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596640, 37.782089, 34.572083>,  <25.702955, 37.847351, 34.777115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596640, 37.782089, 34.572083>,  <25.419447, 37.673321, 34.230362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596640, 37.782089, 34.572083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423682, 0.903269, -0.067816,
		-0.790101, -0.331909, 0.515343,
		0.442984, 0.271923, 0.854297,
		25.729534, 37.863667, 34.828373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891998, 38.033501, 34.475838>,  <25.419447, 37.673321, 34.230362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891998, 38.033501, 34.475838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211290, 38.145325, 34.689259>,  <25.402866, 38.212418, 34.817310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211290, 38.145325, 34.689259>,  <24.891998, 38.033501, 34.475838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211290, 38.145325, 34.689259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357749, 0.932657, 0.046540,
		-0.484607, -0.228026, 0.844488,
		0.798230, 0.279561, 0.533549,
		25.450760, 38.229195, 34.849323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642458, 38.366573, 35.102791>,  <24.891998, 38.033501, 34.475838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642458, 38.366573, 35.102791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021654, 38.488865, 35.067371>,  <25.249172, 38.562241, 35.046120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021654, 38.488865, 35.067371>,  <24.642458, 38.366573, 35.102791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021654, 38.488865, 35.067371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288246, 0.942601, 0.168573,
		0.135005, -0.134282, 0.981704,
		0.947991, 0.305731, -0.088550,
		25.306051, 38.580585, 35.040806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.734261, 38.952023, 35.636276>,  <24.642458, 38.366573, 35.102791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.734261, 38.952023, 35.636276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037651, 39.000839, 35.380207>,  <25.219685, 39.030128, 35.226566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037651, 39.000839, 35.380207>,  <24.734261, 38.952023, 35.636276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037651, 39.000839, 35.380207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111049, 0.992146, 0.057572,
		0.642171, 0.027424, 0.766070,
		0.758475, 0.122043, -0.640173,
		25.265194, 39.037453, 35.188156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250685, 39.449703, 35.839912>,  <24.734261, 38.952023, 35.636276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250685, 39.449703, 35.839912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303257, 39.458206, 35.443474>,  <25.334801, 39.463306, 35.205612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303257, 39.458206, 35.443474>,  <25.250685, 39.449703, 35.839912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303257, 39.458206, 35.443474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026239, 0.999494, 0.017955,
		0.990978, 0.023645, 0.131921,
		0.131430, 0.021254, -0.991098,
		25.342686, 39.464581, 35.146145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711823, 40.023373, 35.747536>,  <25.250685, 39.449703, 35.839912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711823, 40.023373, 35.747536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542080, 39.971050, 35.389137>,  <25.440235, 39.939655, 35.174099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542080, 39.971050, 35.389137>,  <25.711823, 40.023373, 35.747536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542080, 39.971050, 35.389137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077386, 0.980651, -0.179819,
		0.902183, -0.145645, -0.406022,
		-0.424356, -0.130809, -0.895997,
		25.414774, 39.931808, 35.120338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179380, 40.412476, 35.291492>,  <25.711823, 40.023373, 35.747536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179380, 40.412476, 35.291492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840130, 40.387093, 35.081100>,  <25.636580, 40.371864, 34.954865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840130, 40.387093, 35.081100>,  <26.179380, 40.412476, 35.291492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840130, 40.387093, 35.081100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103065, 0.954072, -0.281290,
		0.519673, -0.292779, -0.802633,
		-0.848126, -0.063455, -0.525981,
		25.585691, 40.368057, 34.923306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242289, 40.793293, 34.556461>,  <26.179380, 40.412476, 35.291492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242289, 40.793293, 34.556461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845085, 40.776112, 34.600441>,  <25.606764, 40.765804, 34.626827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845085, 40.776112, 34.600441>,  <26.242289, 40.793293, 34.556461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845085, 40.776112, 34.600441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088262, 0.888650, -0.450012,
		-0.078376, -0.456570, -0.886229,
		-0.993009, -0.042950, 0.109946,
		25.547182, 40.763226, 34.633427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985643, 41.046291, 33.904732>,  <26.242289, 40.793293, 34.556461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985643, 41.046291, 33.904732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682087, 41.082378, 34.162708>,  <25.499952, 41.104031, 34.317493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682087, 41.082378, 34.162708>,  <25.985643, 41.046291, 33.904732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682087, 41.082378, 34.162708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181150, 0.922026, -0.342129,
		-0.625515, -0.376469, -0.683376,
		-0.758891, 0.090214, 0.644938,
		25.454420, 41.109444, 34.356190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422745, 41.330853, 33.494965>,  <25.985643, 41.046291, 33.904732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422745, 41.330853, 33.494965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354128, 41.407326, 33.881542>,  <25.312958, 41.453209, 34.113491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354128, 41.407326, 33.881542>,  <25.422745, 41.330853, 33.494965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354128, 41.407326, 33.881542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160718, 0.962418, -0.218911,
		-0.971979, -0.192878, -0.134371,
		-0.171544, 0.191181, 0.966449,
		25.302664, 41.464680, 34.171478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815271, 41.791904, 33.533340>,  <25.422745, 41.330853, 33.494965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815271, 41.791904, 33.533340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997654, 41.853317, 33.884003>,  <25.107084, 41.890163, 34.094402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997654, 41.853317, 33.884003>,  <24.815271, 41.791904, 33.533340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997654, 41.853317, 33.884003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083087, 0.988050, -0.129823,
		-0.886116, -0.013645, 0.463264,
		0.455956, 0.153529, 0.876660,
		25.134441, 41.899376, 34.146999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.437931, 42.307980, 33.951752>,  <24.815271, 41.791904, 33.533340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.437931, 42.307980, 33.951752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802717, 42.327366, 34.114708>,  <25.021589, 42.338997, 34.212482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802717, 42.327366, 34.114708>,  <24.437931, 42.307980, 33.951752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802717, 42.327366, 34.114708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022030, 0.997350, -0.069333,
		-0.409671, 0.054254, 0.910618,
		0.911967, 0.048465, 0.407390,
		25.076307, 42.341904, 34.236923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.454647, 43.028004, 34.400887>,  <24.437931, 42.307980, 33.951752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.454647, 43.028004, 34.400887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835884, 42.907600, 34.388187>,  <25.064627, 42.835358, 34.380569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835884, 42.907600, 34.388187>,  <24.454647, 43.028004, 34.400887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835884, 42.907600, 34.388187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302126, 0.952441, 0.039698,
		0.018288, -0.047428, 0.998707,
		0.953093, -0.301009, -0.031748,
		25.121811, 42.817299, 34.378662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.794090, 43.339104, 34.995605>,  <24.454647, 43.028004, 34.400887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.794090, 43.339104, 34.995605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067461, 43.279869, 34.709671>,  <25.231483, 43.244328, 34.538109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067461, 43.279869, 34.709671>,  <24.794090, 43.339104, 34.995605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067461, 43.279869, 34.709671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480671, 0.828273, 0.287959,
		0.549438, -0.540401, 0.637248,
		0.683428, -0.148091, -0.714839,
		25.272490, 43.235443, 34.495220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541382, 43.352966, 35.201763>,  <24.794090, 43.339104, 34.995605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541382, 43.352966, 35.201763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551432, 43.454391, 34.814964>,  <25.557461, 43.515247, 34.582886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551432, 43.454391, 34.814964>,  <25.541382, 43.352966, 35.201763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551432, 43.454391, 34.814964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503141, 0.832646, 0.231407,
		0.863839, -0.492348, -0.106658,
		0.025125, 0.253563, -0.966993,
		25.558969, 43.530460, 34.524868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260855, 43.454311, 34.917976>,  <25.541382, 43.352966, 35.201763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260855, 43.454311, 34.917976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045986, 43.658215, 34.649174>,  <25.917065, 43.780556, 34.487892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045986, 43.658215, 34.649174>,  <26.260855, 43.454311, 34.917976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045986, 43.658215, 34.649174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721735, 0.690104, -0.053435,
		0.436517, -0.513717, -0.738612,
		-0.537170, 0.509757, -0.672010,
		25.884836, 43.811142, 34.447571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708551, 43.683609, 34.311462>,  <26.260855, 43.454311, 34.917976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708551, 43.683609, 34.311462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397020, 43.913052, 34.412975>,  <26.210102, 44.050716, 34.473885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397020, 43.913052, 34.412975>,  <26.708551, 43.683609, 34.311462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397020, 43.913052, 34.412975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589629, 0.807522, -0.015683,
		-0.213930, 0.137423, -0.967134,
		-0.778827, 0.573606, 0.253782,
		26.163372, 44.085133, 34.489109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756609, 44.244293, 33.796341>,  <26.708551, 43.683609, 34.311462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756609, 44.244293, 33.796341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561119, 44.368374, 34.122513>,  <26.443825, 44.442822, 34.318214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561119, 44.368374, 34.122513>,  <26.756609, 44.244293, 33.796341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561119, 44.368374, 34.122513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587031, 0.808350, 0.044324,
		-0.645401, 0.500343, -0.577161,
		-0.488725, 0.310205, 0.815427,
		26.414501, 44.461433, 34.367142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281216, 44.633415, 34.112526>,  <26.756609, 44.244293, 33.796341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281216, 44.633415, 34.112526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111879, 44.408279, 34.396496>,  <27.010277, 44.273197, 34.566879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111879, 44.408279, 34.396496>,  <27.281216, 44.633415, 34.112526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111879, 44.408279, 34.396496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707019, -0.695223, -0.129573,
		0.566485, 0.447078, 0.692254,
		-0.423341, -0.562838, 0.709926,
		26.984877, 44.239429, 34.609474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710537, 44.365639, 34.629089>,  <27.281216, 44.633415, 34.112526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710537, 44.365639, 34.629089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425316, 44.085274, 34.635834>,  <27.254183, 43.917057, 34.639881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425316, 44.085274, 34.635834>,  <27.710537, 44.365639, 34.629089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425316, 44.085274, 34.635834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689466, -0.705368, -0.164601,
		0.127263, -0.105744, 0.986216,
		-0.713050, -0.700910, 0.016861,
		27.211401, 43.875000, 34.640892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991516, 43.975395, 35.245419>,  <27.710537, 44.365639, 34.629089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991516, 43.975395, 35.245419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783936, 43.786282, 34.960556>,  <27.659388, 43.672813, 34.789639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783936, 43.786282, 34.960556>,  <27.991516, 43.975395, 35.245419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783936, 43.786282, 34.960556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798529, -0.565419, -0.206527,
		-0.305025, -0.675855, 0.670955,
		-0.518953, -0.472781, -0.712156,
		27.628250, 43.644447, 34.746910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305189, 44.299690, 35.764523>,  <27.991516, 43.975395, 35.245419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305189, 44.299690, 35.764523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397274, 44.189308, 36.137798>,  <28.452524, 44.123077, 36.361763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397274, 44.189308, 36.137798>,  <28.305189, 44.299690, 35.764523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397274, 44.189308, 36.137798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095187, -0.947967, -0.303807,
		0.968474, 0.158768, -0.191966,
		0.230212, -0.275956, 0.933194,
		28.466337, 44.106522, 36.417755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930408, 43.913128, 35.861557>,  <28.305189, 44.299690, 35.764523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930408, 43.913128, 35.861557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753407, 43.777195, 36.193512>,  <28.647205, 43.695637, 36.392685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753407, 43.777195, 36.193512>,  <28.930408, 43.913128, 35.861557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753407, 43.777195, 36.193512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138096, -0.940202, -0.311368,
		0.886070, -0.023178, 0.462972,
		-0.442504, -0.339828, 0.829884,
		28.620655, 43.675247, 36.442478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362770, 43.601898, 36.444851>,  <28.930408, 43.913128, 35.861557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362770, 43.601898, 36.444851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988405, 43.469406, 36.396931>,  <28.763786, 43.389912, 36.368179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988405, 43.469406, 36.396931>,  <29.362770, 43.601898, 36.444851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988405, 43.469406, 36.396931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347054, -0.809077, -0.474287,
		0.060175, -0.485467, 0.872181,
		-0.935913, -0.331234, -0.119798,
		28.707632, 43.370037, 36.360992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419592, 42.798561, 36.520649>,  <29.362770, 43.601898, 36.444851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419592, 42.798561, 36.520649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048595, 42.825699, 36.373592>,  <28.825998, 42.841984, 36.285358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048595, 42.825699, 36.373592>,  <29.419592, 42.798561, 36.520649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048595, 42.825699, 36.373592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020816, -0.972495, -0.231990,
		-0.373270, -0.222821, 0.900566,
		-0.927489, 0.067849, -0.367642,
		28.770350, 42.846054, 36.263298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159815, 42.236431, 36.769241>,  <29.419592, 42.798561, 36.520649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159815, 42.236431, 36.769241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882671, 42.318382, 36.492699>,  <28.716385, 42.367554, 36.326775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882671, 42.318382, 36.492699>,  <29.159815, 42.236431, 36.769241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882671, 42.318382, 36.492699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188774, -0.976884, -0.100305,
		-0.695924, 0.061012, 0.715519,
		-0.692859, 0.204876, -0.691355,
		28.674814, 42.379845, 36.285294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626690, 41.694397, 36.868843>,  <29.159815, 42.236431, 36.769241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626690, 41.694397, 36.868843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545607, 41.827206, 36.500351>,  <28.496956, 41.906891, 36.279255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545607, 41.827206, 36.500351>,  <28.626690, 41.694397, 36.868843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545607, 41.827206, 36.500351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290523, -0.918798, -0.267222,
		-0.935150, 0.213470, 0.282710,
		-0.202710, 0.332026, -0.921231,
		28.484795, 41.926815, 36.223980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020065, 41.450272, 36.767578>,  <28.626690, 41.694397, 36.868843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020065, 41.450272, 36.767578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187487, 41.510124, 36.409267>,  <28.287939, 41.546036, 36.194279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187487, 41.510124, 36.409267>,  <28.020065, 41.450272, 36.767578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187487, 41.510124, 36.409267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405728, -0.851628, -0.331836,
		-0.812527, 0.502334, -0.295739,
		0.418552, 0.149636, -0.895781,
		28.313053, 41.555016, 36.140533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665344, 41.123253, 36.379158>,  <28.020065, 41.450272, 36.767578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665344, 41.123253, 36.379158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950760, 41.196552, 36.108665>,  <28.122009, 41.240532, 35.946369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950760, 41.196552, 36.108665>,  <27.665344, 41.123253, 36.379158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950760, 41.196552, 36.108665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253088, -0.832600, -0.492671,
		-0.653306, 0.522685, -0.547715,
		0.713539, 0.183245, -0.676227,
		28.164822, 41.251526, 35.905796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375319, 40.968521, 35.722935>,  <27.665344, 41.123253, 36.379158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375319, 40.968521, 35.722935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772400, 40.939400, 35.684494>,  <28.010649, 40.921928, 35.661430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772400, 40.939400, 35.684494>,  <27.375319, 40.968521, 35.722935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772400, 40.939400, 35.684494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103312, -0.924566, -0.366749,
		-0.062156, 0.374003, -0.925343,
		0.992705, -0.072803, -0.096106,
		28.070211, 40.917561, 35.655663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515135, 40.626045, 35.063347>,  <27.375319, 40.968521, 35.722935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515135, 40.626045, 35.063347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849194, 40.572182, 35.276661>,  <28.049629, 40.539864, 35.404652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849194, 40.572182, 35.276661>,  <27.515135, 40.626045, 35.063347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849194, 40.572182, 35.276661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071392, -0.934825, -0.347857,
		0.545374, 0.328584, -0.771103,
		0.835147, -0.134662, 0.533287,
		28.099737, 40.531784, 35.436646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965380, 40.301579, 34.582939>,  <27.515135, 40.626045, 35.063347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965380, 40.301579, 34.582939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112095, 40.218975, 34.945778>,  <28.200125, 40.169411, 35.163479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112095, 40.218975, 34.945778>,  <27.965380, 40.301579, 34.582939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112095, 40.218975, 34.945778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005608, -0.974542, -0.224133,
		0.930287, 0.087296, -0.356293,
		0.366788, -0.206510, 0.907094,
		28.222132, 40.157021, 35.217907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543434, 39.779434, 34.418354>,  <27.965380, 40.301579, 34.582939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543434, 39.779434, 34.418354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443579, 39.723438, 34.801620>,  <28.383665, 39.689842, 35.031582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443579, 39.723438, 34.801620>,  <28.543434, 39.779434, 34.418354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443579, 39.723438, 34.801620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061776, -0.989782, -0.128514,
		0.966366, 0.027110, 0.255737,
		-0.249640, -0.139990, 0.958166,
		28.368687, 39.681442, 35.089069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031464, 39.352825, 34.653961>,  <28.543434, 39.779434, 34.418354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031464, 39.352825, 34.653961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744896, 39.333843, 34.932381>,  <28.572954, 39.322453, 35.099434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744896, 39.333843, 34.932381>,  <29.031464, 39.352825, 34.653961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744896, 39.333843, 34.932381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178305, -0.977005, 0.116913,
		0.674499, 0.207869, 0.708408,
		-0.716420, -0.047455, 0.696053,
		28.529970, 39.319607, 35.141197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326611, 39.126793, 35.339207>,  <29.031464, 39.352825, 34.653961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326611, 39.126793, 35.339207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942648, 39.015434, 35.326111>,  <28.712271, 38.948620, 35.318253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942648, 39.015434, 35.326111>,  <29.326611, 39.126793, 35.339207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942648, 39.015434, 35.326111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270949, -0.951415, 0.146272,
		-0.071869, 0.131537, 0.988702,
		-0.959907, -0.278401, -0.032738,
		28.654676, 38.931915, 35.316288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379169, 38.643181, 35.814079>,  <29.326611, 39.126793, 35.339207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379169, 38.643181, 35.814079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034637, 38.582367, 35.620171>,  <28.827919, 38.545879, 35.503826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034637, 38.582367, 35.620171>,  <29.379169, 38.643181, 35.814079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034637, 38.582367, 35.620171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188826, -0.981621, -0.027649,
		-0.471654, -0.115351, 0.874206,
		-0.861329, -0.152032, -0.484767,
		28.776239, 38.536758, 35.474739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902885, 38.072735, 36.175114>,  <29.379169, 38.643181, 35.814079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902885, 38.072735, 36.175114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760824, 38.075481, 35.801201>,  <28.675587, 38.077129, 35.576855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760824, 38.075481, 35.801201>,  <28.902885, 38.072735, 36.175114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760824, 38.075481, 35.801201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179022, -0.980965, -0.075221,
		-0.917506, -0.194062, 0.347163,
		-0.355152, 0.006865, -0.934783,
		28.654278, 38.077541, 35.520767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541164, 37.398834, 36.035664>,  <28.902885, 38.072735, 36.175114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541164, 37.398834, 36.035664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590040, 37.516842, 35.656605>,  <28.619366, 37.587646, 35.429169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590040, 37.516842, 35.656605>,  <28.541164, 37.398834, 36.035664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590040, 37.516842, 35.656605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097056, -0.953775, -0.284416,
		-0.987750, -0.057223, -0.145174,
		0.122189, 0.295022, -0.947646,
		28.626698, 37.605347, 35.372311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084116, 37.011955, 35.700939>,  <28.541164, 37.398834, 36.035664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084116, 37.011955, 35.700939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322987, 37.141018, 35.407200>,  <28.466309, 37.218456, 35.230957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322987, 37.141018, 35.407200>,  <28.084116, 37.011955, 35.700939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322987, 37.141018, 35.407200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092993, -0.937200, -0.336166,
		-0.796701, 0.132461, -0.589679,
		0.597176, 0.322660, -0.734351,
		28.502140, 37.237816, 35.186893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764753, 36.859207, 34.974560>,  <28.084116, 37.011955, 35.700939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764753, 36.859207, 34.974560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161524, 36.896320, 34.939968>,  <28.399586, 36.918587, 34.919212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161524, 36.896320, 34.939968>,  <27.764753, 36.859207, 34.974560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161524, 36.896320, 34.939968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040536, -0.877982, -0.476975,
		-0.120181, 0.469617, -0.874652,
		0.991924, 0.092778, -0.086481,
		28.459101, 36.924152, 34.914024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895559, 36.657642, 34.255157>,  <27.764753, 36.859207, 34.974560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895559, 36.657642, 34.255157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238379, 36.609543, 34.455559>,  <28.444071, 36.580685, 34.575802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238379, 36.609543, 34.455559>,  <27.895559, 36.657642, 34.255157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238379, 36.609543, 34.455559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119425, -0.899542, -0.420193,
		0.501204, 0.419958, -0.756591,
		0.857049, -0.120246, 0.501008,
		28.495493, 36.573467, 34.605862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350828, 36.280823, 33.799751>,  <27.895559, 36.657642, 34.255157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350828, 36.280823, 33.799751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520815, 36.217327, 34.156223>,  <28.622807, 36.179230, 34.370106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520815, 36.217327, 34.156223>,  <28.350828, 36.280823, 33.799751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520815, 36.217327, 34.156223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060041, -0.987278, -0.147230,
		0.903215, 0.009061, -0.429094,
		0.424969, -0.158744, 0.891180,
		28.648306, 36.169704, 34.423576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878672, 35.651127, 33.751575>,  <28.350828, 36.280823, 33.799751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878672, 35.651127, 33.751575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821594, 35.708378, 34.143322>,  <28.787348, 35.742729, 34.378368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821594, 35.708378, 34.143322>,  <28.878672, 35.651127, 33.751575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821594, 35.708378, 34.143322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127538, -0.978581, 0.161595,
		0.981516, 0.147964, 0.121382,
		-0.142693, 0.143128, 0.979364,
		28.778786, 35.751316, 34.437130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568213, 35.546383, 34.127087>,  <28.878672, 35.651127, 33.751575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568213, 35.546383, 34.127087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238075, 35.476364, 34.341812>,  <29.039993, 35.434353, 34.470646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238075, 35.476364, 34.341812>,  <29.568213, 35.546383, 34.127087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238075, 35.476364, 34.341812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302764, -0.939696, 0.159080,
		0.476592, 0.293823, 0.828570,
		-0.825345, -0.175045, 0.536810,
		28.990471, 35.423851, 34.502853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770880, 35.245934, 34.856728>,  <29.568213, 35.546383, 34.127087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770880, 35.245934, 34.856728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414501, 35.141464, 34.708130>,  <29.200674, 35.078785, 34.618973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414501, 35.141464, 34.708130>,  <29.770880, 35.245934, 34.856728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414501, 35.141464, 34.708130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193428, -0.958400, 0.209891,
		-0.410856, 0.115145, 0.904400,
		-0.890945, -0.261172, -0.371492,
		29.147217, 35.063114, 34.596684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370182, 35.523273, 34.874046>,  <29.770880, 35.245934, 34.856728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370182, 35.523273, 34.874046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376215, 35.127213, 34.818386>,  <30.379835, 34.889576, 34.784992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376215, 35.127213, 34.818386>,  <30.370182, 35.523273, 34.874046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376215, 35.127213, 34.818386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737757, -0.082912, 0.669955,
		-0.674898, -0.112760, 0.729245,
		0.015081, -0.990157, -0.139147,
		30.380739, 34.830166, 34.776642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261190, 35.199745, 35.536404>,  <30.370182, 35.523273, 34.874046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261190, 35.199745, 35.536404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504545, 34.982567, 35.304859>,  <30.650558, 34.852261, 35.165932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504545, 34.982567, 35.304859>,  <30.261190, 35.199745, 35.536404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504545, 34.982567, 35.304859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553886, -0.231898, 0.799646,
		-0.568398, -0.807117, 0.159645,
		0.608386, -0.542942, -0.578861,
		30.687061, 34.819683, 35.131199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220526, 34.403439, 35.493595>,  <30.261190, 35.199745, 35.536404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220526, 34.403439, 35.493595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542667, 34.638111, 35.459633>,  <30.735952, 34.778915, 35.439255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542667, 34.638111, 35.459633>,  <30.220526, 34.403439, 35.493595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542667, 34.638111, 35.459633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307953, -0.291686, 0.905585,
		0.506525, -0.755463, -0.415581,
		0.805356, 0.586681, -0.084901,
		30.784275, 34.814114, 35.434162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007282, 34.076851, 35.503983>,  <30.220526, 34.403439, 35.493595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007282, 34.076851, 35.503983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997688, 34.424809, 35.701046>,  <30.991932, 34.633583, 35.819286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997688, 34.424809, 35.701046>,  <31.007282, 34.076851, 35.503983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997688, 34.424809, 35.701046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221488, -0.475931, 0.851136,
		0.974868, 0.129535, -0.181254,
		-0.023987, 0.869891, 0.492661,
		30.990492, 34.685776, 35.848843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701715, 34.441010, 35.841213>,  <31.007282, 34.076851, 35.503983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701715, 34.441010, 35.841213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351173, 34.491730, 36.027084>,  <31.140848, 34.522163, 36.138607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351173, 34.491730, 36.027084>,  <31.701715, 34.441010, 35.841213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351173, 34.491730, 36.027084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340489, -0.519283, 0.783844,
		0.340695, 0.845142, 0.411900,
		-0.876353, 0.126804, 0.464679,
		31.088268, 34.529770, 36.166489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997614, 34.743397, 36.379356>,  <31.701715, 34.441010, 35.841213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997614, 34.743397, 36.379356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637907, 34.581993, 36.446884>,  <31.422083, 34.485149, 36.487400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637907, 34.581993, 36.446884>,  <31.997614, 34.743397, 36.379356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637907, 34.581993, 36.446884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370721, -0.498296, 0.783752,
		-0.232131, 0.767386, 0.597691,
		-0.899267, -0.403510, 0.168816,
		31.368128, 34.460941, 36.497528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810362, 34.821293, 37.116470>,  <31.997614, 34.743397, 36.379356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810362, 34.821293, 37.116470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659296, 34.479946, 36.972729>,  <31.568657, 34.275139, 36.886486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659296, 34.479946, 36.972729>,  <31.810362, 34.821293, 37.116470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659296, 34.479946, 36.972729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299028, -0.479704, 0.824904,
		-0.876328, 0.204081, 0.436348,
		-0.377665, -0.853367, -0.359352,
		31.545996, 34.223934, 36.864922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308056, 34.550854, 37.522346>,  <31.810362, 34.821293, 37.116470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308056, 34.550854, 37.522346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481108, 34.257309, 37.312859>,  <31.584938, 34.081184, 37.187164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481108, 34.257309, 37.312859>,  <31.308056, 34.550854, 37.522346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481108, 34.257309, 37.312859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104426, -0.536201, 0.837606,
		-0.895504, -0.417063, -0.155343,
		0.432629, -0.733858, -0.523722,
		31.610897, 34.037151, 37.155743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923346, 33.885998, 37.514568>,  <31.308056, 34.550854, 37.522346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923346, 33.885998, 37.514568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315897, 33.823650, 37.469666>,  <31.551428, 33.786243, 37.442726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315897, 33.823650, 37.469666>,  <30.923346, 33.885998, 37.514568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315897, 33.823650, 37.469666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025956, -0.471445, 0.881514,
		-0.190318, -0.868013, -0.458620,
		0.981379, -0.155864, -0.112255,
		31.610312, 33.776890, 37.435989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979254, 33.311756, 37.892975>,  <30.923346, 33.885998, 37.514568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979254, 33.311756, 37.892975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351818, 33.457172, 37.885921>,  <31.575357, 33.544422, 37.881691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351818, 33.457172, 37.885921>,  <30.979254, 33.311756, 37.892975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351818, 33.457172, 37.885921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194350, -0.455809, 0.868600,
		0.307736, -0.812450, -0.495200,
		0.931411, 0.363541, -0.017631,
		31.631241, 33.566235, 37.880630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359169, 32.791214, 38.150146>,  <30.979254, 33.311756, 37.892975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359169, 32.791214, 38.150146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613665, 33.099613, 38.161179>,  <31.766363, 33.284653, 38.167797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613665, 33.099613, 38.161179>,  <31.359169, 32.791214, 38.150146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613665, 33.099613, 38.161179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392382, -0.354163, 0.848884,
		0.664254, -0.529274, -0.527858,
		0.636241, 0.770997, 0.027577,
		31.804537, 33.330914, 38.169453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046947, 32.472897, 38.282856>,  <31.359169, 32.791214, 38.150146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046947, 32.472897, 38.282856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053822, 32.845985, 38.426929>,  <32.057945, 33.069839, 38.513374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053822, 32.845985, 38.426929>,  <32.046947, 32.472897, 38.282856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053822, 32.845985, 38.426929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345092, -0.343631, 0.873401,
		0.938411, 0.109284, -0.327782,
		0.017187, 0.932724, 0.360180,
		32.058979, 33.125801, 38.534985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509071, 32.491402, 38.857647>,  <32.046947, 32.472897, 38.282856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509071, 32.491402, 38.857647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340416, 32.846268, 38.932652>,  <32.239223, 33.059185, 38.977654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340416, 32.846268, 38.932652>,  <32.509071, 32.491402, 38.857647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340416, 32.846268, 38.932652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298512, -0.059463, 0.952552,
		0.856219, 0.457610, -0.239756,
		-0.421640, 0.887163, 0.187515,
		32.213924, 33.112415, 38.988907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065552, 32.933006, 39.225346>,  <32.509071, 32.491402, 38.857647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065552, 32.933006, 39.225346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701485, 33.077782, 39.305943>,  <32.483044, 33.164646, 39.354301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701485, 33.077782, 39.305943>,  <33.065552, 32.933006, 39.225346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701485, 33.077782, 39.305943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254447, 0.104647, 0.961408,
		0.326882, 0.926311, -0.187339,
		-0.910168, 0.361934, 0.201490,
		32.428432, 33.186363, 39.366390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169094, 33.439766, 39.796730>,  <33.065552, 32.933006, 39.225346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169094, 33.439766, 39.796730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771358, 33.401005, 39.814209>,  <32.532719, 33.377750, 39.824696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771358, 33.401005, 39.814209>,  <33.169094, 33.439766, 39.796730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771358, 33.401005, 39.814209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048688, -0.049728, 0.997575,
		-0.094492, 0.994051, 0.054164,
		-0.994334, -0.096900, 0.043700,
		32.473057, 33.371933, 39.827320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979233, 33.845661, 40.338425>,  <33.169094, 33.439766, 39.796730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979233, 33.845661, 40.338425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684074, 33.580990, 40.285217>,  <32.506981, 33.422188, 40.253292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684074, 33.580990, 40.285217>,  <32.979233, 33.845661, 40.338425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684074, 33.580990, 40.285217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041866, -0.241584, 0.969476,
		-0.673614, 0.709805, 0.205966,
		-0.737897, -0.661675, -0.133018,
		32.462704, 33.382488, 40.245312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462936, 34.018452, 40.738621>,  <32.979233, 33.845661, 40.338425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462936, 34.018452, 40.738621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401352, 33.629257, 40.669811>,  <32.364403, 33.395741, 40.628525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401352, 33.629257, 40.669811>,  <32.462936, 34.018452, 40.738621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401352, 33.629257, 40.669811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157922, -0.147632, 0.976353,
		-0.975375, 0.177488, -0.130926,
		-0.153962, -0.972987, -0.172026,
		32.355164, 33.337360, 40.618202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027065, 33.895737, 41.272472>,  <32.462936, 34.018452, 40.738621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027065, 33.895737, 41.272472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093971, 33.519806, 41.153313>,  <32.134117, 33.294247, 41.081818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093971, 33.519806, 41.153313>,  <32.027065, 33.895737, 41.272472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093971, 33.519806, 41.153313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205002, -0.328707, 0.921914,
		-0.964363, -0.093136, -0.247648,
		0.167268, -0.939828, -0.297899,
		32.144150, 33.237858, 41.063942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495623, 33.500397, 41.427761>,  <32.027065, 33.895737, 41.272472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495623, 33.500397, 41.427761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800747, 33.242088, 41.414536>,  <31.983822, 33.087101, 41.406601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800747, 33.242088, 41.414536>,  <31.495623, 33.500397, 41.427761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800747, 33.242088, 41.414536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150218, -0.226718, 0.962306,
		-0.628929, -0.729092, -0.269950,
		0.762812, -0.645774, -0.033067,
		32.029591, 33.048355, 41.404617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222454, 32.823399, 41.830009>,  <31.495623, 33.500397, 41.427761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222454, 32.823399, 41.830009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620190, 32.781456, 41.823109>,  <31.858831, 32.756290, 41.818970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620190, 32.781456, 41.823109>,  <31.222454, 32.823399, 41.830009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620190, 32.781456, 41.823109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024086, -0.380467, 0.924481,
		-0.103503, -0.918831, -0.380838,
		0.994337, -0.104859, -0.017248,
		31.918491, 32.750000, 41.817936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386951, 32.107964, 41.969002>,  <31.222454, 32.823399, 41.830009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386951, 32.107964, 41.969002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704433, 32.336842, 42.051590>,  <31.894922, 32.474167, 42.101143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704433, 32.336842, 42.051590>,  <31.386951, 32.107964, 41.969002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704433, 32.336842, 42.051590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088319, -0.444214, 0.891557,
		0.601857, -0.689399, -0.403110,
		0.793705, 0.572192, 0.206466,
		31.942545, 32.508499, 42.113529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880470, 31.575087, 42.279797>,  <31.386951, 32.107964, 41.969002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880470, 31.575087, 42.279797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018909, 31.936125, 42.382198>,  <32.101974, 32.152748, 42.443642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018909, 31.936125, 42.382198>,  <31.880470, 31.575087, 42.279797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018909, 31.936125, 42.382198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201699, -0.338072, 0.919252,
		0.916261, -0.266514, -0.299058,
		0.346097, 0.902595, 0.256007,
		32.122738, 32.206902, 42.459000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642685, 31.554947, 42.471451>,  <31.880470, 31.575087, 42.279797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642685, 31.554947, 42.471451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530037, 31.883076, 42.670551>,  <32.462448, 32.079952, 42.790012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530037, 31.883076, 42.670551>,  <32.642685, 31.554947, 42.471451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530037, 31.883076, 42.670551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340358, -0.399613, 0.851156,
		0.897131, 0.409120, -0.166663,
		-0.281624, 0.820323, 0.497752,
		32.445549, 32.129173, 42.819878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211143, 31.751898, 42.962299>,  <32.642685, 31.554947, 42.471451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211143, 31.751898, 42.962299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879478, 31.914661, 43.115620>,  <32.680481, 32.012318, 43.207611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879478, 31.914661, 43.115620>,  <33.211143, 31.751898, 42.962299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879478, 31.914661, 43.115620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238426, -0.362758, 0.900866,
		0.505615, 0.838351, 0.203767,
		-0.829160, 0.406909, 0.383300,
		32.630730, 32.036736, 43.230610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361828, 31.894096, 43.586349>,  <33.211143, 31.751898, 42.962299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361828, 31.894096, 43.586349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966427, 31.922174, 43.639912>,  <32.729187, 31.939022, 43.672047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966427, 31.922174, 43.639912>,  <33.361828, 31.894096, 43.586349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966427, 31.922174, 43.639912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109806, -0.275445, 0.955025,
		0.103922, 0.958751, 0.264571,
		-0.988505, 0.070196, 0.133902,
		32.669876, 31.943233, 43.680080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282211, 32.205063, 44.299606>,  <33.361828, 31.894096, 43.586349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282211, 32.205063, 44.299606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933018, 32.032681, 44.208237>,  <32.723503, 31.929251, 44.153416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933018, 32.032681, 44.208237>,  <33.282211, 32.205063, 44.299606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933018, 32.032681, 44.208237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079492, -0.336355, 0.938374,
		-0.481235, 0.837340, 0.259373,
		-0.872980, -0.430960, -0.228428,
		32.671124, 31.903393, 44.139709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818604, 32.414188, 44.804966>,  <33.282211, 32.205063, 44.299606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818604, 32.414188, 44.804966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663097, 32.081310, 44.646820>,  <32.569794, 31.881582, 44.551933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663097, 32.081310, 44.646820>,  <32.818604, 32.414188, 44.804966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663097, 32.081310, 44.646820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130323, -0.375134, 0.917764,
		-0.912074, 0.408318, 0.037385,
		-0.388764, -0.832196, -0.395363,
		32.546467, 31.831652, 44.528210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214458, 32.315331, 45.121468>,  <32.818604, 32.414188, 44.804966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214458, 32.315331, 45.121468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293308, 31.948154, 44.983757>,  <32.340618, 31.727848, 44.901131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293308, 31.948154, 44.983757>,  <32.214458, 32.315331, 45.121468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293308, 31.948154, 44.983757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181915, -0.379318, 0.907207,
		-0.963354, -0.116199, -0.241758,
		0.197120, -0.917941, -0.344280,
		32.352444, 31.672771, 44.880474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701014, 31.877712, 45.417477>,  <32.214458, 32.315331, 45.121468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701014, 31.877712, 45.417477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978197, 31.612652, 45.303848>,  <32.144508, 31.453615, 45.235672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978197, 31.612652, 45.303848>,  <31.701014, 31.877712, 45.417477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978197, 31.612652, 45.303848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139424, -0.509739, 0.848957,
		-0.707366, -0.548687, -0.445618,
		0.692961, -0.662654, -0.284072,
		32.186085, 31.413857, 45.218628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418995, 31.245768, 45.550144>,  <31.701014, 31.877712, 45.417477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418995, 31.245768, 45.550144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814030, 31.182970, 45.547951>,  <32.051048, 31.145292, 45.546635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814030, 31.182970, 45.547951>,  <31.418995, 31.245768, 45.550144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814030, 31.182970, 45.547951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088081, -0.582328, 0.808169,
		-0.130071, -0.797652, -0.588926,
		0.987585, -0.156992, -0.005486,
		32.110306, 31.135872, 45.546307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463404, 30.556393, 45.641598>,  <31.418995, 31.245768, 45.550144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463404, 30.556393, 45.641598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831186, 30.678457, 45.740776>,  <32.051857, 30.751696, 45.800282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831186, 30.678457, 45.740776>,  <31.463404, 30.556393, 45.641598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831186, 30.678457, 45.740776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068569, -0.496490, 0.865330,
		0.387168, -0.812634, -0.435576,
		0.919456, 0.305161, 0.247946,
		32.107021, 30.770006, 45.815159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856453, 29.939732, 45.838596>,  <31.463404, 30.556393, 45.641598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856453, 29.939732, 45.838596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038960, 30.249306, 46.014256>,  <32.148464, 30.435049, 46.119652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038960, 30.249306, 46.014256>,  <31.856453, 29.939732, 45.838596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038960, 30.249306, 46.014256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141182, -0.550218, 0.822999,
		0.878572, -0.313508, -0.360311,
		0.456266, 0.773933, 0.439144,
		32.175838, 30.481485, 46.146000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407688, 29.622820, 46.235512>,  <31.856453, 29.939732, 45.838596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407688, 29.622820, 46.235512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401611, 29.990326, 46.393314>,  <32.397964, 30.210831, 46.487995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401611, 29.990326, 46.393314>,  <32.407688, 29.622820, 46.235512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401611, 29.990326, 46.393314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148654, -0.388094, 0.909552,
		0.988773, 0.072463, -0.130682,
		-0.015192, 0.918767, 0.394508,
		32.397053, 30.265957, 46.511665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041870, 29.794689, 46.676086>,  <32.407688, 29.622820, 46.235512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041870, 29.794689, 46.676086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725582, 30.002932, 46.804913>,  <32.535809, 30.127876, 46.882210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725582, 30.002932, 46.804913>,  <33.041870, 29.794689, 46.676086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725582, 30.002932, 46.804913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209096, -0.264783, 0.941365,
		0.575356, 0.811703, 0.100514,
		-0.790724, 0.520604, 0.322068,
		32.488365, 30.159113, 46.901531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263279, 30.102791, 47.226696>,  <33.041870, 29.794689, 46.676086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263279, 30.102791, 47.226696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872860, 30.170473, 47.281406>,  <32.638611, 30.211082, 47.314232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872860, 30.170473, 47.281406>,  <33.263279, 30.102791, 47.226696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872860, 30.170473, 47.281406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126910, -0.067879, 0.989589,
		0.176728, 0.983240, 0.044779,
		-0.976044, 0.169205, 0.136779,
		32.580048, 30.221235, 47.322441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224422, 30.511967, 47.829773>,  <33.263279, 30.102791, 47.226696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224422, 30.511967, 47.829773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859913, 30.349207, 47.804436>,  <32.641209, 30.251551, 47.789234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859913, 30.349207, 47.804436>,  <33.224422, 30.511967, 47.829773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859913, 30.349207, 47.804436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048518, -0.046651, 0.997732,
		-0.408931, 0.912281, 0.022770,
		-0.911274, -0.406899, -0.063339,
		32.586529, 30.227137, 47.785435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796207, 30.898628, 48.179722>,  <33.224422, 30.511967, 47.829773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796207, 30.898628, 48.179722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598892, 30.552679, 48.142498>,  <32.480503, 30.345110, 48.120163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598892, 30.552679, 48.142498>,  <32.796207, 30.898628, 48.179722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598892, 30.552679, 48.142498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085315, -0.154568, 0.984292,
		-0.865670, 0.477604, 0.150034,
		-0.493292, -0.864872, -0.093059,
		32.450905, 30.293217, 48.114582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160519, 30.939894, 48.559883>,  <32.796207, 30.898628, 48.179722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160519, 30.939894, 48.559883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244129, 30.549704, 48.532291>,  <32.294296, 30.315590, 48.515736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244129, 30.549704, 48.532291>,  <32.160519, 30.939894, 48.559883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244129, 30.549704, 48.532291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129882, -0.097603, 0.986714,
		-0.969246, -0.197292, -0.147098,
		0.209028, -0.975474, -0.068977,
		32.306839, 30.257061, 48.511597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723755, 30.583754, 49.149170>,  <32.160519, 30.939894, 48.559883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723755, 30.583754, 49.149170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007469, 30.317106, 49.057487>,  <32.177700, 30.157118, 49.002480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007469, 30.317106, 49.057487>,  <31.723755, 30.583754, 49.149170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007469, 30.317106, 49.057487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031631, -0.294721, 0.955060,
		-0.704209, -0.684662, -0.187956,
		0.709287, -0.666616, -0.229202,
		32.220257, 30.117121, 48.988728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560616, 29.974474, 49.536564>,  <31.723755, 30.583754, 49.149170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560616, 29.974474, 49.536564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936790, 29.880602, 49.438179>,  <32.162495, 29.824278, 49.379147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936790, 29.880602, 49.438179>,  <31.560616, 29.974474, 49.536564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936790, 29.880602, 49.438179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125797, -0.431919, 0.893096,
		-0.315830, -0.870845, -0.376671,
		0.940440, -0.234682, -0.245963,
		32.218922, 29.810198, 49.364391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710564, 29.309828, 49.868732>,  <31.560616, 29.974474, 49.536564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710564, 29.309828, 49.868732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049770, 29.508633, 49.795147>,  <32.253296, 29.627916, 49.750996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049770, 29.508633, 49.795147>,  <31.710564, 29.309828, 49.868732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049770, 29.508633, 49.795147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328210, -0.219975, 0.918634,
		0.416106, -0.839398, -0.349668,
		0.848018, 0.497014, -0.183965,
		32.304176, 29.657736, 49.739956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200634, 28.843935, 50.064484>,  <31.710564, 29.309828, 49.868732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200634, 28.843935, 50.064484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360931, 29.210403, 50.062149>,  <32.457111, 29.430285, 50.060749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360931, 29.210403, 50.062149>,  <32.200634, 28.843935, 50.064484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360931, 29.210403, 50.062149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496505, -0.211815, 0.841794,
		0.769992, -0.340239, -0.539767,
		0.400743, 0.916172, -0.005834,
		32.481155, 29.485254, 50.060398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881386, 28.745338, 50.044899>,  <32.200634, 28.843935, 50.064484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881386, 28.745338, 50.044899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819744, 29.105389, 50.207886>,  <32.782761, 29.321419, 50.305679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819744, 29.105389, 50.207886>,  <32.881386, 28.745338, 50.044899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819744, 29.105389, 50.207886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720693, -0.179708, 0.669556,
		0.675909, 0.396841, -0.621019,
		-0.154105, 0.900123, 0.407467,
		32.773514, 29.375425, 50.330128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638786, 28.979259, 50.309910>,  <32.881386, 28.745338, 50.044899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638786, 28.979259, 50.309910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356014, 29.206192, 50.478851>,  <33.186352, 29.342352, 50.580215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356014, 29.206192, 50.478851>,  <33.638786, 28.979259, 50.309910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356014, 29.206192, 50.478851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260114, -0.346760, 0.901165,
		0.657713, 0.746923, 0.097565,
		-0.706932, 0.567330, 0.422354,
		33.143936, 29.376390, 50.605556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938393, 29.107958, 50.866737>,  <33.638786, 28.979259, 50.309910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938393, 29.107958, 50.866737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559044, 29.200785, 50.953205>,  <33.331432, 29.256481, 51.005085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559044, 29.200785, 50.953205>,  <33.938393, 29.107958, 50.866737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559044, 29.200785, 50.953205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092555, -0.449410, 0.888518,
		0.303347, 0.862655, 0.404730,
		-0.948375, 0.232069, 0.216170,
		33.274532, 29.270405, 51.018055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932961, 29.307005, 51.609684>,  <33.938393, 29.107958, 50.866737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932961, 29.307005, 51.609684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544647, 29.244444, 51.536892>,  <33.311661, 29.206907, 51.493217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544647, 29.244444, 51.536892>,  <33.932961, 29.307005, 51.609684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544647, 29.244444, 51.536892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109303, -0.386932, 0.915607,
		-0.213618, 0.908748, 0.358532,
		-0.970783, -0.156402, -0.181984,
		33.253410, 29.197523, 51.482296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549187, 29.504061, 52.175835>,  <33.932961, 29.307005, 51.609684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549187, 29.504061, 52.175835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332809, 29.233999, 51.975216>,  <33.202984, 29.071962, 51.854843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332809, 29.233999, 51.975216>,  <33.549187, 29.504061, 52.175835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332809, 29.233999, 51.975216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130414, -0.521787, 0.843048,
		-0.830889, 0.521448, 0.194206,
		-0.540940, -0.675152, -0.501551,
		33.170528, 29.031454, 51.824749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096420, 29.199554, 52.758675>,  <33.549187, 29.504061, 52.175835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096420, 29.199554, 52.758675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053299, 28.954994, 52.445095>,  <33.027428, 28.808258, 52.256947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053299, 28.954994, 52.445095>,  <33.096420, 29.199554, 52.758675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053299, 28.954994, 52.445095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263845, -0.742669, 0.615491,
		-0.958522, 0.273193, -0.081251,
		-0.107805, -0.611399, -0.783945,
		33.020958, 28.771574, 52.209911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427853, 28.948252, 52.853725>,  <33.096420, 29.199554, 52.758675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427853, 28.948252, 52.853725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629318, 28.704746, 52.608540>,  <32.750198, 28.558643, 52.461426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629318, 28.704746, 52.608540>,  <32.427853, 28.948252, 52.853725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629318, 28.704746, 52.608540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286780, -0.787120, 0.546076,
		-0.814912, -0.099250, -0.571023,
		0.503662, -0.608763, -0.612970,
		32.780418, 28.522118, 52.424648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122520, 28.474447, 52.436131>,  <32.427853, 28.948252, 52.853725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122520, 28.474447, 52.436131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473404, 28.291615, 52.494884>,  <32.683933, 28.181915, 52.530136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473404, 28.291615, 52.494884>,  <32.122520, 28.474447, 52.436131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473404, 28.291615, 52.494884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457129, -0.701669, 0.546529,
		-0.146744, -0.546567, -0.824458,
		0.877211, -0.457084, 0.146886,
		32.736568, 28.154490, 52.538952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914097, 27.816725, 52.454514>,  <32.122520, 28.474447, 52.436131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914097, 27.816725, 52.454514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276779, 27.804838, 52.622799>,  <32.494389, 27.797707, 52.723770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276779, 27.804838, 52.622799>,  <31.914097, 27.816725, 52.454514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276779, 27.804838, 52.622799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322378, -0.692024, 0.645891,
		0.271952, -0.721262, -0.637042,
		0.906705, -0.029717, 0.420717,
		32.548790, 27.795923, 52.749016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914696, 27.082989, 52.622494>,  <31.914097, 27.816725, 52.454514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914696, 27.082989, 52.622494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126328, 27.311926, 52.873093>,  <32.253307, 27.449289, 53.023453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126328, 27.311926, 52.873093>,  <31.914696, 27.082989, 52.622494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126328, 27.311926, 52.873093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357217, -0.519468, 0.776240,
		0.769721, -0.634488, -0.070389,
		0.529080, 0.572344, 0.626495,
		32.285053, 27.483629, 53.061043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183022, 26.638012, 53.049496>,  <31.914696, 27.082989, 52.622494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183022, 26.638012, 53.049496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166100, 26.996887, 53.225342>,  <32.155949, 27.212212, 53.330849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166100, 26.996887, 53.225342>,  <32.183022, 26.638012, 53.049496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166100, 26.996887, 53.225342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402190, -0.418077, 0.814528,
		0.914578, -0.142353, 0.378526,
		-0.042302, 0.897189, 0.439617,
		32.153408, 27.266045, 53.357227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577431, 26.676287, 53.710613>,  <32.183022, 26.638012, 53.049496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577431, 26.676287, 53.710613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261860, 26.915262, 53.653114>,  <32.072517, 27.058647, 53.618614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261860, 26.915262, 53.653114>,  <32.577431, 26.676287, 53.710613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261860, 26.915262, 53.653114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511381, -0.508620, 0.692673,
		0.340716, 0.619977, 0.706782,
		-0.788925, 0.597439, -0.143749,
		32.025181, 27.094494, 53.609989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960430, 26.459370, 53.083916>,  <32.577431, 26.676287, 53.710613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960430, 26.459370, 53.083916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341225, 26.362089, 53.158291>,  <33.569702, 26.303720, 53.202915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341225, 26.362089, 53.158291>,  <32.960430, 26.459370, 53.083916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341225, 26.362089, 53.158291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189295, -0.009711, -0.981872,
		0.240596, 0.969928, 0.036792,
		0.951988, -0.243199, 0.185939,
		33.626820, 26.289129, 53.214073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373451, 26.997057, 52.763409>,  <32.960430, 26.459370, 53.083916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373451, 26.997057, 52.763409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549202, 26.640274, 52.806046>,  <33.654652, 26.426205, 52.831627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549202, 26.640274, 52.806046>,  <33.373451, 26.997057, 52.763409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549202, 26.640274, 52.806046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180178, -0.028743, -0.983214,
		0.880048, 0.451207, 0.148082,
		0.439377, -0.891956, 0.106592,
		33.681015, 26.372686, 52.838024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133831, 27.063658, 52.576717>,  <33.373451, 26.997057, 52.763409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133831, 27.063658, 52.576717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973824, 26.705576, 52.498138>,  <33.877819, 26.490726, 52.450993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973824, 26.705576, 52.498138>,  <34.133831, 27.063658, 52.576717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973824, 26.705576, 52.498138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127730, 0.157798, -0.979176,
		0.907562, -0.416782, 0.051223,
		-0.400020, -0.895205, -0.196447,
		33.853817, 26.437014, 52.439205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552940, 26.527060, 52.120560>,  <34.133831, 27.063658, 52.576717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552940, 26.527060, 52.120560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154045, 26.514778, 52.093494>,  <33.914707, 26.507410, 52.077255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154045, 26.514778, 52.093494>,  <34.552940, 26.527060, 52.120560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154045, 26.514778, 52.093494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069069, -0.047243, -0.996493,
		0.027397, -0.998411, 0.049233,
		-0.997235, -0.030702, -0.067665,
		33.854874, 26.505568, 52.073196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350426, 25.919529, 51.828461>,  <34.552940, 26.527060, 52.120560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350426, 25.919529, 51.828461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062042, 26.187147, 51.756237>,  <33.889011, 26.347719, 51.712902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062042, 26.187147, 51.756237>,  <34.350426, 25.919529, 51.828461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062042, 26.187147, 51.756237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144058, -0.110163, -0.983418,
		-0.677843, -0.735011, -0.016959,
		-0.720955, 0.669047, -0.180558,
		33.845757, 26.387861, 51.702068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950603, 25.612881, 51.349396>,  <34.350426, 25.919529, 51.828461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950603, 25.612881, 51.349396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894127, 26.006224, 51.303665>,  <33.860241, 26.242229, 51.276226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894127, 26.006224, 51.303665>,  <33.950603, 25.612881, 51.349396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894127, 26.006224, 51.303665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265285, -0.073682, -0.961351,
		-0.953776, -0.166066, -0.250467,
		-0.141193, 0.983358, -0.114331,
		33.851768, 26.301231, 51.269367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538750, 25.633316, 50.743477>,  <33.950603, 25.612881, 51.349396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538750, 25.633316, 50.743477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687286, 26.003710, 50.770794>,  <33.776409, 26.225946, 50.787186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687286, 26.003710, 50.770794>,  <33.538750, 25.633316, 50.743477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687286, 26.003710, 50.770794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029036, 0.061937, -0.997658,
		-0.928044, 0.372450, -0.003888,
		0.371337, 0.925983, 0.068295,
		33.798687, 26.281506, 50.791283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171143, 25.950064, 50.154224>,  <33.538750, 25.633316, 50.743477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171143, 25.950064, 50.154224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458355, 26.210094, 50.253689>,  <33.630684, 26.366112, 50.313366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458355, 26.210094, 50.253689>,  <33.171143, 25.950064, 50.154224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458355, 26.210094, 50.253689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142752, 0.212120, -0.966761,
		-0.681213, 0.729662, 0.059509,
		0.718032, 0.650076, 0.248660,
		33.673763, 26.405117, 50.328285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021004, 26.546593, 49.807842>,  <33.171143, 25.950064, 50.154224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021004, 26.546593, 49.807842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411674, 26.566832, 49.891312>,  <33.646076, 26.578976, 49.941391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411674, 26.566832, 49.891312>,  <33.021004, 26.546593, 49.807842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411674, 26.566832, 49.891312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198101, 0.162513, -0.966616,
		-0.082820, 0.985408, 0.148699,
		0.976677, 0.050598, 0.208669,
		33.704678, 26.582010, 49.953911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311008, 27.075636, 49.465939>,  <33.021004, 26.546593, 49.807842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311008, 27.075636, 49.465939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652798, 26.873001, 49.511974>,  <33.857872, 26.751421, 49.539597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652798, 26.873001, 49.511974>,  <33.311008, 27.075636, 49.465939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652798, 26.873001, 49.511974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353773, 0.405189, -0.843011,
		0.380424, 0.761046, 0.525439,
		0.854472, -0.506587, 0.115094,
		33.909138, 26.721025, 49.546501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832832, 27.557198, 49.322468>,  <33.311008, 27.075636, 49.465939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832832, 27.557198, 49.322468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982029, 27.188862, 49.276974>,  <34.071548, 26.967861, 49.249680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982029, 27.188862, 49.276974>,  <33.832832, 27.557198, 49.322468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982029, 27.188862, 49.276974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544503, 0.316491, -0.776756,
		0.751261, 0.227797, 0.619448,
		0.372993, -0.920838, -0.113731,
		34.093925, 26.912611, 49.242855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575321, 27.703651, 49.285587>,  <33.832832, 27.557198, 49.322468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575321, 27.703651, 49.285587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532246, 27.340124, 49.124367>,  <34.506401, 27.122007, 49.027634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532246, 27.340124, 49.124367>,  <34.575321, 27.703651, 49.285587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532246, 27.340124, 49.124367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595582, 0.265635, -0.758102,
		0.796043, -0.321693, 0.512669,
		-0.107693, -0.908819, -0.403052,
		34.499939, 27.067478, 49.003452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226566, 27.458281, 48.995068>,  <34.575321, 27.703651, 49.285587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226566, 27.458281, 48.995068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956581, 27.231276, 48.806450>,  <34.794590, 27.095074, 48.693279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956581, 27.231276, 48.806450>,  <35.226566, 27.458281, 48.995068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956581, 27.231276, 48.806450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369795, 0.292839, -0.881758,
		0.638494, -0.769530, 0.012208,
		-0.674964, -0.567512, -0.471545,
		34.754093, 27.061022, 48.664986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614441, 27.187052, 48.474594>,  <35.226566, 27.458281, 48.995068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614441, 27.187052, 48.474594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231388, 27.127369, 48.376068>,  <35.001556, 27.091558, 48.316952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231388, 27.127369, 48.376068>,  <35.614441, 27.187052, 48.474594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231388, 27.127369, 48.376068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209990, 0.223542, -0.951805,
		0.197072, -0.963207, -0.182741,
		-0.957636, -0.149200, -0.246318,
		34.944099, 27.082607, 48.302174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560524, 26.670033, 47.885662>,  <35.614441, 27.187052, 48.474594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560524, 26.670033, 47.885662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249985, 26.922113, 47.890167>,  <35.063660, 27.073362, 47.892872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249985, 26.922113, 47.890167>,  <35.560524, 26.670033, 47.885662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249985, 26.922113, 47.890167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118252, 0.163181, -0.979484,
		-0.619113, -0.759088, -0.201208,
		-0.776348, 0.630205, 0.011264,
		35.017082, 27.111176, 47.893547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261227, 26.568155, 47.297321>,  <35.560524, 26.670033, 47.885662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261227, 26.568155, 47.297321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112629, 26.922714, 47.407806>,  <35.023472, 27.135450, 47.474098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112629, 26.922714, 47.407806>,  <35.261227, 26.568155, 47.297321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112629, 26.922714, 47.407806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026279, 0.307421, -0.951211,
		-0.928063, -0.346112, -0.137499,
		-0.371495, 0.886397, 0.276210,
		35.001179, 27.188633, 47.490669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910149, 26.777529, 46.735073>,  <35.261227, 26.568155, 47.297321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910149, 26.777529, 46.735073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949768, 27.116545, 46.943638>,  <34.973541, 27.319954, 47.068775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949768, 27.116545, 46.943638>,  <34.910149, 26.777529, 46.735073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949768, 27.116545, 46.943638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219769, 0.492415, -0.842158,
		-0.970511, 0.198005, -0.137489,
		0.099050, 0.847539, 0.521409,
		34.979485, 27.370806, 47.100060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523716, 27.192457, 46.315353>,  <34.910149, 26.777529, 46.735073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523716, 27.192457, 46.315353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773170, 27.415466, 46.534531>,  <34.922844, 27.549273, 46.666039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773170, 27.415466, 46.534531>,  <34.523716, 27.192457, 46.315353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773170, 27.415466, 46.534531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108336, 0.632550, -0.766905,
		-0.774172, 0.537631, 0.334081,
		0.623635, 0.557524, 0.547948,
		34.960262, 27.582724, 46.698914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222443, 27.855270, 46.231495>,  <34.523716, 27.192457, 46.315353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222443, 27.855270, 46.231495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595741, 27.923271, 46.358086>,  <34.819721, 27.964071, 46.434040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595741, 27.923271, 46.358086>,  <34.222443, 27.855270, 46.231495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595741, 27.923271, 46.358086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205608, 0.469642, -0.858581,
		-0.294592, 0.866335, 0.403336,
		0.933242, 0.170002, 0.316478,
		34.875713, 27.974272, 46.453030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330990, 28.553606, 46.145653>,  <34.222443, 27.855270, 46.231495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330990, 28.553606, 46.145653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702553, 28.407230, 46.168362>,  <34.925491, 28.319405, 46.181988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702553, 28.407230, 46.168362>,  <34.330990, 28.553606, 46.145653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702553, 28.407230, 46.168362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260321, 0.536253, -0.802911,
		0.263373, 0.760607, 0.593390,
		0.928907, -0.365937, 0.056768,
		34.981224, 28.297449, 46.185390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810539, 29.118467, 46.169380>,  <34.330990, 28.553606, 46.145653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810539, 29.118467, 46.169380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017414, 28.802547, 46.037479>,  <35.141537, 28.612995, 45.958340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017414, 28.802547, 46.037479>,  <34.810539, 29.118467, 46.169380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017414, 28.802547, 46.037479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261851, 0.512823, -0.817586,
		0.814835, 0.336496, 0.472033,
		0.517184, -0.789799, -0.329755,
		35.172569, 28.565607, 45.938553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399338, 29.437061, 45.937149>,  <34.810539, 29.118467, 46.169380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399338, 29.437061, 45.937149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468170, 29.092590, 45.745834>,  <35.509468, 28.885908, 45.631046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468170, 29.092590, 45.745834>,  <35.399338, 29.437061, 45.937149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468170, 29.092590, 45.745834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286423, 0.508296, -0.812156,
		0.942524, 0.002761, 0.334128,
		0.172078, -0.861178, -0.478290,
		35.519794, 28.834236, 45.602348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019947, 29.471199, 45.573254>,  <35.399338, 29.437061, 45.937149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019947, 29.471199, 45.573254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825535, 29.178238, 45.382526>,  <35.708889, 29.002460, 45.268089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825535, 29.178238, 45.382526>,  <36.019947, 29.471199, 45.573254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825535, 29.178238, 45.382526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156174, 0.464030, -0.871944,
		0.859875, -0.498258, -0.111151,
		-0.486030, -0.732403, -0.476823,
		35.679726, 28.958517, 45.239479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524288, 29.185724, 44.997089>,  <36.019947, 29.471199, 45.573254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524288, 29.185724, 44.997089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144531, 29.108362, 44.898102>,  <35.916676, 29.061945, 44.838711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144531, 29.108362, 44.898102>,  <36.524288, 29.185724, 44.997089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144531, 29.108362, 44.898102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171679, 0.340236, -0.924536,
		0.263004, -0.920237, -0.289816,
		-0.949397, -0.193401, -0.247469,
		35.859711, 29.050341, 44.823860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538692, 28.927181, 44.261951>,  <36.524288, 29.185724, 44.997089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538692, 28.927181, 44.261951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160503, 29.030010, 44.341942>,  <35.933590, 29.091707, 44.389935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160503, 29.030010, 44.341942>,  <36.538692, 28.927181, 44.261951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160503, 29.030010, 44.341942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050653, 0.490457, -0.869992,
		-0.321728, -0.832686, -0.450694,
		-0.945476, 0.257072, 0.199972,
		35.876862, 29.107132, 44.401932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209595, 28.691061, 43.679741>,  <36.538692, 28.927181, 44.261951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209595, 28.691061, 43.679741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962486, 28.969030, 43.826946>,  <35.814220, 29.135813, 43.915272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962486, 28.969030, 43.826946>,  <36.209595, 28.691061, 43.679741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962486, 28.969030, 43.826946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014968, 0.478311, -0.878063,
		-0.786213, -0.536936, -0.305889,
		-0.617774, 0.694923, 0.368018,
		35.777153, 29.177507, 43.937351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640438, 28.687840, 43.289288>,  <36.209595, 28.691061, 43.679741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640438, 28.687840, 43.289288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587677, 29.044540, 43.462437>,  <35.556019, 29.258562, 43.566326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587677, 29.044540, 43.462437>,  <35.640438, 28.687840, 43.289288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587677, 29.044540, 43.462437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251556, 0.392278, -0.884781,
		-0.958813, -0.225595, 0.172584,
		-0.131902, 0.891753, 0.432871,
		35.548107, 29.312067, 43.592297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046738, 28.873289, 42.987629>,  <35.640438, 28.687840, 43.289288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046738, 28.873289, 42.987629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226669, 29.203339, 43.124348>,  <35.334629, 29.401369, 43.206379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226669, 29.203339, 43.124348>,  <35.046738, 28.873289, 42.987629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226669, 29.203339, 43.124348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275604, 0.492266, -0.825661,
		-0.849527, 0.277207, 0.448843,
		0.449830, 0.825124, 0.341794,
		35.361618, 29.450876, 43.226887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568142, 29.517235, 42.950424>,  <35.046738, 28.873289, 42.987629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568142, 29.517235, 42.950424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932571, 29.680658, 42.972458>,  <35.151230, 29.778711, 42.985680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932571, 29.680658, 42.972458>,  <34.568142, 29.517235, 42.950424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932571, 29.680658, 42.972458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142852, 0.438206, -0.887450,
		-0.386712, 0.800660, 0.457599,
		0.911069, 0.408557, 0.055084,
		35.205891, 29.803225, 42.988983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504623, 30.230492, 42.754528>,  <34.568142, 29.517235, 42.950424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504623, 30.230492, 42.754528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890221, 30.130886, 42.717213>,  <35.121578, 30.071123, 42.694824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890221, 30.130886, 42.717213>,  <34.504623, 30.230492, 42.754528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890221, 30.130886, 42.717213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016331, 0.405600, -0.913905,
		0.265413, 0.879477, 0.395064,
		0.963996, -0.249014, -0.093289,
		35.179420, 30.056181, 42.689224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713707, 30.678989, 42.399426>,  <34.504623, 30.230492, 42.754528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713707, 30.678989, 42.399426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031185, 30.438046, 42.365452>,  <35.221672, 30.293480, 42.345070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031185, 30.438046, 42.365452>,  <34.713707, 30.678989, 42.399426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031185, 30.438046, 42.365452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079852, 0.241574, -0.967091,
		0.603054, 0.760792, 0.239836,
		0.793693, -0.602360, -0.084932,
		35.269295, 30.257338, 42.339973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190830, 30.990837, 42.119953>,  <34.713707, 30.678989, 42.399426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190830, 30.990837, 42.119953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330681, 30.623608, 42.045227>,  <35.414593, 30.403271, 42.000389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330681, 30.623608, 42.045227>,  <35.190830, 30.990837, 42.119953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330681, 30.623608, 42.045227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101492, 0.235342, -0.966599,
		0.931375, 0.318989, 0.175459,
		0.349628, -0.918074, -0.186817,
		35.435570, 30.348185, 41.989182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848213, 30.967735, 41.635860>,  <35.190830, 30.990837, 42.119953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848213, 30.967735, 41.635860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662491, 30.614126, 41.614212>,  <35.551060, 30.401960, 41.601223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662491, 30.614126, 41.614212>,  <35.848213, 30.967735, 41.635860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662491, 30.614126, 41.614212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097644, 0.111832, -0.988918,
		0.880277, -0.453873, -0.138244,
		-0.464304, -0.884021, -0.054125,
		35.523201, 30.348921, 41.597973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199512, 30.447920, 41.172043>,  <35.848213, 30.967735, 41.635860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199512, 30.447920, 41.172043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805328, 30.380192, 41.177807>,  <35.568817, 30.339556, 41.181267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805328, 30.380192, 41.177807>,  <36.199512, 30.447920, 41.172043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805328, 30.380192, 41.177807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030288, 0.091563, -0.995339,
		0.167213, -0.981298, -0.095360,
		-0.985456, -0.169322, 0.014411,
		35.509693, 30.329397, 41.182129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073833, 30.142483, 40.534164>,  <36.199512, 30.447920, 41.172043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073833, 30.142483, 40.534164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703003, 30.200369, 40.672493>,  <35.480507, 30.235102, 40.755489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703003, 30.200369, 40.672493>,  <36.073833, 30.142483, 40.534164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703003, 30.200369, 40.672493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343190, 0.043561, -0.938255,
		-0.150846, -0.988514, 0.009281,
		-0.927074, 0.144717, 0.345819,
		35.424881, 30.243784, 40.776237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608551, 29.814827, 40.084866>,  <36.073833, 30.142483, 40.534164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608551, 29.814827, 40.084866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376045, 30.071856, 40.284561>,  <35.236542, 30.226072, 40.404377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376045, 30.071856, 40.284561>,  <35.608551, 29.814827, 40.084866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376045, 30.071856, 40.284561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391504, 0.317006, -0.863847,
		-0.713344, -0.697575, 0.067306,
		-0.581262, 0.642570, 0.499237,
		35.201668, 30.264627, 40.434334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913078, 29.658638, 39.978649>,  <35.608551, 29.814827, 40.084866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913078, 29.658638, 39.978649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933147, 30.049688, 40.060360>,  <34.945190, 30.284319, 40.109386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933147, 30.049688, 40.060360>,  <34.913078, 29.658638, 39.978649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933147, 30.049688, 40.060360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535258, 0.199002, -0.820912,
		-0.843197, -0.068148, 0.533268,
		0.050178, 0.977627, 0.204275,
		34.948200, 30.342976, 40.121643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297184, 29.952776, 39.676712>,  <34.913078, 29.658638, 39.978649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297184, 29.952776, 39.676712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508900, 30.277956, 39.773846>,  <34.635929, 30.473064, 39.832127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508900, 30.277956, 39.773846>,  <34.297184, 29.952776, 39.676712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508900, 30.277956, 39.773846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488593, 0.526041, -0.696102,
		-0.693637, 0.249790, 0.675627,
		0.529287, 0.812949, 0.242836,
		34.667686, 30.521841, 39.846695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766621, 30.516050, 39.433186>,  <34.297184, 29.952776, 39.676712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766621, 30.516050, 39.433186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128410, 30.678703, 39.484699>,  <34.345482, 30.776295, 39.515606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128410, 30.678703, 39.484699>,  <33.766621, 30.516050, 39.433186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128410, 30.678703, 39.484699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246680, 0.744982, -0.619800,
		-0.347971, 0.528822, 0.774121,
		0.904470, 0.406632, 0.128782,
		34.399750, 30.800694, 39.523335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708164, 31.313837, 39.698437>,  <33.766621, 30.516050, 39.433186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708164, 31.313837, 39.698437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046112, 31.245092, 39.495792>,  <34.248882, 31.203846, 39.374207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046112, 31.245092, 39.495792>,  <33.708164, 31.313837, 39.698437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046112, 31.245092, 39.495792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114235, 0.867193, -0.484693,
		0.522634, 0.467375, 0.713032,
		0.844869, -0.171864, -0.506615,
		34.299572, 31.193533, 39.343807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934975, 31.961870, 39.474350>,  <33.708164, 31.313837, 39.698437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934975, 31.961870, 39.474350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152901, 31.730455, 39.231544>,  <34.283657, 31.591606, 39.085861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152901, 31.730455, 39.231544>,  <33.934975, 31.961870, 39.474350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152901, 31.730455, 39.231544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051656, 0.745664, -0.664316,
		0.836960, 0.330577, 0.436138,
		0.544820, -0.578536, -0.607015,
		34.316345, 31.556894, 39.049438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533638, 32.381535, 39.010746>,  <33.934975, 31.961870, 39.474350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533638, 32.381535, 39.010746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475903, 32.035286, 38.818974>,  <34.441261, 31.827536, 38.703911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475903, 32.035286, 38.818974>,  <34.533638, 32.381535, 39.010746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475903, 32.035286, 38.818974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130188, 0.496909, -0.857982,
		0.980927, -0.061422, -0.184417,
		-0.144337, -0.865626, -0.479435,
		34.432602, 31.775599, 38.675144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999935, 32.455246, 38.418026>,  <34.533638, 32.381535, 39.010746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999935, 32.455246, 38.418026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737385, 32.170380, 38.318432>,  <34.579857, 31.999460, 38.258675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737385, 32.170380, 38.318432>,  <34.999935, 32.455246, 38.418026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737385, 32.170380, 38.318432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055901, 0.375025, -0.925328,
		0.752363, -0.593441, -0.285967,
		-0.656373, -0.712169, -0.248981,
		34.540474, 31.956730, 38.243736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235718, 32.181408, 37.760185>,  <34.999935, 32.455246, 38.418026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235718, 32.181408, 37.760185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850590, 32.073505, 37.765995>,  <34.619514, 32.008766, 37.769482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850590, 32.073505, 37.765995>,  <35.235718, 32.181408, 37.760185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850590, 32.073505, 37.765995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119292, 0.376310, -0.918782,
		0.242378, -0.886355, -0.394498,
		-0.962820, -0.269753, 0.014526,
		34.561745, 31.992579, 37.770351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905220, 32.007114, 37.583698>,  <35.235718, 32.181408, 37.760185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905220, 32.007114, 37.583698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765678, 32.354572, 37.442982>,  <35.681953, 32.563049, 37.358551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765678, 32.354572, 37.442982>,  <35.905220, 32.007114, 37.583698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765678, 32.354572, 37.442982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536409, -0.122734, -0.834986,
		-0.768485, -0.479987, -0.423135,
		-0.348850, 0.868648, -0.351789,
		35.661022, 32.615166, 37.337444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000259, 32.479862, 38.158749>,  <35.905220, 32.007114, 37.583698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000259, 32.479862, 38.158749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354935, 32.663639, 38.179543>,  <36.567738, 32.773907, 38.192020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354935, 32.663639, 38.179543>,  <36.000259, 32.479862, 38.158749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354935, 32.663639, 38.179543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313181, -0.679488, 0.663486,
		0.340159, -0.572021, -0.746381,
		0.886685, 0.459443, 0.051988,
		36.620941, 32.801472, 38.195137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465195, 31.981081, 38.187054>,  <36.000259, 32.479862, 38.158749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465195, 31.981081, 38.187054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643311, 32.302124, 38.345818>,  <36.750179, 32.494751, 38.441074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643311, 32.302124, 38.345818>,  <36.465195, 31.981081, 38.187054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643311, 32.302124, 38.345818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487966, -0.589202, 0.643996,
		0.750735, -0.093088, -0.654012,
		0.445293, 0.802606, 0.396910,
		36.776897, 32.542908, 38.464890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119667, 31.758131, 38.307995>,  <36.465195, 31.981081, 38.187054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119667, 31.758131, 38.307995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101711, 32.098801, 38.516853>,  <37.090939, 32.303204, 38.642170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101711, 32.098801, 38.516853>,  <37.119667, 31.758131, 38.307995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101711, 32.098801, 38.516853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458337, -0.446860, 0.768273,
		0.887644, 0.273806, -0.370294,
		-0.044888, 0.851673, 0.522148,
		37.088245, 32.354301, 38.673496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826805, 32.052048, 38.332352>,  <37.119667, 31.758131, 38.307995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826805, 32.052048, 38.332352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623352, 32.178761, 38.652588>,  <37.501282, 32.254787, 38.844730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623352, 32.178761, 38.652588>,  <37.826805, 32.052048, 38.332352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623352, 32.178761, 38.652588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581149, -0.559762, 0.590705,
		0.635263, 0.765713, 0.100617,
		-0.508632, 0.316780, 0.800589,
		37.470764, 32.273796, 38.892765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332447, 32.090847, 38.901711>,  <37.826805, 32.052048, 38.332352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332447, 32.090847, 38.901711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973827, 32.101017, 39.078598>,  <37.758656, 32.107121, 39.184731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973827, 32.101017, 39.078598>,  <38.332447, 32.090847, 38.901711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973827, 32.101017, 39.078598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320337, -0.652284, 0.686957,
		0.305915, 0.757548, 0.576660,
		-0.896549, 0.025424, 0.442214,
		37.704865, 32.108643, 39.211262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488712, 32.331188, 39.556595>,  <38.332447, 32.090847, 38.901711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488712, 32.331188, 39.556595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131046, 32.154987, 39.588657>,  <37.916447, 32.049267, 39.607895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131046, 32.154987, 39.588657>,  <38.488712, 32.331188, 39.556595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131046, 32.154987, 39.588657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349506, -0.574838, 0.739869,
		-0.279835, 0.689582, 0.667958,
		-0.894169, -0.440497, 0.080154,
		37.862797, 32.022839, 39.612705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285286, 32.372860, 40.261677>,  <38.488712, 32.331188, 39.556595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285286, 32.372860, 40.261677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052055, 32.079891, 40.121063>,  <37.912117, 31.904110, 40.036694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052055, 32.079891, 40.121063>,  <38.285286, 32.372860, 40.261677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052055, 32.079891, 40.121063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147683, -0.521054, 0.840650,
		-0.798879, 0.438250, 0.411982,
		-0.583080, -0.732421, -0.351537,
		37.877132, 31.860165, 40.015602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895649, 32.223797, 40.841400>,  <38.285286, 32.372860, 40.261677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895649, 32.223797, 40.841400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840290, 31.908794, 40.601173>,  <37.807076, 31.719793, 40.457039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840290, 31.908794, 40.601173>,  <37.895649, 32.223797, 40.841400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840290, 31.908794, 40.601173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044603, -0.600831, 0.798131,
		-0.989372, 0.137246, 0.048027,
		-0.138396, -0.787506, -0.600567,
		37.798771, 31.672543, 40.421001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254833, 31.834864, 41.096722>,  <37.895649, 32.223797, 40.841400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254833, 31.834864, 41.096722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515205, 31.595842, 40.909439>,  <37.671429, 31.452429, 40.797070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515205, 31.595842, 40.909439>,  <37.254833, 31.834864, 41.096722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515205, 31.595842, 40.909439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091343, -0.550629, 0.829738,
		-0.753621, -0.582870, -0.303839,
		0.650932, -0.597554, -0.468206,
		37.710484, 31.416576, 40.768978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068649, 31.138271, 41.337486>,  <37.254833, 31.834864, 41.096722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068649, 31.138271, 41.337486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436710, 31.068644, 41.197193>,  <37.657547, 31.026867, 41.113018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436710, 31.068644, 41.197193>,  <37.068649, 31.138271, 41.337486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436710, 31.068644, 41.197193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221345, -0.507638, 0.832653,
		-0.322985, -0.843803, -0.428576,
		0.920156, -0.174071, -0.350731,
		37.712757, 31.016422, 41.091972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139923, 30.404692, 41.417355>,  <37.068649, 31.138271, 41.337486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139923, 30.404692, 41.417355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501785, 30.571730, 41.383385>,  <37.718903, 30.671953, 41.363003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501785, 30.571730, 41.383385>,  <37.139923, 30.404692, 41.417355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501785, 30.571730, 41.383385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290058, -0.457410, 0.840620,
		0.312194, -0.785105, -0.534925,
		0.904655, 0.417597, -0.084926,
		37.773182, 30.697008, 41.357906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613461, 29.902327, 41.562775>,  <37.139923, 30.404692, 41.417355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613461, 29.902327, 41.562775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829391, 30.234829, 41.615833>,  <37.958950, 30.434330, 41.647671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829391, 30.234829, 41.615833>,  <37.613461, 29.902327, 41.562775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829391, 30.234829, 41.615833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435133, -0.410460, 0.801362,
		0.720587, -0.374876, -0.583286,
		0.539827, 0.831258, 0.132651,
		37.991341, 30.484207, 41.655628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298370, 29.696142, 41.624214>,  <37.613461, 29.902327, 41.562775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298370, 29.696142, 41.624214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270847, 30.048498, 41.811531>,  <38.254333, 30.259911, 41.923923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270847, 30.048498, 41.811531>,  <38.298370, 29.696142, 41.624214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270847, 30.048498, 41.811531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481184, -0.381894, 0.789062,
		0.873915, 0.279628, -0.397593,
		-0.068806, 0.880889, 0.468296,
		38.250206, 30.312765, 41.952019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989822, 29.826242, 41.941933>,  <38.298370, 29.696142, 41.624214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989822, 29.826242, 41.941933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739071, 30.063658, 42.143818>,  <38.588619, 30.206108, 42.264950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739071, 30.063658, 42.143818>,  <38.989822, 29.826242, 41.941933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739071, 30.063658, 42.143818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437415, -0.267960, 0.858409,
		0.644743, 0.758886, -0.091645,
		-0.626877, 0.593539, 0.504713,
		38.551006, 30.241720, 42.295231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414356, 30.140512, 42.563847>,  <38.989822, 29.826242, 41.941933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414356, 30.140512, 42.563847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039001, 30.228868, 42.670162>,  <38.813789, 30.281883, 42.733952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039001, 30.228868, 42.670162>,  <39.414356, 30.140512, 42.563847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039001, 30.228868, 42.670162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184568, -0.329905, 0.925796,
		0.292186, 0.917807, 0.268808,
		-0.938383, 0.220891, 0.265791,
		38.757488, 30.295135, 42.749901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438747, 30.444235, 43.270538>,  <39.414356, 30.140512, 42.563847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438747, 30.444235, 43.270538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069714, 30.309999, 43.194416>,  <38.848293, 30.229458, 43.148743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069714, 30.309999, 43.194416>,  <39.438747, 30.444235, 43.270538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069714, 30.309999, 43.194416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088567, -0.295862, 0.951116,
		-0.375488, 0.894341, 0.243236,
		-0.922586, -0.335590, -0.190301,
		38.792938, 30.209322, 43.137325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044300, 30.711210, 43.753563>,  <39.438747, 30.444235, 43.270538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044300, 30.711210, 43.753563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844776, 30.388510, 43.626858>,  <38.725063, 30.194889, 43.550835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844776, 30.388510, 43.626858>,  <39.044300, 30.711210, 43.753563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844776, 30.388510, 43.626858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214891, -0.238949, 0.946956,
		-0.839648, 0.540422, -0.054173,
		-0.498811, -0.806751, -0.316765,
		38.695133, 30.146484, 43.531830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480942, 30.794750, 44.167034>,  <39.044300, 30.711210, 43.753563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480942, 30.794750, 44.167034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450974, 30.419317, 44.032307>,  <38.432991, 30.194057, 43.951469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450974, 30.419317, 44.032307>,  <38.480942, 30.794750, 44.167034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450974, 30.419317, 44.032307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412517, -0.278341, 0.867385,
		-0.907864, 0.203933, -0.366327,
		-0.074924, -0.938583, -0.336821,
		38.428497, 30.137743, 43.931259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877216, 30.508436, 44.337406>,  <38.480942, 30.794750, 44.167034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877216, 30.508436, 44.337406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080711, 30.168209, 44.284164>,  <38.202808, 29.964073, 44.252220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080711, 30.168209, 44.284164>,  <37.877216, 30.508436, 44.337406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080711, 30.168209, 44.284164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342784, -0.341951, 0.874968,
		-0.789738, -0.399501, -0.465525,
		0.508737, -0.850570, -0.133109,
		38.233334, 29.913038, 44.244232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421043, 29.894602, 44.402542>,  <37.877216, 30.508436, 44.337406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421043, 29.894602, 44.402542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792061, 29.764490, 44.476151>,  <38.014671, 29.686422, 44.520317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792061, 29.764490, 44.476151>,  <37.421043, 29.894602, 44.402542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792061, 29.764490, 44.476151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281694, -0.284909, 0.916229,
		-0.245593, -0.901679, -0.355892,
		0.927541, -0.325272, 0.184026,
		38.070324, 29.666906, 44.531357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283699, 29.264275, 44.731647>,  <37.421043, 29.894602, 44.402542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283699, 29.264275, 44.731647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667557, 29.316788, 44.831123>,  <37.897873, 29.348295, 44.890808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667557, 29.316788, 44.831123>,  <37.283699, 29.264275, 44.731647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667557, 29.316788, 44.831123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211158, -0.247658, 0.945557,
		0.185724, -0.959912, -0.209943,
		0.959645, 0.131281, 0.248689,
		37.955452, 29.356173, 44.905731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723579, 28.545961, 44.928833>,  <37.283699, 29.264275, 44.731647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723579, 28.545961, 44.928833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866047, 28.881874, 45.092739>,  <37.951527, 29.083422, 45.191082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866047, 28.881874, 45.092739>,  <37.723579, 28.545961, 44.928833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866047, 28.881874, 45.092739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203432, -0.358320, 0.911165,
		0.912008, -0.407890, 0.043215,
		0.356170, 0.839781, 0.409769,
		37.972897, 29.133808, 45.215672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930477, 28.355171, 45.644596>,  <37.723579, 28.545961, 44.928833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930477, 28.355171, 45.644596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901363, 28.753105, 45.672886>,  <37.883896, 28.991865, 45.689861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901363, 28.753105, 45.672886>,  <37.930477, 28.355171, 45.644596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901363, 28.753105, 45.672886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055293, -0.074829, 0.995662,
		0.995814, 0.068561, 0.060454,
		-0.072787, 0.994837, 0.070725,
		37.879528, 29.051556, 45.694103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517349, 28.501810, 46.084351>,  <37.930477, 28.355171, 45.644596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517349, 28.501810, 46.084351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214680, 28.763193, 46.092781>,  <38.033077, 28.920023, 46.097839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214680, 28.763193, 46.092781>,  <38.517349, 28.501810, 46.084351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214680, 28.763193, 46.092781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215283, -0.279471, 0.935708,
		0.617335, 0.703485, 0.352146,
		-0.756671, 0.653456, 0.021079,
		37.987679, 28.959230, 46.099106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479290, 28.788454, 46.729305>,  <38.517349, 28.501810, 46.084351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479290, 28.788454, 46.729305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111137, 28.877329, 46.600601>,  <37.890247, 28.930655, 46.523380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111137, 28.877329, 46.600601>,  <38.479290, 28.788454, 46.729305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111137, 28.877329, 46.600601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341819, -0.057575, 0.938001,
		0.189888, 0.973302, 0.128939,
		-0.920382, 0.222189, -0.321760,
		37.835022, 28.943985, 46.504074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194973, 29.291574, 47.188797>,  <38.479290, 28.788454, 46.729305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194973, 29.291574, 47.188797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870060, 29.138987, 47.012310>,  <37.675110, 29.047434, 46.906418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870060, 29.138987, 47.012310>,  <38.194973, 29.291574, 47.188797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870060, 29.138987, 47.012310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501502, 0.070557, 0.862275,
		-0.297802, 0.921684, -0.248621,
		-0.812287, -0.381471, -0.441214,
		37.626373, 29.024546, 46.879948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554016, 29.734034, 47.296425>,  <38.194973, 29.291574, 47.188797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554016, 29.734034, 47.296425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429634, 29.357395, 47.244728>,  <37.355003, 29.131413, 47.213711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429634, 29.357395, 47.244728>,  <37.554016, 29.734034, 47.296425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429634, 29.357395, 47.244728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560605, 0.071907, 0.824955,
		-0.767482, 0.328975, -0.550224,
		-0.310955, -0.941597, -0.129238,
		37.336349, 29.074917, 47.205956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865974, 29.705105, 47.442951>,  <37.554016, 29.734034, 47.296425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865974, 29.705105, 47.442951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932625, 29.311804, 47.472488>,  <36.972614, 29.075823, 47.490211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932625, 29.311804, 47.472488>,  <36.865974, 29.705105, 47.442951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932625, 29.311804, 47.472488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390142, 0.003029, 0.920750,
		-0.905552, -0.182232, -0.383103,
		0.166630, -0.983251, 0.073839,
		36.982613, 29.016829, 47.494640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238968, 29.285009, 47.715851>,  <36.865974, 29.705105, 47.442951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238968, 29.285009, 47.715851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511662, 29.003153, 47.794563>,  <36.675278, 28.834038, 47.841789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511662, 29.003153, 47.794563>,  <36.238968, 29.285009, 47.715851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511662, 29.003153, 47.794563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406168, -0.140817, 0.902883,
		-0.608501, -0.695448, -0.382202,
		0.681729, -0.704643, 0.196782,
		36.716179, 28.791759, 47.853600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892586, 28.790123, 48.074669>,  <36.238968, 29.285009, 47.715851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892586, 28.790123, 48.074669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273426, 28.722845, 48.176823>,  <36.501930, 28.682478, 48.238113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273426, 28.722845, 48.176823>,  <35.892586, 28.790123, 48.074669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273426, 28.722845, 48.176823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289845, -0.230174, 0.928983,
		-0.097467, -0.958504, -0.267899,
		0.952098, -0.168195, 0.255383,
		36.559055, 28.672386, 48.253437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776825, 28.158091, 48.474693>,  <35.892586, 28.790123, 48.074669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776825, 28.158091, 48.474693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130959, 28.315027, 48.574497>,  <36.343437, 28.409189, 48.634380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130959, 28.315027, 48.574497>,  <35.776825, 28.158091, 48.474693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130959, 28.315027, 48.574497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214825, -0.130753, 0.967860,
		0.412358, -0.910478, -0.031474,
		0.885331, 0.392344, 0.249511,
		36.396557, 28.432730, 48.649349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989773, 27.732473, 48.981148>,  <35.776825, 28.158091, 48.474693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989773, 27.732473, 48.981148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236626, 28.041346, 49.041653>,  <36.384739, 28.226669, 49.077953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236626, 28.041346, 49.041653>,  <35.989773, 27.732473, 48.981148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236626, 28.041346, 49.041653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147720, -0.075117, 0.986172,
		0.772867, -0.630946, 0.067710,
		0.617135, 0.772182, 0.151259,
		36.421764, 28.273001, 49.087029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622517, 27.605957, 49.579632>,  <35.989773, 27.732473, 48.981148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622517, 27.605957, 49.579632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537701, 27.994335, 49.535275>,  <36.486809, 28.227362, 49.508659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537701, 27.994335, 49.535275>,  <36.622517, 27.605957, 49.579632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537701, 27.994335, 49.535275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213404, 0.064732, 0.974817,
		0.953675, 0.230370, 0.193478,
		-0.212045, 0.970947, -0.110896,
		36.474087, 28.285620, 49.502007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961376, 27.965693, 50.106781>,  <36.622517, 27.605957, 49.579632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961376, 27.965693, 50.106781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699383, 28.252020, 50.009949>,  <36.542187, 28.423817, 49.951851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699383, 28.252020, 50.009949>,  <36.961376, 27.965693, 50.106781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699383, 28.252020, 50.009949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316105, 0.031429, 0.948203,
		0.686351, 0.697578, 0.205689,
		-0.654981, 0.715819, -0.242080,
		36.502888, 28.466766, 49.937325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117542, 28.580984, 50.512287>,  <36.961376, 27.965693, 50.106781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117542, 28.580984, 50.512287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730667, 28.591742, 50.411236>,  <36.498543, 28.598196, 50.350605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730667, 28.591742, 50.411236>,  <37.117542, 28.580984, 50.512287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730667, 28.591742, 50.411236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250621, 0.061945, 0.966101,
		0.041632, 0.997717, -0.053173,
		-0.967190, 0.026895, -0.252628,
		36.440510, 28.599810, 50.335449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813610, 29.242941, 50.689087>,  <37.117542, 28.580984, 50.512287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813610, 29.242941, 50.689087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541245, 28.950001, 50.687027>,  <36.377827, 28.774237, 50.685791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541245, 28.950001, 50.687027>,  <36.813610, 29.242941, 50.689087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541245, 28.950001, 50.687027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229399, 0.206594, 0.951154,
		-0.695513, 0.648832, -0.308673,
		-0.680910, -0.732349, -0.005152,
		36.336971, 28.730295, 50.685482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315353, 29.408310, 51.246944>,  <36.813610, 29.242941, 50.689087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315353, 29.408310, 51.246944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183617, 29.037725, 51.174049>,  <36.104576, 28.815374, 51.130314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183617, 29.037725, 51.174049>,  <36.315353, 29.408310, 51.246944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183617, 29.037725, 51.174049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395754, -0.039791, 0.917494,
		-0.857272, 0.374287, -0.353545,
		-0.329338, -0.926459, -0.182237,
		36.084816, 28.759789, 51.119377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279232, 29.865641, 51.881416>,  <36.315353, 29.408310, 51.246944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279232, 29.865641, 51.881416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179874, 30.204769, 52.068817>,  <36.120262, 30.408247, 52.181259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179874, 30.204769, 52.068817>,  <36.279232, 29.865641, 51.881416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179874, 30.204769, 52.068817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424926, 0.530012, -0.733842,
		-0.870482, 0.016799, -0.491913,
		-0.248392, 0.847823, 0.468505,
		36.105358, 30.459116, 52.209370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753906, 30.312117, 51.492065>,  <36.279232, 29.865641, 51.881416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753906, 30.312117, 51.492065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004234, 30.531973, 51.713425>,  <36.154430, 30.663887, 51.846241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004234, 30.531973, 51.713425>,  <35.753906, 30.312117, 51.492065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004234, 30.531973, 51.713425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348222, 0.437979, -0.828804,
		-0.697920, 0.711385, 0.082698,
		0.625819, 0.549641, 0.553394,
		36.191978, 30.696865, 51.879444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558674, 31.099995, 51.361748>,  <35.753906, 30.312117, 51.492065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558674, 31.099995, 51.361748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938251, 31.077364, 51.485882>,  <36.165997, 31.063786, 51.560364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938251, 31.077364, 51.485882>,  <35.558674, 31.099995, 51.361748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938251, 31.077364, 51.485882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277282, 0.618693, -0.735073,
		-0.150415, 0.783593, 0.602792,
		0.948941, -0.056577, 0.310337,
		36.222935, 31.060390, 51.578983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773239, 31.742813, 51.326809>,  <35.558674, 31.099995, 51.361748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773239, 31.742813, 51.326809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111481, 31.529755, 51.340916>,  <36.314426, 31.401920, 51.349380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111481, 31.529755, 51.340916>,  <35.773239, 31.742813, 51.326809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111481, 31.529755, 51.340916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381305, 0.556465, -0.738209,
		0.373579, 0.637679, 0.673650,
		0.845603, -0.532645, 0.035267,
		36.365162, 31.369961, 51.351494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358086, 32.113041, 51.529476>,  <35.773239, 31.742813, 51.326809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358086, 32.113041, 51.529476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483269, 31.811874, 51.297897>,  <36.558380, 31.631174, 51.158951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483269, 31.811874, 51.297897>,  <36.358086, 32.113041, 51.529476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483269, 31.811874, 51.297897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487322, 0.650504, -0.582548,
		0.815214, -0.099817, 0.570494,
		0.312960, -0.752915, -0.578943,
		36.577156, 31.586000, 51.124214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890045, 32.394127, 51.237774>,  <36.358086, 32.113041, 51.529476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890045, 32.394127, 51.237774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865940, 32.071712, 51.002254>,  <36.851475, 31.878265, 50.860943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865940, 32.071712, 51.002254>,  <36.890045, 32.394127, 51.237774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865940, 32.071712, 51.002254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333127, 0.539808, -0.773068,
		0.940954, -0.242733, 0.235979,
		-0.060265, -0.806032, -0.588796,
		36.847862, 31.829903, 50.825615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530087, 32.323978, 50.910549>,  <36.890045, 32.394127, 51.237774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530087, 32.323978, 50.910549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277172, 32.119987, 50.677261>,  <37.125423, 31.997593, 50.537289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277172, 32.119987, 50.677261>,  <37.530087, 32.323978, 50.910549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277172, 32.119987, 50.677261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427599, 0.398038, -0.811619,
		0.646049, -0.762555, -0.033607,
		-0.632281, -0.509975, -0.583220,
		37.087486, 31.966995, 50.502296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866066, 32.030956, 50.360538>,  <37.530087, 32.323978, 50.910549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866066, 32.030956, 50.360538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495441, 32.016876, 50.210743>,  <37.273067, 32.008427, 50.120865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495441, 32.016876, 50.210743>,  <37.866066, 32.030956, 50.360538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495441, 32.016876, 50.210743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356840, 0.232525, -0.904764,
		0.118922, -0.971953, -0.202889,
		-0.926565, -0.035198, -0.374484,
		37.217472, 32.006317, 50.098396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741528, 31.481569, 49.873745>,  <37.866066, 32.030956, 50.360538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741528, 31.481569, 49.873745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457096, 31.750408, 49.791134>,  <37.286438, 31.911711, 49.741570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457096, 31.750408, 49.791134>,  <37.741528, 31.481569, 49.873745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457096, 31.750408, 49.791134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271679, -0.008278, -0.962352,
		-0.648505, -0.740416, -0.176708,
		-0.711078, 0.672098, -0.206523,
		37.243774, 31.952038, 49.729176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589588, 31.329584, 49.113136>,  <37.741528, 31.481569, 49.873745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589588, 31.329584, 49.113136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426529, 31.688347, 49.181698>,  <37.328693, 31.903605, 49.222836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426529, 31.688347, 49.181698>,  <37.589588, 31.329584, 49.113136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426529, 31.688347, 49.181698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193182, 0.268174, -0.943803,
		-0.892468, -0.351631, -0.282588,
		-0.407653, 0.896905, 0.171408,
		37.304234, 31.957418, 49.233120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954048, 31.331825, 48.762970>,  <37.589588, 31.329584, 49.113136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954048, 31.331825, 48.762970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062435, 31.711111, 48.829266>,  <37.127468, 31.938683, 48.869041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062435, 31.711111, 48.829266>,  <36.954048, 31.331825, 48.762970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062435, 31.711111, 48.829266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046530, 0.159072, -0.986170,
		-0.961464, 0.274929, -0.001018,
		0.270965, 0.948214, 0.165735,
		37.143726, 31.995575, 48.878986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531429, 31.692238, 48.349041>,  <36.954048, 31.331825, 48.762970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531429, 31.692238, 48.349041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830261, 31.949581, 48.415936>,  <37.009560, 32.103989, 48.456070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830261, 31.949581, 48.415936>,  <36.531429, 31.692238, 48.349041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830261, 31.949581, 48.415936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016260, 0.269187, -0.962951,
		-0.664539, 0.716679, 0.211564,
		0.747076, 0.643358, 0.167232,
		37.054382, 32.142590, 48.466106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399227, 32.170437, 47.929539>,  <36.531429, 31.692238, 48.349041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399227, 32.170437, 47.929539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777802, 32.269863, 48.011967>,  <37.004948, 32.329521, 48.061424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777802, 32.269863, 48.011967>,  <36.399227, 32.170437, 47.929539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777802, 32.269863, 48.011967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128783, 0.294642, -0.946890,
		-0.296083, 0.922713, 0.246850,
		0.946440, 0.248568, 0.206068,
		37.061733, 32.344433, 48.073788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571754, 32.919647, 47.581135>,  <36.399227, 32.170437, 47.929539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571754, 32.919647, 47.581135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906284, 32.702793, 47.613750>,  <37.107002, 32.572681, 47.633320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906284, 32.702793, 47.613750>,  <36.571754, 32.919647, 47.581135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906284, 32.702793, 47.613750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277788, 0.290818, -0.915565,
		0.472647, 0.788361, 0.393817,
		0.836325, -0.542136, 0.081543,
		37.157181, 32.540154, 47.638214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090874, 33.337162, 47.335358>,  <36.571754, 32.919647, 47.581135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090874, 33.337162, 47.335358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265209, 32.977154, 47.336361>,  <37.369812, 32.761150, 47.336964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265209, 32.977154, 47.336361>,  <37.090874, 33.337162, 47.335358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265209, 32.977154, 47.336361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150102, 0.069940, -0.986194,
		0.887420, 0.430198, 0.165577,
		0.435839, -0.900021, 0.002507,
		37.395962, 32.707146, 47.337112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779137, 33.424488, 47.124607>,  <37.090874, 33.337162, 47.335358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779137, 33.424488, 47.124607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702301, 33.038052, 47.055588>,  <37.656200, 32.806190, 47.014175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702301, 33.038052, 47.055588>,  <37.779137, 33.424488, 47.124607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702301, 33.038052, 47.055588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443600, 0.071360, -0.893380,
		0.875397, -0.248152, 0.414849,
		-0.192091, -0.966089, -0.172549,
		37.644672, 32.748226, 47.003822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377132, 33.224182, 46.922607>,  <37.779137, 33.424488, 47.124607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377132, 33.224182, 46.922607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120514, 32.944023, 46.797482>,  <37.966541, 32.775928, 46.722404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120514, 32.944023, 46.797482>,  <38.377132, 33.224182, 46.922607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120514, 32.944023, 46.797482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363428, 0.081598, -0.928042,
		0.675524, -0.709073, 0.202195,
		-0.641550, -0.700398, -0.312818,
		37.928047, 32.733902, 46.703636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763374, 32.810459, 46.631809>,  <38.377132, 33.224182, 46.922607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763374, 32.810459, 46.631809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425213, 32.659096, 46.481026>,  <38.222317, 32.568279, 46.390556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425213, 32.659096, 46.481026>,  <38.763374, 32.810459, 46.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425213, 32.659096, 46.481026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440448, -0.094642, -0.892776,
		0.302157, -0.920788, 0.246680,
		-0.845404, -0.378408, -0.376962,
		38.171593, 32.545574, 46.367935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927902, 32.296684, 46.355068>,  <38.763374, 32.810459, 46.631809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927902, 32.296684, 46.355068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589104, 32.367588, 46.154594>,  <38.385826, 32.410130, 46.034309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589104, 32.367588, 46.154594>,  <38.927902, 32.296684, 46.355068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589104, 32.367588, 46.154594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486527, -0.121447, -0.865183,
		-0.214230, -0.976642, 0.016623,
		-0.846993, 0.177261, -0.501180,
		38.335007, 32.420765, 46.004242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783173, 31.765533, 45.821636>,  <38.927902, 32.296684, 46.355068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783173, 31.765533, 45.821636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567852, 32.082806, 45.707726>,  <38.438660, 32.273170, 45.639378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567852, 32.082806, 45.707726>,  <38.783173, 31.765533, 45.821636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567852, 32.082806, 45.707726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289585, -0.143248, -0.946372,
		-0.791437, -0.591901, -0.152582,
		-0.538301, 0.793180, -0.284777,
		38.406361, 32.320759, 45.622292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364769, 31.511120, 45.255905>,  <38.783173, 31.765533, 45.821636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364769, 31.511120, 45.255905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413219, 31.904503, 45.202030>,  <38.442287, 32.140533, 45.169704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413219, 31.904503, 45.202030>,  <38.364769, 31.511120, 45.255905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413219, 31.904503, 45.202030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157064, -0.152964, -0.975671,
		-0.980133, 0.097023, -0.172993,
		0.121124, 0.983457, -0.134687,
		38.449558, 32.199539, 45.161625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187809, 31.549438, 44.581966>,  <38.364769, 31.511120, 45.255905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187809, 31.549438, 44.581966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357529, 31.906326, 44.643829>,  <38.459358, 32.120461, 44.680946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357529, 31.906326, 44.643829>,  <38.187809, 31.549438, 44.581966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357529, 31.906326, 44.643829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409727, -0.036856, -0.911463,
		-0.807525, 0.450096, -0.381205,
		0.424295, 0.892220, 0.154654,
		38.484818, 32.173992, 44.690228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310219, 31.816563, 43.903507>,  <38.187809, 31.549438, 44.581966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310219, 31.816563, 43.903507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495644, 32.109268, 44.103363>,  <38.606899, 32.284889, 44.223274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495644, 32.109268, 44.103363>,  <38.310219, 31.816563, 43.903507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495644, 32.109268, 44.103363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372685, 0.350556, -0.859195,
		-0.803877, 0.584496, -0.110213,
		0.463560, 0.731762, 0.499637,
		38.634712, 32.328796, 44.253254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046806, 32.516464, 43.641499>,  <38.310219, 31.816563, 43.903507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046806, 32.516464, 43.641499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421741, 32.495487, 43.779278>,  <38.646702, 32.482899, 43.861946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421741, 32.495487, 43.779278>,  <38.046806, 32.516464, 43.641499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421741, 32.495487, 43.779278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340407, 0.348641, -0.873254,
		-0.074291, 0.935788, 0.344647,
		0.937339, -0.052446, 0.344450,
		38.702942, 32.479752, 43.882614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378349, 33.158550, 43.468967>,  <38.046806, 32.516464, 43.641499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378349, 33.158550, 43.468967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685623, 32.911747, 43.537312>,  <38.869987, 32.763664, 43.578320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685623, 32.911747, 43.537312>,  <38.378349, 33.158550, 43.468967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685623, 32.911747, 43.537312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468086, 0.359190, -0.807389,
		0.436791, 0.700204, 0.564737,
		0.768185, -0.617006, 0.170865,
		38.916080, 32.726646, 43.588570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051228, 33.544510, 43.570675>,  <38.378349, 33.158550, 43.468967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051228, 33.544510, 43.570675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097450, 33.167492, 43.445293>,  <39.125183, 32.941280, 43.370064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097450, 33.167492, 43.445293>,  <39.051228, 33.544510, 43.570675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097450, 33.167492, 43.445293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516989, 0.326524, -0.791268,
		0.848157, -0.070617, 0.525018,
		0.115554, -0.942547, -0.313451,
		39.132118, 32.884727, 43.351257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701569, 33.565346, 43.295471>,  <39.051228, 33.544510, 43.570675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701569, 33.565346, 43.295471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574089, 33.221989, 43.134674>,  <39.497601, 33.015976, 43.038197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574089, 33.221989, 43.134674>,  <39.701569, 33.565346, 43.295471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574089, 33.221989, 43.134674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615038, 0.135428, -0.776780,
		0.721221, -0.494799, 0.484782,
		-0.318697, -0.858390, -0.401993,
		39.478481, 32.964470, 43.014076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265049, 33.226814, 43.148285>,  <39.701569, 33.565346, 43.295471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265049, 33.226814, 43.148285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000256, 33.039833, 42.913929>,  <39.841377, 32.927647, 42.773315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000256, 33.039833, 42.913929>,  <40.265049, 33.226814, 43.148285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000256, 33.039833, 42.913929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550111, 0.227898, -0.803393,
		0.509069, -0.854139, 0.106284,
		-0.661987, -0.467450, -0.585887,
		39.801659, 32.899597, 42.738163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649441, 32.926083, 42.666164>,  <40.265049, 33.226814, 43.148285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649441, 32.926083, 42.666164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289875, 32.924786, 42.490921>,  <40.074135, 32.924007, 42.385777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289875, 32.924786, 42.490921>,  <40.649441, 32.926083, 42.666164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289875, 32.924786, 42.490921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414790, 0.315638, -0.853418,
		0.141052, -0.948874, -0.282387,
		-0.898918, -0.003245, -0.438105,
		40.020199, 32.923813, 42.359489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763527, 32.524124, 42.065617>,  <40.649441, 32.926083, 42.666164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763527, 32.524124, 42.065617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442993, 32.753723, 41.998215>,  <40.250675, 32.891483, 41.957775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442993, 32.753723, 41.998215>,  <40.763527, 32.524124, 42.065617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442993, 32.753723, 41.998215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400470, 0.305470, -0.863894,
		-0.444402, -0.759745, -0.474652,
		-0.801331, 0.574000, -0.168504,
		40.202595, 32.925922, 41.947662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489830, 32.373783, 41.431362>,  <40.763527, 32.524124, 42.065617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489830, 32.373783, 41.431362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315723, 32.728992, 41.490627>,  <40.211258, 32.942120, 41.526188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315723, 32.728992, 41.490627>,  <40.489830, 32.373783, 41.431362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315723, 32.728992, 41.490627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204036, 0.257592, -0.944466,
		-0.876874, -0.380867, -0.293312,
		-0.435271, 0.888024, 0.148165,
		40.185143, 32.995399, 41.535076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073166, 32.526230, 40.862453>,  <40.489830, 32.373783, 41.431362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073166, 32.526230, 40.862453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132568, 32.893024, 41.010551>,  <40.168209, 33.113102, 41.099411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132568, 32.893024, 41.010551>,  <40.073166, 32.526230, 40.862453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132568, 32.893024, 41.010551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161289, 0.346926, -0.923920,
		-0.975670, 0.196921, -0.096381,
		0.148502, 0.916987, 0.370247,
		40.177120, 33.168121, 41.121624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925652, 32.808754, 40.329914>,  <40.073166, 32.526230, 40.862453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925652, 32.808754, 40.329914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080811, 33.104130, 40.550545>,  <40.173904, 33.281357, 40.682922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080811, 33.104130, 40.550545>,  <39.925652, 32.808754, 40.329914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080811, 33.104130, 40.550545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193423, 0.519895, -0.832044,
		-0.901179, 0.429435, 0.058834,
		0.387896, 0.738441, 0.551581,
		40.197178, 33.325661, 40.716019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588001, 33.453579, 40.208996>,  <39.925652, 32.808754, 40.329914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588001, 33.453579, 40.208996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950005, 33.560448, 40.341408>,  <40.167206, 33.624569, 40.420856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950005, 33.560448, 40.341408>,  <39.588001, 33.453579, 40.208996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950005, 33.560448, 40.341408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225438, 0.358693, -0.905824,
		-0.360753, 0.894403, 0.264388,
		0.905006, 0.267175, 0.331032,
		40.221508, 33.640602, 40.440716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701237, 34.117466, 40.035786>,  <39.588001, 33.453579, 40.208996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701237, 34.117466, 40.035786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066200, 33.960896, 40.083599>,  <40.285179, 33.866951, 40.112286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066200, 33.960896, 40.083599>,  <39.701237, 34.117466, 40.035786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066200, 33.960896, 40.083599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330140, 0.531292, -0.780216,
		0.241891, 0.751341, 0.613983,
		0.912412, -0.391428, 0.119533,
		40.339924, 33.843468, 40.119457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084114, 34.667309, 40.009148>,  <39.701237, 34.117466, 40.035786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084114, 34.667309, 40.009148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340008, 34.367432, 39.941372>,  <40.493542, 34.187508, 39.900707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340008, 34.367432, 39.941372>,  <40.084114, 34.667309, 40.009148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340008, 34.367432, 39.941372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285638, 0.436557, -0.853129,
		0.713552, 0.497375, 0.493419,
		0.639730, -0.749691, -0.169437,
		40.531925, 34.142525, 39.890541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648052, 34.975822, 39.803062>,  <40.084114, 34.667309, 40.009148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648052, 34.975822, 39.803062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665977, 34.604084, 39.656471>,  <40.676731, 34.381042, 39.568516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665977, 34.604084, 39.656471>,  <40.648052, 34.975822, 39.803062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665977, 34.604084, 39.656471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161130, 0.368766, -0.915450,
		0.985915, -0.018028, 0.166270,
		0.044811, -0.929347, -0.366477,
		40.679420, 34.325279, 39.546528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274673, 34.922741, 39.467751>,  <40.648052, 34.975822, 39.803062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274673, 34.922741, 39.467751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043133, 34.643730, 39.298805>,  <40.904209, 34.476326, 39.197437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043133, 34.643730, 39.298805>,  <41.274673, 34.922741, 39.467751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043133, 34.643730, 39.298805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186833, 0.390736, -0.901343,
		0.793742, -0.600654, -0.095856,
		-0.578849, -0.697525, -0.422365,
		40.869476, 34.434471, 39.172096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423012, 35.032169, 38.845341>,  <41.274673, 34.922741, 39.467751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423012, 35.032169, 38.845341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162056, 34.735710, 38.781990>,  <41.005482, 34.557835, 38.743980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162056, 34.735710, 38.781990>,  <41.423012, 35.032169, 38.845341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162056, 34.735710, 38.781990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037913, 0.176792, -0.983518,
		0.756935, -0.647641, -0.087238,
		-0.652390, -0.741152, -0.158374,
		40.966339, 34.513363, 38.734478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671272, 34.526695, 38.345776>,  <41.423012, 35.032169, 38.845341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671272, 34.526695, 38.345776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272858, 34.561771, 38.351749>,  <41.033810, 34.582817, 38.355335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272858, 34.561771, 38.351749>,  <41.671272, 34.526695, 38.345776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272858, 34.561771, 38.351749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026487, 0.452658, -0.891291,
		-0.084917, -0.887362, -0.453186,
		-0.996036, 0.087690, 0.014935,
		40.974049, 34.588078, 38.356232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440430, 34.292446, 37.722366>,  <41.671272, 34.526695, 38.345776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440430, 34.292446, 37.722366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172058, 34.559689, 37.851048>,  <41.011036, 34.720036, 37.928257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172058, 34.559689, 37.851048>,  <41.440430, 34.292446, 37.722366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172058, 34.559689, 37.851048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127629, 0.531408, -0.837446,
		-0.730457, -0.520808, -0.441806,
		-0.670928, 0.668105, 0.321700,
		40.970779, 34.760120, 37.947559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851330, 33.864834, 37.126587>,  <41.440430, 34.292446, 37.722366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851330, 33.864834, 37.126587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695129, 33.519993, 36.997414>,  <41.601410, 33.313087, 36.919910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695129, 33.519993, 36.997414>,  <41.851330, 33.864834, 37.126587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695129, 33.519993, 36.997414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920466, -0.359592, -0.153085,
		0.015852, -0.357027, 0.933960,
		-0.390500, -0.862105, -0.322930,
		41.577980, 33.261360, 36.900536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972660, 33.253063, 37.516373>,  <41.851330, 33.864834, 37.126587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972660, 33.253063, 37.516373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946495, 33.147388, 37.131474>,  <41.930798, 33.083984, 36.900532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946495, 33.147388, 37.131474>,  <41.972660, 33.253063, 37.516373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946495, 33.147388, 37.131474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985141, -0.170564, -0.020141,
		-0.158804, -0.949270, 0.271417,
		-0.065413, -0.264186, -0.962251,
		41.926872, 33.068134, 36.842796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327450, 32.605499, 37.409481>,  <41.972660, 33.253063, 37.516373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327450, 32.605499, 37.409481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300728, 32.878426, 37.118282>,  <42.284695, 33.042179, 36.943562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300728, 32.878426, 37.118282>,  <42.327450, 32.605499, 37.409481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300728, 32.878426, 37.118282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979660, 0.183224, 0.081826,
		0.189218, -0.707727, -0.680676,
		-0.066806, 0.682314, -0.728001,
		42.280685, 33.083118, 36.899883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120663, 32.210045, 36.795322>,  <42.327450, 32.605499, 37.409481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120663, 32.210045, 36.795322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464638, 32.279900, 36.987160>,  <42.671024, 32.321812, 37.102261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464638, 32.279900, 36.987160>,  <42.120663, 32.210045, 36.795322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464638, 32.279900, 36.987160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242951, -0.686310, 0.685532,
		0.448868, -0.706032, -0.547755,
		0.859937, 0.174635, 0.479594,
		42.722618, 32.332291, 37.131039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393028, 31.523195, 37.144165>,  <42.120663, 32.210045, 36.795322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393028, 31.523195, 37.144165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515900, 31.850334, 37.338802>,  <42.589622, 32.046616, 37.455585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515900, 31.850334, 37.338802>,  <42.393028, 31.523195, 37.144165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515900, 31.850334, 37.338802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052924, -0.495840, 0.866800,
		0.950180, -0.292011, -0.109026,
		0.307175, 0.817846, 0.486592,
		42.608051, 32.095688, 37.484779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082779, 31.343082, 37.415691>,  <42.393028, 31.523195, 37.144165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082779, 31.343082, 37.415691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913750, 31.645744, 37.615253>,  <42.812332, 31.827341, 37.734989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913750, 31.645744, 37.615253>,  <43.082779, 31.343082, 37.415691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913750, 31.645744, 37.615253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092945, -0.511389, 0.854309,
		0.901551, 0.407378, 0.145772,
		-0.422572, 0.756654, 0.498906,
		42.786980, 31.872740, 37.764927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549236, 31.971642, 37.100864>,  <43.082779, 31.343082, 37.415691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549236, 31.971642, 37.100864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738571, 32.204895, 36.836773>,  <43.852173, 32.344849, 36.678318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738571, 32.204895, 36.836773>,  <43.549236, 31.971642, 37.100864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738571, 32.204895, 36.836773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062742, 0.769928, 0.635039,
		0.878645, -0.259162, 0.401021,
		0.473335, 0.583135, -0.660234,
		43.880573, 32.379837, 36.638702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989891, 32.445251, 37.465347>,  <43.549236, 31.971642, 37.100864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989891, 32.445251, 37.465347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942009, 32.653069, 37.126942>,  <43.913280, 32.777760, 36.923897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942009, 32.653069, 37.126942>,  <43.989891, 32.445251, 37.465347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942009, 32.653069, 37.126942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010609, 0.852763, 0.522190,
		0.992753, 0.053533, -0.107592,
		-0.119705, 0.519547, -0.846015,
		43.906097, 32.808933, 36.873138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595043, 32.873222, 37.500355>,  <43.989891, 32.445251, 37.465347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595043, 32.873222, 37.500355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311985, 33.008129, 37.252003>,  <44.142151, 33.089073, 37.102993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311985, 33.008129, 37.252003>,  <44.595043, 32.873222, 37.500355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311985, 33.008129, 37.252003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043643, 0.856183, 0.514826,
		0.705217, 0.391412, -0.591156,
		-0.707647, 0.337265, -0.620877,
		44.099689, 33.109310, 37.065739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817333, 33.577381, 37.259624>,  <44.595043, 32.873222, 37.500355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817333, 33.577381, 37.259624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422920, 33.540451, 37.204178>,  <44.186272, 33.518291, 37.170910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422920, 33.540451, 37.204178>,  <44.817333, 33.577381, 37.259624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422920, 33.540451, 37.204178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145823, 0.880690, 0.450690,
		0.080466, 0.464608, -0.881853,
		-0.986033, -0.092329, -0.138616,
		44.127110, 33.512753, 37.162594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678921, 34.227993, 37.041340>,  <44.817333, 33.577381, 37.259624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678921, 34.227993, 37.041340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323769, 34.069698, 37.135201>,  <44.110676, 33.974720, 37.191517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323769, 34.069698, 37.135201>,  <44.678921, 34.227993, 37.041340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323769, 34.069698, 37.135201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283360, 0.872188, 0.398741,
		-0.362457, 0.287543, -0.886535,
		-0.887881, -0.395735, 0.234653,
		44.057404, 33.950977, 37.205597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210167, 34.665531, 36.733120>,  <44.678921, 34.227993, 37.041340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210167, 34.665531, 36.733120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022713, 34.479198, 37.033352>,  <43.910240, 34.367397, 37.213493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022713, 34.479198, 37.033352>,  <44.210167, 34.665531, 36.733120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022713, 34.479198, 37.033352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353230, 0.877597, 0.324118,
		-0.809695, -0.113234, -0.575823,
		-0.468639, -0.465835, 0.750583,
		43.882122, 34.339447, 37.258526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500233, 34.854538, 36.696190>,  <44.210167, 34.665531, 36.733120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500233, 34.854538, 36.696190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571621, 34.757149, 37.077530>,  <43.614452, 34.698715, 37.306332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571621, 34.757149, 37.077530>,  <43.500233, 34.854538, 36.696190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571621, 34.757149, 37.077530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135149, 0.953653, 0.268850,
		-0.974620, -0.176825, 0.137291,
		0.178467, -0.243472, 0.953347,
		43.625160, 34.684109, 37.363533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036907, 35.300056, 36.969421>,  <43.500233, 34.854538, 36.696190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036907, 35.300056, 36.969421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256783, 35.184761, 37.283051>,  <43.388706, 35.115585, 37.471226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256783, 35.184761, 37.283051>,  <43.036907, 35.300056, 36.969421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256783, 35.184761, 37.283051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133085, 0.896385, 0.422826,
		-0.824703, -0.336769, 0.454370,
		0.549685, -0.288236, 0.784070,
		43.421688, 35.098289, 37.518272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649849, 35.445717, 37.570076>,  <43.036907, 35.300056, 36.969421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649849, 35.445717, 37.570076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026005, 35.392071, 37.695091>,  <43.251698, 35.359882, 37.770100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026005, 35.392071, 37.695091>,  <42.649849, 35.445717, 37.570076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026005, 35.392071, 37.695091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075079, 0.814428, 0.575386,
		-0.331708, -0.564552, 0.755811,
		0.940390, -0.134115, 0.312539,
		43.308121, 35.351837, 37.788853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682808, 35.370857, 38.300358>,  <42.649849, 35.445717, 37.570076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682808, 35.370857, 38.300358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060810, 35.471676, 38.216991>,  <43.287613, 35.532166, 38.166973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060810, 35.471676, 38.216991>,  <42.682808, 35.370857, 38.300358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060810, 35.471676, 38.216991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063249, 0.766062, 0.639647,
		0.320875, -0.591290, 0.739876,
		0.945007, 0.252043, -0.208412,
		43.344311, 35.547287, 38.154469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033897, 35.429131, 38.891842>,  <42.682808, 35.370857, 38.300358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033897, 35.429131, 38.891842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249031, 35.652401, 38.639118>,  <43.378113, 35.786362, 38.487484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249031, 35.652401, 38.639118>,  <43.033897, 35.429131, 38.891842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249031, 35.652401, 38.639118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112686, 0.790298, 0.602271,
		0.835488, -0.252725, 0.487945,
		0.537831, 0.558175, -0.631806,
		43.410381, 35.819855, 38.449577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518894, 35.821499, 39.347153>,  <43.033897, 35.429131, 38.891842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518894, 35.821499, 39.347153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572704, 36.022953, 39.005798>,  <43.604988, 36.143826, 38.800987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572704, 36.022953, 39.005798>,  <43.518894, 35.821499, 39.347153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572704, 36.022953, 39.005798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001538, 0.861314, 0.508070,
		0.990909, -0.067034, 0.116640,
		0.134522, 0.503631, -0.853381,
		43.613060, 36.174042, 38.749783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020798, 36.385872, 39.548302>,  <43.518894, 35.821499, 39.347153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020798, 36.385872, 39.548302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839832, 36.501312, 39.210773>,  <43.731251, 36.570576, 39.008255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839832, 36.501312, 39.210773>,  <44.020798, 36.385872, 39.548302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839832, 36.501312, 39.210773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071371, 0.931438, 0.356832,
		0.888947, 0.221661, -0.400800,
		-0.452416, 0.288599, -0.843819,
		43.704109, 36.587891, 38.957626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341755, 37.047306, 39.373787>,  <44.020798, 36.385872, 39.548302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341755, 37.047306, 39.373787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995193, 37.030079, 39.174797>,  <43.787254, 37.019741, 39.055401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995193, 37.030079, 39.174797>,  <44.341755, 37.047306, 39.373787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995193, 37.030079, 39.174797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224775, 0.923267, 0.311534,
		0.445889, 0.381736, -0.809605,
		-0.866406, -0.043069, -0.497479,
		43.735271, 37.017159, 39.025555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323540, 37.592056, 38.876953>,  <44.341755, 37.047306, 39.373787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323540, 37.592056, 38.876953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942032, 37.494183, 38.946754>,  <43.713127, 37.435459, 38.988636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942032, 37.494183, 38.946754>,  <44.323540, 37.592056, 38.876953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942032, 37.494183, 38.946754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232755, 0.968713, 0.086135,
		-0.190124, 0.041536, -0.980881,
		-0.953770, -0.244682, 0.174508,
		43.655899, 37.420776, 38.999107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971855, 38.158028, 38.421360>,  <44.323540, 37.592056, 38.876953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971855, 38.158028, 38.421360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724911, 37.991238, 38.688194>,  <43.576744, 37.891163, 38.848293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724911, 37.991238, 38.688194>,  <43.971855, 38.158028, 38.421360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724911, 37.991238, 38.688194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342712, 0.905830, 0.249040,
		-0.708108, -0.074871, -0.702124,
		-0.617359, -0.416973, 0.667085,
		43.539703, 37.866146, 38.888321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343285, 38.473259, 38.245190>,  <43.971855, 38.158028, 38.421360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343285, 38.473259, 38.245190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295479, 38.332394, 38.616501>,  <43.266796, 38.247875, 38.839287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295479, 38.332394, 38.616501>,  <43.343285, 38.473259, 38.245190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295479, 38.332394, 38.616501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476856, 0.840434, 0.257445,
		-0.870818, -0.411887, -0.268373,
		-0.119512, -0.352163, 0.928277,
		43.259624, 38.226746, 38.894985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592281, 38.617661, 38.384365>,  <43.343285, 38.473259, 38.245190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592281, 38.617661, 38.384365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761986, 38.571358, 38.743610>,  <42.863808, 38.543575, 38.959156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761986, 38.571358, 38.743610>,  <42.592281, 38.617661, 38.384365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761986, 38.571358, 38.743610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590077, 0.716973, 0.371159,
		-0.686883, -0.687424, 0.235882,
		0.424265, -0.115754, 0.898109,
		42.889267, 38.536633, 39.013042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068993, 38.617622, 38.764729>,  <42.592281, 38.617661, 38.384365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068993, 38.617622, 38.764729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362881, 38.723938, 39.014381>,  <42.539211, 38.787727, 39.164173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362881, 38.723938, 39.014381>,  <42.068993, 38.617622, 38.764729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362881, 38.723938, 39.014381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604749, 0.673475, 0.425099,
		-0.307356, -0.689774, 0.655548,
		0.734718, 0.265786, 0.624137,
		42.583298, 38.803673, 39.201622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695499, 38.664917, 39.408398>,  <42.068993, 38.617622, 38.764729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695499, 38.664917, 39.408398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047508, 38.854771, 39.415169>,  <42.258713, 38.968685, 39.419231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047508, 38.854771, 39.415169>,  <41.695499, 38.664917, 39.408398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047508, 38.854771, 39.415169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425024, 0.771131, 0.474038,
		0.211945, -0.424356, 0.880342,
		0.880019, 0.474636, 0.016925,
		42.311516, 38.997162, 39.420246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702225, 38.914146, 39.997635>,  <41.695499, 38.664917, 39.408398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702225, 38.914146, 39.997635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946686, 39.169621, 39.810631>,  <42.093365, 39.322906, 39.698429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946686, 39.169621, 39.810631>,  <41.702225, 38.914146, 39.997635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946686, 39.169621, 39.810631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473485, 0.768325, 0.430684,
		0.634271, -0.041857, 0.771977,
		0.611157, 0.638690, -0.467508,
		42.130032, 39.361229, 39.670380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575146, 39.502579, 40.340630>,  <41.702225, 38.914146, 39.997635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575146, 39.502579, 40.340630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758350, 39.657703, 40.020676>,  <41.868275, 39.750778, 39.828701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758350, 39.657703, 40.020676>,  <41.575146, 39.502579, 40.340630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758350, 39.657703, 40.020676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425904, 0.885553, 0.185477,
		0.780275, 0.255725, 0.570768,
		0.458015, 0.387815, -0.799889,
		41.895756, 39.774048, 39.780708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789635, 40.209557, 40.386349>,  <41.575146, 39.502579, 40.340630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789635, 40.209557, 40.386349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748768, 40.167473, 39.990673>,  <41.724247, 40.142223, 39.753269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748768, 40.167473, 39.990673>,  <41.789635, 40.209557, 40.386349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748768, 40.167473, 39.990673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451831, 0.890807, -0.048079,
		0.886235, 0.442034, -0.138545,
		-0.102164, -0.105208, -0.989189,
		41.718117, 40.135910, 39.693916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199192, 40.858200, 40.073975>,  <41.789635, 40.209557, 40.386349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199192, 40.858200, 40.073975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909473, 40.684948, 39.859390>,  <41.735641, 40.580997, 39.730640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909473, 40.684948, 39.859390>,  <42.199192, 40.858200, 40.073975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909473, 40.684948, 39.859390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477045, 0.876570, -0.063656,
		0.497813, 0.209808, -0.841524,
		-0.724299, -0.433134, -0.536456,
		41.692184, 40.555008, 39.698452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849182, 41.456226, 39.809391>,  <42.199192, 40.858200, 40.073975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849182, 41.456226, 39.809391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589947, 41.177494, 39.686485>,  <41.434406, 41.010254, 39.612743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589947, 41.177494, 39.686485>,  <41.849182, 41.456226, 39.809391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589947, 41.177494, 39.686485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541284, 0.705285, -0.457803,
		0.535718, -0.130382, -0.834270,
		-0.648088, -0.696831, -0.307260,
		41.395519, 40.968445, 39.594307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782444, 41.499626, 39.036831>,  <41.849182, 41.456226, 39.809391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782444, 41.499626, 39.036831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472069, 41.340839, 39.232925>,  <41.285843, 41.245567, 39.350582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472069, 41.340839, 39.232925>,  <41.782444, 41.499626, 39.036831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472069, 41.340839, 39.232925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583364, 0.747270, -0.318235,
		-0.240008, -0.532918, -0.811415,
		-0.775940, -0.396971, 0.490236,
		41.239288, 41.221748, 39.379997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209156, 41.432896, 38.545036>,  <41.782444, 41.499626, 39.036831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209156, 41.432896, 38.545036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076889, 41.471455, 38.920559>,  <40.997528, 41.494591, 39.145874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076889, 41.471455, 38.920559>,  <41.209156, 41.432896, 38.545036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076889, 41.471455, 38.920559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632817, 0.715349, -0.296342,
		-0.700143, -0.692086, -0.175544,
		-0.330670, 0.096395, 0.938811,
		40.977688, 41.500374, 39.202202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479637, 41.309818, 38.583397>,  <41.209156, 41.432896, 38.545036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479637, 41.309818, 38.583397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629280, 41.576038, 38.841724>,  <40.719067, 41.735771, 38.996719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629280, 41.576038, 38.841724>,  <40.479637, 41.309818, 38.583397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629280, 41.576038, 38.841724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726170, 0.643376, -0.242374,
		-0.576817, -0.378299, 0.723997,
		0.374112, 0.665551, 0.645820,
		40.741512, 41.775703, 39.035469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725960, 41.650097, 37.939220>,  <40.479637, 41.309818, 38.583397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725960, 41.650097, 37.939220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089146, 41.743317, 37.799911>,  <41.307056, 41.799248, 37.716328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089146, 41.743317, 37.799911>,  <40.725960, 41.650097, 37.939220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089146, 41.743317, 37.799911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071466, -0.905031, -0.419299,
		-0.412912, 0.355819, -0.838389,
		0.907963, 0.233050, -0.348269,
		41.361534, 41.813232, 37.695431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848736, 41.538208, 37.223080>,  <40.725960, 41.650097, 37.939220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848736, 41.538208, 37.223080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200859, 41.502319, 37.409416>,  <41.412132, 41.480785, 37.521217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200859, 41.502319, 37.409416>,  <40.848736, 41.538208, 37.223080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200859, 41.502319, 37.409416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178450, -0.847211, -0.500388,
		0.439560, 0.523625, -0.729797,
		0.880308, -0.089718, 0.465841,
		41.464951, 41.475403, 37.549168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304379, 41.321785, 36.786205>,  <40.848736, 41.538208, 37.223080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304379, 41.321785, 36.786205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437702, 41.214455, 37.147739>,  <41.517696, 41.150059, 37.364658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437702, 41.214455, 37.147739>,  <41.304379, 41.321785, 36.786205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437702, 41.214455, 37.147739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346687, -0.856603, -0.382150,
		0.876764, 0.440719, -0.192487,
		0.333306, -0.268323, 0.903831,
		41.537693, 41.133957, 37.418888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143547, 41.118427, 36.813766>,  <41.304379, 41.321785, 36.786205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143547, 41.118427, 36.813766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878372, 40.938374, 37.053062>,  <41.719269, 40.830341, 37.196640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878372, 40.938374, 37.053062>,  <42.143547, 41.118427, 36.813766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878372, 40.938374, 37.053062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298775, -0.891742, -0.339895,
		0.686477, -0.046589, 0.725658,
		-0.662935, -0.450139, 0.598241,
		41.679493, 40.803333, 37.232536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526375, 40.726147, 37.334274>,  <42.143547, 41.118427, 36.813766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526375, 40.726147, 37.334274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165745, 40.569023, 37.261761>,  <41.949368, 40.474751, 37.218254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165745, 40.569023, 37.261761>,  <42.526375, 40.726147, 37.334274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165745, 40.569023, 37.261761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430024, -0.859516, -0.276246,
		-0.047302, -0.327012, 0.943836,
		-0.901578, -0.392805, -0.181280,
		41.895271, 40.451183, 37.207378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587906, 40.134056, 37.519016>,  <42.526375, 40.726147, 37.334274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587906, 40.134056, 37.519016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252911, 40.083988, 37.306244>,  <42.051914, 40.053947, 37.178581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252911, 40.083988, 37.306244>,  <42.587906, 40.134056, 37.519016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252911, 40.083988, 37.306244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367378, -0.849575, -0.378492,
		-0.404539, -0.512402, 0.757491,
		-0.837485, -0.125171, -0.531931,
		42.001663, 40.046436, 37.146664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354568, 39.618023, 37.780849>,  <42.587906, 40.134056, 37.519016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354568, 39.618023, 37.780849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166447, 39.625946, 37.427937>,  <42.053574, 39.630699, 37.216190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166447, 39.625946, 37.427937>,  <42.354568, 39.618023, 37.780849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166447, 39.625946, 37.427937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396200, -0.888594, -0.231142,
		-0.788568, -0.458268, 0.410063,
		-0.470304, 0.019804, -0.882282,
		42.025356, 39.631886, 37.163254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091198, 38.867561, 37.691227>,  <42.354568, 39.618023, 37.780849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091198, 38.867561, 37.691227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096962, 39.033840, 37.327473>,  <42.100422, 39.133606, 37.109219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096962, 39.033840, 37.327473>,  <42.091198, 38.867561, 37.691227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096962, 39.033840, 37.327473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320757, -0.863339, -0.389564,
		-0.947052, -0.286078, -0.145780,
		0.014412, 0.415697, -0.909389,
		42.101284, 39.158550, 37.054657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708714, 38.384403, 37.275471>,  <42.091198, 38.867561, 37.691227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708714, 38.384403, 37.275471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915909, 38.620411, 37.027740>,  <42.040226, 38.762016, 36.879101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915909, 38.620411, 37.027740>,  <41.708714, 38.384403, 37.275471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915909, 38.620411, 37.027740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257695, -0.798030, -0.544739,
		-0.815648, 0.122571, -0.565416,
		0.517989, 0.590020, -0.619326,
		42.071304, 38.797417, 36.841942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563007, 38.185448, 36.515930>,  <41.708714, 38.384403, 37.275471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563007, 38.185448, 36.515930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911316, 38.382057, 36.510857>,  <42.120300, 38.500023, 36.507812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911316, 38.382057, 36.510857>,  <41.563007, 38.185448, 36.515930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911316, 38.382057, 36.510857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377772, -0.685316, -0.622599,
		-0.314716, 0.537349, -0.782438,
		0.870771, 0.491525, -0.012685,
		42.172546, 38.529514, 36.507050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747494, 38.209114, 35.887779>,  <41.563007, 38.185448, 36.515930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747494, 38.209114, 35.887779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103451, 38.256775, 36.063915>,  <42.317024, 38.285370, 36.169598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103451, 38.256775, 36.063915>,  <41.747494, 38.209114, 35.887779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103451, 38.256775, 36.063915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400683, -0.665566, -0.629662,
		0.218051, 0.736767, -0.640022,
		0.889891, 0.119148, 0.440338,
		42.370419, 38.292519, 36.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244030, 38.074074, 35.327744>,  <41.747494, 38.209114, 35.887779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244030, 38.074074, 35.327744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484100, 38.054180, 35.647072>,  <42.628143, 38.042244, 35.838669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484100, 38.054180, 35.647072>,  <42.244030, 38.074074, 35.327744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484100, 38.054180, 35.647072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583402, -0.655575, -0.479440,
		0.547204, 0.753490, -0.364445,
		0.600175, -0.049733, 0.798321,
		42.664154, 38.039261, 35.886570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927464, 38.204529, 35.086773>,  <42.244030, 38.074074, 35.327744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927464, 38.204529, 35.086773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970795, 38.015064, 35.436382>,  <42.996792, 37.901386, 35.646149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970795, 38.015064, 35.436382>,  <42.927464, 38.204529, 35.086773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970795, 38.015064, 35.436382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471559, -0.749505, -0.464623,
		0.875156, 0.462482, 0.142168,
		0.108324, -0.473659, 0.874021,
		43.003292, 37.872967, 35.698589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694603, 37.977436, 35.094593>,  <42.927464, 38.204529, 35.086773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694603, 37.977436, 35.094593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511017, 37.744041, 35.362591>,  <43.400867, 37.604004, 35.523392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511017, 37.744041, 35.362591>,  <43.694603, 37.977436, 35.094593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511017, 37.744041, 35.362591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426099, -0.806289, -0.410290,
		0.779611, 0.097178, 0.618679,
		-0.458963, -0.583485, 0.669999,
		43.373329, 37.568996, 35.563591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228321, 37.613380, 35.450172>,  <43.694603, 37.977436, 35.094593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228321, 37.613380, 35.450172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899536, 37.396885, 35.521099>,  <43.702267, 37.266987, 35.563656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899536, 37.396885, 35.521099>,  <44.228321, 37.613380, 35.450172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899536, 37.396885, 35.521099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488069, -0.829831, -0.270497,
		0.293549, -0.135794, 0.946250,
		-0.821960, -0.541239, 0.177319,
		43.652946, 37.234512, 35.574295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441536, 37.074516, 35.826908>,  <44.228321, 37.613380, 35.450172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441536, 37.074516, 35.826908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094521, 36.922958, 35.698025>,  <43.886311, 36.832024, 35.620693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094521, 36.922958, 35.698025>,  <44.441536, 37.074516, 35.826908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094521, 36.922958, 35.698025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450538, -0.873093, -0.186344,
		-0.210715, -0.306828, 0.928146,
		-0.867534, -0.378900, -0.322211,
		43.834259, 36.809288, 35.601360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407436, 36.463371, 36.202492>,  <44.441536, 37.074516, 35.826908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407436, 36.463371, 36.202492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175797, 36.445843, 35.876862>,  <44.036812, 36.435326, 35.681484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175797, 36.445843, 35.876862>,  <44.407436, 36.463371, 36.202492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175797, 36.445843, 35.876862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386029, -0.894256, -0.226469,
		-0.718072, -0.445406, 0.534777,
		-0.579098, -0.043819, -0.814080,
		44.002068, 36.432697, 35.632637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325436, 35.782879, 36.225945>,  <44.407436, 36.463371, 36.202492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325436, 35.782879, 36.225945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180923, 35.860123, 35.861050>,  <44.094215, 35.906467, 35.642113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180923, 35.860123, 35.861050>,  <44.325436, 35.782879, 36.225945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180923, 35.860123, 35.861050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355034, -0.876144, -0.326073,
		-0.862220, -0.441682, 0.247979,
		-0.361285, 0.193106, -0.912241,
		44.072540, 35.918056, 35.587376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848545, 35.272358, 35.990814>,  <44.325436, 35.782879, 36.225945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848545, 35.272358, 35.990814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008404, 35.448704, 35.669338>,  <44.104321, 35.554512, 35.476452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008404, 35.448704, 35.669338>,  <43.848545, 35.272358, 35.990814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008404, 35.448704, 35.669338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196075, -0.897575, -0.394860,
		-0.895453, 0.000221, -0.445156,
		0.399648, 0.440862, -0.803693,
		44.128300, 35.580963, 35.428230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578762, 34.820515, 35.339268>,  <43.848545, 35.272358, 35.990814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578762, 34.820515, 35.339268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903675, 35.028351, 35.233276>,  <44.098625, 35.153053, 35.169682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903675, 35.028351, 35.233276>,  <43.578762, 34.820515, 35.339268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903675, 35.028351, 35.233276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366643, -0.808202, -0.460850,
		-0.453611, 0.277188, -0.846997,
		0.812286, 0.519592, -0.264980,
		44.147362, 35.184227, 35.153782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696815, 34.568192, 34.738789>,  <43.578762, 34.820515, 35.339268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696815, 34.568192, 34.738789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052391, 34.717533, 34.844921>,  <44.265736, 34.807140, 34.908600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052391, 34.717533, 34.844921>,  <43.696815, 34.568192, 34.738789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052391, 34.717533, 34.844921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452606, -0.804929, -0.383714,
		0.070310, 0.461187, -0.884513,
		0.888934, 0.373357, 0.265330,
		44.319073, 34.829540, 34.924519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162434, 34.164528, 34.380432>,  <43.696815, 34.568192, 34.738789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162434, 34.164528, 34.380432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443001, 34.377262, 34.570236>,  <44.611343, 34.504902, 34.684120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443001, 34.377262, 34.570236>,  <44.162434, 34.164528, 34.380432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443001, 34.377262, 34.570236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694671, -0.659091, -0.288152,
		0.159499, 0.531747, -0.831748,
		0.701422, 0.531832, 0.474513,
		44.653427, 34.536812, 34.712589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600948, 34.391193, 33.823635>,  <44.162434, 34.164528, 34.380432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600948, 34.391193, 33.823635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738102, 34.333065, 34.194862>,  <44.820396, 34.298187, 34.417599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738102, 34.333065, 34.194862>,  <44.600948, 34.391193, 33.823635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738102, 34.333065, 34.194862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620352, -0.706858, -0.339876,
		0.705403, 0.692268, -0.152225,
		0.342886, -0.145316, 0.928069,
		44.840969, 34.289471, 34.473282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375641, 34.477539, 33.832027>,  <44.600948, 34.391193, 33.823635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375641, 34.477539, 33.832027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264507, 34.239784, 34.133888>,  <45.197826, 34.097130, 34.315006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264507, 34.239784, 34.133888>,  <45.375641, 34.477539, 33.832027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264507, 34.239784, 34.133888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566114, -0.735988, -0.371263,
		0.776093, 0.324070, 0.540979,
		-0.277838, -0.594391, 0.754656,
		45.181156, 34.061466, 34.360287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012123, 34.137882, 33.986080>,  <45.375641, 34.477539, 33.832027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012123, 34.137882, 33.986080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688229, 33.949974, 34.126728>,  <45.493893, 33.837231, 34.211117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688229, 33.949974, 34.126728>,  <46.012123, 34.137882, 33.986080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688229, 33.949974, 34.126728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403406, -0.880828, -0.247802,
		0.426130, -0.058808, 0.902749,
		-0.809739, -0.469770, 0.351624,
		45.445309, 33.809044, 34.232216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.757401, 34.321720, 33.792858>,  <46.012123, 34.137882, 33.986080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.757401, 34.321720, 33.792858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861107, 34.702984, 33.730530>,  <46.923328, 34.931740, 33.693134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861107, 34.702984, 33.730530>,  <46.757401, 34.321720, 33.792858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.861107, 34.702984, 33.730530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215132, 0.100288, 0.971422,
		0.941542, -0.285374, -0.179053,
		0.259262, 0.953155, -0.155818,
		46.938885, 34.988930, 33.683784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.438961, 34.322830, 33.871243>,  <46.757401, 34.321720, 33.792858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.438961, 34.322830, 33.871243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257725, 34.668907, 33.957176>,  <47.148983, 34.876553, 34.008736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257725, 34.668907, 33.957176>,  <47.438961, 34.322830, 33.871243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.257725, 34.668907, 33.957176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205922, -0.132893, 0.969503,
		0.867355, 0.483512, -0.117949,
		-0.453092, 0.865191, 0.214831,
		47.121796, 34.928463, 34.021626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.317272, 34.251526, 34.685619>,  <47.438961, 34.322830, 33.871243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.317272, 34.251526, 34.685619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.607777, 34.031002, 34.521370>,  <47.782078, 33.898689, 34.422821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.607777, 34.031002, 34.521370>,  <47.317272, 34.251526, 34.685619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.607777, 34.031002, 34.521370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422040, 0.829101, -0.366707,
		0.542612, 0.093027, 0.834816,
		0.726261, -0.551305, -0.410619,
		47.825653, 33.865612, 34.398186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.666267, 34.432911, 35.302322>,  <47.317272, 34.251526, 34.685619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.666267, 34.432911, 35.302322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.521240, 34.726437, 35.072521>,  <47.434223, 34.902554, 34.934639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.521240, 34.726437, 35.072521>,  <47.666267, 34.432911, 35.302322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.521240, 34.726437, 35.072521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503926, -0.364194, -0.783212,
		-0.783964, -0.573480, -0.237742,
		-0.362573, 0.733815, -0.574506,
		47.412468, 34.946583, 34.900169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.083138, 34.813248, 46.825264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.746208, 34.607830, 46.759823>,  <33.544052, 34.484581, 46.720558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.746208, 34.607830, 46.759823>,  <34.083138, 34.813248, 46.825264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746208, 34.607830, 46.759823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126460, 0.106770, -0.986209,
		0.523926, -0.851397, -0.024992,
		-0.842324, -0.513540, -0.163607,
		33.493511, 34.453770, 46.710739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209454, 34.284668, 46.350754>,  <34.083138, 34.813248, 46.825264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209454, 34.284668, 46.350754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.811985, 34.321075, 46.324448>,  <33.573502, 34.342922, 46.308662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.811985, 34.321075, 46.324448>,  <34.209454, 34.284668, 46.350754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811985, 34.321075, 46.324448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045893, -0.205346, -0.977613,
		-0.102488, -0.974448, 0.199870,
		-0.993675, 0.091021, -0.065766,
		33.513882, 34.348381, 46.304718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954540, 33.765724, 45.927650>,  <34.209454, 34.284668, 46.350754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954540, 33.765724, 45.927650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.672359, 34.048512, 45.907501>,  <33.503052, 34.218182, 45.895412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.672359, 34.048512, 45.907501>,  <33.954540, 33.765724, 45.927650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672359, 34.048512, 45.907501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034850, -0.105583, -0.993800,
		-0.707901, -0.699322, 0.099121,
		-0.705451, 0.706966, -0.050371,
		33.460724, 34.260601, 45.892391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451374, 33.445328, 45.553951>,  <33.954540, 33.765724, 45.927650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451374, 33.445328, 45.553951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.348484, 33.828892, 45.506065>,  <33.286751, 34.059029, 45.477333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.348484, 33.828892, 45.506065>,  <33.451374, 33.445328, 45.553951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348484, 33.828892, 45.506065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280937, -0.192742, -0.940173,
		-0.924613, -0.208204, 0.318971,
		-0.257226, 0.958907, -0.119719,
		33.271317, 34.116562, 45.470150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813103, 33.471416, 45.092968>,  <33.451374, 33.445328, 45.553951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813103, 33.471416, 45.092968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.978363, 33.835609, 45.085709>,  <33.077518, 34.054127, 45.081352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.978363, 33.835609, 45.085709>,  <32.813103, 33.471416, 45.092968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978363, 33.835609, 45.085709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302447, 0.118394, -0.945785,
		-0.858971, 0.396241, 0.324287,
		0.413153, 0.910481, -0.018145,
		33.102310, 34.108753, 45.080265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397530, 33.899342, 44.610382>,  <32.813103, 33.471416, 45.092968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397530, 33.899342, 44.610382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.757454, 34.073551, 44.620670>,  <32.973408, 34.178078, 44.626842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.757454, 34.073551, 44.620670>,  <32.397530, 33.899342, 44.610382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757454, 34.073551, 44.620670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049180, 0.159832, -0.985918,
		-0.433502, 0.885874, 0.165238,
		0.899809, 0.435524, 0.025720,
		33.027397, 34.204208, 44.628387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256802, 34.444118, 44.220303>,  <32.397530, 33.899342, 44.610382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256802, 34.444118, 44.220303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.654373, 34.401585, 44.231602>,  <32.892918, 34.376064, 44.238380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.654373, 34.401585, 44.231602>,  <32.256802, 34.444118, 44.220303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654373, 34.401585, 44.231602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038076, 0.091548, -0.995073,
		0.103226, 0.990107, 0.095041,
		0.993929, -0.106336, 0.028249,
		32.952553, 34.369682, 44.240078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546089, 35.000359, 43.816437>,  <32.256802, 34.444118, 44.220303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546089, 35.000359, 43.816437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.865517, 34.767879, 43.879055>,  <33.057171, 34.628391, 43.916626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.865517, 34.767879, 43.879055>,  <32.546089, 35.000359, 43.816437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865517, 34.767879, 43.879055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289448, 0.142771, -0.946486,
		0.527741, 0.801143, 0.282238,
		0.798567, -0.581193, 0.156543,
		33.105087, 34.593521, 43.926018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057560, 35.358166, 43.483200>,  <32.546089, 35.000359, 43.816437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057560, 35.358166, 43.483200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199226, 34.987885, 43.536312>,  <33.284225, 34.765717, 43.568180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199226, 34.987885, 43.536312>,  <33.057560, 35.358166, 43.483200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199226, 34.987885, 43.536312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469351, 0.053143, -0.881411,
		0.808872, 0.374490, 0.453303,
		0.354169, -0.925707, 0.132781,
		33.305477, 34.710171, 43.576145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747719, 35.412949, 43.309475>,  <33.057560, 35.358166, 43.483200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747719, 35.412949, 43.309475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.667847, 35.023827, 43.262508>,  <33.619923, 34.790356, 43.234329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.667847, 35.023827, 43.262508>,  <33.747719, 35.412949, 43.309475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667847, 35.023827, 43.262508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405643, 0.027007, -0.913633,
		0.891953, -0.230063, 0.389217,
		-0.199681, -0.972801, -0.117412,
		33.607941, 34.731987, 43.227283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370785, 35.048294, 43.181629>,  <33.747719, 35.412949, 43.309475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370785, 35.048294, 43.181629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.091202, 34.810528, 43.022568>,  <33.923450, 34.667866, 42.927132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.091202, 34.810528, 43.022568>,  <34.370785, 35.048294, 43.181629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091202, 34.810528, 43.022568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471954, 0.034376, -0.880953,
		0.537326, -0.803420, 0.256511,
		-0.698957, -0.594420, -0.397649,
		33.881516, 34.632202, 42.903275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757568, 34.612000, 42.799068>,  <34.370785, 35.048294, 43.181629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757568, 34.612000, 42.799068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388866, 34.586468, 42.646072>,  <34.167645, 34.571148, 42.554276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388866, 34.586468, 42.646072>,  <34.757568, 34.612000, 42.799068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388866, 34.586468, 42.646072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385678, -0.048292, -0.921369,
		0.040341, -0.996792, 0.069131,
		-0.921751, -0.063831, -0.382492,
		34.112343, 34.567318, 42.531326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776844, 33.981293, 42.291077>,  <34.757568, 34.612000, 42.799068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776844, 33.981293, 42.291077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471062, 34.205715, 42.164066>,  <34.287594, 34.340370, 42.087860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471062, 34.205715, 42.164066>,  <34.776844, 33.981293, 42.291077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471062, 34.205715, 42.164066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293247, -0.136010, -0.946313,
		-0.574122, -0.816528, -0.060555,
		-0.764454, 0.561056, -0.317530,
		34.241726, 34.374031, 42.068806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422359, 33.652538, 41.711121>,  <34.776844, 33.981293, 42.291077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422359, 33.652538, 41.711121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.296944, 34.029022, 41.660824>,  <34.221695, 34.254913, 41.630646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.296944, 34.029022, 41.660824>,  <34.422359, 33.652538, 41.711121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296944, 34.029022, 41.660824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221033, -0.056445, -0.973631,
		-0.923492, -0.333066, -0.190341,
		-0.313540, 0.941212, -0.125745,
		34.202881, 34.311386, 41.623100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233063, 33.584045, 41.084015>,  <34.422359, 33.652538, 41.711121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233063, 33.584045, 41.084015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267181, 33.979809, 41.131008>,  <34.287651, 34.217266, 41.159203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.267181, 33.979809, 41.131008>,  <34.233063, 33.584045, 41.084015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267181, 33.979809, 41.131008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156563, 0.103139, -0.982268,
		-0.983978, 0.102175, -0.146107,
		0.085294, 0.989405, 0.117483,
		34.292770, 34.276630, 41.166252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946758, 33.849396, 40.489410>,  <34.233063, 33.584045, 41.084015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946758, 33.849396, 40.489410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156544, 34.161686, 40.625294>,  <34.282417, 34.349060, 40.706825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156544, 34.161686, 40.625294>,  <33.946758, 33.849396, 40.489410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156544, 34.161686, 40.625294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131392, 0.319995, -0.938264,
		-0.841232, 0.536723, 0.065246,
		0.524466, 0.780725, 0.339711,
		34.313885, 34.395905, 40.727207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727409, 34.519016, 40.132366>,  <33.946758, 33.849396, 40.489410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727409, 34.519016, 40.132366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.105804, 34.548397, 40.258675>,  <34.332840, 34.566025, 40.334461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.105804, 34.548397, 40.258675>,  <33.727409, 34.519016, 40.132366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105804, 34.548397, 40.258675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291129, 0.236142, -0.927082,
		-0.142664, 0.968939, 0.202003,
		0.945987, 0.073453, 0.315775,
		34.389599, 34.570435, 40.353409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960766, 35.026737, 39.730740>,  <33.727409, 34.519016, 40.132366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960766, 35.026737, 39.730740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.308548, 34.893196, 39.876389>,  <34.517220, 34.813072, 39.963779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.308548, 34.893196, 39.876389>,  <33.960766, 35.026737, 39.730740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308548, 34.893196, 39.876389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473133, 0.350768, -0.808150,
		0.142082, 0.874931, 0.462935,
		0.869458, -0.333853, 0.364121,
		34.569386, 34.793041, 39.985626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342457, 35.476440, 39.537903>,  <33.960766, 35.026737, 39.730740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342457, 35.476440, 39.537903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.602283, 35.187466, 39.632683>,  <34.758179, 35.014080, 39.689552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.602283, 35.187466, 39.632683>,  <34.342457, 35.476440, 39.537903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602283, 35.187466, 39.632683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623195, 0.327383, -0.710245,
		0.435533, 0.609020, 0.662876,
		0.649568, -0.722437, 0.236953,
		34.797153, 34.970734, 39.703770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087933, 35.691948, 39.644932>,  <34.342457, 35.476440, 39.537903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087933, 35.691948, 39.644932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.117920, 35.302517, 39.558643>,  <35.135914, 35.068859, 39.506870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.117920, 35.302517, 39.558643>,  <35.087933, 35.691948, 39.644932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117920, 35.302517, 39.558643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671161, 0.209259, -0.711163,
		0.737511, -0.091467, 0.669112,
		0.074970, -0.973573, -0.215720,
		35.140411, 35.010445, 39.493927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820255, 35.586857, 39.460388>,  <35.087933, 35.691948, 39.644932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820255, 35.586857, 39.460388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641491, 35.252525, 39.332851>,  <35.534233, 35.051926, 39.256329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641491, 35.252525, 39.332851>,  <35.820255, 35.586857, 39.460388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641491, 35.252525, 39.332851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479329, 0.077199, -0.874233,
		0.755322, -0.543538, 0.366135,
		-0.446914, -0.835827, -0.318843,
		35.507416, 35.001778, 39.237198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542690, 35.352810, 39.088718>,  <35.820255, 35.586857, 39.460388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542690, 35.352810, 39.088718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907219, 35.217945, 38.994221>,  <37.125938, 35.137028, 38.937523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907219, 35.217945, 38.994221>,  <36.542690, 35.352810, 39.088718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907219, 35.217945, 38.994221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142439, -0.280177, 0.949322,
		-0.386266, -0.898790, -0.207307,
		0.911323, -0.337162, -0.236245,
		37.180614, 35.116798, 38.923347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589172, 34.657852, 39.330959>,  <36.542690, 35.352810, 39.088718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589172, 34.657852, 39.330959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960567, 34.806168, 39.322746>,  <37.183407, 34.895157, 39.317818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960567, 34.806168, 39.322746>,  <36.589172, 34.657852, 39.330959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960567, 34.806168, 39.322746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098144, -0.191687, 0.976537,
		0.358155, -0.908719, -0.214370,
		0.928489, 0.370791, -0.020532,
		37.239113, 34.917404, 39.316586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931763, 34.211308, 39.737072>,  <36.589172, 34.657852, 39.330959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931763, 34.211308, 39.737072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187149, 34.519100, 39.743614>,  <37.340382, 34.703773, 39.747540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187149, 34.519100, 39.743614>,  <36.931763, 34.211308, 39.737072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187149, 34.519100, 39.743614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118220, -0.119048, 0.985825,
		0.760518, -0.627481, -0.166976,
		0.638465, 0.769477, 0.016358,
		37.378689, 34.749943, 39.748520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588181, 34.048798, 39.940243>,  <36.931763, 34.211308, 39.737072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588181, 34.048798, 39.940243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570335, 34.440651, 40.018559>,  <37.559628, 34.675762, 40.065548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570335, 34.440651, 40.018559>,  <37.588181, 34.048798, 39.940243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570335, 34.440651, 40.018559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116785, -0.189524, 0.974906,
		0.992155, 0.066360, -0.105951,
		-0.044614, 0.979631, 0.195787,
		37.556950, 34.734539, 40.077293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059681, 34.132156, 40.504322>,  <37.588181, 34.048798, 39.940243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059681, 34.132156, 40.504322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820370, 34.452103, 40.485237>,  <37.676785, 34.644070, 40.473785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820370, 34.452103, 40.485237>,  <38.059681, 34.132156, 40.504322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820370, 34.452103, 40.485237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021893, 0.043210, 0.998826,
		0.800989, 0.598621, -0.008340,
		-0.598279, 0.799866, -0.047717,
		37.640884, 34.692062, 40.470921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360176, 34.596985, 40.969170>,  <38.059681, 34.132156, 40.504322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360176, 34.596985, 40.969170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978607, 34.712303, 40.935921>,  <37.749664, 34.781494, 40.915970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978607, 34.712303, 40.935921>,  <38.360176, 34.596985, 40.969170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978607, 34.712303, 40.935921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027743, 0.191101, 0.981178,
		0.298754, 0.938278, -0.174298,
		-0.953927, 0.288296, -0.083123,
		37.692429, 34.798794, 40.910984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338760, 35.104870, 41.458466>,  <38.360176, 34.596985, 40.969170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338760, 35.104870, 41.458466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955048, 35.027813, 41.375843>,  <37.724819, 34.981579, 41.326271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955048, 35.027813, 41.375843>,  <38.338760, 35.104870, 41.458466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955048, 35.027813, 41.375843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249328, 0.233953, 0.939735,
		-0.132713, 0.952971, -0.272459,
		-0.959282, -0.192647, -0.206554,
		37.667263, 34.970020, 41.313877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963341, 35.672947, 41.838997>,  <38.338760, 35.104870, 41.458466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963341, 35.672947, 41.838997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731495, 35.352707, 41.778229>,  <37.592384, 35.160564, 41.741768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731495, 35.352707, 41.778229>,  <37.963341, 35.672947, 41.838997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731495, 35.352707, 41.778229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215033, -0.029550, 0.976160,
		-0.786004, 0.598468, -0.155028,
		-0.579620, -0.800601, -0.151917,
		37.557610, 35.112526, 41.732655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428104, 35.781960, 42.321789>,  <37.963341, 35.672947, 41.838997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428104, 35.781960, 42.321789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428013, 35.392944, 42.228683>,  <37.427959, 35.159534, 42.172821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428013, 35.392944, 42.228683>,  <37.428104, 35.781960, 42.321789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428013, 35.392944, 42.228683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279183, -0.223444, 0.933879,
		-0.960238, 0.065198, -0.271463,
		-0.000230, -0.972534, -0.232761,
		37.427944, 35.101185, 42.158855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767391, 35.472073, 42.530754>,  <37.428104, 35.781960, 42.321789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767391, 35.472073, 42.530754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042515, 35.182320, 42.512039>,  <37.207588, 35.008469, 42.500809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042515, 35.182320, 42.512039>,  <36.767391, 35.472073, 42.530754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042515, 35.182320, 42.512039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203284, -0.254094, 0.945575,
		-0.696850, -0.640860, -0.322023,
		0.687805, -0.724386, -0.046789,
		37.248856, 34.965004, 42.498001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466328, 34.939144, 42.650528>,  <36.767391, 35.472073, 42.530754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466328, 34.939144, 42.650528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834858, 34.826668, 42.757927>,  <37.055977, 34.759182, 42.822365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834858, 34.826668, 42.757927>,  <36.466328, 34.939144, 42.650528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834858, 34.826668, 42.757927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355629, -0.330417, 0.874273,
		-0.157124, -0.900975, -0.404421,
		0.921326, -0.281193, 0.268496,
		37.111256, 34.742310, 42.838474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325970, 34.418808, 43.178440>,  <36.466328, 34.939144, 42.650528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325970, 34.418808, 43.178440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718033, 34.490108, 43.213116>,  <36.953270, 34.532887, 43.233921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718033, 34.490108, 43.213116>,  <36.325970, 34.418808, 43.178440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718033, 34.490108, 43.213116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020590, -0.343448, 0.938946,
		0.197142, -0.922101, -0.332963,
		0.980159, 0.178250, 0.086694,
		37.012081, 34.543583, 43.239124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667847, 33.734539, 43.409573>,  <36.325970, 34.418808, 43.178440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667847, 33.734539, 43.409573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903076, 34.037502, 43.523067>,  <37.044216, 34.219280, 43.591164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903076, 34.037502, 43.523067>,  <36.667847, 33.734539, 43.409573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903076, 34.037502, 43.523067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090663, -0.286864, 0.953671,
		0.803708, -0.586555, -0.100029,
		0.588076, 0.757405, 0.283734,
		37.079498, 34.264725, 43.608189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193817, 33.513550, 43.963795>,  <36.667847, 33.734539, 43.409573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193817, 33.513550, 43.963795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.149693, 33.909225, 44.002460>,  <37.123219, 34.146629, 44.025661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.149693, 33.909225, 44.002460>,  <37.193817, 33.513550, 43.963795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149693, 33.909225, 44.002460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141845, -0.080596, 0.986602,
		0.983723, 0.122544, -0.131421,
		-0.110310, 0.989185, 0.096667,
		37.116600, 34.205982, 44.031460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661343, 33.714809, 44.487251>,  <37.193817, 33.513550, 43.963795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661343, 33.714809, 44.487251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406025, 34.022709, 44.490631>,  <37.252834, 34.207447, 44.492661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406025, 34.022709, 44.490631>,  <37.661343, 33.714809, 44.487251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406025, 34.022709, 44.490631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149483, -0.134709, 0.979545,
		0.755137, 0.623977, 0.201048,
		-0.638296, 0.769744, 0.008450,
		37.214535, 34.253632, 44.493168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826149, 34.166542, 44.972359>,  <37.661343, 33.714809, 44.487251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826149, 34.166542, 44.972359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455502, 34.294144, 44.892735>,  <37.233112, 34.370705, 44.844959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455502, 34.294144, 44.892735>,  <37.826149, 34.166542, 44.972359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455502, 34.294144, 44.892735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146094, 0.182362, 0.972317,
		0.346473, 0.930044, -0.122374,
		-0.926614, 0.319003, -0.199057,
		37.177517, 34.389843, 44.833015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772934, 34.800320, 45.288116>,  <37.826149, 34.166542, 44.972359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772934, 34.800320, 45.288116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400654, 34.669857, 45.221882>,  <37.177284, 34.591579, 45.182140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400654, 34.669857, 45.221882>,  <37.772934, 34.800320, 45.288116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400654, 34.669857, 45.221882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235198, 0.186916, 0.953805,
		-0.280135, 0.926654, -0.250673,
		-0.930702, -0.326152, -0.165586,
		37.121445, 34.572010, 45.172207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403244, 35.283112, 45.591217>,  <37.772934, 34.800320, 45.288116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403244, 35.283112, 45.591217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163219, 34.964550, 45.561081>,  <37.019207, 34.773415, 45.542999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163219, 34.964550, 45.561081>,  <37.403244, 35.283112, 45.591217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163219, 34.964550, 45.561081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302822, 0.138967, 0.942861,
		-0.740425, 0.588586, -0.324556,
		-0.600058, -0.796401, -0.075343,
		36.983204, 34.725628, 45.538479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731777, 35.560555, 45.745914>,  <37.403244, 35.283112, 45.591217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731777, 35.560555, 45.745914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732655, 35.169533, 45.830181>,  <36.733181, 34.934921, 45.880741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732655, 35.169533, 45.830181>,  <36.731777, 35.560555, 45.745914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732655, 35.169533, 45.830181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443037, 0.187915, 0.876588,
		-0.896501, -0.095260, -0.432680,
		0.002197, -0.977555, 0.210670,
		36.733315, 34.876266, 45.893383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.986004, 35.274788, 46.067276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.230995, 34.977097, 46.173862>,  <36.377991, 34.798481, 46.237812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.230995, 34.977097, 46.173862>,  <35.986004, 35.274788, 46.067276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230995, 34.977097, 46.173862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371615, 0.026437, 0.928010,
		-0.697695, -0.667403, -0.260374,
		0.612474, -0.744227, 0.266462,
		36.414738, 34.753830, 46.253799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674580, 34.965221, 46.535919>,  <35.986004, 35.274788, 46.067276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674580, 34.965221, 46.535919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025124, 34.778610, 46.583820>,  <36.235451, 34.666645, 46.612560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025124, 34.778610, 46.583820>,  <35.674580, 34.965221, 46.535919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025124, 34.778610, 46.583820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249550, -0.227134, 0.941347,
		-0.411963, -0.854846, -0.315474,
		0.876362, -0.466527, 0.119756,
		36.288033, 34.638653, 46.619747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466915, 34.273041, 46.747078>,  <35.674580, 34.965221, 46.535919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466915, 34.273041, 46.747078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833157, 34.370564, 46.874973>,  <36.052902, 34.429077, 46.951710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833157, 34.370564, 46.874973>,  <35.466915, 34.273041, 46.747078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833157, 34.370564, 46.874973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280907, -0.181102, 0.942493,
		0.287688, -0.952765, -0.097332,
		0.915602, 0.243803, 0.319740,
		36.107838, 34.443703, 46.970894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660492, 33.733067, 47.134205>,  <35.466915, 34.273041, 46.747078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660492, 33.733067, 47.134205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899445, 34.027458, 47.261623>,  <36.042816, 34.204094, 47.338074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899445, 34.027458, 47.261623>,  <35.660492, 33.733067, 47.134205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899445, 34.027458, 47.261623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218534, -0.232782, 0.947658,
		0.771608, -0.635726, 0.021777,
		0.597381, 0.735979, 0.318544,
		36.078659, 34.248253, 47.357185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900074, 33.433090, 47.713707>,  <35.660492, 33.733067, 47.134205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900074, 33.433090, 47.713707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977024, 33.820915, 47.774284>,  <36.023193, 34.053612, 47.810631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977024, 33.820915, 47.774284>,  <35.900074, 33.433090, 47.713707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977024, 33.820915, 47.774284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247621, -0.101370, 0.963539,
		0.949565, -0.222865, 0.220583,
		0.192379, 0.969564, 0.151444,
		36.034737, 34.111786, 47.819717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287376, 33.478729, 48.348721>,  <35.900074, 33.433090, 47.713707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287376, 33.478729, 48.348721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.164288, 33.855309, 48.293610>,  <36.090435, 34.081257, 48.260544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.164288, 33.855309, 48.293610>,  <36.287376, 33.478729, 48.348721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164288, 33.855309, 48.293610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235088, 0.065082, 0.969793,
		0.921977, 0.330815, 0.201296,
		-0.307722, 0.941449, -0.137774,
		36.071972, 34.137745, 48.252277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509148, 33.806610, 48.942421>,  <36.287376, 33.478729, 48.348721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509148, 33.806610, 48.942421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220764, 34.044151, 48.799553>,  <36.047733, 34.186676, 48.713833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220764, 34.044151, 48.799553>,  <36.509148, 33.806610, 48.942421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220764, 34.044151, 48.799553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361913, 0.116873, 0.924856,
		0.590969, 0.796043, 0.130662,
		-0.720954, 0.593849, -0.357167,
		36.004478, 34.222305, 48.692402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471725, 34.420914, 49.309929>,  <36.509148, 33.806610, 48.942421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471725, 34.420914, 49.309929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103233, 34.398975, 49.155872>,  <35.882137, 34.385815, 49.063438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103233, 34.398975, 49.155872>,  <36.471725, 34.420914, 49.309929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103233, 34.398975, 49.155872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388936, 0.108228, 0.914886,
		-0.008492, 0.992612, -0.121033,
		-0.921226, -0.054843, -0.385143,
		35.826866, 34.382523, 49.040329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126785, 34.889870, 49.635738>,  <36.471725, 34.420914, 49.309929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126785, 34.889870, 49.635738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849072, 34.638172, 49.496017>,  <35.682442, 34.487152, 49.412186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849072, 34.638172, 49.496017>,  <36.126785, 34.889870, 49.635738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849072, 34.638172, 49.496017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362338, -0.113734, 0.925081,
		-0.621832, 0.768839, -0.149035,
		-0.694288, -0.629246, -0.349303,
		35.640785, 34.449398, 49.391228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484882, 35.158394, 49.776997>,  <36.126785, 34.889870, 49.635738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484882, 35.158394, 49.776997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447117, 34.761391, 49.745968>,  <35.424458, 34.523190, 49.727352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447117, 34.761391, 49.745968>,  <35.484882, 35.158394, 49.776997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447117, 34.761391, 49.745968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558571, -0.011683, 0.829375,
		-0.824066, 0.121636, -0.553282,
		-0.094418, -0.992506, -0.077570,
		35.418793, 34.463638, 49.722698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801788, 35.046917, 50.127689>,  <35.484882, 35.158394, 49.776997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801788, 35.046917, 50.127689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014771, 34.709133, 50.104458>,  <35.142559, 34.506462, 50.090519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014771, 34.709133, 50.104458>,  <34.801788, 35.046917, 50.127689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014771, 34.709133, 50.104458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277140, -0.238757, 0.930693,
		-0.799805, -0.479453, -0.361161,
		0.532453, -0.844465, -0.058083,
		35.174507, 34.455795, 50.087032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440063, 34.551380, 50.549122>,  <34.801788, 35.046917, 50.127689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440063, 34.551380, 50.549122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794327, 34.374954, 50.491066>,  <35.006886, 34.269100, 50.456234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794327, 34.374954, 50.491066>,  <34.440063, 34.551380, 50.549122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794327, 34.374954, 50.491066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103649, -0.492478, 0.864131,
		-0.452615, -0.750284, -0.481885,
		0.885661, -0.441065, -0.145137,
		35.060024, 34.242634, 50.447525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365669, 33.813026, 50.605228>,  <34.440063, 34.551380, 50.549122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365669, 33.813026, 50.605228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760365, 33.842583, 50.663048>,  <34.997181, 33.860317, 50.697739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760365, 33.842583, 50.663048>,  <34.365669, 33.813026, 50.605228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760365, 33.842583, 50.663048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065890, -0.631472, 0.772595,
		0.148366, -0.771870, -0.618226,
		0.986735, 0.073892, 0.144548,
		35.056385, 33.864750, 50.706413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583282, 33.106606, 50.743507>,  <34.365669, 33.813026, 50.605228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583282, 33.106606, 50.743507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.870285, 33.343384, 50.890366>,  <35.042484, 33.485451, 50.978477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.870285, 33.343384, 50.890366>,  <34.583282, 33.106606, 50.743507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870285, 33.343384, 50.890366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021698, -0.545820, 0.837622,
		0.696216, -0.593031, -0.404472,
		0.717504, 0.591942, 0.367141,
		35.085537, 33.520966, 51.000507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030724, 32.615513, 51.047428>,  <34.583282, 33.106606, 50.743507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030724, 32.615513, 51.047428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090919, 32.965717, 51.231091>,  <35.127037, 33.175842, 51.341290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090919, 32.965717, 51.231091>,  <35.030724, 32.615513, 51.047428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090919, 32.965717, 51.231091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069153, -0.472634, 0.878542,
		0.986190, -0.100457, -0.131670,
		0.150487, 0.875515, 0.459160,
		35.136066, 33.228371, 51.368839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564240, 32.445461, 51.512840>,  <35.030724, 32.615513, 51.047428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564240, 32.445461, 51.512840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393566, 32.776031, 51.659790>,  <35.291164, 32.974373, 51.747959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393566, 32.776031, 51.659790>,  <35.564240, 32.445461, 51.512840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393566, 32.776031, 51.659790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055330, -0.381592, 0.922673,
		0.902708, 0.414013, 0.117091,
		-0.426680, 0.826427, 0.367373,
		35.265564, 33.023960, 51.770000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895653, 32.458702, 52.162457>,  <35.564240, 32.445461, 51.512840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895653, 32.458702, 52.162457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610104, 32.733932, 52.214520>,  <35.438774, 32.899071, 52.245758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610104, 32.733932, 52.214520>,  <35.895653, 32.458702, 52.162457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610104, 32.733932, 52.214520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060900, -0.246167, 0.967312,
		0.697621, 0.682612, 0.217636,
		-0.713874, 0.688071, 0.130161,
		35.395943, 32.940353, 52.253567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093506, 32.653614, 52.780933>,  <35.895653, 32.458702, 52.162457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093506, 32.653614, 52.780933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709061, 32.755440, 52.738125>,  <35.478394, 32.816536, 52.712440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709061, 32.755440, 52.738125>,  <36.093506, 32.653614, 52.780933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709061, 32.755440, 52.738125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175068, -0.261975, 0.949063,
		0.213563, 0.930895, 0.296354,
		-0.961115, 0.254567, -0.107022,
		35.420727, 32.831810, 52.706017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875381, 32.927536, 53.469299>,  <36.093506, 32.653614, 52.780933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875381, 32.927536, 53.469299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543003, 32.816181, 53.276619>,  <35.343575, 32.749367, 53.161011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543003, 32.816181, 53.276619>,  <35.875381, 32.927536, 53.469299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543003, 32.816181, 53.276619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280932, -0.537368, 0.795181,
		-0.480217, 0.796075, 0.368315,
		-0.830944, -0.278388, -0.481696,
		35.293720, 32.732666, 53.132111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268463, 32.991207, 53.907589>,  <35.875381, 32.927536, 53.469299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268463, 32.991207, 53.907589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158199, 32.719219, 53.635807>,  <35.092041, 32.556026, 53.472740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158199, 32.719219, 53.635807>,  <35.268463, 32.991207, 53.907589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158199, 32.719219, 53.635807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437907, -0.540400, 0.718475,
		-0.855715, 0.495593, -0.148795,
		-0.275662, -0.679968, -0.679451,
		35.075500, 32.515228, 53.431973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616798, 32.953064, 54.051342>,  <35.268463, 32.991207, 53.907589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616798, 32.953064, 54.051342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728336, 32.630814, 53.842262>,  <34.795261, 32.437462, 53.716816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728336, 32.630814, 53.842262>,  <34.616798, 32.953064, 54.051342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728336, 32.630814, 53.842262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439949, -0.590977, 0.676159,
		-0.853633, 0.041416, -0.519226,
		0.278847, -0.805624, -0.522699,
		34.811989, 32.389126, 53.685452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055664, 32.519043, 54.045818>,  <34.616798, 32.953064, 54.051342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055664, 32.519043, 54.045818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375835, 32.288383, 53.980339>,  <34.567936, 32.149990, 53.941051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375835, 32.288383, 53.980339>,  <34.055664, 32.519043, 54.045818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375835, 32.288383, 53.980339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336214, -0.657972, 0.673820,
		-0.496263, -0.484306, -0.720535,
		0.800427, -0.576646, -0.163696,
		34.615963, 32.115391, 53.931229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924683, 33.170433, 53.861504>,  <34.055664, 32.519043, 54.045818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924683, 33.170433, 53.861504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733692, 32.873158, 54.048988>,  <33.619099, 32.694794, 54.161480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733692, 32.873158, 54.048988>,  <33.924683, 33.170433, 53.861504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733692, 32.873158, 54.048988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696791, 0.645245, 0.313275,
		-0.535256, -0.177013, -0.825934,
		-0.477476, -0.743186, 0.468713,
		33.590450, 32.650200, 54.189602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164291, 33.048866, 53.635693>,  <33.924683, 33.170433, 53.861504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164291, 33.048866, 53.635693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233887, 32.970295, 54.021675>,  <33.275642, 32.923153, 54.253265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233887, 32.970295, 54.021675>,  <33.164291, 33.048866, 53.635693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233887, 32.970295, 54.021675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533194, 0.805046, 0.260011,
		-0.827909, -0.559748, 0.035331,
		0.173983, -0.196427, 0.964959,
		33.286083, 32.911366, 54.311161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832043, 32.435974, 53.905487>,  <33.164291, 33.048866, 53.635693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832043, 32.435974, 53.905487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556210, 32.146343, 53.910877>,  <32.390709, 31.972565, 53.914112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556210, 32.146343, 53.910877>,  <32.832043, 32.435974, 53.905487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556210, 32.146343, 53.910877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304938, -0.307188, -0.901470,
		0.656874, -0.617533, 0.432632,
		-0.689587, -0.724078, 0.013475,
		32.349335, 31.929119, 53.914921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181850, 31.814133, 53.606102>,  <32.832043, 32.435974, 53.905487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181850, 31.814133, 53.606102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787121, 31.764854, 53.564140>,  <32.550285, 31.735289, 53.538963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787121, 31.764854, 53.564140>,  <33.181850, 31.814133, 53.606102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787121, 31.764854, 53.564140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129898, -0.216597, -0.967581,
		0.096480, -0.968457, 0.229745,
		-0.986822, -0.123195, -0.104904,
		32.491074, 31.727896, 53.532669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075005, 31.113096, 53.298943>,  <33.181850, 31.814133, 53.606102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075005, 31.113096, 53.298943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767132, 31.358589, 53.228600>,  <32.582409, 31.505886, 53.186394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767132, 31.358589, 53.228600>,  <33.075005, 31.113096, 53.298943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767132, 31.358589, 53.228600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005891, -0.282270, -0.959317,
		-0.638406, -0.737329, 0.220872,
		-0.769677, 0.613735, -0.175859,
		32.536228, 31.542709, 53.175842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826157, 30.825783, 52.700455>,  <33.075005, 31.113096, 53.298943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826157, 30.825783, 52.700455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668270, 31.191210, 52.739624>,  <32.573540, 31.410467, 52.763126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668270, 31.191210, 52.739624>,  <32.826157, 30.825783, 52.700455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668270, 31.191210, 52.739624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082245, 0.071020, -0.994078,
		-0.915114, -0.400434, 0.047103,
		-0.394717, 0.913569, 0.097925,
		32.549854, 31.465281, 52.769001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164715, 30.821365, 52.142929>,  <32.826157, 30.825783, 52.700455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164715, 30.821365, 52.142929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284042, 31.185919, 52.256336>,  <32.355640, 31.404652, 52.324379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284042, 31.185919, 52.256336>,  <32.164715, 30.821365, 52.142929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284042, 31.185919, 52.256336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132944, 0.254472, -0.957899,
		-0.945161, 0.323455, -0.045249,
		0.298322, 0.911384, 0.283519,
		32.373539, 31.459333, 52.341393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803612, 31.238169, 51.706261>,  <32.164715, 30.821365, 52.142929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803612, 31.238169, 51.706261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.114891, 31.437805, 51.858742>,  <32.301659, 31.557587, 51.950230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.114891, 31.437805, 51.858742>,  <31.803612, 31.238169, 51.706261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114891, 31.437805, 51.858742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197800, 0.381322, -0.903033,
		-0.596058, 0.778140, 0.198024,
		0.778197, 0.499091, 0.381206,
		32.348351, 31.587532, 51.973103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771887, 31.991013, 51.497185>,  <31.803612, 31.238169, 51.706261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771887, 31.991013, 51.497185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151047, 31.894735, 51.580666>,  <32.378544, 31.836969, 51.630753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151047, 31.894735, 51.580666>,  <31.771887, 31.991013, 51.497185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151047, 31.894735, 51.580666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304414, 0.491226, -0.816106,
		0.093913, 0.837117, 0.538903,
		0.947899, -0.240693, 0.208698,
		32.435417, 31.822527, 51.643276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112038, 32.613743, 51.401531>,  <31.771887, 31.991013, 51.497185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112038, 32.613743, 51.401531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390320, 32.326946, 51.384041>,  <32.557289, 32.154869, 51.373547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390320, 32.326946, 51.384041>,  <32.112038, 32.613743, 51.401531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390320, 32.326946, 51.384041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501884, 0.528735, -0.684509,
		0.513907, 0.454273, 0.727692,
		0.695710, -0.716991, -0.043729,
		32.599033, 32.111851, 51.370922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708786, 32.947350, 51.212986>,  <32.112038, 32.613743, 51.401531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708786, 32.947350, 51.212986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823109, 32.582413, 51.095715>,  <32.891705, 32.363453, 51.025352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823109, 32.582413, 51.095715>,  <32.708786, 32.947350, 51.212986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823109, 32.582413, 51.095715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476941, 0.400784, -0.782240,
		0.831168, 0.083743, 0.549679,
		0.285810, -0.912337, -0.293178,
		32.908852, 32.308712, 51.007763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352516, 32.981907, 50.980232>,  <32.708786, 32.947350, 51.212986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352516, 32.981907, 50.980232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230972, 32.636383, 50.819485>,  <33.158047, 32.429070, 50.723038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230972, 32.636383, 50.819485>,  <33.352516, 32.981907, 50.980232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230972, 32.636383, 50.819485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404143, 0.265112, -0.875434,
		0.862751, -0.428420, 0.268547,
		-0.303858, -0.863813, -0.401869,
		33.139816, 32.377239, 50.698925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908375, 32.694069, 50.603462>,  <33.352516, 32.981907, 50.980232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908375, 32.694069, 50.603462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557236, 32.581924, 50.448139>,  <33.346550, 32.514637, 50.354946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557236, 32.581924, 50.448139>,  <33.908375, 32.694069, 50.603462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557236, 32.581924, 50.448139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288684, 0.337184, -0.896085,
		0.382157, -0.898724, -0.215061,
		-0.877848, -0.280361, -0.388304,
		33.293880, 32.497818, 50.331650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096962, 32.588264, 49.914570>,  <33.908375, 32.694069, 50.603462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096962, 32.588264, 49.914570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698261, 32.603226, 49.886036>,  <33.459042, 32.612202, 49.868916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698261, 32.603226, 49.886036>,  <34.096962, 32.588264, 49.914570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698261, 32.603226, 49.886036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079444, 0.310692, -0.947185,
		-0.013264, -0.949775, -0.312654,
		-0.996751, 0.037401, -0.071333,
		33.399235, 32.614445, 49.864635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894638, 32.184719, 49.187145>,  <34.096962, 32.588264, 49.914570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894638, 32.184719, 49.187145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573135, 32.409462, 49.265415>,  <33.380234, 32.544308, 49.312378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573135, 32.409462, 49.265415>,  <33.894638, 32.184719, 49.187145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573135, 32.409462, 49.265415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034533, 0.284280, -0.958119,
		-0.593956, -0.776851, -0.209089,
		-0.803756, 0.561860, 0.195677,
		33.332008, 32.578018, 49.324120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436340, 32.154240, 48.545456>,  <33.894638, 32.184719, 49.187145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436340, 32.154240, 48.545456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332397, 32.486561, 48.742329>,  <33.270031, 32.685955, 48.860451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332397, 32.486561, 48.742329>,  <33.436340, 32.154240, 48.545456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332397, 32.486561, 48.742329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020687, 0.514360, -0.857325,
		-0.965426, -0.212599, -0.150847,
		-0.259856, 0.830804, 0.492179,
		33.254440, 32.735802, 48.889984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991005, 32.625870, 48.041412>,  <33.436340, 32.154240, 48.545456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991005, 32.625870, 48.041412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095821, 32.882011, 48.330212>,  <33.158710, 33.035698, 48.503490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095821, 32.882011, 48.330212>,  <32.991005, 32.625870, 48.041412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095821, 32.882011, 48.330212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067901, 0.734052, -0.675690,
		-0.962664, 0.226085, 0.148873,
		0.262043, 0.640354, 0.721997,
		33.174435, 33.074120, 48.546810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512547, 33.145687, 47.998959>,  <32.991005, 32.625870, 48.041412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512547, 33.145687, 47.998959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826336, 33.308460, 48.186150>,  <33.014610, 33.406124, 48.298466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826336, 33.308460, 48.186150>,  <32.512547, 33.145687, 47.998959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826336, 33.308460, 48.186150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018837, 0.769898, -0.637889,
		-0.619876, 0.491592, 0.611630,
		0.784474, 0.406933, 0.467981,
		33.061680, 33.430542, 48.326546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343109, 33.843300, 48.076881>,  <32.512547, 33.145687, 47.998959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343109, 33.843300, 48.076881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741161, 33.829994, 48.114014>,  <32.979992, 33.822010, 48.136292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741161, 33.829994, 48.114014>,  <32.343109, 33.843300, 48.076881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741161, 33.829994, 48.114014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087414, 0.733229, -0.674340,
		-0.045635, 0.679168, 0.732563,
		0.995126, -0.033263, 0.092830,
		33.039700, 33.820015, 48.141861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596645, 34.499649, 48.006901>,  <32.343109, 33.843300, 48.076881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596645, 34.499649, 48.006901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.898785, 34.259079, 47.902798>,  <33.080070, 34.114738, 47.840336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.898785, 34.259079, 47.902798>,  <32.596645, 34.499649, 48.006901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898785, 34.259079, 47.902798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046536, 0.445369, -0.894137,
		0.653666, 0.663276, 0.364397,
		0.755351, -0.601425, -0.260256,
		33.125389, 34.078651, 47.824722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123951, 34.995026, 47.836452>,  <32.596645, 34.499649, 48.006901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123951, 34.995026, 47.836452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215073, 34.646370, 47.662857>,  <33.269745, 34.437176, 47.558701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215073, 34.646370, 47.662857>,  <33.123951, 34.995026, 47.836452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215073, 34.646370, 47.662857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012167, 0.443122, -0.896379,
		0.973630, 0.209482, 0.090342,
		0.227808, -0.871642, -0.433986,
		33.283417, 34.384876, 47.532661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617077, 35.169956, 47.332870>,  <33.123951, 34.995026, 47.836452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617077, 35.169956, 47.332870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445168, 34.821678, 47.237217>,  <33.342022, 34.612713, 47.179825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445168, 34.821678, 47.237217>,  <33.617077, 35.169956, 47.332870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445168, 34.821678, 47.237217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047940, 0.242468, -0.968974,
		0.901664, -0.427902, -0.062465,
		-0.429771, -0.870695, -0.239138,
		33.316235, 34.560471, 47.165474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.443604, 40.182438, 38.699814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273979, 40.065323, 39.042614>,  <42.172207, 39.995052, 39.248295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273979, 40.065323, 39.042614>,  <42.443604, 40.182438, 38.699814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273979, 40.065323, 39.042614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665690, -0.742372, 0.075767,
		0.614030, 0.602626, 0.509715,
		-0.424058, -0.292788, 0.857001,
		42.146763, 39.977486, 39.299713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907253, 40.199543, 39.212162>,  <42.443604, 40.182438, 38.699814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907253, 40.199543, 39.212162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646938, 39.911465, 39.308327>,  <42.490749, 39.738617, 39.366024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646938, 39.911465, 39.308327>,  <42.907253, 40.199543, 39.212162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646938, 39.911465, 39.308327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716943, -0.687130, -0.117665,
		0.249934, 0.095784, 0.963513,
		-0.650789, -0.720192, 0.240409,
		42.451702, 39.695408, 39.380451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325275, 39.785332, 39.676613>,  <42.907253, 40.199543, 39.212162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325275, 39.785332, 39.676613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.030071, 39.541676, 39.560482>,  <42.852951, 39.395481, 39.490803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.030071, 39.541676, 39.560482>,  <43.325275, 39.785332, 39.676613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030071, 39.541676, 39.560482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633235, -0.773835, 0.013920,
		-0.233147, -0.173574, 0.956825,
		-0.738008, -0.609140, -0.290330,
		42.808670, 39.358932, 39.473381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443058, 39.155991, 40.092594>,  <43.325275, 39.785332, 39.676613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443058, 39.155991, 40.092594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195026, 39.066998, 39.791660>,  <43.046207, 39.013599, 39.611099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195026, 39.066998, 39.791660>,  <43.443058, 39.155991, 40.092594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195026, 39.066998, 39.791660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395205, -0.916972, -0.054555,
		-0.677730, -0.331154, 0.656521,
		-0.620077, -0.222487, -0.752333,
		43.009003, 39.000252, 39.565960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242020, 38.545959, 40.246395>,  <43.443058, 39.155991, 40.092594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242020, 38.545959, 40.246395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151554, 38.530357, 39.857071>,  <43.097275, 38.520996, 39.623478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151554, 38.530357, 39.857071>,  <43.242020, 38.545959, 40.246395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151554, 38.530357, 39.857071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184205, -0.982882, -0.003412,
		-0.956513, -0.180059, 0.229481,
		-0.226167, -0.039008, -0.973307,
		43.083702, 38.518654, 39.565079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107155, 37.886665, 40.128323>,  <43.242020, 38.545959, 40.246395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107155, 37.886665, 40.128323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.103180, 37.993946, 39.742996>,  <43.100796, 38.058315, 39.511803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.103180, 37.993946, 39.742996>,  <43.107155, 37.886665, 40.128323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103180, 37.993946, 39.742996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129016, -0.954963, -0.267208,
		-0.991593, -0.126938, -0.025110,
		-0.009940, 0.268201, -0.963312,
		43.100197, 38.074406, 39.454002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495461, 37.480633, 39.716751>,  <43.107155, 37.886665, 40.128323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495461, 37.480633, 39.716751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802570, 37.578983, 39.480083>,  <42.986835, 37.637993, 39.338081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802570, 37.578983, 39.480083>,  <42.495461, 37.480633, 39.716751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802570, 37.578983, 39.480083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000149, -0.923371, -0.383908,
		-0.640723, 0.294842, -0.708902,
		0.767772, 0.245873, -0.591669,
		43.032902, 37.652744, 39.302582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410496, 37.053329, 39.194515>,  <42.495461, 37.480633, 39.716751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410496, 37.053329, 39.194515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.783382, 37.178673, 39.122105>,  <43.007114, 37.253880, 39.078659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.783382, 37.178673, 39.122105>,  <42.410496, 37.053329, 39.194515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783382, 37.178673, 39.122105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222293, -0.890556, -0.396858,
		-0.285571, 0.329719, -0.899853,
		0.932220, 0.313362, -0.181023,
		43.063049, 37.272682, 39.067799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578186, 36.913010, 38.399883>,  <42.410496, 37.053329, 39.194515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578186, 36.913010, 38.399883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940083, 36.957153, 38.564449>,  <43.157219, 36.983639, 38.663189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940083, 36.957153, 38.564449>,  <42.578186, 36.913010, 38.399883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940083, 36.957153, 38.564449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339428, -0.770329, -0.539798,
		0.257356, 0.628024, -0.734407,
		0.904741, 0.110359, 0.411418,
		43.211506, 36.990261, 38.687874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128422, 37.011257, 37.836472>,  <42.578186, 36.913010, 38.399883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128422, 37.011257, 37.836472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311279, 36.876598, 38.165760>,  <43.420994, 36.795803, 38.363331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311279, 36.876598, 38.165760>,  <43.128422, 37.011257, 37.836472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311279, 36.876598, 38.165760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372403, -0.768097, -0.520906,
		0.807673, 0.544698, -0.225763,
		0.457144, -0.336647, 0.823218,
		43.448421, 36.775604, 38.412727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748608, 36.821217, 37.633240>,  <43.128422, 37.011257, 37.836472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748608, 36.821217, 37.633240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694576, 36.628162, 37.979378>,  <43.662159, 36.512329, 38.187061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694576, 36.628162, 37.979378>,  <43.748608, 36.821217, 37.633240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694576, 36.628162, 37.979378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313569, -0.849282, -0.424729,
		0.939909, 0.213975, 0.266057,
		-0.135076, -0.482634, 0.865343,
		43.654053, 36.483372, 38.238979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343372, 36.502422, 37.856190>,  <43.748608, 36.821217, 37.633240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343372, 36.502422, 37.856190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.063629, 36.280998, 38.037064>,  <43.895782, 36.148144, 38.145588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.063629, 36.280998, 38.037064>,  <44.343372, 36.502422, 37.856190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063629, 36.280998, 38.037064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379179, -0.823595, -0.421800,
		0.605909, -0.123529, 0.785885,
		-0.699356, -0.553563, 0.452183,
		43.853821, 36.114929, 38.172718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636806, 35.862614, 37.944038>,  <44.343372, 36.502422, 37.856190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636806, 35.862614, 37.944038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252563, 35.777561, 38.015617>,  <44.022018, 35.726528, 38.058563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252563, 35.777561, 38.015617>,  <44.636806, 35.862614, 37.944038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252563, 35.777561, 38.015617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104842, -0.873589, -0.475238,
		0.257377, -0.437756, 0.861468,
		-0.960607, -0.212634, 0.178946,
		43.964382, 35.713772, 38.069302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534313, 35.144684, 38.187607>,  <44.636806, 35.862614, 37.944038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534313, 35.144684, 38.187607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159702, 35.218399, 38.068306>,  <43.934937, 35.262630, 37.996727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159702, 35.218399, 38.068306>,  <44.534313, 35.144684, 38.187607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159702, 35.218399, 38.068306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084484, -0.944258, -0.318181,
		-0.340266, -0.272788, 0.899892,
		-0.936526, 0.184293, -0.298252,
		43.878746, 35.273685, 37.978828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296482, 34.644051, 38.455734>,  <44.534313, 35.144684, 38.187607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296482, 34.644051, 38.455734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.027794, 34.779697, 38.192284>,  <43.866581, 34.861084, 38.034214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.027794, 34.779697, 38.192284>,  <44.296482, 34.644051, 38.455734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027794, 34.779697, 38.192284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198658, -0.938967, -0.280848,
		-0.713668, -0.057811, 0.698094,
		-0.671724, 0.339115, -0.658626,
		43.826279, 34.881432, 37.994698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764175, 34.203354, 38.524982>,  <44.296482, 34.644051, 38.455734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764175, 34.203354, 38.524982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.713108, 34.360146, 38.160553>,  <43.682468, 34.454220, 37.941895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.713108, 34.360146, 38.160553>,  <43.764175, 34.203354, 38.524982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713108, 34.360146, 38.160553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093528, -0.919255, -0.382391,
		-0.987397, 0.036391, 0.154022,
		-0.127670, 0.391977, -0.911073,
		43.674809, 34.477737, 37.887230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264565, 33.759979, 38.240231>,  <43.764175, 34.203354, 38.524982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264565, 33.759979, 38.240231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.455437, 33.939072, 37.937752>,  <43.569962, 34.046528, 37.756264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.455437, 33.939072, 37.937752>,  <43.264565, 33.759979, 38.240231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455437, 33.939072, 37.937752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003990, -0.861577, -0.507611,
		-0.878794, 0.239207, -0.412918,
		0.477185, 0.447733, -0.756194,
		43.598591, 34.073391, 37.710892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899837, 33.617622, 37.612991>,  <43.264565, 33.759979, 38.240231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899837, 33.617622, 37.612991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271141, 33.702484, 37.490791>,  <43.493923, 33.753399, 37.417469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271141, 33.702484, 37.490791>,  <42.899837, 33.617622, 37.612991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271141, 33.702484, 37.490791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047724, -0.746649, -0.663504,
		-0.368866, 0.630482, -0.682957,
		0.928257, 0.212151, -0.305502,
		43.549618, 33.766129, 37.399139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872261, 33.561520, 36.866592>,  <42.899837, 33.617622, 37.612991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872261, 33.561520, 36.866592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259449, 33.536167, 36.963772>,  <43.491760, 33.520958, 37.022079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259449, 33.536167, 36.963772>,  <42.872261, 33.561520, 36.866592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259449, 33.536167, 36.963772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114817, -0.748774, -0.652805,
		0.223284, 0.659788, -0.717513,
		0.967968, -0.063378, 0.242944,
		43.549839, 33.517155, 37.036655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232494, 33.623665, 36.258175>,  <42.872261, 33.561520, 36.866592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232494, 33.623665, 36.258175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494820, 33.452595, 36.507015>,  <43.652214, 33.349953, 36.656319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494820, 33.452595, 36.507015>,  <43.232494, 33.623665, 36.258175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494820, 33.452595, 36.507015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246946, -0.657187, -0.712126,
		0.713393, 0.620645, -0.325378,
		0.655811, -0.427675, 0.622098,
		43.691563, 33.324291, 36.693645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718983, 33.540577, 35.840057>,  <43.232494, 33.623665, 36.258175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718983, 33.540577, 35.840057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775391, 33.289276, 36.146107>,  <43.809235, 33.138496, 36.329735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775391, 33.289276, 36.146107>,  <43.718983, 33.540577, 35.840057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775391, 33.289276, 36.146107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138912, -0.752642, -0.643610,
		0.980212, 0.197049, -0.018868,
		0.141024, -0.628253, 0.765121,
		43.817699, 33.100800, 36.375645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408344, 33.093155, 35.856548>,  <43.718983, 33.540577, 35.840057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408344, 33.093155, 35.856548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114010, 32.888149, 36.033581>,  <43.937408, 32.765144, 36.139801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114010, 32.888149, 36.033581>,  <44.408344, 33.093155, 35.856548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114010, 32.888149, 36.033581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164792, -0.769466, -0.617062,
		0.656806, -0.381120, 0.650656,
		-0.735832, -0.512513, 0.442584,
		43.893261, 32.734394, 36.166355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938366, 33.444118, 35.492538>,  <44.408344, 33.093155, 35.856548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938366, 33.444118, 35.492538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.037350, 33.627754, 35.151245>,  <45.096741, 33.737934, 34.946468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.037350, 33.627754, 35.151245>,  <44.938366, 33.444118, 35.492538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037350, 33.627754, 35.151245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388803, 0.853659, 0.346553,
		0.887468, 0.245983, 0.389736,
		0.247455, 0.459085, -0.853233,
		45.111588, 33.765480, 34.895275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367329, 34.038414, 35.676659>,  <44.938366, 33.444118, 35.492538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367329, 34.038414, 35.676659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212589, 34.118820, 35.316673>,  <45.119747, 34.167065, 35.100681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212589, 34.118820, 35.316673>,  <45.367329, 34.038414, 35.676659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212589, 34.118820, 35.316673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286063, 0.901644, 0.324356,
		0.876652, 0.382923, -0.291293,
		-0.386845, 0.201019, -0.899968,
		45.096535, 34.179127, 35.046684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229614, 34.858620, 35.775318>,  <45.367329, 34.038414, 35.676659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229614, 34.858620, 35.775318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.082119, 34.766232, 35.415165>,  <44.993622, 34.710796, 35.199074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.082119, 34.766232, 35.415165>,  <45.229614, 34.858620, 35.775318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082119, 34.766232, 35.415165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458328, 0.887880, -0.040068,
		0.808684, 0.397895, -0.433255,
		-0.368735, -0.230975, -0.900380,
		44.971497, 34.696938, 35.145050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428886, 35.458176, 35.218643>,  <45.229614, 34.858620, 35.775318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428886, 35.458176, 35.218643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097084, 35.259968, 35.115593>,  <44.898003, 35.141041, 35.053761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097084, 35.259968, 35.115593>,  <45.428886, 35.458176, 35.218643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097084, 35.259968, 35.115593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491056, 0.866852, -0.086214,
		0.266048, 0.054995, -0.962390,
		-0.829508, -0.495524, -0.257630,
		44.848232, 35.111309, 35.038303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099731, 35.882999, 34.707657>,  <45.428886, 35.458176, 35.218643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099731, 35.882999, 34.707657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.803432, 35.652637, 34.846001>,  <44.625652, 35.514420, 34.929008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.803432, 35.652637, 34.846001>,  <45.099731, 35.882999, 34.707657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803432, 35.652637, 34.846001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616289, 0.787472, -0.008690,
		-0.267353, -0.219589, -0.938245,
		-0.740750, -0.575906, 0.345863,
		44.581207, 35.479866, 34.949760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560604, 36.156708, 34.371117>,  <45.099731, 35.882999, 34.707657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560604, 36.156708, 34.371117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421852, 35.965099, 34.693661>,  <44.338600, 35.850136, 34.887188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421852, 35.965099, 34.693661>,  <44.560604, 36.156708, 34.371117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421852, 35.965099, 34.693661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631896, 0.754689, 0.176497,
		-0.693096, -0.448312, -0.564476,
		-0.346878, -0.479020, 0.806359,
		44.317787, 35.821392, 34.935570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991692, 36.298897, 34.353870>,  <44.560604, 36.156708, 34.371117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991692, 36.298897, 34.353870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.980202, 36.182453, 34.736374>,  <43.973309, 36.112587, 34.965878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.980202, 36.182453, 34.736374>,  <43.991692, 36.298897, 34.353870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980202, 36.182453, 34.736374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640991, 0.739430, 0.205847,
		-0.767010, -0.607040, -0.207840,
		-0.028726, -0.291111, 0.956258,
		43.971584, 36.095119, 35.023251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246040, 36.194168, 34.618896>,  <43.991692, 36.298897, 34.353870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246040, 36.194168, 34.618896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481243, 36.277020, 34.931652>,  <43.622364, 36.326733, 35.119305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481243, 36.277020, 34.931652>,  <43.246040, 36.194168, 34.618896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481243, 36.277020, 34.931652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669156, 0.667618, 0.326369,
		-0.454400, -0.715111, 0.531166,
		0.588006, 0.207131, 0.781886,
		43.657646, 36.339157, 35.166218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686275, 36.485882, 35.066185>,  <43.246040, 36.194168, 34.618896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686275, 36.485882, 35.066185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.036560, 36.562572, 35.243439>,  <43.246731, 36.608585, 35.349792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.036560, 36.562572, 35.243439>,  <42.686275, 36.485882, 35.066185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036560, 36.562572, 35.243439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438116, 0.701272, 0.562381,
		-0.202935, -0.686629, 0.698111,
		0.875712, 0.191726, 0.443135,
		43.299274, 36.620090, 35.376381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473194, 36.718079, 35.765739>,  <42.686275, 36.485882, 35.066185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473194, 36.718079, 35.765739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845913, 36.850628, 35.706482>,  <43.069546, 36.930157, 35.670929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845913, 36.850628, 35.706482>,  <42.473194, 36.718079, 35.765739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845913, 36.850628, 35.706482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224516, 0.846852, 0.482115,
		0.285214, -0.415973, 0.863493,
		0.931797, 0.331374, -0.148141,
		43.125450, 36.950039, 35.662041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737289, 36.837326, 36.442127>,  <42.473194, 36.718079, 35.765739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737289, 36.837326, 36.442127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890293, 37.063282, 36.149666>,  <42.982094, 37.198856, 35.974190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890293, 37.063282, 36.149666>,  <42.737289, 36.837326, 36.442127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890293, 37.063282, 36.149666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337931, 0.822038, 0.458319,
		0.859937, 0.071770, 0.505329,
		0.382506, 0.564892, -0.731155,
		43.005047, 37.232750, 35.930321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020168, 37.290661, 36.831501>,  <42.737289, 36.837326, 36.442127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020168, 37.290661, 36.831501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.035748, 37.475437, 36.477077>,  <43.045094, 37.586304, 36.264423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.035748, 37.475437, 36.477077>,  <43.020168, 37.290661, 36.831501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035748, 37.475437, 36.477077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301120, 0.850935, 0.430392,
		0.952791, 0.250047, 0.172239,
		0.038946, 0.461938, -0.886057,
		43.047432, 37.614017, 36.211262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445644, 37.921631, 36.943699>,  <43.020168, 37.290661, 36.831501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445644, 37.921631, 36.943699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221806, 37.970448, 36.615807>,  <43.087502, 37.999737, 36.419071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221806, 37.970448, 36.615807>,  <43.445644, 37.921631, 36.943699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221806, 37.970448, 36.615807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379395, 0.841650, 0.384297,
		0.736826, 0.526053, -0.424684,
		-0.559596, 0.122037, -0.819731,
		43.053928, 38.007057, 36.369888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325874, 38.635159, 36.982151>,  <43.445644, 37.921631, 36.943699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325874, 38.635159, 36.982151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.057919, 38.532509, 36.703472>,  <42.897144, 38.470917, 36.536266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.057919, 38.532509, 36.703472>,  <43.325874, 38.635159, 36.982151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057919, 38.532509, 36.703472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523608, 0.828571, 0.198257,
		0.526386, 0.497607, -0.689424,
		-0.669891, -0.256628, -0.696699,
		42.856953, 38.455521, 36.494461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295158, 39.145283, 36.480335>,  <43.325874, 38.635159, 36.982151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295158, 39.145283, 36.480335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950817, 38.945526, 36.519409>,  <42.744213, 38.825672, 36.542854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950817, 38.945526, 36.519409>,  <43.295158, 39.145283, 36.480335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950817, 38.945526, 36.519409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475058, 0.857518, 0.197441,
		-0.182369, 0.123560, -0.975436,
		-0.860849, -0.499396, 0.097687,
		42.692562, 38.795708, 36.548714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749176, 39.487732, 35.997604>,  <43.295158, 39.145283, 36.480335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749176, 39.487732, 35.997604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.543159, 39.272301, 36.264339>,  <42.419548, 39.143044, 36.424381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.543159, 39.272301, 36.264339>,  <42.749176, 39.487732, 35.997604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543159, 39.272301, 36.264339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549149, 0.804658, 0.225746,
		-0.658154, -0.249922, -0.710192,
		-0.515042, -0.538577, 0.666833,
		42.388645, 39.110729, 36.464390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148705, 39.818546, 35.927979>,  <42.749176, 39.487732, 35.997604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148705, 39.818546, 35.927979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.128124, 39.616497, 36.272583>,  <42.115776, 39.495266, 36.479343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.128124, 39.616497, 36.272583>,  <42.148705, 39.818546, 35.927979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128124, 39.616497, 36.272583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540600, 0.739422, 0.401257,
		-0.839705, -0.445086, -0.311118,
		-0.051454, -0.505128, 0.861509,
		42.112690, 39.464958, 36.531036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459545, 39.639893, 36.035686>,  <42.148705, 39.818546, 35.927979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459545, 39.639893, 36.035686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.642883, 39.660046, 36.390625>,  <41.752884, 39.672138, 36.603588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.642883, 39.660046, 36.390625>,  <41.459545, 39.639893, 36.035686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642883, 39.660046, 36.390625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636137, 0.715834, 0.287943,
		-0.620686, -0.696450, 0.360147,
		0.458344, 0.050381, 0.887346,
		41.780388, 39.675159, 36.656830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922348, 39.732937, 36.506256>,  <41.459545, 39.639893, 36.035686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922348, 39.732937, 36.506256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.260563, 39.846008, 36.687435>,  <41.463493, 39.913853, 36.796143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.260563, 39.846008, 36.687435>,  <40.922348, 39.732937, 36.506256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260563, 39.846008, 36.687435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513622, 0.662327, 0.545450,
		-0.145807, -0.693840, 0.705214,
		0.845537, 0.282683, 0.452944,
		41.514225, 39.930813, 36.823318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714153, 39.805264, 37.154503>,  <40.922348, 39.732937, 36.506256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714153, 39.805264, 37.154503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.061859, 40.002544, 37.141033>,  <41.270481, 40.120911, 37.132954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.061859, 40.002544, 37.141033>,  <40.714153, 39.805264, 37.154503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061859, 40.002544, 37.141033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381486, 0.712570, 0.588823,
		0.314399, -0.498999, 0.807560,
		0.869265, 0.493198, -0.033670,
		41.322639, 40.150505, 37.130932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.919434, 35.136406, 44.030018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671448, 34.857105, 43.886860>,  <37.522655, 34.689526, 43.800964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671448, 34.857105, 43.886860>,  <37.919434, 35.136406, 44.030018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671448, 34.857105, 43.886860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244398, 0.261591, -0.933724,
		0.745594, -0.666346, 0.008473,
		-0.619967, -0.698250, -0.357894,
		37.485458, 34.647629, 43.779491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237209, 34.812149, 43.515465>,  <37.919434, 35.136406, 44.030018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237209, 34.812149, 43.515465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861660, 34.721233, 43.412041>,  <37.636330, 34.666683, 43.349987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861660, 34.721233, 43.412041>,  <38.237209, 34.812149, 43.515465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861660, 34.721233, 43.412041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210526, 0.215184, -0.953611,
		0.272382, -0.949756, -0.154181,
		-0.938875, -0.227287, -0.258560,
		37.579998, 34.653049, 43.334473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320789, 34.309322, 42.956852>,  <38.237209, 34.812149, 43.515465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320789, 34.309322, 42.956852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951981, 34.463692, 42.944569>,  <37.730698, 34.556313, 42.937199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951981, 34.463692, 42.944569>,  <38.320789, 34.309322, 42.956852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951981, 34.463692, 42.944569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111727, 0.189290, -0.975544,
		-0.370676, -0.902901, -0.217647,
		-0.922018, 0.385927, -0.030713,
		37.675377, 34.579472, 42.935356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950745, 33.851204, 42.350044>,  <38.320789, 34.309322, 42.956852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950745, 33.851204, 42.350044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723785, 34.176552, 42.401413>,  <37.587612, 34.371761, 42.432236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723785, 34.176552, 42.401413>,  <37.950745, 33.851204, 42.350044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723785, 34.176552, 42.401413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042217, 0.184485, -0.981928,
		-0.822362, -0.551720, -0.139014,
		-0.567395, 0.813370, 0.128422,
		37.553566, 34.420563, 42.439941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517948, 33.798359, 41.804688>,  <37.950745, 33.851204, 42.350044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517948, 33.798359, 41.804688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440609, 34.178539, 41.902061>,  <37.394207, 34.406647, 41.960484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440609, 34.178539, 41.902061>,  <37.517948, 33.798359, 41.804688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440609, 34.178539, 41.902061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010144, 0.246165, -0.969175,
		-0.981078, -0.189857, -0.037954,
		-0.193348, 0.950451, 0.243432,
		37.382603, 34.463676, 41.975090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875584, 34.065224, 41.542542>,  <37.517948, 33.798359, 41.804688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875584, 34.065224, 41.542542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068951, 34.410946, 41.598076>,  <37.184971, 34.618382, 41.631397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068951, 34.410946, 41.598076>,  <36.875584, 34.065224, 41.542542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068951, 34.410946, 41.598076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254140, 0.290339, -0.922560,
		-0.837685, 0.410701, 0.360011,
		0.483421, 0.864308, 0.138837,
		37.213978, 34.670238, 41.639729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405041, 34.660866, 41.304474>,  <36.875584, 34.065224, 41.542542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405041, 34.660866, 41.304474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798153, 34.732311, 41.285507>,  <37.034019, 34.775177, 41.274128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798153, 34.732311, 41.285507>,  <36.405041, 34.660866, 41.304474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798153, 34.732311, 41.285507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090171, 0.239515, -0.966696,
		-0.161308, 0.954322, 0.251495,
		0.982776, 0.178614, -0.047416,
		37.092987, 34.785896, 41.271282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532734, 35.205700, 40.788044>,  <36.405041, 34.660866, 41.304474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532734, 35.205700, 40.788044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919601, 35.109730, 40.821568>,  <37.151722, 35.052147, 40.841682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919601, 35.109730, 40.821568>,  <36.532734, 35.205700, 40.788044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919601, 35.109730, 40.821568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171034, 0.370581, -0.912917,
		0.187974, 0.897277, 0.399449,
		0.967168, -0.239924, 0.083805,
		37.209751, 35.037754, 40.846710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957638, 35.771458, 40.386059>,  <36.532734, 35.205700, 40.788044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957638, 35.771458, 40.386059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210121, 35.465878, 40.439655>,  <37.361610, 35.282528, 40.471813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210121, 35.465878, 40.439655>,  <36.957638, 35.771458, 40.386059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210121, 35.465878, 40.439655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368243, 0.143135, -0.918645,
		0.682624, 0.629195, 0.371668,
		0.631206, -0.763954, 0.133989,
		37.399483, 35.236691, 40.479851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652081, 36.012306, 40.200340>,  <36.957638, 35.771458, 40.386059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652081, 36.012306, 40.200340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610035, 35.615513, 40.172268>,  <37.584808, 35.377438, 40.155426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610035, 35.615513, 40.172268>,  <37.652081, 36.012306, 40.200340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610035, 35.615513, 40.172268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219840, 0.045641, -0.974468,
		0.969856, -0.117862, 0.213279,
		-0.105118, -0.991980, -0.070176,
		37.578499, 35.317917, 40.151215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192711, 35.779663, 39.805737>,  <37.652081, 36.012306, 40.200340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192711, 35.779663, 39.805737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914696, 35.492527, 39.789581>,  <37.747887, 35.320244, 39.779888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914696, 35.492527, 39.789581>,  <38.192711, 35.779663, 39.805737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914696, 35.492527, 39.789581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015069, 0.041623, -0.999020,
		0.718817, -0.694964, -0.018112,
		-0.695036, -0.717839, -0.040392,
		37.706184, 35.277176, 39.777462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523808, 35.263309, 39.385593>,  <38.192711, 35.779663, 39.805737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523808, 35.263309, 39.385593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136852, 35.165302, 39.359905>,  <37.904678, 35.106499, 39.344494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136852, 35.165302, 39.359905>,  <38.523808, 35.263309, 39.385593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136852, 35.165302, 39.359905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016317, 0.192726, -0.981117,
		0.252769, -0.950169, -0.182443,
		-0.967389, -0.245019, -0.064219,
		37.846634, 35.091797, 39.340641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403378, 34.793297, 38.823837>,  <38.523808, 35.263309, 39.385593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403378, 34.793297, 38.823837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063084, 34.997581, 38.873505>,  <37.858906, 35.120152, 38.903305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063084, 34.997581, 38.873505>,  <38.403378, 34.793297, 38.823837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063084, 34.997581, 38.873505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009681, 0.220984, -0.975229,
		-0.525502, -0.830866, -0.183055,
		-0.850737, 0.510713, 0.124171,
		37.807861, 35.150795, 38.910755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230019, 34.935188, 38.784386>,  <38.403378, 34.793297, 38.823837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230019, 34.935188, 38.784386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504669, 34.816879, 39.050037>,  <39.669460, 34.745892, 39.209427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504669, 34.816879, 39.050037>,  <39.230019, 34.935188, 38.784386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504669, 34.816879, 39.050037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324412, -0.692862, -0.643972,
		0.650621, 0.657616, -0.379781,
		0.686622, -0.295776, 0.664129,
		39.710655, 34.728146, 39.249275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715782, 35.216900, 38.364471>,  <39.230019, 34.935188, 38.784386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715782, 35.216900, 38.364471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033978, 35.049488, 38.189186>,  <40.224895, 34.949039, 38.084015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033978, 35.049488, 38.189186>,  <39.715782, 35.216900, 38.364471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033978, 35.049488, 38.189186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046457, -0.678913, 0.732747,
		-0.604186, -0.603250, -0.520624,
		0.795488, -0.418529, -0.438215,
		40.272625, 34.923927, 38.057720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674034, 34.481316, 38.341003>,  <39.715782, 35.216900, 38.364471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674034, 34.481316, 38.341003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070049, 34.537628, 38.342411>,  <40.307659, 34.571415, 38.343254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070049, 34.537628, 38.342411>,  <39.674034, 34.481316, 38.341003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070049, 34.537628, 38.342411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089228, -0.646406, 0.757758,
		0.108956, -0.749892, -0.652526,
		0.990034, 0.140786, 0.003518,
		40.367058, 34.579865, 38.343468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002853, 33.799183, 38.381142>,  <39.674034, 34.481316, 38.341003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002853, 33.799183, 38.381142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267056, 34.067215, 38.516621>,  <40.425579, 34.228035, 38.597908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267056, 34.067215, 38.516621>,  <40.002853, 33.799183, 38.381142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267056, 34.067215, 38.516621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243542, -0.617925, 0.747567,
		0.710222, -0.411287, -0.571338,
		0.660509, 0.670083, 0.338698,
		40.465210, 34.268238, 38.618229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328808, 33.328197, 38.793545>,  <40.002853, 33.799183, 38.381142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328808, 33.328197, 38.793545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467628, 33.692390, 38.883511>,  <40.550919, 33.910904, 38.937489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467628, 33.692390, 38.883511>,  <40.328808, 33.328197, 38.793545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467628, 33.692390, 38.883511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103238, -0.275449, 0.955756,
		0.932148, -0.308474, -0.189590,
		0.347049, 0.910478, 0.224913,
		40.571743, 33.965534, 38.950985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935589, 33.107616, 39.136272>,  <40.328808, 33.328197, 38.793545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935589, 33.107616, 39.136272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876926, 33.481415, 39.266010>,  <40.841728, 33.705696, 39.343853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876926, 33.481415, 39.266010>,  <40.935589, 33.107616, 39.136272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876926, 33.481415, 39.266010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030669, -0.323441, 0.945751,
		0.988712, 0.148650, 0.018775,
		-0.146659, 0.934499, 0.324349,
		40.832928, 33.761765, 39.363316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285919, 33.056301, 39.770103>,  <40.935589, 33.107616, 39.136272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285919, 33.056301, 39.770103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079666, 33.397179, 39.805630>,  <40.955914, 33.601704, 39.826946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079666, 33.397179, 39.805630>,  <41.285919, 33.056301, 39.770103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079666, 33.397179, 39.805630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401668, -0.331983, 0.853493,
		0.756827, 0.404415, 0.513480,
		-0.515632, 0.852195, 0.088813,
		40.924976, 33.652836, 39.832275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480549, 33.365280, 40.449890>,  <41.285919, 33.056301, 39.770103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480549, 33.365280, 40.449890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133190, 33.535027, 40.347279>,  <40.924774, 33.636875, 40.285713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133190, 33.535027, 40.347279>,  <41.480549, 33.365280, 40.449890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133190, 33.535027, 40.347279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315081, -0.072745, 0.946273,
		0.382902, 0.902565, 0.196880,
		-0.868395, 0.424363, -0.256526,
		40.872673, 33.662334, 40.270321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373779, 34.048042, 40.852695>,  <41.480549, 33.365280, 40.449890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373779, 34.048042, 40.852695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016392, 33.923389, 40.723331>,  <40.801960, 33.848598, 40.645714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016392, 33.923389, 40.723331>,  <41.373779, 34.048042, 40.852695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016392, 33.923389, 40.723331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316572, -0.073794, 0.945694,
		-0.318576, 0.947332, -0.032722,
		-0.893471, -0.311634, -0.323408,
		40.748352, 33.829899, 40.626308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824467, 34.305099, 41.307384>,  <41.373779, 34.048042, 40.852695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824467, 34.305099, 41.307384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623508, 34.003361, 41.138359>,  <40.502934, 33.822319, 41.036942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623508, 34.003361, 41.138359>,  <40.824467, 34.305099, 41.307384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623508, 34.003361, 41.138359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361760, -0.260501, 0.895136,
		-0.785319, 0.602583, -0.142015,
		-0.502399, -0.754343, -0.422566,
		40.472790, 33.777058, 41.011589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201939, 34.361965, 41.639805>,  <40.824467, 34.305099, 41.307384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201939, 34.361965, 41.639805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179417, 34.008617, 41.453690>,  <40.165905, 33.796608, 41.342022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179417, 34.008617, 41.453690>,  <40.201939, 34.361965, 41.639805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179417, 34.008617, 41.453690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457069, -0.391519, 0.798625,
		-0.887647, 0.257636, -0.381714,
		-0.056306, -0.883367, -0.465288,
		40.162525, 33.743607, 41.314102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564503, 34.133308, 41.737198>,  <40.201939, 34.361965, 41.639805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564503, 34.133308, 41.737198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753532, 33.785015, 41.682789>,  <39.866951, 33.576038, 41.650143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753532, 33.785015, 41.682789>,  <39.564503, 34.133308, 41.737198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753532, 33.785015, 41.682789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498280, -0.391294, 0.773696,
		-0.726905, -0.297852, -0.618783,
		0.472573, -0.870731, -0.136019,
		39.895306, 33.523796, 41.641983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090538, 33.608196, 41.937992>,  <39.564503, 34.133308, 41.737198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090538, 33.608196, 41.937992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425392, 33.391605, 41.906990>,  <39.626305, 33.261650, 41.888390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425392, 33.391605, 41.906990>,  <39.090538, 33.608196, 41.937992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425392, 33.391605, 41.906990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293426, -0.564109, 0.771805,
		-0.461634, -0.623364, -0.631119,
		0.837135, -0.541478, -0.077500,
		39.676533, 33.229160, 41.883739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872883, 32.849117, 41.826752>,  <39.090538, 33.608196, 41.937992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872883, 32.849117, 41.826752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242817, 32.884541, 41.974720>,  <39.464775, 32.905792, 42.063499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242817, 32.884541, 41.974720>,  <38.872883, 32.849117, 41.826752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242817, 32.884541, 41.974720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286613, -0.477140, 0.830777,
		0.250073, -0.874354, -0.415894,
		0.924833, 0.088554, 0.369922,
		39.520267, 32.911106, 42.085697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952240, 32.197460, 42.042103>,  <38.872883, 32.849117, 41.826752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952240, 32.197460, 42.042103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207977, 32.424126, 42.249996>,  <39.361420, 32.560127, 42.374733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207977, 32.424126, 42.249996>,  <38.952240, 32.197460, 42.042103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207977, 32.424126, 42.249996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234636, -0.499911, 0.833688,
		0.732244, -0.654964, -0.186656,
		0.639347, 0.566667, 0.519735,
		39.399780, 32.594124, 42.405918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822186, 31.501480, 41.821987>,  <38.952240, 32.197460, 42.042103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822186, 31.501480, 41.821987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571632, 31.196281, 41.758137>,  <38.421299, 31.013163, 41.719826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571632, 31.196281, 41.758137>,  <38.822186, 31.501480, 41.821987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571632, 31.196281, 41.758137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061078, 0.252181, -0.965751,
		0.777120, -0.595179, -0.204564,
		-0.626382, -0.762998, -0.159622,
		38.383717, 30.967382, 41.710251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029076, 31.099684, 41.235386>,  <38.822186, 31.501480, 41.821987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029076, 31.099684, 41.235386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649834, 30.977810, 41.271759>,  <38.422291, 30.904686, 41.293583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649834, 30.977810, 41.271759>,  <39.029076, 31.099684, 41.235386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649834, 30.977810, 41.271759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154949, 0.193013, -0.968884,
		0.277660, -0.932689, -0.230207,
		-0.948101, -0.304691, 0.090928,
		38.365402, 30.886404, 41.299038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873573, 30.828552, 40.540661>,  <39.029076, 31.099684, 41.235386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873573, 30.828552, 40.540661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516186, 30.877062, 40.713638>,  <38.301754, 30.906168, 40.817425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516186, 30.877062, 40.713638>,  <38.873573, 30.828552, 40.540661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516186, 30.877062, 40.713638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411104, 0.166880, -0.896183,
		-0.180848, -0.978491, -0.099246,
		-0.893469, 0.121273, 0.432441,
		38.248146, 30.913443, 40.843372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419479, 30.618185, 40.068218>,  <38.873573, 30.828552, 40.540661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419479, 30.618185, 40.068218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212830, 30.870012, 40.300335>,  <38.088840, 31.021109, 40.439606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212830, 30.870012, 40.300335>,  <38.419479, 30.618185, 40.068218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212830, 30.870012, 40.300335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447077, 0.379662, -0.809925,
		-0.730218, -0.677866, 0.085321,
		-0.516627, 0.629567, 0.580294,
		38.057842, 31.058882, 40.474422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651020, 30.549128, 39.774315>,  <38.419479, 30.618185, 40.068218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651020, 30.549128, 39.774315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719913, 30.897476, 39.958454>,  <37.761250, 31.106485, 40.068939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719913, 30.897476, 39.958454>,  <37.651020, 30.549128, 39.774315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719913, 30.897476, 39.958454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397808, 0.489019, -0.776279,
		-0.901157, -0.049430, 0.430665,
		0.172232, 0.870871, 0.460347,
		37.771584, 31.158737, 40.096558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206528, 30.884300, 39.446148>,  <37.651020, 30.549128, 39.774315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206528, 30.884300, 39.446148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402935, 31.175348, 39.637760>,  <37.520779, 31.349977, 39.752728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402935, 31.175348, 39.637760>,  <37.206528, 30.884300, 39.446148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402935, 31.175348, 39.637760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265893, 0.648819, -0.712976,
		-0.829582, 0.222711, 0.512049,
		0.491015, 0.727622, 0.479031,
		37.550240, 31.393635, 39.781471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717609, 31.403076, 39.650513>,  <37.206528, 30.884300, 39.446148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717609, 31.403076, 39.650513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072529, 31.587362, 39.642155>,  <37.285480, 31.697933, 39.637138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072529, 31.587362, 39.642155>,  <36.717609, 31.403076, 39.650513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072529, 31.587362, 39.642155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415956, 0.779887, -0.467714,
		-0.199187, 0.423696, 0.883633,
		0.887302, 0.460715, -0.020896,
		37.338718, 31.725576, 39.635887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712288, 32.056999, 40.015144>,  <36.717609, 31.403076, 39.650513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712288, 32.056999, 40.015144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021221, 32.103531, 39.765354>,  <37.206581, 32.131451, 39.615479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021221, 32.103531, 39.765354>,  <36.712288, 32.056999, 40.015144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021221, 32.103531, 39.765354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474925, 0.758603, -0.446057,
		0.421841, 0.641084, 0.641141,
		0.772332, 0.116329, -0.624477,
		37.252922, 32.138428, 39.578011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894791, 32.831734, 39.965572>,  <36.712288, 32.056999, 40.015144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894791, 32.831734, 39.965572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067509, 32.669556, 39.643288>,  <37.171139, 32.572250, 39.449917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067509, 32.669556, 39.643288>,  <36.894791, 32.831734, 39.965572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067509, 32.669556, 39.643288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247813, 0.805572, -0.538184,
		0.867261, 0.432050, 0.247367,
		0.431795, -0.405445, -0.805709,
		37.197048, 32.547924, 39.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069405, 33.405819, 39.526783>,  <36.894791, 32.831734, 39.965572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069405, 33.405819, 39.526783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073742, 33.091328, 39.279648>,  <37.076344, 32.902634, 39.131367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073742, 33.091328, 39.279648>,  <37.069405, 33.405819, 39.526783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073742, 33.091328, 39.279648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378399, 0.568703, -0.730337,
		0.925579, 0.241709, -0.291342,
		0.010842, -0.786228, -0.617841,
		37.076996, 32.855461, 39.094296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380081, 33.597076, 38.948227>,  <37.069405, 33.405819, 39.526783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380081, 33.597076, 38.948227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179882, 33.283817, 38.800613>,  <37.059765, 33.095863, 38.712044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179882, 33.283817, 38.800613>,  <37.380081, 33.597076, 38.948227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179882, 33.283817, 38.800613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338940, 0.569492, -0.748865,
		0.796634, -0.249722, -0.550467,
		-0.500494, -0.783147, -0.369036,
		37.029736, 33.048874, 38.689903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346764, 33.826035, 38.310696>,  <37.380081, 33.597076, 38.948227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346764, 33.826035, 38.310696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063835, 33.545967, 38.349606>,  <36.894077, 33.377926, 38.372952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063835, 33.545967, 38.349606>,  <37.346764, 33.826035, 38.310696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063835, 33.545967, 38.349606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527165, 0.430795, -0.732470,
		0.470950, -0.569368, -0.673815,
		-0.707321, -0.700168, 0.097268,
		36.851639, 33.335918, 38.378788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.249763, 29.611296, 45.061672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864994, 29.508606, 45.024162>,  <38.634132, 29.446993, 45.001656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864994, 29.508606, 45.024162>,  <39.249763, 29.611296, 45.061672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864994, 29.508606, 45.024162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099382, -0.008939, -0.995009,
		0.254604, -0.966444, 0.034112,
		-0.961925, -0.256723, -0.093771,
		38.576416, 29.431589, 44.996033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221855, 29.159824, 44.559086>,  <39.249763, 29.611296, 45.061672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221855, 29.159824, 44.559086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853020, 29.313837, 44.574570>,  <38.631718, 29.406244, 44.583858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853020, 29.313837, 44.574570>,  <39.221855, 29.159824, 44.559086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853020, 29.313837, 44.574570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003019, 0.107181, -0.994235,
		-0.386963, -0.916658, -0.099993,
		-0.922090, 0.385034, 0.038708,
		38.576393, 29.429348, 44.586182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893703, 28.860582, 43.866585>,  <39.221855, 29.159824, 44.559086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893703, 28.860582, 43.866585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694786, 29.191250, 43.971901>,  <38.575436, 29.389650, 44.035091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694786, 29.191250, 43.971901>,  <38.893703, 28.860582, 43.866585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694786, 29.191250, 43.971901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189818, 0.192452, -0.962773,
		-0.846564, -0.528756, 0.061211,
		-0.497292, 0.826667, 0.263290,
		38.545597, 29.439251, 44.050888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381645, 28.886435, 43.497475>,  <38.893703, 28.860582, 43.866585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381645, 28.886435, 43.497475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399971, 29.264946, 43.625515>,  <38.410965, 29.492052, 43.702339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399971, 29.264946, 43.625515>,  <38.381645, 28.886435, 43.497475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399971, 29.264946, 43.625515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024805, 0.321411, -0.946615,
		-0.998642, 0.035430, 0.038198,
		0.045816, 0.946277, 0.320096,
		38.413715, 29.548828, 43.721542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921860, 29.215761, 43.023499>,  <38.381645, 28.886435, 43.497475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921860, 29.215761, 43.023499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155098, 29.494232, 43.190987>,  <38.295040, 29.661316, 43.291481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155098, 29.494232, 43.190987>,  <37.921860, 29.215761, 43.023499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155098, 29.494232, 43.190987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106911, 0.576689, -0.809938,
		-0.805335, 0.427509, 0.410696,
		0.583100, 0.696180, 0.418722,
		38.330029, 29.703087, 43.316605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555317, 29.763885, 42.932835>,  <37.921860, 29.215761, 43.023499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555317, 29.763885, 42.932835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914650, 29.920708, 43.012123>,  <38.130249, 30.014801, 43.059696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914650, 29.920708, 43.012123>,  <37.555317, 29.763885, 42.932835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914650, 29.920708, 43.012123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084360, 0.596749, -0.797981,
		-0.431143, 0.700130, 0.569153,
		0.898332, 0.392057, 0.198221,
		38.184151, 30.038324, 43.071590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516418, 30.518831, 42.984875>,  <37.555317, 29.763885, 42.932835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516418, 30.518831, 42.984875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892437, 30.421179, 42.889618>,  <38.118050, 30.362587, 42.832466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892437, 30.421179, 42.889618>,  <37.516418, 30.518831, 42.984875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892437, 30.421179, 42.889618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055680, 0.579039, -0.813397,
		0.336467, 0.777891, 0.530731,
		0.940048, -0.244130, -0.238140,
		38.174450, 30.347940, 42.818176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934883, 31.159533, 42.934326>,  <37.516418, 30.518831, 42.984875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934883, 31.159533, 42.934326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126266, 30.876797, 42.725922>,  <38.241096, 30.707155, 42.600880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126266, 30.876797, 42.725922>,  <37.934883, 31.159533, 42.934326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126266, 30.876797, 42.725922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056927, 0.567112, -0.821671,
		0.876260, 0.422799, 0.231104,
		0.478463, -0.706841, -0.521007,
		38.269806, 30.664743, 42.569618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480804, 31.533621, 42.534702>,  <37.934883, 31.159533, 42.934326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480804, 31.533621, 42.534702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430325, 31.179037, 42.356598>,  <38.400036, 30.966286, 42.249733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430325, 31.179037, 42.356598>,  <38.480804, 31.533621, 42.534702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430325, 31.179037, 42.356598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045413, 0.443221, -0.895261,
		0.990965, -0.133204, -0.015678,
		-0.126201, -0.886460, -0.445265,
		38.392464, 30.913099, 42.223019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141777, 31.794424, 42.606113>,  <38.480804, 31.533621, 42.534702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141777, 31.794424, 42.606113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237564, 32.166748, 42.716564>,  <39.295036, 32.390144, 42.782837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237564, 32.166748, 42.716564>,  <39.141777, 31.794424, 42.606113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237564, 32.166748, 42.716564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379141, -0.172171, 0.909181,
		0.893816, -0.322412, 0.311679,
		0.239469, 0.930810, 0.276129,
		39.309406, 32.445992, 42.799404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575405, 31.662863, 43.175533>,  <39.141777, 31.794424, 42.606113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575405, 31.662863, 43.175533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.411777, 32.027187, 43.197754>,  <39.313599, 32.245781, 43.211086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.411777, 32.027187, 43.197754>,  <39.575405, 31.662863, 43.175533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411777, 32.027187, 43.197754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239085, -0.165738, 0.956749,
		0.880624, 0.378097, 0.285560,
		-0.409072, 0.910809, 0.055556,
		39.289055, 32.300430, 43.214420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912895, 31.875589, 43.816189>,  <39.575405, 31.662863, 43.175533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912895, 31.875589, 43.816189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594837, 32.113186, 43.767338>,  <39.404003, 32.255745, 43.738029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594837, 32.113186, 43.767338>,  <39.912895, 31.875589, 43.816189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594837, 32.113186, 43.767338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210083, -0.080903, 0.974331,
		0.568864, 0.800393, 0.189117,
		-0.795148, 0.593992, -0.122126,
		39.356293, 32.291382, 43.730701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926086, 32.408367, 44.360729>,  <39.912895, 31.875589, 43.816189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926086, 32.408367, 44.360729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553028, 32.415180, 44.216568>,  <39.329193, 32.419270, 44.130074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553028, 32.415180, 44.216568>,  <39.926086, 32.408367, 44.360729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553028, 32.415180, 44.216568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359948, 0.024837, 0.932642,
		0.024837, 0.999546, -0.017033,
		-0.932642, 0.017033, -0.360401,
		39.273235, 32.420292, 44.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595196, 32.814034, 44.875343>,  <39.926086, 32.408367, 44.360729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595196, 32.814034, 44.875343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.287464, 32.672165, 44.662796>,  <39.102825, 32.587044, 44.535267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.287464, 32.672165, 44.662796>,  <39.595196, 32.814034, 44.875343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287464, 32.672165, 44.662796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609808, 0.159727, 0.776287,
		-0.190453, 0.921247, -0.339162,
		-0.769325, -0.354670, -0.531364,
		39.056667, 32.565765, 44.503387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094967, 33.282341, 45.052841>,  <39.595196, 32.814034, 44.875343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094967, 33.282341, 45.052841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900063, 32.963715, 44.909698>,  <38.783119, 32.772537, 44.823811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900063, 32.963715, 44.909698>,  <39.094967, 33.282341, 45.052841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900063, 32.963715, 44.909698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704790, 0.116755, 0.699742,
		-0.515608, 0.593171, -0.618301,
		-0.487257, -0.796565, -0.357862,
		38.753887, 32.724747, 44.802341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417397, 33.458134, 45.090851>,  <39.094967, 33.282341, 45.052841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417397, 33.458134, 45.090851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.428799, 33.058334, 45.096268>,  <38.435642, 32.818455, 45.099518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.428799, 33.058334, 45.096268>,  <38.417397, 33.458134, 45.090851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428799, 33.058334, 45.096268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635715, -0.007676, 0.771886,
		-0.771398, -0.030611, -0.635617,
		0.028507, -0.999502, 0.013539,
		38.437351, 32.758484, 45.100330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609634, 33.242447, 45.146687>,  <38.417397, 33.458134, 45.090851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609634, 33.242447, 45.146687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854698, 32.951965, 45.271439>,  <38.001736, 32.777676, 45.346291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854698, 32.951965, 45.271439>,  <37.609634, 33.242447, 45.146687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854698, 32.951965, 45.271439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648749, -0.236708, 0.723252,
		-0.451408, -0.645439, -0.616148,
		0.612663, -0.726207, 0.311876,
		38.038498, 32.734104, 45.365002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229198, 32.623051, 45.328979>,  <37.609634, 33.242447, 45.146687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229198, 32.623051, 45.328979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.569626, 32.583218, 45.535191>,  <37.773884, 32.559319, 45.658916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.569626, 32.583218, 45.535191>,  <37.229198, 32.623051, 45.328979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569626, 32.583218, 45.535191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508096, -0.403725, 0.760819,
		0.132368, -0.909445, -0.394194,
		0.851069, -0.099580, 0.515525,
		37.824947, 32.553345, 45.689850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092636, 32.152405, 45.738323>,  <37.229198, 32.623051, 45.328979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092636, 32.152405, 45.738323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418308, 32.278515, 45.933350>,  <37.613712, 32.354179, 46.050365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418308, 32.278515, 45.933350>,  <37.092636, 32.152405, 45.738323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418308, 32.278515, 45.933350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480545, -0.105405, 0.870613,
		0.325873, -0.943129, 0.065685,
		0.814176, 0.315274, 0.487565,
		37.662560, 32.373096, 46.079620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135029, 31.796722, 46.339020>,  <37.092636, 32.152405, 45.738323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135029, 31.796722, 46.339020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402966, 32.073845, 46.445850>,  <37.563728, 32.240116, 46.509949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402966, 32.073845, 46.445850>,  <37.135029, 31.796722, 46.339020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402966, 32.073845, 46.445850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180244, -0.197217, 0.963648,
		0.720292, -0.693634, -0.007232,
		0.669845, 0.692804, 0.267077,
		37.603920, 32.281685, 46.525974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436733, 31.481127, 46.897034>,  <37.135029, 31.796722, 46.339020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436733, 31.481127, 46.897034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.497795, 31.875189, 46.928436>,  <37.534431, 32.111626, 46.947277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.497795, 31.875189, 46.928436>,  <37.436733, 31.481127, 46.897034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497795, 31.875189, 46.928436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248316, -0.038654, 0.967907,
		0.956575, -0.167247, 0.238730,
		0.152652, 0.985157, 0.078506,
		37.543591, 32.170734, 46.951988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090199, 31.576347, 47.298874>,  <37.436733, 31.481127, 46.897034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090199, 31.576347, 47.298874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.861523, 31.903868, 47.319809>,  <37.724319, 32.100380, 47.332371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.861523, 31.903868, 47.319809>,  <38.090199, 31.576347, 47.298874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861523, 31.903868, 47.319809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031139, -0.085391, 0.995861,
		0.819881, 0.567690, 0.074314,
		-0.571686, 0.818802, 0.052333,
		37.690018, 32.149509, 47.335510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335323, 31.882544, 47.856773>,  <38.090199, 31.576347, 47.298874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335323, 31.882544, 47.856773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990158, 32.076973, 47.801468>,  <37.783058, 32.193630, 47.768284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990158, 32.076973, 47.801468>,  <38.335323, 31.882544, 47.856773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990158, 32.076973, 47.801468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064477, 0.165467, 0.984105,
		0.501228, 0.858109, -0.111443,
		-0.862910, 0.486075, -0.138265,
		37.731285, 32.222797, 47.759987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.296276, 30.478142, 47.448177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690748, 30.415201, 47.427437>,  <31.927431, 30.377438, 47.414993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690748, 30.415201, 47.427437>,  <31.296276, 30.478142, 47.448177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690748, 30.415201, 47.427437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031740, 0.486631, -0.873031,
		0.162606, 0.859320, 0.484900,
		0.986180, -0.157351, -0.051854,
		31.986603, 30.367996, 47.411880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733067, 31.061823, 47.310116>,  <31.296276, 30.478142, 47.448177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733067, 31.061823, 47.310116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.978298, 30.775665, 47.176044>,  <32.125439, 30.603970, 47.095604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.978298, 30.775665, 47.176044>,  <31.733067, 31.061823, 47.310116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978298, 30.775665, 47.176044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217297, 0.560597, -0.799070,
		0.759550, 0.417060, 0.499143,
		0.613079, -0.715396, -0.335176,
		32.162220, 30.561047, 47.075493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336071, 31.384140, 47.158752>,  <31.733067, 31.061823, 47.310116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336071, 31.384140, 47.158752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.330334, 31.044422, 46.947662>,  <32.326893, 30.840591, 46.821011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.330334, 31.044422, 46.947662>,  <32.336071, 31.384140, 47.158752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330334, 31.044422, 46.947662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331743, 0.493842, -0.803782,
		0.943261, -0.186594, 0.274667,
		-0.014339, -0.849295, -0.527723,
		32.326031, 30.789633, 46.789345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860245, 31.358883, 46.764866>,  <32.336071, 31.384140, 47.158752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860245, 31.358883, 46.764866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616268, 31.121893, 46.554363>,  <32.469883, 30.979698, 46.428062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616268, 31.121893, 46.554363>,  <32.860245, 31.358883, 46.764866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616268, 31.121893, 46.554363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333813, 0.410194, -0.848711,
		0.718707, -0.693335, -0.052419,
		-0.609943, -0.592476, -0.526253,
		32.433285, 30.944151, 46.396488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287052, 31.150108, 46.235104>,  <32.860245, 31.358883, 46.764866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287052, 31.150108, 46.235104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921047, 31.062109, 46.099842>,  <32.701443, 31.009310, 46.018684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921047, 31.062109, 46.099842>,  <33.287052, 31.150108, 46.235104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921047, 31.062109, 46.099842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317525, 0.124306, -0.940067,
		0.248846, -0.967548, -0.043887,
		-0.915016, -0.219997, -0.338154,
		32.646542, 30.996111, 45.998398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401711, 30.908829, 45.627003>,  <33.287052, 31.150108, 46.235104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401711, 30.908829, 45.627003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006798, 30.969872, 45.609154>,  <32.769852, 31.006496, 45.598446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006798, 30.969872, 45.609154>,  <33.401711, 30.908829, 45.627003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006798, 30.969872, 45.609154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066694, 0.142719, -0.987514,
		-0.144334, -0.977927, -0.151082,
		-0.987279, 0.152608, -0.044623,
		32.710613, 31.015654, 45.595768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216320, 30.615017, 44.983833>,  <33.401711, 30.908829, 45.627003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216320, 30.615017, 44.983833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906788, 30.857338, 45.057789>,  <32.721069, 31.002731, 45.102161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906788, 30.857338, 45.057789>,  <33.216320, 30.615017, 44.983833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906788, 30.857338, 45.057789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073950, 0.203492, -0.976280,
		-0.629057, -0.769151, -0.112670,
		-0.773834, 0.605803, 0.184886,
		32.674637, 31.039080, 45.113255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705410, 30.504002, 44.439953>,  <33.216320, 30.615017, 44.983833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705410, 30.504002, 44.439953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.588871, 30.858257, 44.584595>,  <32.518948, 31.070810, 44.671379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.588871, 30.858257, 44.584595>,  <32.705410, 30.504002, 44.439953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588871, 30.858257, 44.584595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345423, 0.255100, -0.903110,
		-0.892074, -0.388029, 0.231597,
		-0.291352, 0.885640, 0.361602,
		32.501465, 31.123949, 44.693077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095394, 30.703417, 44.060387>,  <32.705410, 30.504002, 44.439953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095394, 30.703417, 44.060387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.223835, 31.057600, 44.194763>,  <32.300900, 31.270109, 44.275391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.223835, 31.057600, 44.194763>,  <32.095394, 30.703417, 44.060387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223835, 31.057600, 44.194763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415725, 0.450514, -0.790070,
		-0.850919, 0.114036, 0.512769,
		0.321106, 0.885456, 0.335944,
		32.320168, 31.323236, 44.295547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614521, 31.196012, 43.855595>,  <32.095394, 30.703417, 44.060387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614521, 31.196012, 43.855595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.943018, 31.407061, 43.942474>,  <32.140118, 31.533689, 43.994602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.943018, 31.407061, 43.942474>,  <31.614521, 31.196012, 43.855595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943018, 31.407061, 43.942474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298117, 0.721355, -0.625118,
		-0.486503, 0.448624, 0.749701,
		0.821244, 0.527620, 0.217199,
		32.189392, 31.565346, 44.007633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389372, 31.968357, 43.776615>,  <31.614521, 31.196012, 43.855595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389372, 31.968357, 43.776615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786751, 31.949875, 43.734810>,  <32.025177, 31.938786, 43.709724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786751, 31.949875, 43.734810>,  <31.389372, 31.968357, 43.776615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786751, 31.949875, 43.734810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047562, 0.664449, -0.745819,
		0.103905, 0.745904, 0.657899,
		0.993449, -0.046203, -0.104516,
		32.084785, 31.936014, 43.703457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583721, 32.697037, 43.757275>,  <31.389372, 31.968357, 43.776615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583721, 32.697037, 43.757275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.866520, 32.480587, 43.575138>,  <32.036201, 32.350716, 43.465855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.866520, 32.480587, 43.575138>,  <31.583721, 32.697037, 43.757275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866520, 32.480587, 43.575138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042271, 0.610372, -0.790986,
		0.705950, 0.578474, 0.408658,
		0.706999, -0.541123, -0.455345,
		32.078621, 32.318249, 43.438534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034821, 33.187660, 43.367256>,  <31.583721, 32.697037, 43.757275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034821, 33.187660, 43.367256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143116, 32.843403, 43.194748>,  <32.208092, 32.636848, 43.091244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143116, 32.843403, 43.194748>,  <32.034821, 33.187660, 43.367256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143116, 32.843403, 43.194748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067301, 0.463828, -0.883365,
		0.960298, 0.210136, 0.183498,
		0.270738, -0.860643, -0.431271,
		32.224339, 32.585209, 43.065365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537624, 33.383427, 42.866745>,  <32.034821, 33.187660, 43.367256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537624, 33.383427, 42.866745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407558, 33.024570, 42.747135>,  <32.329521, 32.809258, 42.675369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407558, 33.024570, 42.747135>,  <32.537624, 33.383427, 42.866745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407558, 33.024570, 42.747135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142370, 0.266162, -0.953356,
		0.934880, -0.352567, 0.041179,
		-0.325161, -0.897137, -0.299025,
		32.310009, 32.755428, 42.657429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236404, 33.499134, 42.986225>,  <32.537624, 33.383427, 42.866745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236404, 33.499134, 42.986225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.356388, 33.870949, 43.072006>,  <33.428379, 34.094036, 43.123474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.356388, 33.870949, 43.072006>,  <33.236404, 33.499134, 42.986225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356388, 33.870949, 43.072006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127126, -0.183853, 0.974698,
		0.945445, -0.319629, 0.063020,
		0.299956, 0.929535, 0.214456,
		33.446377, 34.149811, 43.136345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696484, 33.448471, 43.544163>,  <33.236404, 33.499134, 42.986225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696484, 33.448471, 43.544163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568260, 33.827118, 43.557774>,  <33.491325, 34.054306, 43.565941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568260, 33.827118, 43.557774>,  <33.696484, 33.448471, 43.544163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568260, 33.827118, 43.557774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010897, -0.032237, 0.999421,
		0.947164, 0.320748, 0.000019,
		-0.320563, 0.946616, 0.034029,
		33.472092, 34.111103, 43.567982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099941, 33.768360, 44.019123>,  <33.696484, 33.448471, 43.544163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099941, 33.768360, 44.019123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796703, 34.024639, 43.970470>,  <33.614761, 34.178406, 43.941277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796703, 34.024639, 43.970470>,  <34.099941, 33.768360, 44.019123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796703, 34.024639, 43.970470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024790, 0.158068, 0.987117,
		0.651673, 0.751344, -0.103948,
		-0.758095, 0.640700, -0.121634,
		33.569275, 34.216850, 43.933979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238476, 34.387363, 44.360352>,  <34.099941, 33.768360, 44.019123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238476, 34.387363, 44.360352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.839817, 34.369087, 44.333199>,  <33.600620, 34.358120, 44.316906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.839817, 34.369087, 44.333199>,  <34.238476, 34.387363, 44.360352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839817, 34.369087, 44.333199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073571, 0.137279, 0.987796,
		-0.035813, 0.989478, -0.140180,
		-0.996647, -0.045689, -0.067881,
		33.540825, 34.355381, 44.312836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087864, 34.941780, 44.757313>,  <34.238476, 34.387363, 44.360352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087864, 34.941780, 44.757313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.752357, 34.730301, 44.705223>,  <33.551056, 34.603413, 44.673969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.752357, 34.730301, 44.705223>,  <34.087864, 34.941780, 44.757313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752357, 34.730301, 44.705223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171245, 0.029118, 0.984798,
		-0.516865, 0.848313, -0.114959,
		-0.838764, -0.528694, -0.130220,
		33.500729, 34.571693, 44.666157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598522, 35.290802, 45.006454>,  <34.087864, 34.941780, 44.757313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598522, 35.290802, 45.006454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430641, 34.928795, 45.034176>,  <33.329914, 34.711590, 45.050808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430641, 34.928795, 45.034176>,  <33.598522, 35.290802, 45.006454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430641, 34.928795, 45.034176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032748, 0.091404, 0.995275,
		-0.907072, 0.415447, -0.067999,
		-0.419699, -0.905013, 0.069305,
		33.304733, 34.657291, 45.054966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972939, 35.364582, 45.327774>,  <33.598522, 35.290802, 45.006454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972939, 35.364582, 45.327774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.070366, 34.981960, 45.391869>,  <33.128822, 34.752388, 45.430325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.070366, 34.981960, 45.391869>,  <32.972939, 35.364582, 45.327774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070366, 34.981960, 45.391869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141538, 0.128389, 0.981572,
		-0.959501, -0.261757, -0.104118,
		0.243566, -0.956556, 0.160238,
		33.143436, 34.694992, 45.439941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506489, 35.167271, 45.901573>,  <32.972939, 35.364582, 45.327774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506489, 35.167271, 45.901573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796608, 34.891949, 45.896194>,  <32.970680, 34.726753, 45.892967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796608, 34.891949, 45.896194>,  <32.506489, 35.167271, 45.901573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796608, 34.891949, 45.896194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003384, -0.015964, 0.999867,
		-0.688430, -0.725244, -0.009250,
		0.725295, -0.688307, -0.013444,
		33.014198, 34.685455, 45.892162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270840, 34.491787, 46.263248>,  <32.506489, 35.167271, 45.901573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270840, 34.491787, 46.263248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.670158, 34.469254, 46.269199>,  <32.909752, 34.455734, 46.272770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.670158, 34.469254, 46.269199>,  <32.270840, 34.491787, 46.263248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670158, 34.469254, 46.269199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035805, -0.391583, 0.919446,
		-0.045972, -0.918416, -0.392935,
		0.998301, -0.056338, 0.014882,
		32.969650, 34.452351, 46.273663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405685, 33.839535, 46.667439>,  <32.270840, 34.491787, 46.263248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405685, 33.839535, 46.667439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759125, 34.026714, 46.660828>,  <32.971188, 34.139023, 46.656860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759125, 34.026714, 46.660828>,  <32.405685, 33.839535, 46.667439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759125, 34.026714, 46.660828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271802, -0.483837, 0.831880,
		0.381283, -0.739541, -0.554709,
		0.883599, 0.467953, -0.016530,
		33.024204, 34.167099, 46.655869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966125, 33.381992, 46.793636>,  <32.405685, 33.839535, 46.667439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966125, 33.381992, 46.793636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124989, 33.735092, 46.894047>,  <33.220306, 33.946953, 46.954292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124989, 33.735092, 46.894047>,  <32.966125, 33.381992, 46.793636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124989, 33.735092, 46.894047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169583, -0.339406, 0.925227,
		0.901946, -0.324891, -0.284497,
		0.397158, 0.882751, 0.251030,
		33.244137, 33.999916, 46.969357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637047, 33.240314, 47.013802>,  <32.966125, 33.381992, 46.793636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637047, 33.240314, 47.013802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518890, 33.588593, 47.171097>,  <33.447998, 33.797558, 47.265472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518890, 33.588593, 47.171097>,  <33.637047, 33.240314, 47.013802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518890, 33.588593, 47.171097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309970, -0.301996, 0.901508,
		0.903695, 0.388186, -0.180684,
		-0.295387, 0.870695, 0.393238,
		33.430275, 33.849800, 47.289070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154411, 33.380760, 47.536316>,  <33.637047, 33.240314, 47.013802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154411, 33.380760, 47.536316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.845795, 33.616066, 47.633209>,  <33.660625, 33.757248, 47.691345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.845795, 33.616066, 47.633209>,  <34.154411, 33.380760, 47.536316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845795, 33.616066, 47.633209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115555, -0.244842, 0.962652,
		0.625601, 0.770714, 0.120929,
		-0.771538, 0.588263, 0.242233,
		33.614334, 33.792545, 47.705879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330986, 33.731930, 48.146034>,  <34.154411, 33.380760, 47.536316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330986, 33.731930, 48.146034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934158, 33.778980, 48.163719>,  <33.696060, 33.807209, 48.174332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934158, 33.778980, 48.163719>,  <34.330986, 33.731930, 48.146034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934158, 33.778980, 48.163719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003223, -0.375564, 0.926791,
		0.125618, 0.919302, 0.372967,
		-0.992074, 0.117624, 0.044215,
		33.636536, 33.814266, 48.176983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673496, 34.239120, 48.476608>,  <34.330986, 33.731930, 48.146034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673496, 34.239120, 48.476608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033623, 34.277485, 48.646420>,  <35.249699, 34.300503, 48.748306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033623, 34.277485, 48.646420>,  <34.673496, 34.239120, 48.476608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033623, 34.277485, 48.646420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319832, 0.515742, -0.794806,
		-0.295180, 0.851358, 0.433657,
		0.900320, 0.095914, 0.424529,
		35.303719, 34.306259, 48.773777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992008, 34.857887, 48.100540>,  <34.673496, 34.239120, 48.476608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992008, 34.857887, 48.100540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288792, 34.680893, 48.302017>,  <35.466862, 34.574696, 48.422901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288792, 34.680893, 48.302017>,  <34.992008, 34.857887, 48.100540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288792, 34.680893, 48.302017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655262, 0.319610, -0.684457,
		0.141877, 0.837888, 0.527081,
		0.741959, -0.442485, 0.503691,
		35.511379, 34.548149, 48.453125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580818, 35.364555, 48.068302>,  <34.992008, 34.857887, 48.100540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580818, 35.364555, 48.068302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.709728, 34.989201, 48.118206>,  <35.787075, 34.763988, 48.148148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.709728, 34.989201, 48.118206>,  <35.580818, 35.364555, 48.068302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709728, 34.989201, 48.118206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673061, 0.134462, -0.727261,
		0.665679, 0.318347, 0.674927,
		0.322274, -0.938389, 0.124758,
		35.806412, 34.707684, 48.155632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282063, 35.383884, 47.958836>,  <35.580818, 35.364555, 48.068302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282063, 35.383884, 47.958836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.208061, 34.992870, 47.918430>,  <36.163658, 34.758263, 47.894188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.208061, 34.992870, 47.918430>,  <36.282063, 35.383884, 47.958836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208061, 34.992870, 47.918430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547309, -0.017116, -0.836756,
		0.816227, -0.210091, 0.538178,
		-0.185006, -0.977532, -0.101014,
		36.152557, 34.699612, 47.888126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897896, 34.998932, 48.015392>,  <36.282063, 35.383884, 47.958836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897896, 34.998932, 48.015392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632057, 34.803047, 47.789650>,  <36.472553, 34.685516, 47.654205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632057, 34.803047, 47.789650>,  <36.897896, 34.998932, 48.015392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632057, 34.803047, 47.789650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596336, 0.107472, -0.795508,
		0.450220, -0.865237, 0.220605,
		-0.664594, -0.489708, -0.564358,
		36.432678, 34.656136, 47.620342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325905, 34.699100, 47.477047>,  <36.897896, 34.998932, 48.015392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325905, 34.699100, 47.477047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958652, 34.645916, 47.327728>,  <36.738300, 34.614006, 47.238136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958652, 34.645916, 47.327728>,  <37.325905, 34.699100, 47.477047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958652, 34.645916, 47.327728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382721, -0.053326, -0.922324,
		0.102730, -0.989685, 0.099848,
		-0.918135, -0.132965, -0.373295,
		36.683212, 34.606026, 47.215740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492062, 34.306847, 46.791668>,  <37.325905, 34.699100, 47.477047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492062, 34.306847, 46.791668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.105335, 34.397156, 46.743832>,  <36.873299, 34.451340, 46.715130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.105335, 34.397156, 46.743832>,  <37.492062, 34.306847, 46.791668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105335, 34.397156, 46.743832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061694, -0.247931, -0.966811,
		-0.247931, -0.942102, 0.225774,
		0.966811, -0.225774, 0.119592,
		36.815292, 34.464890, 46.707954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149540, 33.734482, 46.482864>,  <37.492062, 34.306847, 46.791668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149540, 33.734482, 46.482864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914795, 34.049713, 46.408546>,  <36.773949, 34.238853, 46.363956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914795, 34.049713, 46.408546>,  <37.149540, 33.734482, 46.482864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914795, 34.049713, 46.408546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042691, -0.199034, -0.979062,
		-0.808562, -0.582505, 0.083161,
		-0.586860, 0.788082, -0.185799,
		36.738735, 34.286137, 46.352806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668903, 33.508129, 46.031467>,  <37.149540, 33.734482, 46.482864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668903, 33.508129, 46.031467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691437, 33.905025, 45.987118>,  <36.704956, 34.143162, 45.960506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691437, 33.905025, 45.987118>,  <36.668903, 33.508129, 46.031467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691437, 33.905025, 45.987118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017730, -0.110043, -0.993769,
		-0.998255, 0.057947, 0.011393,
		0.056332, 0.992236, -0.110878,
		36.708336, 34.202698, 45.953854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196617, 33.651424, 45.483234>,  <36.668903, 33.508129, 46.031467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196617, 33.651424, 45.483234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420967, 33.982044, 45.502113>,  <36.555576, 34.180416, 45.513439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420967, 33.982044, 45.502113>,  <36.196617, 33.651424, 45.483234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420967, 33.982044, 45.502113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066613, 0.011767, -0.997709,
		-0.825216, 0.562734, -0.048460,
		0.560875, 0.826554, 0.047196,
		36.589230, 34.230011, 45.516273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920990, 34.126766, 45.053555>,  <36.196617, 33.651424, 45.483234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920990, 34.126766, 45.053555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.298203, 34.252701, 45.096588>,  <36.524529, 34.328262, 45.122406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.298203, 34.252701, 45.096588>,  <35.920990, 34.126766, 45.053555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298203, 34.252701, 45.096588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079969, 0.099381, -0.991831,
		-0.322958, 0.943928, 0.068542,
		0.943028, 0.314839, 0.107581,
		36.581112, 34.347153, 45.128864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930431, 34.571247, 44.539970>,  <35.920990, 34.126766, 45.053555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930431, 34.571247, 44.539970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315617, 34.538464, 44.642727>,  <36.546726, 34.518791, 44.704380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315617, 34.538464, 44.642727>,  <35.930431, 34.571247, 44.539970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315617, 34.538464, 44.642727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268163, 0.191329, -0.944183,
		0.028236, 0.978098, 0.206221,
		0.962960, -0.081961, 0.256887,
		36.604504, 34.513874, 44.719791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262917, 35.092754, 44.155163>,  <35.930431, 34.571247, 44.539970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262917, 35.092754, 44.155163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.546562, 34.839832, 44.279961>,  <36.716751, 34.688080, 44.354839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.546562, 34.839832, 44.279961>,  <36.262917, 35.092754, 44.155163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546562, 34.839832, 44.279961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509549, 0.153711, -0.846600,
		0.487353, 0.759316, 0.431191,
		0.709116, -0.632306, 0.311997,
		36.759296, 34.650139, 44.373558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864761, 35.468246, 44.141598>,  <36.262917, 35.092754, 44.155163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864761, 35.468246, 44.141598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935642, 35.076939, 44.098541>,  <36.978168, 34.842152, 44.072708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935642, 35.076939, 44.098541>,  <36.864761, 35.468246, 44.141598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935642, 35.076939, 44.098541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346701, 0.164407, -0.923455,
		0.921086, 0.126317, 0.368300,
		0.177199, -0.978271, -0.107639,
		36.988800, 34.783459, 44.066250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.057362, 42.827499, 33.476646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.859030, 42.969891, 33.793488>,  <25.740030, 43.055325, 33.983593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.859030, 42.969891, 33.793488>,  <26.057362, 42.827499, 33.476646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859030, 42.969891, 33.793488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309739, -0.924626, 0.221650,
		0.811305, -0.135446, 0.568716,
		-0.495828, 0.355979, 0.792107,
		25.710281, 43.076683, 34.031120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360003, 42.553295, 34.159222>,  <26.057362, 42.827499, 33.476646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360003, 42.553295, 34.159222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.975246, 42.642685, 34.222244>,  <25.744392, 42.696320, 34.260059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.975246, 42.642685, 34.222244>,  <26.360003, 42.553295, 34.159222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975246, 42.642685, 34.222244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157976, -0.924525, 0.346839,
		0.223177, 0.308730, 0.924596,
		-0.961892, 0.223470, 0.157561,
		25.686680, 42.709724, 34.269512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179243, 42.267536, 34.890083>,  <26.360003, 42.553295, 34.159222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179243, 42.267536, 34.890083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.847483, 42.298256, 34.668743>,  <25.648426, 42.316689, 34.535938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.847483, 42.298256, 34.668743>,  <26.179243, 42.267536, 34.890083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847483, 42.298256, 34.668743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253610, -0.934321, 0.250452,
		-0.497774, 0.348060, 0.794402,
		-0.829399, 0.076800, -0.553352,
		25.598663, 42.321297, 34.502739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679081, 42.046650, 35.304947>,  <26.179243, 42.267536, 34.890083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679081, 42.046650, 35.304947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.515972, 41.996468, 34.943176>,  <25.418108, 41.966358, 34.726116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.515972, 41.996468, 34.943176>,  <25.679081, 42.046650, 35.304947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515972, 41.996468, 34.943176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282032, -0.924776, 0.255436,
		-0.868436, 0.359236, 0.341714,
		-0.407771, -0.125455, -0.904425,
		25.393641, 41.958832, 34.671848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985079, 41.816570, 35.427963>,  <25.679081, 42.046650, 35.304947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985079, 41.816570, 35.427963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.076168, 41.709484, 35.053482>,  <25.130821, 41.645233, 34.828793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.076168, 41.709484, 35.053482>,  <24.985079, 41.816570, 35.427963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076168, 41.709484, 35.053482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245649, -0.946158, 0.210810,
		-0.942230, 0.181970, -0.281229,
		0.227726, -0.267715, -0.936199,
		25.144485, 41.629169, 34.772621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.492565, 41.283340, 35.187397>,  <24.985079, 41.816570, 35.427963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.492565, 41.283340, 35.187397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.789965, 41.226025, 34.926113>,  <24.968405, 41.191635, 34.769344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.789965, 41.226025, 34.926113>,  <24.492565, 41.283340, 35.187397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789965, 41.226025, 34.926113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046397, -0.985473, 0.163372,
		-0.667126, -0.091159, -0.739346,
		0.743498, -0.143293, -0.653205,
		25.013014, 41.183037, 34.730152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.292889, 40.777302, 34.773376>,  <24.492565, 41.283340, 35.187397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.292889, 40.777302, 34.773376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.690468, 40.755745, 34.735096>,  <24.929016, 40.742809, 34.712128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.690468, 40.755745, 34.735096>,  <24.292889, 40.777302, 34.773376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.690468, 40.755745, 34.735096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036346, -0.983635, 0.176468,
		-0.103648, -0.171922, -0.979643,
		0.993950, -0.053897, -0.095703,
		24.988653, 40.739574, 34.706387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.400640, 40.102123, 34.438652>,  <24.292889, 40.777302, 34.773376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.400640, 40.102123, 34.438652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.768862, 40.187222, 34.569691>,  <24.989796, 40.238281, 34.648312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.768862, 40.187222, 34.569691>,  <24.400640, 40.102123, 34.438652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768862, 40.187222, 34.569691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259043, -0.960212, -0.104353,
		0.292360, 0.180923, -0.939038,
		0.920555, 0.212743, 0.327594,
		25.045029, 40.251045, 34.667969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945913, 39.775928, 33.943764>,  <24.400640, 40.102123, 34.438652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945913, 39.775928, 33.943764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.083279, 39.820423, 34.316792>,  <25.165697, 39.847118, 34.540607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.083279, 39.820423, 34.316792>,  <24.945913, 39.775928, 33.943764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083279, 39.820423, 34.316792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165757, -0.984553, 0.056397,
		0.924442, 0.135214, -0.356546,
		0.343412, 0.111235, 0.932574,
		25.186302, 39.853794, 34.596565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677317, 39.507057, 33.932083>,  <24.945913, 39.775928, 33.943764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677317, 39.507057, 33.932083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.545891, 39.489250, 34.309456>,  <25.467035, 39.478565, 34.535881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.545891, 39.489250, 34.309456>,  <25.677317, 39.507057, 33.932083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545891, 39.489250, 34.309456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385729, -0.918112, 0.091014,
		0.862124, 0.393813, 0.318832,
		-0.328566, -0.044517, 0.943431,
		25.447321, 39.475895, 34.592484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239126, 39.284401, 34.343174>,  <25.677317, 39.507057, 33.932083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239126, 39.284401, 34.343174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.929207, 39.194340, 34.579479>,  <25.743256, 39.140305, 34.721260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.929207, 39.194340, 34.579479>,  <26.239126, 39.284401, 34.343174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929207, 39.194340, 34.579479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453363, -0.849138, 0.270974,
		0.440627, 0.477779, 0.759984,
		-0.774797, -0.225150, 0.590760,
		25.696768, 39.126793, 34.756706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574192, 38.945045, 34.933319>,  <26.239126, 39.284401, 34.343174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574192, 38.945045, 34.933319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191591, 38.841473, 34.987068>,  <25.962030, 38.779327, 35.019318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191591, 38.841473, 34.987068>,  <26.574192, 38.945045, 34.933319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191591, 38.841473, 34.987068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290264, -0.890770, 0.349680,
		0.029155, 0.373475, 0.927182,
		-0.956502, -0.258932, 0.134377,
		25.904640, 38.763794, 35.027382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579979, 38.491482, 35.495422>,  <26.574192, 38.945045, 34.933319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579979, 38.491482, 35.495422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225481, 38.428410, 35.321201>,  <26.012783, 38.390564, 35.216667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225481, 38.428410, 35.321201>,  <26.579979, 38.491482, 35.495422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225481, 38.428410, 35.321201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069329, -0.974839, 0.211852,
		-0.458000, 0.157557, 0.874878,
		-0.886245, -0.157682, -0.435553,
		25.959608, 38.381104, 35.190536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175009, 38.100979, 35.973232>,  <26.579979, 38.491482, 35.495422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175009, 38.100979, 35.973232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012135, 38.045635, 35.612110>,  <25.914410, 38.012428, 35.395435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012135, 38.045635, 35.612110>,  <26.175009, 38.100979, 35.973232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012135, 38.045635, 35.612110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143626, -0.966462, 0.212893,
		-0.901982, 0.216353, 0.373656,
		-0.407184, -0.138359, -0.902806,
		25.889980, 38.004128, 35.341267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521881, 37.773582, 36.052612>,  <26.175009, 38.100979, 35.973232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521881, 37.773582, 36.052612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.630032, 37.675674, 35.680164>,  <25.694921, 37.616932, 35.456696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.630032, 37.675674, 35.680164>,  <25.521881, 37.773582, 36.052612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630032, 37.675674, 35.680164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167394, -0.964363, 0.204899,
		-0.948090, 0.100464, -0.301715,
		0.270378, -0.244768, -0.931120,
		25.711145, 37.602245, 35.400829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108322, 37.246834, 35.838409>,  <25.521881, 37.773582, 36.052612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108322, 37.246834, 35.838409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.440222, 37.205494, 35.619015>,  <25.639362, 37.180691, 35.487377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.440222, 37.205494, 35.619015>,  <25.108322, 37.246834, 35.838409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440222, 37.205494, 35.619015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061020, -0.960019, 0.273205,
		-0.554788, -0.260160, -0.790270,
		0.829751, -0.103348, -0.548482,
		25.689146, 37.174488, 35.454472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984579, 36.604431, 35.666100>,  <25.108322, 37.246834, 35.838409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.984579, 36.604431, 35.666100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.354151, 36.669815, 35.527744>,  <25.575893, 36.709045, 35.444729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.354151, 36.669815, 35.527744>,  <24.984579, 36.604431, 35.666100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354151, 36.669815, 35.527744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235917, -0.955187, 0.178778,
		-0.301167, -0.246779, -0.921085,
		0.923927, 0.163458, -0.345890,
		25.631329, 36.718853, 35.423977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136889, 36.063316, 35.126087>,  <24.984579, 36.604431, 35.666100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136889, 36.063316, 35.126087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.480324, 36.186165, 35.290283>,  <25.686384, 36.259876, 35.388802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.480324, 36.186165, 35.290283>,  <25.136889, 36.063316, 35.126087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480324, 36.186165, 35.290283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294419, -0.950880, 0.095631,
		0.419694, 0.038748, -0.906838,
		0.858588, 0.307126, 0.410487,
		25.737900, 36.278301, 35.413429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742517, 35.784058, 34.693100>,  <25.136889, 36.063316, 35.126087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742517, 35.784058, 34.693100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878716, 35.853794, 35.062675>,  <25.960434, 35.895638, 35.284420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878716, 35.853794, 35.062675>,  <25.742517, 35.784058, 34.693100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878716, 35.853794, 35.062675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358569, -0.932474, 0.043812,
		0.869189, 0.316379, -0.380019,
		0.340496, 0.174344, 0.923941,
		25.980864, 35.906097, 35.339859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374949, 35.359463, 34.713127>,  <25.742517, 35.784058, 34.693100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374949, 35.359463, 34.713127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308628, 35.465191, 35.093159>,  <26.268835, 35.528629, 35.321178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308628, 35.465191, 35.093159>,  <26.374949, 35.359463, 34.713127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308628, 35.465191, 35.093159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450934, -0.836471, 0.311408,
		0.877022, 0.480054, 0.019498,
		-0.165802, 0.264319, 0.950076,
		26.258888, 35.544487, 35.378181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988722, 35.237045, 35.014229>,  <26.374949, 35.359463, 34.713127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988722, 35.237045, 35.014229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718575, 35.234928, 35.309212>,  <26.556486, 35.233658, 35.486202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718575, 35.234928, 35.309212>,  <26.988722, 35.237045, 35.014229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718575, 35.234928, 35.309212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411639, -0.832411, 0.371005,
		0.611907, 0.554133, 0.564364,
		-0.675369, -0.005293, 0.737461,
		26.515965, 35.233341, 35.530449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363831, 35.021450, 35.553299>,  <26.988722, 35.237045, 35.014229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363831, 35.021450, 35.553299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.994026, 34.965305, 35.695045>,  <26.772144, 34.931618, 35.780094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.994026, 34.965305, 35.695045>,  <27.363831, 35.021450, 35.553299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994026, 34.965305, 35.695045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313107, -0.809852, 0.496089,
		0.217354, 0.569595, 0.792665,
		-0.924511, -0.140362, 0.354369,
		26.716673, 34.923195, 35.801357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011503, 35.383183, 35.474598>,  <27.363831, 35.021450, 35.553299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011503, 35.383183, 35.474598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299175, 35.390007, 35.196754>,  <28.471779, 35.394100, 35.030048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299175, 35.390007, 35.196754>,  <28.011503, 35.383183, 35.474598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299175, 35.390007, 35.196754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118076, 0.982158, 0.146370,
		0.684715, -0.187284, 0.704336,
		0.719182, 0.017057, -0.694612,
		28.514931, 35.395123, 34.988369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562914, 35.831154, 35.755749>,  <28.011503, 35.383183, 35.474598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562914, 35.831154, 35.755749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639988, 35.789173, 35.365498>,  <28.686232, 35.763985, 35.131348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639988, 35.789173, 35.365498>,  <28.562914, 35.831154, 35.755749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639988, 35.789173, 35.365498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213885, 0.974849, -0.062629,
		0.957667, -0.196605, 0.210287,
		0.192685, -0.104955, -0.975632,
		28.697794, 35.757687, 35.072807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290653, 36.071495, 35.542747>,  <28.562914, 35.831154, 35.755749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290653, 36.071495, 35.542747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068790, 36.097313, 35.210918>,  <28.935673, 36.112804, 35.011822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068790, 36.097313, 35.210918>,  <29.290653, 36.071495, 35.542747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068790, 36.097313, 35.210918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223640, 0.971866, -0.073910,
		0.801461, -0.226520, -0.553488,
		-0.554658, 0.064545, -0.829571,
		28.902393, 36.116676, 34.962048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665972, 36.483517, 35.191128>,  <29.290653, 36.071495, 35.542747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665972, 36.483517, 35.191128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.307461, 36.505432, 35.015087>,  <29.092354, 36.518581, 34.909462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.307461, 36.505432, 35.015087>,  <29.665972, 36.483517, 35.191128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307461, 36.505432, 35.015087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055115, 0.998407, 0.012052,
		0.440058, -0.013454, -0.897869,
		-0.896276, 0.054789, -0.440099,
		29.038578, 36.521870, 34.883057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752882, 37.025684, 34.657925>,  <29.665972, 36.483517, 35.191128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752882, 37.025684, 34.657925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.359507, 37.015018, 34.729633>,  <29.123482, 37.008617, 34.772659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.359507, 37.015018, 34.729633>,  <29.752882, 37.025684, 34.657925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359507, 37.015018, 34.729633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014969, 0.997687, 0.066299,
		-0.180627, 0.062517, -0.981563,
		-0.983438, -0.026669, 0.179273,
		29.064476, 37.007019, 34.783417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387989, 37.594536, 34.287045>,  <29.752882, 37.025684, 34.657925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387989, 37.594536, 34.287045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112597, 37.490322, 34.557781>,  <28.947361, 37.427795, 34.720222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112597, 37.490322, 34.557781>,  <29.387989, 37.594536, 34.287045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112597, 37.490322, 34.557781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152138, 0.964366, 0.216455,
		-0.709119, 0.046051, -0.703584,
		-0.688480, -0.260534, 0.676844,
		28.906052, 37.412163, 34.760834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812099, 38.025700, 34.176258>,  <29.387989, 37.594536, 34.287045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812099, 38.025700, 34.176258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.757799, 37.885483, 34.546921>,  <28.725220, 37.801353, 34.769318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.757799, 37.885483, 34.546921>,  <28.812099, 38.025700, 34.176258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757799, 37.885483, 34.546921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364919, 0.887249, 0.282175,
		-0.921090, -0.299850, -0.248363,
		-0.135749, -0.350541, 0.926657,
		28.717073, 37.780319, 34.824917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218084, 38.200909, 34.326794>,  <28.812099, 38.025700, 34.176258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218084, 38.200909, 34.326794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351580, 38.169674, 34.702564>,  <28.431677, 38.150932, 34.928028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351580, 38.169674, 34.702564>,  <28.218084, 38.200909, 34.326794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351580, 38.169674, 34.702564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379798, 0.900961, 0.209817,
		-0.862770, -0.426816, 0.271026,
		0.333737, -0.078088, 0.939426,
		28.451700, 38.146248, 34.984390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701387, 38.506046, 34.742725>,  <28.218084, 38.200909, 34.326794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701387, 38.506046, 34.742725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.026148, 38.508675, 34.976231>,  <28.221004, 38.510250, 35.116333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.026148, 38.508675, 34.976231>,  <27.701387, 38.506046, 34.742725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026148, 38.508675, 34.976231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211067, 0.935599, 0.283029,
		-0.544306, -0.353004, 0.760998,
		0.811899, 0.006567, 0.583760,
		28.269718, 38.510643, 35.151360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453600, 38.605427, 35.463844>,  <27.701387, 38.506046, 34.742725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453600, 38.605427, 35.463844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831959, 38.721455, 35.405689>,  <28.058975, 38.791069, 35.370796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831959, 38.721455, 35.405689>,  <27.453600, 38.605427, 35.463844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831959, 38.721455, 35.405689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216377, 0.897831, 0.383512,
		0.241780, -0.331304, 0.912020,
		0.945899, 0.290065, -0.145391,
		28.115728, 38.808475, 35.362072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576141, 39.125328, 36.027908>,  <27.453600, 38.605427, 35.463844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576141, 39.125328, 36.027908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.866175, 39.180634, 35.758053>,  <28.040195, 39.213818, 35.596142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.866175, 39.180634, 35.758053>,  <27.576141, 39.125328, 36.027908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866175, 39.180634, 35.758053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038114, 0.986193, 0.161152,
		0.687603, -0.091135, 0.720344,
		0.725086, 0.138264, -0.674636,
		28.083700, 39.222115, 35.555660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035166, 39.595528, 36.355419>,  <27.576141, 39.125328, 36.027908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035166, 39.595528, 36.355419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113655, 39.618561, 35.963871>,  <28.160749, 39.632381, 35.728943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113655, 39.618561, 35.963871>,  <28.035166, 39.595528, 36.355419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113655, 39.618561, 35.963871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022709, 0.997740, 0.063244,
		0.980296, -0.034639, 0.194472,
		0.196223, 0.057581, -0.978867,
		28.172522, 39.635834, 35.670212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724674, 39.975975, 36.370201>,  <28.035166, 39.595528, 36.355419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724674, 39.975975, 36.370201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585344, 40.025711, 35.998566>,  <28.501747, 40.055553, 35.775585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585344, 40.025711, 35.998566>,  <28.724674, 39.975975, 36.370201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585344, 40.025711, 35.998566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070281, 0.991838, 0.106391,
		0.934735, -0.028239, -0.354221,
		-0.348326, 0.124342, -0.929090,
		28.480846, 40.063015, 35.719837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227205, 40.343445, 36.022976>,  <28.724674, 39.975975, 36.370201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227205, 40.343445, 36.022976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887312, 40.421257, 35.826969>,  <28.683376, 40.467945, 35.709366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887312, 40.421257, 35.826969>,  <29.227205, 40.343445, 36.022976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887312, 40.421257, 35.826969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185721, 0.980307, 0.067122,
		0.493420, -0.033970, -0.869127,
		-0.849732, 0.194535, -0.490012,
		28.632393, 40.479618, 35.679966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352600, 40.781837, 35.523193>,  <29.227205, 40.343445, 36.022976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352600, 40.781837, 35.523193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960358, 40.850269, 35.561440>,  <28.725012, 40.891327, 35.584389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960358, 40.850269, 35.561440>,  <29.352600, 40.781837, 35.523193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960358, 40.850269, 35.561440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171195, 0.985212, -0.007051,
		-0.095407, 0.009454, -0.995393,
		-0.980607, 0.171079, 0.095615,
		28.666176, 40.901592, 35.590122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163288, 41.307709, 35.149986>,  <29.352600, 40.781837, 35.523193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163288, 41.307709, 35.149986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.840279, 41.307377, 35.385921>,  <28.646473, 41.307178, 35.527481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.840279, 41.307377, 35.385921>,  <29.163288, 41.307709, 35.149986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840279, 41.307377, 35.385921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050629, 0.996405, -0.067919,
		-0.587660, -0.084709, -0.804662,
		-0.807523, -0.000826, 0.589836,
		28.598022, 41.307129, 35.562874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666903, 41.783257, 34.920456>,  <29.163288, 41.307709, 35.149986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666903, 41.783257, 34.920456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.564400, 41.717175, 35.301411>,  <28.502897, 41.677525, 35.529984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.564400, 41.717175, 35.301411>,  <28.666903, 41.783257, 34.920456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564400, 41.717175, 35.301411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049064, 0.986240, 0.157872,
		-0.965363, -0.006272, -0.260836,
		-0.256257, -0.165202, 0.952387,
		28.487522, 41.667614, 35.587128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207832, 42.290367, 35.030495>,  <28.666903, 41.783257, 34.920456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207832, 42.290367, 35.030495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307072, 42.177864, 35.401299>,  <28.366615, 42.110363, 35.623779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307072, 42.177864, 35.401299>,  <28.207832, 42.290367, 35.030495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307072, 42.177864, 35.401299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035147, 0.953681, 0.298761,
		-0.968097, -0.106703, 0.226721,
		0.248098, -0.281261, 0.927006,
		28.381500, 42.093487, 35.679401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706499, 42.719570, 35.430695>,  <28.207832, 42.290367, 35.030495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706499, 42.719570, 35.430695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993015, 42.622581, 35.692421>,  <28.164925, 42.564388, 35.849457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993015, 42.622581, 35.692421>,  <27.706499, 42.719570, 35.430695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993015, 42.622581, 35.692421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003683, 0.936359, 0.351024,
		-0.697790, -0.253845, 0.669814,
		0.716293, -0.242474, 0.654317,
		28.207903, 42.549839, 35.888718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495945, 42.992085, 36.001984>,  <27.706499, 42.719570, 35.430695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495945, 42.992085, 36.001984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887074, 42.949806, 36.074303>,  <28.121752, 42.924438, 36.117695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887074, 42.949806, 36.074303>,  <27.495945, 42.992085, 36.001984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887074, 42.949806, 36.074303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020435, 0.907327, 0.419928,
		-0.208431, -0.406921, 0.889366,
		0.977824, -0.105700, 0.180800,
		28.180420, 42.918095, 36.128544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.319813, 32.535851, 48.322739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928139, 32.496944, 48.251476>,  <37.693134, 32.473602, 48.208717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928139, 32.496944, 48.251476>,  <38.319813, 32.535851, 48.322739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928139, 32.496944, 48.251476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190945, 0.143705, 0.971025,
		-0.068846, 0.984829, -0.159286,
		-0.979183, -0.097266, -0.178155,
		37.634384, 32.467766, 48.198029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950745, 33.096180, 48.665462>,  <38.319813, 32.535851, 48.322739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950745, 33.096180, 48.665462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691906, 32.795654, 48.613625>,  <37.536602, 32.615337, 48.582523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.691906, 32.795654, 48.613625>,  <37.950745, 33.096180, 48.665462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691906, 32.795654, 48.613625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187276, -0.008137, 0.982274,
		-0.739050, 0.659895, -0.135438,
		-0.647095, -0.751314, -0.129596,
		37.497776, 32.570259, 48.574745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382793, 33.210079, 49.187199>,  <37.950745, 33.096180, 48.665462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382793, 33.210079, 49.187199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308533, 32.832630, 49.077568>,  <37.263977, 32.606163, 49.011791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308533, 32.832630, 49.077568>,  <37.382793, 33.210079, 49.187199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308533, 32.832630, 49.077568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346025, -0.198273, 0.917036,
		-0.919673, 0.265090, -0.289705,
		-0.185656, -0.943618, -0.274074,
		37.252834, 32.549545, 48.995346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713383, 33.101158, 49.430656>,  <37.382793, 33.210079, 49.187199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713383, 33.101158, 49.430656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884964, 32.745068, 49.369339>,  <36.987911, 32.531414, 49.332550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884964, 32.745068, 49.369339>,  <36.713383, 33.101158, 49.430656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884964, 32.745068, 49.369339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444862, -0.355877, 0.821857,
		-0.786191, -0.284344, -0.548682,
		0.428954, -0.890224, -0.153294,
		37.013649, 32.478001, 49.323353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188686, 32.631256, 49.402596>,  <36.713383, 33.101158, 49.430656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188686, 32.631256, 49.402596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519600, 32.428905, 49.500320>,  <36.718147, 32.307495, 49.558956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519600, 32.428905, 49.500320>,  <36.188686, 32.631256, 49.402596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519600, 32.428905, 49.500320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496987, -0.456266, 0.738123,
		-0.261929, -0.732057, -0.628877,
		0.827283, -0.505879, 0.244314,
		36.767784, 32.277142, 49.573616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964832, 31.983126, 49.725777>,  <36.188686, 32.631256, 49.402596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964832, 31.983126, 49.725777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354378, 31.996038, 49.815701>,  <36.588104, 32.003784, 49.869656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354378, 31.996038, 49.815701>,  <35.964832, 31.983126, 49.725777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354378, 31.996038, 49.815701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192129, -0.410735, 0.891282,
		0.121108, -0.911183, -0.393799,
		0.973868, 0.032282, 0.224808,
		36.646538, 32.005722, 49.883144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194489, 31.266459, 49.891460>,  <35.964832, 31.983126, 49.725777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194489, 31.266459, 49.891460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.474197, 31.492180, 50.066998>,  <36.642021, 31.627613, 50.172318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.474197, 31.492180, 50.066998>,  <36.194489, 31.266459, 49.891460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474197, 31.492180, 50.066998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105864, -0.525368, 0.844264,
		0.706974, -0.636827, -0.307635,
		0.699272, 0.564305, 0.438838,
		36.683979, 31.661470, 50.198650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726608, 30.762220, 50.148384>,  <36.194489, 31.266459, 49.891460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726608, 30.762220, 50.148384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764389, 31.095558, 50.366234>,  <36.787056, 31.295561, 50.496944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764389, 31.095558, 50.366234>,  <36.726608, 30.762220, 50.148384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764389, 31.095558, 50.366234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051139, -0.542286, 0.838636,
		0.994215, -0.107060, -0.008601,
		0.094448, 0.833345, 0.544624,
		36.792725, 31.345562, 50.529621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313599, 30.632740, 50.701622>,  <36.726608, 30.762220, 50.148384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313599, 30.632740, 50.701622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.064739, 30.925203, 50.813580>,  <36.915424, 31.100681, 50.880753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.064739, 30.925203, 50.813580>,  <37.313599, 30.632740, 50.701622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064739, 30.925203, 50.813580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242287, -0.519768, 0.819230,
		0.744467, 0.441867, 0.500522,
		-0.622146, 0.731160, 0.279892,
		36.878094, 31.144552, 50.897549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479889, 30.675558, 51.376041>,  <37.313599, 30.632740, 50.701622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479889, 30.675558, 51.376041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143330, 30.890667, 51.354698>,  <36.941395, 31.019732, 51.341892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143330, 30.890667, 51.354698>,  <37.479889, 30.675558, 51.376041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143330, 30.890667, 51.354698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278318, -0.346578, 0.895781,
		0.463233, 0.768561, 0.441282,
		-0.841400, 0.537772, -0.053358,
		36.890911, 31.051998, 51.338692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456921, 31.002905, 52.043617>,  <37.479889, 30.675558, 51.376041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456921, 31.002905, 52.043617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079910, 31.020966, 51.911186>,  <36.853706, 31.031801, 51.831730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079910, 31.020966, 51.911186>,  <37.456921, 31.002905, 52.043617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079910, 31.020966, 51.911186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331618, -0.247846, 0.910276,
		-0.040955, 0.967747, 0.248574,
		-0.942524, 0.045151, -0.331073,
		36.797153, 31.034512, 51.811863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087631, 31.387234, 52.466270>,  <37.456921, 31.002905, 52.043617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087631, 31.387234, 52.466270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797192, 31.181431, 52.283813>,  <36.622929, 31.057949, 52.174339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797192, 31.181431, 52.283813>,  <37.087631, 31.387234, 52.466270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797192, 31.181431, 52.283813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431651, -0.175303, 0.884842,
		-0.535219, 0.839377, -0.094799,
		-0.726097, -0.514505, -0.456144,
		36.579361, 31.027079, 52.146969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514328, 31.583649, 52.842255>,  <37.087631, 31.387234, 52.466270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514328, 31.583649, 52.842255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420742, 31.235409, 52.669136>,  <36.364590, 31.026464, 52.565266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420742, 31.235409, 52.669136>,  <36.514328, 31.583649, 52.842255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420742, 31.235409, 52.669136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303890, -0.357368, 0.883142,
		-0.923532, 0.338148, -0.180955,
		-0.233965, -0.870600, -0.432801,
		36.350552, 30.974228, 52.539295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843609, 31.300638, 52.971119>,  <36.514328, 31.583649, 52.842255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843609, 31.300638, 52.971119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062984, 30.972849, 52.904579>,  <36.194611, 30.776175, 52.864655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062984, 30.972849, 52.904579>,  <35.843609, 31.300638, 52.971119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062984, 30.972849, 52.904579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544796, -0.501101, 0.672381,
		-0.634356, -0.278136, -0.721271,
		0.548443, -0.819474, -0.166349,
		36.227516, 30.727007, 52.854675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490810, 31.222609, 53.576126>,  <35.843609, 31.300638, 52.971119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490810, 31.222609, 53.576126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169014, 31.455515, 53.623051>,  <34.975937, 31.595259, 53.651207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169014, 31.455515, 53.623051>,  <35.490810, 31.222609, 53.576126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169014, 31.455515, 53.623051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254437, 0.516301, -0.817738,
		-0.536709, -0.628014, -0.563509,
		-0.804491, 0.582264, 0.117313,
		34.927666, 31.630194, 53.658245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093765, 31.291136, 52.992126>,  <35.490810, 31.222609, 53.576126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093765, 31.291136, 52.992126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028194, 31.626556, 53.199959>,  <34.988853, 31.827808, 53.324657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028194, 31.626556, 53.199959>,  <35.093765, 31.291136, 52.992126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028194, 31.626556, 53.199959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250942, 0.544824, -0.800122,
		-0.954021, -0.000779, -0.299739,
		-0.163928, 0.838550, 0.519578,
		34.979015, 31.878122, 53.355831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597645, 31.679432, 52.548008>,  <35.093765, 31.291136, 52.992126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597645, 31.679432, 52.548008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757397, 31.937630, 52.808418>,  <34.853249, 32.092548, 52.964664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757397, 31.937630, 52.808418>,  <34.597645, 31.679432, 52.548008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757397, 31.937630, 52.808418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050911, 0.693405, -0.718748,
		-0.915371, 0.320197, 0.244069,
		0.399379, 0.645495, 0.651024,
		34.877209, 32.131279, 53.003727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331947, 32.289757, 52.397217>,  <34.597645, 31.679432, 52.548008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331947, 32.289757, 52.397217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632965, 32.432438, 52.618645>,  <34.813576, 32.518047, 52.751503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632965, 32.432438, 52.618645>,  <34.331947, 32.289757, 52.397217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632965, 32.432438, 52.618645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203496, 0.673505, -0.710620,
		-0.626313, 0.647422, 0.434255,
		0.752544, 0.356701, 0.553573,
		34.858727, 32.539448, 52.784718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196369, 33.022022, 52.515503>,  <34.331947, 32.289757, 52.397217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196369, 33.022022, 52.515503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587708, 32.958858, 52.569012>,  <34.822510, 32.920959, 52.601116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587708, 32.958858, 52.569012>,  <34.196369, 33.022022, 52.515503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587708, 32.958858, 52.569012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206955, 0.742778, -0.636750,
		0.001188, 0.650649, 0.759378,
		0.978350, -0.157914, 0.133773,
		34.881214, 32.911484, 52.609142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426170, 33.669998, 52.645859>,  <34.196369, 33.022022, 52.515503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426170, 33.669998, 52.645859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725979, 33.443729, 52.508320>,  <34.905865, 33.307968, 52.425797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725979, 33.443729, 52.508320>,  <34.426170, 33.669998, 52.645859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725979, 33.443729, 52.508320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143814, 0.646165, -0.749525,
		0.646165, 0.512338, 0.565668,
		0.749525, -0.565668, -0.343848,
		34.950836, 33.274029, 52.405167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009357, 34.096855, 52.375683>,  <34.426170, 33.669998, 52.645859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009357, 34.096855, 52.375683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.045963, 33.751514, 52.177193>,  <35.067928, 33.544308, 52.058098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.045963, 33.751514, 52.177193>,  <35.009357, 34.096855, 52.375683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045963, 33.751514, 52.177193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259918, 0.501756, -0.825035,
		0.961284, -0.053475, 0.270320,
		0.091516, -0.863354, -0.496229,
		35.073418, 33.492508, 52.028324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436592, 34.386860, 51.969364>,  <35.009357, 34.096855, 52.375683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436592, 34.386860, 51.969364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345470, 34.037312, 51.797573>,  <35.290798, 33.827583, 51.694500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345470, 34.037312, 51.797573>,  <35.436592, 34.386860, 51.969364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345470, 34.037312, 51.797573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407464, 0.315044, -0.857158,
		0.884352, -0.370260, 0.284305,
		-0.227803, -0.873874, -0.429477,
		35.277130, 33.775150, 51.668732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069157, 34.070671, 51.632477>,  <35.436592, 34.386860, 51.969364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069157, 34.070671, 51.632477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751652, 33.914898, 51.445595>,  <35.561150, 33.821434, 51.333466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751652, 33.914898, 51.445595>,  <36.069157, 34.070671, 51.632477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751652, 33.914898, 51.445595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386991, 0.269230, -0.881903,
		0.469229, -0.880826, -0.062997,
		-0.793764, -0.389435, -0.467203,
		35.513523, 33.798069, 51.305435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318558, 33.912300, 50.956455>,  <36.069157, 34.070671, 51.632477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318558, 33.912300, 50.956455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.922794, 33.904140, 50.898960>,  <35.685337, 33.899246, 50.864464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.922794, 33.904140, 50.898960>,  <36.318558, 33.912300, 50.956455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922794, 33.904140, 50.898960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138931, 0.154243, -0.978216,
		0.042123, -0.987822, -0.149775,
		-0.989406, -0.020397, -0.143736,
		35.625973, 33.898022, 50.855839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133255, 33.535522, 50.265884>,  <36.318558, 33.912300, 50.956455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133255, 33.535522, 50.265884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810322, 33.756351, 50.349247>,  <35.616562, 33.888847, 50.399265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810322, 33.756351, 50.349247>,  <36.133255, 33.535522, 50.265884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810322, 33.756351, 50.349247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097759, 0.223165, -0.969866,
		-0.581945, -0.803377, -0.126198,
		-0.807331, 0.552072, 0.208407,
		35.568123, 33.921974, 50.411770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615356, 33.212116, 49.998024>,  <36.133255, 33.535522, 50.265884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615356, 33.212116, 49.998024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514225, 33.598400, 50.021599>,  <35.453545, 33.830170, 50.035744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514225, 33.598400, 50.021599>,  <35.615356, 33.212116, 49.998024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514225, 33.598400, 50.021599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043485, 0.049513, -0.997826,
		-0.966532, -0.254846, 0.029475,
		-0.252832, 0.965713, 0.058938,
		35.438374, 33.888115, 50.039280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115925, 33.271568, 49.407310>,  <35.615356, 33.212116, 49.998024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115925, 33.271568, 49.407310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210136, 33.645851, 49.512371>,  <35.266663, 33.870419, 49.575409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210136, 33.645851, 49.512371>,  <35.115925, 33.271568, 49.407310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210136, 33.645851, 49.512371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013391, 0.273354, -0.961820,
		-0.971776, 0.223016, 0.076911,
		0.235525, 0.935704, 0.262652,
		35.280792, 33.926563, 49.591167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737427, 33.630329, 48.942776>,  <35.115925, 33.271568, 49.407310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737427, 33.630329, 48.942776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044556, 33.851265, 49.072617>,  <35.228832, 33.983826, 49.150520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044556, 33.851265, 49.072617>,  <34.737427, 33.630329, 48.942776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044556, 33.851265, 49.072617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193616, 0.282916, -0.939400,
		-0.610704, 0.784141, 0.110287,
		0.767824, 0.552341, 0.324600,
		35.274902, 34.016968, 49.169998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030380, 34.065807, 48.901749>,  <34.737427, 33.630329, 48.942776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030380, 34.065807, 48.901749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740894, 33.856846, 48.721378>,  <33.567204, 33.731468, 48.613155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740894, 33.856846, 48.721378>,  <34.030380, 34.065807, 48.901749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740894, 33.856846, 48.721378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199612, -0.467028, 0.861417,
		-0.660604, 0.713428, 0.233715,
		-0.723710, -0.522404, -0.450930,
		33.523781, 33.700127, 48.586098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596130, 33.895973, 49.417675>,  <34.030380, 34.065807, 48.901749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596130, 33.895973, 49.417675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453510, 33.628788, 49.156387>,  <33.367939, 33.468475, 48.999615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453510, 33.628788, 49.156387>,  <33.596130, 33.895973, 49.417675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453510, 33.628788, 49.156387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354640, -0.550083, 0.756068,
		-0.864352, 0.501233, -0.040756,
		-0.356547, -0.667963, -0.653223,
		33.346546, 33.428398, 48.960419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880276, 33.834251, 49.533768>,  <33.596130, 33.895973, 49.417675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880276, 33.834251, 49.533768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006420, 33.498043, 49.357555>,  <33.082108, 33.296318, 49.251827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006420, 33.498043, 49.357555>,  <32.880276, 33.834251, 49.533768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006420, 33.498043, 49.357555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444395, -0.540977, 0.714043,
		-0.838486, -0.029415, -0.544129,
		0.315365, -0.840523, -0.440529,
		33.101028, 33.245888, 49.225395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302406, 33.340691, 49.518070>,  <32.880276, 33.834251, 49.533768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302406, 33.340691, 49.518070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621975, 33.105347, 49.468185>,  <32.813717, 32.964138, 49.438255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621975, 33.105347, 49.468185>,  <32.302406, 33.340691, 49.518070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621975, 33.105347, 49.468185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243974, -0.506571, 0.826960,
		-0.549728, -0.630250, -0.548256,
		0.798922, -0.588363, -0.124712,
		32.861652, 32.928837, 49.430771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099934, 32.757530, 49.752075>,  <32.302406, 33.340691, 49.518070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099934, 32.757530, 49.752075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.494946, 32.701199, 49.780224>,  <32.731953, 32.667400, 49.797112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.494946, 32.701199, 49.780224>,  <32.099934, 32.757530, 49.752075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494946, 32.701199, 49.780224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127708, -0.455203, 0.881181,
		-0.092068, -0.879179, -0.467512,
		0.987529, -0.140834, 0.070369,
		32.791203, 32.658947, 49.801334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296070, 31.942860, 49.802425>,  <32.099934, 32.757530, 49.752075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296070, 31.942860, 49.802425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600105, 32.147926, 49.962143>,  <32.782528, 32.270966, 50.057972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600105, 32.147926, 49.962143>,  <32.296070, 31.942860, 49.802425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600105, 32.147926, 49.962143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006565, -0.608379, 0.793620,
		0.649785, -0.605843, -0.459057,
		0.760090, 0.512669, 0.399293,
		32.828133, 32.301727, 50.081932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659733, 31.319553, 50.181240>,  <32.296070, 31.942860, 49.802425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659733, 31.319553, 50.181240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.794846, 31.665421, 50.329971>,  <32.875916, 31.872940, 50.419209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.794846, 31.665421, 50.329971>,  <32.659733, 31.319553, 50.181240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794846, 31.665421, 50.329971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001862, -0.394430, 0.918924,
		0.941221, -0.311092, -0.131623,
		0.337786, 0.864666, 0.371825,
		32.896183, 31.924820, 50.441521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992580, 30.696590, 49.961723>,  <32.659733, 31.319553, 50.181240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992580, 30.696590, 49.961723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848888, 30.325907, 50.005852>,  <32.762672, 30.103497, 50.032330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848888, 30.325907, 50.005852>,  <32.992580, 30.696590, 49.961723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848888, 30.325907, 50.005852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182306, -0.046250, -0.982154,
		0.915271, -0.372927, -0.152330,
		-0.359226, -0.926707, 0.110318,
		32.741119, 30.047895, 50.038948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412495, 30.194719, 49.489311>,  <32.992580, 30.696590, 49.961723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412495, 30.194719, 49.489311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053436, 30.034410, 49.562653>,  <32.838001, 29.938225, 49.606659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053436, 30.034410, 49.562653>,  <33.412495, 30.194719, 49.489311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053436, 30.034410, 49.562653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161801, -0.087302, -0.982954,
		0.409947, -0.912009, 0.013520,
		-0.897643, -0.400772, 0.183353,
		32.784142, 29.914179, 49.617661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456383, 29.695848, 49.029037>,  <33.412495, 30.194719, 49.489311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456383, 29.695848, 49.029037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068340, 29.726671, 49.121086>,  <32.835514, 29.745165, 49.176315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068340, 29.726671, 49.121086>,  <33.456383, 29.695848, 49.029037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068340, 29.726671, 49.121086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238275, -0.122597, -0.963429,
		-0.046028, -0.989460, 0.137294,
		-0.970106, 0.077058, 0.230120,
		32.777309, 29.749788, 49.190121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038914, 29.196297, 48.614048>,  <33.456383, 29.695848, 49.029037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038914, 29.196297, 48.614048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771336, 29.468811, 48.732948>,  <32.610786, 29.632320, 48.804287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771336, 29.468811, 48.732948>,  <33.038914, 29.196297, 48.614048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771336, 29.468811, 48.732948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414276, -0.009689, -0.910100,
		-0.617159, -0.731952, 0.288723,
		-0.668947, 0.681287, 0.297250,
		32.570652, 29.673197, 48.822124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415733, 28.980145, 48.305866>,  <33.038914, 29.196297, 48.614048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415733, 28.980145, 48.305866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399689, 29.370544, 48.391483>,  <32.390060, 29.604784, 48.442852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399689, 29.370544, 48.391483>,  <32.415733, 28.980145, 48.305866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399689, 29.370544, 48.391483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215525, 0.200723, -0.955646,
		-0.975674, -0.084463, 0.202301,
		-0.040110, 0.976000, 0.214044,
		32.387657, 29.663345, 48.455696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812557, 29.166594, 47.952114>,  <32.415733, 28.980145, 48.305866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812557, 29.166594, 47.952114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019650, 29.504129, 48.008522>,  <32.143906, 29.706652, 48.042366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019650, 29.504129, 48.008522>,  <31.812557, 29.166594, 47.952114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019650, 29.504129, 48.008522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155193, 0.254721, -0.954480,
		-0.841350, 0.472280, 0.262835,
		0.517732, 0.843842, 0.141015,
		32.174969, 29.757282, 48.050827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438868, 29.644358, 47.614300>,  <31.812557, 29.166594, 47.952114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438868, 29.644358, 47.614300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.798679, 29.812515, 47.661819>,  <32.014568, 29.913410, 47.690331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.798679, 29.812515, 47.661819>,  <31.438868, 29.644358, 47.614300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798679, 29.812515, 47.661819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099064, 0.461148, -0.881776,
		-0.425478, 0.781416, 0.456463,
		0.899530, 0.420396, 0.118798,
		32.068539, 29.938635, 47.697460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.985191, 27.161804, 51.106571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.345257, 27.045513, 50.976841>,  <36.561295, 26.975739, 50.899002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.345257, 27.045513, 50.976841>,  <35.985191, 27.161804, 51.106571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345257, 27.045513, 50.976841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408125, 0.823078, 0.394939,
		0.152127, -0.487874, 0.859556,
		0.900162, -0.290726, -0.324326,
		36.615307, 26.958296, 50.879543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632526, 27.616161, 50.750492>,  <35.985191, 27.161804, 51.106571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632526, 27.616161, 50.750492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721848, 27.981884, 50.885654>,  <35.775440, 28.201317, 50.966751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721848, 27.981884, 50.885654>,  <35.632526, 27.616161, 50.750492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721848, 27.981884, 50.885654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128536, 0.316008, -0.940009,
		-0.966237, 0.253342, -0.046954,
		0.223306, 0.914307, 0.337902,
		35.788837, 28.256176, 50.987026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164928, 28.132357, 50.402912>,  <35.632526, 27.616161, 50.750492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164928, 28.132357, 50.402912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.519745, 28.286182, 50.505100>,  <35.732635, 28.378479, 50.566414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.519745, 28.286182, 50.505100>,  <35.164928, 28.132357, 50.402912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519745, 28.286182, 50.505100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165962, 0.250762, -0.953717,
		-0.430829, 0.888385, 0.158613,
		0.887042, 0.384565, 0.255473,
		35.785858, 28.401552, 50.581741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152153, 28.742855, 49.994991>,  <35.164928, 28.132357, 50.402912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152153, 28.742855, 49.994991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.534275, 28.696640, 50.103836>,  <35.763550, 28.668911, 50.169144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.534275, 28.696640, 50.103836>,  <35.152153, 28.742855, 49.994991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534275, 28.696640, 50.103836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291393, 0.212836, -0.932626,
		0.049839, 0.970233, 0.236991,
		0.955304, -0.115539, 0.272112,
		35.820866, 28.661978, 50.185471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500347, 29.155161, 49.597210>,  <35.152153, 28.742855, 49.994991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500347, 29.155161, 49.597210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.812656, 28.928251, 49.701969>,  <36.000042, 28.792105, 49.764824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.812656, 28.928251, 49.701969>,  <35.500347, 29.155161, 49.597210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812656, 28.928251, 49.701969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431306, 0.186062, -0.882812,
		0.452069, 0.802234, 0.389942,
		0.780775, -0.567276, 0.261895,
		36.046890, 28.758068, 49.780537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178246, 29.521929, 49.321983>,  <35.500347, 29.155161, 49.597210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178246, 29.521929, 49.321983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.281265, 29.139908, 49.380695>,  <36.343075, 28.910696, 49.415924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.281265, 29.139908, 49.380695>,  <36.178246, 29.521929, 49.321983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281265, 29.139908, 49.380695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647468, 0.057810, -0.759897,
		0.717256, 0.290746, 0.633254,
		0.257545, -0.955052, 0.146784,
		36.358528, 28.853392, 49.424732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996731, 29.417801, 49.307823>,  <36.178246, 29.521929, 49.321983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996731, 29.417801, 49.307823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842907, 29.055365, 49.237263>,  <36.750614, 28.837902, 49.194927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842907, 29.055365, 49.237263>,  <36.996731, 29.417801, 49.307823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842907, 29.055365, 49.237263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549412, -0.071101, -0.832521,
		0.741798, -0.417066, 0.525159,
		-0.384556, -0.906091, -0.176398,
		36.727539, 28.783537, 49.184341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498932, 29.100338, 48.993114>,  <36.996731, 29.417801, 49.307823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498932, 29.100338, 48.993114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.181427, 28.874670, 48.902206>,  <36.990925, 28.739269, 48.847660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.181427, 28.874670, 48.902206>,  <37.498932, 29.100338, 48.993114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181427, 28.874670, 48.902206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332241, -0.089191, -0.938968,
		0.509466, -0.820827, 0.258237,
		-0.793763, -0.564170, -0.227273,
		36.943298, 28.705420, 48.834026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797245, 28.524200, 48.548672>,  <37.498932, 29.100338, 48.993114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797245, 28.524200, 48.548672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407692, 28.556059, 48.463619>,  <37.173962, 28.575174, 48.412586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407692, 28.556059, 48.463619>,  <37.797245, 28.524200, 48.548672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407692, 28.556059, 48.463619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200590, -0.137008, -0.970048,
		-0.106386, -0.987363, 0.117454,
		-0.973882, 0.079639, -0.212631,
		37.115528, 28.579952, 48.399830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737980, 28.055279, 48.022125>,  <37.797245, 28.524200, 48.548672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737980, 28.055279, 48.022125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.409000, 28.277462, 47.973076>,  <37.211613, 28.410772, 47.943645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.409000, 28.277462, 47.973076>,  <37.737980, 28.055279, 48.022125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409000, 28.277462, 47.973076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154844, 0.011189, -0.987875,
		-0.547352, -0.831469, -0.095212,
		-0.822453, 0.555459, -0.122624,
		37.162266, 28.444099, 47.936287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232208, 27.731861, 47.478630>,  <37.737980, 28.055279, 48.022125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232208, 27.731861, 47.478630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.159283, 28.125156, 47.477703>,  <37.115528, 28.361134, 47.477146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.159283, 28.125156, 47.477703>,  <37.232208, 27.731861, 47.478630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159283, 28.125156, 47.477703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083935, 0.013211, -0.996384,
		-0.979651, -0.181852, -0.084937,
		-0.182316, 0.983237, -0.002321,
		37.104588, 28.420128, 47.477005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896618, 27.860685, 46.828037>,  <37.232208, 27.731861, 47.478630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896618, 27.860685, 46.828037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.015041, 28.221844, 46.952698>,  <37.086098, 28.438540, 47.027493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.015041, 28.221844, 46.952698>,  <36.896618, 27.860685, 46.828037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015041, 28.221844, 46.952698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235451, 0.247225, -0.939916,
		-0.925694, 0.351652, -0.139394,
		0.296062, 0.902896, 0.311651,
		37.103859, 28.492712, 47.046192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150402, 28.122967, 46.853504>,  <36.896618, 27.860685, 46.828037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150402, 28.122967, 46.853504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.776417, 28.071609, 46.721230>,  <35.552025, 28.040796, 46.641865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.776417, 28.071609, 46.721230>,  <36.150402, 28.122967, 46.853504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776417, 28.071609, 46.721230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302880, -0.196342, 0.932584,
		-0.184664, 0.972093, 0.144686,
		-0.934967, -0.128392, -0.330685,
		35.495926, 28.033092, 46.622025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842896, 28.352871, 47.320827>,  <36.150402, 28.122967, 46.853504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842896, 28.352871, 47.320827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.555672, 28.129469, 47.154713>,  <35.383339, 27.995428, 47.055042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.555672, 28.129469, 47.154713>,  <35.842896, 28.352871, 47.320827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555672, 28.129469, 47.154713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283774, -0.309899, 0.907433,
		-0.635504, 0.769437, 0.064035,
		-0.718058, -0.558506, -0.415288,
		35.340256, 27.961918, 47.030125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244240, 28.418577, 47.767483>,  <35.842896, 28.352871, 47.320827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244240, 28.418577, 47.767483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.160603, 28.092794, 47.550987>,  <35.110420, 27.897326, 47.421089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.160603, 28.092794, 47.550987>,  <35.244240, 28.418577, 47.767483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160603, 28.092794, 47.550987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391037, -0.437662, 0.809655,
		-0.896309, 0.380939, -0.226971,
		-0.209092, -0.814455, -0.541241,
		35.097874, 27.848457, 47.388615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449669, 28.267759, 47.899288>,  <35.244240, 28.418577, 47.767483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449669, 28.267759, 47.899288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.638531, 27.944328, 47.758846>,  <34.751846, 27.750269, 47.674580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.638531, 27.944328, 47.758846>,  <34.449669, 28.267759, 47.899288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638531, 27.944328, 47.758846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458735, -0.565490, 0.685407,
		-0.752751, -0.162551, -0.637920,
		0.472152, -0.808577, -0.351106,
		34.780178, 27.701756, 47.653515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897167, 27.723886, 47.872494>,  <34.449669, 28.267759, 47.899288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897167, 27.723886, 47.872494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.250801, 27.537399, 47.885391>,  <34.462982, 27.425507, 47.893131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.250801, 27.537399, 47.885391>,  <33.897167, 27.723886, 47.872494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250801, 27.537399, 47.885391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377533, -0.671830, 0.637270,
		-0.275444, -0.575572, -0.769966,
		0.884081, -0.466219, 0.032246,
		34.516026, 27.397533, 47.895065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808784, 27.014854, 47.714973>,  <33.897167, 27.723886, 47.872494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808784, 27.014854, 47.714973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146599, 27.051798, 47.925961>,  <34.349289, 27.073963, 48.052555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146599, 27.051798, 47.925961>,  <33.808784, 27.014854, 47.714973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146599, 27.051798, 47.925961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345072, -0.659368, 0.667952,
		0.409486, -0.746126, -0.524992,
		0.844539, 0.092357, 0.527469,
		34.399960, 27.079504, 48.084202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851475, 26.391468, 48.098667>,  <33.808784, 27.014854, 47.714973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851475, 26.391468, 48.098667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128056, 26.630560, 48.260960>,  <34.294003, 26.774015, 48.358334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128056, 26.630560, 48.260960>,  <33.851475, 26.391468, 48.098667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128056, 26.630560, 48.260960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132569, -0.447101, 0.884605,
		0.710158, -0.665447, -0.229907,
		0.691449, 0.597730, 0.405730,
		34.335491, 26.809879, 48.382679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272743, 25.882727, 48.459713>,  <33.851475, 26.391468, 48.098667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272743, 25.882727, 48.459713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346947, 26.242897, 48.617104>,  <34.391468, 26.459000, 48.711536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346947, 26.242897, 48.617104>,  <34.272743, 25.882727, 48.459713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346947, 26.242897, 48.617104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318349, -0.323761, 0.890973,
		0.929646, -0.290542, 0.226590,
		0.185504, 0.900424, 0.393477,
		34.402599, 26.513023, 48.735146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703266, 25.772297, 48.994152>,  <34.272743, 25.882727, 48.459713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703266, 25.772297, 48.994152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.529240, 26.124155, 49.071037>,  <34.424824, 26.335270, 49.117168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.529240, 26.124155, 49.071037>,  <34.703266, 25.772297, 48.994152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529240, 26.124155, 49.071037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103294, -0.260822, 0.959845,
		0.894454, 0.397741, 0.204336,
		-0.435065, 0.879644, 0.192209,
		34.398720, 26.388048, 49.128700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860172, 25.923944, 49.605431>,  <34.703266, 25.772297, 48.994152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860172, 25.923944, 49.605431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552021, 26.178885, 49.598423>,  <34.367130, 26.331848, 49.594219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552021, 26.178885, 49.598423>,  <34.860172, 25.923944, 49.605431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552021, 26.178885, 49.598423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094123, -0.086505, 0.991795,
		0.630604, 0.765705, 0.126631,
		-0.770376, 0.637349, -0.017520,
		34.320908, 26.370089, 49.593166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952438, 26.405327, 50.195328>,  <34.860172, 25.923944, 49.605431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952438, 26.405327, 50.195328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.563049, 26.449615, 50.115246>,  <34.329414, 26.476189, 50.067196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.563049, 26.449615, 50.115246>,  <34.952438, 26.405327, 50.195328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563049, 26.449615, 50.115246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183065, 0.147906, 0.971911,
		0.137222, 0.982784, -0.123714,
		-0.973477, 0.110720, -0.200209,
		34.271008, 26.482832, 50.055183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795681, 27.051662, 50.531315>,  <34.952438, 26.405327, 50.195328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795681, 27.051662, 50.531315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.455734, 26.846727, 50.481934>,  <34.251766, 26.723766, 50.452305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.455734, 26.846727, 50.481934>,  <34.795681, 27.051662, 50.531315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455734, 26.846727, 50.481934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277146, 0.235254, 0.931583,
		-0.448240, 0.825934, -0.341926,
		-0.849865, -0.512336, -0.123454,
		34.200775, 26.693026, 50.444897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230232, 27.446335, 50.732967>,  <34.795681, 27.051662, 50.531315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230232, 27.446335, 50.732967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078758, 27.078043, 50.770603>,  <33.987873, 26.857067, 50.793186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078758, 27.078043, 50.770603>,  <34.230232, 27.446335, 50.732967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078758, 27.078043, 50.770603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264105, 0.204935, 0.942470,
		-0.887042, 0.332054, -0.320776,
		-0.378689, -0.920729, 0.094089,
		33.965153, 26.801825, 50.798828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596989, 27.562891, 50.980545>,  <34.230232, 27.446335, 50.732967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596989, 27.562891, 50.980545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.660938, 27.181597, 51.083138>,  <33.699310, 26.952820, 51.144695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.660938, 27.181597, 51.083138>,  <33.596989, 27.562891, 50.980545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660938, 27.181597, 51.083138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312597, 0.197565, 0.929113,
		-0.936335, -0.228719, -0.266392,
		0.159876, -0.953234, 0.256484,
		33.708900, 26.895626, 51.160084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626457, 27.577591, 51.773022>,  <33.596989, 27.562891, 50.980545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626457, 27.577591, 51.773022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.395168, 27.850969, 51.951263>,  <33.256397, 28.014996, 52.058208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.395168, 27.850969, 51.951263>,  <33.626457, 27.577591, 51.773022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395168, 27.850969, 51.951263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117245, 0.610100, -0.783602,
		-0.807412, -0.400850, -0.432903,
		-0.578221, 0.683445, 0.445605,
		33.221703, 28.056004, 52.084946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070419, 27.782227, 51.433746>,  <33.626457, 27.577591, 51.773022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070419, 27.782227, 51.433746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.049355, 28.118004, 51.650105>,  <33.036716, 28.319469, 51.779919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.049355, 28.118004, 51.650105>,  <33.070419, 27.782227, 51.433746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049355, 28.118004, 51.650105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264009, 0.510670, -0.818239,
		-0.963082, -0.185888, 0.194729,
		-0.052658, 0.839441, 0.540893,
		33.033558, 28.369837, 51.812374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538212, 28.209627, 51.029247>,  <33.070419, 27.782227, 51.433746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538212, 28.209627, 51.029247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.737064, 28.444914, 51.284389>,  <32.856377, 28.586086, 51.437473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.737064, 28.444914, 51.284389>,  <32.538212, 28.209627, 51.029247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737064, 28.444914, 51.284389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077344, 0.762250, -0.642645,
		-0.864220, 0.270146, 0.424435,
		0.497134, 0.588214, 0.637857,
		32.886204, 28.621378, 51.475746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090141, 28.781925, 51.282055>,  <32.538212, 28.209627, 51.029247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090141, 28.781925, 51.282055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.472359, 28.899218, 51.294430>,  <32.701687, 28.969593, 51.301853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.472359, 28.899218, 51.294430>,  <32.090141, 28.781925, 51.282055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472359, 28.899218, 51.294430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187013, 0.683823, -0.705275,
		-0.227965, 0.668133, 0.708259,
		0.955541, 0.293232, 0.030939,
		32.759022, 28.987186, 51.303711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060005, 29.472261, 51.397446>,  <32.090141, 28.781925, 51.282055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060005, 29.472261, 51.397446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.429070, 29.407955, 51.257240>,  <32.650509, 29.369371, 51.173119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.429070, 29.407955, 51.257240>,  <32.060005, 29.472261, 51.397446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429070, 29.407955, 51.257240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159692, 0.668065, -0.726765,
		0.351004, 0.726529, 0.590722,
		0.922656, -0.160764, -0.350514,
		32.705868, 29.359726, 51.152084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360886, 30.116409, 51.335091>,  <32.060005, 29.472261, 51.397446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360886, 30.116409, 51.335091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.580303, 29.881199, 51.097324>,  <32.711952, 29.740072, 50.954666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.580303, 29.881199, 51.097324>,  <32.360886, 30.116409, 51.335091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580303, 29.881199, 51.097324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160446, 0.623679, -0.765037,
		0.820586, 0.515025, 0.247766,
		0.548539, -0.588025, -0.594416,
		32.744865, 29.704792, 50.918999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728786, 30.526587, 50.863956>,  <32.360886, 30.116409, 51.335091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728786, 30.526587, 50.863956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745224, 30.172041, 50.679493>,  <32.755085, 29.959312, 50.568813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745224, 30.172041, 50.679493>,  <32.728786, 30.526587, 50.863956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745224, 30.172041, 50.679493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249059, 0.437894, -0.863839,
		0.967616, 0.150352, -0.202764,
		0.041091, -0.886365, -0.461160,
		32.757553, 29.906132, 50.541145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232040, 31.069168, 50.670475>,  <32.728786, 30.526587, 50.863956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232040, 31.069168, 50.670475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.134502, 31.443365, 50.772770>,  <33.075981, 31.667883, 50.834145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.134502, 31.443365, 50.772770>,  <33.232040, 31.069168, 50.670475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134502, 31.443365, 50.772770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015397, -0.267393, 0.963465,
		0.969693, 0.230995, 0.079605,
		-0.243841, 0.935491, 0.255733,
		33.061352, 31.724012, 50.849491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595608, 31.335476, 51.184807>,  <33.232040, 31.069168, 50.670475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595608, 31.335476, 51.184807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.282665, 31.577559, 51.243656>,  <33.094898, 31.722807, 51.278965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.282665, 31.577559, 51.243656>,  <33.595608, 31.335476, 51.184807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282665, 31.577559, 51.243656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039306, -0.187767, 0.981427,
		0.621589, 0.773609, 0.123113,
		-0.782357, 0.605205, 0.147122,
		33.047958, 31.759119, 51.287792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689159, 31.620434, 51.864651>,  <33.595608, 31.335476, 51.184807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689159, 31.620434, 51.864651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.297192, 31.673437, 51.805058>,  <33.062012, 31.705238, 51.769302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.297192, 31.673437, 51.805058>,  <33.689159, 31.620434, 51.864651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297192, 31.673437, 51.805058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174726, -0.210736, 0.961801,
		0.096048, 0.968521, 0.229657,
		-0.979921, 0.132507, -0.148985,
		33.003216, 31.713188, 51.760361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466248, 32.230167, 52.368801>,  <33.689159, 31.620434, 51.864651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466248, 32.230167, 52.368801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129471, 32.050758, 52.248829>,  <32.927402, 31.943113, 52.176846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129471, 32.050758, 52.248829>,  <33.466248, 32.230167, 52.368801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129471, 32.050758, 52.248829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286014, -0.100347, 0.952957,
		-0.457517, 0.888122, -0.043797,
		-0.841946, -0.448521, -0.299926,
		32.876888, 31.916203, 52.158852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861362, 32.588009, 52.672153>,  <33.466248, 32.230167, 52.368801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861362, 32.588009, 52.672153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698277, 32.235100, 52.578033>,  <32.600426, 32.023354, 52.521561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698277, 32.235100, 52.578033>,  <32.861362, 32.588009, 52.672153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698277, 32.235100, 52.578033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391414, -0.063950, 0.917990,
		-0.824965, 0.466374, -0.319261,
		-0.407710, -0.882273, -0.235301,
		32.575962, 31.970417, 52.507442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090286, 32.640751, 52.853611>,  <32.861362, 32.588009, 52.672153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090286, 32.640751, 52.853611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.220848, 32.263783, 52.824505>,  <32.299187, 32.037601, 52.807041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.220848, 32.263783, 52.824505>,  <32.090286, 32.640751, 52.853611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220848, 32.263783, 52.824505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339592, -0.188762, 0.921437,
		-0.882119, -0.276055, -0.381653,
		0.326408, -0.942424, -0.072764,
		32.318771, 31.981056, 52.802677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521990, 32.252872, 52.961372>,  <32.090286, 32.640751, 52.853611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521990, 32.252872, 52.961372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.844797, 32.025772, 53.026340>,  <32.038483, 31.889511, 53.065323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.844797, 32.025772, 53.026340>,  <31.521990, 32.252872, 52.961372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844797, 32.025772, 53.026340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326279, -0.199452, 0.923992,
		-0.492203, -0.798673, -0.346206,
		0.807019, -0.567751, 0.162420,
		32.086903, 31.855448, 53.075066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262333, 31.553280, 53.234268>,  <31.521990, 32.252872, 52.961372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262333, 31.553280, 53.234268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.642031, 31.612326, 53.345367>,  <31.869850, 31.647753, 53.412029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.642031, 31.612326, 53.345367>,  <31.262333, 31.553280, 53.234268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642031, 31.612326, 53.345367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278175, -0.018177, 0.960358,
		0.146813, -0.988878, 0.023809,
		0.949244, 0.147616, 0.277750,
		31.926804, 31.656610, 53.428692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343782, 31.141527, 53.870052>,  <31.262333, 31.553280, 53.234268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343782, 31.141527, 53.870052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648472, 31.400625, 53.875771>,  <31.831285, 31.556084, 53.879200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648472, 31.400625, 53.875771>,  <31.343782, 31.141527, 53.870052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648472, 31.400625, 53.875771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200944, 0.215217, 0.955669,
		0.615953, -0.730828, 0.294096,
		0.761724, 0.647744, 0.014292,
		31.876989, 31.594948, 53.880058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.773361, 34.679798, 38.322018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123409, 34.719498, 38.511467>,  <35.333439, 34.743317, 38.625137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123409, 34.719498, 38.511467>,  <34.773361, 34.679798, 38.322018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123409, 34.719498, 38.511467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405539, -0.383596, 0.829694,
		0.264024, -0.918153, -0.295443,
		0.875117, 0.099245, 0.473625,
		35.385944, 34.749271, 38.653553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843147, 34.038963, 38.692490>,  <34.773361, 34.679798, 38.322018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843147, 34.038963, 38.692490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057999, 34.331558, 38.860497>,  <35.186909, 34.507114, 38.961300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057999, 34.331558, 38.860497>,  <34.843147, 34.038963, 38.692490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057999, 34.331558, 38.860497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452786, -0.170088, 0.875246,
		0.711673, -0.660298, 0.239850,
		0.537128, 0.731490, 0.420021,
		35.219135, 34.551006, 38.986504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146694, 33.726543, 39.322708>,  <34.843147, 34.038963, 38.692490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146694, 33.726543, 39.322708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163380, 34.123585, 39.368309>,  <35.173389, 34.361809, 39.395672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163380, 34.123585, 39.368309>,  <35.146694, 33.726543, 39.322708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163380, 34.123585, 39.368309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338601, -0.093307, 0.936292,
		0.940005, -0.077657, 0.332205,
		0.041712, 0.992604, 0.114004,
		35.175892, 34.421368, 39.402512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485237, 33.844345, 39.863213>,  <35.146694, 33.726543, 39.322708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485237, 33.844345, 39.863213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298981, 34.194633, 39.812160>,  <35.187229, 34.404808, 39.781528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298981, 34.194633, 39.812160>,  <35.485237, 33.844345, 39.863213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298981, 34.194633, 39.812160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235028, 0.016676, 0.971846,
		0.853197, 0.482524, 0.198054,
		-0.465636, 0.875724, -0.127634,
		35.159290, 34.457352, 39.773869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734535, 34.319592, 40.335629>,  <35.485237, 33.844345, 39.863213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734535, 34.319592, 40.335629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371571, 34.456223, 40.237709>,  <35.153790, 34.538200, 40.178959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371571, 34.456223, 40.237709>,  <35.734535, 34.319592, 40.335629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371571, 34.456223, 40.237709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216755, 0.118618, 0.968993,
		0.360022, 0.932339, -0.033597,
		-0.907415, 0.341577, -0.244794,
		35.099346, 34.558697, 40.164272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582249, 34.921486, 40.781906>,  <35.734535, 34.319592, 40.335629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582249, 34.921486, 40.781906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224541, 34.805119, 40.645882>,  <35.009914, 34.735298, 40.564266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224541, 34.805119, 40.645882>,  <35.582249, 34.921486, 40.781906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224541, 34.805119, 40.645882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355459, 0.000082, 0.934692,
		-0.271894, 0.956747, -0.103484,
		-0.894272, -0.290921, -0.340062,
		34.956261, 34.717842, 40.543861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129013, 35.297836, 41.170574>,  <35.582249, 34.921486, 40.781906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129013, 35.297836, 41.170574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862892, 35.024830, 41.049545>,  <34.703220, 34.861027, 40.976929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862892, 35.024830, 41.049545>,  <35.129013, 35.297836, 41.170574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862892, 35.024830, 41.049545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480002, 0.080634, 0.873554,
		-0.571814, 0.726412, -0.381254,
		-0.665301, -0.682513, -0.302572,
		34.663303, 34.820076, 40.958775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475273, 35.552063, 41.387798>,  <35.129013, 35.297836, 41.170574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475273, 35.552063, 41.387798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393070, 35.168755, 41.308323>,  <34.343750, 34.938770, 41.260639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393070, 35.168755, 41.308323>,  <34.475273, 35.552063, 41.387798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393070, 35.168755, 41.308323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444642, -0.089432, 0.891232,
		-0.871815, 0.271496, -0.407711,
		-0.205504, -0.958275, -0.198687,
		34.331421, 34.881271, 41.248718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808399, 35.517761, 41.505699>,  <34.475273, 35.552063, 41.387798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808399, 35.517761, 41.505699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924324, 35.135937, 41.533501>,  <33.993877, 34.906841, 41.550182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924324, 35.135937, 41.533501>,  <33.808399, 35.517761, 41.505699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924324, 35.135937, 41.533501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556610, -0.109023, 0.823589,
		-0.778585, -0.277371, -0.562912,
		0.289811, -0.954557, 0.069503,
		34.011269, 34.849571, 41.554352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314537, 35.116432, 41.627201>,  <33.808399, 35.517761, 41.505699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314537, 35.116432, 41.627201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614376, 34.910900, 41.794090>,  <33.794281, 34.787579, 41.894222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614376, 34.910900, 41.794090>,  <33.314537, 35.116432, 41.627201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614376, 34.910900, 41.794090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561612, -0.160173, 0.811749,
		-0.350278, -0.842803, -0.408642,
		0.749598, -0.513836, 0.417223,
		33.839256, 34.756748, 41.919258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919613, 34.539341, 41.966709>,  <33.314537, 35.116432, 41.627201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919613, 34.539341, 41.966709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280315, 34.519318, 42.138447>,  <33.496735, 34.507305, 42.241489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280315, 34.519318, 42.138447>,  <32.919613, 34.539341, 41.966709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280315, 34.519318, 42.138447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428385, -0.236056, 0.872218,
		0.057692, -0.970450, -0.234306,
		0.901753, -0.050053, 0.429344,
		33.550842, 34.504303, 42.267250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871685, 33.998474, 42.444046>,  <32.919613, 34.539341, 41.966709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871685, 33.998474, 42.444046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190216, 34.208973, 42.563328>,  <33.381336, 34.335274, 42.634895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190216, 34.208973, 42.563328>,  <32.871685, 33.998474, 42.444046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190216, 34.208973, 42.563328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205200, -0.228734, 0.951616,
		0.568995, -0.818990, -0.074162,
		0.796328, 0.526247, 0.298206,
		33.429115, 34.366848, 42.652790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061325, 33.226215, 42.287842>,  <32.871685, 33.998474, 42.444046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061325, 33.226215, 42.287842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733570, 33.001816, 42.240704>,  <32.536919, 32.867176, 42.212421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733570, 33.001816, 42.240704>,  <33.061325, 33.226215, 42.287842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733570, 33.001816, 42.240704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108800, 0.049648, -0.992823,
		0.562827, -0.826324, 0.020356,
		-0.819383, -0.561003, -0.117848,
		32.487755, 32.833515, 42.205349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222607, 32.728367, 41.776230>,  <33.061325, 33.226215, 42.287842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222607, 32.728367, 41.776230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823082, 32.708954, 41.778053>,  <32.583366, 32.697308, 41.779148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823082, 32.708954, 41.778053>,  <33.222607, 32.728367, 41.776230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823082, 32.708954, 41.778053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011461, 0.142843, -0.989679,
		0.047376, -0.988555, -0.143229,
		-0.998811, -0.048528, 0.004563,
		32.523438, 32.694393, 41.779423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997231, 32.204517, 41.213600>,  <33.222607, 32.728367, 41.776230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997231, 32.204517, 41.213600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711227, 32.471684, 41.296207>,  <32.539623, 32.631985, 41.345772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711227, 32.471684, 41.296207>,  <32.997231, 32.204517, 41.213600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711227, 32.471684, 41.296207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220701, 0.064647, -0.973197,
		-0.663365, -0.741423, 0.101186,
		-0.715009, 0.667916, 0.206517,
		32.496723, 32.672058, 41.358162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619629, 32.097790, 40.760521>,  <32.997231, 32.204517, 41.213600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619629, 32.097790, 40.760521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456757, 32.451000, 40.853870>,  <32.359032, 32.662926, 40.909878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456757, 32.451000, 40.853870>,  <32.619629, 32.097790, 40.760521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456757, 32.451000, 40.853870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305214, 0.109269, -0.945994,
		-0.860841, -0.456420, 0.225020,
		-0.407183, 0.883029, 0.233369,
		32.334602, 32.715908, 40.923882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021782, 32.113937, 40.388649>,  <32.619629, 32.097790, 40.760521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021782, 32.113937, 40.388649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110588, 32.496952, 40.462231>,  <32.163872, 32.726761, 40.506382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110588, 32.496952, 40.462231>,  <32.021782, 32.113937, 40.388649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110588, 32.496952, 40.462231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292855, 0.245437, -0.924119,
		-0.930025, 0.151293, 0.334909,
		0.222012, 0.957534, 0.183956,
		32.177193, 32.784214, 40.517418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407745, 32.615337, 40.166740>,  <32.021782, 32.113937, 40.388649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407745, 32.615337, 40.166740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722164, 32.861782, 40.186874>,  <31.910816, 33.009651, 40.198956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722164, 32.861782, 40.186874>,  <31.407745, 32.615337, 40.166740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722164, 32.861782, 40.186874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290534, 0.440085, -0.849656,
		-0.545638, 0.653244, 0.524929,
		0.786047, 0.616115, 0.050337,
		31.957977, 33.046616, 40.201977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132641, 33.221531, 39.756409>,  <31.407745, 32.615337, 40.166740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132641, 33.221531, 39.756409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530148, 33.260754, 39.777626>,  <31.768652, 33.284286, 39.790356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530148, 33.260754, 39.777626>,  <31.132641, 33.221531, 39.756409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530148, 33.260754, 39.777626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013194, 0.369022, -0.929327,
		-0.110704, 0.924233, 0.365428,
		0.993766, 0.098058, 0.053047,
		31.828278, 33.290173, 39.793541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270256, 33.811886, 39.442429>,  <31.132641, 33.221531, 39.756409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270256, 33.811886, 39.442429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626442, 33.630444, 39.427940>,  <31.840153, 33.521576, 39.419247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626442, 33.630444, 39.427940>,  <31.270256, 33.811886, 39.442429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626442, 33.630444, 39.427940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087342, 0.248480, -0.964691,
		0.446592, 0.855860, 0.260881,
		0.890464, -0.453609, -0.036216,
		31.893581, 33.494362, 39.417076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625269, 34.310265, 39.107330>,  <31.270256, 33.811886, 39.442429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625269, 34.310265, 39.107330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794094, 33.949402, 39.071602>,  <31.895390, 33.732883, 39.050167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794094, 33.949402, 39.071602>,  <31.625269, 34.310265, 39.107330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794094, 33.949402, 39.071602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159202, 0.170748, -0.972368,
		0.892479, 0.396179, 0.215692,
		0.422061, -0.902157, -0.089317,
		31.920712, 33.678753, 39.044807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343296, 34.354904, 38.809402>,  <31.625269, 34.310265, 39.107330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343296, 34.354904, 38.809402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212982, 33.984035, 38.735405>,  <32.134796, 33.761513, 38.691006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212982, 33.984035, 38.735405>,  <32.343296, 34.354904, 38.809402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212982, 33.984035, 38.735405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101484, 0.160240, -0.981847,
		0.939983, -0.338640, 0.041890,
		-0.325781, -0.927171, -0.184990,
		32.115250, 33.705883, 38.679909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600498, 34.419189, 38.246307>,  <32.343296, 34.354904, 38.809402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600498, 34.419189, 38.246307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378376, 34.087227, 38.224777>,  <32.245102, 33.888050, 38.211861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378376, 34.087227, 38.224777>,  <32.600498, 34.419189, 38.246307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378376, 34.087227, 38.224777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149284, 0.163138, -0.975244,
		0.818138, -0.533524, -0.214483,
		-0.555306, -0.829903, -0.053823,
		32.211784, 33.838257, 38.208630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911854, 33.840656, 37.760952>,  <32.600498, 34.419189, 38.246307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911854, 33.840656, 37.760952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513130, 33.813465, 37.777679>,  <32.273895, 33.797150, 37.787716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513130, 33.813465, 37.777679>,  <32.911854, 33.840656, 37.760952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513130, 33.813465, 37.777679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047923, 0.090878, -0.994708,
		0.063803, -0.993540, -0.093845,
		-0.996811, -0.067963, 0.041816,
		32.214088, 33.793072, 37.790222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851498, 33.731152, 37.093616>,  <32.911854, 33.840656, 37.760952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851498, 33.731152, 37.093616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474632, 33.721573, 37.227333>,  <32.248512, 33.715828, 37.307564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474632, 33.721573, 37.227333>,  <32.851498, 33.731152, 37.093616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474632, 33.721573, 37.227333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334498, 0.005141, -0.942382,
		0.020851, -0.999700, -0.012854,
		-0.942166, -0.023950, 0.334290,
		32.191982, 33.714390, 37.327621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370518, 33.213623, 36.632820>,  <32.851498, 33.731152, 37.093616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370518, 33.213623, 36.632820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123154, 33.467808, 36.817760>,  <31.974735, 33.620319, 36.928722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123154, 33.467808, 36.817760>,  <32.370518, 33.213623, 36.632820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123154, 33.467808, 36.817760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483694, 0.155908, -0.861239,
		-0.619366, -0.756230, 0.210953,
		-0.618406, 0.635459, 0.462348,
		31.937632, 33.658447, 36.956467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263683, 33.217922, 37.316956>,  <32.370518, 33.213623, 36.632820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263683, 33.217922, 37.316956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120029, 32.850502, 37.250874>,  <32.033836, 32.630051, 37.211224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120029, 32.850502, 37.250874>,  <32.263683, 33.217922, 37.316956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120029, 32.850502, 37.250874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765814, -0.188862, -0.614703,
		0.533435, -0.347272, 0.771265,
		-0.359132, -0.918550, -0.165201,
		32.012291, 32.574936, 37.201313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761948, 32.708500, 37.425800>,  <32.263683, 33.217922, 37.316956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761948, 32.708500, 37.425800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499199, 32.518532, 37.191544>,  <32.341549, 32.404552, 37.050991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499199, 32.518532, 37.191544>,  <32.761948, 32.708500, 37.425800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499199, 32.518532, 37.191544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723307, -0.177528, -0.667317,
		0.212954, -0.861938, 0.460124,
		-0.656870, -0.474918, -0.585640,
		32.302139, 32.376057, 37.015850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019844, 32.088650, 37.324696>,  <32.761948, 32.708500, 37.425800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019844, 32.088650, 37.324696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789757, 32.151627, 37.003613>,  <32.651703, 32.189415, 36.810963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789757, 32.151627, 37.003613>,  <33.019844, 32.088650, 37.324696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789757, 32.151627, 37.003613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738691, -0.321534, -0.592412,
		-0.351370, -0.933717, 0.068648,
		-0.575217, 0.157446, -0.802705,
		32.617191, 32.198860, 36.762802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329525, 31.481337, 37.747322>,  <33.019844, 32.088650, 37.324696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329525, 31.481337, 37.747322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698769, 31.634472, 37.761776>,  <33.920315, 31.726353, 37.770447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698769, 31.634472, 37.761776>,  <33.329525, 31.481337, 37.747322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698769, 31.634472, 37.761776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170779, -0.492343, 0.853483,
		0.344536, -0.781686, -0.519867,
		0.923109, 0.382838, 0.036134,
		33.975700, 31.749323, 37.772617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740028, 30.953104, 37.978127>,  <33.329525, 31.481337, 37.747322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740028, 30.953104, 37.978127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991127, 31.260166, 38.029724>,  <34.141785, 31.444405, 38.060684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991127, 31.260166, 38.029724>,  <33.740028, 30.953104, 37.978127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991127, 31.260166, 38.029724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407659, -0.465378, 0.785644,
		0.663137, -0.440597, -0.605081,
		0.627745, 0.767657, 0.128996,
		34.179451, 31.490463, 38.068424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340755, 30.661898, 38.022278>,  <33.740028, 30.953104, 37.978127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340755, 30.661898, 38.022278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389801, 31.014776, 38.204132>,  <34.419228, 31.226503, 38.313244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389801, 31.014776, 38.204132>,  <34.340755, 30.661898, 38.022278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389801, 31.014776, 38.204132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421470, -0.461017, 0.780914,
		0.898514, 0.095860, -0.428349,
		0.122618, 0.882198, 0.454633,
		34.426586, 31.279436, 38.340523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034142, 30.694557, 38.298786>,  <34.340755, 30.661898, 38.022278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034142, 30.694557, 38.298786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791279, 30.922812, 38.519962>,  <34.645561, 31.059765, 38.652668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791279, 30.922812, 38.519962>,  <35.034142, 30.694557, 38.298786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791279, 30.922812, 38.519962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411876, -0.369075, 0.833152,
		0.679503, 0.733591, -0.010947,
		-0.607152, 0.570638, 0.552936,
		34.609135, 31.094004, 38.685844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451027, 31.083143, 38.817326>,  <35.034142, 30.694557, 38.298786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451027, 31.083143, 38.817326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081318, 31.080591, 38.969994>,  <34.859493, 31.079060, 39.061596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081318, 31.080591, 38.969994>,  <35.451027, 31.083143, 38.817326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081318, 31.080591, 38.969994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359309, -0.352112, 0.864242,
		0.128876, 0.935936, 0.327741,
		-0.924277, -0.006380, 0.381669,
		34.804035, 31.078678, 39.084496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630093, 31.274832, 39.467796>,  <35.451027, 31.083143, 38.817326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630093, 31.274832, 39.467796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251888, 31.146051, 39.487236>,  <35.024967, 31.068783, 39.498901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251888, 31.146051, 39.487236>,  <35.630093, 31.274832, 39.467796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251888, 31.146051, 39.487236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168176, -0.355086, 0.919582,
		-0.278804, 0.877645, 0.389881,
		-0.945508, -0.321952, 0.048599,
		34.968235, 31.049465, 39.501816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246750, 31.620699, 39.984119>,  <35.630093, 31.274832, 39.467796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246750, 31.620699, 39.984119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088482, 31.255121, 39.948017>,  <34.993519, 31.035774, 39.926353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088482, 31.255121, 39.948017>,  <35.246750, 31.620699, 39.984119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088482, 31.255121, 39.948017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274435, -0.211451, 0.938069,
		-0.876429, 0.346400, 0.334485,
		-0.395674, -0.913945, -0.090257,
		34.969780, 30.980938, 39.920940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896667, 31.542587, 40.637108>,  <35.246750, 31.620699, 39.984119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896667, 31.542587, 40.637108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920498, 31.176592, 40.477486>,  <34.934795, 30.956995, 40.381710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920498, 31.176592, 40.477486>,  <34.896667, 31.542587, 40.637108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920498, 31.176592, 40.477486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330121, -0.359214, 0.872918,
		-0.942056, -0.183745, 0.280655,
		0.059579, -0.914988, -0.399058,
		34.938374, 30.902096, 40.357769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538792, 31.173262, 41.102139>,  <34.896667, 31.542587, 40.637108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538792, 31.173262, 41.102139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719910, 30.881628, 40.896843>,  <34.828579, 30.706648, 40.773666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719910, 30.881628, 40.896843>,  <34.538792, 31.173262, 41.102139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719910, 30.881628, 40.896843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109591, -0.525756, 0.843546,
		-0.884855, -0.438199, -0.158158,
		0.452794, -0.729083, -0.513240,
		34.855747, 30.662903, 40.742870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219978, 30.589479, 41.244942>,  <34.538792, 31.173262, 41.102139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219978, 30.589479, 41.244942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572628, 30.459614, 41.107925>,  <34.784218, 30.381695, 41.025715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572628, 30.459614, 41.107925>,  <34.219978, 30.589479, 41.244942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572628, 30.459614, 41.107925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145984, -0.502608, 0.852100,
		-0.448808, -0.801237, -0.395716,
		0.881624, -0.324661, -0.342541,
		34.837116, 30.362215, 41.005161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359737, 29.849705, 41.446949>,  <34.219978, 30.589479, 41.244942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359737, 29.849705, 41.446949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730709, 29.969559, 41.357414>,  <34.953293, 30.041471, 41.303692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730709, 29.969559, 41.357414>,  <34.359737, 29.849705, 41.446949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730709, 29.969559, 41.357414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333312, -0.390652, 0.858076,
		0.169666, -0.870408, -0.462172,
		0.927425, 0.299634, -0.223837,
		35.008938, 30.059448, 41.290264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847744, 29.249065, 41.539612>,  <34.359737, 29.849705, 41.446949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847744, 29.249065, 41.539612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065197, 29.584347, 41.556927>,  <35.195671, 29.785515, 41.567314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065197, 29.584347, 41.556927>,  <34.847744, 29.249065, 41.539612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065197, 29.584347, 41.556927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415609, -0.313642, 0.853755,
		0.729197, -0.446143, -0.518873,
		0.543637, 0.838204, 0.043286,
		35.228287, 29.835808, 41.569912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541786, 29.104761, 41.659901>,  <34.847744, 29.249065, 41.539612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541786, 29.104761, 41.659901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504181, 29.489655, 41.762093>,  <35.481617, 29.720591, 41.823406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504181, 29.489655, 41.762093>,  <35.541786, 29.104761, 41.659901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504181, 29.489655, 41.762093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432450, -0.191670, 0.881050,
		0.896743, 0.193309, -0.398099,
		-0.094011, 0.962234, 0.255476,
		35.475979, 29.778324, 41.838734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123123, 29.361614, 42.057564>,  <35.541786, 29.104761, 41.659901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123123, 29.361614, 42.057564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860958, 29.651848, 42.141434>,  <35.703659, 29.825987, 42.191753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860958, 29.651848, 42.141434>,  <36.123123, 29.361614, 42.057564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860958, 29.651848, 42.141434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291625, -0.012961, 0.956445,
		0.696697, 0.688013, -0.203103,
		-0.655415, 0.725582, 0.209672,
		35.664333, 29.869522, 42.204334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509811, 29.690256, 42.664555>,  <36.123123, 29.361614, 42.057564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509811, 29.690256, 42.664555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125759, 29.801956, 42.659294>,  <35.895329, 29.868977, 42.656136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125759, 29.801956, 42.659294>,  <36.509811, 29.690256, 42.664555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125759, 29.801956, 42.659294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000270, 0.046130, 0.998935,
		0.279559, 0.959110, -0.044216,
		-0.960128, 0.279250, -0.013155,
		35.837719, 29.885731, 42.655346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357925, 30.307312, 43.077751>,  <36.509811, 29.690256, 42.664555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357925, 30.307312, 43.077751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006977, 30.119387, 43.038784>,  <35.796406, 30.006632, 43.015404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006977, 30.119387, 43.038784>,  <36.357925, 30.307312, 43.077751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006977, 30.119387, 43.038784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050834, -0.110878, 0.992533,
		-0.477105, 0.875776, 0.073399,
		-0.877375, -0.469811, -0.097420,
		35.743763, 29.978443, 43.009560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990047, 30.530394, 43.674225>,  <36.357925, 30.307312, 43.077751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990047, 30.530394, 43.674225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805569, 30.202131, 43.539272>,  <35.694881, 30.005175, 43.458302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805569, 30.202131, 43.539272>,  <35.990047, 30.530394, 43.674225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805569, 30.202131, 43.539272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108627, -0.325155, 0.939401,
		-0.880625, 0.469894, 0.060814,
		-0.461193, -0.820654, -0.337383,
		35.667210, 29.955935, 43.438057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372738, 30.484364, 44.089890>,  <35.990047, 30.530394, 43.674225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372738, 30.484364, 44.089890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435680, 30.120468, 43.936207>,  <35.473446, 29.902132, 43.843998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435680, 30.120468, 43.936207>,  <35.372738, 30.484364, 44.089890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435680, 30.120468, 43.936207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050749, -0.395993, 0.916850,
		-0.986237, -0.124776, -0.108481,
		0.157359, -0.909737, -0.384210,
		35.482887, 29.847548, 43.820942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889549, 30.089207, 44.348816>,  <35.372738, 30.484364, 44.089890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889549, 30.089207, 44.348816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156864, 29.817049, 44.228508>,  <35.317253, 29.653755, 44.156322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156864, 29.817049, 44.228508>,  <34.889549, 30.089207, 44.348816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156864, 29.817049, 44.228508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112153, -0.491843, 0.863431,
		-0.735405, -0.543283, -0.404998,
		0.668283, -0.680393, -0.300773,
		35.357349, 29.612932, 44.138275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592953, 29.378704, 44.408161>,  <34.889549, 30.089207, 44.348816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592953, 29.378704, 44.408161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984589, 29.298134, 44.419594>,  <35.219570, 29.249792, 44.426453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984589, 29.298134, 44.419594>,  <34.592953, 29.378704, 44.408161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984589, 29.298134, 44.419594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148739, -0.612868, 0.776060,
		-0.138801, -0.764082, -0.630011,
		0.979087, -0.201426, 0.028582,
		35.278316, 29.237705, 44.428169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659180, 28.685837, 44.419952>,  <34.592953, 29.378704, 44.408161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659180, 28.685837, 44.419952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004761, 28.822292, 44.568123>,  <35.212109, 28.904165, 44.657024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004761, 28.822292, 44.568123>,  <34.659180, 28.685837, 44.419952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004761, 28.822292, 44.568123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044255, -0.681309, 0.730657,
		0.501628, -0.647645, -0.573520,
		0.863951, 0.341137, 0.370425,
		35.263947, 28.924633, 44.679249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864872, 28.069136, 44.766922>,  <34.659180, 28.685837, 44.419952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864872, 28.069136, 44.766922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143677, 28.330624, 44.884781>,  <35.310959, 28.487516, 44.955498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143677, 28.330624, 44.884781>,  <34.864872, 28.069136, 44.766922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143677, 28.330624, 44.884781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124100, -0.514691, 0.848347,
		0.706236, -0.554744, -0.439874,
		0.697015, 0.653721, 0.294650,
		35.352779, 28.526739, 44.973175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383297, 27.665686, 45.028519>,  <34.864872, 28.069136, 44.766922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383297, 27.665686, 45.028519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436363, 28.017683, 45.210949>,  <35.468204, 28.228882, 45.320408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436363, 28.017683, 45.210949>,  <35.383297, 27.665686, 45.028519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436363, 28.017683, 45.210949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101551, -0.445657, 0.889425,
		0.985944, -0.164315, 0.030239,
		0.132670, 0.879995, 0.456080,
		35.476166, 28.281681, 45.347775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852005, 27.480448, 45.572895>,  <35.383297, 27.665686, 45.028519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852005, 27.480448, 45.572895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656883, 27.817999, 45.662262>,  <35.539810, 28.020529, 45.715881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656883, 27.817999, 45.662262>,  <35.852005, 27.480448, 45.572895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656883, 27.817999, 45.662262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146229, -0.331309, 0.932122,
		0.860617, 0.422025, 0.285014,
		-0.487806, 0.843878, 0.223418,
		35.510540, 28.071161, 45.729286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159328, 27.741716, 46.239922>,  <35.852005, 27.480448, 45.572895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159328, 27.741716, 46.239922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798103, 27.911997, 46.217121>,  <35.581367, 28.014164, 46.203442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798103, 27.911997, 46.217121>,  <36.159328, 27.741716, 46.239922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798103, 27.911997, 46.217121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168850, -0.229856, 0.958465,
		0.394917, 0.875183, 0.279455,
		-0.903067, 0.425700, -0.057001,
		35.527184, 28.039707, 46.200020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626328, 28.409832, 46.288784>,  <36.159328, 27.741716, 46.239922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626328, 28.409832, 46.288784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912975, 28.618797, 46.473629>,  <37.084965, 28.744177, 46.584534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912975, 28.618797, 46.473629>,  <36.626328, 28.409832, 46.288784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912975, 28.618797, 46.473629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261834, 0.412590, -0.872475,
		-0.646455, 0.746226, 0.158883,
		0.716617, 0.522414, 0.462108,
		37.127960, 28.775522, 46.612263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614014, 29.126907, 46.127304>,  <36.626328, 28.409832, 46.288784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614014, 29.126907, 46.127304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987312, 29.033140, 46.236187>,  <37.211292, 28.976881, 46.301517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987312, 29.033140, 46.236187>,  <36.614014, 29.126907, 46.127304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987312, 29.033140, 46.236187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343126, 0.357347, -0.868659,
		0.106356, 0.904075, 0.413928,
		0.933249, -0.234417, 0.272205,
		37.267288, 28.962814, 46.317848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943253, 29.757305, 46.088982>,  <36.614014, 29.126907, 46.127304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943253, 29.757305, 46.088982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217930, 29.468060, 46.059158>,  <37.382736, 29.294512, 46.041264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217930, 29.468060, 46.059158>,  <36.943253, 29.757305, 46.088982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217930, 29.468060, 46.059158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186390, 0.274280, -0.943414,
		0.702648, 0.633936, 0.323127,
		0.686691, -0.723115, -0.074563,
		37.423939, 29.251125, 46.036789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484516, 30.355288, 45.994087>,  <36.943253, 29.757305, 46.088982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484516, 30.355288, 45.994087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622498, 30.516388, 46.333214>,  <36.705288, 30.613049, 46.536690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622498, 30.516388, 46.333214>,  <36.484516, 30.355288, 45.994087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622498, 30.516388, 46.333214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895379, -0.129802, 0.425967,
		0.281608, -0.906058, 0.315841,
		0.344954, 0.402754, 0.847818,
		36.725983, 30.637215, 46.587559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349792, 29.863403, 46.562027>,  <36.484516, 30.355288, 45.994087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349792, 29.863403, 46.562027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342812, 30.250580, 46.662254>,  <36.338623, 30.482885, 46.722389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342812, 30.250580, 46.662254>,  <36.349792, 29.863403, 46.562027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342812, 30.250580, 46.662254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877358, -0.135009, 0.460451,
		0.479519, -0.211800, 0.851588,
		-0.017448, 0.967943, 0.250564,
		36.337578, 30.540962, 46.737423>
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
