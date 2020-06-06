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
	<24.005404, 34.918697, 34.892933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353895, 34.829643, 35.067924>,  <24.562990, 34.776211, 35.172920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353895, 34.829643, 35.067924>,  <24.005404, 34.918697, 34.892933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353895, 34.829643, 35.067924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123285, 0.961905, 0.244008,
		-0.475139, -0.158653, 0.865490,
		0.871231, -0.222639, 0.437479,
		24.615265, 34.762852, 35.199169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.151964, 35.090057, 35.621037>,  <24.005404, 34.918697, 34.892933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.151964, 35.090057, 35.621037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.540186, 35.091309, 35.524693>,  <24.773119, 35.092060, 35.466888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.540186, 35.091309, 35.524693>,  <24.151964, 35.090057, 35.621037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.540186, 35.091309, 35.524693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088918, 0.924650, 0.370293,
		0.223865, -0.380806, 0.897146,
		0.970555, 0.003124, -0.240857,
		24.831352, 35.092247, 35.452435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569204, 35.468689, 36.161079>,  <24.151964, 35.090057, 35.621037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569204, 35.468689, 36.161079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739307, 35.514542, 35.801964>,  <24.841370, 35.542053, 35.586494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739307, 35.514542, 35.801964>,  <24.569204, 35.468689, 36.161079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739307, 35.514542, 35.801964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377207, 0.879245, 0.290936,
		0.822723, -0.462373, 0.330663,
		0.425255, 0.114632, -0.897785,
		24.866884, 35.548931, 35.532627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245874, 35.711040, 36.295059>,  <24.569204, 35.468689, 36.161079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245874, 35.711040, 36.295059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200218, 35.823727, 35.913986>,  <25.172825, 35.891338, 35.685341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200218, 35.823727, 35.913986>,  <25.245874, 35.711040, 36.295059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200218, 35.823727, 35.913986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624762, 0.765948, 0.151645,
		0.772428, -0.577891, -0.263433,
		-0.114142, 0.281718, -0.952684,
		25.165976, 35.908241, 35.628181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943869, 35.873131, 36.106998>,  <25.245874, 35.711040, 36.295059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943869, 35.873131, 36.106998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708370, 36.027142, 35.822708>,  <25.567070, 36.119549, 35.652134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708370, 36.027142, 35.822708>,  <25.943869, 35.873131, 36.106998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708370, 36.027142, 35.822708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622161, 0.777184, -0.094349,
		0.516036, -0.497732, -0.697116,
		-0.588747, 0.385031, -0.710724,
		25.531746, 36.142651, 35.609489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400631, 36.131195, 35.671680>,  <25.943869, 35.873131, 36.106998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400631, 36.131195, 35.671680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068569, 36.345943, 35.611526>,  <25.869331, 36.474792, 35.575436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068569, 36.345943, 35.611526>,  <26.400631, 36.131195, 35.671680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068569, 36.345943, 35.611526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553615, 0.825693, -0.108358,
		0.065996, -0.173209, -0.982671,
		-0.830154, 0.536870, -0.150384,
		25.819523, 36.507004, 35.566410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627920, 36.608757, 35.169563>,  <26.400631, 36.131195, 35.671680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627920, 36.608757, 35.169563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285299, 36.766930, 35.302197>,  <26.079727, 36.861835, 35.381775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285299, 36.766930, 35.302197>,  <26.627920, 36.608757, 35.169563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285299, 36.766930, 35.302197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386545, 0.917320, -0.095433,
		-0.341903, 0.046427, -0.938588,
		-0.856554, 0.395436, 0.331581,
		26.028334, 36.885559, 35.401672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282701, 37.130249, 34.686195>,  <26.627920, 36.608757, 35.169563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282701, 37.130249, 34.686195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200027, 37.190372, 35.072914>,  <26.150423, 37.226448, 35.304943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200027, 37.190372, 35.072914>,  <26.282701, 37.130249, 34.686195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200027, 37.190372, 35.072914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406408, 0.912040, -0.054917,
		-0.890008, 0.381562, -0.249593,
		-0.206684, 0.150313, 0.966792,
		26.138021, 37.235466, 35.362953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093859, 37.805359, 34.798836>,  <26.282701, 37.130249, 34.686195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093859, 37.805359, 34.798836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206886, 37.715572, 35.171883>,  <26.274702, 37.661701, 35.395710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206886, 37.715572, 35.171883>,  <26.093859, 37.805359, 34.798836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206886, 37.715572, 35.171883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548232, 0.835593, 0.035004,
		-0.787145, 0.501399, 0.359170,
		0.282569, -0.224462, 0.932616,
		26.291656, 37.648235, 35.451668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906893, 38.332001, 35.155708>,  <26.093859, 37.805359, 34.798836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906893, 38.332001, 35.155708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197271, 38.163589, 35.373238>,  <26.371498, 38.062542, 35.503754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197271, 38.163589, 35.373238>,  <25.906893, 38.332001, 35.155708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197271, 38.163589, 35.373238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506188, 0.862386, -0.008054,
		-0.465595, 0.281124, 0.839161,
		0.725944, -0.421023, 0.543824,
		26.415054, 38.037281, 35.536385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039700, 38.827850, 35.488728>,  <25.906893, 38.332001, 35.155708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039700, 38.827850, 35.488728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374638, 38.609470, 35.499943>,  <26.575602, 38.478443, 35.506672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374638, 38.609470, 35.499943>,  <26.039700, 38.827850, 35.488728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374638, 38.609470, 35.499943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545866, 0.837796, 0.011302,
		-0.029660, 0.005841, 0.999543,
		0.837347, -0.545952, 0.028037,
		26.625841, 38.445686, 35.508354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491737, 39.004894, 36.037525>,  <26.039700, 38.827850, 35.488728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491737, 39.004894, 36.037525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718620, 38.846706, 35.748558>,  <26.854750, 38.751793, 35.575180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718620, 38.846706, 35.748558>,  <26.491737, 39.004894, 36.037525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718620, 38.846706, 35.748558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524821, 0.849561, -0.053001,
		0.634695, -0.349075, 0.689426,
		0.567208, -0.395465, -0.722414,
		26.888783, 38.728065, 35.531834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217510, 39.092556, 36.018734>,  <26.491737, 39.004894, 36.037525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217510, 39.092556, 36.018734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186628, 39.002560, 35.630215>,  <27.168098, 38.948563, 35.397102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186628, 39.002560, 35.630215>,  <27.217510, 39.092556, 36.018734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186628, 39.002560, 35.630215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560988, 0.795555, -0.228876,
		0.824216, -0.562557, 0.064797,
		-0.077206, -0.224993, -0.971297,
		27.163467, 38.935062, 35.338825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940374, 38.935810, 35.811134>,  <27.217510, 39.092556, 36.018734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940374, 38.935810, 35.811134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697447, 39.060497, 35.518833>,  <27.551689, 39.135311, 35.343452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697447, 39.060497, 35.518833>,  <27.940374, 38.935810, 35.811134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697447, 39.060497, 35.518833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751256, 0.524518, -0.400619,
		0.258412, -0.792284, -0.552729,
		-0.607320, 0.311716, -0.730750,
		27.515251, 39.154011, 35.299610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324062, 38.874668, 35.262962>,  <27.940374, 38.935810, 35.811134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324062, 38.874668, 35.262962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037266, 39.137882, 35.170952>,  <27.865187, 39.295811, 35.115746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037266, 39.137882, 35.170952>,  <28.324062, 38.874668, 35.262962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037266, 39.137882, 35.170952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680862, 0.590316, -0.433536,
		-0.149492, -0.467460, -0.871283,
		-0.716993, 0.658034, -0.230028,
		27.822168, 39.335293, 35.101944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812668, 38.370762, 35.340706>,  <28.324062, 38.874668, 35.262962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812668, 38.370762, 35.340706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530214, 38.431259, 35.617401>,  <27.360743, 38.467556, 35.783417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530214, 38.431259, 35.617401>,  <27.812668, 38.370762, 35.340706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530214, 38.431259, 35.617401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408219, -0.885182, -0.223183,
		0.578558, -0.439977, 0.686797,
		-0.706136, 0.151240, 0.691736,
		27.318373, 38.476631, 35.824921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713261, 37.744629, 35.856201>,  <27.812668, 38.370762, 35.340706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713261, 37.744629, 35.856201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367958, 37.943233, 35.819839>,  <27.160776, 38.062397, 35.798023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367958, 37.943233, 35.819839>,  <27.713261, 37.744629, 35.856201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367958, 37.943233, 35.819839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500638, -0.865181, 0.028715,
		-0.064395, 0.070300, 0.995445,
		-0.863258, 0.496508, -0.090908,
		27.108980, 38.092186, 35.792568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289190, 37.571777, 36.346725>,  <27.713261, 37.744629, 35.856201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289190, 37.571777, 36.346725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026451, 37.698357, 36.072964>,  <26.868809, 37.774303, 35.908707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026451, 37.698357, 36.072964>,  <27.289190, 37.571777, 36.346725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026451, 37.698357, 36.072964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541186, -0.829885, 0.135677,
		-0.525044, 0.459511, 0.716365,
		-0.656846, 0.316450, -0.684407,
		26.829397, 37.793293, 35.867641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758192, 37.174988, 36.558739>,  <27.289190, 37.571777, 36.346725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758192, 37.174988, 36.558739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583900, 37.338646, 36.238056>,  <26.479324, 37.436840, 36.045647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583900, 37.338646, 36.238056>,  <26.758192, 37.174988, 36.558739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583900, 37.338646, 36.238056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649583, -0.759505, -0.034558,
		-0.623043, 0.505719, 0.596713,
		-0.435730, 0.409145, -0.801710,
		26.453182, 37.461391, 35.997543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051065, 37.218079, 36.619331>,  <26.758192, 37.174988, 36.558739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051065, 37.218079, 36.619331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107008, 37.209896, 36.223347>,  <26.140574, 37.204987, 35.985756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107008, 37.209896, 36.223347>,  <26.051065, 37.218079, 36.619331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107008, 37.209896, 36.223347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651087, -0.755150, -0.076380,
		-0.746007, 0.655233, -0.118927,
		0.139855, -0.020452, -0.989961,
		26.148964, 37.203762, 35.926357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450779, 37.383099, 36.393333>,  <26.051065, 37.218079, 36.619331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450779, 37.383099, 36.393333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631905, 37.401192, 36.037151>,  <25.740580, 37.412048, 35.823441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631905, 37.401192, 36.037151>,  <25.450779, 37.383099, 36.393333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631905, 37.401192, 36.037151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355656, -0.906653, -0.226912,
		-0.817597, 0.419446, -0.394461,
		0.452816, 0.045231, -0.890456,
		25.767750, 37.414761, 35.770016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940275, 37.432388, 35.844017>,  <25.450779, 37.383099, 36.393333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940275, 37.432388, 35.844017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267702, 37.240047, 35.718334>,  <25.464159, 37.124641, 35.642925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267702, 37.240047, 35.718334>,  <24.940275, 37.432388, 35.844017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267702, 37.240047, 35.718334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569661, -0.749768, -0.336651,
		-0.073704, 0.454564, -0.887659,
		0.818568, -0.480852, -0.314209,
		25.513273, 37.095791, 35.624073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745371, 37.120327, 35.279053>,  <24.940275, 37.432388, 35.844017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745371, 37.120327, 35.279053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081848, 36.919022, 35.358170>,  <25.283735, 36.798241, 35.405640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081848, 36.919022, 35.358170>,  <24.745371, 37.120327, 35.279053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081848, 36.919022, 35.358170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423899, -0.840834, -0.336611,
		0.335712, 0.199312, -0.920637,
		0.841194, -0.503262, 0.197790,
		25.334206, 36.768044, 35.417507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.178078, 36.794270, 34.732849>,  <24.745371, 37.120327, 35.279053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.178078, 36.794270, 34.732849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273462, 36.695118, 34.357254>,  <24.330692, 36.635628, 34.131897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273462, 36.695118, 34.357254>,  <24.178078, 36.794270, 34.732849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.273462, 36.695118, 34.357254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762770, -0.646257, -0.023107,
		-0.601098, 0.721740, -0.343181,
		0.238461, -0.247879, -0.938985,
		24.345001, 36.620754, 34.075558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816801, 36.639469, 34.677376>,  <24.178078, 36.794270, 34.732849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816801, 36.639469, 34.677376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034168, 36.498978, 34.982357>,  <25.164589, 36.414680, 35.165344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034168, 36.498978, 34.982357>,  <24.816801, 36.639469, 34.677376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034168, 36.498978, 34.982357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247338, -0.934934, -0.254404,
		0.802196, -0.050335, -0.594935,
		0.543420, -0.351232, 0.762451,
		25.197195, 36.393608, 35.211094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131413, 36.103592, 34.376713>,  <24.816801, 36.639469, 34.677376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131413, 36.103592, 34.376713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139809, 36.041813, 34.771824>,  <25.144846, 36.004745, 35.008892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139809, 36.041813, 34.771824>,  <25.131413, 36.103592, 34.376713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139809, 36.041813, 34.771824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234414, -0.961214, -0.145317,
		0.971910, -0.228499, -0.056381,
		0.020990, -0.154452, 0.987777,
		25.146105, 35.995476, 35.068157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473820, 35.482872, 34.393539>,  <25.131413, 36.103592, 34.376713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.473820, 35.482872, 34.393539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286865, 35.533432, 34.743526>,  <25.174692, 35.563766, 34.953518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286865, 35.533432, 34.743526>,  <25.473820, 35.482872, 34.393539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286865, 35.533432, 34.743526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275854, -0.961162, -0.008503,
		0.839913, -0.245338, 0.484102,
		-0.467386, 0.126399, 0.874970,
		25.146648, 35.571350, 35.006016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149389, 35.294731, 34.530262>,  <25.473820, 35.482872, 34.393539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149389, 35.294731, 34.530262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967106, 34.947258, 34.452576>,  <25.857735, 34.738773, 34.405964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967106, 34.947258, 34.452576>,  <26.149389, 35.294731, 34.530262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967106, 34.947258, 34.452576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722581, -0.233601, -0.650621,
		0.519812, -0.436833, 0.734147,
		-0.455710, -0.868681, -0.194218,
		25.830393, 34.686653, 34.394310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637140, 34.734398, 34.655399>,  <26.149389, 35.294731, 34.530262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637140, 34.734398, 34.655399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356621, 34.585732, 34.412075>,  <26.188309, 34.496532, 34.266079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356621, 34.585732, 34.412075>,  <26.637140, 34.734398, 34.655399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356621, 34.585732, 34.412075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708574, -0.269943, -0.651961,
		0.078103, -0.888254, 0.452665,
		-0.701301, -0.371667, -0.608310,
		26.146231, 34.474232, 34.229584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028597, 34.715645, 34.130417>,  <26.637140, 34.734398, 34.655399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028597, 34.715645, 34.130417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714375, 34.491066, 34.026356>,  <26.525841, 34.356319, 33.963921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714375, 34.491066, 34.026356>,  <27.028597, 34.715645, 34.130417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714375, 34.491066, 34.026356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466233, -0.260607, -0.845406,
		0.406852, -0.785406, 0.466486,
		-0.785556, -0.561446, -0.260154,
		26.478708, 34.322632, 33.948311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548069, 34.383751, 33.865227>,  <27.028597, 34.715645, 34.130417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548069, 34.383751, 33.865227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760548, 34.241436, 33.557655>,  <27.888035, 34.156048, 33.373112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760548, 34.241436, 33.557655>,  <27.548069, 34.383751, 33.865227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760548, 34.241436, 33.557655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444092, -0.655972, 0.610314,
		-0.721535, -0.665670, -0.190447,
		0.531196, -0.355787, -0.768925,
		27.919907, 34.134701, 33.326977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591690, 33.615036, 33.772190>,  <27.548069, 34.383751, 33.865227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591690, 33.615036, 33.772190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907736, 33.799576, 33.610756>,  <28.097363, 33.910297, 33.513897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907736, 33.799576, 33.610756>,  <27.591690, 33.615036, 33.772190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907736, 33.799576, 33.610756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603425, -0.469742, 0.644376,
		0.107700, -0.752663, -0.649538,
		0.790113, 0.461347, -0.403584,
		28.144770, 33.937981, 33.489681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131069, 33.164303, 33.611340>,  <27.591690, 33.615036, 33.772190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131069, 33.164303, 33.611340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296635, 33.523716, 33.669735>,  <28.395973, 33.739365, 33.704773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296635, 33.523716, 33.669735>,  <28.131069, 33.164303, 33.611340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296635, 33.523716, 33.669735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483798, -0.352977, 0.800841,
		0.771113, -0.260852, -0.580811,
		0.413914, 0.898534, 0.145985,
		28.420809, 33.793278, 33.713531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713678, 33.046646, 33.920818>,  <28.131069, 33.164303, 33.611340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713678, 33.046646, 33.920818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683907, 33.438004, 33.997971>,  <28.666044, 33.672817, 34.044262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683907, 33.438004, 33.997971>,  <28.713678, 33.046646, 33.920818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683907, 33.438004, 33.997971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392959, -0.148994, 0.907405,
		0.916539, 0.143331, -0.373380,
		-0.074428, 0.978395, 0.192882,
		28.661577, 33.731522, 34.055836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370640, 33.300365, 33.960804>,  <28.713678, 33.046646, 33.920818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370640, 33.300365, 33.960804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126963, 33.540871, 34.167633>,  <28.980757, 33.685173, 34.291729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126963, 33.540871, 34.167633>,  <29.370640, 33.300365, 33.960804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126963, 33.540871, 34.167633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461975, -0.260894, 0.847652,
		0.644566, 0.755257, -0.118836,
		-0.609191, 0.601267, 0.517073,
		28.944206, 33.721252, 34.322754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809809, 33.580509, 34.463566>,  <29.370640, 33.300365, 33.960804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809809, 33.580509, 34.463566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432056, 33.639069, 34.581356>,  <29.205406, 33.674206, 34.652031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432056, 33.639069, 34.581356>,  <29.809809, 33.580509, 34.463566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432056, 33.639069, 34.581356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264340, -0.194772, 0.944557,
		0.195637, 0.969862, 0.145239,
		-0.944378, 0.146398, 0.294477,
		29.148743, 33.682987, 34.669701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997782, 34.159729, 34.386642>,  <29.809809, 33.580509, 34.463566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997782, 34.159729, 34.386642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644289, 34.122368, 34.570072>,  <29.432194, 34.099949, 34.680130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644289, 34.122368, 34.570072>,  <29.997782, 34.159729, 34.386642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644289, 34.122368, 34.570072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447281, -0.456867, 0.768903,
		0.137689, 0.884617, 0.445527,
		-0.883732, -0.093406, 0.458578,
		29.379169, 34.094345, 34.707645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138790, 34.284679, 35.014225>,  <29.997782, 34.159729, 34.386642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138790, 34.284679, 35.014225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779737, 34.117985, 35.071617>,  <29.564306, 34.017967, 35.106052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779737, 34.117985, 35.071617>,  <30.138790, 34.284679, 35.014225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779737, 34.117985, 35.071617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357690, -0.498582, 0.789603,
		-0.257523, 0.760094, 0.596606,
		-0.897630, -0.416741, 0.143482,
		29.510448, 33.992962, 35.114662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920958, 34.501022, 35.708820>,  <30.138790, 34.284679, 35.014225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920958, 34.501022, 35.708820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763960, 34.152405, 35.591274>,  <29.669762, 33.943233, 35.520748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763960, 34.152405, 35.591274>,  <29.920958, 34.501022, 35.708820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763960, 34.152405, 35.591274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435248, -0.457464, 0.775427,
		-0.810251, 0.176448, 0.558891,
		-0.392495, -0.871547, -0.293862,
		29.646212, 33.890942, 35.503117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361567, 34.237534, 36.060978>,  <29.920958, 34.501022, 35.708820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361567, 34.237534, 36.060978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633490, 34.530384, 36.078201>,  <30.796644, 34.706093, 36.088535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633490, 34.530384, 36.078201>,  <30.361567, 34.237534, 36.060978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633490, 34.530384, 36.078201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340934, 0.367468, -0.865293,
		-0.649325, 0.573552, 0.499414,
		0.679809, 0.732124, 0.043063,
		30.837433, 34.750023, 36.091122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245945, 33.510513, 35.903591>,  <30.361567, 34.237534, 36.060978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245945, 33.510513, 35.903591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000265, 33.705238, 36.152035>,  <29.852858, 33.822071, 36.301102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000265, 33.705238, 36.152035>,  <30.245945, 33.510513, 35.903591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000265, 33.705238, 36.152035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617097, 0.194302, -0.762521,
		-0.491885, -0.851624, 0.181069,
		-0.614199, 0.486810, 0.621109,
		29.816006, 33.851280, 36.338367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675362, 33.159542, 35.787117>,  <30.245945, 33.510513, 35.903591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675362, 33.159542, 35.787117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519142, 33.505131, 35.914261>,  <29.425411, 33.712482, 35.990547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519142, 33.505131, 35.914261>,  <29.675362, 33.159542, 35.787117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519142, 33.505131, 35.914261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685838, -0.042746, -0.726498,
		-0.614084, -0.501729, 0.609236,
		-0.390547, 0.863968, 0.317856,
		29.401978, 33.764320, 36.009617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915642, 33.029461, 35.855473>,  <29.675362, 33.159542, 35.787117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915642, 33.029461, 35.855473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041122, 33.395897, 35.755569>,  <29.116411, 33.615757, 35.695629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041122, 33.395897, 35.755569>,  <28.915642, 33.029461, 35.855473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041122, 33.395897, 35.755569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490590, -0.068831, -0.868668,
		-0.812966, 0.395029, 0.427831,
		0.313701, 0.916087, -0.249755,
		29.135233, 33.670723, 35.680641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426529, 33.410896, 35.453800>,  <28.915642, 33.029461, 35.855473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426529, 33.410896, 35.453800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742910, 33.640675, 35.369514>,  <28.932739, 33.778542, 35.318943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742910, 33.640675, 35.369514>,  <28.426529, 33.410896, 35.453800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742910, 33.640675, 35.369514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454788, 0.321554, -0.830524,
		-0.409338, 0.752737, 0.515587,
		0.790955, 0.574448, -0.210712,
		28.980198, 33.813007, 35.306301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240402, 34.209419, 35.329723>,  <28.426529, 33.410896, 35.453800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240402, 34.209419, 35.329723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582123, 34.118084, 35.142948>,  <28.787155, 34.063282, 35.030884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582123, 34.118084, 35.142948>,  <28.240402, 34.209419, 35.329723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582123, 34.118084, 35.142948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408891, 0.259398, -0.874940,
		0.320902, 0.938390, 0.128240,
		0.854301, -0.228334, -0.466941,
		28.838413, 34.049583, 35.002865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365839, 34.766140, 34.922615>,  <28.240402, 34.209419, 35.329723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365839, 34.766140, 34.922615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559715, 34.480118, 34.721115>,  <28.676041, 34.308502, 34.600216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559715, 34.480118, 34.721115>,  <28.365839, 34.766140, 34.922615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559715, 34.480118, 34.721115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393561, 0.336046, -0.855677,
		0.781144, 0.612995, -0.118542,
		0.484690, -0.715060, -0.503751,
		28.705122, 34.265598, 34.569988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602053, 35.017208, 34.309536>,  <28.365839, 34.766140, 34.922615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602053, 35.017208, 34.309536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640614, 34.627972, 34.225822>,  <28.663750, 34.394428, 34.175594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640614, 34.627972, 34.225822>,  <28.602053, 35.017208, 34.309536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640614, 34.627972, 34.225822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225893, 0.183386, -0.956735,
		0.969370, 0.139505, -0.202136,
		0.096401, -0.973092, -0.209283,
		28.669533, 34.336044, 34.163036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064125, 34.928482, 33.744038>,  <28.602053, 35.017208, 34.309536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064125, 34.928482, 33.744038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855518, 34.587189, 33.742954>,  <28.730354, 34.382412, 33.742302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855518, 34.587189, 33.742954>,  <29.064125, 34.928482, 33.744038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855518, 34.587189, 33.742954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293148, 0.182163, -0.938553,
		0.801302, -0.488676, -0.345125,
		-0.521517, -0.853237, -0.002713,
		28.699062, 34.331219, 33.742142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118393, 34.802887, 33.120075>,  <29.064125, 34.928482, 33.744038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118393, 34.802887, 33.120075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828667, 34.559311, 33.249416>,  <28.654831, 34.413166, 33.327023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828667, 34.559311, 33.249416>,  <29.118393, 34.802887, 33.120075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828667, 34.559311, 33.249416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510091, 0.157746, -0.845531,
		0.463869, -0.777373, -0.424872,
		-0.724315, -0.608939, 0.323357,
		28.611372, 34.376629, 33.346424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028940, 34.234436, 32.634178>,  <29.118393, 34.802887, 33.120075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028940, 34.234436, 32.634178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683287, 34.327065, 32.812904>,  <28.475895, 34.382641, 32.920139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683287, 34.327065, 32.812904>,  <29.028940, 34.234436, 32.634178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683287, 34.327065, 32.812904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391133, 0.249657, -0.885826,
		-0.316686, -0.940237, -0.125161,
		-0.864133, 0.231574, 0.446820,
		28.424047, 34.396538, 32.946949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322762, 33.956726, 31.952322>,  <29.028940, 34.234436, 32.634178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322762, 33.956726, 31.952322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277042, 33.592178, 31.794159>,  <29.249611, 33.373451, 31.699261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277042, 33.592178, 31.794159>,  <29.322762, 33.956726, 31.952322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277042, 33.592178, 31.794159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974129, -0.024707, -0.224637,
		0.194957, -0.410855, 0.890612,
		-0.114297, -0.911366, -0.395409,
		29.242754, 33.318768, 31.675535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900541, 33.544518, 32.211376>,  <29.322762, 33.956726, 31.952322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900541, 33.544518, 32.211376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757635, 33.391689, 31.870464>,  <29.671892, 33.299992, 31.665916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757635, 33.391689, 31.870464>,  <29.900541, 33.544518, 32.211376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757635, 33.391689, 31.870464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928230, -0.246535, -0.278584,
		-0.103680, -0.890644, 0.442724,
		-0.357266, -0.382067, -0.852283,
		29.650455, 33.277069, 31.614779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497246, 33.547478, 31.734709>,  <29.900541, 33.544518, 32.211376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497246, 33.547478, 31.734709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624657, 33.819092, 31.470148>,  <30.701103, 33.982059, 31.311413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624657, 33.819092, 31.470148>,  <30.497246, 33.547478, 31.734709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624657, 33.819092, 31.470148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947139, -0.199778, 0.251031,
		0.038326, -0.706398, -0.706776,
		0.318525, 0.679036, -0.661401,
		30.720215, 34.022804, 31.271729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120096, 33.386391, 31.369343>,  <30.497246, 33.547478, 31.734709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120096, 33.386391, 31.369343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108191, 33.785954, 31.383772>,  <31.101048, 34.025692, 31.392429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108191, 33.785954, 31.383772>,  <31.120096, 33.386391, 31.369343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108191, 33.785954, 31.383772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874044, 0.008500, 0.485772,
		0.484934, 0.045986, -0.873341,
		-0.029762, 0.998906, 0.036072,
		31.099262, 34.085625, 31.394594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863718, 33.613949, 31.351704>,  <31.120096, 33.386391, 31.369343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863718, 33.613949, 31.351704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644302, 33.924122, 31.476799>,  <31.512653, 34.110226, 31.551857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644302, 33.924122, 31.476799>,  <31.863718, 33.613949, 31.351704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644302, 33.924122, 31.476799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724837, 0.254564, 0.640162,
		0.416793, 0.577838, -0.701703,
		-0.548538, 0.775436, 0.312738,
		31.479740, 34.156754, 31.570620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923626, 34.368355, 31.231174>,  <31.863718, 33.613949, 31.351704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923626, 34.368355, 31.231174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763132, 34.263573, 31.582262>,  <31.666836, 34.200703, 31.792915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763132, 34.263573, 31.582262>,  <31.923626, 34.368355, 31.231174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763132, 34.263573, 31.582262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814538, 0.336261, 0.472711,
		-0.418972, 0.904604, 0.078452,
		-0.401236, -0.261955, 0.877718,
		31.642761, 34.184986, 31.845577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281151, 34.683781, 31.624783>,  <31.923626, 34.368355, 31.231174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281151, 34.683781, 31.624783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098389, 34.453415, 31.895945>,  <31.988731, 34.315193, 32.058643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098389, 34.453415, 31.895945>,  <32.281151, 34.683781, 31.624783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098389, 34.453415, 31.895945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742252, 0.173141, 0.647368,
		-0.490203, 0.798963, 0.348366,
		-0.456906, -0.575917, 0.677906,
		31.961317, 34.280640, 32.099316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067150, 35.043114, 32.274422>,  <32.281151, 34.683781, 31.624783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067150, 35.043114, 32.274422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118946, 34.653011, 32.346104>,  <32.150024, 34.418949, 32.389111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118946, 34.653011, 32.346104>,  <32.067150, 35.043114, 32.274422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118946, 34.653011, 32.346104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750557, 0.214503, 0.625022,
		-0.647995, 0.053568, 0.759759,
		0.129489, -0.975253, 0.179202,
		32.157791, 34.360435, 32.399864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156803, 34.941483, 32.993774>,  <32.067150, 35.043114, 32.274422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156803, 34.941483, 32.993774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364063, 34.649921, 32.814793>,  <32.488419, 34.474983, 32.707401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364063, 34.649921, 32.814793>,  <32.156803, 34.941483, 32.993774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364063, 34.649921, 32.814793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743275, 0.124909, 0.657222,
		-0.423162, -0.673122, 0.606499,
		0.518148, -0.728906, -0.447457,
		32.519508, 34.431248, 32.680553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461857, 34.468327, 33.570049>,  <32.156803, 34.941483, 32.993774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461857, 34.468327, 33.570049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698097, 34.460793, 33.247353>,  <32.839844, 34.456272, 33.053734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698097, 34.460793, 33.247353>,  <32.461857, 34.468327, 33.570049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698097, 34.460793, 33.247353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806709, 0.038803, 0.589673,
		0.020196, -0.999069, 0.038114,
		0.590603, -0.018838, -0.806742,
		32.875278, 34.455143, 33.005329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056973, 33.988560, 33.575737>,  <32.461857, 34.468327, 33.570049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056973, 33.988560, 33.575737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122837, 34.317394, 33.357723>,  <33.162357, 34.514694, 33.226913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122837, 34.317394, 33.357723>,  <33.056973, 33.988560, 33.575737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122837, 34.317394, 33.357723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895966, 0.106415, 0.431186,
		0.412471, -0.559333, -0.719037,
		0.164660, 0.822084, -0.545036,
		33.172234, 34.564018, 33.194214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621342, 33.636539, 33.982689>,  <33.056973, 33.988560, 33.575737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621342, 33.636539, 33.982689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848667, 33.448849, 34.253048>,  <33.985062, 33.336235, 34.415264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848667, 33.448849, 34.253048>,  <33.621342, 33.636539, 33.982689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848667, 33.448849, 34.253048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180665, 0.872571, 0.453851,
		-0.802730, -0.135819, 0.580670,
		0.568317, -0.469226, 0.675901,
		34.019161, 33.308083, 34.455818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596413, 34.277306, 34.390026>,  <33.621342, 33.636539, 33.982689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596413, 34.277306, 34.390026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866310, 34.005447, 34.505127>,  <34.028248, 33.842331, 34.574188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866310, 34.005447, 34.505127>,  <33.596413, 34.277306, 34.390026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866310, 34.005447, 34.505127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644025, 0.732621, 0.220223,
		-0.360484, 0.036723, 0.932042,
		0.674747, -0.679645, 0.287749,
		34.068733, 33.801556, 34.591450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835526, 34.310677, 35.213745>,  <33.596413, 34.277306, 34.390026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835526, 34.310677, 35.213745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109684, 34.191525, 34.947964>,  <34.274178, 34.120033, 34.788494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109684, 34.191525, 34.947964>,  <33.835526, 34.310677, 35.213745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109684, 34.191525, 34.947964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694248, 0.542582, 0.472889,
		0.219659, -0.785414, 0.578684,
		0.685397, -0.297876, -0.664455,
		34.315304, 34.102161, 34.748627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315632, 34.000343, 35.586430>,  <33.835526, 34.310677, 35.213745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315632, 34.000343, 35.586430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473976, 34.167110, 35.259144>,  <34.568981, 34.267170, 35.062771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473976, 34.167110, 35.259144>,  <34.315632, 34.000343, 35.586430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473976, 34.167110, 35.259144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648673, 0.503731, 0.570507,
		0.650016, -0.756593, -0.071040,
		0.395856, 0.416921, -0.818214,
		34.592731, 34.292187, 35.013680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918941, 33.939507, 35.721989>,  <34.315632, 34.000343, 35.586430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918941, 33.939507, 35.721989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883835, 34.236279, 35.456108>,  <34.862770, 34.414341, 35.296577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883835, 34.236279, 35.456108>,  <34.918941, 33.939507, 35.721989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883835, 34.236279, 35.456108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401051, 0.637126, 0.658201,
		0.911842, -0.208813, -0.353470,
		-0.087764, 0.741935, -0.664703,
		34.857506, 34.458858, 35.256699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472015, 34.356380, 35.630112>,  <34.918941, 33.939507, 35.721989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472015, 34.356380, 35.630112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175713, 34.617142, 35.565247>,  <34.997929, 34.773598, 35.526329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175713, 34.617142, 35.565247>,  <35.472015, 34.356380, 35.630112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175713, 34.617142, 35.565247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349334, 0.580005, 0.735907,
		0.573794, 0.488483, -0.657377,
		-0.740760, 0.651903, -0.162160,
		34.953484, 34.812714, 35.516598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514149, 34.815048, 36.250858>,  <35.472015, 34.356380, 35.630112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514149, 34.815048, 36.250858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274426, 35.132751, 36.210888>,  <35.130592, 35.323372, 36.186905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274426, 35.132751, 36.210888>,  <35.514149, 34.815048, 36.250858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274426, 35.132751, 36.210888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112137, -0.206885, -0.971918,
		-0.792626, -0.571272, 0.213054,
		-0.599307, 0.794259, -0.099922,
		35.094635, 35.371029, 36.180912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739635, 34.675056, 36.048100>,  <35.514149, 34.815048, 36.250858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739635, 34.675056, 36.048100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837135, 35.042427, 35.923466>,  <34.895634, 35.262848, 35.848686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837135, 35.042427, 35.923466>,  <34.739635, 34.675056, 36.048100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837135, 35.042427, 35.923466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293763, -0.236266, -0.926219,
		-0.924279, 0.317295, 0.212210,
		0.243747, 0.918424, -0.311585,
		34.910259, 35.317955, 35.829990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129417, 35.069588, 35.672035>,  <34.739635, 34.675056, 36.048100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129417, 35.069588, 35.672035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462849, 35.243477, 35.535706>,  <34.662907, 35.347813, 35.453907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462849, 35.243477, 35.535706>,  <34.129417, 35.069588, 35.672035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462849, 35.243477, 35.535706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337991, -0.086626, -0.937154,
		-0.436929, 0.896387, 0.074724,
		0.833580, 0.434726, -0.340820,
		34.712921, 35.373894, 35.433460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906281, 35.362286, 35.106899>,  <34.129417, 35.069588, 35.672035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906281, 35.362286, 35.106899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298985, 35.388210, 35.035400>,  <34.534607, 35.403767, 34.992500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298985, 35.388210, 35.035400>,  <33.906281, 35.362286, 35.106899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298985, 35.388210, 35.035400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169485, -0.127772, -0.977215,
		-0.086178, 0.989683, -0.114456,
		0.981758, 0.064816, -0.178747,
		34.593513, 35.407654, 34.981777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936962, 35.843842, 34.498608>,  <33.906281, 35.362286, 35.106899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936962, 35.843842, 34.498608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275566, 35.631275, 34.511425>,  <34.478729, 35.503735, 34.519115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275566, 35.631275, 34.511425>,  <33.936962, 35.843842, 34.498608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275566, 35.631275, 34.511425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093760, -0.208070, -0.973610,
		0.524056, 0.821163, -0.225958,
		0.846507, -0.531412, 0.032048,
		34.529518, 35.471851, 34.521038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256454, 36.055023, 33.879505>,  <33.936962, 35.843842, 34.498608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256454, 36.055023, 33.879505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433147, 35.715122, 33.994602>,  <34.539162, 35.511181, 34.063660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433147, 35.715122, 33.994602>,  <34.256454, 36.055023, 33.879505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433147, 35.715122, 33.994602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066850, -0.288662, -0.955094,
		0.894654, 0.441130, -0.070705,
		0.441730, -0.849752, 0.287742,
		34.565666, 35.460197, 34.080925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365711, 35.886314, 33.229744>,  <34.256454, 36.055023, 33.879505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365711, 35.886314, 33.229744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483597, 35.588566, 33.469429>,  <34.554329, 35.409916, 33.613239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483597, 35.588566, 33.469429>,  <34.365711, 35.886314, 33.229744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483597, 35.588566, 33.469429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303487, -0.521687, -0.797332,
		0.906111, 0.416840, 0.072157,
		0.294716, -0.744370, 0.599212,
		34.572010, 35.365253, 33.649193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100773, 35.733841, 33.069908>,  <34.365711, 35.886314, 33.229744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100773, 35.733841, 33.069908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901752, 35.408253, 33.189835>,  <34.782341, 35.212898, 33.261791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901752, 35.408253, 33.189835>,  <35.100773, 35.733841, 33.069908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901752, 35.408253, 33.189835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291096, -0.482269, -0.826245,
		0.817132, -0.323825, 0.476898,
		-0.497552, -0.813974, 0.299813,
		34.752487, 35.164059, 33.279778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549698, 35.164494, 32.918159>,  <35.100773, 35.733841, 33.069908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549698, 35.164494, 32.918159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188137, 34.993568, 32.925774>,  <34.971199, 34.891014, 32.930344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188137, 34.993568, 32.925774>,  <35.549698, 35.164494, 32.918159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188137, 34.993568, 32.925774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230029, -0.523151, -0.820610,
		0.360616, -0.737373, 0.571172,
		-0.903904, -0.427311, 0.019040,
		34.916965, 34.865376, 32.931484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583706, 34.365967, 32.572662>,  <35.549698, 35.164494, 32.918159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583706, 34.365967, 32.572662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196617, 34.464123, 32.595634>,  <34.964363, 34.523014, 32.609417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196617, 34.464123, 32.595634>,  <35.583706, 34.365967, 32.572662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196617, 34.464123, 32.595634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165422, -0.446570, -0.879324,
		-0.190129, -0.860442, 0.472748,
		-0.967722, 0.245387, 0.057430,
		34.906300, 34.537739, 32.612862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273453, 33.659409, 32.417007>,  <35.583706, 34.365967, 32.572662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273453, 33.659409, 32.417007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005707, 33.950195, 32.355743>,  <34.845058, 34.124668, 32.318985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005707, 33.950195, 32.355743>,  <35.273453, 33.659409, 32.417007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005707, 33.950195, 32.355743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356076, -0.494864, -0.792666,
		-0.652040, -0.476049, 0.590103,
		-0.669368, 0.726972, -0.153161,
		34.804897, 34.168285, 32.309795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708183, 33.342697, 32.243652>,  <35.273453, 33.659409, 32.417007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708183, 33.342697, 32.243652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610519, 33.698238, 32.088562>,  <34.551922, 33.911564, 31.995508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610519, 33.698238, 32.088562>,  <34.708183, 33.342697, 32.243652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610519, 33.698238, 32.088562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388225, -0.455983, -0.800850,
		-0.888633, -0.045010, 0.456406,
		-0.244159, 0.888850, -0.387727,
		34.537273, 33.964893, 31.972244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010254, 33.396076, 32.009197>,  <34.708183, 33.342697, 32.243652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010254, 33.396076, 32.009197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182140, 33.691616, 31.801563>,  <34.285271, 33.868938, 31.676985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182140, 33.691616, 31.801563>,  <34.010254, 33.396076, 32.009197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182140, 33.691616, 31.801563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532508, -0.256899, -0.806497,
		-0.729232, 0.622979, 0.283051,
		0.429715, 0.738851, -0.519080,
		34.311054, 33.913273, 31.645840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472626, 33.815567, 31.644367>,  <34.010254, 33.396076, 32.009197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472626, 33.815567, 31.644367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812901, 33.904484, 31.453821>,  <34.017063, 33.957832, 31.339493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812901, 33.904484, 31.453821>,  <33.472626, 33.815567, 31.644367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812901, 33.904484, 31.453821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470053, -0.084042, -0.878628,
		-0.235345, 0.971351, 0.032995,
		0.850684, 0.222290, -0.476366,
		34.068104, 33.971172, 31.310911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198547, 34.183170, 31.222542>,  <33.472626, 33.815567, 31.644367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198547, 34.183170, 31.222542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552563, 34.086636, 31.063313>,  <33.764973, 34.028713, 30.967775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552563, 34.086636, 31.063313>,  <33.198547, 34.183170, 31.222542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552563, 34.086636, 31.063313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442792, -0.172512, -0.879872,
		0.143675, 0.954984, -0.259544,
		0.885038, -0.241340, -0.398074,
		33.818073, 34.014233, 30.943890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181862, 34.477711, 30.577021>,  <33.198547, 34.183170, 31.222542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181862, 34.477711, 30.577021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462624, 34.193241, 30.561163>,  <33.631081, 34.022560, 30.551649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462624, 34.193241, 30.561163>,  <33.181862, 34.477711, 30.577021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462624, 34.193241, 30.561163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409993, -0.357883, -0.838943,
		0.582444, 0.605108, -0.542773,
		0.701900, -0.711171, -0.039643,
		33.673195, 33.979889, 30.549271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336033, 34.461395, 29.850250>,  <33.181862, 34.477711, 30.577021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336033, 34.461395, 29.850250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492409, 34.114918, 29.974751>,  <33.586235, 33.907032, 30.049450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492409, 34.114918, 29.974751>,  <33.336033, 34.461395, 29.850250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492409, 34.114918, 29.974751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444663, -0.473824, -0.760109,
		0.805877, 0.158759, -0.570402,
		0.390944, -0.866191, 0.311250,
		33.609692, 33.855061, 30.068125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854298, 34.213490, 29.359934>,  <33.336033, 34.461395, 29.850250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854298, 34.213490, 29.359934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720722, 33.893345, 29.559095>,  <33.640575, 33.701260, 29.678593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720722, 33.893345, 29.559095>,  <33.854298, 34.213490, 29.359934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720722, 33.893345, 29.559095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122403, -0.486931, -0.864821,
		0.934614, -0.349742, 0.064639,
		-0.333939, -0.800362, 0.497902,
		33.620541, 33.653236, 29.708466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288746, 33.557423, 29.134680>,  <33.854298, 34.213490, 29.359934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288746, 33.557423, 29.134680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950668, 33.424789, 29.302343>,  <33.747822, 33.345207, 29.402943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950668, 33.424789, 29.302343>,  <34.288746, 33.557423, 29.134680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950668, 33.424789, 29.302343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140885, -0.618306, -0.773207,
		0.515555, -0.712564, 0.475873,
		-0.845195, -0.331588, 0.419160,
		33.697109, 33.325314, 29.428091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192162, 32.799828, 29.018894>,  <34.288746, 33.557423, 29.134680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192162, 32.799828, 29.018894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816605, 32.927303, 29.070921>,  <33.591270, 33.003788, 29.102137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816605, 32.927303, 29.070921>,  <34.192162, 32.799828, 29.018894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816605, 32.927303, 29.070921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295767, -0.553660, -0.778449,
		-0.176068, -0.769350, 0.614085,
		-0.938894, 0.318686, 0.130067,
		33.534935, 33.022907, 29.109941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838116, 32.219589, 28.937859>,  <34.192162, 32.799828, 29.018894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838116, 32.219589, 28.937859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549538, 32.495914, 28.918732>,  <33.376389, 32.661709, 28.907255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549538, 32.495914, 28.918732>,  <33.838116, 32.219589, 28.937859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549538, 32.495914, 28.918732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379886, -0.452578, -0.806758,
		-0.578963, -0.563868, 0.588943,
		-0.721448, 0.690815, -0.047820,
		33.333103, 32.703159, 28.904387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210358, 31.807447, 28.708216>,  <33.838116, 32.219589, 28.937859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210358, 31.807447, 28.708216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150162, 32.195297, 28.631088>,  <33.114044, 32.428009, 28.584812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150162, 32.195297, 28.631088>,  <33.210358, 31.807447, 28.708216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150162, 32.195297, 28.631088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434852, -0.240083, -0.867908,
		-0.887838, -0.046767, 0.457774,
		-0.150493, 0.969625, -0.192818,
		33.105015, 32.486183, 28.573242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546959, 31.902103, 28.335800>,  <33.210358, 31.807447, 28.708216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546959, 31.902103, 28.335800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746593, 32.240067, 28.258810>,  <32.866375, 32.442844, 28.212616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746593, 32.240067, 28.258810>,  <32.546959, 31.902103, 28.335800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746593, 32.240067, 28.258810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281068, -0.052272, -0.958263,
		-0.819703, 0.532355, 0.211388,
		0.499087, 0.844906, -0.192476,
		32.896320, 32.493538, 28.201067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209080, 32.119873, 27.776985>,  <32.546959, 31.902103, 28.335800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209080, 32.119873, 27.776985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497913, 32.394989, 27.747215>,  <32.671215, 32.560059, 27.729353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497913, 32.394989, 27.747215>,  <32.209080, 32.119873, 27.776985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497913, 32.394989, 27.747215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201118, 0.105766, -0.973840,
		-0.661923, 0.718166, 0.214699,
		0.722087, 0.687787, -0.074427,
		32.714539, 32.601326, 27.724888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949421, 32.807381, 27.530689>,  <32.209080, 32.119873, 27.776985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949421, 32.807381, 27.530689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331585, 32.732620, 27.439245>,  <32.560883, 32.687763, 27.384378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331585, 32.732620, 27.439245>,  <31.949421, 32.807381, 27.530689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331585, 32.732620, 27.439245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220213, 0.064809, -0.973296,
		0.196728, 0.980238, 0.020760,
		0.955408, -0.186903, -0.228611,
		32.618206, 32.676548, 27.370663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247944, 33.291451, 27.034122>,  <31.949421, 32.807381, 27.530689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247944, 33.291451, 27.034122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516106, 32.997818, 26.990896>,  <32.677002, 32.821636, 26.964960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516106, 32.997818, 26.990896>,  <32.247944, 33.291451, 27.034122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516106, 32.997818, 26.990896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003271, 0.148565, -0.988897,
		0.741989, 0.662607, 0.102000,
		0.670404, -0.734084, -0.108066,
		32.717228, 32.777592, 26.958477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778046, 33.596706, 26.772926>,  <32.247944, 33.291451, 27.034122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778046, 33.596706, 26.772926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800449, 33.207348, 26.684055>,  <32.813892, 32.973732, 26.630733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800449, 33.207348, 26.684055>,  <32.778046, 33.596706, 26.772926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800449, 33.207348, 26.684055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071361, 0.225859, -0.971543,
		0.995877, 0.038565, 0.082113,
		0.056013, -0.973397, -0.222175,
		32.817253, 32.915329, 26.617403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181248, 33.560593, 26.100298>,  <32.778046, 33.596706, 26.772926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181248, 33.560593, 26.100298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050919, 33.184986, 26.144274>,  <32.972721, 32.959621, 26.170660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050919, 33.184986, 26.144274>,  <33.181248, 33.560593, 26.100298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050919, 33.184986, 26.144274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126656, -0.158591, -0.979187,
		0.936908, -0.305119, 0.170604,
		-0.325825, -0.939016, 0.109940,
		32.953171, 32.903282, 26.177256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621010, 33.085579, 25.881750>,  <33.181248, 33.560593, 26.100298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621010, 33.085579, 25.881750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252430, 32.933609, 25.849281>,  <33.031281, 32.842426, 25.829800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252430, 32.933609, 25.849281>,  <33.621010, 33.085579, 25.881750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252430, 32.933609, 25.849281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069872, 0.043462, -0.996609,
		0.382161, -0.923997, -0.013502,
		-0.921450, -0.379921, -0.081171,
		32.975994, 32.819633, 25.824930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654900, 32.818531, 25.234098>,  <33.621010, 33.085579, 25.881750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654900, 32.818531, 25.234098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260433, 32.810963, 25.299971>,  <33.023754, 32.806419, 25.339495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260433, 32.810963, 25.299971>,  <33.654900, 32.818531, 25.234098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260433, 32.810963, 25.299971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164693, -0.000913, -0.986344,
		0.018828, -0.999820, -0.002218,
		-0.986166, -0.018936, 0.164681,
		32.964584, 32.805286, 25.349375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457272, 32.341160, 24.810419>,  <33.654900, 32.818531, 25.234098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457272, 32.341160, 24.810419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148319, 32.585686, 24.879377>,  <32.962948, 32.732399, 24.920753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148319, 32.585686, 24.879377>,  <33.457272, 32.341160, 24.810419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148319, 32.585686, 24.879377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124650, 0.120257, -0.984886,
		-0.622804, -0.782200, -0.016684,
		-0.772384, 0.611312, 0.172398,
		32.916603, 32.769077, 24.931097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133484, 32.237572, 24.242569>,  <33.457272, 32.341160, 24.810419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133484, 32.237572, 24.242569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984871, 32.584259, 24.375700>,  <32.895702, 32.792271, 24.455578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984871, 32.584259, 24.375700>,  <33.133484, 32.237572, 24.242569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984871, 32.584259, 24.375700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210306, 0.270602, -0.939439,
		-0.904288, -0.419024, 0.081739,
		-0.371529, 0.866714, 0.332826,
		32.873413, 32.844273, 24.475548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527756, 32.317402, 23.883915>,  <33.133484, 32.237572, 24.242569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527756, 32.317402, 23.883915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646786, 32.678917, 24.006950>,  <32.718204, 32.895828, 24.080772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646786, 32.678917, 24.006950>,  <32.527756, 32.317402, 23.883915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646786, 32.678917, 24.006950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290074, 0.392549, -0.872790,
		-0.909563, 0.170500, 0.378980,
		0.297579, 0.903789, 0.307590,
		32.736061, 32.950054, 24.099228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027798, 32.805584, 23.655235>,  <32.527756, 32.317402, 23.883915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027798, 32.805584, 23.655235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329445, 33.049015, 23.753983>,  <32.510433, 33.195072, 23.813231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329445, 33.049015, 23.753983>,  <32.027798, 32.805584, 23.655235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329445, 33.049015, 23.753983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085728, 0.463903, -0.881728,
		-0.651122, 0.643762, 0.402008,
		0.754116, 0.608577, 0.246869,
		32.555679, 33.231586, 23.828043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741541, 33.395145, 23.473314>,  <32.027798, 32.805584, 23.655235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741541, 33.395145, 23.473314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126987, 33.498051, 23.502314>,  <32.358257, 33.559795, 23.519712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126987, 33.498051, 23.502314>,  <31.741541, 33.395145, 23.473314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126987, 33.498051, 23.502314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075991, 0.523744, -0.848480,
		-0.256252, 0.812102, 0.524239,
		0.963618, 0.257262, 0.072498,
		32.416073, 33.575230, 23.524063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790159, 34.091236, 23.679735>,  <31.741541, 33.395145, 23.473314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790159, 34.091236, 23.679735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134148, 34.013565, 23.490953>,  <32.340542, 33.966965, 23.377684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134148, 34.013565, 23.490953>,  <31.790159, 34.091236, 23.679735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134148, 34.013565, 23.490953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245370, 0.653566, -0.715992,
		0.447482, 0.731538, 0.514405,
		0.859973, -0.194174, -0.471956,
		32.392139, 33.955311, 23.349367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078205, 34.834030, 23.554605>,  <31.790159, 34.091236, 23.679735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078205, 34.834030, 23.554605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240211, 34.573177, 23.298265>,  <32.337418, 34.416668, 23.144461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240211, 34.573177, 23.298265>,  <32.078205, 34.834030, 23.554605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240211, 34.573177, 23.298265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198944, 0.621262, -0.757928,
		0.892402, 0.434468, 0.121886,
		0.405019, -0.652128, -0.640850,
		32.361717, 34.377541, 23.106010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626369, 35.173584, 23.095514>,  <32.078205, 34.834030, 23.554605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626369, 35.173584, 23.095514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497993, 34.849640, 22.899101>,  <32.420967, 34.655273, 22.781254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497993, 34.849640, 22.899101>,  <32.626369, 35.173584, 23.095514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497993, 34.849640, 22.899101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169480, 0.559203, -0.811523,
		0.931811, -0.177232, -0.316728,
		-0.320943, -0.809865, -0.491034,
		32.401711, 34.606682, 22.751791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762947, 35.326237, 22.361177>,  <32.626369, 35.173584, 23.095514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762947, 35.326237, 22.361177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543983, 34.991783, 22.347160>,  <32.412605, 34.791111, 22.338749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543983, 34.991783, 22.347160>,  <32.762947, 35.326237, 22.361177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543983, 34.991783, 22.347160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482031, 0.349257, -0.803534,
		0.684101, -0.422966, -0.594227,
		-0.547405, -0.836134, -0.035044,
		32.379761, 34.740944, 22.336647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730518, 35.036640, 21.625517>,  <32.762947, 35.326237, 22.361177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730518, 35.036640, 21.625517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410412, 34.895641, 21.819553>,  <32.218346, 34.811043, 21.935976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410412, 34.895641, 21.819553>,  <32.730518, 35.036640, 21.625517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410412, 34.895641, 21.819553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558710, 0.144576, -0.816664,
		0.217743, -0.924576, -0.312645,
		-0.800269, -0.352501, 0.485090,
		32.170330, 34.789890, 21.965080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376190, 34.508739, 21.113461>,  <32.730518, 35.036640, 21.625517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376190, 34.508739, 21.113461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100140, 34.604836, 21.386520>,  <31.934509, 34.662495, 21.550356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100140, 34.604836, 21.386520>,  <32.376190, 34.508739, 21.113461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100140, 34.604836, 21.386520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661373, 0.173565, -0.729699,
		-0.293788, -0.955070, 0.039106,
		-0.690127, 0.240241, 0.682649,
		31.893101, 34.676907, 21.591314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644779, 34.227322, 20.823523>,  <32.376190, 34.508739, 21.113461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644779, 34.227322, 20.823523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579536, 34.505062, 21.103886>,  <31.540392, 34.671707, 21.272102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579536, 34.505062, 21.103886>,  <31.644779, 34.227322, 20.823523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579536, 34.505062, 21.103886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710831, 0.409956, -0.571537,
		-0.684190, -0.591447, 0.426703,
		-0.163105, 0.694354, 0.700907,
		31.530605, 34.713367, 21.314157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930141, 34.370102, 20.784342>,  <31.644779, 34.227322, 20.823523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930141, 34.370102, 20.784342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131702, 34.678646, 20.939821>,  <31.252638, 34.863773, 21.033108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131702, 34.678646, 20.939821>,  <30.930141, 34.370102, 20.784342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131702, 34.678646, 20.939821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412860, 0.610360, -0.676023,
		-0.758704, 0.180171, 0.626025,
		0.503900, 0.771362, 0.388696,
		31.282873, 34.910053, 21.056431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503227, 35.095268, 20.988180>,  <30.930141, 34.370102, 20.784342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503227, 35.095268, 20.988180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887924, 35.130390, 20.884377>,  <31.118742, 35.151463, 20.822094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887924, 35.130390, 20.884377>,  <30.503227, 35.095268, 20.988180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887924, 35.130390, 20.884377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267361, 0.507445, -0.819157,
		0.059762, 0.857199, 0.511505,
		0.961741, 0.087802, -0.259508,
		31.176447, 35.156731, 20.806524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794880, 35.751560, 21.102621>,  <30.503227, 35.095268, 20.988180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794880, 35.751560, 21.102621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953539, 35.580128, 20.777908>,  <31.048735, 35.477268, 20.583080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953539, 35.580128, 20.777908>,  <30.794880, 35.751560, 21.102621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953539, 35.580128, 20.777908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232822, 0.808438, -0.540576,
		0.887955, 0.403419, 0.220883,
		0.396649, -0.428581, -0.811781,
		31.072533, 35.451553, 20.534374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668310, 36.488014, 20.864460>,  <30.794880, 35.751560, 21.102621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668310, 36.488014, 20.864460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944376, 36.773087, 20.814245>,  <31.110016, 36.944130, 20.784117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944376, 36.773087, 20.814245>,  <30.668310, 36.488014, 20.864460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944376, 36.773087, 20.814245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416406, 0.249234, -0.874350,
		-0.591845, 0.655720, 0.468777,
		0.690163, 0.712681, -0.125538,
		31.151424, 36.986893, 20.776585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329878, 37.203033, 20.824566>,  <30.668310, 36.488014, 20.864460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329878, 37.203033, 20.824566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656067, 37.136700, 20.602755>,  <30.851780, 37.096901, 20.469667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656067, 37.136700, 20.602755>,  <30.329878, 37.203033, 20.824566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656067, 37.136700, 20.602755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474061, 0.358304, -0.804291,
		0.332068, 0.918759, 0.213572,
		0.815473, -0.165833, -0.554529,
		30.900709, 37.086948, 20.436396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308071, 37.883801, 20.360558>,  <30.329878, 37.203033, 20.824566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308071, 37.883801, 20.360558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466665, 37.531010, 20.258650>,  <30.561823, 37.319336, 20.197504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466665, 37.531010, 20.258650>,  <30.308071, 37.883801, 20.360558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466665, 37.531010, 20.258650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508785, 0.019893, -0.860664,
		0.764156, 0.470866, -0.440851,
		0.396487, -0.881980, -0.254771,
		30.585611, 37.266415, 20.182219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861216, 37.554173, 19.932709>,  <30.308071, 37.883801, 20.360558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861216, 37.554173, 19.932709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144564, 37.599255, 19.653994>,  <30.314571, 37.626305, 19.486765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144564, 37.599255, 19.653994>,  <29.861216, 37.554173, 19.932709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144564, 37.599255, 19.653994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701156, -0.225933, 0.676265,
		-0.081206, -0.967601, -0.239070,
		0.708368, 0.112708, -0.696786,
		30.357075, 37.633068, 19.444958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323637, 36.935509, 19.794603>,  <29.861216, 37.554173, 19.932709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323637, 36.935509, 19.794603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513279, 37.281322, 19.727896>,  <30.627064, 37.488811, 19.687872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513279, 37.281322, 19.727896>,  <30.323637, 36.935509, 19.794603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513279, 37.281322, 19.727896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725925, -0.276626, 0.629692,
		0.498255, -0.419601, -0.758734,
		0.474105, 0.864530, -0.166768,
		30.655510, 37.540680, 19.677866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157917, 36.937984, 19.512711>,  <30.323637, 36.935509, 19.794603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157917, 36.937984, 19.512711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037657, 37.222767, 19.766554>,  <30.965502, 37.393635, 19.918859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037657, 37.222767, 19.766554>,  <31.157917, 36.937984, 19.512711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037657, 37.222767, 19.766554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786963, -0.190714, 0.586786,
		0.538795, 0.675831, -0.502945,
		-0.300649, 0.711956, 0.634609,
		30.947462, 37.436352, 19.956936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766485, 37.394951, 19.753307>,  <31.157917, 36.937984, 19.512711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766485, 37.394951, 19.753307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476753, 37.424015, 20.027554>,  <31.302914, 37.441452, 20.192102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476753, 37.424015, 20.027554>,  <31.766485, 37.394951, 19.753307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476753, 37.424015, 20.027554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672858, -0.142395, 0.725938,
		0.150372, 0.987140, 0.054253,
		-0.724328, 0.072656, 0.685617,
		31.259455, 37.445812, 20.233238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990135, 37.894348, 20.370619>,  <31.766485, 37.394951, 19.753307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990135, 37.894348, 20.370619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727230, 37.636238, 20.526375>,  <31.569487, 37.481373, 20.619829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727230, 37.636238, 20.526375>,  <31.990135, 37.894348, 20.370619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727230, 37.636238, 20.526375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605444, -0.144382, 0.782682,
		-0.448827, 0.750180, 0.485576,
		-0.657261, -0.645278, 0.389389,
		31.530052, 37.442654, 20.643192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034428, 38.017746, 21.061539>,  <31.990135, 37.894348, 20.370619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034428, 38.017746, 21.061539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857214, 37.659798, 21.039907>,  <31.750885, 37.445030, 21.026930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857214, 37.659798, 21.039907>,  <32.034428, 38.017746, 21.061539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857214, 37.659798, 21.039907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326045, -0.217020, 0.920107,
		-0.835114, 0.390008, 0.387916,
		-0.443035, -0.894872, -0.054076,
		31.724304, 37.391335, 21.023685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588224, 38.058998, 21.683300>,  <32.034428, 38.017746, 21.061539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588224, 38.058998, 21.683300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646673, 37.666233, 21.635145>,  <31.681742, 37.430573, 21.606253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646673, 37.666233, 21.635145>,  <31.588224, 38.058998, 21.683300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646673, 37.666233, 21.635145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157660, -0.097025, 0.982715,
		-0.976623, -0.162577, 0.140631,
		0.146122, -0.981914, -0.120389,
		31.690510, 37.371658, 21.599028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085106, 37.779346, 22.098194>,  <31.588224, 38.058998, 21.683300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085106, 37.779346, 22.098194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392748, 37.531132, 22.036989>,  <31.577333, 37.382202, 22.000267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392748, 37.531132, 22.036989>,  <31.085106, 37.779346, 22.098194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392748, 37.531132, 22.036989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153667, -0.052843, 0.986709,
		-0.620373, -0.782396, 0.054713,
		0.769106, -0.620536, -0.153011,
		31.623480, 37.344971, 21.991085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084770, 37.500729, 22.682339>,  <31.085106, 37.779346, 22.098194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084770, 37.500729, 22.682339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451521, 37.408485, 22.552010>,  <31.671572, 37.353138, 22.473812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451521, 37.408485, 22.552010>,  <31.084770, 37.500729, 22.682339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451521, 37.408485, 22.552010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328089, -0.029578, 0.944184,
		-0.227375, -0.972597, 0.048542,
		0.916874, -0.230610, -0.325823,
		31.726583, 37.339302, 22.454262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401361, 36.842968, 23.048306>,  <31.084770, 37.500729, 22.682339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401361, 36.842968, 23.048306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688602, 37.076408, 22.896652>,  <31.860947, 37.216473, 22.805660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688602, 37.076408, 22.896652>,  <31.401361, 36.842968, 23.048306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688602, 37.076408, 22.896652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478065, -0.017761, 0.878145,
		0.505750, -0.811848, -0.291752,
		0.718102, 0.583598, -0.379134,
		31.904034, 37.251488, 22.782911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942633, 36.563789, 23.376144>,  <31.401361, 36.842968, 23.048306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942633, 36.563789, 23.376144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085865, 36.910339, 23.236900>,  <32.171806, 37.118267, 23.153355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085865, 36.910339, 23.236900>,  <31.942633, 36.563789, 23.376144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085865, 36.910339, 23.236900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507266, 0.132493, 0.851544,
		0.783874, -0.481506, -0.392037,
		0.358081, 0.866370, -0.348110,
		32.193291, 37.170250, 23.132467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700676, 36.541862, 23.489397>,  <31.942633, 36.563789, 23.376144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700676, 36.541862, 23.489397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589260, 36.925201, 23.464157>,  <32.522411, 37.155205, 23.449013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589260, 36.925201, 23.464157>,  <32.700676, 36.541862, 23.489397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589260, 36.925201, 23.464157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466401, 0.192402, 0.863396,
		0.839576, 0.211059, -0.500566,
		-0.278538, 0.958350, -0.063098,
		32.505699, 37.212708, 23.445229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181438, 36.882114, 23.801470>,  <32.700676, 36.541862, 23.489397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181438, 36.882114, 23.801470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897987, 37.164295, 23.806992>,  <32.727917, 37.333603, 23.810305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897987, 37.164295, 23.806992>,  <33.181438, 36.882114, 23.801470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897987, 37.164295, 23.806992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307135, 0.290790, 0.906151,
		0.635229, 0.646362, -0.422729,
		-0.708627, 0.705448, 0.013802,
		32.685398, 37.375931, 23.811132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459606, 37.595959, 23.881525>,  <33.181438, 36.882114, 23.801470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459606, 37.595959, 23.881525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086803, 37.610851, 24.025730>,  <32.863121, 37.619785, 24.112253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086803, 37.610851, 24.025730>,  <33.459606, 37.595959, 23.881525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086803, 37.610851, 24.025730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340709, 0.429190, 0.836489,
		-0.123584, 0.902446, -0.412695,
		-0.932011, 0.037232, 0.360513,
		32.807201, 37.622021, 24.133884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448383, 38.243839, 24.258410>,  <33.459606, 37.595959, 23.881525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448383, 38.243839, 24.258410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119518, 38.070122, 24.405622>,  <32.922199, 37.965893, 24.493950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119518, 38.070122, 24.405622>,  <33.448383, 38.243839, 24.258410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119518, 38.070122, 24.405622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040084, 0.600741, 0.798438,
		-0.567845, 0.671195, -0.476496,
		-0.822159, -0.434289, 0.368032,
		32.872871, 37.939835, 24.516031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065952, 38.794426, 24.588432>,  <33.448383, 38.243839, 24.258410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065952, 38.794426, 24.588432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938469, 38.451752, 24.750677>,  <32.861980, 38.246147, 24.848024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938469, 38.451752, 24.750677>,  <33.065952, 38.794426, 24.588432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938469, 38.451752, 24.750677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133110, 0.383236, 0.914009,
		-0.938461, 0.345291, -0.008106,
		-0.318705, -0.856682, 0.405614,
		32.842857, 38.194748, 24.872362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446926, 38.923931, 25.052366>,  <33.065952, 38.794426, 24.588432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446926, 38.923931, 25.052366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619316, 38.583149, 25.171310>,  <32.722752, 38.378677, 25.242676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619316, 38.583149, 25.171310>,  <32.446926, 38.923931, 25.052366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619316, 38.583149, 25.171310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078133, 0.363529, 0.928301,
		-0.898973, -0.376844, 0.223239,
		0.430978, -0.851960, 0.297359,
		32.748611, 38.327560, 25.260519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097988, 38.741352, 25.678347>,  <32.446926, 38.923931, 25.052366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097988, 38.741352, 25.678347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401810, 38.482979, 25.708937>,  <32.584103, 38.327953, 25.727291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401810, 38.482979, 25.708937>,  <32.097988, 38.741352, 25.678347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401810, 38.482979, 25.708937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009609, 0.128703, 0.991637,
		-0.650376, -0.752464, 0.103963,
		0.759551, -0.645936, 0.076475,
		32.629677, 38.289200, 25.731878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038033, 38.431969, 26.315149>,  <32.097988, 38.741352, 25.678347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038033, 38.431969, 26.315149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421402, 38.341484, 26.245575>,  <32.651424, 38.287193, 26.203831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421402, 38.341484, 26.245575>,  <32.038033, 38.431969, 26.315149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421402, 38.341484, 26.245575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209407, 0.143498, 0.967242,
		-0.193842, -0.963450, 0.184902,
		0.958423, -0.226212, -0.173938,
		32.708927, 38.273621, 26.193394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195980, 37.880196, 26.791555>,  <32.038033, 38.431969, 26.315149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195980, 37.880196, 26.791555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546932, 38.039345, 26.684303>,  <32.757504, 38.134834, 26.619951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546932, 38.039345, 26.684303>,  <32.195980, 37.880196, 26.791555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546932, 38.039345, 26.684303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198805, 0.207138, 0.957899,
		0.436667, -0.893749, 0.102640,
		0.877382, 0.397877, -0.268132,
		32.810146, 38.158707, 26.603863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608208, 37.579903, 27.174049>,  <32.195980, 37.880196, 26.791555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608208, 37.579903, 27.174049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787052, 37.917679, 27.056053>,  <32.894360, 38.120342, 26.985256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787052, 37.917679, 27.056053>,  <32.608208, 37.579903, 27.174049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787052, 37.917679, 27.056053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215210, 0.218546, 0.951800,
		0.868205, -0.489041, -0.084019,
		0.447107, 0.844439, -0.294989,
		32.921185, 38.171009, 26.967556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258865, 37.589077, 27.522381>,  <32.608208, 37.579903, 27.174049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258865, 37.589077, 27.522381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198689, 37.972851, 27.427015>,  <33.162582, 38.203117, 27.369795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198689, 37.972851, 27.427015>,  <33.258865, 37.589077, 27.522381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198689, 37.972851, 27.427015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222289, 0.267815, 0.937477,
		0.963303, 0.088043, -0.253564,
		-0.150447, 0.959439, -0.238416,
		33.153553, 38.260681, 27.355490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937462, 37.800552, 27.663076>,  <33.258865, 37.589077, 27.522381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937462, 37.800552, 27.663076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677666, 38.104351, 27.648495>,  <33.521786, 38.286629, 27.639746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677666, 38.104351, 27.648495>,  <33.937462, 37.800552, 27.663076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677666, 38.104351, 27.648495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379273, 0.365149, 0.850187,
		0.659023, 0.538364, -0.525217,
		-0.649492, 0.759494, -0.036455,
		33.482819, 38.332199, 27.637558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292820, 38.413322, 27.903225>,  <33.937462, 37.800552, 27.663076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292820, 38.413322, 27.903225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901974, 38.490826, 27.938353>,  <33.667465, 38.537327, 27.959429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901974, 38.490826, 27.938353>,  <34.292820, 38.413322, 27.903225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901974, 38.490826, 27.938353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147358, 0.318757, 0.936312,
		0.153424, 0.927821, -0.340013,
		-0.977111, 0.193757, 0.087817,
		33.608841, 38.548954, 27.964697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322613, 39.022442, 28.123594>,  <34.292820, 38.413322, 27.903225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322613, 39.022442, 28.123594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957512, 38.904278, 28.236456>,  <33.738449, 38.833378, 28.304173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957512, 38.904278, 28.236456>,  <34.322613, 39.022442, 28.123594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957512, 38.904278, 28.236456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156840, 0.384338, 0.909772,
		-0.377200, 0.874652, -0.304474,
		-0.912755, -0.295412, 0.282153,
		33.683685, 38.815655, 28.321102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994446, 39.625389, 28.563599>,  <34.322613, 39.022442, 28.123594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994446, 39.625389, 28.563599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802326, 39.284126, 28.645023>,  <33.687054, 39.079369, 28.693878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802326, 39.284126, 28.645023>,  <33.994446, 39.625389, 28.563599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802326, 39.284126, 28.645023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177535, 0.132719, 0.975124,
		-0.858950, 0.504489, 0.087720,
		-0.480297, -0.853157, 0.203563,
		33.658237, 39.028179, 28.706093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518364, 39.755127, 29.081955>,  <33.994446, 39.625389, 28.563599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518364, 39.755127, 29.081955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548717, 39.357025, 29.106339>,  <33.566929, 39.118164, 29.120968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548717, 39.357025, 29.106339>,  <33.518364, 39.755127, 29.081955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548717, 39.357025, 29.106339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195952, 0.074829, 0.977754,
		-0.977673, -0.062255, 0.200700,
		0.075888, -0.995251, 0.060959,
		33.571484, 39.058449, 29.124626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963001, 39.544498, 29.642864>,  <33.518364, 39.755127, 29.081955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963001, 39.544498, 29.642864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227962, 39.248791, 29.594351>,  <33.386940, 39.071365, 29.565243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227962, 39.248791, 29.594351>,  <32.963001, 39.544498, 29.642864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227962, 39.248791, 29.594351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146577, -0.030870, 0.988718,
		-0.734670, -0.672704, 0.087912,
		0.662401, -0.739267, -0.121282,
		33.426682, 39.027012, 29.557966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678493, 38.998451, 30.025747>,  <32.963001, 39.544498, 29.642864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678493, 38.998451, 30.025747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073975, 38.959641, 29.980034>,  <33.311264, 38.936356, 29.952606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073975, 38.959641, 29.980034>,  <32.678493, 38.998451, 30.025747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073975, 38.959641, 29.980034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104636, -0.099307, 0.989540,
		-0.107390, -0.990312, -0.088029,
		0.988696, -0.097055, -0.114287,
		33.370583, 38.930534, 29.945749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824776, 38.492977, 30.427172>,  <32.678493, 38.998451, 30.025747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824776, 38.492977, 30.427172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198288, 38.623199, 30.367743>,  <33.422394, 38.701332, 30.332085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198288, 38.623199, 30.367743>,  <32.824776, 38.492977, 30.427172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198288, 38.623199, 30.367743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212248, -0.169583, 0.962389,
		0.288117, -0.930191, -0.227451,
		0.933777, 0.325556, -0.148571,
		33.478420, 38.720867, 30.323172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310627, 37.945660, 30.727835>,  <32.824776, 38.492977, 30.427172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310627, 37.945660, 30.727835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483112, 38.305450, 30.699568>,  <33.586601, 38.521324, 30.682608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483112, 38.305450, 30.699568>,  <33.310627, 37.945660, 30.727835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483112, 38.305450, 30.699568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359131, -0.099260, 0.927994,
		0.827698, -0.425538, -0.365833,
		0.431209, 0.899480, -0.070667,
		33.612476, 38.575294, 30.678368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809700, 37.851089, 31.195164>,  <33.310627, 37.945660, 30.727835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809700, 37.851089, 31.195164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797966, 38.247322, 31.141665>,  <33.790928, 38.485062, 31.109564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797966, 38.247322, 31.141665>,  <33.809700, 37.851089, 31.195164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797966, 38.247322, 31.141665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278915, 0.136604, 0.950550,
		0.959868, -0.009422, -0.280295,
		-0.029334, 0.990581, -0.133749,
		33.789165, 38.544495, 31.101540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408348, 37.951557, 31.502766>,  <33.809700, 37.851089, 31.195164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408348, 37.951557, 31.502766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205173, 38.293552, 31.460810>,  <34.083271, 38.498749, 31.435637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205173, 38.293552, 31.460810>,  <34.408348, 37.951557, 31.502766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205173, 38.293552, 31.460810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251718, 0.263774, 0.931161,
		0.823797, 0.446567, -0.349195,
		-0.507934, 0.854986, -0.104887,
		34.052792, 38.550049, 31.429344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933357, 38.467407, 31.729792>,  <34.408348, 37.951557, 31.502766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933357, 38.467407, 31.729792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566883, 38.625019, 31.759062>,  <34.347000, 38.719585, 31.776625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566883, 38.625019, 31.759062>,  <34.933357, 38.467407, 31.729792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566883, 38.625019, 31.759062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145933, 0.157950, 0.976604,
		0.373248, 0.905426, -0.202212,
		-0.916182, 0.394025, 0.073177,
		34.292030, 38.743225, 31.781015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070961, 39.050411, 32.189297>,  <34.933357, 38.467407, 31.729792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070961, 39.050411, 32.189297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679527, 38.968094, 32.187210>,  <34.444668, 38.918701, 32.185959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679527, 38.968094, 32.187210>,  <35.070961, 39.050411, 32.189297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679527, 38.968094, 32.187210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016095, -0.101759, 0.994679,
		-0.205233, 0.973290, 0.102892,
		-0.978581, -0.205797, -0.005219,
		34.385952, 38.906357, 32.185646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821964, 39.384712, 32.812546>,  <35.070961, 39.050411, 32.189297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821964, 39.384712, 32.812546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524345, 39.135368, 32.716366>,  <34.345772, 38.985764, 32.658657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524345, 39.135368, 32.716366>,  <34.821964, 39.384712, 32.812546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524345, 39.135368, 32.716366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099392, -0.252617, 0.962448,
		-0.660691, 0.740008, 0.126003,
		-0.744049, -0.623356, -0.240452,
		34.301132, 38.948360, 32.644230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488338, 39.475998, 33.416275>,  <34.821964, 39.384712, 32.812546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488338, 39.475998, 33.416275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351761, 39.146286, 33.235619>,  <34.269814, 38.948460, 33.127224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351761, 39.146286, 33.235619>,  <34.488338, 39.475998, 33.416275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351761, 39.146286, 33.235619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104267, -0.444339, 0.889771,
		-0.934101, 0.350898, 0.065771,
		-0.341443, -0.824278, -0.451644,
		34.249329, 38.899002, 33.100124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763874, 39.353348, 33.678059>,  <34.488338, 39.475998, 33.416275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763874, 39.353348, 33.678059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967457, 39.030968, 33.557129>,  <34.089607, 38.837540, 33.484570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967457, 39.030968, 33.557129>,  <33.763874, 39.353348, 33.678059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967457, 39.030968, 33.557129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077213, -0.392547, 0.916485,
		-0.857322, -0.443108, -0.262020,
		0.508957, -0.805954, -0.302325,
		34.120144, 38.789181, 33.466431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495502, 38.780140, 34.099545>,  <33.763874, 39.353348, 33.678059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495502, 38.780140, 34.099545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845417, 38.650215, 33.955742>,  <34.055367, 38.572258, 33.869461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845417, 38.650215, 33.955742>,  <33.495502, 38.780140, 34.099545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845417, 38.650215, 33.955742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257424, -0.317020, 0.912815,
		-0.410468, -0.891063, -0.193709,
		0.874785, -0.324816, -0.359507,
		34.107853, 38.552773, 33.847889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409389, 38.118153, 34.230309>,  <33.495502, 38.780140, 34.099545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409389, 38.118153, 34.230309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792259, 38.224373, 34.184166>,  <34.021980, 38.288105, 34.156483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792259, 38.224373, 34.184166>,  <33.409389, 38.118153, 34.230309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792259, 38.224373, 34.184166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243496, -0.522800, 0.816939,
		0.156631, -0.810039, -0.565069,
		0.957171, 0.265550, -0.115354,
		34.079411, 38.304039, 34.149559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798321, 37.504833, 34.566216>,  <33.409389, 38.118153, 34.230309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798321, 37.504833, 34.566216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075565, 37.792324, 34.544212>,  <34.241913, 37.964817, 34.531010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075565, 37.792324, 34.544212>,  <33.798321, 37.504833, 34.566216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075565, 37.792324, 34.544212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375447, -0.294820, 0.878704,
		0.615333, -0.629692, -0.474188,
		0.693113, 0.718728, -0.055004,
		34.283501, 38.007942, 34.527710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475368, 37.198303, 34.590977>,  <33.798321, 37.504833, 34.566216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475368, 37.198303, 34.590977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503429, 37.574158, 34.724941>,  <34.520267, 37.799671, 34.805321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503429, 37.574158, 34.724941>,  <34.475368, 37.198303, 34.590977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503429, 37.574158, 34.724941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401056, -0.333977, 0.853002,
		0.913363, 0.074476, -0.400276,
		0.070155, 0.939634, 0.334911,
		34.524475, 37.856049, 34.825413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229202, 37.225163, 34.795284>,  <34.475368, 37.198303, 34.590977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229202, 37.225163, 34.795284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065266, 37.539368, 34.980755>,  <34.966904, 37.727890, 35.092037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065266, 37.539368, 34.980755>,  <35.229202, 37.225163, 34.795284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065266, 37.539368, 34.980755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488399, -0.240353, 0.838866,
		0.770389, 0.570260, -0.285139,
		-0.409838, 0.785515, 0.463679,
		34.942314, 37.775021, 35.119858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783527, 37.579006, 35.026539>,  <35.229202, 37.225163, 34.795284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783527, 37.579006, 35.026539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486584, 37.709984, 35.260353>,  <35.308418, 37.788570, 35.400642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486584, 37.709984, 35.260353>,  <35.783527, 37.579006, 35.026539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486584, 37.709984, 35.260353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621341, 0.010037, 0.783476,
		0.250677, 0.944818, -0.210905,
		-0.742358, 0.327443, 0.584538,
		35.263878, 37.808216, 35.435715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497200, 37.846451, 34.884041>,  <35.783527, 37.579006, 35.026539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497200, 37.846451, 34.884041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891445, 37.913940, 34.887863>,  <37.127995, 37.954433, 34.890156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891445, 37.913940, 34.887863>,  <36.497200, 37.846451, 34.884041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891445, 37.913940, 34.887863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021270, 0.179934, -0.983449,
		-0.167650, 0.969101, 0.180935,
		0.985617, 0.168724, 0.009554,
		37.187130, 37.964558, 34.890728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642883, 38.430275, 34.562672>,  <36.497200, 37.846451, 34.884041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642883, 38.430275, 34.562672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024734, 38.312374, 34.545658>,  <37.253845, 38.241634, 34.535450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024734, 38.312374, 34.545658>,  <36.642883, 38.430275, 34.562672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024734, 38.312374, 34.545658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029832, 0.236763, -0.971109,
		0.296305, 0.925779, 0.234813,
		0.954627, -0.294749, -0.042536,
		37.311123, 38.223949, 34.532898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944801, 38.846996, 34.099934>,  <36.642883, 38.430275, 34.562672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944801, 38.846996, 34.099934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194439, 38.534847, 34.084274>,  <37.344223, 38.347557, 34.074879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194439, 38.534847, 34.084274>,  <36.944801, 38.846996, 34.099934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194439, 38.534847, 34.084274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153560, 0.171624, -0.973121,
		0.766111, 0.601307, 0.226943,
		0.624094, -0.780368, -0.039146,
		37.381668, 38.300735, 34.072529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511101, 39.046108, 33.806324>,  <36.944801, 38.846996, 34.099934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511101, 39.046108, 33.806324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535988, 38.651344, 33.746811>,  <37.550919, 38.414486, 33.711102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535988, 38.651344, 33.746811>,  <37.511101, 39.046108, 33.806324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535988, 38.651344, 33.746811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210324, 0.158688, -0.964667,
		0.975650, 0.028728, 0.217445,
		0.062219, -0.986911, -0.148782,
		37.554653, 38.355270, 33.702175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007900, 38.981415, 33.237221>,  <37.511101, 39.046108, 33.806324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007900, 38.981415, 33.237221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836975, 38.620590, 33.261501>,  <37.734421, 38.404095, 33.276070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836975, 38.620590, 33.261501>,  <38.007900, 38.981415, 33.237221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836975, 38.620590, 33.261501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124251, -0.125095, -0.984334,
		0.895527, -0.413073, 0.165537,
		-0.427309, -0.902066, 0.060701,
		37.708782, 38.349972, 33.279713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527912, 38.499596, 32.906765>,  <38.007900, 38.981415, 33.237221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527912, 38.499596, 32.906765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175949, 38.311470, 32.879745>,  <37.964771, 38.198593, 32.863533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175949, 38.311470, 32.879745>,  <38.527912, 38.499596, 32.906765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175949, 38.311470, 32.879745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141097, -0.122895, -0.982338,
		0.453706, -0.873900, 0.174497,
		-0.879911, -0.470314, -0.067547,
		37.911976, 38.170376, 32.859482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628639, 37.891438, 32.498241>,  <38.527912, 38.499596, 32.906765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628639, 37.891438, 32.498241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242832, 37.996651, 32.489140>,  <38.011349, 38.059780, 32.483677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242832, 37.996651, 32.489140>,  <38.628639, 37.891438, 32.498241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242832, 37.996651, 32.489140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017479, -0.149613, -0.988590,
		-0.263441, -0.953114, 0.148902,
		-0.964517, 0.263038, -0.022754,
		37.953476, 38.075562, 32.482315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301300, 37.318783, 32.019390>,  <38.628639, 37.891438, 32.498241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301300, 37.318783, 32.019390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033188, 37.615501, 32.027985>,  <37.872318, 37.793533, 32.033142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033188, 37.615501, 32.027985>,  <38.301300, 37.318783, 32.019390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033188, 37.615501, 32.027985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101618, -0.063067, -0.992822,
		-0.735116, -0.667654, 0.117652,
		-0.670282, 0.741795, 0.021484,
		37.832104, 37.838039, 32.034431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868534, 37.124088, 31.532604>,  <38.301300, 37.318783, 32.019390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868534, 37.124088, 31.532604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770451, 37.507980, 31.587448>,  <37.711601, 37.738316, 31.620356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770451, 37.507980, 31.587448>,  <37.868534, 37.124088, 31.532604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770451, 37.507980, 31.587448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211990, 0.084928, -0.973575,
		-0.946010, -0.267792, 0.182627,
		-0.245206, 0.959727, 0.137112,
		37.696888, 37.795898, 31.628582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213654, 37.287045, 31.198517>,  <37.868534, 37.124088, 31.532604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213654, 37.287045, 31.198517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422607, 37.626125, 31.235441>,  <37.547977, 37.829575, 31.257597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422607, 37.626125, 31.235441>,  <37.213654, 37.287045, 31.198517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422607, 37.626125, 31.235441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417065, 0.348423, -0.839439,
		-0.743757, 0.400007, 0.535556,
		0.522382, 0.847701, 0.092313,
		37.579323, 37.880436, 31.263136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731361, 37.633343, 31.057772>,  <37.213654, 37.287045, 31.198517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731361, 37.633343, 31.057772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037842, 37.877998, 30.978939>,  <37.221729, 38.024792, 30.931639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037842, 37.877998, 30.978939>,  <36.731361, 37.633343, 31.057772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037842, 37.877998, 30.978939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485524, 0.350094, -0.801063,
		-0.420962, 0.709461, 0.565205,
		0.766197, 0.611637, -0.197084,
		37.267700, 38.061489, 30.919813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403168, 38.187859, 30.813734>,  <36.731361, 37.633343, 31.057772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403168, 38.187859, 30.813734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785133, 38.244793, 30.709517>,  <37.014313, 38.278954, 30.646986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785133, 38.244793, 30.709517>,  <36.403168, 38.187859, 30.813734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785133, 38.244793, 30.709517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292002, 0.291670, -0.910858,
		-0.053657, 0.945869, 0.320083,
		0.954911, 0.142339, -0.260545,
		37.071606, 38.287495, 30.631353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464184, 38.906975, 30.469713>,  <36.403168, 38.187859, 30.813734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464184, 38.906975, 30.469713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793800, 38.716137, 30.347506>,  <36.991570, 38.601635, 30.274181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793800, 38.716137, 30.347506>,  <36.464184, 38.906975, 30.469713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793800, 38.716137, 30.347506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243445, 0.188756, -0.951370,
		0.511562, 0.858343, 0.039396,
		0.824038, -0.477094, -0.305519,
		37.041012, 38.573009, 30.255850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859131, 39.342346, 30.044434>,  <36.464184, 38.906975, 30.469713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859131, 39.342346, 30.044434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963123, 38.970482, 29.940016>,  <37.025520, 38.747364, 29.877365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963123, 38.970482, 29.940016>,  <36.859131, 39.342346, 30.044434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963123, 38.970482, 29.940016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403936, 0.140844, -0.903880,
		0.877067, 0.340436, -0.338907,
		0.259980, -0.929659, -0.261044,
		37.041119, 38.691586, 29.861702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088631, 39.378002, 29.390181>,  <36.859131, 39.342346, 30.044434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088631, 39.378002, 29.390181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995331, 38.991264, 29.431768>,  <36.939350, 38.759224, 29.456720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995331, 38.991264, 29.431768>,  <37.088631, 39.378002, 29.390181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995331, 38.991264, 29.431768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542320, 0.040595, -0.839191,
		0.807144, -0.252129, -0.533807,
		-0.233254, -0.966842, 0.103969,
		36.925354, 38.701210, 29.462959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185444, 39.130566, 28.788652>,  <37.088631, 39.378002, 29.390181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185444, 39.130566, 28.788652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941025, 38.853100, 28.941202>,  <36.794373, 38.686619, 29.032732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941025, 38.853100, 28.941202>,  <37.185444, 39.130566, 28.788652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941025, 38.853100, 28.941202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602851, 0.095551, -0.792112,
		0.513021, -0.713930, -0.476564,
		-0.611049, -0.693667, 0.381374,
		36.757710, 38.645000, 29.055614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199306, 38.642208, 28.261396>,  <37.185444, 39.130566, 28.788652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199306, 38.642208, 28.261396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891922, 38.592049, 28.512390>,  <36.707489, 38.561954, 28.662987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891922, 38.592049, 28.512390>,  <37.199306, 38.642208, 28.261396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891922, 38.592049, 28.512390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627885, -0.041297, -0.777210,
		0.123376, -0.991246, -0.047002,
		-0.768466, -0.125401, 0.627483,
		36.661381, 38.554428, 28.700636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884670, 37.966290, 28.024986>,  <37.199306, 38.642208, 28.261396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884670, 37.966290, 28.024986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609425, 38.169182, 28.232531>,  <36.444279, 38.290916, 28.357058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609425, 38.169182, 28.232531>,  <36.884670, 37.966290, 28.024986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609425, 38.169182, 28.232531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668064, -0.163805, -0.725850,
		-0.283187, -0.846096, 0.451583,
		-0.688111, 0.507237, 0.518858,
		36.402992, 38.321354, 28.388189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320988, 37.542999, 27.980164>,  <36.884670, 37.966290, 28.024986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320988, 37.542999, 27.980164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152351, 37.891056, 28.082233>,  <36.051170, 38.099892, 28.143476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152351, 37.891056, 28.082233>,  <36.320988, 37.542999, 27.980164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152351, 37.891056, 28.082233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683824, -0.120266, -0.719668,
		-0.595525, -0.477898, 0.645727,
		-0.421586, 0.870143, 0.255177,
		36.025875, 38.152100, 28.158787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575874, 37.450325, 28.027681>,  <36.320988, 37.542999, 27.980164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575874, 37.450325, 28.027681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649895, 37.834763, 27.945650>,  <35.694305, 38.065426, 27.896431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649895, 37.834763, 27.945650>,  <35.575874, 37.450325, 28.027681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649895, 37.834763, 27.945650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683747, -0.023975, -0.729325,
		-0.705866, 0.275180, 0.652708,
		0.185047, 0.961094, -0.205077,
		35.705410, 38.123089, 27.884127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941025, 37.825191, 27.832609>,  <35.575874, 37.450325, 28.027681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941025, 37.825191, 27.832609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244400, 38.013702, 27.652533>,  <35.426426, 38.126808, 27.544487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244400, 38.013702, 27.652533>,  <34.941025, 37.825191, 27.832609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244400, 38.013702, 27.652533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499098, -0.024241, -0.866206,
		-0.419134, 0.881653, 0.216827,
		0.758438, 0.471275, -0.450192,
		35.471931, 38.155087, 27.517475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707184, 38.348877, 27.187185>,  <34.941025, 37.825191, 27.832609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707184, 38.348877, 27.187185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095295, 38.263916, 27.140816>,  <35.328163, 38.212940, 27.112993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095295, 38.263916, 27.140816>,  <34.707184, 38.348877, 27.187185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095295, 38.263916, 27.140816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100814, 0.080674, -0.991629,
		0.219974, 0.973847, 0.056864,
		0.970282, -0.212400, -0.115923,
		35.386379, 38.200195, 27.106039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959190, 38.794178, 26.709362>,  <34.707184, 38.348877, 27.187185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959190, 38.794178, 26.709362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197014, 38.472809, 26.696699>,  <35.339710, 38.279987, 26.689102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197014, 38.472809, 26.696699>,  <34.959190, 38.794178, 26.709362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197014, 38.472809, 26.696699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107924, -0.040730, -0.993324,
		0.796775, 0.594008, -0.110926,
		0.594561, -0.803427, -0.031655,
		35.375381, 38.231781, 26.687202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375786, 38.872536, 26.103846>,  <34.959190, 38.794178, 26.709362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375786, 38.872536, 26.103846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423660, 38.480618, 26.167952>,  <35.452385, 38.245468, 26.206415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423660, 38.480618, 26.167952>,  <35.375786, 38.872536, 26.103846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423660, 38.480618, 26.167952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191876, -0.181208, -0.964545,
		0.974094, 0.084689, -0.209685,
		0.119683, -0.979792, 0.160264,
		35.459564, 38.186680, 26.216030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675224, 38.714893, 25.524708>,  <35.375786, 38.872536, 26.103846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675224, 38.714893, 25.524708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530785, 38.371376, 25.670076>,  <35.444122, 38.165264, 25.757298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530785, 38.371376, 25.670076>,  <35.675224, 38.714893, 25.524708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530785, 38.371376, 25.670076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278241, -0.272739, -0.920975,
		0.890050, -0.433681, -0.140467,
		-0.361099, -0.858798, 0.363420,
		35.422455, 38.113735, 25.779102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910515, 38.195129, 25.041901>,  <35.675224, 38.714893, 25.524708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910515, 38.195129, 25.041901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605373, 38.008373, 25.220816>,  <35.422287, 37.896320, 25.328165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605373, 38.008373, 25.220816>,  <35.910515, 38.195129, 25.041901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605373, 38.008373, 25.220816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252324, -0.421962, -0.870793,
		0.595306, -0.777149, 0.204086,
		-0.762852, -0.466892, 0.447290,
		35.376518, 37.868305, 25.355003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891609, 37.448761, 24.915586>,  <35.910515, 38.195129, 25.041901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891609, 37.448761, 24.915586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513275, 37.552666, 24.993488>,  <35.286274, 37.615009, 25.040230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513275, 37.552666, 24.993488>,  <35.891609, 37.448761, 24.915586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513275, 37.552666, 24.993488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307958, -0.527908, -0.791502,
		-0.102787, -0.808603, 0.579307,
		-0.945831, 0.259758, 0.194754,
		35.229527, 37.630592, 25.051914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525223, 36.822384, 24.793619>,  <35.891609, 37.448761, 24.915586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525223, 36.822384, 24.793619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265865, 37.122944, 24.744638>,  <35.110252, 37.303280, 24.715250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265865, 37.122944, 24.744638>,  <35.525223, 36.822384, 24.793619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265865, 37.122944, 24.744638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309036, -0.406771, -0.859671,
		-0.695763, -0.519560, 0.495955,
		-0.648390, 0.751395, -0.122454,
		35.071350, 37.348362, 24.707903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115597, 36.560848, 24.383574>,  <35.525223, 36.822384, 24.793619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115597, 36.560848, 24.383574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995640, 36.938469, 24.328691>,  <34.923668, 37.165043, 24.295763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995640, 36.938469, 24.328691>,  <35.115597, 36.560848, 24.383574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995640, 36.938469, 24.328691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491431, -0.276154, -0.825975,
		-0.817656, -0.180275, 0.546754,
		-0.299891, 0.944055, -0.137206,
		34.905674, 37.221687, 24.287529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450962, 36.464836, 24.169622>,  <35.115597, 36.560848, 24.383574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450962, 36.464836, 24.169622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612198, 36.793610, 24.008652>,  <34.708939, 36.990875, 23.912069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612198, 36.793610, 24.008652>,  <34.450962, 36.464836, 24.169622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612198, 36.793610, 24.008652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343054, -0.271962, -0.899083,
		-0.848431, 0.500462, 0.172343,
		0.403087, 0.821933, -0.402427,
		34.733124, 37.040188, 23.887924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901516, 36.692043, 23.759966>,  <34.450962, 36.464836, 24.169622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901516, 36.692043, 23.759966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236603, 36.874397, 23.639692>,  <34.437653, 36.983810, 23.567528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236603, 36.874397, 23.639692>,  <33.901516, 36.692043, 23.759966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236603, 36.874397, 23.639692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143790, -0.347036, -0.926763,
		-0.526842, 0.819596, -0.225165,
		0.837712, 0.455881, -0.300683,
		34.487915, 37.011162, 23.549488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705887, 37.009434, 23.159634>,  <33.901516, 36.692043, 23.759966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705887, 37.009434, 23.159634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102818, 36.986706, 23.115711>,  <34.340977, 36.973068, 23.089357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102818, 36.986706, 23.115711>,  <33.705887, 37.009434, 23.159634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102818, 36.986706, 23.115711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121920, -0.302134, -0.945437,
		0.020545, 0.951570, -0.306744,
		0.992327, -0.056823, -0.109808,
		34.400517, 36.969658, 23.082769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758144, 37.385620, 22.592505>,  <33.705887, 37.009434, 23.159634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758144, 37.385620, 22.592505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105480, 37.192101, 22.636179>,  <34.313881, 37.075989, 22.662384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105480, 37.192101, 22.636179>,  <33.758144, 37.385620, 22.592505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105480, 37.192101, 22.636179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015666, -0.246794, -0.968941,
		0.495720, 0.839661, -0.221881,
		0.868341, -0.483800, 0.109186,
		34.365982, 37.046959, 22.668934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150768, 37.653454, 22.047592>,  <33.758144, 37.385620, 22.592505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150768, 37.653454, 22.047592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346424, 37.314243, 22.129160>,  <34.463818, 37.110718, 22.178101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346424, 37.314243, 22.129160>,  <34.150768, 37.653454, 22.047592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346424, 37.314243, 22.129160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085256, -0.186191, -0.978808,
		0.868027, 0.496163, -0.018775,
		0.489144, -0.848030, 0.203919,
		34.493168, 37.059834, 22.190336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718239, 37.648010, 21.620420>,  <34.150768, 37.653454, 22.047592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718239, 37.648010, 21.620420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672043, 37.270222, 21.743469>,  <34.644325, 37.043549, 21.817299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672043, 37.270222, 21.743469>,  <34.718239, 37.648010, 21.620420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672043, 37.270222, 21.743469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195379, -0.325245, -0.925226,
		0.973904, -0.046748, 0.222092,
		-0.115487, -0.944474, 0.307624,
		34.637398, 36.986881, 21.835756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201637, 37.219864, 21.226101>,  <34.718239, 37.648010, 21.620420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201637, 37.219864, 21.226101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946114, 36.946594, 21.367636>,  <34.792801, 36.782635, 21.452557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946114, 36.946594, 21.367636>,  <35.201637, 37.219864, 21.226101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946114, 36.946594, 21.367636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058537, -0.501730, -0.863041,
		0.767136, -0.530605, 0.360501,
		-0.638808, -0.683173, 0.353835,
		34.754471, 36.741642, 21.473785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527203, 36.549419, 21.007360>,  <35.201637, 37.219864, 21.226101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527203, 36.549419, 21.007360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149242, 36.463600, 21.106264>,  <34.922466, 36.412109, 21.165606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149242, 36.463600, 21.106264>,  <35.527203, 36.549419, 21.007360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149242, 36.463600, 21.106264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040992, -0.671806, -0.739592,
		0.324788, -0.708974, 0.625994,
		-0.944898, -0.214550, 0.247257,
		34.865772, 36.399235, 21.180441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433517, 35.787075, 20.997509>,  <35.527203, 36.549419, 21.007360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433517, 35.787075, 20.997509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093239, 35.986622, 20.931240>,  <34.889072, 36.106350, 20.891479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093239, 35.986622, 20.931240>,  <35.433517, 35.787075, 20.997509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093239, 35.986622, 20.931240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026774, -0.273641, -0.961459,
		-0.524971, -0.822348, 0.219430,
		-0.850699, 0.498863, -0.165671,
		34.838028, 36.136280, 20.881538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772469, 35.148521, 20.575451>,  <35.433517, 35.787075, 20.997509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772469, 35.148521, 20.575451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133968, 35.111237, 20.408335>,  <36.350868, 35.088863, 20.308065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133968, 35.111237, 20.408335>,  <35.772469, 35.148521, 20.575451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133968, 35.111237, 20.408335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424021, 0.328767, 0.843871,
		0.058693, -0.939799, 0.336648,
		0.903749, -0.093216, -0.417791,
		36.405094, 35.083271, 20.282997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149757, 34.735271, 20.948982>,  <35.772469, 35.148521, 20.575451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149757, 34.735271, 20.948982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425686, 34.949078, 20.753660>,  <36.591244, 35.077362, 20.636467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425686, 34.949078, 20.753660>,  <36.149757, 34.735271, 20.948982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425686, 34.949078, 20.753660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505126, 0.127842, 0.853524,
		0.518646, -0.835435, -0.181808,
		0.689821, 0.534513, -0.488305,
		36.632633, 35.109432, 20.607168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786140, 34.422131, 21.099367>,  <36.149757, 34.735271, 20.948982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786140, 34.422131, 21.099367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817032, 34.813305, 21.021730>,  <36.835567, 35.048012, 20.975147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817032, 34.813305, 21.021730>,  <36.786140, 34.422131, 21.099367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817032, 34.813305, 21.021730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256185, 0.168673, 0.951797,
		0.963538, -0.123230, -0.237506,
		0.077229, 0.977938, -0.194093,
		36.840202, 35.106686, 20.963503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279377, 34.580799, 21.582041>,  <36.786140, 34.422131, 21.099367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279377, 34.580799, 21.582041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128189, 34.932598, 21.466370>,  <37.037476, 35.143677, 21.396967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128189, 34.932598, 21.466370>,  <37.279377, 34.580799, 21.582041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128189, 34.932598, 21.466370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307565, 0.413891, 0.856796,
		0.873238, 0.234899, -0.426940,
		-0.377967, 0.879498, -0.289179,
		37.014797, 35.196449, 21.379616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732212, 35.021294, 21.894426>,  <37.279377, 34.580799, 21.582041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732212, 35.021294, 21.894426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476547, 35.289528, 21.743803>,  <37.323151, 35.450466, 21.653429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476547, 35.289528, 21.743803>,  <37.732212, 35.021294, 21.894426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476547, 35.289528, 21.743803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303944, 0.670017, 0.677270,
		0.706467, 0.318429, -0.632066,
		-0.639158, 0.670582, -0.376560,
		37.284801, 35.490704, 21.630835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159275, 35.597733, 21.651577>,  <37.732212, 35.021294, 21.894426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159275, 35.597733, 21.651577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788105, 35.714642, 21.744120>,  <37.565403, 35.784786, 21.799646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788105, 35.714642, 21.744120>,  <38.159275, 35.597733, 21.651577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788105, 35.714642, 21.744120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369860, 0.644617, 0.669083,
		0.046418, 0.706431, -0.706258,
		-0.927927, 0.292274, 0.231359,
		37.509727, 35.802322, 21.813528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221180, 36.336254, 21.804377>,  <38.159275, 35.597733, 21.651577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221180, 36.336254, 21.804377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874352, 36.202599, 21.952179>,  <37.666256, 36.122406, 22.040861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874352, 36.202599, 21.952179>,  <38.221180, 36.336254, 21.804377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874352, 36.202599, 21.952179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138971, 0.550035, 0.823498,
		-0.478408, 0.765382, -0.430483,
		-0.867071, -0.334144, 0.369507,
		37.614231, 36.102356, 22.063030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823467, 36.877029, 22.107801>,  <38.221180, 36.336254, 21.804377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823467, 36.877029, 22.107801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664200, 36.552483, 22.278984>,  <37.568638, 36.357754, 22.381695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664200, 36.552483, 22.278984>,  <37.823467, 36.877029, 22.107801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664200, 36.552483, 22.278984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059745, 0.488483, 0.870526,
		-0.915364, 0.321048, -0.242973,
		-0.398169, -0.811365, 0.427959,
		37.544750, 36.309074, 22.407372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469517, 37.090851, 22.724579>,  <37.823467, 36.877029, 22.107801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469517, 37.090851, 22.724579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450237, 36.698215, 22.798504>,  <37.438671, 36.462635, 22.842859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450237, 36.698215, 22.798504>,  <37.469517, 37.090851, 22.724579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450237, 36.698215, 22.798504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114641, 0.189240, 0.975216,
		-0.992237, 0.025819, -0.121652,
		-0.048200, -0.981591, 0.184811,
		37.435776, 36.403740, 22.853947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795906, 36.963806, 23.156799>,  <37.469517, 37.090851, 22.724579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795906, 36.963806, 23.156799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102760, 36.715202, 23.220335>,  <37.286873, 36.566040, 23.258457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102760, 36.715202, 23.220335>,  <36.795906, 36.963806, 23.156799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102760, 36.715202, 23.220335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067969, 0.167466, 0.983532,
		-0.637878, -0.765295, 0.086225,
		0.767132, -0.621513, 0.158840,
		37.332901, 36.528748, 23.267986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688927, 36.721931, 23.815670>,  <36.795906, 36.963806, 23.156799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688927, 36.721931, 23.815670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067532, 36.592865, 23.815546>,  <37.294697, 36.515427, 23.815472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067532, 36.592865, 23.815546>,  <36.688927, 36.721931, 23.815670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067532, 36.592865, 23.815546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084231, 0.246155, 0.965564,
		-0.311474, -0.913946, 0.260168,
		0.946514, -0.322662, -0.000312,
		37.351486, 36.496067, 23.815453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731468, 36.322235, 24.392052>,  <36.688927, 36.721931, 23.815670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731468, 36.322235, 24.392052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092972, 36.469193, 24.304195>,  <37.309875, 36.557369, 24.251482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092972, 36.469193, 24.304195>,  <36.731468, 36.322235, 24.392052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092972, 36.469193, 24.304195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118223, 0.278921, 0.953009,
		0.411393, -0.887257, 0.208643,
		0.903758, 0.367395, -0.219640,
		37.364098, 36.579411, 24.238304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166546, 36.092079, 24.879459>,  <36.731468, 36.322235, 24.392052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166546, 36.092079, 24.879459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385986, 36.389103, 24.725758>,  <37.517651, 36.567318, 24.633537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385986, 36.389103, 24.725758>,  <37.166546, 36.092079, 24.879459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385986, 36.389103, 24.725758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304073, 0.250916, 0.919011,
		0.778832, -0.621009, -0.088140,
		0.548598, 0.742556, -0.384253,
		37.550568, 36.611870, 24.610481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790630, 36.083542, 25.197058>,  <37.166546, 36.092079, 24.879459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790630, 36.083542, 25.197058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786503, 36.450069, 25.036932>,  <37.784027, 36.669987, 24.940857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786503, 36.450069, 25.036932>,  <37.790630, 36.083542, 25.197058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786503, 36.450069, 25.036932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328314, 0.381250, 0.864210,
		0.944512, -0.122508, -0.304776,
		-0.010323, 0.916319, -0.400316,
		37.783405, 36.724964, 24.916838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507565, 36.396370, 25.306852>,  <37.790630, 36.083542, 25.197058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507565, 36.396370, 25.306852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263550, 36.711094, 25.269369>,  <38.117142, 36.899929, 25.246880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263550, 36.711094, 25.269369>,  <38.507565, 36.396370, 25.306852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263550, 36.711094, 25.269369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354925, 0.377072, 0.855480,
		0.708437, 0.488614, -0.509287,
		-0.610037, 0.786812, -0.093710,
		38.080540, 36.947136, 25.241257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832710, 36.864513, 25.580862>,  <38.507565, 36.396370, 25.306852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832710, 36.864513, 25.580862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460247, 37.010117, 25.589340>,  <38.236771, 37.097477, 25.594427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460247, 37.010117, 25.589340>,  <38.832710, 36.864513, 25.580862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460247, 37.010117, 25.589340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218042, 0.509301, 0.832509,
		0.292242, 0.779817, -0.553607,
		-0.931156, 0.364004, 0.021194,
		38.180901, 37.119316, 25.595697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801292, 37.579853, 25.663210>,  <38.832710, 36.864513, 25.580862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801292, 37.579853, 25.663210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435562, 37.475327, 25.786966>,  <38.216125, 37.412609, 25.861221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435562, 37.475327, 25.786966>,  <38.801292, 37.579853, 25.663210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435562, 37.475327, 25.786966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089303, 0.615061, 0.783406,
		-0.395014, 0.743916, -0.539029,
		-0.914324, -0.261320, 0.309392,
		38.161266, 37.396931, 25.879784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459904, 38.201828, 25.892519>,  <38.801292, 37.579853, 25.663210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459904, 38.201828, 25.892519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291332, 37.885826, 26.070639>,  <38.190189, 37.696224, 26.177511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291332, 37.885826, 26.070639>,  <38.459904, 38.201828, 25.892519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291332, 37.885826, 26.070639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029662, 0.478762, 0.877444,
		-0.906378, 0.382985, -0.178330,
		-0.421426, -0.790006, 0.445299,
		38.164906, 37.648823, 26.204227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175518, 38.548428, 26.399010>,  <38.459904, 38.201828, 25.892519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175518, 38.548428, 26.399010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124504, 38.166759, 26.507298>,  <38.093895, 37.937759, 26.572269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124504, 38.166759, 26.507298>,  <38.175518, 38.548428, 26.399010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124504, 38.166759, 26.507298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033942, 0.268590, 0.962656,
		-0.991253, 0.131957, -0.001867,
		-0.127531, -0.954173, 0.270720,
		38.086246, 37.880508, 26.588514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777763, 38.543442, 27.019203>,  <38.175518, 38.548428, 26.399010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777763, 38.543442, 27.019203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959732, 38.187233, 27.017456>,  <38.068913, 37.973507, 27.016407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959732, 38.187233, 27.017456>,  <37.777763, 38.543442, 27.019203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959732, 38.187233, 27.017456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211854, 0.103458, 0.971810,
		-0.864964, -0.443025, 0.235725,
		0.454924, -0.890519, -0.004370,
		38.096210, 37.920078, 27.016146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597122, 38.170376, 27.610081>,  <37.777763, 38.543442, 27.019203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597122, 38.170376, 27.610081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927814, 37.973858, 27.500422>,  <38.126228, 37.855949, 27.434626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927814, 37.973858, 27.500422>,  <37.597122, 38.170376, 27.610081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927814, 37.973858, 27.500422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300944, -0.025541, 0.953299,
		-0.475349, -0.870621, 0.126735,
		0.826726, -0.491290, -0.274150,
		38.175831, 37.826469, 27.418177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642311, 37.659592, 28.062939>,  <37.597122, 38.170376, 27.610081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642311, 37.659592, 28.062939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011192, 37.680477, 27.909674>,  <38.232521, 37.693008, 27.817715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011192, 37.680477, 27.909674>,  <37.642311, 37.659592, 28.062939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011192, 37.680477, 27.909674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386622, -0.104405, 0.916309,
		0.007840, -0.993163, -0.116470,
		0.922205, 0.052213, -0.383160,
		38.287853, 37.696140, 27.794725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044876, 37.093742, 28.464523>,  <37.642311, 37.659592, 28.062939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044876, 37.093742, 28.464523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285480, 37.370033, 28.303986>,  <38.429844, 37.535809, 28.207663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285480, 37.370033, 28.303986>,  <38.044876, 37.093742, 28.464523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285480, 37.370033, 28.303986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508028, 0.056968, 0.859455,
		0.616513, -0.720868, -0.316642,
		0.601515, 0.690727, -0.401342,
		38.465935, 37.577251, 28.183582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685009, 36.856533, 28.547613>,  <38.044876, 37.093742, 28.464523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685009, 36.856533, 28.547613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759216, 37.245255, 28.489408>,  <38.803741, 37.478489, 28.454485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759216, 37.245255, 28.489408>,  <38.685009, 36.856533, 28.547613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759216, 37.245255, 28.489408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643857, -0.008350, 0.765100,
		0.742315, -0.235630, -0.627254,
		0.185518, 0.971807, -0.145513,
		38.814873, 37.536797, 28.445755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326962, 36.894669, 28.529785>,  <38.685009, 36.856533, 28.547613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326962, 36.894669, 28.529785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237862, 37.273643, 28.621649>,  <39.184402, 37.501030, 28.676767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237862, 37.273643, 28.621649>,  <39.326962, 36.894669, 28.529785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237862, 37.273643, 28.621649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726536, 0.004255, 0.687115,
		0.650022, 0.319908, -0.689296,
		-0.222746, 0.947439, 0.229659,
		39.171040, 37.557877, 28.690546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988392, 37.210064, 28.713522>,  <39.326962, 36.894669, 28.529785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988392, 37.210064, 28.713522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705292, 37.437077, 28.881805>,  <39.535431, 37.573284, 28.982775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705292, 37.437077, 28.881805>,  <39.988392, 37.210064, 28.713522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705292, 37.437077, 28.881805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625627, 0.226909, 0.746394,
		0.328138, 0.791469, -0.515657,
		-0.707755, 0.567529, 0.420707,
		39.492966, 37.607334, 29.008017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265797, 37.845150, 28.809727>,  <39.988392, 37.210064, 28.713522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265797, 37.845150, 28.809727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973137, 37.824783, 29.081638>,  <39.797543, 37.812565, 29.244785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973137, 37.824783, 29.081638>,  <40.265797, 37.845150, 28.809727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973137, 37.824783, 29.081638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661412, 0.188345, 0.725989,
		-0.164995, 0.980782, -0.104128,
		-0.731649, -0.050913, 0.679778,
		39.753643, 37.809509, 29.285572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433590, 38.436150, 29.294043>,  <40.265797, 37.845150, 28.809727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433590, 38.436150, 29.294043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192757, 38.170330, 29.471077>,  <40.048256, 38.010838, 29.577297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192757, 38.170330, 29.471077>,  <40.433590, 38.436150, 29.294043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192757, 38.170330, 29.471077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536644, 0.073632, 0.840590,
		-0.591198, 0.743612, 0.312291,
		-0.602079, -0.664544, 0.442586,
		40.012135, 37.970966, 29.603853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278217, 38.737934, 29.964516>,  <40.433590, 38.436150, 29.294043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278217, 38.737934, 29.964516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177250, 38.355602, 30.024748>,  <40.116669, 38.126202, 30.060886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177250, 38.355602, 30.024748>,  <40.278217, 38.737934, 29.964516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177250, 38.355602, 30.024748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282744, 0.075969, 0.956182,
		-0.925387, 0.283932, 0.251079,
		-0.252417, -0.955830, 0.150581,
		40.101524, 38.068851, 30.069921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790909, 38.688839, 30.580851>,  <40.278217, 38.737934, 29.964516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790909, 38.688839, 30.580851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988960, 38.346630, 30.520281>,  <40.107792, 38.141304, 30.483940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988960, 38.346630, 30.520281>,  <39.790909, 38.688839, 30.580851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988960, 38.346630, 30.520281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267846, -0.015492, 0.963337,
		-0.826504, -0.517531, 0.221478,
		0.495126, -0.855524, -0.151423,
		40.137497, 38.089973, 30.474854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814442, 38.401730, 31.252998>,  <39.790909, 38.688839, 30.580851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814442, 38.401730, 31.252998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082222, 38.184364, 31.050398>,  <40.242889, 38.053944, 30.928839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082222, 38.184364, 31.050398>,  <39.814442, 38.401730, 31.252998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082222, 38.184364, 31.050398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541876, -0.109173, 0.833338,
		-0.508142, -0.832336, 0.221377,
		0.669449, -0.543413, -0.506499,
		40.283058, 38.021339, 30.898449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891953, 37.744709, 31.675968>,  <39.814442, 38.401730, 31.252998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891953, 37.744709, 31.675968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221954, 37.747482, 31.449934>,  <40.419956, 37.749146, 31.314314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221954, 37.747482, 31.449934>,  <39.891953, 37.744709, 31.675968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221954, 37.747482, 31.449934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559119, -0.155435, 0.814386,
		-0.082194, -0.987822, -0.132107,
		0.825003, 0.006926, -0.565086,
		40.469456, 37.749561, 31.280409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276810, 37.118965, 31.868122>,  <39.891953, 37.744709, 31.675968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276810, 37.118965, 31.868122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506844, 37.411190, 31.720856>,  <40.644863, 37.586525, 31.632496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506844, 37.411190, 31.720856>,  <40.276810, 37.118965, 31.868122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506844, 37.411190, 31.720856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591794, -0.060780, 0.803795,
		0.564848, -0.680131, -0.467299,
		0.575088, 0.730566, -0.368166,
		40.679371, 37.630360, 31.610405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829121, 36.805809, 31.828590>,  <40.276810, 37.118965, 31.868122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829121, 36.805809, 31.828590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874073, 37.202553, 31.852564>,  <40.901047, 37.440598, 31.866949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874073, 37.202553, 31.852564>,  <40.829121, 36.805809, 31.828590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874073, 37.202553, 31.852564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357158, -0.096607, 0.929035,
		0.927258, -0.083002, -0.365106,
		0.112383, 0.991856, 0.059935,
		40.907787, 37.500111, 31.870544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437988, 36.858368, 32.148594>,  <40.829121, 36.805809, 31.828590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437988, 36.858368, 32.148594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250790, 37.208733, 32.195507>,  <41.138470, 37.418953, 32.223656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250790, 37.208733, 32.195507>,  <41.437988, 36.858368, 32.148594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250790, 37.208733, 32.195507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341761, 0.056998, 0.938057,
		0.814972, 0.479089, -0.326028,
		-0.467996, 0.875914, 0.117283,
		41.110390, 37.471508, 32.230690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814556, 37.182060, 32.592239>,  <41.437988, 36.858368, 32.148594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814556, 37.182060, 32.592239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493435, 37.419411, 32.615570>,  <41.300762, 37.561821, 32.629570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493435, 37.419411, 32.615570>,  <41.814556, 37.182060, 32.592239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493435, 37.419411, 32.615570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210326, 0.190297, 0.958932,
		0.557909, 0.782106, -0.277575,
		-0.802808, 0.593378, 0.058329,
		41.252594, 37.597424, 32.633068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007126, 37.777454, 32.948174>,  <41.814556, 37.182060, 32.592239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007126, 37.777454, 32.948174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610371, 37.743866, 32.986355>,  <41.372318, 37.723713, 33.009262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610371, 37.743866, 32.986355>,  <42.007126, 37.777454, 32.948174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610371, 37.743866, 32.986355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085490, 0.115174, 0.989660,
		-0.094096, 0.989790, -0.107060,
		-0.991886, -0.083971, 0.095454,
		41.312805, 37.718674, 33.014992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809883, 38.325306, 33.346729>,  <42.007126, 37.777454, 32.948174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809883, 38.325306, 33.346729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522514, 38.052319, 33.400536>,  <41.350094, 37.888527, 33.432819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522514, 38.052319, 33.400536>,  <41.809883, 38.325306, 33.346729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522514, 38.052319, 33.400536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070017, 0.121452, 0.990125,
		-0.692070, 0.720750, -0.039470,
		-0.718426, -0.682473, 0.134517,
		41.306988, 37.847576, 33.440891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292889, 38.622330, 33.863846>,  <41.809883, 38.325306, 33.346729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292889, 38.622330, 33.863846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253849, 38.224243, 33.865143>,  <41.230427, 37.985390, 33.865921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253849, 38.224243, 33.865143>,  <41.292889, 38.622330, 33.863846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253849, 38.224243, 33.865143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023785, 0.005588, 0.999702,
		-0.994942, 0.097489, -0.024217,
		-0.097596, -0.995221, 0.003241,
		41.224571, 37.925678, 33.866116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775242, 38.510284, 34.411877>,  <41.292889, 38.622330, 33.863846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775242, 38.510284, 34.411877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884396, 38.134071, 34.330959>,  <40.949890, 37.908344, 34.282410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884396, 38.134071, 34.330959>,  <40.775242, 38.510284, 34.411877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884396, 38.134071, 34.330959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024237, -0.203488, 0.978777,
		-0.961741, -0.271999, -0.032734,
		0.272887, -0.940537, -0.202295,
		40.966263, 37.851910, 34.270271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287857, 37.923512, 34.698620>,  <40.775242, 38.510284, 34.411877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287857, 37.923512, 34.698620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629433, 37.721027, 34.650391>,  <40.834377, 37.599537, 34.621452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629433, 37.721027, 34.650391>,  <40.287857, 37.923512, 34.698620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629433, 37.721027, 34.650391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057703, -0.322399, 0.944844,
		-0.517164, -0.799881, -0.304519,
		0.853939, -0.506211, -0.120577,
		40.885616, 37.569164, 34.614216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092941, 37.294254, 34.769291>,  <40.287857, 37.923512, 34.698620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092941, 37.294254, 34.769291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484795, 37.275215, 34.847321>,  <40.719906, 37.263794, 34.894138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484795, 37.275215, 34.847321>,  <40.092941, 37.294254, 34.769291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484795, 37.275215, 34.847321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194702, -0.462656, 0.864893,
		0.049088, -0.885259, -0.462500,
		0.979633, -0.047594, 0.195072,
		40.778687, 37.260937, 34.905842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229874, 36.555317, 34.944656>,  <40.092941, 37.294254, 34.769291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229874, 36.555317, 34.944656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516319, 36.767071, 35.126617>,  <40.688187, 36.894123, 35.235794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516319, 36.767071, 35.126617>,  <40.229874, 36.555317, 34.944656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516319, 36.767071, 35.126617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235141, -0.430662, 0.871343,
		0.657186, -0.730945, -0.183921,
		0.716112, 0.529387, 0.454900,
		40.731152, 36.925888, 35.263088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627800, 36.012264, 35.394135>,  <40.229874, 36.555317, 34.944656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627800, 36.012264, 35.394135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704559, 36.371807, 35.551731>,  <40.750614, 36.587532, 35.646290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704559, 36.371807, 35.551731>,  <40.627800, 36.012264, 35.394135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704559, 36.371807, 35.551731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118044, -0.377402, 0.918495,
		0.974290, -0.222763, 0.033684,
		0.191895, 0.898857, 0.393995,
		40.762127, 36.641464, 35.669930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135242, 35.969234, 35.958679>,  <40.627800, 36.012264, 35.394135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135242, 35.969234, 35.958679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978676, 36.328285, 36.039734>,  <40.884735, 36.543716, 36.088367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978676, 36.328285, 36.039734>,  <41.135242, 35.969234, 35.958679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978676, 36.328285, 36.039734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002511, -0.219160, 0.975686,
		0.920210, 0.382410, 0.083529,
		-0.391418, 0.897626, 0.202633,
		40.861252, 36.597572, 36.100525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513912, 36.164150, 36.563354>,  <41.135242, 35.969234, 35.958679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513912, 36.164150, 36.563354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179329, 36.380493, 36.528004>,  <40.978577, 36.510300, 36.506794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179329, 36.380493, 36.528004>,  <41.513912, 36.164150, 36.563354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179329, 36.380493, 36.528004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036733, 0.105567, 0.993734,
		0.546795, 0.834465, -0.068436,
		-0.836460, 0.540854, -0.088376,
		40.928391, 36.542751, 36.501492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600414, 36.727581, 37.017994>,  <41.513912, 36.164150, 36.563354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600414, 36.727581, 37.017994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209206, 36.711361, 36.936176>,  <40.974480, 36.701630, 36.887085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209206, 36.711361, 36.936176>,  <41.600414, 36.727581, 37.017994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209206, 36.711361, 36.936176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208421, 0.220464, 0.952868,
		0.006459, 0.974552, -0.224068,
		-0.978018, -0.040546, -0.204541,
		40.915802, 36.699196, 36.874813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366302, 37.388065, 37.418423>,  <41.600414, 36.727581, 37.017994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366302, 37.388065, 37.418423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042995, 37.159473, 37.361691>,  <40.849010, 37.022320, 37.327652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042995, 37.159473, 37.361691>,  <41.366302, 37.388065, 37.418423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042995, 37.159473, 37.361691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372766, 0.310180, 0.874548,
		-0.455793, 0.759738, -0.463736,
		-0.808268, -0.571478, -0.141827,
		40.800514, 36.988029, 37.319141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705822, 37.891140, 37.379948>,  <41.366302, 37.388065, 37.418423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705822, 37.891140, 37.379948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645321, 37.528835, 37.538300>,  <40.609020, 37.311451, 37.633308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645321, 37.528835, 37.538300>,  <40.705822, 37.891140, 37.379948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645321, 37.528835, 37.538300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470170, 0.418200, 0.777206,
		-0.869520, -0.068578, -0.489114,
		-0.151248, -0.905763, 0.395876,
		40.599945, 37.257107, 37.657063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498608, 38.020672, 38.089130>,  <40.705822, 37.891140, 37.379948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498608, 38.020672, 38.089130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392612, 37.635063, 38.080788>,  <40.329014, 37.403698, 38.075783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392612, 37.635063, 38.080788>,  <40.498608, 38.020672, 38.089130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392612, 37.635063, 38.080788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267837, 0.052808, 0.962016,
		-0.926306, 0.260513, -0.272195,
		-0.264992, -0.964025, -0.020859,
		40.313114, 37.345856, 38.074532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831280, 37.895267, 38.296448>,  <40.498608, 38.020672, 38.089130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831280, 37.895267, 38.296448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028244, 37.561001, 38.393776>,  <40.146423, 37.360443, 38.452171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028244, 37.561001, 38.393776>,  <39.831280, 37.895267, 38.296448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028244, 37.561001, 38.393776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158967, 0.188506, 0.969121,
		-0.855725, -0.515882, -0.040021,
		0.492407, -0.835663, 0.243318,
		40.175964, 37.310303, 38.466770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453110, 37.481415, 38.682079>,  <39.831280, 37.895267, 38.296448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453110, 37.481415, 38.682079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835163, 37.420326, 38.783588>,  <40.064396, 37.383671, 38.844494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835163, 37.420326, 38.783588>,  <39.453110, 37.481415, 38.682079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835163, 37.420326, 38.783588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245993, 0.068140, 0.966874,
		-0.164958, -0.985917, 0.027513,
		0.955132, -0.152726, 0.253769,
		40.121704, 37.374508, 38.859718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594528, 36.895256, 39.130753>,  <39.453110, 37.481415, 38.682079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594528, 36.895256, 39.130753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844933, 37.193085, 39.223473>,  <39.995174, 37.371780, 39.279106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844933, 37.193085, 39.223473>,  <39.594528, 36.895256, 39.130753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844933, 37.193085, 39.223473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382301, 0.033946, 0.923414,
		0.679676, -0.666684, 0.305899,
		0.626009, 0.744568, 0.231801,
		40.032734, 37.416454, 39.293015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710209, 36.856140, 39.772221>,  <39.594528, 36.895256, 39.130753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710209, 36.856140, 39.772221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823727, 37.234417, 39.708805>,  <39.891838, 37.461384, 39.670753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823727, 37.234417, 39.708805>,  <39.710209, 36.856140, 39.772221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823727, 37.234417, 39.708805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302582, 0.245210, 0.921041,
		0.909894, -0.213412, 0.355737,
		0.283791, 0.945689, -0.158541,
		39.908863, 37.518124, 39.661243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122337, 37.084293, 40.322823>,  <39.710209, 36.856140, 39.772221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122337, 37.084293, 40.322823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991302, 37.424255, 40.157726>,  <39.912682, 37.628231, 40.058670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991302, 37.424255, 40.157726>,  <40.122337, 37.084293, 40.322823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991302, 37.424255, 40.157726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433495, 0.252948, 0.864928,
		0.839504, 0.462261, 0.285565,
		-0.327589, 0.849901, -0.412739,
		39.893024, 37.679226, 40.033905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423248, 37.600353, 40.667084>,  <40.122337, 37.084293, 40.322823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423248, 37.600353, 40.667084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100151, 37.765572, 40.498825>,  <39.906292, 37.864704, 40.397869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100151, 37.765572, 40.498825>,  <40.423248, 37.600353, 40.667084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100151, 37.765572, 40.498825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370148, 0.200018, 0.907184,
		0.458847, 0.888473, -0.008674,
		-0.807744, 0.413048, -0.420644,
		39.857826, 37.889484, 40.372631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362450, 38.213490, 41.024780>,  <40.423248, 37.600353, 40.667084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362450, 38.213490, 41.024780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000805, 38.131699, 40.874702>,  <39.783817, 38.082623, 40.784657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000805, 38.131699, 40.874702>,  <40.362450, 38.213490, 41.024780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000805, 38.131699, 40.874702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426170, 0.367862, 0.826473,
		-0.030980, 0.907119, -0.419732,
		-0.904113, -0.204481, -0.375190,
		39.729572, 38.070354, 40.762146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897148, 38.823788, 41.117298>,  <40.362450, 38.213490, 41.024780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897148, 38.823788, 41.117298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670841, 38.496769, 41.074364>,  <39.535057, 38.300556, 41.048603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670841, 38.496769, 41.074364>,  <39.897148, 38.823788, 41.117298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670841, 38.496769, 41.074364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557566, 0.283417, 0.780254,
		-0.607475, 0.501288, -0.616185,
		-0.565769, -0.817548, -0.107333,
		39.501110, 38.251503, 41.042164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184921, 38.982132, 41.272564>,  <39.897148, 38.823788, 41.117298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184921, 38.982132, 41.272564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192501, 38.584869, 41.318665>,  <39.197048, 38.346512, 41.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192501, 38.584869, 41.318665>,  <39.184921, 38.982132, 41.272564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192501, 38.584869, 41.318665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634823, 0.077105, 0.768801,
		-0.772426, -0.087733, -0.629016,
		0.018949, -0.993155, 0.115252,
		39.198185, 38.286922, 41.353241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460201, 38.698540, 41.346970>,  <39.184921, 38.982132, 41.272564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460201, 38.698540, 41.346970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723728, 38.470070, 41.542812>,  <38.881844, 38.332989, 41.660320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723728, 38.470070, 41.542812>,  <38.460201, 38.698540, 41.346970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723728, 38.470070, 41.542812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549509, 0.079131, 0.831732,
		-0.513806, -0.817007, -0.261732,
		0.658819, -0.571173, 0.489611,
		38.921375, 38.298717, 41.689697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174679, 38.126820, 41.719830>,  <38.460201, 38.698540, 41.346970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174679, 38.126820, 41.719830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522972, 38.175423, 41.910435>,  <38.731949, 38.204586, 42.024799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522972, 38.175423, 41.910435>,  <38.174679, 38.126820, 41.719830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522972, 38.175423, 41.910435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461824, -0.130873, 0.877263,
		0.168956, -0.983925, -0.057840,
		0.870731, 0.121507, 0.476512,
		38.784191, 38.211876, 42.053387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345604, 37.551647, 42.365578>,  <38.174679, 38.126820, 41.719830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345604, 37.551647, 42.365578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522076, 37.909260, 42.396729>,  <38.627960, 38.123829, 42.415417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522076, 37.909260, 42.396729>,  <38.345604, 37.551647, 42.365578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522076, 37.909260, 42.396729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346681, 0.089753, 0.933679,
		0.827750, -0.438920, 0.349541,
		0.441183, 0.894032, 0.077872,
		38.654430, 38.177471, 42.420090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934223, 37.602585, 42.872974>,  <38.345604, 37.551647, 42.365578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934223, 37.602585, 42.872974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734135, 37.946812, 42.834591>,  <38.614082, 38.153347, 42.811562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734135, 37.946812, 42.834591>,  <38.934223, 37.602585, 42.872974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734135, 37.946812, 42.834591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112612, 0.045228, 0.992609,
		0.858544, 0.507330, 0.074286,
		-0.500220, 0.860564, -0.095962,
		38.584068, 38.204983, 42.805801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462315, 38.114037, 42.807140>,  <38.934223, 37.602585, 42.872974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462315, 38.114037, 42.807140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402287, 38.315048, 42.466568>,  <39.366268, 38.435658, 42.262222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402287, 38.315048, 42.466568>,  <39.462315, 38.114037, 42.807140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402287, 38.315048, 42.466568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213956, -0.824272, -0.524212,
		-0.965247, -0.260839, 0.016181,
		-0.150072, 0.502532, -0.851434,
		39.357265, 38.465809, 42.211136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765442, 37.619946, 42.377247>,  <39.462315, 38.114037, 42.807140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765442, 37.619946, 42.377247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538082, 37.856441, 42.148384>,  <39.401665, 37.998337, 42.011066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538082, 37.856441, 42.148384>,  <39.765442, 37.619946, 42.377247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538082, 37.856441, 42.148384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179451, -0.589581, -0.787523,
		-0.802944, -0.550301, 0.229019,
		-0.568400, 0.591239, -0.572153,
		39.367561, 38.033813, 41.976738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279385, 37.166451, 41.914032>,  <39.765442, 37.619946, 42.377247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279385, 37.166451, 41.914032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304535, 37.540058, 41.773373>,  <39.319626, 37.764221, 41.688976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304535, 37.540058, 41.773373>,  <39.279385, 37.166451, 41.914032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304535, 37.540058, 41.773373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001195, -0.352418, -0.935842,
		-0.998021, 0.058418, -0.023273,
		0.062872, 0.934017, -0.351651,
		39.323395, 37.820263, 41.667877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765671, 37.305321, 41.287014>,  <39.279385, 37.166451, 41.914032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765671, 37.305321, 41.287014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053085, 37.582653, 41.265114>,  <39.225536, 37.749050, 41.251976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053085, 37.582653, 41.265114>,  <38.765671, 37.305321, 41.287014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053085, 37.582653, 41.265114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021821, -0.101156, -0.994631,
		-0.695142, 0.713489, -0.087814,
		0.718541, 0.693326, -0.054748,
		39.268646, 37.790649, 41.248688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677345, 37.232399, 40.583199>,  <38.765671, 37.305321, 41.287014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677345, 37.232399, 40.583199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920704, 37.520226, 40.717113>,  <39.066719, 37.692921, 40.797462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920704, 37.520226, 40.717113>,  <38.677345, 37.232399, 40.583199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920704, 37.520226, 40.717113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407974, 0.078274, -0.909632,
		-0.680745, 0.690000, -0.245942,
		0.608395, 0.719565, 0.334786,
		39.103222, 37.736095, 40.817551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661129, 37.856552, 40.123451>,  <38.677345, 37.232399, 40.583199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661129, 37.856552, 40.123451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996101, 37.938305, 40.326206>,  <39.197086, 37.987358, 40.447861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996101, 37.938305, 40.326206>,  <38.661129, 37.856552, 40.123451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996101, 37.938305, 40.326206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469456, 0.205898, -0.858614,
		-0.279852, 0.956992, 0.076478,
		0.837433, 0.204382, 0.506886,
		39.247330, 37.999619, 40.478271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913567, 38.596043, 39.896767>,  <38.661129, 37.856552, 40.123451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913567, 38.596043, 39.896767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174343, 38.331284, 40.044746>,  <39.330811, 38.172428, 40.133533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174343, 38.331284, 40.044746>,  <38.913567, 38.596043, 39.896767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174343, 38.331284, 40.044746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542505, 0.066282, -0.837434,
		0.529775, 0.746658, 0.402294,
		0.651941, -0.661898, 0.369951,
		39.369926, 38.132713, 40.155731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555904, 38.901443, 39.655125>,  <38.913567, 38.596043, 39.896767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555904, 38.901443, 39.655125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663105, 38.527874, 39.749748>,  <39.727425, 38.303734, 39.806522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663105, 38.527874, 39.749748>,  <39.555904, 38.901443, 39.655125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663105, 38.527874, 39.749748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620687, -0.020412, -0.783792,
		0.736831, 0.356888, 0.574205,
		0.268006, -0.933924, 0.236556,
		39.743507, 38.247696, 39.820717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194973, 38.757519, 39.405548>,  <39.555904, 38.901443, 39.655125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194973, 38.757519, 39.405548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091331, 38.382774, 39.499496>,  <40.029148, 38.157928, 39.555866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091331, 38.382774, 39.499496>,  <40.194973, 38.757519, 39.405548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091331, 38.382774, 39.499496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510132, -0.339227, -0.790374,
		0.820142, -0.084972, 0.565815,
		-0.259099, -0.936859, 0.234867,
		40.013603, 38.101715, 39.569958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881508, 38.354511, 39.366093>,  <40.194973, 38.757519, 39.405548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881508, 38.354511, 39.366093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570889, 38.106873, 39.319286>,  <40.384518, 37.958290, 39.291203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570889, 38.106873, 39.319286>,  <40.881508, 38.354511, 39.366093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570889, 38.106873, 39.319286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434768, -0.392107, -0.810697,
		0.456017, -0.680420, 0.573653,
		-0.776547, -0.619097, -0.117018,
		40.337925, 37.921143, 39.284180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131653, 37.687473, 39.136086>,  <40.881508, 38.354511, 39.366093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131653, 37.687473, 39.136086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745045, 37.672867, 39.034492>,  <40.513081, 37.664104, 38.973537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745045, 37.672867, 39.034492>,  <41.131653, 37.687473, 39.136086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745045, 37.672867, 39.034492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251591, -0.329305, -0.910088,
		-0.050405, -0.943517, 0.327467,
		-0.966520, -0.036515, -0.253979,
		40.455090, 37.661911, 38.958298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222111, 36.980537, 39.107292>,  <41.131653, 37.687473, 39.136086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222111, 36.980537, 39.107292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828438, 36.935879, 39.052284>,  <40.592232, 36.909084, 39.019279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828438, 36.935879, 39.052284>,  <41.222111, 36.980537, 39.107292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828438, 36.935879, 39.052284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161677, -0.248988, -0.954917,
		0.072371, -0.962050, 0.263101,
		-0.984187, -0.111645, -0.137522,
		40.533180, 36.902386, 39.011028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137344, 36.373222, 38.682087>,  <41.222111, 36.980537, 39.107292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137344, 36.373222, 38.682087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828087, 36.622974, 38.637558>,  <40.642532, 36.772827, 38.610840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828087, 36.622974, 38.637558>,  <41.137344, 36.373222, 38.682087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828087, 36.622974, 38.637558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059076, -0.103866, -0.992835,
		-0.631469, -0.774184, 0.043417,
		-0.773147, 0.624380, -0.111324,
		40.596142, 36.810287, 38.604160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483601, 36.108986, 38.303150>,  <41.137344, 36.373222, 38.682087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483601, 36.108986, 38.303150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528702, 36.499771, 38.230663>,  <40.555763, 36.734241, 38.187172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528702, 36.499771, 38.230663>,  <40.483601, 36.108986, 38.303150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528702, 36.499771, 38.230663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028680, -0.179103, -0.983412,
		-0.993209, 0.116078, 0.007826,
		0.112751, 0.976959, -0.181216,
		40.562527, 36.792858, 38.176300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885406, 36.456985, 37.867157>,  <40.483601, 36.108986, 38.303150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885406, 36.456985, 37.867157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242485, 36.625355, 37.802769>,  <40.456734, 36.726376, 37.764133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242485, 36.625355, 37.802769>,  <39.885406, 36.456985, 37.867157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242485, 36.625355, 37.802769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075992, -0.211482, -0.974423,
		-0.444205, 0.882097, -0.156802,
		0.892697, 0.420927, -0.160974,
		40.510296, 36.751633, 37.754475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755276, 36.216244, 37.184418>,  <39.885406, 36.456985, 37.867157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755276, 36.216244, 37.184418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066696, 36.462212, 37.234577>,  <40.253548, 36.609795, 37.264671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066696, 36.462212, 37.234577>,  <39.755276, 36.216244, 37.184418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066696, 36.462212, 37.234577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119414, 0.051003, -0.991534,
		-0.616113, 0.786936, -0.033722,
		0.778553, 0.614924, 0.125395,
		40.300262, 36.646690, 37.272194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596050, 36.721230, 36.677914>,  <39.755276, 36.216244, 37.184418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596050, 36.721230, 36.677914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991871, 36.728539, 36.735126>,  <40.229362, 36.732922, 36.769455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991871, 36.728539, 36.735126>,  <39.596050, 36.721230, 36.677914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991871, 36.728539, 36.735126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127715, 0.349443, -0.928213,
		-0.066940, 0.936780, 0.343458,
		0.989549, 0.018270, 0.143033,
		40.288734, 36.734020, 36.778038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858913, 37.370514, 36.558765>,  <39.596050, 36.721230, 36.677914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858913, 37.370514, 36.558765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174572, 37.132488, 36.497913>,  <40.363968, 36.989674, 36.461403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174572, 37.132488, 36.497913>,  <39.858913, 37.370514, 36.558765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174572, 37.132488, 36.497913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217423, 0.502294, -0.836916,
		0.574435, 0.627373, 0.525764,
		0.789147, -0.595067, -0.152130,
		40.411316, 36.953968, 36.452274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441132, 37.815411, 36.297432>,  <39.858913, 37.370514, 36.558765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441132, 37.815411, 36.297432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558540, 37.438671, 36.231983>,  <40.628986, 37.212627, 36.192715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558540, 37.438671, 36.231983>,  <40.441132, 37.815411, 36.297432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558540, 37.438671, 36.231983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189720, 0.225153, -0.955674,
		0.936937, 0.249468, 0.244774,
		0.293521, -0.941845, -0.163625,
		40.646595, 37.156116, 36.182896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031643, 37.968040, 35.955433>,  <40.441132, 37.815411, 36.297432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031643, 37.968040, 35.955433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947678, 37.579838, 35.907997>,  <40.897301, 37.346916, 35.879536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947678, 37.579838, 35.907997>,  <41.031643, 37.968040, 35.955433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947678, 37.579838, 35.907997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316618, 0.047281, -0.947374,
		0.925036, -0.236411, 0.297353,
		-0.209910, -0.970502, -0.118589,
		40.884705, 37.288689, 35.872421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713257, 37.581833, 35.702774>,  <41.031643, 37.968040, 35.955433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713257, 37.581833, 35.702774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397484, 37.384811, 35.556248>,  <41.208019, 37.266598, 35.468330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397484, 37.384811, 35.556248>,  <41.713257, 37.581833, 35.702774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397484, 37.384811, 35.556248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393584, 0.051796, -0.917829,
		0.471058, -0.868737, 0.152974,
		-0.789428, -0.492558, -0.366319,
		41.160656, 37.237045, 35.446350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040703, 37.222538, 35.131245>,  <41.713257, 37.581833, 35.702774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040703, 37.222538, 35.131245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648136, 37.224384, 35.054516>,  <41.412594, 37.225491, 35.008480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648136, 37.224384, 35.054516>,  <42.040703, 37.222538, 35.131245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648136, 37.224384, 35.054516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191838, 0.002940, -0.981422,
		-0.003985, -0.999985, -0.003774,
		-0.981419, 0.004635, -0.191824,
		41.353710, 37.225769, 34.996967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978825, 36.915520, 34.549431>,  <42.040703, 37.222538, 35.131245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978825, 36.915520, 34.549431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630299, 37.110268, 34.573959>,  <41.421181, 37.227116, 34.588676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630299, 37.110268, 34.573959>,  <41.978825, 36.915520, 34.549431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630299, 37.110268, 34.573959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034376, 0.064091, -0.997352,
		-0.489513, -0.871119, -0.039107,
		-0.871318, 0.486873, 0.061319,
		41.368904, 37.256329, 34.592354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409374, 36.421982, 34.883690>,  <41.978825, 36.915520, 34.549431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409374, 36.421982, 34.883690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390339, 36.814049, 34.806747>,  <42.378918, 37.049290, 34.760582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390339, 36.814049, 34.806747>,  <42.409374, 36.421982, 34.883690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390339, 36.814049, 34.806747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972553, 0.001552, -0.232675,
		-0.227763, -0.198151, -0.953342,
		-0.047585, 0.980170, -0.192359,
		42.376064, 37.108101, 34.749039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712196, 36.544510, 34.271202>,  <42.409374, 36.421982, 34.883690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712196, 36.544510, 34.271202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763649, 36.868084, 34.500660>,  <42.794521, 37.062229, 34.638336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763649, 36.868084, 34.500660>,  <42.712196, 36.544510, 34.271202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763649, 36.868084, 34.500660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978986, -0.011277, -0.203617,
		-0.158245, 0.587784, -0.793390,
		0.128630, 0.808939, 0.573648,
		42.802238, 37.110767, 34.672756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935699, 37.170197, 33.928402>,  <42.712196, 36.544510, 34.271202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935699, 37.170197, 33.928402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100826, 37.211952, 34.290325>,  <43.199902, 37.237003, 34.507481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100826, 37.211952, 34.290325>,  <42.935699, 37.170197, 33.928402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100826, 37.211952, 34.290325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898742, 0.114513, -0.423261,
		-0.147795, 0.987922, -0.046544,
		0.412820, 0.104387, 0.904811,
		43.224670, 37.243267, 34.561768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249554, 36.484852, 33.666435>,  <42.935699, 37.170197, 33.928402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249554, 36.484852, 33.666435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503296, 36.596428, 33.378052>,  <43.655540, 36.663372, 33.205021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503296, 36.596428, 33.378052>,  <43.249554, 36.484852, 33.666435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503296, 36.596428, 33.378052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234510, -0.958119, -0.164355,
		-0.736611, -0.064813, -0.673204,
		0.634358, 0.278939, -0.720960,
		43.693604, 36.680111, 33.161762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066532, 36.206978, 33.090588>,  <43.249554, 36.484852, 33.666435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066532, 36.206978, 33.090588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456711, 36.294132, 33.077721>,  <43.690819, 36.346424, 33.070000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456711, 36.294132, 33.077721>,  <43.066532, 36.206978, 33.090588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456711, 36.294132, 33.077721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206448, -0.955396, -0.211184,
		-0.076746, 0.199357, -0.976917,
		0.975443, 0.217890, -0.032166,
		43.749344, 36.359501, 33.068069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309673, 35.856056, 32.501301>,  <43.066532, 36.206978, 33.090588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309673, 35.856056, 32.501301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615032, 35.916737, 32.752445>,  <43.798248, 35.953144, 32.903133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615032, 35.916737, 32.752445>,  <43.309673, 35.856056, 32.501301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615032, 35.916737, 32.752445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292389, -0.947898, -0.126484,
		0.575963, 0.280137, -0.767978,
		0.763397, 0.151698, 0.627863,
		43.844051, 35.962246, 32.940804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006783, 35.466179, 32.183205>,  <43.309673, 35.856056, 32.501301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006783, 35.466179, 32.183205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024357, 35.499390, 32.581436>,  <44.034901, 35.519314, 32.820374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024357, 35.499390, 32.581436>,  <44.006783, 35.466179, 32.183205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024357, 35.499390, 32.581436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436911, -0.897786, 0.055587,
		0.898431, 0.432537, -0.075720,
		0.043937, 0.083024, 0.995578,
		44.037537, 35.524296, 32.880108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626637, 35.337170, 32.401718>,  <44.006783, 35.466179, 32.183205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626637, 35.337170, 32.401718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390312, 35.224258, 32.704044>,  <44.248516, 35.156513, 32.885441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390312, 35.224258, 32.704044>,  <44.626637, 35.337170, 32.401718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390312, 35.224258, 32.704044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467017, -0.883552, 0.035079,
		0.657900, 0.373704, 0.653845,
		-0.590815, -0.282279, 0.755815,
		44.213066, 35.139576, 32.930790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055309, 35.036072, 33.013794>,  <44.626637, 35.337170, 32.401718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055309, 35.036072, 33.013794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689137, 34.876114, 33.031967>,  <44.469433, 34.780140, 33.042870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689137, 34.876114, 33.031967>,  <45.055309, 35.036072, 33.013794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689137, 34.876114, 33.031967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402352, -0.911981, 0.080020,
		0.009433, 0.091532, 0.995757,
		-0.915437, -0.399890, 0.045431,
		44.414505, 34.756145, 33.045597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859154, 34.687054, 33.668518>,  <45.055309, 35.036072, 33.013794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859154, 34.687054, 33.668518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702492, 34.521812, 33.339653>,  <44.608494, 34.422668, 33.142334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702492, 34.521812, 33.339653>,  <44.859154, 34.687054, 33.668518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702492, 34.521812, 33.339653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507575, -0.842291, 0.181423,
		-0.767445, -0.346252, 0.539572,
		-0.391659, -0.413105, -0.822160,
		44.584995, 34.397881, 33.093006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.493767, 33.994781, 33.732143>,  <44.859154, 34.687054, 33.668518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.493767, 33.994781, 33.732143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640610, 34.020603, 33.360970>,  <44.728718, 34.036095, 33.138264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640610, 34.020603, 33.360970>,  <44.493767, 33.994781, 33.732143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640610, 34.020603, 33.360970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384184, -0.919047, 0.088059,
		-0.847131, -0.388825, -0.362193,
		0.367112, 0.064552, -0.927934,
		44.750744, 34.039970, 33.082588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253307, 33.424553, 33.413456>,  <44.493767, 33.994781, 33.732143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253307, 33.424553, 33.413456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509796, 33.152821, 33.270718>,  <44.663689, 32.989780, 33.185074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509796, 33.152821, 33.270718>,  <44.253307, 33.424553, 33.413456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509796, 33.152821, 33.270718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378043, -0.684354, 0.623493,
		-0.667766, -0.264898, -0.695642,
		0.641227, -0.679331, -0.356845,
		44.702164, 32.949020, 33.163662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965080, 33.299088, 33.619850>,  <44.253307, 33.424553, 33.413456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965080, 33.299088, 33.619850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280396, 33.278049, 33.374626>,  <45.469585, 33.265427, 33.227493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280396, 33.278049, 33.374626>,  <44.965080, 33.299088, 33.619850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280396, 33.278049, 33.374626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608966, 0.209367, 0.765066,
		0.088113, -0.976422, 0.197071,
		0.788287, -0.052597, -0.613055,
		45.516880, 33.262272, 33.190708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571716, 32.871365, 33.885632>,  <44.965080, 33.299088, 33.619850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571716, 32.871365, 33.885632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662693, 33.176109, 33.643032>,  <45.717281, 33.358955, 33.497475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662693, 33.176109, 33.643032>,  <45.571716, 32.871365, 33.885632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662693, 33.176109, 33.643032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516920, 0.433367, 0.738232,
		0.825265, -0.481417, -0.295254,
		0.227444, 0.761860, -0.606496,
		45.730927, 33.404667, 33.461082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323250, 33.068359, 33.740810>,  <45.571716, 32.871365, 33.885632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323250, 33.068359, 33.740810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088726, 33.392357, 33.735783>,  <45.948013, 33.586754, 33.732765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088726, 33.392357, 33.735783>,  <46.323250, 33.068359, 33.740810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.088726, 33.392357, 33.735783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532465, 0.397023, 0.747566,
		0.610511, 0.431612, -0.664069,
		-0.586309, 0.809990, -0.012568,
		45.912834, 33.635353, 33.732014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764191, 33.753979, 33.630661>,  <46.323250, 33.068359, 33.740810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764191, 33.753979, 33.630661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454342, 33.763706, 33.883446>,  <46.268433, 33.769543, 34.035114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454342, 33.763706, 33.883446>,  <46.764191, 33.753979, 33.630661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454342, 33.763706, 33.883446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629869, 0.119410, 0.767467,
		-0.056799, 0.992547, -0.107815,
		-0.774622, 0.024318, 0.631957,
		46.221954, 33.771000, 34.073032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051853, 33.356632, 34.228531>,  <46.764191, 33.753979, 33.630661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051853, 33.356632, 34.228531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.356411, 33.391949, 34.485428>,  <47.539146, 33.413139, 34.639565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.356411, 33.391949, 34.485428>,  <47.051853, 33.356632, 34.228531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.356411, 33.391949, 34.485428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098512, 0.994935, -0.019995,
		-0.640755, -0.048045, 0.766241,
		0.761399, 0.088296, 0.642242,
		47.584831, 33.418438, 34.678101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823647, 33.782761, 34.879002>,  <47.051853, 33.356632, 34.228531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823647, 33.782761, 34.879002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213470, 33.799641, 34.790955>,  <47.447365, 33.809769, 34.738125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213470, 33.799641, 34.790955>,  <46.823647, 33.782761, 34.879002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.213470, 33.799641, 34.790955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068031, 0.991474, -0.111132,
		0.213550, 0.123279, 0.969123,
		0.974561, 0.042198, -0.220116,
		47.505840, 33.812302, 34.724918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065594, 34.234081, 35.277004>,  <46.823647, 33.782761, 34.879002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065594, 34.234081, 35.277004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280025, 34.272903, 34.941578>,  <47.408684, 34.296196, 34.740322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280025, 34.272903, 34.941578>,  <47.065594, 34.234081, 35.277004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280025, 34.272903, 34.941578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195802, 0.980574, -0.011676,
		0.821147, 0.170453, 0.544669,
		0.536078, 0.097059, -0.838570,
		47.440849, 34.302021, 34.690006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.620167, 34.751720, 35.335022>,  <47.065594, 34.234081, 35.277004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.620167, 34.751720, 35.335022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456097, 34.776371, 34.971054>,  <47.357655, 34.791161, 34.752674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456097, 34.776371, 34.971054>,  <47.620167, 34.751720, 35.335022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456097, 34.776371, 34.971054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319405, 0.924819, 0.206615,
		0.854247, 0.375382, -0.359653,
		-0.410173, 0.061625, -0.909923,
		47.333046, 34.794857, 34.698078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.779278, 35.433571, 35.068432>,  <47.620167, 34.751720, 35.335022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.779278, 35.433571, 35.068432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.420094, 35.275478, 34.991013>,  <47.204582, 35.180622, 34.944561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.420094, 35.275478, 34.991013>,  <47.779278, 35.433571, 35.068432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.420094, 35.275478, 34.991013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438323, 0.763991, 0.473488,
		-0.039268, 0.510010, -0.859272,
		-0.897959, -0.395232, -0.193548,
		47.150707, 35.156910, 34.932949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.031693, 32.376232, 26.844633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650360, 32.398071, 26.963415>,  <36.421562, 32.411175, 27.034683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650360, 32.398071, 26.963415>,  <37.031693, 32.376232, 26.844633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650360, 32.398071, 26.963415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300712, 0.083400, 0.950062,
		0.027101, 0.995020, -0.095924,
		-0.953330, 0.054593, 0.296954,
		36.364361, 32.414448, 27.052502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048870, 32.921204, 27.375261>,  <37.031693, 32.376232, 26.844633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048870, 32.921204, 27.375261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.671082, 32.798916, 27.423460>,  <36.444408, 32.725544, 27.452379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.671082, 32.798916, 27.423460>,  <37.048870, 32.921204, 27.375261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671082, 32.798916, 27.423460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095437, 0.095687, 0.990826,
		-0.314441, 0.947302, -0.061197,
		-0.944467, -0.305716, 0.120496,
		36.387741, 32.707203, 27.459608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673985, 33.417290, 27.829163>,  <37.048870, 32.921204, 27.375261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673985, 33.417290, 27.829163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472347, 33.072392, 27.848824>,  <36.351364, 32.865452, 27.860620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472347, 33.072392, 27.848824>,  <36.673985, 33.417290, 27.829163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472347, 33.072392, 27.848824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103795, 0.116984, 0.987695,
		-0.857389, 0.492789, -0.148468,
		-0.504094, -0.862249, 0.049152,
		36.321117, 32.813717, 27.863569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120171, 33.634876, 28.217705>,  <36.673985, 33.417290, 27.829163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120171, 33.634876, 28.217705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121071, 33.237366, 28.262259>,  <36.121613, 32.998859, 28.288990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121071, 33.237366, 28.262259>,  <36.120171, 33.634876, 28.217705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121071, 33.237366, 28.262259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279799, 0.106308, 0.954155,
		-0.960056, -0.033313, -0.277818,
		0.002252, -0.993775, 0.111383,
		36.121746, 32.939232, 28.295673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517212, 33.417751, 28.649136>,  <36.120171, 33.634876, 28.217705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517212, 33.417751, 28.649136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776001, 33.116390, 28.696152>,  <35.931274, 32.935574, 28.724361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776001, 33.116390, 28.696152>,  <35.517212, 33.417751, 28.649136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776001, 33.116390, 28.696152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144247, 0.030436, 0.989074,
		-0.748749, -0.656853, -0.088985,
		0.646968, -0.753404, 0.117538,
		35.970093, 32.890369, 28.731413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241970, 32.941723, 29.177101>,  <35.517212, 33.417751, 28.649136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241970, 32.941723, 29.177101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627556, 32.841721, 29.140718>,  <35.858906, 32.781719, 29.118889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627556, 32.841721, 29.140718>,  <35.241970, 32.941723, 29.177101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627556, 32.841721, 29.140718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101961, 0.031395, 0.994293,
		-0.245725, -0.967735, 0.055755,
		0.963962, -0.250008, -0.090957,
		35.916744, 32.766720, 29.113432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392162, 32.333466, 29.640406>,  <35.241970, 32.941723, 29.177101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392162, 32.333466, 29.640406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730579, 32.536495, 29.575197>,  <35.933632, 32.658314, 29.536072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730579, 32.536495, 29.575197>,  <35.392162, 32.333466, 29.640406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730579, 32.536495, 29.575197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079270, 0.182617, 0.979983,
		0.527186, -0.842033, 0.114266,
		0.846045, 0.507575, -0.163021,
		35.984394, 32.688766, 29.526291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924847, 32.094776, 30.147964>,  <35.392162, 32.333466, 29.640406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924847, 32.094776, 30.147964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083389, 32.431282, 30.000900>,  <36.178513, 32.633186, 29.912661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083389, 32.431282, 30.000900>,  <35.924847, 32.094776, 30.147964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083389, 32.431282, 30.000900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260851, 0.280769, 0.923648,
		0.880262, -0.461996, -0.108161,
		0.396353, 0.841266, -0.367662,
		36.202297, 32.683662, 29.890602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575306, 32.146542, 30.364771>,  <35.924847, 32.094776, 30.147964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575306, 32.146542, 30.364771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471710, 32.523819, 30.281527>,  <36.409554, 32.750187, 30.231579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471710, 32.523819, 30.281527>,  <36.575306, 32.146542, 30.364771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471710, 32.523819, 30.281527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194802, 0.262044, 0.945191,
		0.946032, 0.204253, -0.251602,
		-0.258989, 0.943194, -0.208113,
		36.394012, 32.806778, 30.219093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969639, 32.414055, 30.849009>,  <36.575306, 32.146542, 30.364771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969639, 32.414055, 30.849009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748032, 32.716228, 30.709076>,  <36.615067, 32.897533, 30.625116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748032, 32.716228, 30.709076>,  <36.969639, 32.414055, 30.849009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748032, 32.716228, 30.709076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162904, 0.510466, 0.844326,
		0.816410, 0.410783, -0.405871,
		-0.554019, 0.755434, -0.349832,
		36.581825, 32.942860, 30.604126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430649, 33.053837, 30.843287>,  <36.969639, 32.414055, 30.849009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430649, 33.053837, 30.843287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046814, 33.165226, 30.827040>,  <36.816513, 33.232059, 30.817291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046814, 33.165226, 30.827040>,  <37.430649, 33.053837, 30.843287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046814, 33.165226, 30.827040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140521, 0.599171, 0.788193,
		0.243827, 0.750630, -0.614087,
		-0.959585, 0.278474, -0.040615,
		36.758938, 33.248768, 30.814856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496979, 33.711811, 30.691763>,  <37.430649, 33.053837, 30.843287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496979, 33.711811, 30.691763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141228, 33.644176, 30.861664>,  <36.927776, 33.603596, 30.963604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.141228, 33.644176, 30.861664>,  <37.496979, 33.711811, 30.691763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141228, 33.644176, 30.861664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252687, 0.592464, 0.764942,
		-0.380990, 0.787652, -0.484200,
		-0.889379, -0.169084, 0.424752,
		36.874413, 33.593452, 30.989090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108322, 34.325851, 30.745546>,  <37.496979, 33.711811, 30.691763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108322, 34.325851, 30.745546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969936, 34.077591, 31.026999>,  <36.886906, 33.928635, 31.195869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969936, 34.077591, 31.026999>,  <37.108322, 34.325851, 30.745546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969936, 34.077591, 31.026999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308474, 0.633005, 0.710034,
		-0.886087, 0.462700, -0.027543,
		-0.345968, -0.620656, 0.703628,
		36.866146, 33.891396, 31.238087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859489, 34.766727, 31.306622>,  <37.108322, 34.325851, 30.745546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859489, 34.766727, 31.306622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852093, 34.411674, 31.490696>,  <36.847652, 34.198643, 31.601141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852093, 34.411674, 31.490696>,  <36.859489, 34.766727, 31.306622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852093, 34.411674, 31.490696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336423, 0.427900, 0.838881,
		-0.941529, 0.170331, 0.290706,
		-0.018494, -0.887631, 0.460184,
		36.846546, 34.145386, 31.628752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394817, 34.742760, 31.915447>,  <36.859489, 34.766727, 31.306622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394817, 34.742760, 31.915447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656284, 34.443115, 31.958456>,  <36.813164, 34.263329, 31.984261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656284, 34.443115, 31.958456>,  <36.394817, 34.742760, 31.915447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656284, 34.443115, 31.958456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243795, 0.342942, 0.907169,
		-0.716441, -0.566770, 0.406798,
		0.653664, -0.749107, 0.107522,
		36.852383, 34.218384, 31.990713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257191, 34.594093, 32.635418>,  <36.394817, 34.742760, 31.915447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257191, 34.594093, 32.635418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611969, 34.433525, 32.544033>,  <36.824837, 34.337185, 32.489201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611969, 34.433525, 32.544033>,  <36.257191, 34.594093, 32.635418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611969, 34.433525, 32.544033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343020, 0.241228, 0.907825,
		-0.309305, -0.883557, 0.351649,
		0.886943, -0.401417, -0.228465,
		36.878052, 34.313099, 32.475494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477734, 34.200500, 33.260643>,  <36.257191, 34.594093, 32.635418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477734, 34.200500, 33.260643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802296, 34.288601, 33.044083>,  <36.997032, 34.341461, 32.914146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802296, 34.288601, 33.044083>,  <36.477734, 34.200500, 33.260643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802296, 34.288601, 33.044083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509767, 0.186478, 0.839859,
		0.285938, -0.957453, 0.039033,
		0.811404, 0.220250, -0.541399,
		37.045715, 34.354675, 32.881664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013500, 33.842869, 33.604877>,  <36.477734, 34.200500, 33.260643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013500, 33.842869, 33.604877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209187, 34.117188, 33.389339>,  <37.326599, 34.281776, 33.260017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209187, 34.117188, 33.389339>,  <37.013500, 33.842869, 33.604877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209187, 34.117188, 33.389339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546461, 0.240491, 0.802212,
		0.679737, -0.686916, -0.257106,
		0.489221, 0.685792, -0.538843,
		37.355953, 34.322926, 33.227688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858768, 33.817627, 33.781487>,  <37.013500, 33.842869, 33.604877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858768, 33.817627, 33.781487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.793808, 34.183876, 33.634369>,  <37.754833, 34.403625, 33.546101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.793808, 34.183876, 33.634369>,  <37.858768, 33.817627, 33.781487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793808, 34.183876, 33.634369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517905, 0.396363, 0.758070,
		0.839882, -0.067372, -0.538572,
		-0.162397, 0.915619, -0.367790,
		37.745090, 34.458561, 33.524033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527283, 34.189785, 33.821129>,  <37.858768, 33.817627, 33.781487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527283, 34.189785, 33.821129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.250130, 34.477741, 33.804775>,  <38.083836, 34.650513, 33.794964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.250130, 34.477741, 33.804775>,  <38.527283, 34.189785, 33.821129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250130, 34.477741, 33.804775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503412, 0.523566, 0.687353,
		0.516221, 0.455678, -0.725172,
		-0.692887, 0.719886, -0.040882,
		38.042263, 34.693707, 33.792511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935631, 34.650097, 33.757904>,  <38.527283, 34.189785, 33.821129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935631, 34.650097, 33.757904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603298, 34.832024, 33.886192>,  <38.403900, 34.941177, 33.963165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603298, 34.832024, 33.886192>,  <38.935631, 34.650097, 33.757904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603298, 34.832024, 33.886192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549762, 0.581178, 0.599995,
		0.086487, 0.674817, -0.732900,
		-0.830832, 0.454812, 0.320724,
		38.354050, 34.968468, 33.982410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048023, 35.314335, 33.684395>,  <38.935631, 34.650097, 33.757904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048023, 35.314335, 33.684395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.757610, 35.284756, 33.957867>,  <38.583363, 35.267010, 34.121948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.757610, 35.284756, 33.957867>,  <39.048023, 35.314335, 33.684395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757610, 35.284756, 33.957867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559204, 0.515133, 0.649561,
		-0.400215, 0.853915, -0.332652,
		-0.726030, -0.073944, 0.683676,
		38.539803, 35.262573, 34.162968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765144, 35.383125, 33.959320>,  <39.048023, 35.314335, 33.684395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765144, 35.383125, 33.959320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.060730, 35.625771, 33.842049>,  <40.238079, 35.771358, 33.771687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.060730, 35.625771, 33.842049>,  <39.765144, 35.383125, 33.959320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060730, 35.625771, 33.842049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582868, -0.357329, 0.729781,
		0.337935, -0.710165, -0.617630,
		0.738962, 0.606615, -0.293178,
		40.282417, 35.807755, 33.754097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952293, 34.788834, 33.614948>,  <39.765144, 35.383125, 33.959320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952293, 34.788834, 33.614948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.307079, 34.759060, 33.432625>,  <40.519951, 34.741196, 33.323231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.307079, 34.759060, 33.432625>,  <39.952293, 34.788834, 33.614948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307079, 34.759060, 33.432625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452582, 0.056559, -0.889927,
		0.092021, 0.995621, 0.016478,
		0.886962, -0.074434, -0.455804,
		40.573170, 34.736729, 33.295883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077621, 35.373520, 33.232899>,  <39.952293, 34.788834, 33.614948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077621, 35.373520, 33.232899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316730, 35.115040, 33.043125>,  <40.460197, 34.959949, 32.929260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316730, 35.115040, 33.043125>,  <40.077621, 35.373520, 33.232899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316730, 35.115040, 33.043125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469998, 0.196937, -0.860417,
		0.649438, 0.737318, -0.185990,
		0.597772, -0.646203, -0.474436,
		40.496063, 34.921181, 32.900795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182999, 35.668594, 32.625698>,  <40.077621, 35.373520, 33.232899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182999, 35.668594, 32.625698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.287868, 35.291332, 32.543999>,  <40.350792, 35.064976, 32.494980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.287868, 35.291332, 32.543999>,  <40.182999, 35.668594, 32.625698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287868, 35.291332, 32.543999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512452, 0.043278, -0.857625,
		0.817715, 0.329514, -0.471978,
		0.262173, -0.943158, -0.204249,
		40.366520, 35.008385, 32.482723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563400, 35.639458, 32.026154>,  <40.182999, 35.668594, 32.625698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563400, 35.639458, 32.026154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.424786, 35.264614, 32.042862>,  <40.341618, 35.039707, 32.052887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.424786, 35.264614, 32.042862>,  <40.563400, 35.639458, 32.026154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424786, 35.264614, 32.042862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454380, 0.128734, -0.881457,
		0.820640, -0.324440, -0.470413,
		-0.346539, -0.937105, 0.041775,
		40.320824, 34.983482, 32.055393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689049, 35.302235, 31.426239>,  <40.563400, 35.639458, 32.026154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689049, 35.302235, 31.426239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.411049, 35.051395, 31.566940>,  <40.244251, 34.900894, 31.651361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.411049, 35.051395, 31.566940>,  <40.689049, 35.302235, 31.426239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411049, 35.051395, 31.566940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434623, -0.023322, -0.900311,
		0.572785, -0.778593, -0.256342,
		-0.694997, -0.627096, 0.351753,
		40.202549, 34.863266, 31.672466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700012, 34.735703, 30.982038>,  <40.689049, 35.302235, 31.426239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700012, 34.735703, 30.982038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.346565, 34.690075, 31.163679>,  <40.134499, 34.662697, 31.272663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.346565, 34.690075, 31.163679>,  <40.700012, 34.735703, 30.982038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346565, 34.690075, 31.163679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437463, -0.144527, -0.887546,
		0.166876, -0.982903, 0.077803,
		-0.883617, -0.114075, 0.454102,
		40.081482, 34.655853, 31.299910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426945, 34.078278, 30.797138>,  <40.700012, 34.735703, 30.982038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426945, 34.078278, 30.797138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.118744, 34.301109, 30.921070>,  <39.933823, 34.434807, 30.995430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.118744, 34.301109, 30.921070>,  <40.426945, 34.078278, 30.797138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118744, 34.301109, 30.921070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420752, -0.079334, -0.903700,
		-0.478852, -0.826662, 0.295519,
		-0.770499, 0.557079, 0.309831,
		39.887592, 34.468231, 31.014019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929394, 33.833973, 30.459686>,  <40.426945, 34.078278, 30.797138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929394, 33.833973, 30.459686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731361, 34.156235, 30.589804>,  <39.612541, 34.349590, 30.667873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731361, 34.156235, 30.589804>,  <39.929394, 33.833973, 30.459686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731361, 34.156235, 30.589804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556844, -0.006827, -0.830589,
		-0.666945, -0.592349, 0.452003,
		-0.495085, 0.805653, 0.325292,
		39.582836, 34.397930, 30.687391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179688, 33.728222, 30.395094>,  <39.929394, 33.833973, 30.459686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179688, 33.728222, 30.395094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234917, 34.123322, 30.424204>,  <39.268055, 34.360382, 30.441669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234917, 34.123322, 30.424204>,  <39.179688, 33.728222, 30.395094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234917, 34.123322, 30.424204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564597, 0.138868, -0.813601,
		-0.813736, 0.071248, 0.576852,
		0.138073, 0.987745, 0.072776,
		39.276340, 34.419643, 30.446037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565151, 33.885620, 30.354868>,  <39.179688, 33.728222, 30.395094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565151, 33.885620, 30.354868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790966, 34.195309, 30.240408>,  <38.926456, 34.381123, 30.171732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790966, 34.195309, 30.240408>,  <38.565151, 33.885620, 30.354868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790966, 34.195309, 30.240408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478878, 0.024849, -0.877530,
		-0.672290, 0.632429, 0.384785,
		0.564537, 0.774220, -0.286150,
		38.960327, 34.427574, 30.154562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077755, 34.362091, 30.099428>,  <38.565151, 33.885620, 30.354868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077755, 34.362091, 30.099428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.437263, 34.464684, 29.957205>,  <38.652969, 34.526237, 29.871870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.437263, 34.464684, 29.957205>,  <38.077755, 34.362091, 30.099428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437263, 34.464684, 29.957205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409958, 0.204274, -0.888936,
		-0.155362, 0.944717, 0.288742,
		0.898775, 0.256479, -0.355558,
		38.706898, 34.541626, 29.850538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979942, 34.982864, 29.822411>,  <38.077755, 34.362091, 30.099428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979942, 34.982864, 29.822411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308331, 34.832478, 29.650522>,  <38.505363, 34.742245, 29.547388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308331, 34.832478, 29.650522>,  <37.979942, 34.982864, 29.822411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308331, 34.832478, 29.650522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419122, 0.114289, -0.900708,
		0.387751, 0.919557, -0.063749,
		0.820966, -0.375969, -0.429723,
		38.554619, 34.719688, 29.521605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139256, 35.531387, 29.303228>,  <37.979942, 34.982864, 29.822411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139256, 35.531387, 29.303228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335720, 35.201565, 29.190897>,  <38.453598, 35.003670, 29.123497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335720, 35.201565, 29.190897>,  <38.139256, 35.531387, 29.303228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335720, 35.201565, 29.190897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189295, 0.213655, -0.958394,
		0.850252, 0.523885, -0.051146,
		0.491161, -0.824558, -0.280829,
		38.483067, 34.954197, 29.106647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377491, 35.794636, 28.630163>,  <38.139256, 35.531387, 29.303228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377491, 35.794636, 28.630163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416443, 35.396667, 28.640409>,  <38.439816, 35.157887, 28.646557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416443, 35.396667, 28.640409>,  <38.377491, 35.794636, 28.630163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416443, 35.396667, 28.640409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202032, -0.044964, -0.978346,
		0.974525, 0.090099, -0.205384,
		0.097383, -0.994917, 0.025616,
		38.445660, 35.098194, 28.648094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673779, 35.691578, 28.054974>,  <38.377491, 35.794636, 28.630163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673779, 35.691578, 28.054974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524395, 35.334114, 28.154488>,  <38.434765, 35.119637, 28.214195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524395, 35.334114, 28.154488>,  <38.673779, 35.691578, 28.054974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524395, 35.334114, 28.154488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287758, -0.143356, -0.946913,
		0.881887, -0.425222, -0.203621,
		-0.373458, -0.893664, 0.248785,
		38.412357, 35.066013, 28.229124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982422, 35.076302, 27.654881>,  <38.673779, 35.691578, 28.054974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982422, 35.076302, 27.654881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626293, 34.948963, 27.785105>,  <38.412617, 34.872562, 27.863239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626293, 34.948963, 27.785105>,  <38.982422, 35.076302, 27.654881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626293, 34.948963, 27.785105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256152, -0.240955, -0.936123,
		0.376454, -0.916841, 0.132983,
		-0.890320, -0.318343, 0.325559,
		38.359196, 34.853462, 27.882772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896046, 34.446430, 27.209723>,  <38.982422, 35.076302, 27.654881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896046, 34.446430, 27.209723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535076, 34.528908, 27.361048>,  <38.318497, 34.578396, 27.451843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535076, 34.528908, 27.361048>,  <38.896046, 34.446430, 27.209723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535076, 34.528908, 27.361048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429498, -0.360824, -0.827851,
		-0.034193, -0.909555, 0.414175,
		-0.902420, 0.206194, 0.378315,
		38.264351, 34.590767, 27.474543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.581734, 33.781284, 27.346954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283527, 34.044548, 27.304941>,  <38.104603, 34.202507, 27.279734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283527, 34.044548, 27.304941>,  <38.581734, 33.781284, 27.346954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283527, 34.044548, 27.304941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347555, -0.518379, -0.781338,
		-0.568692, -0.545995, 0.615206,
		-0.745517, 0.658158, -0.105035,
		38.059872, 34.241997, 27.273432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955074, 33.433529, 27.201235>,  <38.581734, 33.781284, 27.346954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955074, 33.433529, 27.201235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929245, 33.808708, 27.064951>,  <37.913750, 34.033817, 26.983181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929245, 33.808708, 27.064951>,  <37.955074, 33.433529, 27.201235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929245, 33.808708, 27.064951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409624, -0.336245, -0.848025,
		-0.909966, 0.084808, 0.405917,
		-0.064569, 0.937948, -0.340711,
		37.909874, 34.090092, 26.962738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168968, 33.521862, 26.818953>,  <37.955074, 33.433529, 27.201235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168968, 33.521862, 26.818953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.406174, 33.825024, 26.710207>,  <37.548496, 34.006920, 26.644960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.406174, 33.825024, 26.710207>,  <37.168968, 33.521862, 26.818953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406174, 33.825024, 26.710207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409917, -0.006439, -0.912100,
		-0.693039, 0.652329, 0.306861,
		0.593014, 0.757908, -0.271863,
		37.584080, 34.052395, 26.628649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714142, 33.978397, 26.484249>,  <37.168968, 33.521862, 26.818953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714142, 33.978397, 26.484249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074665, 34.095287, 26.356340>,  <37.290977, 34.165421, 26.279594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.074665, 34.095287, 26.356340>,  <36.714142, 33.978397, 26.484249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074665, 34.095287, 26.356340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338703, 0.015197, -0.940771,
		-0.270054, 0.956230, 0.112673,
		0.901305, 0.292221, -0.319774,
		37.345058, 34.182953, 26.260408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646072, 34.406940, 25.857307>,  <36.714142, 33.978397, 26.484249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646072, 34.406940, 25.857307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026234, 34.286583, 25.825813>,  <37.254330, 34.214371, 25.806917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026234, 34.286583, 25.825813>,  <36.646072, 34.406940, 25.857307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026234, 34.286583, 25.825813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144747, -0.203835, -0.968246,
		0.275286, 0.931621, -0.237278,
		0.950403, -0.300890, -0.078736,
		37.311356, 34.196316, 25.802193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871254, 34.585808, 25.213259>,  <36.646072, 34.406940, 25.857307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871254, 34.585808, 25.213259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155247, 34.323250, 25.315298>,  <37.325642, 34.165714, 25.376522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155247, 34.323250, 25.315298>,  <36.871254, 34.585808, 25.213259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155247, 34.323250, 25.315298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018098, -0.379127, -0.925168,
		0.703988, 0.652235, -0.281053,
		0.709981, -0.656393, 0.255097,
		37.368240, 34.126331, 25.391827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242527, 34.585800, 24.703888>,  <36.871254, 34.585808, 25.213259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242527, 34.585800, 24.703888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349400, 34.234676, 24.862913>,  <37.413525, 34.024002, 24.958328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349400, 34.234676, 24.862913>,  <37.242527, 34.585800, 24.703888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349400, 34.234676, 24.862913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148280, -0.370199, -0.917042,
		0.952168, 0.303972, 0.031250,
		0.267186, -0.877812, 0.397564,
		37.429554, 33.971333, 24.982182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813354, 34.360813, 24.216608>,  <37.242527, 34.585800, 24.703888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813354, 34.360813, 24.216608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718815, 34.029179, 24.419294>,  <37.662090, 33.830200, 24.540907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718815, 34.029179, 24.419294>,  <37.813354, 34.360813, 24.216608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718815, 34.029179, 24.419294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112203, -0.541289, -0.833317,
		0.965169, -0.140096, 0.220957,
		-0.236346, -0.829083, 0.506716,
		37.647911, 33.780453, 24.571310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235298, 33.910740, 23.844440>,  <37.813354, 34.360813, 24.216608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235298, 33.910740, 23.844440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.948330, 33.704674, 24.032022>,  <37.776150, 33.581036, 24.144571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.948330, 33.704674, 24.032022>,  <38.235298, 33.910740, 23.844440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948330, 33.704674, 24.032022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195401, -0.497337, -0.845266,
		0.668677, -0.698044, 0.256136,
		-0.717419, -0.515161, 0.468956,
		37.733105, 33.550125, 24.172709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439770, 33.208160, 23.685637>,  <38.235298, 33.910740, 23.844440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439770, 33.208160, 23.685637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047573, 33.261829, 23.743103>,  <37.812256, 33.294029, 23.777584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047573, 33.261829, 23.743103>,  <38.439770, 33.208160, 23.685637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047573, 33.261829, 23.743103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196180, -0.621465, -0.758481,
		-0.012482, -0.771867, 0.635661,
		-0.980488, 0.134172, 0.143668,
		37.753426, 33.302082, 23.786203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139008, 32.508831, 23.498844>,  <38.439770, 33.208160, 23.685637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139008, 32.508831, 23.498844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847805, 32.782890, 23.508554>,  <37.673084, 32.947327, 23.514381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847805, 32.782890, 23.508554>,  <38.139008, 32.508831, 23.498844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847805, 32.782890, 23.508554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361680, -0.353742, -0.862585,
		-0.582408, -0.636745, 0.505329,
		-0.728003, 0.685144, 0.024276,
		37.629402, 32.988434, 23.515837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469318, 32.135357, 23.454954>,  <38.139008, 32.508831, 23.498844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469318, 32.135357, 23.454954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395443, 32.514801, 23.352167>,  <37.351120, 32.742466, 23.290495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395443, 32.514801, 23.352167>,  <37.469318, 32.135357, 23.454954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395443, 32.514801, 23.352167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528144, -0.316298, -0.788048,
		-0.828828, -0.009826, 0.559418,
		-0.184686, 0.948609, -0.256967,
		37.340038, 32.799385, 23.275078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971970, 32.091633, 22.926550>,  <37.469318, 32.135357, 23.454954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971970, 32.091633, 22.926550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083828, 32.473698, 22.887621>,  <37.150944, 32.702934, 22.864264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083828, 32.473698, 22.887621>,  <36.971970, 32.091633, 22.926550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083828, 32.473698, 22.887621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287323, -0.013468, -0.957739,
		-0.916103, 0.295789, 0.270673,
		0.279643, 0.955159, -0.097325,
		37.167721, 32.760246, 22.858423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412918, 32.529377, 22.755869>,  <36.971970, 32.091633, 22.926550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412918, 32.529377, 22.755869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741810, 32.714878, 22.623886>,  <36.939144, 32.826180, 22.544697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741810, 32.714878, 22.623886>,  <36.412918, 32.529377, 22.755869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741810, 32.714878, 22.623886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369054, -0.006917, -0.929382,
		-0.433282, 0.885939, 0.165461,
		0.822232, 0.463749, -0.329956,
		36.988480, 32.854004, 22.524899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197605, 33.078590, 22.310450>,  <36.412918, 32.529377, 22.755869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197605, 33.078590, 22.310450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572159, 32.993492, 22.198795>,  <36.796890, 32.942432, 22.131802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572159, 32.993492, 22.198795>,  <36.197605, 33.078590, 22.310450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572159, 32.993492, 22.198795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298551, -0.064710, -0.952197,
		0.184510, 0.974963, -0.124109,
		0.936388, -0.212743, -0.279137,
		36.853077, 32.929668, 22.115055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406708, 33.618023, 21.815910>,  <36.197605, 33.078590, 22.310450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406708, 33.618023, 21.815910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637241, 33.295639, 21.761843>,  <36.775562, 33.102207, 21.729403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637241, 33.295639, 21.761843>,  <36.406708, 33.618023, 21.815910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637241, 33.295639, 21.761843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278324, -0.038067, -0.959733,
		0.768359, 0.590747, -0.246257,
		0.576333, -0.805959, -0.135170,
		36.810143, 33.053852, 21.721292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690544, 33.643612, 21.215544>,  <36.406708, 33.618023, 21.815910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690544, 33.643612, 21.215544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.738720, 33.250538, 21.271873>,  <36.767624, 33.014694, 21.305672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.738720, 33.250538, 21.271873>,  <36.690544, 33.643612, 21.215544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738720, 33.250538, 21.271873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153910, -0.158626, -0.975269,
		0.980717, 0.095786, -0.170349,
		0.120439, -0.982681, 0.140825,
		36.774853, 32.955734, 21.314121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172512, 33.571903, 20.768879>,  <36.690544, 33.643612, 21.215544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172512, 33.571903, 20.768879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048267, 33.203571, 20.863197>,  <36.973721, 32.982574, 20.919788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048267, 33.203571, 20.863197>,  <37.172512, 33.571903, 20.768879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048267, 33.203571, 20.863197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019344, -0.241888, -0.970111,
		0.950341, -0.305885, 0.057320,
		-0.310607, -0.920828, 0.235794,
		36.955086, 32.927322, 20.933935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630314, 33.106602, 20.406836>,  <37.172512, 33.571903, 20.768879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630314, 33.106602, 20.406836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.297894, 32.896801, 20.480854>,  <37.098442, 32.770920, 20.525265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.297894, 32.896801, 20.480854>,  <37.630314, 33.106602, 20.406836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297894, 32.896801, 20.480854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076999, -0.221001, -0.972229,
		0.550834, -0.822224, 0.143278,
		-0.831055, -0.524505, 0.185045,
		37.048576, 32.739449, 20.536367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650330, 32.490425, 19.989868>,  <37.630314, 33.106602, 20.406836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650330, 32.490425, 19.989868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261703, 32.544128, 20.067884>,  <37.028526, 32.576351, 20.114695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261703, 32.544128, 20.067884>,  <37.650330, 32.490425, 19.989868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261703, 32.544128, 20.067884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210121, -0.109148, -0.971564,
		-0.109148, -0.984917, 0.134254,
		0.971564, -0.134254, -0.195038,
		36.970234, 32.584404, 20.126396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370323, 31.987692, 19.508615>,  <37.650330, 32.490425, 19.989868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370323, 31.987692, 19.508615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104134, 32.265648, 19.617624>,  <36.944420, 32.432423, 19.683029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104134, 32.265648, 19.617624>,  <37.370323, 31.987692, 19.508615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104134, 32.265648, 19.617624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332000, 0.051435, -0.941876,
		-0.668519, -0.717272, 0.196475,
		-0.665476, 0.694892, 0.272520,
		36.904491, 32.474117, 19.699381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748543, 31.918207, 19.144356>,  <37.370323, 31.987692, 19.508615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748543, 31.918207, 19.144356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736542, 32.296448, 19.273932>,  <36.729343, 32.523392, 19.351677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736542, 32.296448, 19.273932>,  <36.748543, 31.918207, 19.144356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736542, 32.296448, 19.273932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116589, 0.318565, -0.940704,
		-0.992727, -0.065987, 0.100691,
		-0.029998, 0.945601, 0.323941,
		36.727543, 32.580128, 19.371115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198109, 32.097477, 18.758112>,  <36.748543, 31.918207, 19.144356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198109, 32.097477, 18.758112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092670, 32.478119, 18.821308>,  <36.029408, 32.706505, 18.859226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092670, 32.478119, 18.821308>,  <36.198109, 32.097477, 18.758112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092670, 32.478119, 18.821308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943902, -0.288217, 0.161181,
		0.198917, -0.106640, 0.974197,
		-0.263592, 0.951608, 0.157988,
		36.013592, 32.763603, 18.868704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955807, 32.146919, 19.418074>,  <36.198109, 32.097477, 18.758112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955807, 32.146919, 19.418074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805943, 32.420277, 19.167444>,  <35.716022, 32.584293, 19.017067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805943, 32.420277, 19.167444>,  <35.955807, 32.146919, 19.418074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805943, 32.420277, 19.167444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927139, -0.280848, 0.248068,
		-0.006442, 0.673863, 0.738828,
		-0.374662, 0.683398, -0.626574,
		35.693542, 32.625298, 18.979471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283623, 32.256111, 19.381191>,  <35.955807, 32.146919, 19.418074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283623, 32.256111, 19.381191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892208, 32.183262, 19.419750>,  <34.657360, 32.139553, 19.442886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892208, 32.183262, 19.419750>,  <35.283623, 32.256111, 19.381191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892208, 32.183262, 19.419750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023045, 0.368143, 0.929483,
		-0.204771, 0.911757, -0.356045,
		-0.978538, -0.182126, 0.096397,
		34.598648, 32.128624, 19.448669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081547, 32.719826, 19.767035>,  <35.283623, 32.256111, 19.381191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081547, 32.719826, 19.767035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768906, 32.474781, 19.814035>,  <34.581322, 32.327755, 19.842236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768906, 32.474781, 19.814035>,  <35.081547, 32.719826, 19.767035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768906, 32.474781, 19.814035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043636, 0.134209, 0.989992,
		-0.622253, 0.778904, -0.078165,
		-0.781599, -0.612615, 0.117500,
		34.534428, 32.290997, 19.849285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677193, 33.046379, 20.269756>,  <35.081547, 32.719826, 19.767035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677193, 33.046379, 20.269756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.520164, 32.679329, 20.294586>,  <34.425945, 32.459099, 20.309484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.520164, 32.679329, 20.294586>,  <34.677193, 33.046379, 20.269756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520164, 32.679329, 20.294586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107020, 0.112610, 0.987859,
		-0.913473, 0.381163, -0.142412,
		-0.392572, -0.917624, 0.062074,
		34.402393, 32.404041, 20.313208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008270, 33.081272, 20.668161>,  <34.677193, 33.046379, 20.269756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008270, 33.081272, 20.668161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174599, 32.717880, 20.684921>,  <34.274395, 32.499844, 20.694977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174599, 32.717880, 20.684921>,  <34.008270, 33.081272, 20.668161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174599, 32.717880, 20.684921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122834, -0.010456, 0.992372,
		-0.901112, -0.417799, -0.115940,
		0.415824, -0.908480, 0.041898,
		34.299347, 32.445335, 20.697491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507927, 32.693539, 21.050810>,  <34.008270, 33.081272, 20.668161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507927, 32.693539, 21.050810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852692, 32.491154, 21.064140>,  <34.059551, 32.369724, 21.072138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852692, 32.491154, 21.064140>,  <33.507927, 32.693539, 21.050810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852692, 32.491154, 21.064140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045380, -0.011513, 0.998904,
		-0.505023, -0.862479, -0.032883,
		0.861912, -0.505961, 0.033325,
		34.111267, 32.339367, 21.074139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395309, 32.259266, 21.586107>,  <33.507927, 32.693539, 21.050810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395309, 32.259266, 21.586107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793365, 32.254513, 21.546989>,  <34.032200, 32.251663, 21.523518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793365, 32.254513, 21.546989>,  <33.395309, 32.259266, 21.586107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793365, 32.254513, 21.546989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096663, -0.073837, 0.992575,
		-0.019011, -0.997200, -0.072330,
		0.995136, -0.011879, -0.097796,
		34.091908, 32.250950, 21.517651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661747, 31.638231, 22.015530>,  <33.395309, 32.259266, 21.586107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661747, 31.638231, 22.015530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960224, 31.900446, 21.969114>,  <34.139313, 32.057774, 21.941265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960224, 31.900446, 21.969114>,  <33.661747, 31.638231, 22.015530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960224, 31.900446, 21.969114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159631, -0.006970, 0.987152,
		0.646305, -0.755132, -0.109845,
		0.746195, 0.655536, -0.116038,
		34.184082, 32.097107, 21.934303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158562, 31.351402, 22.548637>,  <33.661747, 31.638231, 22.015530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158562, 31.351402, 22.548637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284733, 31.717928, 22.449947>,  <34.360435, 31.937843, 22.390734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284733, 31.717928, 22.449947>,  <34.158562, 31.351402, 22.548637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284733, 31.717928, 22.449947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199086, 0.190314, 0.961325,
		0.927831, -0.352348, -0.122395,
		0.315428, 0.916314, -0.246727,
		34.379360, 31.992823, 22.375929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714287, 31.336935, 22.877262>,  <34.158562, 31.351402, 22.548637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714287, 31.336935, 22.877262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650753, 31.723158, 22.794827>,  <34.612633, 31.954891, 22.745365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650753, 31.723158, 22.794827>,  <34.714287, 31.336935, 22.877262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650753, 31.723158, 22.794827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362268, 0.251176, 0.897593,
		0.918440, 0.067914, -0.389686,
		-0.158839, 0.965556, -0.206087,
		34.603100, 32.012825, 22.733000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346859, 31.699913, 22.909611>,  <34.714287, 31.336935, 22.877262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346859, 31.699913, 22.909611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047070, 31.957119, 22.972631>,  <34.867195, 32.111443, 23.010445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047070, 31.957119, 22.972631>,  <35.346859, 31.699913, 22.909611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047070, 31.957119, 22.972631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390989, 0.237864, 0.889128,
		0.534245, 0.727979, -0.429684,
		-0.749473, 0.643014, 0.157554,
		34.822227, 32.150024, 23.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741295, 32.343010, 23.153891>,  <35.346859, 31.699913, 22.909611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741295, 32.343010, 23.153891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355160, 32.340260, 23.258257>,  <35.123478, 32.338608, 23.320877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355160, 32.340260, 23.258257>,  <35.741295, 32.343010, 23.153891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355160, 32.340260, 23.258257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252090, 0.234506, 0.938860,
		-0.067646, 0.972090, -0.224643,
		-0.965337, -0.006880, 0.260918,
		35.065559, 32.338196, 23.336533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636688, 32.953896, 23.563261>,  <35.741295, 32.343010, 23.153891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636688, 32.953896, 23.563261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338467, 32.697250, 23.635353>,  <35.159534, 32.543262, 23.678608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338467, 32.697250, 23.635353>,  <35.636688, 32.953896, 23.563261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338467, 32.697250, 23.635353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078075, 0.184484, 0.979729,
		-0.661859, 0.744510, -0.087449,
		-0.745552, -0.641615, 0.180230,
		35.114799, 32.504765, 23.689423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308720, 33.217747, 24.146376>,  <35.636688, 32.953896, 23.563261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308720, 33.217747, 24.146376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.170158, 32.842583, 24.139034>,  <35.087021, 32.617485, 24.134630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.170158, 32.842583, 24.139034>,  <35.308720, 33.217747, 24.146376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170158, 32.842583, 24.139034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127602, 0.027728, 0.991438,
		-0.929368, 0.345775, -0.129284,
		-0.346400, -0.937908, -0.018351,
		35.066238, 32.561211, 24.133530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728676, 33.306656, 24.637564>,  <35.308720, 33.217747, 24.146376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728676, 33.306656, 24.637564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865795, 32.937344, 24.568241>,  <34.948067, 32.715755, 24.526648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.865795, 32.937344, 24.568241>,  <34.728676, 33.306656, 24.637564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865795, 32.937344, 24.568241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129736, -0.136189, 0.982151,
		-0.930406, -0.359168, 0.073097,
		0.342802, -0.923283, -0.173308,
		34.968636, 32.660358, 24.516249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451256, 32.987610, 25.109356>,  <34.728676, 33.306656, 24.637564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451256, 32.987610, 25.109356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758896, 32.763702, 24.985973>,  <34.943481, 32.629356, 24.911943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758896, 32.763702, 24.985973>,  <34.451256, 32.987610, 25.109356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758896, 32.763702, 24.985973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308030, -0.098227, 0.946292,
		-0.560002, -0.822807, 0.096878,
		0.769100, -0.559767, -0.308456,
		34.989628, 32.595772, 24.893436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441990, 32.355858, 25.450253>,  <34.451256, 32.987610, 25.109356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441990, 32.355858, 25.450253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826141, 32.375278, 25.340481>,  <35.056633, 32.386929, 25.274618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826141, 32.375278, 25.340481>,  <34.441990, 32.355858, 25.450253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826141, 32.375278, 25.340481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278498, -0.203702, 0.938586,
		-0.010336, -0.977829, -0.209152,
		0.960381, 0.048547, -0.274429,
		35.114254, 32.389843, 25.258152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726810, 31.844482, 25.804733>,  <34.441990, 32.355858, 25.450253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726810, 31.844482, 25.804733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069519, 32.024712, 25.704397>,  <35.275146, 32.132851, 25.644196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069519, 32.024712, 25.704397>,  <34.726810, 31.844482, 25.804733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069519, 32.024712, 25.704397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385625, -0.236823, 0.891745,
		0.342392, -0.860754, -0.376656,
		0.856774, 0.450575, -0.250842,
		35.326550, 32.159885, 25.629145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339455, 31.457634, 26.143831>,  <34.726810, 31.844482, 25.804733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339455, 31.457634, 26.143831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486107, 31.821636, 26.066401>,  <35.574097, 32.040039, 26.019941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486107, 31.821636, 26.066401>,  <35.339455, 31.457634, 26.143831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486107, 31.821636, 26.066401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404024, 0.031694, 0.914199,
		0.838062, -0.413383, -0.356044,
		0.366629, 0.910006, -0.193578,
		35.596096, 32.094639, 26.008327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050735, 31.406429, 26.392941>,  <35.339455, 31.457634, 26.143831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050735, 31.406429, 26.392941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965668, 31.797255, 26.388483>,  <35.914627, 32.031750, 26.385809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965668, 31.797255, 26.388483>,  <36.050735, 31.406429, 26.392941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965668, 31.797255, 26.388483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386164, 0.094520, 0.917575,
		0.897580, 0.190834, -0.397408,
		-0.212668, 0.977061, -0.011146,
		35.901867, 32.090374, 26.385139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646832, 31.734293, 26.587732>,  <36.050735, 31.406429, 26.392941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646832, 31.734293, 26.587732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362885, 32.007309, 26.657280>,  <36.192516, 32.171120, 26.699009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362885, 32.007309, 26.657280>,  <36.646832, 31.734293, 26.587732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362885, 32.007309, 26.657280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388819, 0.173914, 0.904750,
		0.587288, 0.709856, -0.388840,
		-0.709868, 0.682538, 0.173868,
		36.149925, 32.212070, 26.709440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.848576, 34.930031, 29.342386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494511, 34.842735, 29.506758>,  <39.282070, 34.790359, 29.605381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494511, 34.842735, 29.506758>,  <39.848576, 34.930031, 29.342386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494511, 34.842735, 29.506758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396693, 0.107565, 0.911627,
		-0.243154, 0.969949, -0.008639,
		-0.885162, -0.218239, 0.410927,
		39.228962, 34.777264, 29.630035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666039, 35.466732, 29.772182>,  <39.848576, 34.930031, 29.342386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666039, 35.466732, 29.772182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469311, 35.141418, 29.896563>,  <39.351276, 34.946232, 29.971189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469311, 35.141418, 29.896563>,  <39.666039, 35.466732, 29.772182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469311, 35.141418, 29.896563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281029, 0.189741, 0.940756,
		-0.824100, 0.550064, 0.135238,
		-0.491816, -0.813282, 0.310949,
		39.321766, 34.897434, 29.989847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512577, 35.665806, 30.402590>,  <39.666039, 35.466732, 29.772182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512577, 35.665806, 30.402590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.427525, 35.275043, 30.411060>,  <39.376495, 35.040588, 30.416143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.427525, 35.275043, 30.411060>,  <39.512577, 35.665806, 30.402590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427525, 35.275043, 30.411060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165028, -0.014542, 0.986181,
		-0.963096, 0.213185, 0.164309,
		-0.212628, -0.976904, 0.021176,
		39.363735, 34.981972, 30.417414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058708, 35.543148, 30.975145>,  <39.512577, 35.665806, 30.402590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058708, 35.543148, 30.975145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237419, 35.196747, 30.885321>,  <39.344646, 34.988907, 30.831427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237419, 35.196747, 30.885321>,  <39.058708, 35.543148, 30.975145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237419, 35.196747, 30.885321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264680, -0.111823, 0.957831,
		-0.854594, -0.487378, 0.179252,
		0.446782, -0.866001, -0.224562,
		39.371452, 34.936947, 30.817951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738564, 34.922722, 31.422113>,  <39.058708, 35.543148, 30.975145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738564, 34.922722, 31.422113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104103, 34.807743, 31.307398>,  <39.323429, 34.738758, 31.238569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104103, 34.807743, 31.307398>,  <38.738564, 34.922722, 31.422113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104103, 34.807743, 31.307398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323703, 0.089346, 0.941931,
		-0.245129, -0.953621, 0.174696,
		0.913853, -0.287445, -0.286789,
		39.378258, 34.721508, 31.221361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994026, 34.757732, 32.042126>,  <38.738564, 34.922722, 31.422113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994026, 34.757732, 32.042126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296135, 34.684002, 31.790545>,  <39.477402, 34.639763, 31.639595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296135, 34.684002, 31.790545>,  <38.994026, 34.757732, 32.042126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296135, 34.684002, 31.790545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564873, -0.303599, 0.767298,
		-0.332383, -0.934800, -0.125180,
		0.755274, -0.184326, -0.628955,
		39.522717, 34.628704, 31.601858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328857, 34.040482, 32.116135>,  <38.994026, 34.757732, 32.042126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328857, 34.040482, 32.116135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.599373, 34.299683, 31.976009>,  <39.761684, 34.455204, 31.891933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.599373, 34.299683, 31.976009>,  <39.328857, 34.040482, 32.116135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599373, 34.299683, 31.976009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629843, -0.262057, 0.731180,
		0.382006, -0.715133, -0.585369,
		0.676290, 0.648006, -0.350314,
		39.802261, 34.494083, 31.870914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976509, 33.794258, 32.269291>,  <39.328857, 34.040482, 32.116135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976509, 33.794258, 32.269291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.082806, 34.166111, 32.167179>,  <40.146584, 34.389221, 32.105911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.082806, 34.166111, 32.167179>,  <39.976509, 33.794258, 32.269291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082806, 34.166111, 32.167179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789331, -0.057791, 0.611242,
		0.553476, -0.363933, -0.749144,
		0.265745, 0.929630, -0.255278,
		40.162529, 34.445000, 32.090595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654396, 33.786949, 32.257996>,  <39.976509, 33.794258, 32.269291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654396, 33.786949, 32.257996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.569664, 34.173023, 32.319366>,  <40.518826, 34.404667, 32.356190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.569664, 34.173023, 32.319366>,  <40.654396, 33.786949, 32.257996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569664, 34.173023, 32.319366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682508, 0.033731, 0.730100,
		0.699509, 0.259369, -0.665894,
		-0.211827, 0.965189, 0.153426,
		40.506115, 34.462582, 32.365395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275749, 34.032413, 32.436798>,  <40.654396, 33.786949, 32.257996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275749, 34.032413, 32.436798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044735, 34.327095, 32.577492>,  <40.906124, 34.503906, 32.661907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044735, 34.327095, 32.577492>,  <41.275749, 34.032413, 32.436798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044735, 34.327095, 32.577492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572429, 0.058266, 0.817882,
		0.582044, 0.673698, -0.455363,
		-0.577538, 0.736706, 0.351731,
		40.871475, 34.548107, 32.683010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713970, 34.571083, 32.587261>,  <41.275749, 34.032413, 32.436798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713970, 34.571083, 32.587261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371815, 34.602482, 32.792065>,  <41.166523, 34.621323, 32.914948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371815, 34.602482, 32.792065>,  <41.713970, 34.571083, 32.587261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371815, 34.602482, 32.792065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517256, 0.182118, 0.836229,
		-0.027604, 0.980138, -0.196384,
		-0.855385, 0.078498, 0.512010,
		41.115200, 34.626030, 32.945667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687130, 35.179352, 33.060722>,  <41.713970, 34.571083, 32.587261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687130, 35.179352, 33.060722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448486, 34.886108, 33.191322>,  <41.305298, 34.710163, 33.269680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.448486, 34.886108, 33.191322>,  <41.687130, 35.179352, 33.060722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448486, 34.886108, 33.191322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559822, -0.088679, 0.823854,
		-0.575024, 0.674302, 0.463319,
		-0.596613, -0.733112, 0.326496,
		41.269501, 34.666176, 33.289272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371147, 35.513298, 33.612431>,  <41.687130, 35.179352, 33.060722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371147, 35.513298, 33.612431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.424435, 35.118198, 33.579933>,  <41.456409, 34.881138, 33.560432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.424435, 35.118198, 33.579933>,  <41.371147, 35.513298, 33.612431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424435, 35.118198, 33.579933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518909, -0.000325, 0.854829,
		-0.844384, -0.156042, 0.512510,
		0.133223, -0.987750, -0.081246,
		41.464401, 34.821873, 33.555561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683990, 35.907883, 34.209419>,  <41.371147, 35.513298, 33.612431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683990, 35.907883, 34.209419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516094, 36.003716, 33.859238>,  <41.415356, 36.061214, 33.649128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516094, 36.003716, 33.859238>,  <41.683990, 35.907883, 34.209419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516094, 36.003716, 33.859238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470955, 0.767042, 0.435716,
		0.775898, 0.595187, -0.209130,
		-0.419744, 0.239580, -0.875452,
		41.390171, 36.075588, 33.596603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518955, 36.643791, 33.985298>,  <41.683990, 35.907883, 34.209419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518955, 36.643791, 33.985298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377708, 37.002769, 34.091053>,  <41.292961, 37.218155, 34.154507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377708, 37.002769, 34.091053>,  <41.518955, 36.643791, 33.985298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377708, 37.002769, 34.091053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238635, 0.186844, -0.952965,
		-0.904634, -0.399597, 0.148185,
		-0.353115, 0.897447, 0.264383,
		41.271774, 37.272003, 34.170368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885986, 36.662113, 33.634819>,  <41.518955, 36.643791, 33.985298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885986, 36.662113, 33.634819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999969, 37.035015, 33.723995>,  <41.068359, 37.258755, 33.777500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999969, 37.035015, 33.723995>,  <40.885986, 36.662113, 33.634819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999969, 37.035015, 33.723995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217688, 0.289444, -0.932113,
		-0.933494, 0.217081, 0.285420,
		0.284957, 0.932254, 0.222939,
		41.085457, 37.314690, 33.790878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262829, 37.053963, 33.555309>,  <40.885986, 36.662113, 33.634819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262829, 37.053963, 33.555309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583065, 37.290352, 33.515709>,  <40.775208, 37.432186, 33.491947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583065, 37.290352, 33.515709>,  <40.262829, 37.053963, 33.555309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583065, 37.290352, 33.515709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195077, 0.100832, -0.975591,
		-0.566569, 0.800362, 0.196011,
		0.800590, 0.590977, -0.099004,
		40.823242, 37.467644, 33.486008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069462, 37.732746, 33.246632>,  <40.262829, 37.053963, 33.555309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069462, 37.732746, 33.246632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460468, 37.751472, 33.164394>,  <40.695072, 37.762707, 33.115051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460468, 37.751472, 33.164394>,  <40.069462, 37.732746, 33.246632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460468, 37.751472, 33.164394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209424, 0.102074, -0.972483,
		-0.024538, 0.993675, 0.109583,
		0.977517, 0.046812, -0.205595,
		40.753723, 37.765514, 33.102715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157528, 38.272480, 32.662128>,  <40.069462, 37.732746, 33.246632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157528, 38.272480, 32.662128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.521126, 38.105789, 32.658932>,  <40.739285, 38.005775, 32.657013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.521126, 38.105789, 32.658932>,  <40.157528, 38.272480, 32.662128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521126, 38.105789, 32.658932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073064, 0.178189, -0.981280,
		0.410346, 0.891398, 0.192421,
		0.908998, -0.416724, -0.007990,
		40.793827, 37.980774, 32.656536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588776, 38.694088, 32.376457>,  <40.157528, 38.272480, 32.662128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588776, 38.694088, 32.376457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747120, 38.331215, 32.319450>,  <40.842125, 38.113491, 32.285248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747120, 38.331215, 32.319450>,  <40.588776, 38.694088, 32.376457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747120, 38.331215, 32.319450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001579, 0.154524, -0.987988,
		0.918309, 0.391331, 0.059738,
		0.395861, -0.907184, -0.142519,
		40.865879, 38.059059, 32.276695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162151, 38.778015, 31.808647>,  <40.588776, 38.694088, 32.376457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162151, 38.778015, 31.808647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.069656, 38.389675, 31.833853>,  <41.014160, 38.156670, 31.848976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.069656, 38.389675, 31.833853>,  <41.162151, 38.778015, 31.808647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069656, 38.389675, 31.833853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063827, -0.049493, -0.996733,
		0.970800, -0.234508, -0.050522,
		-0.231241, -0.970853, 0.063016,
		41.000282, 38.098419, 31.852758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491570, 38.524887, 31.201139>,  <41.162151, 38.778015, 31.808647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491570, 38.524887, 31.201139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230888, 38.242916, 31.313110>,  <41.074478, 38.073734, 31.380293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230888, 38.242916, 31.313110>,  <41.491570, 38.524887, 31.201139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230888, 38.242916, 31.313110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187955, -0.207458, -0.960018,
		0.734814, -0.678264, 0.002708,
		-0.651707, -0.704925, 0.279926,
		41.035378, 38.031437, 31.397089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617901, 37.909718, 30.750013>,  <41.491570, 38.524887, 31.201139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617901, 37.909718, 30.750013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250298, 37.868843, 30.902317>,  <41.029736, 37.844318, 30.993700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250298, 37.868843, 30.902317>,  <41.617901, 37.909718, 30.750013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250298, 37.868843, 30.902317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357392, -0.191736, -0.914061,
		0.166408, -0.976113, 0.139688,
		-0.919010, -0.102183, 0.380762,
		40.974594, 37.838188, 31.016546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232647, 37.465324, 30.263882>,  <41.617901, 37.909718, 30.750013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232647, 37.465324, 30.263882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.918095, 37.598713, 30.471880>,  <40.729362, 37.678745, 30.596678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.918095, 37.598713, 30.471880>,  <41.232647, 37.465324, 30.263882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918095, 37.598713, 30.471880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573798, -0.082527, -0.814828,
		-0.228811, -0.939140, 0.256245,
		-0.786385, 0.333475, 0.519994,
		40.682178, 37.698753, 30.627878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681084, 36.964722, 30.274330>,  <41.232647, 37.465324, 30.263882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681084, 36.964722, 30.274330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502399, 37.317307, 30.335625>,  <40.395187, 37.528858, 30.372400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502399, 37.317307, 30.335625>,  <40.681084, 36.964722, 30.274330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502399, 37.317307, 30.335625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542280, -0.130531, -0.829996,
		-0.711605, -0.453864, 0.536307,
		-0.446710, 0.881459, 0.153235,
		40.368385, 37.581745, 30.381596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998169, 36.799553, 30.176653>,  <40.681084, 36.964722, 30.274330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998169, 36.799553, 30.176653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.014839, 37.197166, 30.136343>,  <40.024841, 37.435734, 30.112158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.014839, 37.197166, 30.136343>,  <39.998169, 36.799553, 30.176653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014839, 37.197166, 30.136343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420569, -0.074037, -0.904235,
		-0.906303, 0.080071, 0.414975,
		0.041679, 0.994036, -0.100775,
		40.027344, 37.495377, 30.106110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225040, 37.097298, 30.118956>,  <39.998169, 36.799553, 30.176653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225040, 37.097298, 30.118956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463737, 37.383751, 29.974154>,  <39.606956, 37.555622, 29.887272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463737, 37.383751, 29.974154>,  <39.225040, 37.097298, 30.118956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463737, 37.383751, 29.974154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715511, 0.270669, -0.644036,
		-0.363231, 0.643346, 0.673921,
		0.596747, 0.716132, -0.362006,
		39.642761, 37.598591, 29.865551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855900, 37.754654, 30.213495>,  <39.225040, 37.097298, 30.118956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855900, 37.754654, 30.213495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.119019, 37.730324, 29.913200>,  <39.276890, 37.715725, 29.733025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.119019, 37.730324, 29.913200>,  <38.855900, 37.754654, 30.213495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119019, 37.730324, 29.913200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712517, 0.272879, -0.646418,
		0.244176, 0.960124, 0.136163,
		0.657797, -0.060821, -0.750735,
		39.316357, 37.712078, 29.687981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321171, 38.276897, 30.201708>,  <38.855900, 37.754654, 30.213495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321171, 38.276897, 30.201708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.942192, 38.300636, 30.327452>,  <37.714806, 38.314880, 30.402899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.942192, 38.300636, 30.327452>,  <38.321171, 38.276897, 30.201708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942192, 38.300636, 30.327452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318642, 0.087514, 0.943827,
		0.028499, 0.994394, -0.101824,
		-0.947447, 0.059344, 0.314362,
		37.657959, 38.318439, 30.421761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451344, 38.651505, 30.799608>,  <38.321171, 38.276897, 30.201708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451344, 38.651505, 30.799608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.078251, 38.510342, 30.829184>,  <37.854397, 38.425644, 30.846930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.078251, 38.510342, 30.829184>,  <38.451344, 38.651505, 30.799608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078251, 38.510342, 30.829184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109491, -0.081835, 0.990613,
		-0.343546, 0.932072, 0.114970,
		-0.932732, -0.352909, 0.073940,
		37.798431, 38.404469, 30.851366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077168, 39.047943, 31.312366>,  <38.451344, 38.651505, 30.799608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077168, 39.047943, 31.312366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898983, 38.690678, 31.287653>,  <37.792072, 38.476318, 31.272825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898983, 38.690678, 31.287653>,  <38.077168, 39.047943, 31.312366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898983, 38.690678, 31.287653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195670, -0.164466, 0.966780,
		-0.873656, 0.418578, 0.248030,
		-0.445465, -0.893165, -0.061783,
		37.765343, 38.422729, 31.269117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534492, 39.058830, 31.758608>,  <38.077168, 39.047943, 31.312366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534492, 39.058830, 31.758608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575912, 38.664371, 31.706778>,  <37.600765, 38.427696, 31.675678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575912, 38.664371, 31.706778>,  <37.534492, 39.058830, 31.758608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575912, 38.664371, 31.706778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109872, -0.140821, 0.983919,
		-0.988537, -0.087645, -0.122932,
		0.103547, -0.986148, -0.129577,
		37.606976, 38.368526, 31.667904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981903, 38.844929, 32.020344>,  <37.534492, 39.058830, 31.758608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981903, 38.844929, 32.020344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.246498, 38.545425, 32.037258>,  <37.405254, 38.365723, 32.047405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.246498, 38.545425, 32.037258>,  <36.981903, 38.844929, 32.020344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246498, 38.545425, 32.037258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290328, -0.203689, 0.934997,
		-0.691479, -0.630765, -0.352125,
		0.661488, -0.748763, 0.042282,
		37.444946, 38.320797, 32.049942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633774, 38.368454, 32.438133>,  <36.981903, 38.844929, 32.020344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633774, 38.368454, 32.438133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.022182, 38.274639, 32.456470>,  <37.255230, 38.218349, 32.467472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.022182, 38.274639, 32.456470>,  <36.633774, 38.368454, 32.438133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022182, 38.274639, 32.456470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133341, -0.372527, 0.918392,
		-0.198320, -0.897895, -0.393006,
		0.971025, -0.234539, 0.045847,
		37.313488, 38.204277, 32.470222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716610, 37.727776, 32.862614>,  <36.633774, 38.368454, 32.438133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716610, 37.727776, 32.862614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.093510, 37.861027, 32.848808>,  <37.319649, 37.940979, 32.840523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.093510, 37.861027, 32.848808>,  <36.716610, 37.727776, 32.862614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093510, 37.861027, 32.848808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169448, -0.385299, 0.907101,
		0.288883, -0.860564, -0.419496,
		0.942249, 0.333129, -0.034515,
		37.376186, 37.960964, 32.838455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010574, 37.305882, 33.276798>,  <36.716610, 37.727776, 32.862614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010574, 37.305882, 33.276798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.284969, 37.596783, 33.267712>,  <37.449608, 37.771324, 33.262260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.284969, 37.596783, 33.267712>,  <37.010574, 37.305882, 33.276798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284969, 37.596783, 33.267712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206512, -0.164665, 0.964489,
		0.697689, -0.666322, -0.263146,
		0.685991, 0.727256, -0.022719,
		37.490768, 37.814960, 33.260895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684387, 37.116196, 33.486607>,  <37.010574, 37.305882, 33.276798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684387, 37.116196, 33.486607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.622448, 37.502972, 33.567642>,  <37.585285, 37.735039, 33.616264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.622448, 37.502972, 33.567642>,  <37.684387, 37.116196, 33.486607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622448, 37.502972, 33.567642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130579, -0.183232, 0.974359,
		0.979270, 0.177334, -0.097889,
		-0.154850, 0.966943, 0.202589,
		37.575993, 37.793056, 33.628418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197182, 37.237068, 34.056686>,  <37.684387, 37.116196, 33.486607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197182, 37.237068, 34.056686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949715, 37.551327, 34.057205>,  <37.801235, 37.739883, 34.057514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949715, 37.551327, 34.057205>,  <38.197182, 37.237068, 34.056686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949715, 37.551327, 34.057205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110474, 0.085363, 0.990206,
		0.777846, 0.612753, -0.139606,
		-0.618669, 0.785651, 0.001294,
		37.764114, 37.787022, 34.057594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453129, 37.682358, 34.587944>,  <38.197182, 37.237068, 34.056686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453129, 37.682358, 34.587944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.090450, 37.845963, 34.546722>,  <37.872845, 37.944126, 34.521988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.090450, 37.845963, 34.546722>,  <38.453129, 37.682358, 34.587944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090450, 37.845963, 34.546722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024667, 0.192494, 0.980988,
		0.421069, 0.891997, -0.164444,
		-0.906693, 0.409007, -0.103057,
		37.818443, 37.968666, 34.515804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434444, 38.374393, 34.809837>,  <38.453129, 37.682358, 34.587944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434444, 38.374393, 34.809837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067551, 38.222565, 34.858181>,  <37.847416, 38.131466, 34.887188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067551, 38.222565, 34.858181>,  <38.434444, 38.374393, 34.809837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067551, 38.222565, 34.858181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089179, 0.100028, 0.990980,
		-0.388238, 0.919739, -0.057900,
		-0.917234, -0.379572, 0.120856,
		37.792381, 38.108692, 34.894436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.047707, 39.297546, 27.292135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810436, 39.006691, 27.430359>,  <35.668076, 38.832176, 27.513292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810436, 39.006691, 27.430359>,  <36.047707, 39.297546, 27.292135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810436, 39.006691, 27.430359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567634, -0.073364, 0.820006,
		-0.570910, 0.682555, 0.456268,
		-0.593173, -0.727143, 0.345557,
		35.632484, 38.788548, 27.534025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750721, 39.362339, 27.866068>,  <36.047707, 39.297546, 27.292135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750721, 39.362339, 27.866068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739681, 38.962517, 27.861689>,  <35.733059, 38.722622, 27.859062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739681, 38.962517, 27.861689>,  <35.750721, 39.362339, 27.866068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739681, 38.962517, 27.861689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463647, -0.022501, 0.885734,
		-0.885590, 0.019369, 0.464064,
		-0.027598, -0.999559, -0.010946,
		35.731403, 38.662647, 27.858404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576797, 39.268276, 28.553215>,  <35.750721, 39.362339, 27.866068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576797, 39.268276, 28.553215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701252, 38.911037, 28.423250>,  <35.775925, 38.696693, 28.345272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701252, 38.911037, 28.423250>,  <35.576797, 39.268276, 28.553215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701252, 38.911037, 28.423250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360725, -0.205315, 0.909793,
		-0.879243, -0.400278, 0.258281,
		0.311141, -0.893098, -0.324912,
		35.794594, 38.643108, 28.325777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379272, 38.877266, 29.029402>,  <35.576797, 39.268276, 28.553215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379272, 38.877266, 29.029402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691128, 38.718899, 28.835325>,  <35.878242, 38.623878, 28.718880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691128, 38.718899, 28.835325>,  <35.379272, 38.877266, 29.029402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691128, 38.718899, 28.835325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514335, -0.037149, 0.856784,
		-0.357242, -0.917533, 0.174672,
		0.779639, -0.395920, -0.485191,
		35.925018, 38.600124, 28.689768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559757, 38.240799, 29.344156>,  <35.379272, 38.877266, 29.029402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559757, 38.240799, 29.344156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901108, 38.341022, 29.161306>,  <36.105919, 38.401157, 29.051598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901108, 38.341022, 29.161306>,  <35.559757, 38.240799, 29.344156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901108, 38.341022, 29.161306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506909, -0.194322, 0.839811,
		0.121592, -0.948398, -0.292841,
		0.853381, 0.250558, -0.457123,
		36.157124, 38.416191, 29.024170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959446, 37.703537, 29.510559>,  <35.559757, 38.240799, 29.344156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959446, 37.703537, 29.510559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203293, 37.988514, 29.371540>,  <36.349602, 38.159500, 29.288128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203293, 37.988514, 29.371540>,  <35.959446, 37.703537, 29.510559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203293, 37.988514, 29.371540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709132, -0.294209, 0.640759,
		0.354250, -0.637079, -0.684571,
		0.609621, 0.712440, -0.347550,
		36.386181, 38.202248, 29.267275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707169, 37.428188, 29.517683>,  <35.959446, 37.703537, 29.510559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707169, 37.428188, 29.517683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775379, 37.822128, 29.505062>,  <36.816307, 38.058491, 29.497490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775379, 37.822128, 29.505062>,  <36.707169, 37.428188, 29.517683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775379, 37.822128, 29.505062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719990, -0.102676, 0.686346,
		0.672707, -0.139758, -0.726590,
		0.170526, 0.984848, -0.031554,
		36.826538, 38.117584, 29.495596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386913, 37.463306, 29.534304>,  <36.707169, 37.428188, 29.517683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386913, 37.463306, 29.534304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286400, 37.836075, 29.638901>,  <37.226093, 38.059738, 29.701658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286400, 37.836075, 29.638901>,  <37.386913, 37.463306, 29.534304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286400, 37.836075, 29.638901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536077, -0.090944, 0.839256,
		0.805903, 0.351067, -0.476731,
		-0.251279, 0.931924, 0.261491,
		37.211018, 38.115650, 29.717348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964096, 37.765491, 29.804052>,  <37.386913, 37.463306, 29.534304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964096, 37.765491, 29.804052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690754, 38.022694, 29.942371>,  <37.526749, 38.177013, 30.025362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690754, 38.022694, 29.942371>,  <37.964096, 37.765491, 29.804052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690754, 38.022694, 29.942371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532098, 0.114326, 0.838929,
		0.499899, 0.757283, -0.420266,
		-0.683354, 0.643003, 0.345797,
		37.485748, 38.215595, 30.046110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481709, 38.270432, 29.501970>,  <37.964096, 37.765491, 29.804052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481709, 38.270432, 29.501970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815384, 38.105370, 29.355633>,  <39.015591, 38.006332, 29.267830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815384, 38.105370, 29.355633>,  <38.481709, 38.270432, 29.501970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815384, 38.105370, 29.355633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349457, 0.117650, -0.929537,
		0.426617, 0.903259, -0.046062,
		0.834193, -0.412652, -0.365842,
		39.065643, 37.981575, 29.245880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771038, 38.719955, 28.998526>,  <38.481709, 38.270432, 29.501970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771038, 38.719955, 28.998526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887722, 38.347534, 28.910858>,  <38.957733, 38.124081, 28.858257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887722, 38.347534, 28.910858>,  <38.771038, 38.719955, 28.998526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887722, 38.347534, 28.910858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399722, 0.089503, -0.912256,
		0.868979, 0.353724, -0.346055,
		0.291714, -0.931058, -0.219168,
		38.975235, 38.068218, 28.845108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875259, 38.832142, 28.344481>,  <38.771038, 38.719955, 28.998526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875259, 38.832142, 28.344481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887169, 38.432507, 28.356667>,  <38.894314, 38.192726, 28.363977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887169, 38.432507, 28.356667>,  <38.875259, 38.832142, 28.344481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887169, 38.432507, 28.356667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454607, -0.040678, -0.889763,
		0.890194, 0.012645, -0.455405,
		0.029776, -0.999092, 0.030463,
		38.896103, 38.132778, 28.365805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228767, 38.515812, 27.715860>,  <38.875259, 38.832142, 28.344481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228767, 38.515812, 27.715860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024334, 38.199608, 27.850851>,  <38.901672, 38.009884, 27.931845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024334, 38.199608, 27.850851>,  <39.228767, 38.515812, 27.715860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024334, 38.199608, 27.850851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346316, -0.169963, -0.922593,
		0.786677, -0.588394, -0.186901,
		-0.511082, -0.790509, 0.337477,
		38.871010, 37.962456, 27.952093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482281, 37.813107, 27.347780>,  <39.228767, 38.515812, 27.715860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482281, 37.813107, 27.347780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104271, 37.786919, 27.475929>,  <38.877464, 37.771206, 27.552818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104271, 37.786919, 27.475929>,  <39.482281, 37.813107, 27.347780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104271, 37.786919, 27.475929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286783, -0.304762, -0.908226,
		0.157103, -0.950175, 0.269231,
		-0.945026, -0.065474, 0.320373,
		38.820763, 37.767277, 27.572041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268517, 37.345612, 26.898241>,  <39.482281, 37.813107, 27.347780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268517, 37.345612, 26.898241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941032, 37.495235, 27.072502>,  <38.744541, 37.585011, 27.177059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941032, 37.495235, 27.072502>,  <39.268517, 37.345612, 26.898241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941032, 37.495235, 27.072502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531792, -0.207761, -0.820995,
		-0.216648, -0.903807, 0.369048,
		-0.818695, 0.374124, 0.435626,
		38.695419, 37.607452, 27.203197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787544, 36.827721, 26.895842>,  <39.268517, 37.345612, 26.898241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787544, 36.827721, 26.895842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578995, 37.167671, 26.926523>,  <38.453865, 37.371643, 26.944933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578995, 37.167671, 26.926523>,  <38.787544, 36.827721, 26.895842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578995, 37.167671, 26.926523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598483, -0.300108, -0.742801,
		-0.608270, -0.433180, 0.665104,
		-0.521369, 0.849877, 0.076704,
		38.422585, 37.422634, 26.949533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033649, 36.677361, 26.952452>,  <38.787544, 36.827721, 26.895842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033649, 36.677361, 26.952452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023430, 37.061993, 26.843113>,  <38.017300, 37.292770, 26.777510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023430, 37.061993, 26.843113>,  <38.033649, 36.677361, 26.952452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023430, 37.061993, 26.843113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401655, -0.260268, -0.878028,
		-0.915435, 0.087360, 0.392871,
		-0.025548, 0.961576, -0.273347,
		38.015766, 37.350464, 26.761108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397751, 36.716743, 26.551420>,  <38.033649, 36.677361, 26.952452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397751, 36.716743, 26.551420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618454, 37.036049, 26.454809>,  <37.750877, 37.227634, 26.396843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618454, 37.036049, 26.454809>,  <37.397751, 36.716743, 26.551420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618454, 37.036049, 26.454809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346990, -0.043620, -0.936854,
		-0.758393, 0.600724, 0.252922,
		0.551758, 0.798265, -0.241526,
		37.783981, 37.275528, 26.382351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925957, 37.231205, 26.188007>,  <37.397751, 36.716743, 26.551420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925957, 37.231205, 26.188007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309845, 37.284828, 26.089239>,  <37.540176, 37.317001, 26.029978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309845, 37.284828, 26.089239>,  <36.925957, 37.231205, 26.188007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309845, 37.284828, 26.089239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235623, -0.094682, -0.967221,
		-0.153039, 0.986441, -0.059282,
		0.959719, 0.134055, -0.246918,
		37.597759, 37.325043, 26.015163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971130, 37.654053, 25.547703>,  <36.925957, 37.231205, 26.188007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971130, 37.654053, 25.547703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339211, 37.498425, 25.564953>,  <37.560059, 37.405048, 25.575302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339211, 37.498425, 25.564953>,  <36.971130, 37.654053, 25.547703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339211, 37.498425, 25.564953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042164, -0.208034, -0.977212,
		0.389175, 0.897411, -0.207837,
		0.920198, -0.389070, 0.043123,
		37.615269, 37.381702, 25.577890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334496, 37.984341, 25.061178>,  <36.971130, 37.654053, 25.547703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334496, 37.984341, 25.061178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555706, 37.655766, 25.116877>,  <37.688435, 37.458618, 25.150295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555706, 37.655766, 25.116877>,  <37.334496, 37.984341, 25.061178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555706, 37.655766, 25.116877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168229, -0.273785, -0.946964,
		0.816000, 0.500275, -0.289602,
		0.553031, -0.821442, 0.139248,
		37.721615, 37.409332, 25.158651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680367, 37.864922, 24.350838>,  <37.334496, 37.984341, 25.061178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680367, 37.864922, 24.350838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702713, 37.510731, 24.535358>,  <37.716122, 37.298214, 24.646070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702713, 37.510731, 24.535358>,  <37.680367, 37.864922, 24.350838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702713, 37.510731, 24.535358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103918, -0.464673, -0.879363,
		0.993016, 0.001188, -0.117977,
		0.055866, -0.885482, 0.461304,
		37.719471, 37.245087, 24.673750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312347, 37.511200, 24.172756>,  <37.680367, 37.864922, 24.350838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312347, 37.511200, 24.172756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077744, 37.217525, 24.309565>,  <37.936981, 37.041321, 24.391649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077744, 37.217525, 24.309565>,  <38.312347, 37.511200, 24.172756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077744, 37.217525, 24.309565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116668, -0.494458, -0.861336,
		0.801494, -0.465280, 0.375661,
		-0.586511, -0.734184, 0.342022,
		37.901791, 36.997269, 24.412170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.431190, 31.658535, 26.124588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.586109, 32.027126, 26.136465>,  <32.679058, 32.248280, 26.143591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.586109, 32.027126, 26.136465>,  <32.431190, 31.658535, 26.124588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586109, 32.027126, 26.136465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198699, -0.114876, 0.973305,
		0.900291, -0.371053, -0.227587,
		0.387292, 0.921479, 0.029694,
		32.702297, 32.303570, 26.145372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041538, 31.673460, 26.526751>,  <32.431190, 31.658535, 26.124588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041538, 31.673460, 26.526751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.945381, 32.061726, 26.524687>,  <32.887688, 32.294685, 26.523449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.945381, 32.061726, 26.524687>,  <33.041538, 31.673460, 26.526751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945381, 32.061726, 26.524687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264972, 0.070737, 0.961658,
		0.933810, 0.229809, -0.274203,
		-0.240394, 0.970662, -0.005161,
		32.873264, 32.352924, 26.523138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675949, 31.977177, 26.807312>,  <33.041538, 31.673460, 26.526751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675949, 31.977177, 26.807312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.370293, 32.232773, 26.842600>,  <33.186897, 32.386131, 26.863771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.370293, 32.232773, 26.842600>,  <33.675949, 31.977177, 26.807312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370293, 32.232773, 26.842600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337505, 0.279512, 0.898868,
		0.549709, 0.716635, -0.429249,
		-0.764141, 0.638989, 0.088218,
		33.141052, 32.424469, 26.869064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955395, 32.616478, 27.129107>,  <33.675949, 31.977177, 26.807312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955395, 32.616478, 27.129107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.560646, 32.647568, 27.185747>,  <33.323799, 32.666222, 27.219732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.560646, 32.647568, 27.185747>,  <33.955395, 32.616478, 27.129107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560646, 32.647568, 27.185747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160879, 0.394191, 0.904838,
		0.014512, 0.915736, -0.401519,
		-0.986867, 0.077727, 0.141602,
		33.264587, 32.670887, 27.228228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835514, 33.211418, 27.511967>,  <33.955395, 32.616478, 27.129107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835514, 33.211418, 27.511967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.502293, 33.004562, 27.590538>,  <33.302361, 32.880447, 27.637682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.502293, 33.004562, 27.590538>,  <33.835514, 33.211418, 27.511967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502293, 33.004562, 27.590538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003209, 0.359598, 0.933102,
		-0.553178, 0.776696, -0.301226,
		-0.833057, -0.517138, 0.196429,
		33.252377, 32.849422, 27.649467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517170, 33.570290, 28.030836>,  <33.835514, 33.211418, 27.511967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517170, 33.570290, 28.030836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.297150, 33.239891, 28.080105>,  <33.165138, 33.041653, 28.109667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.297150, 33.239891, 28.080105>,  <33.517170, 33.570290, 28.030836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297150, 33.239891, 28.080105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049391, 0.179406, 0.982535,
		-0.833668, 0.534363, -0.139479,
		-0.550053, -0.825996, 0.123172,
		33.132133, 32.992092, 28.117056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902222, 33.792873, 28.382040>,  <33.517170, 33.570290, 28.030836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902222, 33.792873, 28.382040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.966064, 33.400600, 28.427261>,  <33.004372, 33.165237, 28.454393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.966064, 33.400600, 28.427261>,  <32.902222, 33.792873, 28.382040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966064, 33.400600, 28.427261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066204, 0.103629, 0.992410,
		-0.984958, -0.165882, -0.048385,
		0.159608, -0.980686, 0.113053,
		33.013947, 33.106396, 28.461178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409576, 33.612072, 28.852625>,  <32.902222, 33.792873, 28.382040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409576, 33.612072, 28.852625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.687508, 33.324570, 28.862440>,  <32.854267, 33.152069, 28.868330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.687508, 33.324570, 28.862440>,  <32.409576, 33.612072, 28.852625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687508, 33.324570, 28.862440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224642, 0.249326, 0.942005,
		-0.683191, -0.649019, 0.334701,
		0.694828, -0.718757, 0.024540,
		32.895958, 33.108944, 28.869802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352489, 33.300808, 29.497807>,  <32.409576, 33.612072, 28.852625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352489, 33.300808, 29.497807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.723629, 33.217491, 29.374060>,  <32.946312, 33.167503, 29.299812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.723629, 33.217491, 29.374060>,  <32.352489, 33.300808, 29.497807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723629, 33.217491, 29.374060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328989, 0.066397, 0.941997,
		-0.175667, -0.975811, 0.130131,
		0.927851, -0.208289, -0.309367,
		33.001984, 33.155003, 29.281250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661377, 32.881847, 30.045826>,  <32.352489, 33.300808, 29.497807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661377, 32.881847, 30.045826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.982967, 33.021290, 29.853119>,  <33.175922, 33.104954, 29.737494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.982967, 33.021290, 29.853119>,  <32.661377, 32.881847, 30.045826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982967, 33.021290, 29.853119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428012, 0.223208, 0.875776,
		0.412835, -0.910304, 0.030247,
		0.803974, 0.348605, -0.481769,
		33.224159, 33.125870, 29.708588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210960, 32.660133, 30.412378>,  <32.661377, 32.881847, 30.045826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210960, 32.660133, 30.412378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.345158, 32.959564, 30.183619>,  <33.425678, 33.139225, 30.046362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.345158, 32.959564, 30.183619>,  <33.210960, 32.660133, 30.412378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345158, 32.959564, 30.183619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552164, 0.335606, 0.763206,
		0.763255, -0.571834, -0.300746,
		0.335495, 0.748582, -0.571899,
		33.445805, 33.184139, 30.012049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948048, 32.667843, 30.497999>,  <33.210960, 32.660133, 30.412378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948048, 32.667843, 30.497999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850361, 33.030308, 30.359882>,  <33.791748, 33.247787, 30.277012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850361, 33.030308, 30.359882>,  <33.948048, 32.667843, 30.497999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850361, 33.030308, 30.359882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508039, 0.422858, 0.750392,
		0.825986, 0.007839, -0.563637,
		-0.244221, 0.906162, -0.345292,
		33.777096, 33.302155, 30.256294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558418, 33.094040, 30.418156>,  <33.948048, 32.667843, 30.497999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558418, 33.094040, 30.418156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.272163, 33.372028, 30.446096>,  <34.100410, 33.538822, 30.462862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.272163, 33.372028, 30.446096>,  <34.558418, 33.094040, 30.418156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272163, 33.372028, 30.446096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495856, 0.435061, 0.751564,
		0.491924, 0.572485, -0.655951,
		-0.715638, 0.694970, 0.069854,
		34.057472, 33.580521, 30.467052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967773, 33.758972, 30.393410>,  <34.558418, 33.094040, 30.418156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967773, 33.758972, 30.393410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610619, 33.824104, 30.561329>,  <34.396324, 33.863182, 30.662081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610619, 33.824104, 30.561329>,  <34.967773, 33.758972, 30.393410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610619, 33.824104, 30.561329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448833, 0.396365, 0.800902,
		-0.035983, 0.903538, -0.426995,
		-0.892891, 0.162830, 0.419800,
		34.342751, 33.872955, 30.687269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693401, 33.801205, 30.324738>,  <34.967773, 33.758972, 30.393410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693401, 33.801205, 30.324738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.982159, 33.534737, 30.399666>,  <36.155415, 33.374855, 30.444622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.982159, 33.534737, 30.399666>,  <35.693401, 33.801205, 30.324738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982159, 33.534737, 30.399666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177277, -0.439691, -0.880479,
		0.668908, 0.602408, -0.435508,
		0.721897, -0.666166, 0.187320,
		36.198727, 33.334888, 30.455862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996300, 33.923904, 29.696581>,  <35.693401, 33.801205, 30.324738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996300, 33.923904, 29.696581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.104691, 33.586525, 29.882126>,  <36.169724, 33.384098, 29.993452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.104691, 33.586525, 29.882126>,  <35.996300, 33.923904, 29.696581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104691, 33.586525, 29.882126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114585, -0.450200, -0.885545,
		0.955742, 0.293113, -0.025347,
		0.270976, -0.843448, 0.463862,
		36.185982, 33.333492, 30.021284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620609, 33.805485, 29.417425>,  <35.996300, 33.923904, 29.696581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620609, 33.805485, 29.417425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494751, 33.461086, 29.577269>,  <36.419235, 33.254448, 29.673174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494751, 33.461086, 29.577269>,  <36.620609, 33.805485, 29.417425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494751, 33.461086, 29.577269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028670, -0.429418, -0.902651,
		0.948775, -0.272561, 0.159800,
		-0.314648, -0.860994, 0.399607,
		36.400356, 33.202789, 29.697151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017216, 33.260220, 29.082428>,  <36.620609, 33.805485, 29.417425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017216, 33.260220, 29.082428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.698528, 33.063789, 29.223330>,  <36.507317, 32.945930, 29.307871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.698528, 33.063789, 29.223330>,  <37.017216, 33.260220, 29.082428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698528, 33.063789, 29.223330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045922, -0.531988, -0.845506,
		0.602603, -0.689806, 0.401293,
		-0.796718, -0.491076, 0.352255,
		36.459515, 32.916466, 29.329006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185455, 32.518738, 28.974672>,  <37.017216, 33.260220, 29.082428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185455, 32.518738, 28.974672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797329, 32.600677, 29.026079>,  <36.564453, 32.649841, 29.056923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797329, 32.600677, 29.026079>,  <37.185455, 32.518738, 28.974672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797329, 32.600677, 29.026079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206634, -0.426261, -0.880684,
		-0.125625, -0.881101, 0.455938,
		-0.970320, 0.204848, 0.128516,
		36.506233, 32.662132, 29.064634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826912, 31.954494, 28.773855>,  <37.185455, 32.518738, 28.974672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826912, 31.954494, 28.773855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.568996, 32.258926, 28.745569>,  <36.414246, 32.441586, 28.728598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.568996, 32.258926, 28.745569>,  <36.826912, 31.954494, 28.773855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568996, 32.258926, 28.745569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306663, -0.342324, -0.888128,
		-0.700143, -0.550973, 0.454123,
		-0.644792, 0.761080, -0.070713,
		36.375557, 32.487251, 28.724356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141499, 31.651867, 28.487494>,  <36.826912, 31.954494, 28.773855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141499, 31.651867, 28.487494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.139511, 32.044716, 28.412218>,  <36.138321, 32.280426, 28.367052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.139511, 32.044716, 28.412218>,  <36.141499, 31.651867, 28.487494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139511, 32.044716, 28.412218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157162, -0.186619, -0.969780,
		-0.987560, 0.024761, 0.155278,
		-0.004965, 0.982120, -0.188189,
		36.138023, 32.339352, 28.355761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849209, 31.624580, 27.901396>,  <36.141499, 31.651867, 28.487494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849209, 31.624580, 27.901396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972973, 32.004951, 27.901464>,  <36.047230, 32.233173, 27.901506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972973, 32.004951, 27.901464>,  <35.849209, 31.624580, 27.901396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972973, 32.004951, 27.901464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079811, 0.026150, -0.996467,
		-0.947575, 0.308300, 0.083986,
		0.309407, 0.950930, 0.000174,
		36.065796, 32.290230, 27.901516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333992, 32.034569, 27.602518>,  <35.849209, 31.624580, 27.901396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333992, 32.034569, 27.602518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.664825, 32.254955, 27.558016>,  <35.863323, 32.387188, 27.531315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.664825, 32.254955, 27.558016>,  <35.333992, 32.034569, 27.602518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664825, 32.254955, 27.558016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162436, 0.044800, -0.985701,
		-0.538103, 0.833325, 0.126549,
		0.827079, 0.550965, -0.111255,
		35.912949, 32.420246, 27.524639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142048, 32.641541, 27.306477>,  <35.333992, 32.034569, 27.602518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142048, 32.641541, 27.306477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.527813, 32.578999, 27.221186>,  <35.759270, 32.541473, 27.170012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.527813, 32.578999, 27.221186>,  <35.142048, 32.641541, 27.306477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527813, 32.578999, 27.221186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211558, 0.027430, -0.976980,
		0.158604, 0.987320, -0.006624,
		0.964411, -0.156354, -0.213226,
		35.817135, 32.532093, 27.157217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365353, 33.210499, 26.843393>,  <35.142048, 32.641541, 27.306477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365353, 33.210499, 26.843393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606697, 32.895061, 26.795935>,  <35.751503, 32.705799, 26.767460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606697, 32.895061, 26.795935>,  <35.365353, 33.210499, 26.843393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606697, 32.895061, 26.795935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228267, -0.028231, -0.973189,
		0.764100, 0.614267, -0.197044,
		0.603361, -0.788593, -0.118645,
		35.787704, 32.658485, 26.760342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748497, 33.341591, 26.315647>,  <35.365353, 33.210499, 26.843393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748497, 33.341591, 26.315647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.798637, 32.944942, 26.328075>,  <35.828724, 32.706951, 26.335533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.798637, 32.944942, 26.328075>,  <35.748497, 33.341591, 26.315647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798637, 32.944942, 26.328075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217481, -0.058021, -0.974338,
		0.967982, 0.115379, -0.222933,
		0.125354, -0.991625, 0.031071,
		35.836243, 32.647453, 26.337397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964142, 33.257652, 25.701193>,  <35.748497, 33.341591, 26.315647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964142, 33.257652, 25.701193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.904575, 32.873989, 25.797400>,  <35.868835, 32.643791, 25.855124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.904575, 32.873989, 25.797400>,  <35.964142, 33.257652, 25.701193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904575, 32.873989, 25.797400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067751, -0.232761, -0.970171,
		0.986527, -0.160767, -0.030323,
		-0.148913, -0.959154, 0.240517,
		35.859901, 32.586243, 25.869555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367481, 32.905483, 25.248306>,  <35.964142, 33.257652, 25.701193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367481, 32.905483, 25.248306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074474, 32.655308, 25.355825>,  <35.898670, 32.505203, 25.420338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074474, 32.655308, 25.355825>,  <36.367481, 32.905483, 25.248306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074474, 32.655308, 25.355825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243554, -0.127944, -0.961411,
		0.635691, -0.769716, -0.058606,
		-0.732515, -0.625434, 0.268800,
		35.854721, 32.467678, 25.436466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141338, 32.774971, 25.239456>,  <36.367481, 32.905483, 25.248306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141338, 32.774971, 25.239456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298389, 33.077393, 25.029991>,  <37.392620, 33.258846, 24.904312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298389, 33.077393, 25.029991>,  <37.141338, 32.774971, 25.239456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298389, 33.077393, 25.029991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231187, 0.469970, 0.851869,
		0.890166, -0.455533, 0.009734,
		0.392629, 0.756054, -0.523665,
		37.416180, 33.304211, 24.872892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690895, 32.834064, 25.591791>,  <37.141338, 32.774971, 25.239456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690895, 32.834064, 25.591791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621513, 33.178833, 25.401209>,  <37.579884, 33.385693, 25.286860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621513, 33.178833, 25.401209>,  <37.690895, 32.834064, 25.591791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621513, 33.178833, 25.401209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160035, 0.502026, 0.849917,
		0.971752, 0.071176, -0.225018,
		-0.173458, 0.861919, -0.476454,
		37.569477, 33.437408, 25.258272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296482, 33.208225, 25.690178>,  <37.690895, 32.834064, 25.591791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296482, 33.208225, 25.690178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030502, 33.493473, 25.601355>,  <37.870914, 33.664619, 25.548061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030502, 33.493473, 25.601355>,  <38.296482, 33.208225, 25.690178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030502, 33.493473, 25.601355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358765, 0.565725, 0.742457,
		0.655081, 0.414030, -0.632019,
		-0.664948, 0.713116, -0.222057,
		37.831017, 33.707409, 25.534737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589897, 33.859863, 25.740896>,  <38.296482, 33.208225, 25.690178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589897, 33.859863, 25.740896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200241, 33.947704, 25.762186>,  <37.966450, 34.000408, 25.774960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200241, 33.947704, 25.762186>,  <38.589897, 33.859863, 25.740896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200241, 33.947704, 25.762186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126667, 0.335634, 0.933437,
		0.187125, 0.916036, -0.354769,
		-0.974135, 0.219607, 0.053226,
		37.908001, 34.013588, 25.778154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546192, 34.534382, 25.887556>,  <38.589897, 33.859863, 25.740896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546192, 34.534382, 25.887556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176300, 34.426979, 25.995461>,  <37.954365, 34.362537, 26.060204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176300, 34.426979, 25.995461>,  <38.546192, 34.534382, 25.887556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176300, 34.426979, 25.995461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173040, 0.334680, 0.926308,
		-0.339006, 0.903267, -0.263027,
		-0.924733, -0.268510, 0.269760,
		37.898880, 34.346428, 26.076389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172234, 35.104790, 26.194796>,  <38.546192, 34.534382, 25.887556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172234, 35.104790, 26.194796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023125, 34.755711, 26.320932>,  <37.933659, 34.546265, 26.396614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023125, 34.755711, 26.320932>,  <38.172234, 35.104790, 26.194796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023125, 34.755711, 26.320932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028344, 0.328970, 0.943915,
		-0.927490, 0.360803, -0.097895,
		-0.372772, -0.872697, 0.315342,
		37.911293, 34.493900, 26.415535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510963, 35.237206, 26.487385>,  <38.172234, 35.104790, 26.194796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510963, 35.237206, 26.487385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645832, 34.892685, 26.639423>,  <37.726753, 34.685970, 26.730646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645832, 34.892685, 26.639423>,  <37.510963, 35.237206, 26.487385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645832, 34.892685, 26.639423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252847, 0.306059, 0.917822,
		-0.906855, -0.405566, -0.114585,
		0.337168, -0.861304, 0.380097,
		37.746983, 34.634293, 26.753452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218098, 35.177956, 27.220079>,  <37.510963, 35.237206, 26.487385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218098, 35.177956, 27.220079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490597, 34.885189, 27.214449>,  <37.654095, 34.709530, 27.211071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490597, 34.885189, 27.214449>,  <37.218098, 35.177956, 27.220079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490597, 34.885189, 27.214449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030794, 0.009439, 0.999481,
		-0.731404, -0.681328, 0.028969,
		0.681248, -0.731917, -0.014077,
		37.694973, 34.665615, 27.210226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076584, 34.949360, 27.850233>,  <37.218098, 35.177956, 27.220079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076584, 34.949360, 27.850233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432594, 34.795166, 27.752863>,  <37.646202, 34.702652, 27.694441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432594, 34.795166, 27.752863>,  <37.076584, 34.949360, 27.850233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432594, 34.795166, 27.752863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248353, -0.037812, 0.967931,
		-0.382325, -0.921940, 0.062081,
		0.890027, -0.385482, -0.243423,
		37.699604, 34.679520, 27.679836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277344, 34.449314, 28.357946>,  <37.076584, 34.949360, 27.850233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277344, 34.449314, 28.357946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611050, 34.558125, 28.166115>,  <37.811275, 34.623413, 28.051016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611050, 34.558125, 28.166115>,  <37.277344, 34.449314, 28.357946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611050, 34.558125, 28.166115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521283, -0.105818, 0.846798,
		0.179607, -0.956453, -0.230086,
		0.834269, 0.272031, -0.479577,
		37.861332, 34.639732, 28.022242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862228, 33.952087, 28.458036>,  <37.277344, 34.449314, 28.357946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862228, 33.952087, 28.458036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051128, 34.295864, 28.379711>,  <38.164471, 34.502129, 28.332716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051128, 34.295864, 28.379711>,  <37.862228, 33.952087, 28.458036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051128, 34.295864, 28.379711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570202, -0.128452, 0.811400,
		0.672194, -0.494842, -0.550714,
		0.472255, 0.859437, -0.195815,
		38.192806, 34.553696, 28.320967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569229, 33.791466, 28.604502>,  <37.862228, 33.952087, 28.458036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569229, 33.791466, 28.604502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535328, 34.189739, 28.619638>,  <38.514988, 34.428703, 28.628721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535328, 34.189739, 28.619638>,  <38.569229, 33.791466, 28.604502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535328, 34.189739, 28.619638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523862, 0.012220, 0.851716,
		0.847577, 0.092007, -0.522636,
		-0.084751, 0.995683, 0.037842,
		38.509903, 34.488445, 28.630991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194714, 34.001400, 28.673508>,  <38.569229, 33.791466, 28.604502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194714, 34.001400, 28.673508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955677, 34.290741, 28.811867>,  <38.812256, 34.464348, 28.894882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955677, 34.290741, 28.811867>,  <39.194714, 34.001400, 28.673508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955677, 34.290741, 28.811867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575547, 0.086639, 0.813166,
		0.558239, 0.685020, -0.468099,
		-0.597590, 0.723355, 0.345896,
		38.776402, 34.507748, 28.915636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587608, 34.525196, 28.771345>,  <39.194714, 34.001400, 28.673508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587608, 34.525196, 28.771345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.281414, 34.536983, 29.028458>,  <39.097698, 34.544056, 29.182724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.281414, 34.536983, 29.028458>,  <39.587608, 34.525196, 28.771345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281414, 34.536983, 29.028458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641392, 0.114866, 0.758566,
		-0.051479, 0.992944, -0.106829,
		-0.765484, 0.029469, 0.642779,
		39.051769, 34.545826, 29.221291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.620579, 36.886681, 24.016573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237904, 36.787117, 24.076948>,  <38.008297, 36.727379, 24.113174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237904, 36.787117, 24.076948>,  <38.620579, 36.886681, 24.016573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237904, 36.787117, 24.076948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003152, -0.527337, -0.849651,
		0.291085, -0.812378, 0.505283,
		-0.956692, -0.248913, 0.150939,
		37.950897, 36.712444, 24.122231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603073, 36.193474, 23.799658>,  <38.620579, 36.886681, 24.016573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603073, 36.193474, 23.799658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214569, 36.288334, 23.791485>,  <37.981468, 36.345249, 23.786581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214569, 36.288334, 23.791485>,  <38.603073, 36.193474, 23.799658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214569, 36.288334, 23.791485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107980, -0.515471, -0.850076,
		-0.212129, -0.823437, 0.526263,
		-0.971258, 0.237152, -0.020432,
		37.923191, 36.359478, 23.785355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280117, 35.669685, 23.391777>,  <38.603073, 36.193474, 23.799658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280117, 35.669685, 23.391777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972485, 35.923676, 23.362610>,  <37.787903, 36.076069, 23.345110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972485, 35.923676, 23.362610>,  <38.280117, 35.669685, 23.391777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972485, 35.923676, 23.362610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310950, -0.471398, -0.825284,
		-0.558408, -0.612039, 0.559990,
		-0.769084, 0.634974, -0.072919,
		37.741760, 36.114166, 23.340734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678005, 35.214211, 23.237646>,  <38.280117, 35.669685, 23.391777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678005, 35.214211, 23.237646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.588329, 35.587826, 23.126429>,  <37.534523, 35.811996, 23.059698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.588329, 35.587826, 23.126429>,  <37.678005, 35.214211, 23.237646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588329, 35.587826, 23.126429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305746, -0.338316, -0.889978,
		-0.925342, -0.114513, 0.361426,
		-0.224191, 0.934039, -0.278046,
		37.521072, 35.868038, 23.043015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109383, 35.244961, 23.060587>,  <37.678005, 35.214211, 23.237646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109383, 35.244961, 23.060587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244823, 35.565117, 22.862707>,  <37.326088, 35.757210, 22.743979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244823, 35.565117, 22.862707>,  <37.109383, 35.244961, 23.060587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244823, 35.565117, 22.862707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622677, -0.203558, -0.755538,
		-0.705424, 0.563863, 0.429459,
		0.338600, 0.800389, -0.494700,
		37.346405, 35.805233, 22.714296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512287, 35.659882, 22.753551>,  <37.109383, 35.244961, 23.060587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512287, 35.659882, 22.753551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.830666, 35.807457, 22.561571>,  <37.021694, 35.896004, 22.446383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.830666, 35.807457, 22.561571>,  <36.512287, 35.659882, 22.753551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830666, 35.807457, 22.561571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427330, -0.219143, -0.877135,
		-0.428790, 0.903248, -0.016766,
		0.795945, 0.368942, -0.479952,
		37.069450, 35.918140, 22.417585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321995, 36.015862, 22.209837>,  <36.512287, 35.659882, 22.753551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321995, 36.015862, 22.209837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.694485, 35.965836, 22.072910>,  <36.917980, 35.935822, 21.990753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.694485, 35.965836, 22.072910>,  <36.321995, 36.015862, 22.209837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694485, 35.965836, 22.072910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361784, -0.203844, -0.909703,
		0.043988, 0.970983, -0.235069,
		0.931224, -0.125061, -0.342319,
		36.973850, 35.928318, 21.970215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279308, 36.306671, 21.631477>,  <36.321995, 36.015862, 22.209837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279308, 36.306671, 21.631477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598881, 36.071136, 21.582506>,  <36.790623, 35.929817, 21.553123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.598881, 36.071136, 21.582506>,  <36.279308, 36.306671, 21.631477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598881, 36.071136, 21.582506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389267, -0.351099, -0.851587,
		0.458460, 0.728013, -0.509717,
		0.798927, -0.588835, -0.122427,
		36.838558, 35.894485, 21.545778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602516, 36.413387, 20.936901>,  <36.279308, 36.306671, 21.631477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602516, 36.413387, 20.936901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707993, 36.049370, 21.064835>,  <36.771278, 35.830959, 21.141594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707993, 36.049370, 21.064835>,  <36.602516, 36.413387, 20.936901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707993, 36.049370, 21.064835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047969, -0.318787, -0.946612,
		0.963414, 0.264955, -0.040408,
		0.263691, -0.910040, 0.319833,
		36.787102, 35.776360, 21.160784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135784, 36.284126, 20.547880>,  <36.602516, 36.413387, 20.936901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135784, 36.284126, 20.547880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030037, 35.922581, 20.682421>,  <36.966591, 35.705650, 20.763145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030037, 35.922581, 20.682421>,  <37.135784, 36.284126, 20.547880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030037, 35.922581, 20.682421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115979, -0.376024, -0.919323,
		0.957424, -0.204027, 0.204238,
		-0.264365, -0.903869, 0.336352,
		36.950726, 35.651421, 20.783327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594009, 35.763336, 20.184040>,  <37.135784, 36.284126, 20.547880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594009, 35.763336, 20.184040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253078, 35.603439, 20.318941>,  <37.048519, 35.507500, 20.399881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253078, 35.603439, 20.318941>,  <37.594009, 35.763336, 20.184040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253078, 35.603439, 20.318941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041637, -0.590926, -0.805651,
		0.521342, -0.700724, 0.487020,
		-0.852331, -0.399741, 0.337251,
		36.997379, 35.483517, 20.420116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625050, 35.210312, 19.851753>,  <37.594009, 35.763336, 20.184040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625050, 35.210312, 19.851753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.242920, 35.173832, 19.964212>,  <37.013641, 35.151943, 20.031687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.242920, 35.173832, 19.964212>,  <37.625050, 35.210312, 19.851753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242920, 35.173832, 19.964212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186267, -0.552779, -0.812244,
		0.229489, -0.828322, 0.511094,
		-0.955321, -0.091201, 0.281146,
		36.956322, 35.146473, 20.048555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443058, 34.481472, 19.958019>,  <37.625050, 35.210312, 19.851753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443058, 34.481472, 19.958019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122505, 34.703552, 19.868992>,  <36.930172, 34.836800, 19.815575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122505, 34.703552, 19.868992>,  <37.443058, 34.481472, 19.958019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122505, 34.703552, 19.868992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234651, -0.634074, -0.736810,
		-0.550201, -0.538243, 0.638415,
		-0.801385, 0.555198, -0.222569,
		36.882092, 34.870113, 19.802221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880917, 34.041611, 19.898365>,  <37.443058, 34.481472, 19.958019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880917, 34.041611, 19.898365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720459, 34.361298, 19.719328>,  <36.624184, 34.553108, 19.611906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720459, 34.361298, 19.719328>,  <36.880917, 34.041611, 19.898365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720459, 34.361298, 19.719328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423390, -0.595074, -0.683101,
		-0.812295, -0.084517, 0.577091,
		-0.401145, 0.799214, -0.447592,
		36.600117, 34.601063, 19.585051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289043, 33.713032, 19.487206>,  <36.880917, 34.041611, 19.898365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289043, 33.713032, 19.487206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.319908, 33.314247, 19.482811>,  <36.338428, 33.074978, 19.480173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.319908, 33.314247, 19.482811>,  <36.289043, 33.713032, 19.487206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319908, 33.314247, 19.482811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198034, 0.004525, 0.980185,
		-0.977153, -0.077813, 0.197781,
		0.077166, -0.996958, -0.010988,
		36.343060, 33.015160, 19.479515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926762, 33.316582, 20.046801>,  <36.289043, 33.713032, 19.487206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926762, 33.316582, 20.046801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.225315, 33.066715, 19.954975>,  <36.404449, 32.916798, 19.899879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.225315, 33.066715, 19.954975>,  <35.926762, 33.316582, 20.046801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225315, 33.066715, 19.954975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069785, -0.269582, 0.960445,
		-0.661842, -0.732885, -0.157621,
		0.746388, -0.624663, -0.229566,
		36.449230, 32.879314, 19.886105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679672, 32.774208, 20.379753>,  <35.926762, 33.316582, 20.046801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679672, 32.774208, 20.379753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062752, 32.703644, 20.288807>,  <36.292599, 32.661304, 20.234240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062752, 32.703644, 20.288807>,  <35.679672, 32.774208, 20.379753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062752, 32.703644, 20.288807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144516, -0.388406, 0.910086,
		-0.248861, -0.904444, -0.346481,
		0.957697, -0.176412, -0.227366,
		36.350060, 32.650719, 20.220596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903988, 32.238163, 20.751610>,  <35.679672, 32.774208, 20.379753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903988, 32.238163, 20.751610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264671, 32.392159, 20.672915>,  <36.481083, 32.484554, 20.625696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264671, 32.392159, 20.672915>,  <35.903988, 32.238163, 20.751610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264671, 32.392159, 20.672915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237540, -0.060937, 0.969465,
		0.361243, -0.920908, -0.146398,
		0.901708, 0.384988, -0.196739,
		36.535183, 32.507656, 20.613894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431431, 31.726460, 20.976812>,  <35.903988, 32.238163, 20.751610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431431, 31.726460, 20.976812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.557083, 32.106209, 20.978214>,  <36.632477, 32.334057, 20.979055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.557083, 32.106209, 20.978214>,  <36.431431, 31.726460, 20.976812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557083, 32.106209, 20.978214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172052, -0.060557, 0.983225,
		0.933659, -0.308261, -0.182364,
		0.314133, 0.949373, 0.003502,
		36.651321, 32.391022, 20.979265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032192, 31.695786, 21.485657>,  <36.431431, 31.726460, 20.976812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032192, 31.695786, 21.485657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.969353, 32.086147, 21.425089>,  <36.931648, 32.320366, 21.388748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.969353, 32.086147, 21.425089>,  <37.032192, 31.695786, 21.485657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969353, 32.086147, 21.425089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390951, 0.202252, 0.897915,
		0.906906, 0.081860, -0.413304,
		-0.157095, 0.975906, -0.151420,
		36.922226, 32.378918, 21.379663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686954, 32.065559, 21.598967>,  <37.032192, 31.695786, 21.485657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686954, 32.065559, 21.598967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421310, 32.359127, 21.655985>,  <37.261925, 32.535267, 21.690195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421310, 32.359127, 21.655985>,  <37.686954, 32.065559, 21.598967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421310, 32.359127, 21.655985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407325, 0.195307, 0.892156,
		0.626928, 0.650555, -0.428649,
		-0.664114, 0.733917, 0.142544,
		37.222076, 32.579304, 21.698748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058811, 32.696678, 21.737425>,  <37.686954, 32.065559, 21.598967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058811, 32.696678, 21.737425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686771, 32.746590, 21.875607>,  <37.463547, 32.776535, 21.958515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686771, 32.746590, 21.875607>,  <38.058811, 32.696678, 21.737425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686771, 32.746590, 21.875607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366133, 0.240124, 0.899048,
		0.029229, 0.962689, -0.269025,
		-0.930103, 0.124777, 0.345454,
		37.407742, 32.784023, 21.979242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115452, 33.385155, 22.113474>,  <38.058811, 32.696678, 21.737425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115452, 33.385155, 22.113474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760319, 33.257866, 22.246435>,  <37.547237, 33.181492, 22.326212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760319, 33.257866, 22.246435>,  <38.115452, 33.385155, 22.113474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760319, 33.257866, 22.246435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232447, 0.313284, 0.920772,
		-0.397145, 0.894756, -0.204174,
		-0.887831, -0.318221, 0.332402,
		37.493969, 33.162399, 22.346155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836380, 33.914326, 22.456392>,  <38.115452, 33.385155, 22.113474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836380, 33.914326, 22.456392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659740, 33.590866, 22.611864>,  <37.553757, 33.396790, 22.705147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659740, 33.590866, 22.611864>,  <37.836380, 33.914326, 22.456392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659740, 33.590866, 22.611864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099541, 0.386377, 0.916954,
		-0.891672, 0.443618, -0.090131,
		-0.441602, -0.808650, 0.388680,
		37.527260, 33.348270, 22.728468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202686, 34.105854, 22.949463>,  <37.836380, 33.914326, 22.456392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202686, 34.105854, 22.949463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.261089, 33.717983, 23.027853>,  <37.296131, 33.485260, 23.074888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.261089, 33.717983, 23.027853>,  <37.202686, 34.105854, 22.949463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261089, 33.717983, 23.027853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038214, 0.192424, 0.980568,
		-0.988546, -0.150657, -0.008961,
		0.146006, -0.969678, 0.195977,
		37.304890, 33.427078, 23.086647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691517, 33.870113, 23.561373>,  <37.202686, 34.105854, 22.949463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691517, 33.870113, 23.561373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.993622, 33.608345, 23.546883>,  <37.174885, 33.451283, 23.538189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.993622, 33.608345, 23.546883>,  <36.691517, 33.870113, 23.561373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993622, 33.608345, 23.546883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106181, 0.067625, 0.992045,
		-0.646767, -0.753098, 0.120562,
		0.755260, -0.654423, -0.036227,
		37.220200, 33.412018, 23.536015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584888, 33.574253, 24.169998>,  <36.691517, 33.870113, 23.561373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584888, 33.574253, 24.169998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.949863, 33.470184, 24.043657>,  <37.168850, 33.407742, 23.967854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.949863, 33.470184, 24.043657>,  <36.584888, 33.574253, 24.169998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949863, 33.470184, 24.043657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359490, 0.140891, 0.922451,
		-0.195498, -0.955227, 0.222085,
		0.912441, -0.260175, -0.315851,
		37.223595, 33.392132, 23.948902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713665, 32.908352, 24.624983>,  <36.584888, 33.574253, 24.169998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713665, 32.908352, 24.624983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031921, 33.115116, 24.498648>,  <37.222874, 33.239174, 24.422846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031921, 33.115116, 24.498648>,  <36.713665, 32.908352, 24.624983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031921, 33.115116, 24.498648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190218, 0.281822, 0.940422,
		0.575127, -0.808318, 0.125903,
		0.795642, 0.516913, -0.315840,
		37.270615, 33.270191, 24.403896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308674, 32.327652, 24.821310>,  <36.713665, 32.908352, 24.624983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308674, 32.327652, 24.821310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.935249, 32.341557, 24.963997>,  <35.711193, 32.349899, 25.049608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.935249, 32.341557, 24.963997>,  <36.308674, 32.327652, 24.821310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935249, 32.341557, 24.963997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358382, -0.079142, -0.930214,
		-0.004104, -0.996257, 0.086342,
		-0.933566, 0.034761, 0.356716,
		35.655178, 32.351986, 25.071012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956661, 31.742725, 24.539726>,  <36.308674, 32.327652, 24.821310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956661, 31.742725, 24.539726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652443, 31.981806, 24.641172>,  <35.469910, 32.125256, 24.702040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652443, 31.981806, 24.641172>,  <35.956661, 31.742725, 24.539726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652443, 31.981806, 24.641172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416195, -0.148984, -0.896987,
		-0.498347, -0.787754, 0.362070,
		-0.760547, 0.597702, 0.253613,
		35.424278, 32.161118, 24.717257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305370, 31.353018, 24.435575>,  <35.956661, 31.742725, 24.539726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305370, 31.353018, 24.435575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200504, 31.738504, 24.455650>,  <35.137585, 31.969797, 24.467695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200504, 31.738504, 24.455650>,  <35.305370, 31.353018, 24.435575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200504, 31.738504, 24.455650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521406, -0.097700, -0.847697,
		-0.812036, -0.248407, 0.528102,
		-0.262169, 0.963716, 0.050185,
		35.121853, 32.027618, 24.470705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599270, 31.380257, 24.248823>,  <35.305370, 31.353018, 24.435575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599270, 31.380257, 24.248823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724804, 31.757685, 24.206524>,  <34.800125, 31.984140, 24.181145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724804, 31.757685, 24.206524>,  <34.599270, 31.380257, 24.248823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724804, 31.757685, 24.206524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430103, 0.041988, -0.901803,
		-0.846473, 0.328503, 0.419009,
		0.313838, 0.943569, -0.105748,
		34.818954, 32.040756, 24.174799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995537, 31.811264, 23.953402>,  <34.599270, 31.380257, 24.248823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995537, 31.811264, 23.953402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331493, 32.017498, 23.885578>,  <34.533066, 32.141239, 23.844885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331493, 32.017498, 23.885578>,  <33.995537, 31.811264, 23.953402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331493, 32.017498, 23.885578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304851, 0.189665, -0.933323,
		-0.449050, 0.835582, 0.316476,
		0.839893, 0.515587, -0.169559,
		34.583462, 32.172173, 23.834711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792660, 32.377041, 23.531782>,  <33.995537, 31.811264, 23.953402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792660, 32.377041, 23.531782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188469, 32.376621, 23.474039>,  <34.425957, 32.376369, 23.439394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188469, 32.376621, 23.474039>,  <33.792660, 32.377041, 23.531782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188469, 32.376621, 23.474039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142078, 0.170074, -0.975135,
		0.025578, 0.985431, 0.168143,
		0.989525, -0.001053, -0.144358,
		34.485325, 32.376305, 23.430731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915005, 33.019299, 23.188641>,  <33.792660, 32.377041, 23.531782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915005, 33.019299, 23.188641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205311, 32.752419, 23.121590>,  <34.379494, 32.592289, 23.081360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205311, 32.752419, 23.121590>,  <33.915005, 33.019299, 23.188641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205311, 32.752419, 23.121590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174395, 0.057265, -0.983009,
		0.665467, 0.742671, -0.074796,
		0.725769, -0.667204, -0.167626,
		34.423042, 32.552258, 23.071302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687283, 33.745098, 23.416059>,  <33.915005, 33.019299, 23.188641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687283, 33.745098, 23.416059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296371, 33.667393, 23.449984>,  <33.061825, 33.620770, 23.470337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296371, 33.667393, 23.449984>,  <33.687283, 33.745098, 23.416059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296371, 33.667393, 23.449984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139734, -0.289568, 0.946903,
		-0.159395, 0.937236, 0.310133,
		-0.977276, -0.194268, 0.084809,
		33.003189, 33.609112, 23.475426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511757, 34.026482, 24.094946>,  <33.687283, 33.745098, 23.416059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511757, 34.026482, 24.094946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212181, 33.778652, 24.000950>,  <33.032436, 33.629955, 23.944551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212181, 33.778652, 24.000950>,  <33.511757, 34.026482, 24.094946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212181, 33.778652, 24.000950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053769, -0.296639, 0.953475,
		-0.660455, 0.726729, 0.188850,
		-0.748938, -0.619573, -0.234992,
		32.987499, 33.592781, 23.930452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062126, 34.137371, 24.610023>,  <33.511757, 34.026482, 24.094946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062126, 34.137371, 24.610023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936493, 33.784935, 24.468584>,  <32.861115, 33.573475, 24.383720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936493, 33.784935, 24.468584>,  <33.062126, 34.137371, 24.610023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936493, 33.784935, 24.468584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099800, -0.339743, 0.935208,
		-0.944136, 0.329022, 0.018774,
		-0.314082, -0.881090, -0.353600,
		32.842270, 33.520607, 24.362505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298340, 33.945721, 24.899988>,  <33.062126, 34.137371, 24.610023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298340, 33.945721, 24.899988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.477020, 33.610088, 24.775799>,  <32.584229, 33.408707, 24.701284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.477020, 33.610088, 24.775799>,  <32.298340, 33.945721, 24.899988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477020, 33.610088, 24.775799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141313, -0.408836, 0.901601,
		-0.883453, -0.358872, -0.301202,
		0.446701, -0.839085, -0.310474,
		32.611031, 33.358364, 24.682657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805885, 33.403374, 25.054369>,  <32.298340, 33.945721, 24.899988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805885, 33.403374, 25.054369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170029, 33.239471, 25.031227>,  <32.388515, 33.141129, 25.017342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170029, 33.239471, 25.031227>,  <31.805885, 33.403374, 25.054369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170029, 33.239471, 25.031227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073227, -0.297101, 0.952034,
		-0.407295, -0.862454, -0.300474,
		0.910357, -0.409761, -0.057853,
		32.443134, 33.116543, 25.013872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675434, 32.750637, 25.323229>,  <31.805885, 33.403374, 25.054369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675434, 32.750637, 25.323229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071930, 32.799423, 25.343498>,  <32.309826, 32.828693, 25.355659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071930, 32.799423, 25.343498>,  <31.675434, 32.750637, 25.323229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071930, 32.799423, 25.343498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014464, -0.481623, 0.876259,
		0.131278, -0.867850, -0.479168,
		0.991240, 0.121964, 0.050674,
		32.369301, 32.836014, 25.358700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934551, 32.112720, 25.539087>,  <31.675434, 32.750637, 25.323229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934551, 32.112720, 25.539087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251873, 32.330330, 25.648417>,  <32.442265, 32.460896, 25.714014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251873, 32.330330, 25.648417>,  <31.934551, 32.112720, 25.539087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251873, 32.330330, 25.648417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030198, -0.413225, 0.910128,
		0.608075, -0.730263, -0.311385,
		0.793305, 0.544023, 0.273324,
		32.489864, 32.493538, 25.730413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.636089, 36.477940, 20.729670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.018005, 36.370987, 20.781652>,  <34.247154, 36.306816, 20.812843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.018005, 36.370987, 20.781652>,  <33.636089, 36.477940, 20.729670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018005, 36.370987, 20.781652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168912, -0.128173, 0.977262,
		-0.244644, -0.955028, -0.167542,
		0.954787, -0.267381, 0.129959,
		34.304443, 36.290775, 20.820641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621548, 36.044941, 21.302258>,  <33.636089, 36.477940, 20.729670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621548, 36.044941, 21.302258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.004654, 36.152878, 21.262518>,  <34.234516, 36.217640, 21.238674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.004654, 36.152878, 21.262518>,  <33.621548, 36.044941, 21.302258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004654, 36.152878, 21.262518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054958, 0.167355, 0.984364,
		0.282253, -0.948249, 0.145457,
		0.957764, 0.269846, -0.099350,
		34.291985, 36.233829, 21.232714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941757, 35.808834, 21.901388>,  <33.621548, 36.044941, 21.302258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941757, 35.808834, 21.901388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.188465, 36.088047, 21.755875>,  <34.336491, 36.255577, 21.668568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.188465, 36.088047, 21.755875>,  <33.941757, 35.808834, 21.901388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188465, 36.088047, 21.755875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212310, 0.297503, 0.930815,
		0.757969, -0.651335, 0.035292,
		0.616772, 0.698036, -0.363783,
		34.373497, 36.297459, 21.646740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600765, 35.755722, 22.278612>,  <33.941757, 35.808834, 21.901388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600765, 35.755722, 22.278612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.624363, 36.123634, 22.123425>,  <34.638523, 36.344383, 22.030312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.624363, 36.123634, 22.123425>,  <34.600765, 35.755722, 22.278612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624363, 36.123634, 22.123425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231481, 0.365447, 0.901590,
		0.971049, -0.142997, -0.191353,
		0.058995, 0.919783, -0.387968,
		34.642063, 36.399570, 22.007034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154877, 35.966713, 22.493050>,  <34.600765, 35.755722, 22.278612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154877, 35.966713, 22.493050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.935486, 36.289421, 22.405153>,  <34.803852, 36.483047, 22.352415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.935486, 36.289421, 22.405153>,  <35.154877, 35.966713, 22.493050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935486, 36.289421, 22.405153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205259, 0.384663, 0.899946,
		0.810578, 0.448500, -0.376578,
		-0.548481, 0.806773, -0.219741,
		34.770943, 36.531452, 22.339231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542080, 36.480000, 22.589737>,  <35.154877, 35.966713, 22.493050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542080, 36.480000, 22.589737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.179218, 36.643524, 22.629620>,  <34.961502, 36.741638, 22.653549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.179218, 36.643524, 22.629620>,  <35.542080, 36.480000, 22.589737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179218, 36.643524, 22.629620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268946, 0.381051, 0.884572,
		0.323630, 0.829260, -0.455621,
		-0.907156, 0.408812, 0.099706,
		34.907070, 36.766167, 22.659531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679806, 37.029713, 23.008007>,  <35.542080, 36.480000, 22.589737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679806, 37.029713, 23.008007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.280037, 37.019573, 23.017094>,  <35.040176, 37.013489, 23.022545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.280037, 37.019573, 23.017094>,  <35.679806, 37.029713, 23.008007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280037, 37.019573, 23.017094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011362, 0.380618, 0.924663,
		-0.032088, 0.924385, -0.380109,
		-0.999420, -0.025351, 0.022716,
		34.980209, 37.011967, 23.023909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539143, 37.627319, 23.161245>,  <35.679806, 37.029713, 23.008007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539143, 37.627319, 23.161245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207874, 37.428333, 23.264526>,  <35.009113, 37.308941, 23.326494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207874, 37.428333, 23.264526>,  <35.539143, 37.627319, 23.161245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207874, 37.428333, 23.264526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060616, 0.378482, 0.923622,
		-0.557193, 0.780565, -0.283293,
		-0.828167, -0.497464, 0.258203,
		34.959423, 37.279095, 23.341988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057625, 38.137989, 23.284060>,  <35.539143, 37.627319, 23.161245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057625, 38.137989, 23.284060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.959686, 37.814556, 23.498064>,  <34.900921, 37.620495, 23.626467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.959686, 37.814556, 23.498064>,  <35.057625, 38.137989, 23.284060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959686, 37.814556, 23.498064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025826, 0.557052, 0.830076,
		-0.969217, 0.189426, -0.157276,
		-0.244849, -0.808585, 0.535013,
		34.886230, 37.571980, 23.658567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780876, 38.430271, 23.964233>,  <35.057625, 38.137989, 23.284060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780876, 38.430271, 23.964233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.811901, 38.045341, 24.068483>,  <34.830517, 37.814384, 24.131033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.811901, 38.045341, 24.068483>,  <34.780876, 38.430271, 23.964233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811901, 38.045341, 24.068483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047167, 0.264662, 0.963187,
		-0.995871, -0.062410, 0.065916,
		0.077558, -0.962320, 0.260626,
		34.835167, 37.756645, 24.146671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158417, 38.257221, 24.570791>,  <34.780876, 38.430271, 23.964233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158417, 38.257221, 24.570791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.451633, 37.986500, 24.597898>,  <34.627563, 37.824066, 24.614162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.451633, 37.986500, 24.597898>,  <34.158417, 38.257221, 24.570791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451633, 37.986500, 24.597898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150747, 0.258803, 0.954094,
		-0.663274, -0.689171, 0.291738,
		0.733037, -0.676804, 0.067767,
		34.671543, 37.783459, 24.618229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970486, 37.915619, 25.185352>,  <34.158417, 38.257221, 24.570791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970486, 37.915619, 25.185352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.358963, 37.832905, 25.137995>,  <34.592049, 37.783276, 25.109581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.358963, 37.832905, 25.137995>,  <33.970486, 37.915619, 25.185352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358963, 37.832905, 25.137995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157119, 0.182218, 0.970624,
		-0.179134, -0.961269, 0.209459,
		0.971198, -0.206782, -0.118392,
		34.650322, 37.770870, 25.102476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638596, 37.511257, 25.733038>,  <33.970486, 37.915619, 25.185352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638596, 37.511257, 25.733038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.319397, 37.751465, 25.753374>,  <33.127876, 37.895588, 25.765575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.319397, 37.751465, 25.753374>,  <33.638596, 37.511257, 25.733038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319397, 37.751465, 25.753374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313289, -0.341284, -0.886214,
		-0.514835, -0.723122, 0.460478,
		-0.797995, 0.600516, 0.050841,
		33.079998, 37.931618, 25.768627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115421, 37.090485, 25.588396>,  <33.638596, 37.511257, 25.733038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115421, 37.090485, 25.588396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.003048, 37.467934, 25.518370>,  <32.935623, 37.694405, 25.476353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.003048, 37.467934, 25.518370>,  <33.115421, 37.090485, 25.588396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003048, 37.467934, 25.518370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228646, -0.242968, -0.942702,
		-0.932094, -0.224807, 0.284013,
		-0.280932, 0.943625, -0.175068,
		32.918770, 37.751022, 25.465849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464592, 37.012691, 25.237513>,  <33.115421, 37.090485, 25.588396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464592, 37.012691, 25.237513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.601883, 37.376148, 25.142385>,  <32.684258, 37.594223, 25.085308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.601883, 37.376148, 25.142385>,  <32.464592, 37.012691, 25.237513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601883, 37.376148, 25.142385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477026, -0.049476, -0.877496,
		-0.809098, 0.414630, 0.416465,
		0.343231, 0.908645, -0.237820,
		32.704853, 37.648743, 25.071039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895193, 37.392391, 25.128633>,  <32.464592, 37.012691, 25.237513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895193, 37.392391, 25.128633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.190948, 37.560738, 24.918425>,  <32.368401, 37.661747, 24.792299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.190948, 37.560738, 24.918425>,  <31.895193, 37.392391, 25.128633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190948, 37.560738, 24.918425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555662, -0.059310, -0.829290,
		-0.380192, 0.905180, 0.190008,
		0.739387, 0.420870, -0.525524,
		32.412766, 37.687000, 24.760767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586967, 37.805126, 24.547646>,  <31.895193, 37.392391, 25.128633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586967, 37.805126, 24.547646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.966696, 37.753803, 24.432875>,  <32.194534, 37.723011, 24.364012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.966696, 37.753803, 24.432875>,  <31.586967, 37.805126, 24.547646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966696, 37.753803, 24.432875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291196, -0.015435, -0.956539,
		0.118303, 0.991614, -0.052015,
		0.949320, -0.128308, -0.286928,
		32.251492, 37.715309, 24.346796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694561, 38.238277, 23.925615>,  <31.586967, 37.805126, 24.547646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694561, 38.238277, 23.925615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.991169, 37.971260, 23.898657>,  <32.169132, 37.811050, 23.882483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.991169, 37.971260, 23.898657>,  <31.694561, 38.238277, 23.925615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991169, 37.971260, 23.898657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215919, -0.142323, -0.965983,
		0.635239, 0.730846, -0.249669,
		0.741519, -0.667539, -0.067394,
		32.213623, 37.771000, 23.878439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120228, 38.445343, 23.363482>,  <31.694561, 38.238277, 23.925615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120228, 38.445343, 23.363482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.247288, 38.067364, 23.394917>,  <32.323524, 37.840576, 23.413778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.247288, 38.067364, 23.394917>,  <32.120228, 38.445343, 23.363482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247288, 38.067364, 23.394917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233413, -0.158254, -0.959413,
		0.919031, 0.286412, -0.270832,
		0.317648, -0.944946, 0.078588,
		32.342583, 37.783878, 23.418493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592121, 38.323673, 22.697718>,  <32.120228, 38.445343, 23.363482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592121, 38.323673, 22.697718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.450821, 37.974636, 22.832653>,  <32.366039, 37.765213, 22.913614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.450821, 37.974636, 22.832653>,  <32.592121, 38.323673, 22.697718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450821, 37.974636, 22.832653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034101, -0.348338, -0.936749,
		0.934907, -0.342410, 0.093294,
		-0.353250, -0.872592, 0.337340,
		32.344845, 37.712860, 22.933855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022297, 37.761986, 22.405519>,  <32.592121, 38.323673, 22.697718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022297, 37.761986, 22.405519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.690044, 37.582985, 22.538061>,  <32.490692, 37.475586, 22.617586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.690044, 37.582985, 22.538061>,  <33.022297, 37.761986, 22.405519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690044, 37.582985, 22.538061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090135, -0.479173, -0.873080,
		0.549478, -0.755075, 0.357681,
		-0.830632, -0.447499, 0.331354,
		32.440853, 37.448734, 22.637466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956852, 37.032845, 22.142860>,  <33.022297, 37.761986, 22.405519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956852, 37.032845, 22.142860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577873, 37.128899, 22.227404>,  <32.350487, 37.186531, 22.278130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577873, 37.128899, 22.227404>,  <32.956852, 37.032845, 22.142860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577873, 37.128899, 22.227404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280467, -0.305730, -0.909873,
		-0.153874, -0.921338, 0.357014,
		-0.947450, 0.240136, 0.211361,
		32.293640, 37.200939, 22.290812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607216, 36.510479, 21.815578>,  <32.956852, 37.032845, 22.142860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607216, 36.510479, 21.815578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.306290, 36.767658, 21.873041>,  <32.125736, 36.921967, 21.907518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.306290, 36.767658, 21.873041>,  <32.607216, 36.510479, 21.815578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306290, 36.767658, 21.873041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362791, -0.222301, -0.904967,
		-0.549915, -0.732936, 0.400498,
		-0.752313, 0.642952, 0.143656,
		32.080597, 36.960545, 21.916138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973738, 36.158112, 21.432779>,  <32.607216, 36.510479, 21.815578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973738, 36.158112, 21.432779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879854, 36.545689, 21.463915>,  <31.823524, 36.778236, 21.482595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879854, 36.545689, 21.463915>,  <31.973738, 36.158112, 21.432779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879854, 36.545689, 21.463915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314102, 0.000182, -0.949389,
		-0.919919, -0.247281, 0.304305,
		-0.234711, 0.968944, 0.077839,
		31.809441, 36.836372, 21.487267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365341, 36.178890, 20.881683>,  <31.973738, 36.158112, 21.432779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365341, 36.178890, 20.881683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.486067, 36.557861, 20.924200>,  <31.558502, 36.785244, 20.949711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.486067, 36.557861, 20.924200>,  <31.365341, 36.178890, 20.881683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486067, 36.557861, 20.924200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459401, 0.242222, -0.854563,
		-0.835380, 0.209087, 0.508353,
		0.301813, 0.947423, 0.106293,
		31.576611, 36.842087, 20.956087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183315, 36.049442, 21.638586>,  <31.365341, 36.178890, 20.881683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183315, 36.049442, 21.638586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.216637, 35.684456, 21.478352>,  <31.236629, 35.465466, 21.382212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.216637, 35.684456, 21.478352>,  <31.183315, 36.049442, 21.638586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216637, 35.684456, 21.478352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473375, -0.317499, 0.821651,
		-0.876913, -0.258073, 0.405490,
		0.083303, -0.912465, -0.400585,
		31.241627, 35.410717, 21.358175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213467, 35.654064, 22.257889>,  <31.183315, 36.049442, 21.638586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213467, 35.654064, 22.257889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.289099, 35.383194, 21.973444>,  <31.334478, 35.220673, 21.802776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.289099, 35.383194, 21.973444>,  <31.213467, 35.654064, 22.257889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289099, 35.383194, 21.973444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455538, -0.581047, 0.674440,
		-0.869904, -0.451463, 0.198614,
		0.189080, -0.677175, -0.711114,
		31.345823, 35.180042, 21.760109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947723, 34.934269, 22.456652>,  <31.213467, 35.654064, 22.257889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947723, 34.934269, 22.456652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.241268, 34.874920, 22.191492>,  <31.417395, 34.839310, 22.032396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.241268, 34.874920, 22.191492>,  <30.947723, 34.934269, 22.456652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241268, 34.874920, 22.191492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488386, -0.563031, 0.666690,
		-0.472151, -0.813008, -0.340723,
		0.733862, -0.148374, -0.662897,
		31.461426, 34.830406, 21.992622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157352, 34.163933, 22.494549>,  <30.947723, 34.934269, 22.456652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157352, 34.163933, 22.494549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463778, 34.369957, 22.340738>,  <31.647633, 34.493572, 22.248451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463778, 34.369957, 22.340738>,  <31.157352, 34.163933, 22.494549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463778, 34.369957, 22.340738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620312, -0.435669, 0.652232,
		0.168412, -0.738177, -0.653248,
		0.766062, 0.515061, -0.384528,
		31.693596, 34.524475, 22.225380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548140, 33.696064, 22.187511>,  <31.157352, 34.163933, 22.494549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548140, 33.696064, 22.187511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.786083, 34.012997, 22.241709>,  <31.928848, 34.203156, 22.274227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.786083, 34.012997, 22.241709>,  <31.548140, 33.696064, 22.187511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786083, 34.012997, 22.241709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522701, -0.509334, 0.683639,
		0.610679, -0.335845, -0.717133,
		0.594857, 0.792330, 0.135493,
		31.964540, 34.250694, 22.282356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237175, 33.493351, 22.059387>,  <31.548140, 33.696064, 22.187511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237175, 33.493351, 22.059387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.284702, 33.820259, 22.284937>,  <32.313217, 34.016403, 22.420267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.284702, 33.820259, 22.284937>,  <32.237175, 33.493351, 22.059387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284702, 33.820259, 22.284937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467078, -0.547143, 0.694603,
		0.876197, 0.180842, -0.446738,
		0.118816, 0.817270, 0.563872,
		32.320347, 34.065441, 22.454098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898651, 33.481697, 22.291126>,  <32.237175, 33.493351, 22.059387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898651, 33.481697, 22.291126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.724339, 33.751831, 22.529121>,  <32.619751, 33.913914, 22.671919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.724339, 33.751831, 22.529121>,  <32.898651, 33.481697, 22.291126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724339, 33.751831, 22.529121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318589, -0.502521, 0.803725,
		0.841781, 0.539805, 0.003833,
		-0.435781, 0.675339, 0.594989,
		32.593605, 33.954433, 22.707619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473095, 33.555214, 22.732462>,  <32.898651, 33.481697, 22.291126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473095, 33.555214, 22.732462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.145576, 33.694931, 22.914701>,  <32.949066, 33.778763, 23.024046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.145576, 33.694931, 22.914701>,  <33.473095, 33.555214, 22.732462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145576, 33.694931, 22.914701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293567, -0.427248, 0.855148,
		0.493352, 0.833939, 0.247287,
		-0.818793, 0.349294, 0.455600,
		32.899937, 33.799721, 23.051382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161152, 33.218777, 22.542044>,  <33.473095, 33.555214, 22.732462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161152, 33.218777, 22.542044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.325935, 32.859581, 22.603891>,  <34.424805, 32.644066, 22.641001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.325935, 32.859581, 22.603891>,  <34.161152, 33.218777, 22.542044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325935, 32.859581, 22.603891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020199, -0.160647, -0.986805,
		0.910977, 0.409649, -0.048041,
		0.411962, -0.897987, 0.154620,
		34.449524, 32.590183, 22.650278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704628, 33.204025, 22.068411>,  <34.161152, 33.218777, 22.542044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704628, 33.204025, 22.068411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.610355, 32.827057, 22.163322>,  <34.553791, 32.600876, 22.220268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.610355, 32.827057, 22.163322>,  <34.704628, 33.204025, 22.068411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610355, 32.827057, 22.163322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142049, -0.274939, -0.950910,
		0.961393, -0.190407, 0.198668,
		-0.235682, -0.942419, 0.237277,
		34.539650, 32.544331, 22.234505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165306, 32.873459, 21.724977>,  <34.704628, 33.204025, 22.068411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165306, 32.873459, 21.724977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.859173, 32.625031, 21.792542>,  <34.675491, 32.475975, 21.833080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.859173, 32.625031, 21.792542>,  <35.165306, 32.873459, 21.724977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859173, 32.625031, 21.792542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006763, -0.270180, -0.962786,
		0.643596, -0.735712, 0.210979,
		-0.765335, -0.621072, 0.168911,
		34.629574, 32.438709, 21.843214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365192, 32.251549, 21.414078>,  <35.165306, 32.873459, 21.724977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365192, 32.251549, 21.414078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967865, 32.221630, 21.449224>,  <34.729469, 32.203678, 21.470312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967865, 32.221630, 21.449224>,  <35.365192, 32.251549, 21.414078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967865, 32.221630, 21.449224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074190, -0.169239, -0.982779,
		0.088380, -0.982733, 0.162559,
		-0.993320, -0.074798, 0.087866,
		34.669868, 32.199192, 21.475584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243191, 31.639421, 21.060759>,  <35.365192, 32.251549, 21.414078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243191, 31.639421, 21.060759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.901695, 31.847696, 21.062092>,  <34.696796, 31.972662, 21.062893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.901695, 31.847696, 21.062092>,  <35.243191, 31.639421, 21.060759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901695, 31.847696, 21.062092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064424, -0.099272, -0.992973,
		-0.516700, -0.847955, 0.118297,
		-0.853739, 0.520690, 0.003335,
		34.645573, 32.003902, 21.063093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771675, 31.261940, 20.662416>,  <35.243191, 31.639421, 21.060759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771675, 31.261940, 20.662416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.588028, 31.615320, 20.699778>,  <34.477840, 31.827349, 20.722195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.588028, 31.615320, 20.699778>,  <34.771675, 31.261940, 20.662416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588028, 31.615320, 20.699778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200650, -0.000698, -0.979663,
		-0.865420, -0.468521, 0.177586,
		-0.459117, 0.883452, 0.093405,
		34.450294, 31.880356, 20.727798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288605, 31.166975, 20.281305>,  <34.771675, 31.261940, 20.662416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288605, 31.166975, 20.281305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.304508, 31.566359, 20.296804>,  <34.314053, 31.805988, 20.306105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.304508, 31.566359, 20.296804>,  <34.288605, 31.166975, 20.281305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304508, 31.566359, 20.296804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262901, 0.047866, -0.963635,
		-0.964003, 0.028131, 0.264398,
		0.039763, 0.998458, 0.038747,
		34.316437, 31.865896, 20.308428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673096, 31.365738, 20.004827>,  <34.288605, 31.166975, 20.281305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673096, 31.365738, 20.004827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.959404, 31.641420, 19.959801>,  <34.131187, 31.806829, 19.932785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.959404, 31.641420, 19.959801>,  <33.673096, 31.365738, 20.004827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959404, 31.641420, 19.959801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318197, 0.178385, -0.931090,
		-0.621631, 0.702265, 0.346985,
		0.715769, 0.689205, -0.112569,
		34.174133, 31.848183, 19.926029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306019, 31.961843, 19.601410>,  <33.673096, 31.365738, 20.004827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306019, 31.961843, 19.601410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.702522, 31.986851, 19.554945>,  <33.940426, 32.001854, 19.527065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.702522, 31.986851, 19.554945>,  <33.306019, 31.961843, 19.601410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702522, 31.986851, 19.554945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120646, 0.073480, -0.989972,
		-0.053355, 0.995335, 0.080380,
		0.991261, 0.062518, -0.116162,
		33.999901, 32.005608, 19.520096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.499447, 35.192905, 34.982349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.799812, 35.227917, 34.720516>,  <37.980030, 35.248924, 34.563416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.799812, 35.227917, 34.720516>,  <37.499447, 35.192905, 34.982349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799812, 35.227917, 34.720516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608131, -0.294845, -0.737050,
		-0.257510, 0.951528, -0.168176,
		0.750910, 0.087524, -0.654579,
		38.025085, 35.254173, 34.524143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105320, 35.432068, 34.358440>,  <37.499447, 35.192905, 34.982349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105320, 35.432068, 34.358440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472286, 35.316551, 34.248940>,  <37.692467, 35.247242, 34.183239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472286, 35.316551, 34.248940>,  <37.105320, 35.432068, 34.358440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472286, 35.316551, 34.248940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351594, -0.266140, -0.897525,
		0.186340, 0.919657, -0.345699,
		0.917420, -0.288791, -0.273753,
		37.747513, 35.229916, 34.166813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300240, 35.728909, 33.687878>,  <37.105320, 35.432068, 34.358440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300240, 35.728909, 33.687878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524075, 35.398006, 33.707920>,  <37.658375, 35.199467, 33.719944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524075, 35.398006, 33.707920>,  <37.300240, 35.728909, 33.687878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524075, 35.398006, 33.707920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317097, -0.269573, -0.909274,
		0.765707, 0.492933, -0.413170,
		0.559591, -0.827253, 0.050107,
		37.691952, 35.149830, 33.722954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640053, 35.690678, 33.002781>,  <37.300240, 35.728909, 33.687878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640053, 35.690678, 33.002781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669174, 35.321686, 33.154430>,  <37.686649, 35.100292, 33.245419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669174, 35.321686, 33.154430>,  <37.640053, 35.690678, 33.002781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669174, 35.321686, 33.154430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234609, -0.385306, -0.892467,
		0.969359, -0.023968, -0.244474,
		0.072806, -0.922477, 0.379123,
		37.691017, 35.044941, 33.268166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961445, 35.215275, 32.498508>,  <37.640053, 35.690678, 33.002781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961445, 35.215275, 32.498508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774132, 34.950123, 32.732189>,  <37.661743, 34.791031, 32.872398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774132, 34.950123, 32.732189>,  <37.961445, 35.215275, 32.498508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774132, 34.950123, 32.732189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386676, -0.440761, -0.810069,
		0.794475, -0.605242, -0.049918,
		-0.468286, -0.662881, 0.584206,
		37.633644, 34.751259, 32.907452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151318, 34.608204, 32.293312>,  <37.961445, 35.215275, 32.498508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151318, 34.608204, 32.293312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798809, 34.544327, 32.471237>,  <37.587303, 34.506001, 32.577991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798809, 34.544327, 32.471237>,  <38.151318, 34.608204, 32.293312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798809, 34.544327, 32.471237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339418, -0.441078, -0.830810,
		0.328870, -0.883147, 0.334508,
		-0.881272, -0.159691, 0.444814,
		37.534428, 34.496418, 32.604683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036091, 33.844917, 32.217064>,  <38.151318, 34.608204, 32.293312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036091, 33.844917, 32.217064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678104, 34.008263, 32.288925>,  <37.463314, 34.106270, 32.332043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678104, 34.008263, 32.288925>,  <38.036091, 33.844917, 32.217064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678104, 34.008263, 32.288925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382895, -0.496386, -0.779097,
		-0.228978, -0.766054, 0.600609,
		-0.894964, 0.408366, 0.179657,
		37.409615, 34.130772, 32.342823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641254, 33.251575, 32.177982>,  <38.036091, 33.844917, 32.217064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641254, 33.251575, 32.177982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419083, 33.581131, 32.132896>,  <37.285778, 33.778866, 32.105846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419083, 33.581131, 32.132896>,  <37.641254, 33.251575, 32.177982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419083, 33.581131, 32.132896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500536, -0.439481, -0.745869,
		-0.664047, -0.357863, 0.656487,
		-0.555433, 0.823887, -0.112712,
		37.252453, 33.828297, 32.099083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008785, 32.962021, 32.200050>,  <37.641254, 33.251575, 32.177982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008785, 32.962021, 32.200050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961105, 33.319160, 32.026333>,  <36.932495, 33.533443, 31.922102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961105, 33.319160, 32.026333>,  <37.008785, 32.962021, 32.200050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961105, 33.319160, 32.026333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631351, -0.405753, -0.660879,
		-0.766281, 0.195416, 0.612066,
		-0.119201, 0.892847, -0.434297,
		36.925346, 33.587013, 31.896044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291615, 33.039204, 32.080402>,  <37.008785, 32.962021, 32.200050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291615, 33.039204, 32.080402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470661, 33.293530, 31.828888>,  <36.578091, 33.446125, 31.677979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470661, 33.293530, 31.828888>,  <36.291615, 33.039204, 32.080402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470661, 33.293530, 31.828888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578093, -0.330719, -0.745945,
		-0.682238, 0.697395, 0.219527,
		0.447617, 0.635818, -0.628788,
		36.604946, 33.484276, 31.640251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763279, 33.387390, 31.640120>,  <36.291615, 33.039204, 32.080402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763279, 33.387390, 31.640120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105019, 33.452213, 31.442608>,  <36.310062, 33.491108, 31.324100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105019, 33.452213, 31.442608>,  <35.763279, 33.387390, 31.640120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105019, 33.452213, 31.442608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425531, -0.327292, -0.843684,
		-0.298335, 0.930923, -0.210663,
		0.854354, 0.162057, -0.493779,
		36.361324, 33.500832, 31.294474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511120, 33.683357, 31.031359>,  <35.763279, 33.387390, 31.640120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511120, 33.683357, 31.031359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881279, 33.545879, 30.967476>,  <36.103374, 33.463390, 30.929146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881279, 33.545879, 30.967476>,  <35.511120, 33.683357, 31.031359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881279, 33.545879, 30.967476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264572, -0.284125, -0.921561,
		0.271363, 0.895066, -0.353863,
		0.925399, -0.343699, -0.159708,
		36.158897, 33.442768, 30.919563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129612, 34.397881, 30.719631>,  <35.511120, 33.683357, 31.031359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129612, 34.397881, 30.719631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800777, 34.262074, 30.902454>,  <34.603477, 34.180588, 31.012148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800777, 34.262074, 30.902454>,  <35.129612, 34.397881, 30.719631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800777, 34.262074, 30.902454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415108, 0.192030, 0.889275,
		-0.389695, 0.920789, -0.016928,
		-0.822085, -0.339519, 0.457060,
		34.554153, 34.160217, 31.039572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965160, 34.941383, 31.135283>,  <35.129612, 34.397881, 30.719631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965160, 34.941383, 31.135283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766087, 34.622612, 31.272230>,  <34.646641, 34.431351, 31.354399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766087, 34.622612, 31.272230>,  <34.965160, 34.941383, 31.135283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766087, 34.622612, 31.272230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232155, 0.257934, 0.937856,
		-0.835711, 0.546241, 0.056640,
		-0.497687, -0.796926, 0.342371,
		34.616779, 34.383533, 31.374941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463108, 35.235680, 31.555012>,  <34.965160, 34.941383, 31.135283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463108, 35.235680, 31.555012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479469, 34.857559, 31.684458>,  <34.489288, 34.630688, 31.762125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479469, 34.857559, 31.684458>,  <34.463108, 35.235680, 31.555012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479469, 34.857559, 31.684458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011659, 0.324318, 0.945876,
		-0.999095, -0.034919, 0.024287,
		0.040906, -0.945303, 0.323617,
		34.491741, 34.573967, 31.781544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903397, 35.135544, 32.048302>,  <34.463108, 35.235680, 31.555012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903397, 35.135544, 32.048302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181789, 34.854389, 32.107037>,  <34.348824, 34.685696, 32.142277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181789, 34.854389, 32.107037>,  <33.903397, 35.135544, 32.048302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181789, 34.854389, 32.107037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081872, 0.280836, 0.956257,
		-0.713376, -0.653517, 0.253004,
		0.695983, -0.702885, 0.146837,
		34.390583, 34.643524, 32.151089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671947, 34.919991, 32.670799>,  <33.903397, 35.135544, 32.048302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671947, 34.919991, 32.670799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049095, 34.789043, 32.646053>,  <34.275383, 34.710476, 32.631207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049095, 34.789043, 32.646053>,  <33.671947, 34.919991, 32.670799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049095, 34.789043, 32.646053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157871, 0.275491, 0.948252,
		-0.293386, -0.903844, 0.311434,
		0.942869, -0.327370, -0.061866,
		34.331955, 34.690834, 32.627495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756023, 34.368488, 33.151653>,  <33.671947, 34.919991, 32.670799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756023, 34.368488, 33.151653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127052, 34.504616, 33.089951>,  <34.349670, 34.586292, 33.052929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127052, 34.504616, 33.089951>,  <33.756023, 34.368488, 33.151653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127052, 34.504616, 33.089951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128578, 0.096908, 0.986953,
		0.350825, -0.935304, 0.046132,
		0.927571, 0.340316, -0.154257,
		34.405323, 34.606712, 33.043674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171631, 34.039177, 33.626343>,  <33.756023, 34.368488, 33.151653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171631, 34.039177, 33.626343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357353, 34.382004, 33.537029>,  <34.468788, 34.587700, 33.483440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357353, 34.382004, 33.537029>,  <34.171631, 34.039177, 33.626343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357353, 34.382004, 33.537029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204392, 0.141608, 0.968592,
		0.861766, -0.495363, -0.109427,
		0.464309, 0.857066, -0.223281,
		34.496647, 34.639122, 33.470043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809334, 34.079475, 33.976387>,  <34.171631, 34.039177, 33.626343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809334, 34.079475, 33.976387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758709, 34.471123, 33.912750>,  <34.728336, 34.706112, 33.874569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758709, 34.471123, 33.912750>,  <34.809334, 34.079475, 33.976387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758709, 34.471123, 33.912750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315475, 0.191780, 0.929353,
		0.940457, 0.067431, -0.333159,
		-0.126560, 0.979119, -0.159088,
		34.720741, 34.764858, 33.865025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184650, 34.364574, 34.450912>,  <34.809334, 34.079475, 33.976387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184650, 34.364574, 34.450912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005760, 34.704403, 34.339039>,  <34.898426, 34.908298, 34.271915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005760, 34.704403, 34.339039>,  <35.184650, 34.364574, 34.450912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005760, 34.704403, 34.339039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269298, 0.426090, 0.863670,
		0.852919, 0.310932, -0.419344,
		-0.447221, 0.849570, -0.279687,
		34.871593, 34.959274, 34.255135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714081, 34.880539, 34.619228>,  <35.184650, 34.364574, 34.450912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714081, 34.880539, 34.619228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.347126, 35.038597, 34.600189>,  <35.126953, 35.133430, 34.588768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.347126, 35.038597, 34.600189>,  <35.714081, 34.880539, 34.619228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347126, 35.038597, 34.600189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166994, 0.490703, 0.855175,
		0.361272, 0.776576, -0.516151,
		-0.917385, 0.395145, -0.047594,
		35.071911, 35.157139, 34.585911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887177, 35.513771, 34.844410>,  <35.714081, 34.880539, 34.619228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887177, 35.513771, 34.844410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488354, 35.498379, 34.870937>,  <35.249062, 35.489143, 34.886852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488354, 35.498379, 34.870937>,  <35.887177, 35.513771, 34.844410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488354, 35.498379, 34.870937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051308, 0.307916, 0.950029,
		-0.056976, 0.950635, -0.305035,
		-0.997056, -0.038478, 0.066319,
		35.189236, 35.486835, 34.890835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711132, 36.128750, 35.107658>,  <35.887177, 35.513771, 34.844410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711132, 36.128750, 35.107658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411514, 35.883244, 35.207436>,  <35.231743, 35.735939, 35.267303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411514, 35.883244, 35.207436>,  <35.711132, 36.128750, 35.107658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411514, 35.883244, 35.207436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020692, 0.398002, 0.917151,
		-0.662194, 0.681828, -0.310822,
		-0.749047, -0.613763, 0.249446,
		35.186802, 35.699116, 35.282269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216377, 36.532700, 35.479496>,  <35.711132, 36.128750, 35.107658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216377, 36.532700, 35.479496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124352, 36.156548, 35.579697>,  <35.069138, 35.930855, 35.639816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124352, 36.156548, 35.579697>,  <35.216377, 36.532700, 35.479496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124352, 36.156548, 35.579697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198059, 0.297262, 0.934028,
		-0.952808, 0.165272, -0.254641,
		-0.230063, -0.940383, 0.250500,
		35.055332, 35.874432, 35.654846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499199, 36.492317, 35.744473>,  <35.216377, 36.532700, 35.479496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499199, 36.492317, 35.744473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708893, 36.194271, 35.909386>,  <34.834709, 36.015442, 36.008335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708893, 36.194271, 35.909386>,  <34.499199, 36.492317, 35.744473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708893, 36.194271, 35.909386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355709, 0.248283, 0.901014,
		-0.773722, -0.618999, -0.134884,
		0.524238, -0.745114, 0.412286,
		34.866165, 35.970737, 36.033073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905247, 36.873188, 36.304668>,  <34.499199, 36.492317, 35.744473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905247, 36.873188, 36.304668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033398, 37.231888, 36.426788>,  <35.110287, 37.447105, 36.500061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033398, 37.231888, 36.426788>,  <34.905247, 36.873188, 36.304668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033398, 37.231888, 36.426788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298117, 0.401352, -0.866050,
		-0.899157, 0.186450, 0.395920,
		0.320378, 0.896746, 0.305295,
		35.129513, 37.500912, 36.518375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394077, 37.396801, 36.238815>,  <34.905247, 36.873188, 36.304668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394077, 37.396801, 36.238815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741932, 37.592117, 36.209702>,  <34.950645, 37.709309, 36.192234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741932, 37.592117, 36.209702>,  <34.394077, 37.396801, 36.238815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741932, 37.592117, 36.209702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325110, 0.455482, -0.828758,
		-0.371521, 0.744385, 0.554854,
		0.869641, 0.488290, -0.072786,
		35.002823, 37.738605, 36.187866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219341, 38.208252, 36.095551>,  <34.394077, 37.396801, 36.238815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219341, 38.208252, 36.095551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560017, 38.093655, 35.920029>,  <34.764423, 38.024895, 35.814716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560017, 38.093655, 35.920029>,  <34.219341, 38.208252, 36.095551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560017, 38.093655, 35.920029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303411, 0.413129, -0.858642,
		0.427279, 0.864433, 0.264931,
		0.851689, -0.286497, -0.438800,
		34.815525, 38.007706, 35.788387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580429, 38.876648, 35.775791>,  <34.219341, 38.208252, 36.095551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580429, 38.876648, 35.775791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649170, 38.539719, 35.571457>,  <34.690414, 38.337559, 35.448856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649170, 38.539719, 35.571457>,  <34.580429, 38.876648, 35.775791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649170, 38.539719, 35.571457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458656, 0.390506, -0.798211,
		0.871838, 0.371475, -0.319227,
		0.171855, -0.842325, -0.510837,
		34.700726, 38.287022, 35.418205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822075, 39.024197, 35.129547>,  <34.580429, 38.876648, 35.775791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822075, 39.024197, 35.129547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748333, 38.647865, 35.015800>,  <34.704090, 38.422066, 34.947552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748333, 38.647865, 35.015800>,  <34.822075, 39.024197, 35.129547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748333, 38.647865, 35.015800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295154, 0.328963, -0.897033,
		0.937496, -0.081438, -0.338333,
		-0.184352, -0.940825, -0.284364,
		34.693027, 38.365620, 34.930492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200382, 38.980110, 34.583817>,  <34.822075, 39.024197, 35.129547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200382, 38.980110, 34.583817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908092, 38.709114, 34.550209>,  <34.732719, 38.546516, 34.530045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908092, 38.709114, 34.550209>,  <35.200382, 38.980110, 34.583817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908092, 38.709114, 34.550209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159869, 0.289466, -0.943743,
		0.663693, -0.676182, -0.319828,
		-0.730721, -0.677486, -0.084016,
		34.688877, 38.505867, 34.525005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282833, 38.763294, 33.917469>,  <35.200382, 38.980110, 34.583817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282833, 38.763294, 33.917469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913834, 38.636139, 34.005058>,  <34.692436, 38.559845, 34.057613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913834, 38.636139, 34.005058>,  <35.282833, 38.763294, 33.917469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913834, 38.636139, 34.005058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256785, 0.081816, -0.962999,
		0.288210, -0.944592, -0.157104,
		-0.922495, -0.317888, 0.218977,
		34.637085, 38.540771, 34.070751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262482, 38.093403, 33.465462>,  <35.282833, 38.763294, 33.917469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262482, 38.093403, 33.465462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908466, 38.248379, 33.568684>,  <34.696056, 38.341366, 33.630615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908466, 38.248379, 33.568684>,  <35.262482, 38.093403, 33.465462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908466, 38.248379, 33.568684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319148, -0.101445, -0.942260,
		-0.338894, -0.916295, 0.213434,
		-0.885040, 0.387443, 0.258055,
		34.642956, 38.364613, 33.646099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747822, 37.635551, 33.132145>,  <35.262482, 38.093403, 33.465462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747822, 37.635551, 33.132145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577705, 37.983150, 33.233311>,  <34.475636, 38.191711, 33.294010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577705, 37.983150, 33.233311>,  <34.747822, 37.635551, 33.132145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577705, 37.983150, 33.233311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351104, 0.099151, -0.931072,
		-0.834178, -0.484776, 0.262942,
		-0.425290, 0.869000, 0.252916,
		34.450119, 38.243851, 33.309185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057812, 37.663857, 32.764118>,  <34.747822, 37.635551, 33.132145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057812, 37.663857, 32.764118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131954, 38.046638, 32.853455>,  <34.176441, 38.276306, 32.907055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131954, 38.046638, 32.853455>,  <34.057812, 37.663857, 32.764118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131954, 38.046638, 32.853455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345083, 0.276191, -0.897015,
		-0.920087, 0.089199, 0.381423,
		0.185358, 0.956954, 0.223339,
		34.187561, 38.333725, 32.920456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542706, 37.951157, 32.351295>,  <34.057812, 37.663857, 32.764118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542706, 37.951157, 32.351295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760910, 38.274170, 32.441006>,  <33.891834, 38.467979, 32.494831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760910, 38.274170, 32.441006>,  <33.542706, 37.951157, 32.351295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760910, 38.274170, 32.441006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245842, 0.410012, -0.878323,
		-0.801233, 0.424002, 0.422194,
		0.545516, 0.807535, 0.224277,
		33.924564, 38.516430, 32.508289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128986, 38.618126, 32.353424>,  <33.542706, 37.951157, 32.351295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128986, 38.618126, 32.353424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514957, 38.684353, 32.271935>,  <33.746540, 38.724087, 32.223042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514957, 38.684353, 32.271935>,  <33.128986, 38.618126, 32.353424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514957, 38.684353, 32.271935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250294, 0.346187, -0.904161,
		-0.079168, 0.923441, 0.375485,
		0.964928, 0.165563, -0.203725,
		33.804436, 38.734020, 32.210815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113846, 39.195793, 31.893530>,  <33.128986, 38.618126, 32.353424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113846, 39.195793, 31.893530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494919, 39.080784, 31.854092>,  <33.723564, 39.011780, 31.830429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494919, 39.080784, 31.854092>,  <33.113846, 39.195793, 31.893530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494919, 39.080784, 31.854092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003832, 0.312994, -0.949747,
		0.303931, 0.905189, 0.297083,
		0.952686, -0.287519, -0.098597,
		33.780724, 38.994530, 31.824512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451210, 39.723625, 31.457003>,  <33.113846, 39.195793, 31.893530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451210, 39.723625, 31.457003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630760, 39.366936, 31.433901>,  <33.738491, 39.152920, 31.420040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630760, 39.366936, 31.433901>,  <33.451210, 39.723625, 31.457003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630760, 39.366936, 31.433901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054507, 0.091837, -0.994281,
		0.891930, 0.443161, 0.089828,
		0.448876, -0.891725, -0.057757,
		33.765423, 39.099419, 31.416574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720654, 39.795330, 30.881359>,  <33.451210, 39.723625, 31.457003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720654, 39.795330, 30.881359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771881, 39.403366, 30.942511>,  <33.802616, 39.168186, 30.979202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771881, 39.403366, 30.942511>,  <33.720654, 39.795330, 30.881359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771881, 39.403366, 30.942511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050881, -0.160439, -0.985734,
		0.990459, 0.118464, -0.070406,
		0.128070, -0.979911, 0.152881,
		33.810303, 39.109394, 30.988375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375423, 39.566902, 30.546932>,  <33.720654, 39.795330, 30.881359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375423, 39.566902, 30.546932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121670, 39.260021, 30.584808>,  <33.969418, 39.075893, 30.607534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121670, 39.260021, 30.584808>,  <34.375423, 39.566902, 30.546932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121670, 39.260021, 30.584808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033307, -0.149509, -0.988199,
		0.772302, -0.623742, 0.120399,
		-0.634382, -0.767198, 0.094692,
		33.931355, 39.029861, 30.613216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706707, 39.080803, 30.110035>,  <34.375423, 39.566902, 30.546932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706707, 39.080803, 30.110035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333473, 38.951267, 30.172623>,  <34.109531, 38.873547, 30.210175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333473, 38.951267, 30.172623>,  <34.706707, 39.080803, 30.110035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333473, 38.951267, 30.172623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099739, -0.184999, -0.977664,
		0.345553, -0.927849, 0.140320,
		-0.933084, -0.323839, 0.156470,
		34.053547, 38.854115, 30.219564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648254, 38.532856, 29.754519>,  <34.706707, 39.080803, 30.110035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648254, 38.532856, 29.754519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265717, 38.637814, 29.805983>,  <34.036194, 38.700787, 29.836861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265717, 38.637814, 29.805983>,  <34.648254, 38.532856, 29.754519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265717, 38.637814, 29.805983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196291, -0.250594, -0.947983,
		-0.216497, -0.931856, 0.291159,
		-0.956347, 0.262387, 0.128662,
		33.978813, 38.716530, 29.844580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297325, 38.076794, 29.325348>,  <34.648254, 38.532856, 29.754519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297325, 38.076794, 29.325348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033051, 38.358078, 29.430418>,  <33.874485, 38.526848, 29.493460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033051, 38.358078, 29.430418>,  <34.297325, 38.076794, 29.325348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033051, 38.358078, 29.430418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484262, -0.131894, -0.864925,
		-0.573575, -0.698645, 0.427676,
		-0.660683, 0.703206, 0.262676,
		33.834846, 38.569038, 29.509220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650356, 37.783871, 29.235861>,  <34.297325, 38.076794, 29.325348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650356, 37.783871, 29.235861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647251, 38.183136, 29.211828>,  <33.645390, 38.422695, 29.197409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647251, 38.183136, 29.211828>,  <33.650356, 37.783871, 29.235861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647251, 38.183136, 29.211828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516802, -0.055441, -0.854308,
		-0.856070, 0.024417, 0.516283,
		-0.007764, 0.998164, -0.060080,
		33.644920, 38.482586, 29.193804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080143, 37.911171, 28.918428>,  <33.650356, 37.783871, 29.235861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080143, 37.911171, 28.918428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258121, 38.265434, 28.865313>,  <33.364910, 38.477993, 28.833443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258121, 38.265434, 28.865313>,  <33.080143, 37.911171, 28.918428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258121, 38.265434, 28.865313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420343, 0.075604, -0.904210,
		-0.790781, 0.458143, 0.405920,
		0.444947, 0.885657, -0.132791,
		33.391605, 38.531132, 28.825476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521809, 38.264164, 28.671013>,  <33.080143, 37.911171, 28.918428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521809, 38.264164, 28.671013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868736, 38.424908, 28.553524>,  <33.076893, 38.521355, 28.483030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868736, 38.424908, 28.553524>,  <32.521809, 38.264164, 28.671013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868736, 38.424908, 28.553524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398007, 0.205519, -0.894065,
		-0.298924, 0.892339, 0.338194,
		0.867315, 0.401861, -0.293722,
		33.128929, 38.545467, 28.465406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312347, 38.673634, 28.079697>,  <32.521809, 38.264164, 28.671013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312347, 38.673634, 28.079697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711582, 38.660236, 28.058910>,  <32.951122, 38.652199, 28.046438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711582, 38.660236, 28.058910>,  <32.312347, 38.673634, 28.079697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711582, 38.660236, 28.058910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046661, 0.143323, -0.988575,
		0.040557, 0.989109, 0.141486,
		0.998087, -0.033492, -0.051965,
		33.011009, 38.650188, 28.043322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521149, 39.272755, 27.645041>,  <32.312347, 38.673634, 28.079697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521149, 39.272755, 27.645041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831478, 39.020451, 27.638908>,  <33.017677, 38.869068, 27.635229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831478, 39.020451, 27.638908>,  <32.521149, 39.272755, 27.645041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831478, 39.020451, 27.638908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078000, -0.071769, -0.994367,
		0.626111, 0.772649, -0.104879,
		0.775823, -0.630764, -0.015331,
		33.064224, 38.831223, 27.634310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054611, 39.499226, 27.050158>,  <32.521149, 39.272755, 27.645041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054611, 39.499226, 27.050158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106651, 39.111065, 27.131542>,  <33.137875, 38.878170, 27.180372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106651, 39.111065, 27.131542>,  <33.054611, 39.499226, 27.050158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106651, 39.111065, 27.131542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054241, -0.197931, -0.978714,
		0.990017, 0.138363, 0.026886,
		0.130096, -0.970401, 0.203460,
		33.145679, 38.819946, 27.192579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541203, 39.270058, 26.590357>,  <33.054611, 39.499226, 27.050158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541203, 39.270058, 26.590357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352551, 38.935986, 26.703520>,  <33.239357, 38.735542, 26.771418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352551, 38.935986, 26.703520>,  <33.541203, 39.270058, 26.590357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352551, 38.935986, 26.703520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150156, -0.392214, -0.907536,
		0.868916, -0.385544, 0.310388,
		-0.471634, -0.835179, 0.282909,
		33.211060, 38.685432, 26.788393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849388, 38.834774, 26.116693>,  <33.541203, 39.270058, 26.590357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849388, 38.834774, 26.116693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556072, 38.614483, 26.276190>,  <33.380085, 38.482307, 26.371887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556072, 38.614483, 26.276190>,  <33.849388, 38.834774, 26.116693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556072, 38.614483, 26.276190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108690, -0.483961, -0.868313,
		0.671176, -0.680062, 0.295024,
		-0.733287, -0.550725, 0.398739,
		33.336086, 38.449265, 26.395811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958038, 38.091236, 25.984447>,  <33.849388, 38.834774, 26.116693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958038, 38.091236, 25.984447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571686, 38.156528, 26.064884>,  <33.339874, 38.195705, 26.113146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571686, 38.156528, 26.064884>,  <33.958038, 38.091236, 25.984447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571686, 38.156528, 26.064884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254777, -0.459121, -0.851056,
		-0.046593, -0.873249, 0.485041,
		-0.965877, 0.163231, 0.201092,
		33.281921, 38.205498, 26.125212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340874, 37.389912, 25.934414>,  <33.958038, 38.091236, 25.984447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340874, 37.389912, 25.934414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676888, 37.515533, 25.757460>,  <34.878498, 37.590908, 25.651287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676888, 37.515533, 25.757460>,  <34.340874, 37.389912, 25.934414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676888, 37.515533, 25.757460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394260, 0.206760, 0.895438,
		0.372687, -0.926616, 0.049866,
		0.840038, 0.314058, -0.442384,
		34.928898, 37.609749, 25.624744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902325, 36.988651, 26.110250>,  <34.340874, 37.389912, 25.934414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902325, 36.988651, 26.110250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050110, 37.350899, 26.026966>,  <35.138783, 37.568249, 25.976995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050110, 37.350899, 26.026966>,  <34.902325, 36.988651, 26.110250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050110, 37.350899, 26.026966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398702, 0.047903, 0.915829,
		0.839365, -0.421380, -0.343373,
		0.369464, 0.905618, -0.208213,
		35.160950, 37.622585, 25.964502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530285, 36.919926, 26.428778>,  <34.902325, 36.988651, 26.110250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530285, 36.919926, 26.428778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517521, 37.312943, 26.355465>,  <35.509861, 37.548752, 26.311478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517521, 37.312943, 26.355465>,  <35.530285, 36.919926, 26.428778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517521, 37.312943, 26.355465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530173, 0.172089, 0.830242,
		0.847288, -0.070678, -0.526409,
		-0.031909, 0.982543, -0.183280,
		35.507950, 37.607704, 26.300480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141201, 37.139221, 26.568913>,  <35.530285, 36.919926, 26.428778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141201, 37.139221, 26.568913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.915115, 37.466038, 26.614485>,  <35.779465, 37.662128, 26.641829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.915115, 37.466038, 26.614485>,  <36.141201, 37.139221, 26.568913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915115, 37.466038, 26.614485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422203, 0.167857, 0.890824,
		0.708713, 0.551610, -0.439832,
		-0.565217, 0.817037, 0.113929,
		35.745552, 37.711147, 26.648664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599121, 37.729393, 26.976948>,  <36.141201, 37.139221, 26.568913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599121, 37.729393, 26.976948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.218048, 37.844574, 27.015907>,  <35.989407, 37.913681, 27.039284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.218048, 37.844574, 27.015907>,  <36.599121, 37.729393, 26.976948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218048, 37.844574, 27.015907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234604, 0.492750, 0.837949,
		0.193292, 0.821148, -0.536987,
		-0.952680, 0.287948, 0.097400,
		35.932243, 37.930958, 27.045128>
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
