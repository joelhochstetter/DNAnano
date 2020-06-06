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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.377684, 15.413741, 14.988769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.359976, 15.033870, 14.864736>,  <4.349351, 14.805947, 14.790316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.359976, 15.033870, 14.864736>,  <4.377684, 15.413741, 14.988769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.359976, 15.033870, 14.864736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975346, 0.026083, -0.219133,
		0.216194, -0.312139, 0.925111,
		-0.044270, -0.949678, -0.310082,
		4.346694, 14.748966, 14.771710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.808798, 14.874157, 15.357236>,  <4.377684, 15.413741, 14.988769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.808798, 14.874157, 15.357236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.784125, 14.776700, 14.970076>,  <4.769321, 14.718225, 14.737780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.784125, 14.776700, 14.970076>,  <4.808798, 14.874157, 15.357236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.784125, 14.776700, 14.970076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988675, 0.118012, -0.092713,
		0.136813, -0.962658, 0.233605,
		-0.061683, -0.243643, -0.967901,
		4.765620, 14.703608, 14.679705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.389195, 14.409862, 15.114757>,  <4.808798, 14.874157, 15.357236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.389195, 14.409862, 15.114757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.254826, 14.625561, 14.805858>,  <5.174204, 14.754980, 14.620518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.254826, 14.625561, 14.805858>,  <5.389195, 14.409862, 15.114757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.254826, 14.625561, 14.805858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927368, 0.332771, -0.171032,
		0.164753, -0.773612, -0.611867,
		-0.335924, 0.539248, -0.772248,
		5.154049, 14.787335, 14.574183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.637985, 14.794662, 15.682846>,  <5.389195, 14.409862, 15.114757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.637985, 14.794662, 15.682846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.909845, 14.638410, 15.931195>,  <6.072961, 14.544658, 16.080204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.909845, 14.638410, 15.931195>,  <5.637985, 14.794662, 15.682846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.909845, 14.638410, 15.931195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008876, 0.850728, 0.525531,
		-0.733483, -0.351666, 0.581665,
		0.679650, -0.390631, 0.620873,
		6.113740, 14.521220, 16.117456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.341662, 14.935905, 16.335258>,  <5.637985, 14.794662, 15.682846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.341662, 14.935905, 16.335258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.730431, 14.849234, 16.371956>,  <5.963692, 14.797231, 16.393974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.730431, 14.849234, 16.371956>,  <5.341662, 14.935905, 16.335258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.730431, 14.849234, 16.371956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088101, 0.696645, 0.711986,
		-0.218187, -0.683912, 0.696175,
		0.971922, -0.216680, 0.091746,
		6.022007, 14.784229, 16.399479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.536078, 14.960670, 17.006771>,  <5.341662, 14.935905, 16.335258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.536078, 14.960670, 17.006771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.908010, 15.007806, 16.867325>,  <6.131169, 15.036088, 16.783657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.908010, 15.007806, 16.867325>,  <5.536078, 14.960670, 17.006771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.908010, 15.007806, 16.867325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185289, 0.668566, 0.720200,
		0.317941, -0.734257, 0.599817,
		0.929829, 0.117841, -0.348614,
		6.186959, 15.043159, 16.762741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.014748, 14.925886, 17.614101>,  <5.536078, 14.960670, 17.006771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.014748, 14.925886, 17.614101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.243722, 15.072486, 17.320709>,  <6.381106, 15.160446, 17.144674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.243722, 15.072486, 17.320709>,  <6.014748, 14.925886, 17.614101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.243722, 15.072486, 17.320709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478005, 0.577650, 0.661688,
		0.666205, -0.729381, 0.155478,
		0.572435, 0.366501, -0.733482,
		6.415452, 15.182436, 17.100664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.677257, 14.710797, 17.877327>,  <6.014748, 14.925886, 17.614101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.677257, 14.710797, 17.877327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.660817, 15.024157, 17.629263>,  <6.650953, 15.212172, 17.480425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.660817, 15.024157, 17.629263>,  <6.677257, 14.710797, 17.877327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.660817, 15.024157, 17.629263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345408, 0.593557, 0.726899,
		0.937552, -0.184333, -0.294987,
		-0.041101, 0.783397, -0.620161,
		6.648487, 15.259175, 17.443214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.120136, 15.165083, 18.191263>,  <6.677257, 14.710797, 17.877327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.120136, 15.165083, 18.191263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.977154, 15.417230, 17.915621>,  <6.891365, 15.568518, 17.750237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.977154, 15.417230, 17.915621>,  <7.120136, 15.165083, 18.191263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.977154, 15.417230, 17.915621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417723, 0.767847, 0.485715,
		0.835305, -0.114233, -0.537789,
		-0.357455, 0.630367, -0.689104,
		6.869917, 15.606339, 17.708889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.719534, 15.622602, 18.038477>,  <7.120136, 15.165083, 18.191263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.719534, 15.622602, 18.038477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.373397, 15.791353, 17.930256>,  <7.165715, 15.892605, 17.865322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.373397, 15.791353, 17.930256>,  <7.719534, 15.622602, 18.038477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.373397, 15.791353, 17.930256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278775, 0.853789, 0.439692,
		0.416493, 0.305061, -0.856429,
		-0.865342, 0.421880, -0.270554,
		7.113794, 15.917917, 17.849091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.898629, 16.235516, 17.818701>,  <7.719534, 15.622602, 18.038477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.898629, 16.235516, 17.818701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.511802, 16.285086, 17.907627>,  <7.279706, 16.314827, 17.960983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.511802, 16.285086, 17.907627>,  <7.898629, 16.235516, 17.818701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.511802, 16.285086, 17.907627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205202, 0.896364, 0.392968,
		-0.150578, 0.425646, -0.892274,
		-0.967067, 0.123924, 0.222316,
		7.221682, 16.322264, 17.974321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.681814, 16.937826, 17.505844>,  <7.898629, 16.235516, 17.818701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.681814, 16.937826, 17.505844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.429784, 16.843813, 17.801889>,  <7.278566, 16.787405, 17.979517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.429784, 16.843813, 17.801889>,  <7.681814, 16.937826, 17.505844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.429784, 16.843813, 17.801889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141139, 0.902560, 0.406774,
		-0.763601, 0.360757, -0.535508,
		-0.630074, -0.235032, 0.740112,
		7.240762, 16.773304, 18.023924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.257589, 17.458096, 17.550079>,  <7.681814, 16.937826, 17.505844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.257589, 17.458096, 17.550079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.205798, 17.299450, 17.913603>,  <7.174723, 17.204264, 18.131718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.205798, 17.299450, 17.913603>,  <7.257589, 17.458096, 17.550079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.205798, 17.299450, 17.913603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203996, 0.886265, 0.415837,
		-0.970372, 0.239235, -0.033844,
		-0.129478, -0.396612, 0.908809,
		7.166955, 17.180466, 18.186245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.939251, 18.012005, 17.985367>,  <7.257589, 17.458096, 17.550079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.939251, 18.012005, 17.985367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.049634, 17.749479, 18.266251>,  <7.115863, 17.591963, 18.434782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.049634, 17.749479, 18.266251>,  <6.939251, 18.012005, 17.985367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.049634, 17.749479, 18.266251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310336, 0.752289, 0.581165,
		-0.909693, 0.057546, 0.411276,
		0.275955, -0.656315, 0.702211,
		7.132420, 17.552586, 18.476913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.633809, 18.272755, 18.647451>,  <6.939251, 18.012005, 17.985367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.633809, 18.272755, 18.647451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.943595, 18.028181, 18.712387>,  <7.129467, 17.881437, 18.751348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.943595, 18.028181, 18.712387>,  <6.633809, 18.272755, 18.647451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.943595, 18.028181, 18.712387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476364, 0.732503, 0.486330,
		-0.416272, -0.299313, 0.858562,
		0.774464, -0.611434, 0.162339,
		7.175934, 17.844751, 18.761089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.770675, 18.230829, 19.414440>,  <6.633809, 18.272755, 18.647451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.770675, 18.230829, 19.414440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.105339, 18.142540, 19.213928>,  <7.306138, 18.089567, 19.093622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.105339, 18.142540, 19.213928>,  <6.770675, 18.230829, 19.414440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.105339, 18.142540, 19.213928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520942, 0.603348, 0.603813,
		0.169170, -0.766324, 0.619782,
		0.836661, -0.220723, -0.501279,
		7.356337, 18.076323, 19.063545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.261958, 18.202497, 19.961246>,  <6.770675, 18.230829, 19.414440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.261958, 18.202497, 19.961246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.469930, 18.236347, 19.621244>,  <7.594713, 18.256657, 19.417242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.469930, 18.236347, 19.621244>,  <7.261958, 18.202497, 19.961246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.469930, 18.236347, 19.621244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731356, 0.470035, 0.494151,
		0.441351, -0.878582, 0.182494,
		0.519930, 0.084626, -0.850006,
		7.625909, 18.261734, 19.366243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.989174, 17.986414, 20.124186>,  <7.261958, 18.202497, 19.961246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.989174, 17.986414, 20.124186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.993957, 18.222607, 19.801401>,  <7.996827, 18.364323, 19.607731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.993957, 18.222607, 19.801401>,  <7.989174, 17.986414, 20.124186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.993957, 18.222607, 19.801401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584528, 0.650643, 0.484758,
		0.811285, -0.477489, -0.337373,
		0.011957, 0.590481, -0.806963,
		7.997544, 18.399752, 19.559313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.698210, 18.203966, 20.087296>,  <7.989174, 17.986414, 20.124186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.698210, 18.203966, 20.087296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.548074, 18.461094, 19.820192>,  <8.457993, 18.615370, 19.659929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.548074, 18.461094, 19.820192>,  <8.698210, 18.203966, 20.087296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.548074, 18.461094, 19.820192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629852, 0.705429, 0.325049,
		0.680005, -0.298585, -0.669657,
		-0.375340, 0.642820, -0.667760,
		8.435472, 18.653940, 19.619865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.260019, 18.496498, 19.657824>,  <8.698210, 18.203966, 20.087296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.260019, 18.496498, 19.657824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.969544, 18.770876, 19.639347>,  <8.795259, 18.935503, 19.628262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.969544, 18.770876, 19.639347>,  <9.260019, 18.496498, 19.657824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.969544, 18.770876, 19.639347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646135, 0.703908, 0.294996,
		0.234866, 0.184376, -0.954381,
		-0.726187, 0.685944, -0.046192,
		8.751688, 18.976660, 19.625490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.621846, 19.084188, 19.314390>,  <9.260019, 18.496498, 19.657824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.621846, 19.084188, 19.314390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.285928, 19.207815, 19.492926>,  <9.084376, 19.281990, 19.600048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.285928, 19.207815, 19.492926>,  <9.621846, 19.084188, 19.314390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.285928, 19.207815, 19.492926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455862, 0.847929, 0.270568,
		-0.294842, 0.430692, -0.852979,
		-0.839796, 0.309066, 0.446341,
		9.033989, 19.300535, 19.626827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.677135, 19.818516, 19.284615>,  <9.621846, 19.084188, 19.314390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.677135, 19.818516, 19.284615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.421538, 19.752962, 19.585238>,  <9.268181, 19.713631, 19.765612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.421538, 19.752962, 19.585238>,  <9.677135, 19.818516, 19.284615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.421538, 19.752962, 19.585238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330845, 0.823498, 0.460861,
		-0.694431, 0.543134, -0.471987,
		-0.638989, -0.163882, 0.751555,
		9.229841, 19.703798, 19.810703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.376904, 20.467051, 19.287540>,  <9.677135, 19.818516, 19.284615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.376904, 20.467051, 19.287540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.316084, 20.265709, 19.627779>,  <9.279592, 20.144903, 19.831923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.316084, 20.265709, 19.627779>,  <9.376904, 20.467051, 19.287540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.316084, 20.265709, 19.627779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413549, 0.749248, 0.517304,
		-0.897696, 0.430420, 0.094238,
		-0.152051, -0.503354, 0.850597,
		9.270469, 20.114702, 19.882957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.064585, 20.941154, 19.825556>,  <9.376904, 20.467051, 19.287540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.064585, 20.941154, 19.825556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.226710, 20.639532, 20.032290>,  <9.323985, 20.458559, 20.156330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.226710, 20.639532, 20.032290>,  <9.064585, 20.941154, 19.825556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.226710, 20.639532, 20.032290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451175, 0.656704, 0.604302,
		-0.795086, -0.011748, 0.606383,
		0.405313, -0.754057, 0.516835,
		9.348304, 20.413315, 20.187340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.119661, 21.227613, 20.514364>,  <9.064585, 20.941154, 19.825556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.119661, 21.227613, 20.514364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353195, 20.903454, 20.494791>,  <9.493316, 20.708958, 20.483047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353195, 20.903454, 20.494791>,  <9.119661, 21.227613, 20.514364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.353195, 20.903454, 20.494791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706003, 0.477019, 0.523461,
		-0.400871, -0.340160, 0.850643,
		0.583834, -0.810397, -0.048931,
		9.528345, 20.660336, 20.480112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.253695, 20.856634, 21.197613>,  <9.119661, 21.227613, 20.514364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.253695, 20.856634, 21.197613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.546801, 20.838539, 20.926022>,  <9.722664, 20.827682, 20.763067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.546801, 20.838539, 20.926022>,  <9.253695, 20.856634, 21.197613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.546801, 20.838539, 20.926022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542372, 0.641418, 0.542601,
		0.410963, -0.765857, 0.494542,
		0.732763, -0.045237, -0.678978,
		9.766629, 20.824968, 20.722328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.848454, 20.273615, 21.228642>,  <9.253695, 20.856634, 21.197613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.848454, 20.273615, 21.228642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.895720, 20.654451, 21.115816>,  <9.924079, 20.882954, 21.048120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.895720, 20.654451, 21.115816>,  <9.848454, 20.273615, 21.228642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.895720, 20.654451, 21.115816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215276, 0.252737, 0.943282,
		0.969378, -0.172185, -0.175097,
		0.118165, 0.952091, -0.282065,
		9.931170, 20.940079, 21.031197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452515, 20.661263, 21.354290>,  <9.848454, 20.273615, 21.228642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452515, 20.661263, 21.354290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.821625, 20.539816, 21.449202>,  <11.043091, 20.466948, 21.506149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.821625, 20.539816, 21.449202>,  <10.452515, 20.661263, 21.354290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.821625, 20.539816, 21.449202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048534, 0.702447, 0.710080,
		-0.382268, -0.643728, 0.662937,
		0.922776, -0.303616, 0.237280,
		11.098457, 20.448730, 21.520386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.466917, 20.278412, 21.961571>,  <10.452515, 20.661263, 21.354290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.466917, 20.278412, 21.961571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.817536, 20.468628, 21.931845>,  <11.027908, 20.582758, 21.914009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.817536, 20.468628, 21.931845>,  <10.466917, 20.278412, 21.961571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.817536, 20.468628, 21.931845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156581, 0.427740, 0.890236,
		0.455139, -0.768695, 0.449395,
		0.876545, 0.475548, -0.074318,
		11.080502, 20.611290, 21.909550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.188156, 19.870794, 22.157049>,  <10.466917, 20.278412, 21.961571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.188156, 19.870794, 22.157049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.869741, 19.704920, 22.333393>,  <10.678693, 19.605394, 22.439199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.869741, 19.704920, 22.333393>,  <11.188156, 19.870794, 22.157049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.869741, 19.704920, 22.333393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496279, -0.864163, 0.083245,
		0.346455, 0.285056, 0.893707,
		-0.796037, -0.414687, 0.440861,
		10.630930, 19.580513, 22.465651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.295198, 19.565571, 22.863945>,  <11.188156, 19.870794, 22.157049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.295198, 19.565571, 22.863945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.010977, 19.390308, 22.643715>,  <10.840444, 19.285151, 22.511578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.010977, 19.390308, 22.643715>,  <11.295198, 19.565571, 22.863945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.010977, 19.390308, 22.643715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597426, -0.789057, -0.143078,
		-0.371745, -0.430592, 0.822433,
		-0.710555, -0.438155, -0.550575,
		10.797811, 19.258862, 22.478542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.046979, 19.590208, 22.824526>,  <11.295198, 19.565571, 22.863945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.046979, 19.590208, 22.824526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334554, 19.425150, 22.600792>,  <12.507099, 19.326115, 22.466553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334554, 19.425150, 22.600792>,  <12.046979, 19.590208, 22.824526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.334554, 19.425150, 22.600792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682352, -0.265740, -0.681013,
		0.132379, 0.871268, -0.472619,
		0.718938, -0.412644, -0.559333,
		12.550235, 19.301357, 22.432993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.038108, 19.818199, 22.049248>,  <12.046979, 19.590208, 22.824526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.038108, 19.818199, 22.049248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.157363, 19.447500, 22.140680>,  <12.228916, 19.225080, 22.195539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.157363, 19.447500, 22.140680>,  <12.038108, 19.818199, 22.049248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.157363, 19.447500, 22.140680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809418, -0.372386, -0.454060,
		0.505920, -0.049646, -0.861150,
		0.298138, -0.926749, 0.228582,
		12.246804, 19.169476, 22.209255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.042311, 19.314280, 21.513861>,  <12.038108, 19.818199, 22.049248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.042311, 19.314280, 21.513861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.977496, 19.096764, 21.843233>,  <11.938607, 18.966253, 22.040855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.977496, 19.096764, 21.843233>,  <12.042311, 19.314280, 21.513861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.977496, 19.096764, 21.843233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798601, -0.417895, -0.433128,
		0.579638, -0.727774, -0.366558,
		-0.162037, -0.543791, 0.823429,
		11.928885, 18.933626, 22.090261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106725, 18.583195, 21.488934>,  <12.042311, 19.314280, 21.513861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.106725, 18.583195, 21.488934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829922, 18.739019, 21.732037>,  <11.663839, 18.832514, 21.877897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829922, 18.739019, 21.732037>,  <12.106725, 18.583195, 21.488934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829922, 18.739019, 21.732037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711323, -0.511489, -0.482078,
		0.123063, -0.765913, 0.631057,
		-0.692008, 0.389559, 0.607756,
		11.622319, 18.855886, 21.914364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.695491, 18.132717, 22.067923>,  <12.106725, 18.583195, 21.488934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.695491, 18.132717, 22.067923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.454428, 18.409412, 21.908775>,  <11.309790, 18.575430, 21.813286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.454428, 18.409412, 21.908775>,  <11.695491, 18.132717, 22.067923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.454428, 18.409412, 21.908775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600470, -0.721477, -0.344828,
		-0.525585, 0.031095, 0.850173,
		-0.602658, 0.691740, -0.397869,
		11.273630, 18.616934, 21.789415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.950241, 18.024872, 22.290785>,  <11.695491, 18.132717, 22.067923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.950241, 18.024872, 22.290785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.957680, 18.209873, 21.936216>,  <10.962143, 18.320875, 21.723475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.957680, 18.209873, 21.936216>,  <10.950241, 18.024872, 22.290785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.957680, 18.209873, 21.936216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554476, -0.732980, -0.394077,
		-0.831992, 0.498827, 0.242818,
		0.018596, 0.462505, -0.886421,
		10.963259, 18.348625, 21.670290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.289820, 17.910841, 21.997093>,  <10.950241, 18.024872, 22.290785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.289820, 17.910841, 21.997093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.495779, 18.014585, 21.670263>,  <10.619354, 18.076832, 21.474165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.495779, 18.014585, 21.670263>,  <10.289820, 17.910841, 21.997093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.495779, 18.014585, 21.670263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509922, -0.673511, -0.535128,
		-0.689101, 0.692181, -0.214535,
		0.514897, 0.259361, -0.817076,
		10.650249, 18.092394, 21.425140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.735866, 17.881670, 21.560205>,  <10.289820, 17.910841, 21.997093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.735866, 17.881670, 21.560205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.053387, 17.890030, 21.317080>,  <10.243899, 17.895046, 21.171204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.053387, 17.890030, 21.317080>,  <9.735866, 17.881670, 21.560205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.053387, 17.890030, 21.317080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409020, -0.721283, -0.558976,
		-0.450089, 0.692325, -0.564008,
		0.793803, 0.020898, -0.607816,
		10.291528, 17.896299, 21.134735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.410075, 17.967752, 20.762161>,  <9.735866, 17.881670, 21.560205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.410075, 17.967752, 20.762161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.783906, 17.834242, 20.712915>,  <10.008204, 17.754135, 20.683367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.783906, 17.834242, 20.712915>,  <9.410075, 17.967752, 20.762161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.783906, 17.834242, 20.712915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329063, -0.679507, -0.655735,
		0.135210, 0.653348, -0.744886,
		0.934578, -0.333776, -0.123116,
		10.064280, 17.734110, 20.675982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.506320, 17.928413, 20.074181>,  <9.410075, 17.967752, 20.762161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.506320, 17.928413, 20.074181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.776999, 17.678677, 20.230274>,  <9.939405, 17.528835, 20.323931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.776999, 17.678677, 20.230274>,  <9.506320, 17.928413, 20.074181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.776999, 17.678677, 20.230274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189080, -0.659609, -0.727437,
		0.711570, 0.418468, -0.564405,
		0.676696, -0.624340, 0.390234,
		9.980007, 17.491375, 20.347345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.969449, 17.698360, 19.537630>,  <9.506320, 17.928413, 20.074181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.969449, 17.698360, 19.537630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.957424, 17.435774, 19.839132>,  <9.950210, 17.278221, 20.020033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.957424, 17.435774, 19.839132>,  <9.969449, 17.698360, 19.537630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.957424, 17.435774, 19.839132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163576, -0.740699, -0.651619,
		0.986073, -0.142885, -0.085116,
		-0.030061, -0.656467, 0.753755,
		9.948406, 17.238834, 20.065258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.390580, 17.103670, 19.295931>,  <9.969449, 17.698360, 19.537630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.390580, 17.103670, 19.295931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149345, 16.959848, 19.580748>,  <10.004604, 16.873554, 19.751638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149345, 16.959848, 19.580748>,  <10.390580, 17.103670, 19.295931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.149345, 16.959848, 19.580748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156197, -0.822136, -0.547444,
		0.782233, -0.441375, 0.439658,
		-0.603087, -0.359556, 0.712043,
		9.968419, 16.851982, 19.794361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.488935, 16.390884, 19.288200>,  <10.390580, 17.103670, 19.295931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.488935, 16.390884, 19.288200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.171900, 16.409353, 19.531403>,  <9.981678, 16.420435, 19.677324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.171900, 16.409353, 19.531403>,  <10.488935, 16.390884, 19.288200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.171900, 16.409353, 19.531403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396520, -0.796531, -0.456411,
		0.463221, -0.602832, 0.649630,
		-0.792589, 0.046172, 0.608005,
		9.934123, 16.423204, 19.713804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.497077, 15.718494, 19.638126>,  <10.488935, 16.390884, 19.288200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.497077, 15.718494, 19.638126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.121819, 15.853806, 19.667650>,  <9.896664, 15.934993, 19.685364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.121819, 15.853806, 19.667650>,  <10.497077, 15.718494, 19.638126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.121819, 15.853806, 19.667650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345248, -0.897870, -0.273189,
		-0.026145, -0.281774, 0.959125,
		-0.938147, 0.338278, 0.073807,
		9.840374, 15.955289, 19.689793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.076711, 15.208139, 19.931736>,  <10.497077, 15.718494, 19.638126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.076711, 15.208139, 19.931736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.815115, 15.430652, 19.726660>,  <9.658157, 15.564159, 19.603615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.815115, 15.430652, 19.726660>,  <10.076711, 15.208139, 19.931736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.815115, 15.430652, 19.726660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474241, -0.829478, -0.295062,
		-0.589402, 0.050171, 0.806281,
		-0.653989, 0.556281, -0.512689,
		9.618918, 15.597536, 19.572853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.365708, 14.788430, 20.004656>,  <10.076711, 15.208139, 19.931736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.365708, 14.788430, 20.004656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.352831, 15.050076, 19.702372>,  <9.345104, 15.207064, 19.521002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.352831, 15.050076, 19.702372>,  <9.365708, 14.788430, 20.004656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.352831, 15.050076, 19.702372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576421, -0.629842, -0.520613,
		-0.816519, 0.418847, 0.397321,
		-0.032192, 0.654115, -0.755710,
		9.343173, 15.246311, 19.475658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.632510, 14.732409, 19.767181>,  <9.365708, 14.788430, 20.004656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.632510, 14.732409, 19.767181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.856441, 14.913399, 19.489515>,  <8.990799, 15.021993, 19.322916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.856441, 14.913399, 19.489515>,  <8.632510, 14.732409, 19.767181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.856441, 14.913399, 19.489515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380535, -0.603786, -0.700454,
		-0.736063, 0.656286, -0.165833,
		0.559826, 0.452473, -0.694164,
		9.024388, 15.049141, 19.281267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.235557, 14.696043, 19.093985>,  <8.632510, 14.732409, 19.767181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.235557, 14.696043, 19.093985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.613921, 14.753126, 18.977444>,  <8.840940, 14.787376, 18.907518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.613921, 14.753126, 18.977444>,  <8.235557, 14.696043, 19.093985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.613921, 14.753126, 18.977444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178930, -0.519636, -0.835442,
		-0.270622, 0.842385, -0.465995,
		0.945911, 0.142708, -0.291353,
		8.897695, 14.795938, 18.890038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.094595, 14.772230, 18.411129>,  <8.235557, 14.696043, 19.093985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.094595, 14.772230, 18.411129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.488333, 14.703214, 18.425528>,  <8.724575, 14.661803, 18.434166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.488333, 14.703214, 18.425528>,  <8.094595, 14.772230, 18.411129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.488333, 14.703214, 18.425528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057208, -0.505917, -0.860683,
		0.166714, 0.845149, -0.507868,
		0.984344, -0.172542, 0.035994,
		8.783636, 14.651451, 18.436325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.348861, 15.079803, 17.832884>,  <8.094595, 14.772230, 18.411129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.348861, 15.079803, 17.832884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.609876, 14.796588, 17.940868>,  <8.766484, 14.626659, 18.005659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.609876, 14.796588, 17.940868>,  <8.348861, 15.079803, 17.832884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.609876, 14.796588, 17.940868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051176, -0.314270, -0.947953,
		0.756026, 0.632391, -0.168838,
		0.652537, -0.708037, 0.269959,
		8.805637, 14.584177, 18.021856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.863357, 15.133320, 17.417667>,  <8.348861, 15.079803, 17.832884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.863357, 15.133320, 17.417667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.923729, 14.762575, 17.555157>,  <8.959952, 14.540128, 17.637650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.923729, 14.762575, 17.555157>,  <8.863357, 15.133320, 17.417667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.923729, 14.762575, 17.555157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054826, -0.339322, -0.939071,
		0.987023, 0.160581, -0.000399,
		0.150932, -0.926863, 0.343723,
		8.969008, 14.484516, 17.658274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.471581, 14.849505, 17.087795>,  <8.863357, 15.133320, 17.417667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.471581, 14.849505, 17.087795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.273646, 14.527658, 17.219078>,  <9.154885, 14.334549, 17.297848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.273646, 14.527658, 17.219078>,  <9.471581, 14.849505, 17.087795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.273646, 14.527658, 17.219078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151969, -0.451999, -0.878978,
		0.855593, -0.385075, 0.345944,
		-0.494839, -0.804620, 0.328208,
		9.125195, 14.286271, 17.317541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.873196, 14.310218, 16.784960>,  <9.471581, 14.849505, 17.087795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.873196, 14.310218, 16.784960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.502151, 14.193011, 16.877636>,  <9.279525, 14.122687, 16.933241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.502151, 14.193011, 16.877636>,  <9.873196, 14.310218, 16.784960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.502151, 14.193011, 16.877636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076333, -0.458467, -0.885427,
		0.365667, -0.839017, 0.402912,
		-0.927611, -0.293016, 0.231691,
		9.223868, 14.105106, 16.947144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.824045, 13.692589, 16.371397>,  <9.873196, 14.310218, 16.784960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.824045, 13.692589, 16.371397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.446692, 13.743491, 16.493929>,  <9.220281, 13.774033, 16.567448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.446692, 13.743491, 16.493929>,  <9.824045, 13.692589, 16.371397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.446692, 13.743491, 16.493929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330413, -0.278853, -0.901703,
		-0.029325, -0.951865, 0.305112,
		-0.943381, 0.127256, 0.306331,
		9.163678, 13.781668, 16.585829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.539192, 13.118421, 16.182287>,  <9.824045, 13.692589, 16.371397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.539192, 13.118421, 16.182287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247627, 13.387380, 16.233776>,  <9.072688, 13.548755, 16.264669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247627, 13.387380, 16.233776>,  <9.539192, 13.118421, 16.182287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.247627, 13.387380, 16.233776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353074, -0.208128, -0.912152,
		-0.586538, -0.710326, 0.389113,
		-0.728911, 0.672398, 0.128723,
		9.028954, 13.589099, 16.272392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.866844, 12.912193, 15.860808>,  <9.539192, 13.118421, 16.182287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.866844, 12.912193, 15.860808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.876975, 13.311972, 15.852165>,  <8.883054, 13.551839, 15.846979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.876975, 13.311972, 15.852165>,  <8.866844, 12.912193, 15.860808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.876975, 13.311972, 15.852165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359279, -0.011071, -0.933165,
		-0.932887, 0.031397, 0.358799,
		0.025327, 0.999446, -0.021608,
		8.884573, 13.611805, 15.845683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.560866, 12.858845, 15.371235>,  <8.866844, 12.912193, 15.860808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.560866, 12.858845, 15.371235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.723146, 12.872638, 15.005893>,  <9.820515, 12.880914, 14.786688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.723146, 12.872638, 15.005893>,  <9.560866, 12.858845, 15.371235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.723146, 12.872638, 15.005893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458922, 0.871879, -0.170931,
		0.790441, 0.488506, 0.369547,
		0.405701, 0.034482, -0.913355,
		9.844856, 12.882982, 14.731886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.942313, 13.454616, 15.161913>,  <9.560866, 12.858845, 15.371235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.942313, 13.454616, 15.161913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.802287, 13.335326, 14.806719>,  <9.718271, 13.263752, 14.593602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.802287, 13.335326, 14.806719>,  <9.942313, 13.454616, 15.161913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.802287, 13.335326, 14.806719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318772, 0.929314, -0.186436,
		0.880816, 0.217800, -0.420388,
		-0.350067, -0.298224, -0.887984,
		9.697268, 13.245859, 14.540323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.611263, 13.826895, 15.143845>,  <9.942313, 13.454616, 15.161913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.611263, 13.826895, 15.143845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.892646, 13.543251, 15.124599>,  <11.061475, 13.373065, 15.113052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.892646, 13.543251, 15.124599>,  <10.611263, 13.826895, 15.143845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.892646, 13.543251, 15.124599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632964, -0.594251, -0.496207,
		0.323274, 0.379513, -0.866870,
		0.703456, -0.709109, -0.048113,
		11.103683, 13.330519, 15.110166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.430878, 14.485575, 14.848442>,  <10.611263, 13.826895, 15.143845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.430878, 14.485575, 14.848442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.237187, 14.695709, 15.128312>,  <10.120974, 14.821790, 15.296234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.237187, 14.695709, 15.128312>,  <10.430878, 14.485575, 14.848442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.237187, 14.695709, 15.128312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867375, 0.183268, 0.462681,
		0.114835, 0.830923, -0.544407,
		-0.484225, 0.525337, 0.699676,
		10.091920, 14.853311, 15.338215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.794303, 15.084916, 15.163787>,  <10.430878, 14.485575, 14.848442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.794303, 15.084916, 15.163787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.580730, 14.958996, 15.477683>,  <10.452587, 14.883444, 15.666021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.580730, 14.958996, 15.477683>,  <10.794303, 15.084916, 15.163787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.580730, 14.958996, 15.477683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781960, 0.169216, 0.599920,
		-0.321646, 0.933952, 0.155812,
		-0.533931, -0.314800, 0.784741,
		10.420551, 14.864555, 15.713105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.857638, 15.559070, 15.690707>,  <10.794303, 15.084916, 15.163787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.857638, 15.559070, 15.690707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.744130, 15.229338, 15.886648>,  <10.676025, 15.031499, 16.004213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.744130, 15.229338, 15.886648>,  <10.857638, 15.559070, 15.690707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.744130, 15.229338, 15.886648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595281, 0.249048, 0.763947,
		-0.751741, 0.508386, 0.420035,
		-0.283771, -0.824330, 0.489852,
		10.658998, 14.982038, 16.033604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.713405, 15.675261, 16.282125>,  <10.857638, 15.559070, 15.690707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.713405, 15.675261, 16.282125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.833673, 15.297162, 16.332884>,  <10.905833, 15.070302, 16.363338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.833673, 15.297162, 16.332884>,  <10.713405, 15.675261, 16.282125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.833673, 15.297162, 16.332884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346005, 0.232098, 0.909072,
		-0.888751, -0.229423, 0.396846,
		0.300669, -0.945249, 0.126896,
		10.923873, 15.013587, 16.370953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.584085, 15.427787, 16.980377>,  <10.713405, 15.675261, 16.282125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.584085, 15.427787, 16.980377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894961, 15.220061, 16.838230>,  <11.081488, 15.095426, 16.752941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894961, 15.220061, 16.838230>,  <10.584085, 15.427787, 16.980377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.894961, 15.220061, 16.838230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427587, 0.021497, 0.903718,
		-0.461675, -0.854313, 0.238759,
		0.777191, -0.519314, -0.355369,
		11.128119, 15.064267, 16.731619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.643848, 14.852232, 17.349560>,  <10.584085, 15.427787, 16.980377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.643848, 14.852232, 17.349560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.023928, 14.874949, 17.226988>,  <11.251975, 14.888578, 17.153444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.023928, 14.874949, 17.226988>,  <10.643848, 14.852232, 17.349560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.023928, 14.874949, 17.226988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311430, -0.209919, 0.926793,
		-0.011690, -0.976068, -0.217151,
		0.950197, 0.056793, -0.306431,
		11.308987, 14.891986, 17.135057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953549, 14.271051, 17.697792>,  <10.643848, 14.852232, 17.349560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953549, 14.271051, 17.697792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.250927, 14.526041, 17.616880>,  <11.429354, 14.679035, 17.568335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.250927, 14.526041, 17.616880>,  <10.953549, 14.271051, 17.697792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.250927, 14.526041, 17.616880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383904, -0.159108, 0.909562,
		0.547639, -0.753863, -0.363017,
		0.743444, 0.637475, -0.202277,
		11.473960, 14.717283, 17.556198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.513942, 14.010027, 18.064188>,  <10.953549, 14.271051, 17.697792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.513942, 14.010027, 18.064188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.614534, 14.391290, 17.996956>,  <11.674890, 14.620048, 17.956617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.614534, 14.391290, 17.996956>,  <11.513942, 14.010027, 18.064188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.614534, 14.391290, 17.996956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557790, -0.000810, 0.829982,
		0.790966, -0.302477, -0.531864,
		0.251481, 0.953156, -0.168078,
		11.689979, 14.677237, 17.946533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.276014, 13.978225, 18.237627>,  <11.513942, 14.010027, 18.064188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.276014, 13.978225, 18.237627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129091, 14.349601, 18.259830>,  <12.040937, 14.572427, 18.273153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129091, 14.349601, 18.259830>,  <12.276014, 13.978225, 18.237627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.129091, 14.349601, 18.259830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509086, 0.150738, 0.847413,
		0.778406, 0.339522, -0.528024,
		-0.367309, 0.928441, 0.055511,
		12.018899, 14.628133, 18.276484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.838290, 14.369896, 18.463495>,  <12.276014, 13.978225, 18.237627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.838290, 14.369896, 18.463495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.532111, 14.611049, 18.553493>,  <12.348404, 14.755740, 18.607492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.532111, 14.611049, 18.553493>,  <12.838290, 14.369896, 18.463495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.532111, 14.611049, 18.553493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477913, 0.298461, 0.826148,
		0.430917, 0.739902, -0.516581,
		-0.765447, 0.602882, 0.224997,
		12.302477, 14.791913, 18.620993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.219052, 14.859909, 18.627291>,  <12.838290, 14.369896, 18.463495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.219052, 14.859909, 18.627291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.856404, 14.965630, 18.758858>,  <12.638816, 15.029062, 18.837797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.856404, 14.965630, 18.758858>,  <13.219052, 14.859909, 18.627291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.856404, 14.965630, 18.758858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415890, 0.428105, 0.802347,
		0.071250, 0.864217, -0.498049,
		-0.906619, 0.264301, 0.328917,
		12.584418, 15.044920, 18.857533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.300064, 15.485082, 18.864695>,  <13.219052, 14.859909, 18.627291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.300064, 15.485082, 18.864695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.955728, 15.353011, 19.019581>,  <12.749125, 15.273768, 19.112513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.955728, 15.353011, 19.019581>,  <13.300064, 15.485082, 18.864695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.955728, 15.353011, 19.019581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341465, 0.189386, 0.920616,
		-0.377300, 0.924725, -0.050287,
		-0.860840, -0.330177, 0.387217,
		12.697475, 15.253958, 19.135746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.271455, 15.811977, 19.580860>,  <13.300064, 15.485082, 18.864695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.271455, 15.811977, 19.580860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004156, 15.514448, 19.586138>,  <12.843777, 15.335931, 19.589304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004156, 15.514448, 19.586138>,  <13.271455, 15.811977, 19.580860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.004156, 15.514448, 19.586138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106358, -0.077966, 0.991267,
		-0.736297, 0.663815, 0.131212,
		-0.668248, -0.743822, 0.013195,
		12.803681, 15.291302, 19.590096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862949, 15.943308, 20.169395>,  <13.271455, 15.811977, 19.580860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.862949, 15.943308, 20.169395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.808085, 15.558672, 20.074289>,  <12.775167, 15.327890, 20.017225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.808085, 15.558672, 20.074289>,  <12.862949, 15.943308, 20.169395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.808085, 15.558672, 20.074289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244328, -0.265461, 0.932649,
		-0.959943, 0.069828, 0.271354,
		-0.137159, -0.961590, -0.237766,
		12.766937, 15.270195, 20.002960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486746, 15.571478, 20.724350>,  <12.862949, 15.943308, 20.169395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486746, 15.571478, 20.724350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.661021, 15.276551, 20.517839>,  <12.765587, 15.099595, 20.393932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.661021, 15.276551, 20.517839>,  <12.486746, 15.571478, 20.724350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.661021, 15.276551, 20.517839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273222, -0.438180, 0.856358,
		-0.857628, -0.514163, 0.010541,
		0.435689, -0.737316, -0.516276,
		12.791728, 15.055356, 20.362957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.167131, 15.034411, 20.977476>,  <12.486746, 15.571478, 20.724350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.167131, 15.034411, 20.977476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492378, 14.888625, 20.795923>,  <12.687526, 14.801153, 20.686993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492378, 14.888625, 20.795923>,  <12.167131, 15.034411, 20.977476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492378, 14.888625, 20.795923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167647, -0.600064, 0.782187,
		-0.557440, -0.712100, -0.426819,
		0.813115, -0.364468, -0.453882,
		12.736313, 14.779285, 20.659760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197281, 14.297722, 21.087147>,  <12.167131, 15.034411, 20.977476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197281, 14.297722, 21.087147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.576240, 14.403181, 21.014561>,  <12.803615, 14.466456, 20.971008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.576240, 14.403181, 21.014561>,  <12.197281, 14.297722, 21.087147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.576240, 14.403181, 21.014561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303812, -0.562425, 0.769010,
		0.100686, -0.783689, -0.612939,
		0.947397, 0.263647, -0.181466,
		12.860458, 14.482275, 20.960121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.620501, 13.712543, 21.016087>,  <12.197281, 14.297722, 21.087147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.620501, 13.712543, 21.016087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.866793, 14.013765, 21.108852>,  <13.014568, 14.194499, 21.164511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.866793, 14.013765, 21.108852>,  <12.620501, 13.712543, 21.016087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.866793, 14.013765, 21.108852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384006, -0.543786, 0.746215,
		0.688053, -0.370411, -0.624003,
		0.615730, 0.753056, 0.231914,
		13.051512, 14.239682, 21.178427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.147482, 13.366488, 21.166946>,  <12.620501, 13.712543, 21.016087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.147482, 13.366488, 21.166946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212955, 13.740459, 21.292875>,  <13.252238, 13.964843, 21.368433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212955, 13.740459, 21.292875>,  <13.147482, 13.366488, 21.166946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212955, 13.740459, 21.292875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274212, -0.349669, 0.895846,
		0.947637, -0.060305, -0.313603,
		0.163681, 0.934930, 0.314823,
		13.262059, 14.020939, 21.387321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765078, 13.312538, 21.360100>,  <13.147482, 13.366488, 21.166946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765078, 13.312538, 21.360100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617941, 13.627062, 21.558659>,  <13.529658, 13.815776, 21.677794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617941, 13.627062, 21.558659>,  <13.765078, 13.312538, 21.360100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.617941, 13.627062, 21.558659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273774, -0.418585, 0.865930,
		0.888673, 0.454426, -0.061298,
		-0.367843, 0.786310, 0.496395,
		13.507588, 13.862955, 21.707577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.152202, 13.409014, 21.967743>,  <13.765078, 13.312538, 21.360100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.152202, 13.409014, 21.967743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806236, 13.579955, 22.073038>,  <13.598657, 13.682520, 22.136215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806236, 13.579955, 22.073038>,  <14.152202, 13.409014, 21.967743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806236, 13.579955, 22.073038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105845, -0.357370, 0.927946,
		0.490633, 0.830456, 0.263861,
		-0.864914, 0.427353, 0.263238,
		13.546762, 13.708161, 22.152010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.231153, 13.491240, 22.712790>,  <14.152202, 13.409014, 21.967743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.231153, 13.491240, 22.712790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.848805, 13.580403, 22.636234>,  <13.619397, 13.633902, 22.590302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.848805, 13.580403, 22.636234>,  <14.231153, 13.491240, 22.712790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.848805, 13.580403, 22.636234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264771, -0.371228, 0.889992,
		0.127338, 0.901389, 0.413864,
		-0.955867, 0.222909, -0.191390,
		13.562045, 13.647276, 22.578817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.003546, 13.941804, 23.304462>,  <14.231153, 13.491240, 22.712790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.003546, 13.941804, 23.304462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.704032, 13.742729, 23.129360>,  <13.524323, 13.623284, 23.024300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.704032, 13.742729, 23.129360>,  <14.003546, 13.941804, 23.304462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.704032, 13.742729, 23.129360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211305, -0.446747, 0.869348,
		-0.628229, 0.743454, 0.229354,
		-0.748784, -0.497687, -0.437756,
		13.479397, 13.593423, 22.998034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.597693, 13.999952, 23.748468>,  <14.003546, 13.941804, 23.304462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.597693, 13.999952, 23.748468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414391, 13.709702, 23.543152>,  <13.304409, 13.535551, 23.419962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414391, 13.709702, 23.543152>,  <13.597693, 13.999952, 23.748468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414391, 13.709702, 23.543152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224381, -0.464345, 0.856759,
		-0.860031, 0.507789, 0.049973,
		-0.458258, -0.725626, -0.513290,
		13.276913, 13.492014, 23.389166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.947100, 13.929313, 24.175459>,  <13.597693, 13.999952, 23.748468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.947100, 13.929313, 24.175459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.982600, 13.602674, 23.947323>,  <13.003901, 13.406690, 23.810440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.982600, 13.602674, 23.947323>,  <12.947100, 13.929313, 24.175459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.982600, 13.602674, 23.947323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548302, -0.518091, 0.656466,
		-0.831558, 0.254458, -0.493723,
		0.088750, -0.816599, -0.570342,
		13.009225, 13.357694, 23.776220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.282068, 13.596806, 24.193777>,  <12.947100, 13.929313, 24.175459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.282068, 13.596806, 24.193777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574177, 13.335980, 24.112272>,  <12.749442, 13.179485, 24.063370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574177, 13.335980, 24.112272>,  <12.282068, 13.596806, 24.193777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574177, 13.335980, 24.112272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340256, -0.605805, 0.719184,
		-0.592379, -0.455880, -0.664274,
		0.730283, -0.652053, -0.203750,
		12.793259, 13.140362, 24.051144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.019888, 13.045653, 24.425346>,  <12.282068, 13.596806, 24.193777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.019888, 13.045653, 24.425346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.405909, 12.950326, 24.381746>,  <12.637521, 12.893129, 24.355587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.405909, 12.950326, 24.381746>,  <12.019888, 13.045653, 24.425346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.405909, 12.950326, 24.381746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047041, -0.566709, 0.822574,
		-0.257804, -0.788699, -0.558114,
		0.965051, -0.238317, -0.108999,
		12.695424, 12.878831, 24.349047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.038405, 12.339003, 24.488510>,  <12.019888, 13.045653, 24.425346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.038405, 12.339003, 24.488510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.418920, 12.447513, 24.547119>,  <12.647228, 12.512618, 24.582285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.418920, 12.447513, 24.547119>,  <12.038405, 12.339003, 24.488510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.418920, 12.447513, 24.547119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065422, -0.642014, 0.763897,
		0.301294, -0.717098, -0.628485,
		0.951285, 0.271274, 0.146521,
		12.704305, 12.528894, 24.591076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.376390, 11.701433, 24.594513>,  <12.038405, 12.339003, 24.488510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.376390, 11.701433, 24.594513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.627149, 11.967264, 24.757162>,  <12.777603, 12.126762, 24.854752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.627149, 11.967264, 24.757162>,  <12.376390, 11.701433, 24.594513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.627149, 11.967264, 24.757162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126275, -0.601679, 0.788694,
		0.768803, -0.443082, -0.461108,
		0.626895, 0.664576, 0.406622,
		12.815217, 12.166637, 24.879148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995639, 11.308679, 24.781235>,  <12.376390, 11.701433, 24.594513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995639, 11.308679, 24.781235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.969957, 11.650507, 24.987375>,  <12.954549, 11.855604, 25.111059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.969957, 11.650507, 24.987375>,  <12.995639, 11.308679, 24.781235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969957, 11.650507, 24.987375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015229, -0.515518, 0.856743,
		0.997821, 0.062854, 0.020084,
		-0.064203, 0.854570, 0.515352,
		12.950696, 11.906878, 25.141981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.516788, 11.328399, 25.204172>,  <12.995639, 11.308679, 24.781235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.516788, 11.328399, 25.204172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247445, 11.571989, 25.371857>,  <13.085839, 11.718143, 25.472467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247445, 11.571989, 25.371857>,  <13.516788, 11.328399, 25.204172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247445, 11.571989, 25.371857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110291, -0.477937, 0.871442,
		0.731045, 0.633027, 0.254658,
		-0.673357, 0.608977, 0.419211,
		13.045438, 11.754683, 25.497620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925469, 11.494896, 25.742252>,  <13.516788, 11.328399, 25.204172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925469, 11.494896, 25.742252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.543008, 11.592498, 25.807035>,  <13.313531, 11.651059, 25.845905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.543008, 11.592498, 25.807035>,  <13.925469, 11.494896, 25.742252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.543008, 11.592498, 25.807035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058263, -0.383481, 0.921709,
		0.287010, 0.890732, 0.352450,
		-0.956154, 0.244005, 0.161959,
		13.256162, 11.665699, 25.855623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820126, 11.744689, 26.433964>,  <13.925469, 11.494896, 25.742252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.820126, 11.744689, 26.433964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.441209, 11.669726, 26.330029>,  <13.213859, 11.624749, 26.267668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.441209, 11.669726, 26.330029>,  <13.820126, 11.744689, 26.433964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.441209, 11.669726, 26.330029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177675, -0.367585, 0.912860,
		-0.266589, 0.910912, 0.314912,
		-0.947292, -0.187406, -0.259840,
		13.157022, 11.613504, 26.252077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.408710, 11.947963, 27.041891>,  <13.820126, 11.744689, 26.433964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.408710, 11.947963, 27.041891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.196621, 11.684583, 26.828234>,  <13.069367, 11.526555, 26.700039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.196621, 11.684583, 26.828234>,  <13.408710, 11.947963, 27.041891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.196621, 11.684583, 26.828234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043725, -0.607917, 0.792796,
		-0.846730, 0.443714, 0.293541,
		-0.530223, -0.658449, -0.534143,
		13.037554, 11.487048, 26.667992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.782580, 11.840046, 27.408863>,  <13.408710, 11.947963, 27.041891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.782580, 11.840046, 27.408863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.844535, 11.536719, 27.155577>,  <12.881707, 11.354723, 27.003605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.844535, 11.536719, 27.155577>,  <12.782580, 11.840046, 27.408863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.844535, 11.536719, 27.155577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021770, -0.643417, 0.765207,
		-0.987693, -0.104734, -0.116164,
		0.154885, -0.758318, -0.633218,
		12.891001, 11.309224, 26.965611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.334753, 11.408754, 27.535534>,  <12.782580, 11.840046, 27.408863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.334753, 11.408754, 27.535534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593736, 11.165071, 27.352377>,  <12.749125, 11.018862, 27.242483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593736, 11.165071, 27.352377>,  <12.334753, 11.408754, 27.535534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.593736, 11.165071, 27.352377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125876, -0.678062, 0.724146,
		-0.751635, -0.411216, -0.515701,
		0.647457, -0.609208, -0.457892,
		12.787973, 10.982309, 27.215010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.015657, 10.750721, 27.620472>,  <12.334753, 11.408754, 27.535534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.015657, 10.750721, 27.620472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408142, 10.687152, 27.576714>,  <12.643633, 10.649011, 27.550459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408142, 10.687152, 27.576714>,  <12.015657, 10.750721, 27.620472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.408142, 10.687152, 27.576714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007290, -0.597135, 0.802108,
		-0.192797, -0.786240, -0.587074,
		0.981212, -0.158923, -0.109394,
		12.702505, 10.639475, 27.543896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.178273, 10.035288, 27.716587>,  <12.015657, 10.750721, 27.620472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.178273, 10.035288, 27.716587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.540964, 10.199557, 27.754942>,  <12.758578, 10.298119, 27.777956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.540964, 10.199557, 27.754942>,  <12.178273, 10.035288, 27.716587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540964, 10.199557, 27.754942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146015, -0.519032, 0.842191,
		0.395634, -0.749635, -0.530585,
		0.906727, 0.410673, 0.095889,
		12.812983, 10.322759, 27.783709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.626597, 9.509405, 27.814964>,  <12.178273, 10.035288, 27.716587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.626597, 9.509405, 27.814964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792815, 9.835512, 27.976290>,  <12.892546, 10.031177, 28.073086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792815, 9.835512, 27.976290>,  <12.626597, 9.509405, 27.814964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792815, 9.835512, 27.976290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086224, -0.476722, 0.874815,
		0.905477, -0.328749, -0.268394,
		0.415543, 0.815267, 0.403315,
		12.917479, 10.080092, 28.097284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065063, 9.204270, 28.287870>,  <12.626597, 9.509405, 27.814964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065063, 9.204270, 28.287870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.070998, 9.585256, 28.409588>,  <13.074559, 9.813847, 28.482618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.070998, 9.585256, 28.409588>,  <13.065063, 9.204270, 28.287870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.070998, 9.585256, 28.409588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106810, -0.304094, 0.946635,
		0.994169, 0.018458, -0.106244,
		0.014836, 0.952463, 0.304292,
		13.075449, 9.870995, 28.500875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.655276, 9.276864, 28.735203>,  <13.065063, 9.204270, 28.287870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.655276, 9.276864, 28.735203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.398186, 9.568674, 28.828753>,  <13.243932, 9.743760, 28.884882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.398186, 9.568674, 28.828753>,  <13.655276, 9.276864, 28.735203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.398186, 9.568674, 28.828753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021240, -0.288193, 0.957337,
		0.765801, 0.620273, 0.169734,
		-0.642726, 0.729524, 0.233873,
		13.205368, 9.787532, 28.898914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.968695, 9.677109, 29.259182>,  <13.655276, 9.276864, 28.735203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.968695, 9.677109, 29.259182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.575094, 9.742867, 29.286646>,  <13.338934, 9.782323, 29.303123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.575094, 9.742867, 29.286646>,  <13.968695, 9.677109, 29.259182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.575094, 9.742867, 29.286646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008904, -0.339513, 0.940559,
		0.177935, 0.926123, 0.332618,
		-0.984002, 0.164397, 0.068658,
		13.279894, 9.792187, 29.307243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.824480, 9.897256, 29.932129>,  <13.968695, 9.677109, 29.259182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.824480, 9.897256, 29.932129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.471517, 9.753332, 29.810875>,  <13.259739, 9.666978, 29.738123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.471517, 9.753332, 29.810875>,  <13.824480, 9.897256, 29.932129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471517, 9.753332, 29.810875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187480, -0.322033, 0.927979,
		-0.431516, 0.875689, 0.216708,
		-0.882409, -0.359809, -0.303136,
		13.206794, 9.645390, 29.719934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.427344, 9.922801, 30.527769>,  <13.824480, 9.897256, 29.932129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.427344, 9.922801, 30.527769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.232053, 9.668202, 30.288937>,  <13.114878, 9.515443, 30.145638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.232053, 9.668202, 30.288937>,  <13.427344, 9.922801, 30.527769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.232053, 9.668202, 30.288937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037238, -0.668346, 0.742918,
		-0.871921, 0.384948, 0.302603,
		-0.488228, -0.636497, -0.597080,
		13.085585, 9.477253, 30.109812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.825745, 9.633163, 30.988247>,  <13.427344, 9.922801, 30.527769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.825745, 9.633163, 30.988247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.934835, 9.411118, 30.673931>,  <13.000290, 9.277890, 30.485342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.934835, 9.411118, 30.673931>,  <12.825745, 9.633163, 30.988247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.934835, 9.411118, 30.673931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080038, -0.800831, 0.593518,
		-0.958756, -0.224761, -0.173979,
		0.272727, -0.555114, -0.785792,
		13.016654, 9.244583, 30.438194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.364964, 8.990956, 30.951662>,  <12.825745, 9.633163, 30.988247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.364964, 8.990956, 30.951662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743403, 8.968513, 30.824068>,  <12.970467, 8.955048, 30.747513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743403, 8.968513, 30.824068>,  <12.364964, 8.990956, 30.951662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743403, 8.968513, 30.824068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107960, -0.873922, 0.473925,
		-0.305356, -0.482817, -0.820759,
		0.946098, -0.056107, -0.318983,
		13.027233, 8.951681, 30.728373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.406688, 8.222040, 30.881662>,  <12.364964, 8.990956, 30.951662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.406688, 8.222040, 30.881662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.776616, 8.369696, 30.918415>,  <12.998573, 8.458289, 30.940468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.776616, 8.369696, 30.918415>,  <12.406688, 8.222040, 30.881662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.776616, 8.369696, 30.918415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248136, -0.768477, 0.589806,
		0.288330, -0.522665, -0.802301,
		0.924821, 0.369139, 0.091883,
		13.054063, 8.480437, 30.945980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.906019, 7.788487, 30.553871>,  <12.406688, 8.222040, 30.881662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.906019, 7.788487, 30.553871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.002784, 8.014341, 30.869509>,  <13.060843, 8.149854, 31.058891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.002784, 8.014341, 30.869509>,  <12.906019, 7.788487, 30.553871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.002784, 8.014341, 30.869509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109678, -0.823947, 0.555952,
		0.964080, -0.047944, -0.261249,
		0.241910, 0.564635, 0.789092,
		13.075356, 8.183732, 31.106236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.403046, 7.446009, 30.979237>,  <12.906019, 7.788487, 30.553871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.403046, 7.446009, 30.979237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295012, 7.726025, 31.243660>,  <13.230193, 7.894035, 31.402313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295012, 7.726025, 31.243660>,  <13.403046, 7.446009, 30.979237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.295012, 7.726025, 31.243660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198587, -0.631311, 0.749673,
		0.942135, 0.333751, 0.031487,
		-0.270082, 0.700040, 0.661059,
		13.213988, 7.936037, 31.441978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.994639, 7.551849, 31.369360>,  <13.403046, 7.446009, 30.979237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.994639, 7.551849, 31.369360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.674415, 7.659972, 31.583288>,  <13.482280, 7.724846, 31.711645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.674415, 7.659972, 31.583288>,  <13.994639, 7.551849, 31.369360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.674415, 7.659972, 31.583288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274630, -0.627747, 0.728363,
		0.532614, 0.729978, 0.428316,
		-0.800563, 0.270308, 0.534821,
		13.434246, 7.741065, 31.743734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.871514, 8.211435, 31.062086>,  <13.994639, 7.551849, 31.369360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.871514, 8.211435, 31.062086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164947, 7.949335, 30.989969>,  <14.341006, 7.792074, 30.946699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164947, 7.949335, 30.989969>,  <13.871514, 8.211435, 31.062086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.164947, 7.949335, 30.989969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652807, -0.605652, -0.455004,
		0.188949, 0.451477, -0.872047,
		0.733581, -0.655251, -0.180290,
		14.385021, 7.752759, 30.935883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.068583, 8.145206, 30.323120>,  <13.871514, 8.211435, 31.062086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.068583, 8.145206, 30.323120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068937, 7.839564, 30.581156>,  <14.069149, 7.656179, 30.735977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068937, 7.839564, 30.581156>,  <14.068583, 8.145206, 30.323120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.068937, 7.839564, 30.581156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731499, -0.440344, -0.520582,
		0.681842, -0.471423, -0.559332,
		0.000884, -0.764106, 0.645090,
		14.069202, 7.610332, 30.774683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.304542, 7.611284, 30.009983>,  <14.068583, 8.145206, 30.323120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.304542, 7.611284, 30.009983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062387, 7.516529, 30.313929>,  <13.917093, 7.459676, 30.496296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062387, 7.516529, 30.313929>,  <14.304542, 7.611284, 30.009983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062387, 7.516529, 30.313929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724625, -0.230920, -0.649303,
		0.329279, -0.943695, -0.031858,
		-0.605388, -0.236887, 0.759862,
		13.880771, 7.445463, 30.541887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.946589, 6.912670, 30.209475>,  <14.304542, 7.611284, 30.009983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.946589, 6.912670, 30.209475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.638651, 7.064320, 30.004105>,  <13.453889, 7.155310, 29.880882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.638651, 7.064320, 30.004105>,  <13.946589, 6.912670, 30.209475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.638651, 7.064320, 30.004105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463777, -0.220353, -0.858112,
		-0.438466, -0.898727, -0.006192,
		-0.769843, 0.379124, -0.513426,
		13.407698, 7.178058, 29.850077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.879965, 6.409657, 29.650358>,  <13.946589, 6.912670, 30.209475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.879965, 6.409657, 29.650358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.715915, 6.759890, 29.548256>,  <13.617485, 6.970030, 29.486996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.715915, 6.759890, 29.548256>,  <13.879965, 6.409657, 29.650358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.715915, 6.759890, 29.548256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434261, -0.058636, -0.898877,
		-0.802007, -0.479498, -0.356183,
		-0.410124, 0.875582, -0.255254,
		13.592877, 7.022564, 29.471680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.739499, 6.394954, 28.915224>,  <13.879965, 6.409657, 29.650358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.739499, 6.394954, 28.915224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765047, 6.777803, 29.028246>,  <13.780375, 7.007513, 29.096060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765047, 6.777803, 29.028246>,  <13.739499, 6.394954, 28.915224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765047, 6.777803, 29.028246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391814, 0.236348, -0.889169,
		-0.917825, 0.167499, -0.359918,
		0.063869, 0.957123, 0.282555,
		13.784207, 7.064939, 29.113012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.357231, 6.857591, 28.424707>,  <13.739499, 6.394954, 28.915224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.357231, 6.857591, 28.424707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.640296, 7.084643, 28.592999>,  <13.810135, 7.220874, 28.693974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.640296, 7.084643, 28.592999>,  <13.357231, 6.857591, 28.424707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.640296, 7.084643, 28.592999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353720, 0.230853, -0.906415,
		-0.611635, 0.790255, -0.037416,
		0.707662, 0.567630, 0.420727,
		13.852594, 7.254932, 28.719217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.272516, 7.590715, 28.136658>,  <13.357231, 6.857591, 28.424707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.272516, 7.590715, 28.136658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641511, 7.571839, 28.289911>,  <13.862907, 7.560514, 28.381865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641511, 7.571839, 28.289911>,  <13.272516, 7.590715, 28.136658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641511, 7.571839, 28.289911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345917, 0.541605, -0.766163,
		-0.171353, 0.839308, 0.515946,
		0.922486, -0.047190, 0.383136,
		13.918257, 7.557683, 28.404852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.453618, 8.269492, 28.248566>,  <13.272516, 7.590715, 28.136658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.453618, 8.269492, 28.248566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.789487, 8.054472, 28.217606>,  <13.991008, 7.925460, 28.199030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.789487, 8.054472, 28.217606>,  <13.453618, 8.269492, 28.248566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.789487, 8.054472, 28.217606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319658, 0.604393, -0.729745,
		0.439056, 0.588004, 0.679324,
		0.839671, -0.537551, -0.077402,
		14.041389, 7.893207, 28.194386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.053976, 8.710846, 28.312569>,  <13.453618, 8.269492, 28.248566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.053976, 8.710846, 28.312569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.209632, 8.379952, 28.150455>,  <14.303025, 8.181417, 28.053186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.209632, 8.379952, 28.150455>,  <14.053976, 8.710846, 28.312569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.209632, 8.379952, 28.150455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514758, 0.560137, -0.649054,
		0.763934, 0.043949, 0.643796,
		0.389140, -0.827234, -0.405284,
		14.326374, 8.131783, 28.028870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815002, 8.727695, 28.365602>,  <14.053976, 8.710846, 28.312569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815002, 8.727695, 28.365602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.719262, 8.483130, 28.063906>,  <14.661818, 8.336390, 27.882887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.719262, 8.483130, 28.063906>,  <14.815002, 8.727695, 28.365602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719262, 8.483130, 28.063906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758508, 0.367193, -0.538363,
		0.606116, -0.700957, 0.375875,
		-0.239351, -0.611415, -0.754243,
		14.647457, 8.299706, 27.837633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496146, 8.594927, 28.057211>,  <14.815002, 8.727695, 28.365602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496146, 8.594927, 28.057211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.242160, 8.484073, 27.768763>,  <15.089767, 8.417561, 27.595694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.242160, 8.484073, 27.768763>,  <15.496146, 8.594927, 28.057211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.242160, 8.484073, 27.768763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711862, 0.152729, -0.685511,
		0.300116, -0.948615, 0.100304,
		-0.634966, -0.277136, -0.721119,
		15.051670, 8.400932, 27.552427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922595, 8.308989, 27.560377>,  <15.496146, 8.594927, 28.057211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922595, 8.308989, 27.560377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.582520, 8.376345, 27.360847>,  <15.378475, 8.416759, 27.241129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.582520, 8.376345, 27.360847>,  <15.922595, 8.308989, 27.560377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.582520, 8.376345, 27.360847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522397, 0.387603, -0.759517,
		0.065451, -0.906316, -0.417502,
		-0.850187, 0.168391, -0.498826,
		15.327464, 8.426862, 27.211199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036655, 8.031833, 26.794577>,  <15.922595, 8.308989, 27.560377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.036655, 8.031833, 26.794577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728508, 8.286707, 26.785368>,  <15.543620, 8.439631, 26.779842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728508, 8.286707, 26.785368>,  <16.036655, 8.031833, 26.794577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728508, 8.286707, 26.785368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395616, 0.449365, -0.800974,
		-0.500022, -0.626153, -0.598256,
		-0.770368, 0.637185, -0.023023,
		15.497397, 8.477862, 26.778461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788861, 8.107997, 26.090118>,  <16.036655, 8.031833, 26.794577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.788861, 8.107997, 26.090118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.615441, 8.439446, 26.231775>,  <15.511390, 8.638316, 26.316771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.615441, 8.439446, 26.231775>,  <15.788861, 8.107997, 26.090118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.615441, 8.439446, 26.231775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300120, 0.503338, -0.810296,
		-0.849684, -0.245018, -0.466908,
		-0.433549, 0.828624, 0.354144,
		15.485376, 8.688034, 26.338018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508474, 8.358224, 25.512743>,  <15.788861, 8.107997, 26.090118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.508474, 8.358224, 25.512743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564966, 8.672444, 25.753729>,  <15.598862, 8.860976, 25.898321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564966, 8.672444, 25.753729>,  <15.508474, 8.358224, 25.512743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.564966, 8.672444, 25.753729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101069, 0.593943, -0.798133,
		-0.984804, 0.173611, 0.004488,
		0.141231, 0.785551, 0.602464,
		15.607335, 8.908110, 25.934467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.139768, 8.939818, 25.203350>,  <15.508474, 8.358224, 25.512743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.139768, 8.939818, 25.203350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361589, 9.148845, 25.462393>,  <15.494682, 9.274261, 25.617819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361589, 9.148845, 25.462393>,  <15.139768, 8.939818, 25.203350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361589, 9.148845, 25.462393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204011, 0.669108, -0.714615,
		-0.806752, 0.528412, 0.264448,
		0.554555, 0.522566, 0.647606,
		15.527956, 9.305614, 25.656675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894278, 9.625198, 25.320738>,  <15.139768, 8.939818, 25.203350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894278, 9.625198, 25.320738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285198, 9.633176, 25.405100>,  <15.519751, 9.637962, 25.455717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285198, 9.633176, 25.405100>,  <14.894278, 9.625198, 25.320738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285198, 9.633176, 25.405100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148948, 0.643257, -0.751022,
		-0.150645, 0.765390, 0.625687,
		0.977303, 0.019943, 0.210907,
		15.578389, 9.639158, 25.468372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.991186, 10.350648, 25.321306>,  <14.894278, 9.625198, 25.320738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.991186, 10.350648, 25.321306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.326079, 10.141339, 25.257772>,  <15.527016, 10.015754, 25.219652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.326079, 10.141339, 25.257772>,  <14.991186, 10.350648, 25.321306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326079, 10.141339, 25.257772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197860, 0.560645, -0.804070,
		0.509797, 0.641767, 0.572925,
		0.837233, -0.523272, -0.158835,
		15.577250, 9.984358, 25.210121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486275, 10.910042, 25.142756>,  <14.991186, 10.350648, 25.321306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486275, 10.910042, 25.142756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580844, 10.556795, 24.980665>,  <15.637586, 10.344847, 24.883411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580844, 10.556795, 24.980665>,  <15.486275, 10.910042, 25.142756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580844, 10.556795, 24.980665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103624, 0.437587, -0.893185,
		0.966109, 0.169179, 0.194968,
		0.236423, -0.883117, -0.405226,
		15.651771, 10.291860, 24.859098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052904, 11.050653, 24.667295>,  <15.486275, 10.910042, 25.142756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052904, 11.050653, 24.667295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.912435, 10.685322, 24.584826>,  <15.828154, 10.466123, 24.535343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.912435, 10.685322, 24.584826>,  <16.052904, 11.050653, 24.667295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.912435, 10.685322, 24.584826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278863, 0.108182, -0.954218,
		0.893820, -0.392588, 0.216703,
		-0.351172, -0.913330, -0.206173,
		15.807083, 10.411323, 24.522974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650915, 10.580303, 24.289154>,  <16.052904, 11.050653, 24.667295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650915, 10.580303, 24.289154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.264202, 10.501260, 24.224304>,  <16.032175, 10.453834, 24.185394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.264202, 10.501260, 24.224304>,  <16.650915, 10.580303, 24.289154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.264202, 10.501260, 24.224304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193696, -0.152540, -0.969130,
		0.166779, -0.968340, 0.185749,
		-0.966782, -0.197609, -0.162123,
		15.974168, 10.441978, 24.175667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766251, 10.126934, 23.715706>,  <16.650915, 10.580303, 24.289154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.766251, 10.126934, 23.715706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.384108, 10.244180, 23.730553>,  <16.154821, 10.314527, 23.739462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.384108, 10.244180, 23.730553>,  <16.766251, 10.126934, 23.715706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.384108, 10.244180, 23.730553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089752, -0.168219, -0.981655,
		-0.281494, -0.941162, 0.187016,
		-0.955356, 0.293115, 0.037119,
		16.097500, 10.332113, 23.741688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549971, 9.949896, 23.079140>,  <16.766251, 10.126934, 23.715706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.549971, 9.949896, 23.079140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259346, 10.191895, 23.209423>,  <16.084970, 10.337094, 23.287594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.259346, 10.191895, 23.209423>,  <16.549971, 9.949896, 23.079140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.259346, 10.191895, 23.209423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307271, 0.137901, -0.941577,
		-0.614568, -0.784194, 0.085705,
		-0.726561, 0.604998, 0.325710,
		16.041378, 10.373394, 23.307137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084368, 9.792755, 22.682335>,  <16.549971, 9.949896, 23.079140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084368, 9.792755, 22.682335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.935159, 10.135349, 22.825043>,  <15.845634, 10.340906, 22.910667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.935159, 10.135349, 22.825043>,  <16.084368, 9.792755, 22.682335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.935159, 10.135349, 22.825043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306973, 0.248943, -0.918583,
		-0.875570, -0.452171, 0.170057,
		-0.373022, 0.856486, 0.356771,
		15.823252, 10.392295, 22.932074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388784, 9.767798, 22.649172>,  <16.084368, 9.792755, 22.682335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.388784, 9.767798, 22.649172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.486110, 10.155770, 22.646769>,  <15.544505, 10.388554, 22.645327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.486110, 10.155770, 22.646769>,  <15.388784, 9.767798, 22.649172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486110, 10.155770, 22.646769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301364, 0.069710, -0.950958,
		-0.921943, 0.233191, 0.309263,
		0.243314, 0.969929, -0.006007,
		15.559104, 10.446749, 22.644966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869842, 10.115412, 22.387230>,  <15.388784, 9.767798, 22.649172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869842, 10.115412, 22.387230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137018, 10.406274, 22.323860>,  <15.297324, 10.580791, 22.285839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137018, 10.406274, 22.323860>,  <14.869842, 10.115412, 22.387230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137018, 10.406274, 22.323860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334421, 0.103097, -0.936768,
		-0.664844, 0.678686, 0.312039,
		0.667942, 0.727156, -0.158423,
		15.337400, 10.624421, 22.276333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524432, 10.585154, 21.956282>,  <14.869842, 10.115412, 22.387230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524432, 10.585154, 21.956282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916295, 10.646342, 21.904327>,  <15.151413, 10.683055, 21.873156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916295, 10.646342, 21.904327>,  <14.524432, 10.585154, 21.956282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.916295, 10.646342, 21.904327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166175, 0.255553, -0.952407,
		-0.112498, 0.954616, 0.275774,
		0.979658, 0.152971, -0.129884,
		15.210193, 10.692233, 21.865362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.552626, 11.219857, 21.635569>,  <14.524432, 10.585154, 21.956282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.552626, 11.219857, 21.635569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.909650, 11.057396, 21.557213>,  <15.123864, 10.959919, 21.510199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.909650, 11.057396, 21.557213>,  <14.552626, 11.219857, 21.635569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.909650, 11.057396, 21.557213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033284, 0.373889, -0.926876,
		0.449696, 0.833814, 0.320201,
		0.892562, -0.406154, -0.195889,
		15.177419, 10.935550, 21.498446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.855999, 11.841963, 21.274937>,  <14.552626, 11.219857, 21.635569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.855999, 11.841963, 21.274937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061211, 11.503640, 21.216406>,  <15.184338, 11.300647, 21.181288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061211, 11.503640, 21.216406>,  <14.855999, 11.841963, 21.274937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061211, 11.503640, 21.216406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251141, 0.310916, -0.916657,
		0.820810, 0.433523, 0.371926,
		0.513029, -0.845807, -0.146328,
		15.215119, 11.249898, 21.172508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.404476, 12.091838, 20.862114>,  <14.855999, 11.841963, 21.274937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.404476, 12.091838, 20.862114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.359265, 11.696212, 20.824223>,  <15.332139, 11.458836, 20.801487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.359265, 11.696212, 20.824223>,  <15.404476, 12.091838, 20.862114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.359265, 11.696212, 20.824223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208103, 0.069661, -0.975623,
		0.971555, -0.129985, 0.197954,
		-0.113026, -0.989066, -0.094730,
		15.325357, 11.399492, 20.795803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.018345, 11.821480, 20.660925>,  <15.404476, 12.091838, 20.862114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.018345, 11.821480, 20.660925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.734619, 11.559978, 20.555489>,  <15.564384, 11.403078, 20.492228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.734619, 11.559978, 20.555489>,  <16.018345, 11.821480, 20.660925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.734619, 11.559978, 20.555489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251570, 0.114535, -0.961038,
		0.658472, -0.747990, 0.083223,
		-0.709315, -0.653753, -0.263590,
		15.521825, 11.363853, 20.476412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214815, 11.424608, 19.976467>,  <16.018345, 11.821480, 20.660925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214815, 11.424608, 19.976467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.817586, 11.379214, 19.988621>,  <15.579247, 11.351978, 19.995913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.817586, 11.379214, 19.988621>,  <16.214815, 11.424608, 19.976467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.817586, 11.379214, 19.988621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048619, 0.161540, -0.985668,
		0.106947, -0.980320, -0.165939,
		-0.993075, -0.113482, 0.030385,
		15.519664, 11.345169, 19.997736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006817, 11.242011, 19.348133>,  <16.214815, 11.424608, 19.976467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006817, 11.242011, 19.348133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637709, 11.323671, 19.478867>,  <15.416245, 11.372667, 19.557306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637709, 11.323671, 19.478867>,  <16.006817, 11.242011, 19.348133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637709, 11.323671, 19.478867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266517, 0.274474, -0.923922,
		-0.278327, -0.939673, -0.198866,
		-0.922769, 0.204152, 0.326833,
		15.360878, 11.384916, 19.576916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.466418, 10.825801, 18.914713>,  <16.006817, 11.242011, 19.348133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.466418, 10.825801, 18.914713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.327610, 11.160237, 19.084667>,  <15.244326, 11.360899, 19.186640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.327610, 11.160237, 19.084667>,  <15.466418, 10.825801, 18.914713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.327610, 11.160237, 19.084667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373422, 0.292403, -0.880373,
		-0.860310, -0.464169, 0.210745,
		-0.347020, 0.836091, 0.424888,
		15.223504, 11.411064, 19.212133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779266, 10.865748, 18.709341>,  <15.466418, 10.825801, 18.914713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779266, 10.865748, 18.709341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.822045, 11.240457, 18.842621>,  <14.847713, 11.465281, 18.922588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.822045, 11.240457, 18.842621>,  <14.779266, 10.865748, 18.709341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822045, 11.240457, 18.842621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418463, 0.346405, -0.839578,
		-0.901915, -0.049641, 0.429052,
		0.106948, 0.936771, 0.333201,
		14.854130, 11.521488, 18.942581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.117906, 11.175935, 18.629827>,  <14.779266, 10.865748, 18.709341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.117906, 11.175935, 18.629827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.342400, 11.503665, 18.676678>,  <14.477097, 11.700303, 18.704788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.342400, 11.503665, 18.676678>,  <14.117906, 11.175935, 18.629827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342400, 11.503665, 18.676678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448925, 0.420244, -0.788582,
		-0.695328, 0.389998, 0.603672,
		0.561235, 0.819326, 0.117128,
		14.510770, 11.749463, 18.711817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.531268, 11.637961, 18.653053>,  <14.117906, 11.175935, 18.629827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.531268, 11.637961, 18.653053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878420, 11.801527, 18.540216>,  <14.086711, 11.899667, 18.472515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878420, 11.801527, 18.540216>,  <13.531268, 11.637961, 18.653053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.878420, 11.801527, 18.540216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438603, 0.364089, -0.821624,
		-0.233268, 0.836796, 0.495336,
		0.867879, 0.408914, -0.282091,
		14.138783, 11.924201, 18.455589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.416963, 12.376439, 18.584112>,  <13.531268, 11.637961, 18.653053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.416963, 12.376439, 18.584112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741059, 12.275014, 18.372749>,  <13.935517, 12.214159, 18.245932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741059, 12.275014, 18.372749>,  <13.416963, 12.376439, 18.584112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.741059, 12.275014, 18.372749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326182, 0.553965, -0.765982,
		0.486943, 0.792988, 0.366138,
		0.810242, -0.253562, -0.528408,
		13.984132, 12.198945, 18.214228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.634668, 12.987741, 18.194201>,  <13.416963, 12.376439, 18.584112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.634668, 12.987741, 18.194201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824358, 12.691586, 18.003649>,  <13.938171, 12.513894, 17.889317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824358, 12.691586, 18.003649>,  <13.634668, 12.987741, 18.194201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824358, 12.691586, 18.003649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200084, 0.436302, -0.877273,
		0.857367, 0.511340, 0.058765,
		0.474224, -0.740387, -0.476382,
		13.966625, 12.469471, 17.860735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.972927, 13.303565, 17.496380>,  <13.634668, 12.987741, 18.194201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.972927, 13.303565, 17.496380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.939425, 12.907947, 17.447762>,  <13.919325, 12.670575, 17.418591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.939425, 12.907947, 17.447762>,  <13.972927, 13.303565, 17.496380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.939425, 12.907947, 17.447762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332395, 0.142715, -0.932280,
		0.939414, -0.037680, -0.340707,
		-0.083753, -0.989046, -0.121544,
		13.914300, 12.611233, 17.411299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999780, 13.385707, 16.786341>,  <13.972927, 13.303565, 17.496380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999780, 13.385707, 16.786341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896989, 13.006152, 16.859634>,  <13.835315, 12.778419, 16.903610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896989, 13.006152, 16.859634>,  <13.999780, 13.385707, 16.786341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896989, 13.006152, 16.859634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310855, -0.098368, -0.945353,
		0.915059, -0.299894, -0.269688,
		-0.256977, -0.948888, 0.183236,
		13.819896, 12.721486, 16.914606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297071, 12.877448, 16.189859>,  <13.999780, 13.385707, 16.786341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.297071, 12.877448, 16.189859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.962762, 12.749397, 16.368296>,  <13.762176, 12.672566, 16.475357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.962762, 12.749397, 16.368296>,  <14.297071, 12.877448, 16.189859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.962762, 12.749397, 16.368296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417331, -0.157596, -0.894985,
		0.356813, -0.934174, -0.001884,
		-0.835775, -0.320129, 0.446092,
		13.712029, 12.653358, 16.502123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201348, 12.170717, 15.937102>,  <14.297071, 12.877448, 16.189859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201348, 12.170717, 15.937102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.848707, 12.307571, 16.067160>,  <13.637122, 12.389684, 16.145193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.848707, 12.307571, 16.067160>,  <14.201348, 12.170717, 15.937102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.848707, 12.307571, 16.067160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463041, -0.493432, -0.736286,
		-0.091475, -0.799667, 0.593435,
		-0.881604, 0.342136, 0.325142,
		13.584226, 12.410213, 16.164701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958947, 12.332092, 16.026512>,  <14.201348, 12.170717, 15.937102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958947, 12.332092, 16.026512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.270278, 12.236936, 15.794094>,  <15.457077, 12.179842, 15.654643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.270278, 12.236936, 15.794094>,  <14.958947, 12.332092, 16.026512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.270278, 12.236936, 15.794094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550266, -0.187188, 0.813737,
		-0.302346, -0.953084, -0.014790,
		0.778328, -0.237891, -0.581045,
		15.503777, 12.165568, 15.619781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196627, 11.654325, 16.280577>,  <14.958947, 12.332092, 16.026512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.196627, 11.654325, 16.280577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485040, 11.881894, 16.122368>,  <15.658088, 12.018435, 16.027443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485040, 11.881894, 16.122368>,  <15.196627, 11.654325, 16.280577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485040, 11.881894, 16.122368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528418, -0.082247, 0.844991,
		0.448205, -0.818267, -0.359932,
		0.721032, 0.568924, -0.395524,
		15.701349, 12.052571, 16.003710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791076, 11.323836, 16.394585>,  <15.196627, 11.654325, 16.280577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791076, 11.323836, 16.394585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.929338, 11.694270, 16.334068>,  <16.012297, 11.916531, 16.297758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.929338, 11.694270, 16.334068>,  <15.791076, 11.323836, 16.394585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.929338, 11.694270, 16.334068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655285, -0.122820, 0.745330,
		0.671657, -0.356768, -0.649302,
		0.345657, 0.926084, -0.151292,
		16.033035, 11.972095, 16.288681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509642, 11.202494, 16.341019>,  <15.791076, 11.323836, 16.394585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509642, 11.202494, 16.341019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.452951, 11.587421, 16.433847>,  <16.418938, 11.818377, 16.489544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.452951, 11.587421, 16.433847>,  <16.509642, 11.202494, 16.341019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.452951, 11.587421, 16.433847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779108, -0.036185, 0.625844,
		0.610659, 0.269507, -0.744622,
		-0.141725, 0.962318, 0.232072,
		16.410435, 11.876117, 16.503469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185999, 11.461273, 16.394449>,  <16.509642, 11.202494, 16.341019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185999, 11.461273, 16.394449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981186, 11.736127, 16.600622>,  <16.858297, 11.901039, 16.724325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981186, 11.736127, 16.600622>,  <17.185999, 11.461273, 16.394449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981186, 11.736127, 16.600622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719760, 0.015731, 0.694045,
		0.468793, 0.726361, -0.502626,
		-0.512034, 0.687134, 0.515430,
		16.827576, 11.942267, 16.755251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702961, 11.923953, 16.688871>,  <17.185999, 11.461273, 16.394449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.702961, 11.923953, 16.688871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366623, 11.960049, 16.902353>,  <17.164820, 11.981707, 17.030441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366623, 11.960049, 16.902353>,  <17.702961, 11.923953, 16.688871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366623, 11.960049, 16.902353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540006, 0.072291, 0.838551,
		0.037088, 0.993293, -0.109516,
		-0.840843, 0.090240, 0.533703,
		17.114370, 11.987121, 17.062464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.868149, 12.454293, 17.191753>,  <17.702961, 11.923953, 16.688871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.868149, 12.454293, 17.191753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557415, 12.248682, 17.337250>,  <17.370975, 12.125316, 17.424547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557415, 12.248682, 17.337250>,  <17.868149, 12.454293, 17.191753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.557415, 12.248682, 17.337250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349832, 0.128006, 0.928026,
		-0.523591, 0.848169, 0.080384,
		-0.776833, -0.514027, 0.363740,
		17.324366, 12.094474, 17.446371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.669451, 12.816435, 17.766134>,  <17.868149, 12.454293, 17.191753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.669451, 12.816435, 17.766134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.486307, 12.467010, 17.832169>,  <17.376421, 12.257355, 17.871790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.486307, 12.467010, 17.832169>,  <17.669451, 12.816435, 17.766134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486307, 12.467010, 17.832169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419897, -0.048814, 0.906258,
		-0.783615, 0.484258, 0.389156,
		-0.457859, -0.873562, 0.165087,
		17.348949, 12.204941, 17.881695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242531, 12.823329, 18.320875>,  <17.669451, 12.816435, 17.766134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242531, 12.823329, 18.320875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340710, 12.437690, 18.280340>,  <17.399616, 12.206306, 18.256020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340710, 12.437690, 18.280340>,  <17.242531, 12.823329, 18.320875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340710, 12.437690, 18.280340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331033, -0.014894, 0.943502,
		-0.911138, -0.265126, 0.315493,
		0.245447, -0.964099, -0.101336,
		17.414345, 12.148460, 18.249939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055235, 12.520782, 18.995499>,  <17.242531, 12.823329, 18.320875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055235, 12.520782, 18.995499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.250788, 12.219819, 18.818918>,  <17.368120, 12.039242, 18.712969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.250788, 12.219819, 18.818918>,  <17.055235, 12.520782, 18.995499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250788, 12.219819, 18.818918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179784, -0.408285, 0.894975,
		-0.853623, -0.516903, -0.064332,
		0.488881, -0.752406, -0.441453,
		17.397451, 11.994098, 18.686481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.816704, 11.895934, 19.288359>,  <17.055235, 12.520782, 18.995499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.816704, 11.895934, 19.288359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.175348, 11.793735, 19.143688>,  <17.390535, 11.732415, 19.056887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.175348, 11.793735, 19.143688>,  <16.816704, 11.895934, 19.288359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.175348, 11.793735, 19.143688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244028, -0.396459, 0.885026,
		-0.369508, -0.881784, -0.293123,
		0.896613, -0.255494, -0.361675,
		17.444332, 11.717085, 19.035185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892412, 11.317286, 19.561644>,  <16.816704, 11.895934, 19.288359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892412, 11.317286, 19.561644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264467, 11.420732, 19.457365>,  <17.487700, 11.482800, 19.394798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264467, 11.420732, 19.457365>,  <16.892412, 11.317286, 19.561644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264467, 11.420732, 19.457365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324183, -0.244837, 0.913761,
		0.172486, -0.934437, -0.311571,
		0.930136, 0.258617, -0.260698,
		17.543509, 11.498317, 19.379156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257511, 10.731429, 19.788834>,  <16.892412, 11.317286, 19.561644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.257511, 10.731429, 19.788834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523762, 11.024054, 19.729830>,  <17.683512, 11.199628, 19.694427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523762, 11.024054, 19.729830>,  <17.257511, 10.731429, 19.788834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.523762, 11.024054, 19.729830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429299, -0.213669, 0.877524,
		0.610445, -0.647429, -0.456282,
		0.665627, 0.731561, -0.147507,
		17.723450, 11.243522, 19.685577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931690, 10.514322, 19.733883>,  <17.257511, 10.731429, 19.788834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931690, 10.514322, 19.733883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.982414, 10.892350, 19.854389>,  <18.012850, 11.119167, 19.926693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.982414, 10.892350, 19.854389>,  <17.931690, 10.514322, 19.733883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.982414, 10.892350, 19.854389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358290, -0.326856, 0.874525,
		0.924958, -0.002959, -0.380058,
		0.126812, 0.945070, 0.301268,
		18.020458, 11.175871, 19.944769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.639484, 10.549446, 19.869432>,  <17.931690, 10.514322, 19.733883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.639484, 10.549446, 19.869432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433243, 10.830458, 20.065638>,  <18.309498, 10.999064, 20.183361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433243, 10.830458, 20.065638>,  <18.639484, 10.549446, 19.869432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.433243, 10.830458, 20.065638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610312, -0.100686, 0.785736,
		0.601390, 0.704498, -0.376847,
		-0.515606, 0.702528, 0.490515,
		18.278561, 11.041216, 20.212791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.071457, 10.757894, 20.407904>,  <18.639484, 10.549446, 19.869432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.071457, 10.757894, 20.407904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.744822, 10.957747, 20.523527>,  <18.548841, 11.077659, 20.592901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.744822, 10.957747, 20.523527>,  <19.071457, 10.757894, 20.407904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.744822, 10.957747, 20.523527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318814, -0.027066, 0.947431,
		0.481191, 0.865814, -0.137189,
		-0.816586, 0.499633, 0.289058,
		18.499846, 11.107636, 20.610245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293297, 11.335563, 20.836596>,  <19.071457, 10.757894, 20.407904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293297, 11.335563, 20.836596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.909908, 11.250679, 20.912806>,  <18.679874, 11.199749, 20.958532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.909908, 11.250679, 20.912806>,  <19.293297, 11.335563, 20.836596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909908, 11.250679, 20.912806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193951, 0.004754, 0.981000,
		-0.209084, 0.977212, 0.036602,
		-0.958471, -0.212210, 0.190525,
		18.622368, 11.187016, 20.969963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142090, 11.779409, 21.454683>,  <19.293297, 11.335563, 20.836596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.142090, 11.779409, 21.454683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.865925, 11.490108, 21.448601>,  <18.700226, 11.316526, 21.444952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.865925, 11.490108, 21.448601>,  <19.142090, 11.779409, 21.454683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865925, 11.490108, 21.448601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026685, 0.004458, 0.999634,
		-0.722923, 0.690566, -0.022378,
		-0.690413, -0.723256, -0.015205,
		18.658800, 11.273130, 21.444038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740263, 11.893715, 21.983702>,  <19.142090, 11.779409, 21.454683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.740263, 11.893715, 21.983702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.644598, 11.509544, 21.926596>,  <18.587198, 11.279042, 21.892332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.644598, 11.509544, 21.926596>,  <18.740263, 11.893715, 21.983702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.644598, 11.509544, 21.926596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184270, -0.099467, 0.977830,
		-0.953334, 0.260167, -0.153189,
		-0.239162, -0.960427, -0.142766,
		18.572849, 11.221416, 21.883766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.252846, 11.693675, 22.442156>,  <18.740263, 11.893715, 21.983702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.252846, 11.693675, 22.442156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.370981, 11.330194, 22.324148>,  <18.441862, 11.112106, 22.253344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.370981, 11.330194, 22.324148>,  <18.252846, 11.693675, 22.442156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370981, 11.330194, 22.324148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209054, -0.362779, 0.908123,
		-0.932240, -0.206529, -0.297111,
		0.295340, -0.908701, -0.295022,
		18.459583, 11.057584, 22.235641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.789831, 11.193509, 22.629314>,  <18.252846, 11.693675, 22.442156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.789831, 11.193509, 22.629314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132069, 10.991478, 22.583961>,  <18.337412, 10.870259, 22.556749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132069, 10.991478, 22.583961>,  <17.789831, 11.193509, 22.629314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.132069, 10.991478, 22.583961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186658, -0.505322, 0.842502,
		-0.482818, -0.699679, -0.526628,
		0.855597, -0.505074, -0.113377,
		18.388746, 10.839954, 22.549948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.595934, 10.515723, 22.884689>,  <17.789831, 11.193509, 22.629314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.595934, 10.515723, 22.884689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.993891, 10.554425, 22.896172>,  <18.232666, 10.577646, 22.903061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.993891, 10.554425, 22.896172>,  <17.595934, 10.515723, 22.884689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.993891, 10.554425, 22.896172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001426, -0.297873, 0.954604,
		0.100913, -0.949689, -0.296490,
		0.994894, 0.096755, 0.028705,
		18.292358, 10.583451, 22.904783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817677, 9.938708, 23.173485>,  <17.595934, 10.515723, 22.884689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817677, 9.938708, 23.173485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.145021, 10.164387, 23.217237>,  <18.341429, 10.299794, 23.243488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.145021, 10.164387, 23.217237>,  <17.817677, 9.938708, 23.173485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.145021, 10.164387, 23.217237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060774, -0.274217, 0.959746,
		0.571479, -0.778773, -0.258698,
		0.818363, 0.564196, 0.109380,
		18.390530, 10.333646, 23.250051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224298, 9.526192, 23.449081>,  <17.817677, 9.938708, 23.173485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.224298, 9.526192, 23.449081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391129, 9.876694, 23.545599>,  <18.491226, 10.086995, 23.603510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391129, 9.876694, 23.545599>,  <18.224298, 9.526192, 23.449081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.391129, 9.876694, 23.545599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062825, -0.292646, 0.954155,
		0.906697, -0.382797, -0.177107,
		0.417077, 0.876256, 0.241292,
		18.516253, 10.139570, 23.617987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894659, 9.350245, 23.698965>,  <18.224298, 9.526192, 23.449081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894659, 9.350245, 23.698965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.755381, 9.689876, 23.857876>,  <18.671814, 9.893654, 23.953222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.755381, 9.689876, 23.857876>,  <18.894659, 9.350245, 23.698965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.755381, 9.689876, 23.857876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131573, -0.375336, 0.917503,
		0.928141, 0.371744, 0.018976,
		-0.348199, 0.849076, 0.397276,
		18.650921, 9.944598, 23.977058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.267282, 9.397619, 24.295774>,  <18.894659, 9.350245, 23.698965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.267282, 9.397619, 24.295774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.947926, 9.633501, 24.344469>,  <18.756311, 9.775030, 24.373686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.947926, 9.633501, 24.344469>,  <19.267282, 9.397619, 24.295774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.947926, 9.633501, 24.344469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178542, -0.424926, 0.887446,
		0.575061, 0.686794, 0.444544,
		-0.798391, 0.589706, 0.121737,
		18.708408, 9.810412, 24.380991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.269653, 9.592574, 25.052616>,  <19.267282, 9.397619, 24.295774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.269653, 9.592574, 25.052616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.886948, 9.648435, 24.950558>,  <18.657324, 9.681951, 24.889322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.886948, 9.648435, 24.950558>,  <19.269653, 9.592574, 25.052616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.886948, 9.648435, 24.950558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268719, -0.088647, 0.959131,
		0.111326, 0.986225, 0.122341,
		-0.956764, 0.139651, -0.255148,
		18.599918, 9.690331, 24.874014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.018026, 10.028460, 25.543365>,  <19.269653, 9.592574, 25.052616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.018026, 10.028460, 25.543365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689253, 9.869341, 25.380302>,  <18.491989, 9.773870, 25.282465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689253, 9.869341, 25.380302>,  <19.018026, 10.028460, 25.543365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.689253, 9.869341, 25.380302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435247, -0.023009, 0.900017,
		-0.367402, 0.917185, -0.154228,
		-0.821934, -0.397795, -0.407656,
		18.442673, 9.750002, 25.258005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585213, 10.322922, 25.902246>,  <19.018026, 10.028460, 25.543365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585213, 10.322922, 25.902246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393129, 10.005558, 25.752634>,  <18.277880, 9.815140, 25.662867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393129, 10.005558, 25.752634>,  <18.585213, 10.322922, 25.902246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.393129, 10.005558, 25.752634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428653, -0.159763, 0.889231,
		-0.765281, 0.587347, -0.263377,
		-0.480209, -0.793410, -0.374032,
		18.249067, 9.767535, 25.640425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022551, 10.356820, 26.097361>,  <18.585213, 10.322922, 25.902246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022551, 10.356820, 26.097361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023472, 9.966046, 26.011950>,  <18.024025, 9.731582, 25.960703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023472, 9.966046, 26.011950>,  <18.022551, 10.356820, 26.097361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023472, 9.966046, 26.011950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443143, -0.192413, 0.875558,
		-0.896448, 0.092608, -0.433365,
		0.002301, -0.976935, -0.213527,
		18.024162, 9.672966, 25.947891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372940, 10.017189, 26.325058>,  <18.022551, 10.356820, 26.097361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.372940, 10.017189, 26.325058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.595934, 9.690005, 26.268272>,  <17.729731, 9.493695, 26.234201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.595934, 9.690005, 26.268272>,  <17.372940, 10.017189, 26.325058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.595934, 9.690005, 26.268272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419482, -0.425106, 0.802073,
		-0.716413, -0.387590, -0.580109,
		0.557483, -0.817960, -0.141964,
		17.763178, 9.444617, 26.225683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035233, 9.498589, 26.558455>,  <17.372940, 10.017189, 26.325058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035233, 9.498589, 26.558455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.391800, 9.317491, 26.566372>,  <17.605742, 9.208832, 26.571123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.391800, 9.317491, 26.566372>,  <17.035233, 9.498589, 26.558455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.391800, 9.317491, 26.566372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281325, -0.518607, 0.807406,
		-0.355283, -0.725306, -0.589665,
		0.891420, -0.452745, 0.019794,
		17.659225, 9.181667, 26.572309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867456, 8.874631, 26.707993>,  <17.035233, 9.498589, 26.558455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.867456, 8.874631, 26.707993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253794, 8.892413, 26.810106>,  <17.485596, 8.903082, 26.871374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253794, 8.892413, 26.810106>,  <16.867456, 8.874631, 26.707993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253794, 8.892413, 26.810106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230193, -0.305193, 0.924050,
		0.118990, -0.951252, -0.284536,
		0.965843, 0.044455, 0.255286,
		17.543547, 8.905749, 26.886692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085548, 8.210395, 27.101318>,  <16.867456, 8.874631, 26.707993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085548, 8.210395, 27.101318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327852, 8.518077, 27.182686>,  <17.473234, 8.702686, 27.231506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.327852, 8.518077, 27.182686>,  <17.085548, 8.210395, 27.101318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.327852, 8.518077, 27.182686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145016, -0.144646, 0.978799,
		0.782321, -0.622416, 0.023926,
		0.605759, 0.769205, 0.203420,
		17.509581, 8.748838, 27.243711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.462425, 7.928844, 27.634987>,  <17.085548, 8.210395, 27.101318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.462425, 7.928844, 27.634987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505888, 8.326067, 27.653011>,  <17.531965, 8.564401, 27.663826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505888, 8.326067, 27.653011>,  <17.462425, 7.928844, 27.634987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505888, 8.326067, 27.653011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163140, -0.026903, 0.986236,
		0.980601, -0.114512, 0.159084,
		0.108656, 0.993057, 0.045062,
		17.538485, 8.623984, 27.666531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817484, 8.036651, 28.250074>,  <17.462425, 7.928844, 27.634987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817484, 8.036651, 28.250074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648161, 8.394450, 28.192551>,  <17.546568, 8.609130, 28.158035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648161, 8.394450, 28.192551>,  <17.817484, 8.036651, 28.250074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.648161, 8.394450, 28.192551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169578, 0.077702, 0.982449,
		0.889975, 0.440264, 0.118796,
		-0.423306, 0.894500, -0.143812,
		17.521170, 8.662800, 28.149406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.242746, 8.657050, 28.511168>,  <17.817484, 8.036651, 28.250074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.242746, 8.657050, 28.511168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.846155, 8.708946, 28.515829>,  <17.608200, 8.740084, 28.518625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.846155, 8.708946, 28.515829>,  <18.242746, 8.657050, 28.511168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846155, 8.708946, 28.515829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021178, 0.072272, 0.997160,
		0.128529, 0.988911, -0.074403,
		-0.991480, 0.129740, 0.011654,
		17.548712, 8.747869, 28.519325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171299, 9.165568, 29.004160>,  <18.242746, 8.657050, 28.511168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171299, 9.165568, 29.004160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809238, 9.000920, 28.961699>,  <17.592001, 8.902132, 28.936222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809238, 9.000920, 28.961699>,  <18.171299, 9.165568, 29.004160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809238, 9.000920, 28.961699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186810, 0.160864, 0.969136,
		-0.381839, 0.897046, -0.222501,
		-0.905152, -0.411619, -0.106153,
		17.537693, 8.877435, 28.929853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676489, 9.596425, 29.303482>,  <18.171299, 9.165568, 29.004160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676489, 9.596425, 29.303482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.371531, 9.820523, 29.433022>,  <17.188557, 9.954983, 29.510746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.371531, 9.820523, 29.433022>,  <17.676489, 9.596425, 29.303482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371531, 9.820523, 29.433022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233064, 0.704593, -0.670246,
		-0.603685, -0.435514, -0.667751,
		-0.762394, 0.560246, 0.323850,
		17.142813, 9.988597, 29.530176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245958, 9.853979, 28.730146>,  <17.676489, 9.596425, 29.303482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.245958, 9.853979, 28.730146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187263, 10.098839, 29.040949>,  <17.152046, 10.245755, 29.227430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187263, 10.098839, 29.040949>,  <17.245958, 9.853979, 28.730146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187263, 10.098839, 29.040949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128302, 0.767096, -0.628572,
		-0.980819, -0.191927, -0.034022,
		-0.146738, 0.612150, 0.777007,
		17.143242, 10.282484, 29.274052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.593092, 10.169973, 28.662947>,  <17.245958, 9.853979, 28.730146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.593092, 10.169973, 28.662947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802795, 10.426303, 28.887268>,  <16.928617, 10.580101, 29.021860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802795, 10.426303, 28.887268>,  <16.593092, 10.169973, 28.662947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802795, 10.426303, 28.887268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268694, 0.749399, -0.605148,
		-0.808058, 0.166568, 0.565063,
		0.524257, 0.640824, 0.560802,
		16.960072, 10.618550, 29.055510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.202827, 10.747980, 28.737883>,  <16.593092, 10.169973, 28.662947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.202827, 10.747980, 28.737883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.569967, 10.886030, 28.816305>,  <16.790251, 10.968860, 28.863359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.569967, 10.886030, 28.816305>,  <16.202827, 10.747980, 28.737883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.569967, 10.886030, 28.816305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142277, 0.747186, -0.649208,
		-0.370549, 0.567982, 0.734908,
		0.917851, 0.345124, 0.196058,
		16.845322, 10.989568, 28.875122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160828, 11.493480, 28.825611>,  <16.202827, 10.747980, 28.737883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.160828, 11.493480, 28.825611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533886, 11.401864, 28.714102>,  <16.757721, 11.346895, 28.647196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533886, 11.401864, 28.714102>,  <16.160828, 11.493480, 28.825611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.533886, 11.401864, 28.714102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030791, 0.719315, -0.694001,
		0.359477, 0.655841, 0.663814,
		0.932646, -0.229038, -0.278771,
		16.813679, 11.333153, 28.630470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.586666, 12.164263, 28.737619>,  <16.160828, 11.493480, 28.825611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.586666, 12.164263, 28.737619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802769, 11.898642, 28.530872>,  <16.932430, 11.739268, 28.406824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802769, 11.898642, 28.530872>,  <16.586666, 12.164263, 28.737619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802769, 11.898642, 28.530872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133548, 0.674100, -0.726467,
		0.830835, 0.323452, 0.452871,
		0.540258, -0.664054, -0.516869,
		16.964846, 11.699426, 28.375813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.106535, 12.575682, 28.454750>,  <16.586666, 12.164263, 28.737619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.106535, 12.575682, 28.454750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117189, 12.233400, 28.248037>,  <17.123583, 12.028031, 28.124010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117189, 12.233400, 28.248037>,  <17.106535, 12.575682, 28.454750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.117189, 12.233400, 28.248037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283183, 0.502245, -0.817042,
		0.958696, -0.124580, 0.255699,
		0.026636, -0.855704, -0.516779,
		17.125179, 11.976689, 28.093004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.760603, 12.544311, 28.084034>,  <17.106535, 12.575682, 28.454750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.760603, 12.544311, 28.084034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.519630, 12.311185, 27.865894>,  <17.375048, 12.171309, 27.735010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.519630, 12.311185, 27.865894>,  <17.760603, 12.544311, 28.084034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.519630, 12.311185, 27.865894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230238, 0.527316, -0.817881,
		0.764244, -0.618276, -0.183485,
		-0.602430, -0.582815, -0.545348,
		17.338902, 12.136340, 27.702290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029793, 12.490991, 27.440538>,  <17.760603, 12.544311, 28.084034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029793, 12.490991, 27.440538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.670479, 12.357016, 27.326763>,  <17.454891, 12.276630, 27.258499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.670479, 12.357016, 27.326763>,  <18.029793, 12.490991, 27.440538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670479, 12.357016, 27.326763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203146, 0.257435, -0.944700,
		0.389642, -0.906390, -0.163208,
		-0.898282, -0.334940, -0.284437,
		17.400993, 12.256535, 27.241432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134230, 12.159493, 26.788549>,  <18.029793, 12.490991, 27.440538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134230, 12.159493, 26.788549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.735804, 12.194073, 26.780758>,  <17.496748, 12.214820, 26.776083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.735804, 12.194073, 26.780758>,  <18.134230, 12.159493, 26.788549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.735804, 12.194073, 26.780758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038853, 0.228479, -0.972773,
		-0.079644, -0.969703, -0.230939,
		-0.996066, 0.086448, -0.019479,
		17.436983, 12.220007, 26.774914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.914764, 11.723526, 26.292166>,  <18.134230, 12.159493, 26.788549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.914764, 11.723526, 26.292166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615072, 11.986649, 26.323009>,  <17.435257, 12.144522, 26.341516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615072, 11.986649, 26.323009>,  <17.914764, 11.723526, 26.292166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615072, 11.986649, 26.323009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044596, 0.166268, -0.985072,
		-0.660807, -0.734606, -0.153909,
		-0.749229, 0.657806, 0.077111,
		17.390303, 12.183990, 26.346142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548111, 11.493870, 25.809992>,  <17.914764, 11.723526, 26.292166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548111, 11.493870, 25.809992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413351, 11.860453, 25.896345>,  <17.332495, 12.080402, 25.948156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413351, 11.860453, 25.896345>,  <17.548111, 11.493870, 25.809992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413351, 11.860453, 25.896345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030062, 0.239638, -0.970396,
		-0.941061, -0.320436, -0.108284,
		-0.336899, 0.916457, 0.215881,
		17.312281, 12.135390, 25.961109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016857, 11.692122, 25.347540>,  <17.548111, 11.493870, 25.809992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.016857, 11.692122, 25.347540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154264, 12.038939, 25.491890>,  <17.236710, 12.247030, 25.578499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154264, 12.038939, 25.491890>,  <17.016857, 11.692122, 25.347540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154264, 12.038939, 25.491890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177990, 0.317186, -0.931511,
		-0.922125, 0.384224, -0.045366,
		0.343519, 0.867044, 0.360874,
		17.257320, 12.299052, 25.600153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.562031, 12.271346, 25.049303>,  <17.016857, 11.692122, 25.347540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.562031, 12.271346, 25.049303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928686, 12.405653, 25.136049>,  <17.148680, 12.486237, 25.188097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928686, 12.405653, 25.136049>,  <16.562031, 12.271346, 25.049303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928686, 12.405653, 25.136049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056249, 0.428798, -0.901648,
		-0.395735, 0.838685, 0.374167,
		0.916641, 0.335767, 0.216866,
		17.203678, 12.506383, 25.201109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383844, 13.000127, 24.883427>,  <16.562031, 12.271346, 25.049303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383844, 13.000127, 24.883427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777893, 12.944583, 24.923937>,  <17.014322, 12.911257, 24.948242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777893, 12.944583, 24.923937>,  <16.383844, 13.000127, 24.883427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777893, 12.944583, 24.923937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156388, 0.479847, -0.863302,
		0.071281, 0.866294, 0.494423,
		0.985120, -0.138859, 0.101273,
		17.073429, 12.902925, 24.954319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.641903, 13.532407, 24.628527>,  <16.383844, 13.000127, 24.883427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.641903, 13.532407, 24.628527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947382, 13.274189, 24.626045>,  <17.130669, 13.119258, 24.624556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947382, 13.274189, 24.626045>,  <16.641903, 13.532407, 24.628527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947382, 13.274189, 24.626045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294988, 0.357497, -0.886103,
		0.574237, 0.674884, 0.463447,
		0.763698, -0.645544, -0.006205,
		17.176491, 13.080525, 24.624184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.205292, 13.939980, 24.411375>,  <16.641903, 13.532407, 24.628527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.205292, 13.939980, 24.411375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333189, 13.567904, 24.339251>,  <17.409927, 13.344658, 24.295977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333189, 13.567904, 24.339251>,  <17.205292, 13.939980, 24.411375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333189, 13.567904, 24.339251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364667, 0.296451, -0.882686,
		0.874519, 0.216478, 0.433997,
		0.319741, -0.930190, -0.180309,
		17.429111, 13.288846, 24.285158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896896, 14.039292, 24.150272>,  <17.205292, 13.939980, 24.411375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.896896, 14.039292, 24.150272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792849, 13.665768, 24.052019>,  <17.730421, 13.441653, 23.993067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792849, 13.665768, 24.052019>,  <17.896896, 14.039292, 24.150272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792849, 13.665768, 24.052019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247137, 0.181530, -0.951825,
		0.933414, -0.308291, 0.183560,
		-0.260117, -0.933811, -0.245633,
		17.714813, 13.385624, 23.978329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414309, 13.791050, 23.724646>,  <17.896896, 14.039292, 24.150272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414309, 13.791050, 23.724646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.084181, 13.581013, 23.641579>,  <17.886105, 13.454990, 23.591738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.084181, 13.581013, 23.641579>,  <18.414309, 13.791050, 23.724646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084181, 13.581013, 23.641579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215434, 0.047143, -0.975380,
		0.521955, -0.849738, 0.074215,
		-0.825319, -0.525093, -0.207669,
		17.836586, 13.423485, 23.579279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535118, 13.181302, 23.262344>,  <18.414309, 13.791050, 23.724646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535118, 13.181302, 23.262344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.143324, 13.245415, 23.213493>,  <17.908247, 13.283882, 23.184183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.143324, 13.245415, 23.213493>,  <18.535118, 13.181302, 23.262344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.143324, 13.245415, 23.213493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129896, 0.038882, -0.990765,
		-0.154055, -0.986305, -0.058905,
		-0.979487, 0.160284, -0.122127,
		17.849478, 13.293500, 23.176855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420826, 12.801005, 22.767708>,  <18.535118, 13.181302, 23.262344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.420826, 12.801005, 22.767708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.087801, 13.022033, 22.752192>,  <17.887985, 13.154649, 22.742882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.087801, 13.022033, 22.752192>,  <18.420826, 12.801005, 22.767708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.087801, 13.022033, 22.752192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092742, 0.070012, -0.993226,
		-0.546109, -0.830522, -0.109536,
		-0.832564, 0.552569, -0.038790,
		17.838032, 13.187803, 22.740555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.944046, 12.515871, 22.259365>,  <18.420826, 12.801005, 22.767708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.944046, 12.515871, 22.259365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.855104, 12.904426, 22.292753>,  <17.801739, 13.137558, 22.312786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.855104, 12.904426, 22.292753>,  <17.944046, 12.515871, 22.259365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.855104, 12.904426, 22.292753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174247, 0.123831, -0.976885,
		-0.959268, -0.202672, -0.196796,
		-0.222356, 0.971385, 0.083473,
		17.788397, 13.195841, 22.317795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408833, 12.572154, 21.767036>,  <17.944046, 12.515871, 22.259365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408833, 12.572154, 21.767036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.554871, 12.937936, 21.836870>,  <17.642494, 13.157405, 21.878771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.554871, 12.937936, 21.836870>,  <17.408833, 12.572154, 21.767036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.554871, 12.937936, 21.836870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088868, 0.152441, -0.984309,
		-0.926719, 0.374881, -0.025610,
		0.365095, 0.914454, 0.174585,
		17.664398, 13.212272, 21.889246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129587, 13.032570, 21.244581>,  <17.408833, 12.572154, 21.767036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129587, 13.032570, 21.244581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446764, 13.229774, 21.387793>,  <17.637070, 13.348098, 21.473721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446764, 13.229774, 21.387793>,  <17.129587, 13.032570, 21.244581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446764, 13.229774, 21.387793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276027, 0.233190, -0.932433,
		-0.543190, 0.838189, 0.048821,
		0.792940, 0.493012, 0.358029,
		17.684647, 13.377678, 21.495201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102211, 13.708795, 20.960903>,  <17.129587, 13.032570, 21.244581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.102211, 13.708795, 20.960903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481218, 13.659834, 21.079042>,  <17.708622, 13.630458, 21.149925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481218, 13.659834, 21.079042>,  <17.102211, 13.708795, 20.960903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481218, 13.659834, 21.079042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319671, 0.376474, -0.869527,
		-0.004759, 0.918306, 0.395844,
		0.947517, -0.122402, 0.295347,
		17.765472, 13.623114, 21.167646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.498796, 14.238355, 20.681742>,  <17.102211, 13.708795, 20.960903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.498796, 14.238355, 20.681742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797722, 13.997987, 20.795172>,  <17.977077, 13.853766, 20.863230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797722, 13.997987, 20.795172>,  <17.498796, 14.238355, 20.681742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797722, 13.997987, 20.795172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546001, 0.312128, -0.777469,
		0.378684, 0.735848, 0.561361,
		0.747316, -0.600919, 0.283576,
		18.021917, 13.817711, 20.880245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.083075, 14.664565, 20.696512>,  <17.498796, 14.238355, 20.681742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.083075, 14.664565, 20.696512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201202, 14.284796, 20.653833>,  <18.272079, 14.056934, 20.628227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201202, 14.284796, 20.653833>,  <18.083075, 14.664565, 20.696512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.201202, 14.284796, 20.653833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688304, 0.288878, -0.665422,
		0.662589, 0.123072, 0.738802,
		0.295319, -0.949422, -0.106696,
		18.289799, 13.999969, 20.621824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825769, 14.639593, 20.878796>,  <18.083075, 14.664565, 20.696512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825769, 14.639593, 20.878796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.745493, 14.328379, 20.640676>,  <18.697327, 14.141650, 20.497805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.745493, 14.328379, 20.640676>,  <18.825769, 14.639593, 20.878796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.745493, 14.328379, 20.640676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764939, 0.255183, -0.591398,
		0.612039, -0.574056, 0.543937,
		-0.200692, -0.778037, -0.595299,
		18.685286, 14.094968, 20.462086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388983, 14.477215, 20.613613>,  <18.825769, 14.639593, 20.878796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388983, 14.477215, 20.613613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.159992, 14.261064, 20.366951>,  <19.022598, 14.131372, 20.218954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.159992, 14.261064, 20.366951>,  <19.388983, 14.477215, 20.613613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.159992, 14.261064, 20.366951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703699, 0.062179, -0.707772,
		0.420808, -0.839121, 0.344667,
		-0.572476, -0.540378, -0.616654,
		18.988249, 14.098950, 20.181955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836761, 13.884518, 20.340370>,  <19.388983, 14.477215, 20.613613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836761, 13.884518, 20.340370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.534885, 13.976237, 20.094488>,  <19.353760, 14.031269, 19.946959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.534885, 13.976237, 20.094488>,  <19.836761, 13.884518, 20.340370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.534885, 13.976237, 20.094488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652032, 0.158202, -0.741503,
		-0.072779, -0.960413, -0.268904,
		-0.754690, 0.229299, -0.614707,
		19.308477, 14.045027, 19.910076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.075867, 13.710820, 19.692286>,  <19.836761, 13.884518, 20.340370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.075867, 13.710820, 19.692286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781706, 13.953256, 19.571066>,  <19.605209, 14.098717, 19.498335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781706, 13.953256, 19.571066>,  <20.075867, 13.710820, 19.692286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781706, 13.953256, 19.571066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627730, 0.440885, -0.641542,
		-0.255223, -0.662024, -0.704689,
		-0.735402, 0.606090, -0.303048,
		19.561085, 14.135082, 19.480152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175732, 13.677472, 19.047642>,  <20.075867, 13.710820, 19.692286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175732, 13.677472, 19.047642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959637, 14.007019, 19.116213>,  <19.829981, 14.204747, 19.157356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959637, 14.007019, 19.116213>,  <20.175732, 13.677472, 19.047642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959637, 14.007019, 19.116213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539921, 0.495606, -0.680338,
		-0.645469, -0.274987, -0.712568,
		-0.540237, 0.823867, 0.171427,
		19.797565, 14.254179, 19.167641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.917082, 13.931952, 18.323009>,  <20.175732, 13.677472, 19.047642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.917082, 13.931952, 18.323009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992519, 14.183562, 18.624674>,  <20.037783, 14.334529, 18.805672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992519, 14.183562, 18.624674>,  <19.917082, 13.931952, 18.323009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992519, 14.183562, 18.624674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548287, 0.569668, -0.612257,
		-0.814748, 0.528964, -0.237451,
		0.188594, 0.629027, 0.754160,
		20.049097, 14.372271, 18.850922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.707590, 14.649593, 17.998369>,  <19.917082, 13.931952, 18.323009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.707590, 14.649593, 17.998369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.887644, 14.791656, 18.326086>,  <19.995676, 14.876895, 18.522717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.887644, 14.791656, 18.326086>,  <19.707590, 14.649593, 17.998369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887644, 14.791656, 18.326086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286277, 0.811677, -0.509143,
		-0.845828, 0.463728, 0.263690,
		0.450134, 0.355159, 0.819293,
		20.022684, 14.898204, 18.571875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.471472, 15.326931, 18.130928>,  <19.707590, 14.649593, 17.998369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.471472, 15.326931, 18.130928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818758, 15.312412, 18.328871>,  <20.027130, 15.303701, 18.447638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818758, 15.312412, 18.328871>,  <19.471472, 15.326931, 18.130928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.818758, 15.312412, 18.328871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306812, 0.823078, -0.477922,
		-0.389960, 0.566767, 0.725745,
		0.868215, -0.036297, 0.494858,
		20.079222, 15.301523, 18.477327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.668715, 15.973680, 18.202486>,  <19.471472, 15.326931, 18.130928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.668715, 15.973680, 18.202486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.015886, 15.806008, 18.309061>,  <20.224190, 15.705406, 18.373007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.015886, 15.806008, 18.309061>,  <19.668715, 15.973680, 18.202486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015886, 15.806008, 18.309061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474027, 0.859248, -0.192332,
		-0.148316, 0.293230, 0.944467,
		0.867929, -0.419177, 0.266439,
		20.276264, 15.680255, 18.388992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.136738, 16.530903, 18.492409>,  <19.668715, 15.973680, 18.202486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.136738, 16.530903, 18.492409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.386221, 16.238306, 18.382200>,  <20.535912, 16.062748, 18.316076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.386221, 16.238306, 18.382200>,  <20.136738, 16.530903, 18.492409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.386221, 16.238306, 18.382200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625068, 0.678392, -0.386101,
		0.469340, 0.068596, 0.880349,
		0.623707, -0.731491, -0.275519,
		20.573334, 16.018858, 18.299545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.866117, 16.757555, 18.754154>,  <20.136738, 16.530903, 18.492409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.866117, 16.757555, 18.754154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872486, 16.501839, 18.446634>,  <20.876308, 16.348410, 18.262121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872486, 16.501839, 18.446634>,  <20.866117, 16.757555, 18.754154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872486, 16.501839, 18.446634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611240, 0.614719, -0.498504,
		0.791285, -0.461984, 0.400548,
		0.015923, -0.639290, -0.768801,
		20.877264, 16.310051, 18.215994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.629078, 16.592813, 18.620235>,  <20.866117, 16.757555, 18.754154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.629078, 16.592813, 18.620235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.402374, 16.555309, 18.292822>,  <21.266352, 16.532806, 18.096375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.402374, 16.555309, 18.292822>,  <21.629078, 16.592813, 18.620235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.402374, 16.555309, 18.292822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553853, 0.692159, -0.462777,
		0.609945, -0.715629, -0.340358,
		-0.566758, -0.093760, -0.818532,
		21.232347, 16.527182, 18.047262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108448, 16.578880, 18.173481>,  <21.629078, 16.592813, 18.620235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108448, 16.578880, 18.173481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781612, 16.631964, 17.949068>,  <21.585510, 16.663815, 17.814421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781612, 16.631964, 17.949068>,  <22.108448, 16.578880, 18.173481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781612, 16.631964, 17.949068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462640, 0.731590, -0.500740,
		0.343992, -0.668704, -0.659170,
		-0.817089, 0.132708, -0.561030,
		21.536486, 16.671776, 17.780760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.388504, 16.693277, 17.474628>,  <22.108448, 16.578880, 18.173481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.388504, 16.693277, 17.474628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.016432, 16.839373, 17.489408>,  <21.793188, 16.927031, 17.498278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.016432, 16.839373, 17.489408>,  <22.388504, 16.693277, 17.474628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.016432, 16.839373, 17.489408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308829, 0.832971, -0.459113,
		-0.198465, -0.415646, -0.887609,
		-0.930181, 0.365238, 0.036952,
		21.737377, 16.948944, 17.500494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.171324, 16.882181, 16.866930>,  <22.388504, 16.693277, 17.474628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.171324, 16.882181, 16.866930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.004887, 17.131580, 17.131693>,  <21.905025, 17.281219, 17.290550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.004887, 17.131580, 17.131693>,  <22.171324, 16.882181, 16.866930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.004887, 17.131580, 17.131693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513469, 0.761858, -0.394869,
		-0.750478, 0.175567, -0.637148,
		-0.416091, 0.623496, 0.661907,
		21.880060, 17.318630, 17.330265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978859, 17.550179, 16.494150>,  <22.171324, 16.882181, 16.866930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978859, 17.550179, 16.494150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.050884, 17.586889, 16.885897>,  <22.094099, 17.608915, 17.120945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.050884, 17.586889, 16.885897>,  <21.978859, 17.550179, 16.494150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.050884, 17.586889, 16.885897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598481, 0.779927, -0.183123,
		-0.780639, 0.619105, 0.085509,
		0.180063, 0.091777, 0.979364,
		22.104902, 17.614422, 17.179707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.752087, 18.100857, 16.800287>,  <21.978859, 17.550179, 16.494150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.752087, 18.100857, 16.800287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.090158, 17.961897, 16.962761>,  <22.293001, 17.878521, 17.060246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.090158, 17.961897, 16.962761>,  <21.752087, 18.100857, 16.800287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.090158, 17.961897, 16.962761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480337, 0.826992, -0.292165,
		-0.234412, 0.442037, 0.865826,
		0.845179, -0.347401, 0.406184,
		22.343712, 17.857677, 17.084616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161459, 18.650011, 17.009268>,  <21.752087, 18.100857, 16.800287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161459, 18.650011, 17.009268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.447571, 18.370752, 16.996811>,  <22.619238, 18.203197, 16.989336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.447571, 18.370752, 16.996811>,  <22.161459, 18.650011, 17.009268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.447571, 18.370752, 16.996811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639516, 0.671877, -0.373632,
		0.281775, 0.247333, 0.927054,
		0.715278, -0.698146, -0.031144,
		22.662153, 18.161308, 16.987467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.818548, 18.963890, 17.347233>,  <22.161459, 18.650011, 17.009268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.818548, 18.963890, 17.347233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.899500, 18.672564, 17.085363>,  <22.948071, 18.497768, 16.928242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.899500, 18.672564, 17.085363>,  <22.818548, 18.963890, 17.347233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.899500, 18.672564, 17.085363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660651, 0.595010, -0.457715,
		0.722899, -0.339879, 0.601580,
		0.202379, -0.728317, -0.654673,
		22.960213, 18.454069, 16.888962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.493298, 19.031635, 17.276829>,  <22.818548, 18.963890, 17.347233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.493298, 19.031635, 17.276829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.402840, 18.797127, 16.965664>,  <23.348564, 18.656422, 16.778965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.402840, 18.797127, 16.965664>,  <23.493298, 19.031635, 17.276829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.402840, 18.797127, 16.965664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857689, 0.258730, -0.444328,
		0.461765, -0.767689, 0.444327,
		-0.226145, -0.586270, -0.777911,
		23.334995, 18.621246, 16.732290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.150732, 18.642618, 17.144825>,  <23.493298, 19.031635, 17.276829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.150732, 18.642618, 17.144825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.943233, 18.709097, 16.809378>,  <23.818735, 18.748985, 16.608109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.943233, 18.709097, 16.809378>,  <24.150732, 18.642618, 17.144825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.943233, 18.709097, 16.809378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850295, 0.202291, -0.485878,
		0.088893, -0.965120, -0.246255,
		-0.518746, 0.166198, -0.838618,
		23.787609, 18.758957, 16.557793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.457367, 18.468887, 16.554575>,  <24.150732, 18.642618, 17.144825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.457367, 18.468887, 16.554575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207277, 18.716343, 16.364258>,  <24.057224, 18.864817, 16.250067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207277, 18.716343, 16.364258>,  <24.457367, 18.468887, 16.554575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207277, 18.716343, 16.364258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750659, 0.309869, -0.583517,
		-0.213553, -0.721988, -0.658125,
		-0.625225, 0.618639, -0.475794,
		24.019711, 18.901934, 16.221519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509903, 18.342838, 15.778495>,  <24.457367, 18.468887, 16.554575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509903, 18.342838, 15.778495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358246, 18.710897, 15.817644>,  <24.267252, 18.931732, 15.841134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358246, 18.710897, 15.817644>,  <24.509903, 18.342838, 15.778495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358246, 18.710897, 15.817644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686035, 0.350497, -0.637580,
		-0.620972, -0.174590, -0.764141,
		-0.379144, 0.920147, 0.097874,
		24.244503, 18.986942, 15.847007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379147, 18.593184, 15.075257>,  <24.509903, 18.342838, 15.778495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379147, 18.593184, 15.075257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413839, 18.920153, 15.303046>,  <24.434654, 19.116335, 15.439719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413839, 18.920153, 15.303046>,  <24.379147, 18.593184, 15.075257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413839, 18.920153, 15.303046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699276, 0.357192, -0.619215,
		-0.709571, 0.451924, -0.540624,
		0.086732, 0.817422, 0.569472,
		24.439859, 19.165379, 15.473887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.158020, 19.072695, 14.621982>,  <24.379147, 18.593184, 15.075257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.158020, 19.072695, 14.621982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364145, 19.265587, 14.905363>,  <24.487822, 19.381321, 15.075392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364145, 19.265587, 14.905363>,  <24.158020, 19.072695, 14.621982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364145, 19.265587, 14.905363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608345, 0.376430, -0.698725,
		-0.603629, 0.791047, -0.099382,
		0.515314, 0.482229, 0.708454,
		24.518740, 19.410255, 15.117899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.186588, 19.800983, 14.443839>,  <24.158020, 19.072695, 14.621982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.186588, 19.800983, 14.443839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492731, 19.742437, 14.694535>,  <24.676416, 19.707310, 14.844954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492731, 19.742437, 14.694535>,  <24.186588, 19.800983, 14.443839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.492731, 19.742437, 14.694535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599231, 0.517378, -0.610936,
		-0.234841, 0.843147, 0.483687,
		0.765358, -0.146367, 0.626741,
		24.722338, 19.698526, 14.882558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.484150, 20.461185, 14.387480>,  <24.186588, 19.800983, 14.443839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.484150, 20.461185, 14.387480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774544, 20.230328, 14.537069>,  <24.948780, 20.091814, 14.626823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774544, 20.230328, 14.537069>,  <24.484150, 20.461185, 14.387480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774544, 20.230328, 14.537069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687332, 0.590808, -0.422517,
		0.022906, 0.563784, 0.825605,
		0.725982, -0.577142, 0.373974,
		24.992338, 20.057184, 14.649261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013981, 20.896803, 14.707590>,  <24.484150, 20.461185, 14.387480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013981, 20.896803, 14.707590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195135, 20.547867, 14.633926>,  <25.303827, 20.338505, 14.589728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195135, 20.547867, 14.633926>,  <25.013981, 20.896803, 14.707590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195135, 20.547867, 14.633926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652888, 0.465156, -0.597801,
		0.607149, 0.150501, 0.780205,
		0.452887, -0.872341, -0.184159,
		25.331001, 20.286165, 14.578679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752653, 21.002455, 14.823487>,  <25.013981, 20.896803, 14.707590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752653, 21.002455, 14.823487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711338, 20.707884, 14.556053>,  <25.686548, 20.531141, 14.395593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711338, 20.707884, 14.556053>,  <25.752653, 21.002455, 14.823487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711338, 20.707884, 14.556053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649835, 0.458929, -0.605887,
		0.753025, -0.497052, 0.431154,
		-0.103288, -0.736426, -0.668586,
		25.680351, 20.486956, 14.355477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406872, 20.863670, 14.609312>,  <25.752653, 21.002455, 14.823487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406872, 20.863670, 14.609312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185003, 20.678192, 14.332956>,  <26.051882, 20.566904, 14.167143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185003, 20.678192, 14.332956>,  <26.406872, 20.863670, 14.609312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185003, 20.678192, 14.332956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637892, 0.296170, -0.710899,
		0.534262, -0.835026, 0.131512,
		-0.554670, -0.463697, -0.690889,
		26.018602, 20.539083, 14.125690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883091, 20.364035, 14.192341>,  <26.406872, 20.863670, 14.609312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883091, 20.364035, 14.192341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570097, 20.398979, 13.945736>,  <26.382301, 20.419945, 13.797773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570097, 20.398979, 13.945736>,  <26.883091, 20.364035, 14.192341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570097, 20.398979, 13.945736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615269, 0.260683, -0.743968,
		0.095721, -0.961463, -0.257731,
		-0.782484, 0.087361, -0.616512,
		26.335352, 20.425186, 13.760782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007252, 20.111198, 13.622360>,  <26.883091, 20.364035, 14.192341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007252, 20.111198, 13.622360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733568, 20.367247, 13.482588>,  <26.569359, 20.520876, 13.398725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733568, 20.367247, 13.482588>,  <27.007252, 20.111198, 13.622360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733568, 20.367247, 13.482588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562342, 0.157997, -0.811670,
		-0.464359, -0.751852, -0.468070,
		-0.684209, 0.640122, -0.349431,
		26.528305, 20.559282, 13.377759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978119, 19.988285, 13.029209>,  <27.007252, 20.111198, 13.622360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978119, 19.988285, 13.029209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776428, 20.333195, 13.010304>,  <26.655413, 20.540142, 12.998961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776428, 20.333195, 13.010304>,  <26.978119, 19.988285, 13.029209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776428, 20.333195, 13.010304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523348, 0.261586, -0.810974,
		-0.686921, -0.433649, -0.583170,
		-0.504228, 0.862277, -0.047261,
		26.625160, 20.591877, 12.996126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724924, 19.972122, 12.354850>,  <26.978119, 19.988285, 13.029209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724924, 19.972122, 12.354850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727011, 20.347586, 12.492772>,  <26.728264, 20.572865, 12.575525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727011, 20.347586, 12.492772>,  <26.724924, 19.972122, 12.354850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727011, 20.347586, 12.492772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598621, 0.273269, -0.752979,
		-0.801015, 0.210337, -0.560475,
		0.005219, 0.938660, 0.344805,
		26.728577, 20.629183, 12.596213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784761, 20.225447, 11.806101>,  <26.724924, 19.972122, 12.354850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784761, 20.225447, 11.806101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883566, 20.502169, 12.077511>,  <26.942848, 20.668201, 12.240356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883566, 20.502169, 12.077511>,  <26.784761, 20.225447, 11.806101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883566, 20.502169, 12.077511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666283, 0.387177, -0.637307,
		-0.703600, 0.609510, -0.365300,
		0.247009, 0.691803, 0.678524,
		26.957668, 20.709709, 12.281068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824989, 20.782942, 11.408110>,  <26.784761, 20.225447, 11.806101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824989, 20.782942, 11.408110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014328, 20.891800, 11.743223>,  <27.127932, 20.957115, 11.944291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014328, 20.891800, 11.743223>,  <26.824989, 20.782942, 11.408110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014328, 20.891800, 11.743223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721793, 0.425347, -0.545980,
		-0.504934, 0.863144, 0.004906,
		0.473346, 0.272143, 0.837784,
		27.156332, 20.973442, 11.994558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044880, 21.409983, 11.259725>,  <26.824989, 20.782942, 11.408110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044880, 21.409983, 11.259725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259329, 21.306030, 11.580980>,  <27.387999, 21.243658, 11.773733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259329, 21.306030, 11.580980>,  <27.044880, 21.409983, 11.259725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259329, 21.306030, 11.580980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836947, 0.287584, -0.465635,
		-0.109960, 0.921822, 0.371689,
		0.536124, -0.259883, 0.803139,
		27.420166, 21.228065, 11.821922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537952, 21.987522, 11.373705>,  <27.044880, 21.409983, 11.259725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537952, 21.987522, 11.373705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666656, 21.637051, 11.517250>,  <27.743879, 21.426767, 11.603377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666656, 21.637051, 11.517250>,  <27.537952, 21.987522, 11.373705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666656, 21.637051, 11.517250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801941, 0.050695, -0.595249,
		0.503352, 0.479314, 0.718954,
		0.321758, -0.876178, 0.358864,
		27.763184, 21.374197, 11.624909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219631, 22.144812, 11.573247>,  <27.537952, 21.987522, 11.373705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219631, 22.144812, 11.573247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200773, 21.747768, 11.528521>,  <28.189459, 21.509542, 11.501685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200773, 21.747768, 11.528521>,  <28.219631, 22.144812, 11.573247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200773, 21.747768, 11.528521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888650, 0.009442, -0.458490,
		0.456157, -0.120980, 0.881638,
		-0.047143, -0.992610, -0.111816,
		28.186630, 21.449986, 11.494976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822834, 21.919308, 11.862706>,  <28.219631, 22.144812, 11.573247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822834, 21.919308, 11.862706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697409, 21.654272, 11.590631>,  <28.622154, 21.495251, 11.427386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697409, 21.654272, 11.590631>,  <28.822834, 21.919308, 11.862706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697409, 21.654272, 11.590631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940730, -0.119261, -0.317496,
		0.129250, -0.739428, 0.660712,
		-0.313562, -0.662588, -0.680188,
		28.603340, 21.455496, 11.386575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345158, 21.406441, 11.954988>,  <28.822834, 21.919308, 11.862706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345158, 21.406441, 11.954988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158760, 21.315481, 11.612962>,  <29.046921, 21.260906, 11.407745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158760, 21.315481, 11.612962>,  <29.345158, 21.406441, 11.954988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158760, 21.315481, 11.612962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883036, -0.058748, -0.465614,
		0.055647, -0.972028, 0.228178,
		-0.465994, -0.227399, -0.855066,
		29.018961, 21.247261, 11.356441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736795, 20.893898, 11.657272>,  <29.345158, 21.406441, 11.954988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736795, 20.893898, 11.657272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525723, 21.047253, 11.354073>,  <29.399078, 21.139265, 11.172153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525723, 21.047253, 11.354073>,  <29.736795, 20.893898, 11.657272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525723, 21.047253, 11.354073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833646, 0.062454, -0.548756,
		-0.163047, -0.921473, -0.352566,
		-0.527684, 0.383388, -0.758000,
		29.367418, 21.162270, 11.126673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806530, 20.460041, 11.089886>,  <29.736795, 20.893898, 11.657272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806530, 20.460041, 11.089886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730797, 20.826111, 10.947558>,  <29.685358, 21.045753, 10.862162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730797, 20.826111, 10.947558>,  <29.806530, 20.460041, 11.089886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730797, 20.826111, 10.947558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795096, -0.069746, -0.602459,
		-0.576173, -0.396974, -0.714448,
		-0.189331, 0.915176, -0.355818,
		29.673998, 21.100664, 10.840813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915579, 20.515686, 10.368564>,  <29.806530, 20.460041, 11.089886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915579, 20.515686, 10.368564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942907, 20.889921, 10.507134>,  <29.959305, 21.114462, 10.590277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942907, 20.889921, 10.507134>,  <29.915579, 20.515686, 10.368564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942907, 20.889921, 10.507134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885667, 0.102970, -0.452760,
		-0.459267, 0.337752, -0.821582,
		0.068322, 0.935586, 0.346426,
		29.963404, 21.170597, 10.611062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890011, 21.031483, 9.900522>,  <29.915579, 20.515686, 10.368564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890011, 21.031483, 9.900522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133934, 21.138506, 10.198931>,  <30.280289, 21.202721, 10.377975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133934, 21.138506, 10.198931>,  <29.890011, 21.031483, 9.900522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133934, 21.138506, 10.198931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760276, 0.068394, -0.645990,
		-0.223864, 0.961111, -0.161712,
		0.609808, 0.267560, 0.746020,
		30.316875, 21.218773, 10.422737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643885, 21.249769, 9.094799>,  <29.890011, 21.031483, 9.900522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643885, 21.249769, 9.094799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024984, 21.288260, 8.979551>,  <30.253643, 21.311354, 8.910403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024984, 21.288260, 8.979551>,  <29.643885, 21.249769, 9.094799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024984, 21.288260, 8.979551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271675, -0.154362, -0.949929,
		-0.135882, 0.983317, -0.120926,
		0.952748, 0.096225, -0.288118,
		30.310808, 21.317127, 8.893116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180269, 21.232355, 9.665647>,  <29.643885, 21.249769, 9.094799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180269, 21.232355, 9.665647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359419, 20.988136, 9.404375>,  <29.466909, 20.841604, 9.247612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359419, 20.988136, 9.404375>,  <29.180269, 21.232355, 9.665647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359419, 20.988136, 9.404375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725957, -0.674767, 0.132950,
		-0.521916, 0.414634, -0.745441,
		0.447873, -0.610547, -0.653178,
		29.493780, 20.804972, 9.208422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777382, 20.903675, 9.086380>,  <29.180269, 21.232355, 9.665647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777382, 20.903675, 9.086380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079077, 20.653292, 9.165677>,  <29.260094, 20.503061, 9.213256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079077, 20.653292, 9.165677>,  <28.777382, 20.903675, 9.086380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079077, 20.653292, 9.165677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646342, -0.760969, 0.056292,
		0.115620, -0.170591, -0.978535,
		0.754237, -0.625960, 0.198243,
		29.305347, 20.465504, 9.225150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882490, 20.379698, 8.497238>,  <28.777382, 20.903675, 9.086380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882490, 20.379698, 8.497238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974529, 20.275049, 8.872174>,  <29.029753, 20.212259, 9.097136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974529, 20.275049, 8.872174>,  <28.882490, 20.379698, 8.497238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974529, 20.275049, 8.872174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793243, -0.608395, 0.024917,
		0.563755, -0.749273, -0.347520,
		0.230099, -0.261621, 0.937341,
		29.043558, 20.196564, 9.153377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706495, 19.731354, 8.627410>,  <28.882490, 20.379698, 8.497238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706495, 19.731354, 8.627410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700911, 19.865837, 9.004084>,  <28.697559, 19.946527, 9.230087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700911, 19.865837, 9.004084>,  <28.706495, 19.731354, 8.627410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700911, 19.865837, 9.004084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787424, -0.584127, 0.196877,
		0.616254, -0.738755, 0.272896,
		-0.013962, 0.336211, 0.941683,
		28.696722, 19.966700, 9.286589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694557, 19.141146, 8.926614>,  <28.706495, 19.731354, 8.627410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694557, 19.141146, 8.926614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532608, 19.431356, 9.149213>,  <28.435438, 19.605482, 9.282772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532608, 19.431356, 9.149213>,  <28.694557, 19.141146, 8.926614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532608, 19.431356, 9.149213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742729, -0.615931, 0.262647,
		0.533321, -0.306988, 0.788243,
		-0.404874, 0.725526, 0.556497,
		28.411146, 19.649014, 9.316162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682213, 19.065365, 9.794374>,  <28.694557, 19.141146, 8.926614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682213, 19.065365, 9.794374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396433, 19.286137, 9.622355>,  <28.224966, 19.418600, 9.519145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396433, 19.286137, 9.622355>,  <28.682213, 19.065365, 9.794374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396433, 19.286137, 9.622355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693326, -0.475744, 0.541264,
		0.094148, 0.684866, 0.722561,
		-0.714447, 0.551930, -0.430045,
		28.182098, 19.451715, 9.493342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398403, 19.452494, 10.325066>,  <28.682213, 19.065365, 9.794374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398403, 19.452494, 10.325066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130196, 19.364428, 10.041677>,  <27.969271, 19.311588, 9.871645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130196, 19.364428, 10.041677>,  <28.398403, 19.452494, 10.325066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130196, 19.364428, 10.041677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631720, -0.331297, 0.700837,
		-0.389014, 0.917480, 0.083058,
		-0.670520, -0.220166, -0.708470,
		27.929039, 19.298378, 9.829137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690050, 19.811728, 10.435389>,  <28.398403, 19.452494, 10.325066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690050, 19.811728, 10.435389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605112, 19.492241, 10.210192>,  <27.554150, 19.300549, 10.075073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605112, 19.492241, 10.210192>,  <27.690050, 19.811728, 10.435389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605112, 19.492241, 10.210192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725247, -0.257316, 0.638596,
		-0.654925, 0.543910, -0.524628,
		-0.212344, -0.798718, -0.562992,
		27.541409, 19.252626, 10.041294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966230, 19.761347, 10.385934>,  <27.690050, 19.811728, 10.435389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966230, 19.761347, 10.385934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076359, 19.389887, 10.286487>,  <27.142435, 19.167011, 10.226818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076359, 19.389887, 10.286487>,  <26.966230, 19.761347, 10.385934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076359, 19.389887, 10.286487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727879, -0.370304, 0.577119,
		-0.628006, 0.022073, -0.777896,
		0.275319, -0.928648, -0.248619,
		27.158955, 19.111292, 10.211901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377621, 19.456926, 10.243010>,  <26.966230, 19.761347, 10.385934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377621, 19.456926, 10.243010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621710, 19.147562, 10.311671>,  <26.768164, 18.961945, 10.352868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621710, 19.147562, 10.311671>,  <26.377621, 19.456926, 10.243010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621710, 19.147562, 10.311671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758177, -0.507281, 0.409674,
		-0.229769, -0.380137, -0.895936,
		0.610224, -0.773409, 0.171654,
		26.804777, 18.915539, 10.363168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971958, 18.864159, 10.178088>,  <26.377621, 19.456926, 10.243010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971958, 18.864159, 10.178088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266546, 18.726641, 10.411127>,  <26.443298, 18.644131, 10.550950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266546, 18.726641, 10.411127>,  <25.971958, 18.864159, 10.178088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266546, 18.726641, 10.411127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673178, -0.457333, 0.581100,
		0.066663, -0.820154, -0.568245,
		0.736469, -0.343793, 0.582597,
		26.487488, 18.623503, 10.585906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813251, 18.159613, 10.279734>,  <25.971958, 18.864159, 10.178088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813251, 18.159613, 10.279734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066263, 18.224506, 10.582676>,  <26.218071, 18.263443, 10.764441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066263, 18.224506, 10.582676>,  <25.813251, 18.159613, 10.279734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066263, 18.224506, 10.582676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486520, -0.677614, 0.551487,
		0.602665, -0.717300, -0.349679,
		0.632529, 0.162236, 0.757355,
		26.256021, 18.273178, 10.809882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949245, 17.460331, 10.561661>,  <25.813251, 18.159613, 10.279734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949245, 17.460331, 10.561661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030064, 17.731850, 10.844053>,  <26.078554, 17.894762, 11.013489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030064, 17.731850, 10.844053>,  <25.949245, 17.460331, 10.561661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030064, 17.731850, 10.844053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550636, -0.517394, 0.655060,
		0.809924, -0.521092, 0.269233,
		0.202047, 0.678798, 0.705982,
		26.090677, 17.935490, 11.055848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185808, 17.061024, 11.133757>,  <25.949245, 17.460331, 10.561661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185808, 17.061024, 11.133757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070950, 17.421104, 11.264710>,  <26.002033, 17.637154, 11.343283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070950, 17.421104, 11.264710>,  <26.185808, 17.061024, 11.133757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070950, 17.421104, 11.264710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383314, -0.421207, 0.821982,
		0.877847, 0.110540, 0.466010,
		-0.287149, 0.900203, 0.327384,
		25.984804, 17.691166, 11.362926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284241, 17.022507, 11.761358>,  <26.185808, 17.061024, 11.133757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284241, 17.022507, 11.761358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034920, 17.335127, 11.750960>,  <25.885328, 17.522699, 11.744721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034920, 17.335127, 11.750960>,  <26.284241, 17.022507, 11.761358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034920, 17.335127, 11.750960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502028, -0.374447, 0.779587,
		0.599553, 0.498968, 0.625753,
		-0.623301, 0.781550, -0.025995,
		25.847929, 17.569592, 11.743162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301966, 17.324354, 12.371359>,  <26.284241, 17.022507, 11.761358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301966, 17.324354, 12.371359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953930, 17.431711, 12.205995>,  <25.745108, 17.496126, 12.106776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953930, 17.431711, 12.205995>,  <26.301966, 17.324354, 12.371359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953930, 17.431711, 12.205995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478378, -0.257792, 0.839463,
		0.118733, 0.928174, 0.352697,
		-0.870090, 0.268394, -0.413410,
		25.692904, 17.512230, 12.081971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041862, 17.906464, 12.789016>,  <26.301966, 17.324354, 12.371359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041862, 17.906464, 12.789016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730007, 17.739548, 12.602239>,  <25.542894, 17.639399, 12.490172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730007, 17.739548, 12.602239>,  <26.041862, 17.906464, 12.789016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730007, 17.739548, 12.602239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491538, -0.054229, 0.869166,
		-0.388018, 0.907153, -0.162836,
		-0.779636, -0.417292, -0.466942,
		25.496117, 17.614361, 12.462156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588638, 18.333021, 13.072985>,  <26.041862, 17.906464, 12.789016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588638, 18.333021, 13.072985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391253, 18.012920, 12.936695>,  <25.272821, 17.820860, 12.854921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391253, 18.012920, 12.936695>,  <25.588638, 18.333021, 13.072985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391253, 18.012920, 12.936695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597164, 0.026909, 0.801667,
		-0.632366, 0.599063, -0.491159,
		-0.493466, -0.800250, -0.340723,
		25.243214, 17.772846, 12.834478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833475, 18.498253, 13.244521>,  <25.588638, 18.333021, 13.072985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833475, 18.498253, 13.244521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861092, 18.104912, 13.177293>,  <24.877661, 17.868906, 13.136956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861092, 18.104912, 13.177293>,  <24.833475, 18.498253, 13.244521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861092, 18.104912, 13.177293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726741, -0.164990, 0.666803,
		-0.683433, 0.076108, -0.726035,
		0.069039, -0.983354, -0.168070,
		24.881804, 17.809906, 13.126872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.203035, 18.229458, 13.333487>,  <24.833475, 18.498253, 13.244521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.203035, 18.229458, 13.333487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416664, 17.898684, 13.403848>,  <24.544842, 17.700218, 13.446064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.416664, 17.898684, 13.403848>,  <24.203035, 18.229458, 13.333487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.416664, 17.898684, 13.403848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550770, -0.182461, 0.814470,
		-0.641420, -0.531867, -0.552899,
		0.534072, -0.826937, 0.175902,
		24.576885, 17.650602, 13.456618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.689926, 17.822462, 13.587761>,  <24.203035, 18.229458, 13.333487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.689926, 17.822462, 13.587761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.025652, 17.624010, 13.676669>,  <24.227087, 17.504940, 13.730014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.025652, 17.624010, 13.676669>,  <23.689926, 17.822462, 13.587761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.025652, 17.624010, 13.676669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443652, -0.388780, 0.807480,
		-0.314193, -0.776345, -0.546416,
		0.839318, -0.496123, 0.222275,
		24.277447, 17.475172, 13.743351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.507341, 17.121035, 13.726584>,  <23.689926, 17.822462, 13.587761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.507341, 17.121035, 13.726584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.864286, 17.189640, 13.893569>,  <24.078453, 17.230803, 13.993759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.864286, 17.189640, 13.893569>,  <23.507341, 17.121035, 13.726584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.864286, 17.189640, 13.893569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305488, -0.451332, 0.838437,
		0.332215, -0.875718, -0.350357,
		0.892362, 0.171512, 0.417461,
		24.131994, 17.241093, 14.018807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.695160, 16.483727, 14.026186>,  <23.507341, 17.121035, 13.726584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.695160, 16.483727, 14.026186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.904779, 16.756519, 14.230255>,  <24.030550, 16.920195, 14.352696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.904779, 16.756519, 14.230255>,  <23.695160, 16.483727, 14.026186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.904779, 16.756519, 14.230255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322628, -0.395414, 0.859976,
		0.788217, -0.615264, 0.012811,
		0.524046, 0.681981, 0.510174,
		24.061993, 16.961113, 14.383307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.034513, 16.054253, 14.497880>,  <23.695160, 16.483727, 14.026186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.034513, 16.054253, 14.497880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.012856, 16.428493, 14.637433>,  <23.999861, 16.653038, 14.721165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.012856, 16.428493, 14.637433>,  <24.034513, 16.054253, 14.497880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.012856, 16.428493, 14.637433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079431, -0.352324, 0.932501,
		0.995369, 0.022777, 0.093392,
		-0.054143, 0.935601, 0.348883,
		23.996613, 16.709173, 14.742098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.380989, 15.969656, 15.156113>,  <24.034513, 16.054253, 14.497880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.380989, 15.969656, 15.156113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.169743, 16.309324, 15.156455>,  <24.042995, 16.513126, 15.156660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.169743, 16.309324, 15.156455>,  <24.380989, 15.969656, 15.156113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.169743, 16.309324, 15.156455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270955, -0.169466, 0.947557,
		0.804784, 0.500188, 0.319585,
		-0.528116, 0.849172, 0.000855,
		24.011309, 16.564075, 15.156712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.677546, 15.304534, 15.336901>,  <24.380989, 15.969656, 15.156113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.677546, 15.304534, 15.336901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038980, 15.139482, 15.290833>,  <25.255842, 15.040452, 15.263193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038980, 15.139482, 15.290833>,  <24.677546, 15.304534, 15.336901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038980, 15.139482, 15.290833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353316, 0.869818, -0.344361,
		0.242269, 0.270470, 0.931746,
		0.903589, -0.412629, -0.115168,
		25.310057, 15.015694, 15.256283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161209, 15.681112, 15.729363>,  <24.677546, 15.304534, 15.336901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161209, 15.681112, 15.729363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359655, 15.533051, 15.415203>,  <25.478724, 15.444214, 15.226707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359655, 15.533051, 15.415203>,  <25.161209, 15.681112, 15.729363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359655, 15.533051, 15.415203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485498, 0.868208, -0.102505,
		0.719834, -0.330456, 0.610441,
		0.496116, -0.370154, -0.785401,
		25.508490, 15.422004, 15.179583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898930, 15.940917, 15.852364>,  <25.161209, 15.681112, 15.729363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898930, 15.940917, 15.852364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811119, 15.897521, 15.464541>,  <25.758432, 15.871483, 15.231848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811119, 15.897521, 15.464541>,  <25.898930, 15.940917, 15.852364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811119, 15.897521, 15.464541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170925, 0.974150, -0.147706,
		0.960517, -0.198147, -0.195309,
		-0.219527, -0.108491, -0.969555,
		25.745260, 15.864974, 15.173675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365253, 16.116951, 15.306788>,  <25.898930, 15.940917, 15.852364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365253, 16.116951, 15.306788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996805, 16.200359, 15.175302>,  <25.775736, 16.250404, 15.096410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996805, 16.200359, 15.175302>,  <26.365253, 16.116951, 15.306788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996805, 16.200359, 15.175302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237686, 0.970017, -0.050712,
		0.308286, -0.124843, -0.943066,
		-0.921121, 0.208520, -0.328717,
		25.720469, 16.262915, 15.076687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180138, 15.456709, 14.979990>,  <26.365253, 16.116951, 15.306788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180138, 15.456709, 14.979990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514769, 15.346061, 14.790838>,  <26.715548, 15.279672, 14.677347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514769, 15.346061, 14.790838>,  <26.180138, 15.456709, 14.979990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514769, 15.346061, 14.790838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478649, -0.050853, 0.876532,
		-0.266515, -0.959632, 0.089862,
		0.836579, -0.276621, -0.472880,
		26.765743, 15.263075, 14.648974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402855, 14.822800, 15.275181>,  <26.180138, 15.456709, 14.979990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402855, 14.822800, 15.275181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709305, 15.031421, 15.124962>,  <26.893175, 15.156593, 15.034830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709305, 15.031421, 15.124962>,  <26.402855, 14.822800, 15.275181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709305, 15.031421, 15.124962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413018, 0.048158, 0.909448,
		0.492410, -0.851859, -0.178515,
		0.766125, 0.521552, -0.375547,
		26.939142, 15.187886, 15.012298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.299851, 15.823303, 25.299191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.971315, 15.605723, 25.230467>,  <14.774194, 15.475175, 25.189234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.971315, 15.605723, 25.230467>,  <15.299851, 15.823303, 25.299191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.971315, 15.605723, 25.230467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107318, 0.148462, -0.983078,
		0.560252, -0.825880, -0.063562,
		-0.821341, -0.543950, -0.171808,
		14.724914, 15.442538, 25.178925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433277, 15.452955, 24.711407>,  <15.299851, 15.823303, 25.299191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433277, 15.452955, 24.711407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.034689, 15.419507, 24.708483>,  <14.795536, 15.399438, 24.706728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.034689, 15.419507, 24.708483>,  <15.433277, 15.452955, 24.711407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034689, 15.419507, 24.708483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003019, 0.122754, -0.992433,
		0.083880, -0.988909, -0.122573,
		-0.996471, -0.083615, -0.007311,
		14.735747, 15.394421, 24.706289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.199186, 14.809846, 24.249956>,  <15.433277, 15.452955, 24.711407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.199186, 14.809846, 24.249956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.923965, 15.099803, 24.263290>,  <14.758831, 15.273777, 24.271292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.923965, 15.099803, 24.263290>,  <15.199186, 14.809846, 24.249956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923965, 15.099803, 24.263290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041973, 0.006107, -0.999100,
		-0.724443, -0.688835, 0.026223,
		-0.688055, 0.724892, 0.033337,
		14.717547, 15.317270, 24.273291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.607814, 14.654130, 23.832457>,  <15.199186, 14.809846, 24.249956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.607814, 14.654130, 23.832457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.588399, 15.052877, 23.857430>,  <14.576750, 15.292126, 23.872414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.588399, 15.052877, 23.857430>,  <14.607814, 14.654130, 23.832457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588399, 15.052877, 23.857430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195589, 0.051810, -0.979316,
		-0.979484, -0.059745, 0.192462,
		-0.048538, 0.996868, 0.062433,
		14.573837, 15.351938, 23.876160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.115905, 14.883920, 23.471882>,  <14.607814, 14.654130, 23.832457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.115905, 14.883920, 23.471882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.327262, 15.223310, 23.483837>,  <14.454076, 15.426943, 23.491011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.327262, 15.223310, 23.483837>,  <14.115905, 14.883920, 23.471882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.327262, 15.223310, 23.483837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195369, 0.155774, -0.968280,
		-0.826216, 0.505793, 0.248076,
		0.528393, 0.848474, 0.029887,
		14.485780, 15.477852, 23.492804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.760640, 15.302099, 23.065609>,  <14.115905, 14.883920, 23.471882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.760640, 15.302099, 23.065609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.114500, 15.487956, 23.081114>,  <14.326817, 15.599470, 23.090416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.114500, 15.487956, 23.081114>,  <13.760640, 15.302099, 23.065609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.114500, 15.487956, 23.081114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054880, 0.186320, -0.980955,
		-0.463014, 0.865675, 0.190328,
		0.884650, 0.464641, 0.038760,
		14.379895, 15.627348, 23.092743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.728917, 15.924434, 22.633341>,  <13.760640, 15.302099, 23.065609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.728917, 15.924434, 22.633341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.119301, 15.845120, 22.669538>,  <14.353531, 15.797532, 22.691257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.119301, 15.845120, 22.669538>,  <13.728917, 15.924434, 22.633341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.119301, 15.845120, 22.669538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158545, 0.360952, -0.919009,
		0.149562, 0.911262, 0.383711,
		0.975958, -0.198284, 0.090492,
		14.412088, 15.785635, 22.696686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.083429, 16.559107, 22.366213>,  <13.728917, 15.924434, 22.633341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.083429, 16.559107, 22.366213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.320519, 16.238457, 22.335033>,  <14.462773, 16.046066, 22.316326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.320519, 16.238457, 22.335033>,  <14.083429, 16.559107, 22.366213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.320519, 16.238457, 22.335033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200303, 0.240459, -0.949767,
		0.780100, 0.547337, 0.303094,
		0.592724, -0.801625, -0.077948,
		14.498337, 15.997970, 22.311649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.588282, 16.822479, 21.989887>,  <14.083429, 16.559107, 22.366213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.588282, 16.822479, 21.989887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.617568, 16.425579, 21.949732>,  <14.635140, 16.187439, 21.925638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.617568, 16.425579, 21.949732>,  <14.588282, 16.822479, 21.989887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.617568, 16.425579, 21.949732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116243, 0.108462, -0.987281,
		0.990519, 0.060616, 0.123283,
		0.073217, -0.992251, -0.100387,
		14.639533, 16.127903, 21.919615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.118544, 16.879732, 21.705141>,  <14.588282, 16.822479, 21.989887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.118544, 16.879732, 21.705141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.989248, 16.510229, 21.622978>,  <14.911671, 16.288528, 21.573681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.989248, 16.510229, 21.622978>,  <15.118544, 16.879732, 21.705141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.989248, 16.510229, 21.622978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383903, 0.070388, -0.920687,
		0.864948, -0.376458, 0.331881,
		-0.323239, -0.923756, -0.205405,
		14.892277, 16.233103, 21.561357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.709773, 16.501228, 21.353424>,  <15.118544, 16.879732, 21.705141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.709773, 16.501228, 21.353424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.385796, 16.292589, 21.246149>,  <15.191409, 16.167406, 21.181784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.385796, 16.292589, 21.246149>,  <15.709773, 16.501228, 21.353424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.385796, 16.292589, 21.246149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323865, -0.016524, -0.945959,
		0.488980, -0.853031, 0.182311,
		-0.809945, -0.521599, -0.268187,
		15.142812, 16.136110, 21.165693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.984155, 15.929620, 20.923492>,  <15.709773, 16.501228, 21.353424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.984155, 15.929620, 20.923492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.603471, 16.029549, 20.852119>,  <15.375061, 16.089506, 20.809296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.603471, 16.029549, 20.852119>,  <15.984155, 15.929620, 20.923492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603471, 16.029549, 20.852119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246337, 0.274551, -0.929484,
		-0.183217, -0.928553, -0.322833,
		-0.951708, 0.249823, -0.178435,
		15.317958, 16.104496, 20.798590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942231, 15.883348, 20.286921>,  <15.984155, 15.929620, 20.923492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942231, 15.883348, 20.286921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.592529, 16.073128, 20.328058>,  <15.382709, 16.186995, 20.352741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.592529, 16.073128, 20.328058>,  <15.942231, 15.883348, 20.286921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.592529, 16.073128, 20.328058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148618, 0.463238, -0.873684,
		-0.462159, -0.748538, -0.475499,
		-0.874255, 0.474449, 0.102843,
		15.330253, 16.215462, 20.358912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520180, 15.688906, 19.700378>,  <15.942231, 15.883348, 20.286921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.520180, 15.688906, 19.700378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.411287, 16.050621, 19.831924>,  <15.345952, 16.267651, 19.910852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.411287, 16.050621, 19.831924>,  <15.520180, 15.688906, 19.700378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.411287, 16.050621, 19.831924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213729, 0.390061, -0.895641,
		-0.938195, -0.173534, -0.299460,
		-0.272231, 0.904289, 0.328865,
		15.329618, 16.321907, 19.930584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121187, 15.957252, 19.134777>,  <15.520180, 15.688906, 19.700378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.121187, 15.957252, 19.134777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.219811, 16.278263, 19.352091>,  <15.278986, 16.470869, 19.482479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.219811, 16.278263, 19.352091>,  <15.121187, 15.957252, 19.134777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.219811, 16.278263, 19.352091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317846, 0.462619, -0.827622,
		-0.915523, 0.376740, -0.141017,
		0.246561, 0.802528, 0.543283,
		15.293779, 16.519022, 19.515076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.759405, 16.539877, 18.861174>,  <15.121187, 15.957252, 19.134777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.759405, 16.539877, 18.861174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.041963, 16.739853, 19.061602>,  <15.211497, 16.859838, 19.181858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.041963, 16.739853, 19.061602>,  <14.759405, 16.539877, 18.861174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041963, 16.739853, 19.061602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206390, 0.531663, -0.821424,
		-0.677061, 0.683665, 0.272381,
		0.706393, 0.499938, 0.501070,
		15.253881, 16.889833, 19.211922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.732535, 17.231169, 18.648981>,  <14.759405, 16.539877, 18.861174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.732535, 17.231169, 18.648981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.096207, 17.251299, 18.814323>,  <15.314409, 17.263376, 18.913528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.096207, 17.251299, 18.814323>,  <14.732535, 17.231169, 18.648981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096207, 17.251299, 18.814323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325460, 0.533339, -0.780785,
		-0.259753, 0.844403, 0.468521,
		0.909178, 0.050326, 0.413356,
		15.368960, 17.266397, 18.938330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.923403, 17.910648, 18.597231>,  <14.732535, 17.231169, 18.648981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.923403, 17.910648, 18.597231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.270748, 17.716763, 18.639183>,  <15.479156, 17.600431, 18.664354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.270748, 17.716763, 18.639183>,  <14.923403, 17.910648, 18.597231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.270748, 17.716763, 18.639183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393466, 0.544632, -0.740649,
		0.301880, 0.684420, 0.663655,
		0.868363, -0.484712, 0.104882,
		15.531257, 17.571348, 18.670649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.448483, 18.464649, 18.496159>,  <14.923403, 17.910648, 18.597231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.448483, 18.464649, 18.496159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.605041, 18.101013, 18.439072>,  <15.698976, 17.882832, 18.404819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.605041, 18.101013, 18.439072>,  <15.448483, 18.464649, 18.496159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605041, 18.101013, 18.439072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463778, 0.328824, -0.822669,
		0.794808, 0.255799, 0.550315,
		0.391395, -0.909088, -0.142718,
		15.722459, 17.828287, 18.396255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.208494, 18.620916, 18.564741>,  <15.448483, 18.464649, 18.496159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.208494, 18.620916, 18.564741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.165392, 18.281956, 18.356779>,  <16.139530, 18.078579, 18.232002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.165392, 18.281956, 18.356779>,  <16.208494, 18.620916, 18.564741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165392, 18.281956, 18.356779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623733, 0.349602, -0.699096,
		0.774175, -0.399611, 0.490881,
		-0.107754, -0.847401, -0.519904,
		16.133066, 18.027735, 18.200808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899803, 18.555239, 18.318729>,  <16.208494, 18.620916, 18.564741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899803, 18.555239, 18.318729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.693537, 18.285019, 18.107931>,  <16.569777, 18.122887, 17.981453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.693537, 18.285019, 18.107931>,  <16.899803, 18.555239, 18.318729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693537, 18.285019, 18.107931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657651, 0.082155, -0.748829,
		0.549167, -0.732723, 0.401911,
		-0.515665, -0.675550, -0.526993,
		16.538837, 18.082354, 17.949833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395189, 18.056765, 18.061193>,  <16.899803, 18.555239, 18.318729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395189, 18.056765, 18.061193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.081606, 18.052607, 17.812904>,  <16.893456, 18.050112, 17.663931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.081606, 18.052607, 17.812904>,  <17.395189, 18.056765, 18.061193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081606, 18.052607, 17.812904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588675, 0.305078, -0.748591,
		0.197149, -0.952271, -0.233051,
		-0.783960, -0.010392, -0.620724,
		16.846418, 18.049488, 17.626686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646940, 17.360229, 18.095001>,  <17.395189, 18.056765, 18.061193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.646940, 17.360229, 18.095001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.041725, 17.417236, 18.124929>,  <18.278595, 17.451441, 18.142887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.041725, 17.417236, 18.124929>,  <17.646940, 17.360229, 18.095001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041725, 17.417236, 18.124929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033918, -0.270254, 0.962191,
		0.157350, -0.952182, -0.261896,
		0.986960, 0.142518, 0.074821,
		18.337812, 17.459991, 18.147375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.902700, 16.702240, 18.343788>,  <17.646940, 17.360229, 18.095001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.902700, 16.702240, 18.343788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.158161, 16.999310, 18.424349>,  <18.311438, 17.177551, 18.472685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.158161, 16.999310, 18.424349>,  <17.902700, 16.702240, 18.343788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158161, 16.999310, 18.424349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080244, -0.324582, 0.942447,
		0.765301, -0.585734, -0.266890,
		0.638651, 0.742672, 0.201402,
		18.349756, 17.222111, 18.484770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424091, 16.279617, 18.784384>,  <17.902700, 16.702240, 18.343788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424091, 16.279617, 18.784384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.462133, 16.672586, 18.848640>,  <18.484959, 16.908367, 18.887194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.462133, 16.672586, 18.848640>,  <18.424091, 16.279617, 18.784384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.462133, 16.672586, 18.848640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233384, -0.178878, 0.955790,
		0.967723, -0.053408, -0.246293,
		0.095103, 0.982420, 0.160640,
		18.490664, 16.967312, 18.896832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.937721, 16.291119, 19.195179>,  <18.424091, 16.279617, 18.784384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.937721, 16.291119, 19.195179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.748478, 16.637018, 19.262569>,  <18.634932, 16.844557, 19.303003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.748478, 16.637018, 19.262569>,  <18.937721, 16.291119, 19.195179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.748478, 16.637018, 19.262569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026712, -0.177062, 0.983837,
		0.880600, 0.469960, 0.060670,
		-0.473106, 0.864747, 0.168474,
		18.606546, 16.896442, 19.313112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445906, 16.662327, 19.582785>,  <18.937721, 16.291119, 19.195179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445906, 16.662327, 19.582785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.087984, 16.822151, 19.662458>,  <18.873230, 16.918045, 19.710262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.087984, 16.822151, 19.662458>,  <19.445906, 16.662327, 19.582785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.087984, 16.822151, 19.662458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211564, -0.013390, 0.977272,
		0.393146, 0.916610, -0.072551,
		-0.894806, 0.399560, 0.199186,
		18.819542, 16.942019, 19.722214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639927, 17.241394, 20.004450>,  <19.445906, 16.662327, 19.582785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.639927, 17.241394, 20.004450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.261349, 17.143744, 20.088966>,  <19.034203, 17.085154, 20.139677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.261349, 17.143744, 20.088966>,  <19.639927, 17.241394, 20.004450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261349, 17.143744, 20.088966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180795, 0.141472, 0.973293,
		-0.267497, 0.959369, -0.089759,
		-0.946445, -0.244125, 0.211292,
		18.977415, 17.070507, 20.152353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.442110, 17.651270, 20.554981>,  <19.639927, 17.241394, 20.004450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.442110, 17.651270, 20.554981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.162300, 17.365427, 20.555471>,  <18.994413, 17.193922, 20.555765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.162300, 17.365427, 20.555471>,  <19.442110, 17.651270, 20.554981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.162300, 17.365427, 20.555471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081576, -0.078150, 0.993599,
		-0.709935, 0.695149, 0.112962,
		-0.699527, -0.714605, 0.001226,
		18.952442, 17.151045, 20.555840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.106823, 17.783659, 21.164663>,  <19.442110, 17.651270, 20.554981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.106823, 17.783659, 21.164663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.972546, 17.425974, 21.046213>,  <18.891979, 17.211363, 20.975143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.972546, 17.425974, 21.046213>,  <19.106823, 17.783659, 21.164663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.972546, 17.425974, 21.046213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112624, -0.274014, 0.955109,
		-0.935215, 0.353973, -0.008725,
		-0.335692, -0.894214, -0.296128,
		18.871838, 17.157709, 20.957375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.529463, 17.648415, 21.530075>,  <19.106823, 17.783659, 21.164663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.529463, 17.648415, 21.530075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.625988, 17.286596, 21.389465>,  <18.683903, 17.069506, 21.305099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.625988, 17.286596, 21.389465>,  <18.529463, 17.648415, 21.530075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.625988, 17.286596, 21.389465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054047, -0.349141, 0.935510,
		-0.968941, -0.244749, -0.035364,
		0.241312, -0.904543, -0.351525,
		18.698381, 17.015234, 21.284008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.096363, 17.231127, 21.923773>,  <18.529463, 17.648415, 21.530075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.096363, 17.231127, 21.923773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.411495, 17.019466, 21.797712>,  <18.600574, 16.892469, 21.722076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.411495, 17.019466, 21.797712>,  <18.096363, 17.231127, 21.923773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.411495, 17.019466, 21.797712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115683, -0.375455, 0.919593,
		-0.604932, -0.760940, -0.234581,
		0.787829, -0.529154, -0.315152,
		18.647844, 16.860720, 21.703167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037825, 16.506931, 22.086773>,  <18.096363, 17.231127, 21.923773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037825, 16.506931, 22.086773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.435070, 16.538612, 22.052250>,  <18.673418, 16.557621, 22.031536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.435070, 16.538612, 22.052250>,  <18.037825, 16.506931, 22.086773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.435070, 16.538612, 22.052250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107380, -0.321083, 0.940944,
		0.046814, -0.943733, -0.327377,
		0.993115, 0.079203, -0.086307,
		18.733006, 16.562374, 22.026358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264727, 15.917661, 22.438650>,  <18.037825, 16.506931, 22.086773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264727, 15.917661, 22.438650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.559034, 16.187750, 22.417799>,  <18.735619, 16.349804, 22.405289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.559034, 16.187750, 22.417799>,  <18.264727, 15.917661, 22.438650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559034, 16.187750, 22.417799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183330, -0.124486, 0.975138,
		0.651946, -0.727033, -0.215381,
		0.735769, 0.675223, -0.052129,
		18.779766, 16.390316, 22.402161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.750637, 15.589023, 22.701372>,  <18.264727, 15.917661, 22.438650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.750637, 15.589023, 22.701372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.820528, 15.978333, 22.760979>,  <18.862463, 16.211918, 22.796743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.820528, 15.978333, 22.760979>,  <18.750637, 15.589023, 22.701372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.820528, 15.978333, 22.760979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023391, -0.155405, 0.987574,
		0.984339, -0.169071, -0.049920,
		0.174727, 0.973275, 0.149017,
		18.872946, 16.270315, 22.805683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435301, 15.573537, 23.070076>,  <18.750637, 15.589023, 22.701372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435301, 15.573537, 23.070076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.261141, 15.925730, 23.145098>,  <19.156645, 16.137045, 23.190111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.261141, 15.925730, 23.145098>,  <19.435301, 15.573537, 23.070076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261141, 15.925730, 23.145098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053960, -0.182437, 0.981736,
		0.898617, 0.437570, 0.031922,
		-0.435402, 0.880482, 0.187553,
		19.130520, 16.189875, 23.201363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.673059, 15.834811, 23.725267>,  <19.435301, 15.573537, 23.070076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.673059, 15.834811, 23.725267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.337795, 16.042061, 23.657108>,  <19.136637, 16.166410, 23.616213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.337795, 16.042061, 23.657108>,  <19.673059, 15.834811, 23.725267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.337795, 16.042061, 23.657108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264319, -0.112574, 0.957843,
		0.477100, 0.847864, 0.231305,
		-0.838159, 0.518125, -0.170397,
		19.086348, 16.197498, 23.605989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683943, 16.310942, 24.367937>,  <19.673059, 15.834811, 23.725267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683943, 16.310942, 24.367937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.317205, 16.289072, 24.209745>,  <19.097162, 16.275949, 24.114830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.317205, 16.289072, 24.209745>,  <19.683943, 16.310942, 24.367937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317205, 16.289072, 24.209745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397607, 0.035487, 0.916869,
		-0.036096, 0.997873, -0.054275,
		-0.916846, -0.054676, -0.395481,
		19.042152, 16.272669, 24.091101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280590, 16.832272, 24.705784>,  <19.683943, 16.310942, 24.367937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280590, 16.832272, 24.705784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.012835, 16.564720, 24.576466>,  <18.852180, 16.404190, 24.498875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.012835, 16.564720, 24.576466>,  <19.280590, 16.832272, 24.705784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.012835, 16.564720, 24.576466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474393, 0.049952, 0.878894,
		-0.571723, 0.741693, -0.350748,
		-0.669390, -0.668877, -0.323296,
		18.812017, 16.364058, 24.479477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.702726, 17.095097, 24.992321>,  <19.280590, 16.832272, 24.705784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.702726, 17.095097, 24.992321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.580069, 16.732225, 24.877085>,  <18.506474, 16.514503, 24.807943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.580069, 16.732225, 24.877085>,  <18.702726, 17.095097, 24.992321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.580069, 16.732225, 24.877085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338816, -0.178815, 0.923704,
		-0.889480, 0.380857, -0.252534,
		-0.306643, -0.907179, -0.288093,
		18.488075, 16.460072, 24.790657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.396463, 17.007906, 24.811924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.620592, 16.679682, 24.857031>,  <17.755070, 16.482748, 24.884096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.620592, 16.679682, 24.857031>,  <17.396463, 17.007906, 24.811924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620592, 16.679682, 24.857031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500013, -0.226566, 0.835855,
		-0.660321, -0.524735, -0.537242,
		0.560324, -0.820561, 0.112768,
		17.788689, 16.433514, 24.890862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.931831, 16.365646, 24.640810>,  <17.396463, 17.007906, 24.811924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.931831, 16.365646, 24.640810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.242641, 16.281713, 24.878199>,  <17.429127, 16.231354, 25.020632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.242641, 16.281713, 24.878199>,  <16.931831, 16.365646, 24.640810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.242641, 16.281713, 24.878199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628890, -0.299313, 0.717571,
		0.027065, -0.930797, -0.364534,
		0.777023, -0.209831, 0.593470,
		17.475748, 16.218763, 25.056240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825180, 15.736707, 25.017244>,  <16.931831, 16.365646, 24.640810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825180, 15.736707, 25.017244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.116932, 15.894099, 25.241093>,  <17.291983, 15.988535, 25.375402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.116932, 15.894099, 25.241093>,  <16.825180, 15.736707, 25.017244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.116932, 15.894099, 25.241093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400695, -0.417304, 0.815660,
		0.554479, -0.819164, -0.146707,
		0.729381, 0.393481, 0.559621,
		17.335747, 16.012144, 25.408979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817524, 15.344824, 25.564196>,  <16.825180, 15.736707, 25.017244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817524, 15.344824, 25.564196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.083582, 15.599686, 25.719950>,  <17.243216, 15.752603, 25.813402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.083582, 15.599686, 25.719950>,  <16.817524, 15.344824, 25.564196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083582, 15.599686, 25.719950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198706, -0.351630, 0.914807,
		0.719792, -0.685850, -0.107277,
		0.665142, 0.637155, 0.389383,
		17.283125, 15.790832, 25.836765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206051, 14.909622, 25.905678>,  <16.817524, 15.344824, 25.564196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206051, 14.909622, 25.905678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.196699, 15.283618, 26.047239>,  <17.191088, 15.508016, 26.132175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.196699, 15.283618, 26.047239>,  <17.206051, 14.909622, 25.905678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.196699, 15.283618, 26.047239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315279, -0.342830, 0.884911,
		0.948711, -0.090888, 0.302798,
		-0.023380, 0.934990, 0.353902,
		17.189686, 15.564116, 26.153410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533991, 14.941668, 26.472729>,  <17.206051, 14.909622, 25.905678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.533991, 14.941668, 26.472729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.289232, 15.253179, 26.527988>,  <17.142376, 15.440085, 26.561144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.289232, 15.253179, 26.527988>,  <17.533991, 14.941668, 26.472729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.289232, 15.253179, 26.527988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139020, -0.277844, 0.950513,
		0.778623, 0.562412, 0.278278,
		-0.611898, 0.778778, 0.138150,
		17.105663, 15.486812, 26.569433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567450, 15.019239, 27.144714>,  <17.533991, 14.941668, 26.472729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567450, 15.019239, 27.144714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.241297, 15.232490, 27.054447>,  <17.045605, 15.360439, 27.000286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.241297, 15.232490, 27.054447>,  <17.567450, 15.019239, 27.144714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241297, 15.232490, 27.054447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412045, -0.260620, 0.873096,
		0.406654, 0.804895, 0.432177,
		-0.815384, 0.533124, -0.225670,
		16.996681, 15.392426, 26.986746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393978, 15.481753, 27.655254>,  <17.567450, 15.019239, 27.144714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.393978, 15.481753, 27.655254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.038689, 15.434958, 27.477547>,  <16.825516, 15.406880, 27.370922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.038689, 15.434958, 27.477547>,  <17.393978, 15.481753, 27.655254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.038689, 15.434958, 27.477547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430709, -0.124412, 0.893875,
		-0.159846, 0.985310, 0.060117,
		-0.888222, -0.116990, -0.444268,
		16.772223, 15.399860, 27.344267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755365, 16.003405, 27.910440>,  <17.393978, 15.481753, 27.655254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.755365, 16.003405, 27.910440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.601707, 15.681251, 27.729870>,  <16.509512, 15.487958, 27.621529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.601707, 15.681251, 27.729870>,  <16.755365, 16.003405, 27.910440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601707, 15.681251, 27.729870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700939, -0.063835, 0.710359,
		-0.600930, 0.589302, -0.540006,
		-0.384144, -0.805387, -0.451425,
		16.486464, 15.439634, 27.594442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097517, 16.117796, 27.788467>,  <16.755365, 16.003405, 27.910440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097517, 16.117796, 27.788467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.106459, 15.718225, 27.772245>,  <16.111824, 15.478483, 27.762512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.106459, 15.718225, 27.772245>,  <16.097517, 16.117796, 27.788467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.106459, 15.718225, 27.772245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619409, -0.045681, 0.783738,
		-0.784750, 0.007599, -0.619765,
		0.022356, -0.998927, -0.040555,
		16.113165, 15.418548, 27.760078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626369, 16.015038, 28.322124>,  <16.097517, 16.117796, 27.788467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.626369, 16.015038, 28.322124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.743559, 15.639474, 28.249887>,  <15.813873, 15.414136, 28.206545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.743559, 15.639474, 28.249887>,  <15.626369, 16.015038, 28.322124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743559, 15.639474, 28.249887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262682, -0.260657, 0.929008,
		-0.919328, -0.224738, -0.323001,
		0.292976, -0.938910, -0.180594,
		15.831451, 15.357801, 28.195709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.083942, 15.499864, 28.512348>,  <15.626369, 16.015038, 28.322124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.083942, 15.499864, 28.512348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.433630, 15.306052, 28.524822>,  <15.643443, 15.189766, 28.532307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.433630, 15.306052, 28.524822>,  <15.083942, 15.499864, 28.512348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433630, 15.306052, 28.524822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284803, -0.459723, 0.841155,
		-0.393223, -0.744238, -0.539894,
		0.874221, -0.484525, 0.031188,
		15.695896, 15.160694, 28.534178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.003642, 14.736421, 28.489471>,  <15.083942, 15.499864, 28.512348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.003642, 14.736421, 28.489471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.360717, 14.798885, 28.658573>,  <15.574962, 14.836364, 28.760035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.360717, 14.798885, 28.658573>,  <15.003642, 14.736421, 28.489471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360717, 14.798885, 28.658573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334650, -0.398607, 0.853886,
		0.301857, -0.903729, -0.303572,
		0.892688, 0.156161, 0.422756,
		15.628523, 14.845734, 28.785400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.175191, 14.115932, 28.812572>,  <15.003642, 14.736421, 28.489471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.175191, 14.115932, 28.812572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.405584, 14.395123, 28.982782>,  <15.543820, 14.562638, 29.084908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.405584, 14.395123, 28.982782>,  <15.175191, 14.115932, 28.812572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.405584, 14.395123, 28.982782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163875, -0.411386, 0.896608,
		0.800867, -0.586164, -0.122570,
		0.575984, 0.697978, 0.425523,
		15.578380, 14.604517, 29.110439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.665733, 13.690963, 29.115650>,  <15.175191, 14.115932, 28.812572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.665733, 13.690963, 29.115650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.724949, 14.047443, 29.287159>,  <15.760478, 14.261332, 29.390064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.724949, 14.047443, 29.287159>,  <15.665733, 13.690963, 29.115650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.724949, 14.047443, 29.287159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045181, -0.439191, 0.897257,
		0.987949, -0.113456, -0.105282,
		0.148038, 0.891201, 0.428773,
		15.769361, 14.314804, 29.415791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223204, 13.605303, 29.497278>,  <15.665733, 13.690963, 29.115650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223204, 13.605303, 29.497278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.051172, 13.924954, 29.665289>,  <15.947953, 14.116745, 29.766096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.051172, 13.924954, 29.665289>,  <16.223204, 13.605303, 29.497278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.051172, 13.924954, 29.665289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158691, -0.391093, 0.906567,
		0.888734, 0.456551, 0.041386,
		-0.430080, 0.799129, 0.420029,
		15.922148, 14.164693, 29.791298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.686710, 13.695404, 30.163427>,  <16.223204, 13.605303, 29.497278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.686710, 13.695404, 30.163427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.346455, 13.903061, 30.196672>,  <16.142302, 14.027655, 30.216619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.346455, 13.903061, 30.196672>,  <16.686710, 13.695404, 30.163427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346455, 13.903061, 30.196672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133325, -0.365918, 0.921048,
		0.508567, 0.772396, 0.380478,
		-0.850637, 0.519142, 0.083114,
		16.091263, 14.058804, 30.221607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718925, 13.979612, 30.744907>,  <16.686710, 13.695404, 30.163427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718925, 13.979612, 30.744907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.324596, 13.984793, 30.677992>,  <16.087999, 13.987901, 30.637842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.324596, 13.984793, 30.677992>,  <16.718925, 13.979612, 30.744907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.324596, 13.984793, 30.677992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149226, -0.523520, 0.838843,
		-0.076715, 0.851915, 0.518031,
		-0.985823, 0.012951, -0.167290,
		16.028849, 13.988678, 30.627806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390093, 14.228695, 31.314524>,  <16.718925, 13.979612, 30.744907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.390093, 14.228695, 31.314524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.111620, 13.990190, 31.154625>,  <15.944536, 13.847086, 31.058685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.111620, 13.990190, 31.154625>,  <16.390093, 14.228695, 31.314524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111620, 13.990190, 31.154625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004126, -0.560172, 0.828366,
		-0.717852, 0.575045, 0.392443,
		-0.696184, -0.596264, -0.399748,
		15.902765, 13.811311, 31.034700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961890, 14.018742, 31.899210>,  <16.390093, 14.228695, 31.314524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961890, 14.018742, 31.899210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.842317, 13.774047, 31.606249>,  <15.770573, 13.627230, 31.430471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.842317, 13.774047, 31.606249>,  <15.961890, 14.018742, 31.899210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.842317, 13.774047, 31.606249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202080, -0.709513, 0.675096,
		-0.932632, 0.349814, 0.088477,
		-0.298934, -0.611737, -0.732405,
		15.752637, 13.590526, 31.386528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246046, 13.772563, 32.061176>,  <15.961890, 14.018742, 31.899210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246046, 13.772563, 32.061176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.410875, 13.506013, 31.812614>,  <15.509773, 13.346083, 31.663479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.410875, 13.506013, 31.812614>,  <15.246046, 13.772563, 32.061176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410875, 13.506013, 31.812614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128417, -0.717663, 0.684448,
		-0.902055, -0.202245, -0.381305,
		0.412074, -0.666376, -0.621400,
		15.534497, 13.306100, 31.626194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.806456, 13.249362, 32.147064>,  <15.246046, 13.772563, 32.061176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.806456, 13.249362, 32.147064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.125965, 13.080555, 31.975550>,  <15.317671, 12.979271, 31.872641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.125965, 13.080555, 31.975550>,  <14.806456, 13.249362, 32.147064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.125965, 13.080555, 31.975550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082719, -0.782982, 0.616520,
		-0.595916, -0.456992, -0.660335,
		0.798775, -0.422017, -0.428790,
		15.365598, 12.953950, 31.846912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.665422, 12.548190, 31.962677>,  <14.806456, 13.249362, 32.147064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.665422, 12.548190, 31.962677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.057882, 12.589252, 32.028172>,  <15.293358, 12.613890, 32.067467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.057882, 12.589252, 32.028172>,  <14.665422, 12.548190, 31.962677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.057882, 12.589252, 32.028172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003101, -0.838777, 0.544467,
		0.193229, -0.534711, -0.822646,
		0.981149, 0.102656, 0.163734,
		15.352227, 12.620049, 32.077293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.357409, 11.995861, 32.460754>,  <14.665422, 12.548190, 31.962677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.357409, 11.995861, 32.460754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.264450, 11.612321, 32.395519>,  <14.208674, 11.382197, 32.356377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.264450, 11.612321, 32.395519>,  <14.357409, 11.995861, 32.460754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.264450, 11.612321, 32.395519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237682, 0.106611, -0.965474,
		0.943132, -0.263138, 0.203125,
		-0.232397, -0.958850, -0.163092,
		14.194731, 11.324666, 32.346592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840037, 11.609953, 31.950071>,  <14.357409, 11.995861, 32.460754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840037, 11.609953, 31.950071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.463262, 11.475845, 31.957518>,  <14.237196, 11.395381, 31.961985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.463262, 11.475845, 31.957518>,  <14.840037, 11.609953, 31.950071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.463262, 11.475845, 31.957518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030419, 0.029994, -0.999087,
		0.334406, -0.941644, -0.038451,
		-0.941938, -0.335271, 0.018613,
		14.180680, 11.375264, 31.963102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.755351, 11.081967, 31.390810>,  <14.840037, 11.609953, 31.950071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.755351, 11.081967, 31.390810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.385136, 11.201121, 31.484312>,  <14.163006, 11.272614, 31.540413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.385136, 11.201121, 31.484312>,  <14.755351, 11.081967, 31.390810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.385136, 11.201121, 31.484312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214251, 0.097014, -0.971949,
		-0.312208, -0.949659, -0.025968,
		-0.925539, 0.297887, 0.233754,
		14.107474, 11.290487, 31.554438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.358821, 10.604522, 31.073748>,  <14.755351, 11.081967, 31.390810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.358821, 10.604522, 31.073748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.161095, 10.948365, 31.125479>,  <14.042459, 11.154671, 31.156517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.161095, 10.948365, 31.125479>,  <14.358821, 10.604522, 31.073748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161095, 10.948365, 31.125479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107447, 0.087213, -0.990378,
		-0.862616, -0.503456, 0.049251,
		-0.494317, 0.859608, 0.129326,
		14.012799, 11.206247, 31.164276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.909657, 10.616251, 30.471819>,  <14.358821, 10.604522, 31.073748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.909657, 10.616251, 30.471819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.859414, 10.988544, 30.609198>,  <13.829268, 11.211921, 30.691626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.859414, 10.988544, 30.609198>,  <13.909657, 10.616251, 30.471819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.859414, 10.988544, 30.609198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078636, 0.335761, -0.938659,
		-0.988959, -0.144910, 0.031015,
		-0.125607, 0.930734, 0.343449,
		13.821732, 11.267765, 30.712233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.381347, 10.969696, 29.972281>,  <13.909657, 10.616251, 30.471819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.381347, 10.969696, 29.972281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.575940, 11.259257, 30.167953>,  <13.692696, 11.432994, 30.285357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.575940, 11.259257, 30.167953>,  <13.381347, 10.969696, 29.972281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.575940, 11.259257, 30.167953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123703, 0.497190, -0.858778,
		-0.864889, 0.478294, 0.152326,
		0.486483, 0.723904, 0.489180,
		13.721885, 11.476429, 30.314707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.041963, 11.563706, 29.865181>,  <13.381347, 10.969696, 29.972281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.041963, 11.563706, 29.865181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.405914, 11.690392, 29.972372>,  <13.624286, 11.766404, 30.036686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.405914, 11.690392, 29.972372>,  <13.041963, 11.563706, 29.865181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.405914, 11.690392, 29.972372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089611, 0.480642, -0.872326,
		-0.405079, 0.817725, 0.408945,
		0.909879, 0.316715, 0.267975,
		13.678878, 11.785407, 30.052765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018918, 12.274241, 29.737831>,  <13.041963, 11.563706, 29.865181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018918, 12.274241, 29.737831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.407982, 12.183334, 29.756947>,  <13.641420, 12.128790, 29.768415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.407982, 12.183334, 29.756947>,  <13.018918, 12.274241, 29.737831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.407982, 12.183334, 29.756947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171548, 0.564403, -0.807478,
		0.156543, 0.793599, 0.587959,
		0.972659, -0.227268, 0.047787,
		13.699780, 12.115154, 29.771282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304414, 12.841934, 29.465977>,  <13.018918, 12.274241, 29.737831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304414, 12.841934, 29.465977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.613909, 12.591162, 29.429560>,  <13.799605, 12.440699, 29.407709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.613909, 12.591162, 29.429560>,  <13.304414, 12.841934, 29.465977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613909, 12.591162, 29.429560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282028, 0.469566, -0.836641,
		0.567267, 0.621663, 0.540132,
		0.773737, -0.626931, -0.091043,
		13.846029, 12.403082, 29.402246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928661, 13.230022, 29.243273>,  <13.304414, 12.841934, 29.465977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928661, 13.230022, 29.243273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.053612, 12.865517, 29.135929>,  <14.128582, 12.646813, 29.071522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.053612, 12.865517, 29.135929>,  <13.928661, 13.230022, 29.243273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.053612, 12.865517, 29.135929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471788, 0.394014, -0.788777,
		0.824523, 0.119786, 0.553004,
		0.312376, -0.911265, -0.268360,
		14.147325, 12.592137, 29.055422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679567, 13.243346, 29.067444>,  <13.928661, 13.230022, 29.243273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679567, 13.243346, 29.067444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.461794, 12.963543, 28.882282>,  <14.331130, 12.795661, 28.771185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.461794, 12.963543, 28.882282>,  <14.679567, 13.243346, 29.067444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.461794, 12.963543, 28.882282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249059, 0.392164, -0.885537,
		0.800975, -0.597407, -0.039289,
		-0.544434, -0.699508, -0.462904,
		14.298464, 12.753691, 28.743412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.144084, 13.135810, 28.629564>,  <14.679567, 13.243346, 29.067444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.144084, 13.135810, 28.629564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.799929, 12.995473, 28.481705>,  <14.593435, 12.911271, 28.392988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.799929, 12.995473, 28.481705>,  <15.144084, 13.135810, 28.629564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799929, 12.995473, 28.481705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226660, 0.386211, -0.894129,
		0.456463, -0.853082, -0.252768,
		-0.860387, -0.350844, -0.369650,
		14.541812, 12.890220, 28.370810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250343, 12.713660, 27.985916>,  <15.144084, 13.135810, 28.629564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.250343, 12.713660, 27.985916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.868167, 12.831723, 27.987541>,  <14.638862, 12.902561, 27.988516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.868167, 12.831723, 27.987541>,  <15.250343, 12.713660, 27.985916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868167, 12.831723, 27.987541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145386, 0.482509, -0.863741,
		-0.256898, -0.824662, -0.503920,
		-0.955440, 0.295156, 0.004061,
		14.581534, 12.920270, 27.988760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162795, 12.766957, 27.376652>,  <15.250343, 12.713660, 27.985916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162795, 12.766957, 27.376652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.845643, 12.971043, 27.509933>,  <14.655352, 13.093493, 27.589903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.845643, 12.971043, 27.509933>,  <15.162795, 12.766957, 27.376652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.845643, 12.971043, 27.509933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021482, 0.569854, -0.821465,
		-0.608998, -0.644165, -0.462787,
		-0.792881, 0.510213, 0.333202,
		14.607779, 13.124106, 27.609894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691897, 12.851328, 26.842178>,  <15.162795, 12.766957, 27.376652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691897, 12.851328, 26.842178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.604670, 13.167966, 27.070503>,  <14.552333, 13.357948, 27.207499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.604670, 13.167966, 27.070503>,  <14.691897, 12.851328, 26.842178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.604670, 13.167966, 27.070503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069489, 0.570808, -0.818138,
		-0.973456, -0.218076, -0.069469,
		-0.218069, 0.791594, 0.570810,
		14.539248, 13.405444, 27.241747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.483152, 13.288211, 26.371845>,  <14.691897, 12.851328, 26.842178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.483152, 13.288211, 26.371845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.448958, 13.541060, 26.679901>,  <14.428442, 13.692770, 26.864735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.448958, 13.541060, 26.679901>,  <14.483152, 13.288211, 26.371845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448958, 13.541060, 26.679901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313656, 0.716592, -0.622990,
		-0.945681, -0.294814, 0.137012,
		-0.085485, 0.632124, 0.770137,
		14.423313, 13.730698, 26.910942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.751881, 13.603856, 26.501997>,  <14.483152, 13.288211, 26.371845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.751881, 13.603856, 26.501997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.026443, 13.866878, 26.626236>,  <14.191179, 14.024691, 26.700779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.026443, 13.866878, 26.626236>,  <13.751881, 13.603856, 26.501997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.026443, 13.866878, 26.626236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395003, 0.695724, -0.599951,
		-0.610591, 0.289121, 0.737284,
		0.686404, 0.657555, 0.310599,
		14.232364, 14.064144, 26.719416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.426892, 14.319854, 26.601648>,  <13.751881, 13.603856, 26.501997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.426892, 14.319854, 26.601648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.817587, 14.400663, 26.572887>,  <14.052004, 14.449149, 26.555632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.817587, 14.400663, 26.572887>,  <13.426892, 14.319854, 26.601648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.817587, 14.400663, 26.572887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207281, 0.803580, -0.557937,
		-0.054938, 0.559862, 0.826762,
		0.976737, 0.202024, -0.071901,
		14.110608, 14.461270, 26.551317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.410578, 14.939072, 26.654745>,  <13.426892, 14.319854, 26.601648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.410578, 14.939072, 26.654745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.768075, 14.886233, 26.483269>,  <13.982574, 14.854530, 26.380383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.768075, 14.886233, 26.483269>,  <13.410578, 14.939072, 26.654745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.768075, 14.886233, 26.483269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198566, 0.740433, -0.642130,
		0.402239, 0.659022, 0.635526,
		0.893742, -0.132096, -0.428690,
		14.036198, 14.846604, 26.354662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.510509, 15.585356, 26.392017>,  <13.410578, 14.939072, 26.654745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.510509, 15.585356, 26.392017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.784111, 15.391731, 26.173725>,  <13.948273, 15.275557, 26.042749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.784111, 15.391731, 26.173725>,  <13.510509, 15.585356, 26.392017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.784111, 15.391731, 26.173725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189068, 0.604907, -0.773525,
		0.704549, 0.632275, 0.322239,
		0.684006, -0.484062, -0.545730,
		13.989313, 15.246512, 26.010006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993872, 16.062780, 26.084799>,  <13.510509, 15.585356, 26.392017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993872, 16.062780, 26.084799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.005015, 15.726798, 25.868021>,  <14.011702, 15.525209, 25.737955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.005015, 15.726798, 25.868021>,  <13.993872, 16.062780, 26.084799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.005015, 15.726798, 25.868021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103942, 0.536780, -0.837295,
		0.994193, 0.079658, -0.072352,
		0.027860, -0.839954, -0.541942,
		14.013373, 15.474812, 25.705439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.429096, 23.609419, 8.521511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.071909, 23.774181, 8.594106>,  <26.857595, 23.873039, 8.637663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.071909, 23.774181, 8.594106>,  <27.429096, 23.609419, 8.521511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071909, 23.774181, 8.594106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144698, -0.119107, 0.982281,
		0.426226, 0.903407, 0.046757,
		-0.892969, 0.411908, 0.181487,
		26.804018, 23.897755, 8.648552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888180, 23.219669, 8.074963>,  <27.429096, 23.609419, 8.521511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888180, 23.219669, 8.074963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.132772, 23.521181, 7.978708>,  <28.279528, 23.702089, 7.920955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.132772, 23.521181, 7.978708>,  <27.888180, 23.219669, 8.074963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132772, 23.521181, 7.978708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782832, -0.532045, 0.322648,
		0.115176, -0.385671, -0.915419,
		0.611480, 0.753781, -0.240637,
		28.316217, 23.747314, 7.906517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448246, 22.940071, 7.912291>,  <27.888180, 23.219669, 8.074963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448246, 22.940071, 7.912291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.558105, 23.315126, 7.997522>,  <28.624022, 23.540159, 8.048660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.558105, 23.315126, 7.997522>,  <28.448246, 22.940071, 7.912291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558105, 23.315126, 7.997522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857487, -0.339102, 0.386944,
		0.435069, 0.076438, -0.897147,
		0.274646, 0.937639, 0.213078,
		28.640499, 23.596418, 8.061445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097071, 23.070780, 7.554561>,  <28.448246, 22.940071, 7.912291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097071, 23.070780, 7.554561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.053020, 23.259357, 7.904558>,  <29.026590, 23.372505, 8.114556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.053020, 23.259357, 7.904558>,  <29.097071, 23.070780, 7.554561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053020, 23.259357, 7.904558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817511, -0.457729, 0.349514,
		0.565286, 0.753806, -0.335005,
		-0.110124, 0.471445, 0.874993,
		29.019983, 23.400791, 8.167055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664534, 23.031168, 8.038467>,  <29.097071, 23.070780, 7.554561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664534, 23.031168, 8.038467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.488253, 23.211870, 8.348744>,  <29.382484, 23.320292, 8.534910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.488253, 23.211870, 8.348744>,  <29.664534, 23.031168, 8.038467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488253, 23.211870, 8.348744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499775, -0.594332, 0.630075,
		0.745660, 0.665346, 0.036145,
		-0.440700, 0.451757, 0.775693,
		29.356043, 23.347397, 8.581452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150114, 23.430407, 8.441402>,  <29.664534, 23.031168, 8.038467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150114, 23.430407, 8.441402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.846554, 23.266575, 8.643913>,  <29.664417, 23.168276, 8.765420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.846554, 23.266575, 8.643913>,  <30.150114, 23.430407, 8.441402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846554, 23.266575, 8.643913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632750, -0.280000, 0.721961,
		-0.153943, 0.868242, 0.471654,
		-0.758900, -0.409580, 0.506276,
		29.618883, 23.143702, 8.795796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045269, 23.586525, 9.282887>,  <30.150114, 23.430407, 8.441402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045269, 23.586525, 9.282887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.910696, 23.229172, 9.163773>,  <29.829952, 23.014759, 9.092304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.910696, 23.229172, 9.163773>,  <30.045269, 23.586525, 9.282887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910696, 23.229172, 9.163773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591277, -0.446517, 0.671575,
		-0.732942, 0.049867, 0.678462,
		-0.336434, -0.893384, -0.297786,
		29.809767, 22.961157, 9.074437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581213, 23.350718, 9.801015>,  <30.045269, 23.586525, 9.282887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581213, 23.350718, 9.801015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.783674, 23.081367, 9.585467>,  <29.905151, 22.919758, 9.456139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.783674, 23.081367, 9.585467>,  <29.581213, 23.350718, 9.801015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783674, 23.081367, 9.585467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334344, -0.422751, 0.842315,
		-0.795000, -0.606506, 0.011162,
		0.506151, -0.673373, -0.538869,
		29.935520, 22.879356, 9.423806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435448, 22.769222, 10.104436>,  <29.581213, 23.350718, 9.801015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435448, 22.769222, 10.104436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.787836, 22.743496, 9.916925>,  <29.999269, 22.728060, 9.804420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.787836, 22.743496, 9.916925>,  <29.435448, 22.769222, 10.104436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787836, 22.743496, 9.916925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400284, -0.426985, 0.810837,
		-0.252310, -0.901969, -0.350417,
		0.880972, -0.064316, -0.468776,
		30.052128, 22.724201, 9.776293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209015, 22.178205, 10.205839>,  <29.435448, 22.769222, 10.104436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209015, 22.178205, 10.205839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.337696, 21.854631, 10.402667>,  <29.414906, 21.660488, 10.520764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.337696, 21.854631, 10.402667>,  <29.209015, 22.178205, 10.205839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337696, 21.854631, 10.402667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944715, -0.239433, 0.224019,
		-0.063399, -0.536934, -0.841239,
		0.321704, -0.808933, 0.492070,
		29.434208, 21.611952, 10.550288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666157, 21.564154, 10.143400>,  <29.209015, 22.178205, 10.205839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666157, 21.564154, 10.143400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.901171, 21.449354, 10.446038>,  <29.042179, 21.380474, 10.627621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.901171, 21.449354, 10.446038>,  <28.666157, 21.564154, 10.143400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901171, 21.449354, 10.446038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797935, -0.360949, 0.482718,
		0.134554, -0.887327, -0.441074,
		0.587533, -0.286997, 0.756596,
		29.077431, 21.363255, 10.673017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480625, 20.905603, 10.211568>,  <28.666157, 21.564154, 10.143400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480625, 20.905603, 10.211568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.634296, 21.041815, 10.554833>,  <28.726500, 21.123543, 10.760793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.634296, 21.041815, 10.554833>,  <28.480625, 20.905603, 10.211568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634296, 21.041815, 10.554833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856682, -0.215085, 0.468865,
		0.344241, -0.915302, 0.209095,
		0.384180, 0.340530, 0.858164,
		28.749550, 21.143974, 10.812283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308296, 20.391230, 10.765176>,  <28.480625, 20.905603, 10.211568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308296, 20.391230, 10.765176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.394772, 20.734509, 10.951407>,  <28.446657, 20.940475, 11.063147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.394772, 20.734509, 10.951407>,  <28.308296, 20.391230, 10.765176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394772, 20.734509, 10.951407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663263, -0.220844, 0.715060,
		0.716481, -0.463388, 0.521465,
		0.216188, 0.858196, 0.465578,
		28.459627, 20.991966, 11.091081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027531, 20.199549, 11.362806>,  <28.308296, 20.391230, 10.765176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027531, 20.199549, 11.362806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.097363, 20.588682, 11.423618>,  <28.139261, 20.822163, 11.460105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.097363, 20.588682, 11.423618>,  <28.027531, 20.199549, 11.362806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097363, 20.588682, 11.423618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612120, -0.013711, 0.790646,
		0.771253, -0.231090, 0.593099,
		0.174578, 0.972836, 0.152029,
		28.149736, 20.880533, 11.469227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268858, 20.248779, 12.097644>,  <28.027531, 20.199549, 11.362806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268858, 20.248779, 12.097644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.132278, 20.604763, 11.976722>,  <28.050331, 20.818354, 11.904169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.132278, 20.604763, 11.976722>,  <28.268858, 20.248779, 12.097644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132278, 20.604763, 11.976722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629034, 0.022610, 0.777049,
		0.698375, 0.455484, 0.552093,
		-0.341451, 0.889957, -0.302305,
		28.029842, 20.871750, 11.886030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121685, 20.643698, 12.726629>,  <28.268858, 20.248779, 12.097644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121685, 20.643698, 12.726629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.910276, 20.835207, 12.446218>,  <27.783432, 20.950111, 12.277970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.910276, 20.835207, 12.446218>,  <28.121685, 20.643698, 12.726629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910276, 20.835207, 12.446218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781482, 0.048161, 0.622067,
		0.331590, 0.876617, 0.348698,
		-0.528521, 0.478772, -0.701030,
		27.751720, 20.978838, 12.235909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834311, 21.320906, 13.051631>,  <28.121685, 20.643698, 12.726629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834311, 21.320906, 13.051631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.637653, 21.197813, 12.725788>,  <27.519659, 21.123957, 12.530282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.637653, 21.197813, 12.725788>,  <27.834311, 21.320906, 13.051631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637653, 21.197813, 12.725788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839929, -0.079275, 0.536875,
		-0.229792, 0.948165, -0.219498,
		-0.491645, -0.307732, -0.814608,
		27.490160, 21.105494, 12.481406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284945, 21.733709, 12.931869>,  <27.834311, 21.320906, 13.051631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284945, 21.733709, 12.931869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.181479, 21.386818, 12.761690>,  <27.119398, 21.178682, 12.659583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.181479, 21.386818, 12.761690>,  <27.284945, 21.733709, 12.931869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181479, 21.386818, 12.761690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865575, 0.012577, 0.500623,
		-0.428804, 0.497748, -0.753906,
		-0.258666, -0.867230, -0.425445,
		27.103878, 21.126648, 12.634057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610071, 21.855772, 12.958243>,  <27.284945, 21.733709, 12.931869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610071, 21.855772, 12.958243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.656401, 21.472099, 12.855052>,  <26.684198, 21.241896, 12.793138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.656401, 21.472099, 12.855052>,  <26.610071, 21.855772, 12.958243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656401, 21.472099, 12.855052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811768, -0.241078, 0.531898,
		-0.572380, 0.147813, -0.806556,
		0.115821, -0.959183, -0.257978,
		26.691147, 21.184343, 12.777658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028193, 21.715181, 12.851583>,  <26.610071, 21.855772, 12.958243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028193, 21.715181, 12.851583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.203444, 21.358681, 12.898424>,  <26.308594, 21.144781, 12.926528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.203444, 21.358681, 12.898424>,  <26.028193, 21.715181, 12.851583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203444, 21.358681, 12.898424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695588, -0.253625, 0.672184,
		-0.569386, -0.375957, -0.731065,
		0.438129, -0.891252, 0.117101,
		26.334883, 21.091305, 12.933555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518646, 21.283119, 13.046716>,  <26.028193, 21.715181, 12.851583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518646, 21.283119, 13.046716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.825190, 21.040091, 13.130189>,  <26.009115, 20.894274, 13.180273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.825190, 21.040091, 13.130189>,  <25.518646, 21.283119, 13.046716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825190, 21.040091, 13.130189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522093, -0.399773, 0.753393,
		-0.374310, -0.686326, -0.623578,
		0.766363, -0.607567, 0.208687,
		26.055098, 20.857819, 13.192794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235989, 20.592974, 13.089436>,  <25.518646, 21.283119, 13.046716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235989, 20.592974, 13.089436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.581202, 20.567356, 13.289865>,  <25.788330, 20.551985, 13.410122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.581202, 20.567356, 13.289865>,  <25.235989, 20.592974, 13.089436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581202, 20.567356, 13.289865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482696, -0.397000, 0.780638,
		0.148931, -0.915581, -0.373538,
		0.863032, -0.064044, 0.501073,
		25.840111, 20.548143, 13.440187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311121, 19.901094, 13.297582>,  <25.235989, 20.592974, 13.089436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311121, 19.901094, 13.297582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.541616, 20.101660, 13.555738>,  <25.679914, 20.222000, 13.710632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.541616, 20.101660, 13.555738>,  <25.311121, 19.901094, 13.297582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541616, 20.101660, 13.555738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461257, -0.452368, 0.763286,
		0.674677, -0.737527, -0.029391,
		0.576240, 0.501415, 0.645392,
		25.714489, 20.252085, 13.749356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479496, 19.380106, 13.736511>,  <25.311121, 19.901094, 13.297582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479496, 19.380106, 13.736511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.519901, 19.734510, 13.917521>,  <25.544146, 19.947153, 14.026127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.519901, 19.734510, 13.917521>,  <25.479496, 19.380106, 13.736511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519901, 19.734510, 13.917521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318976, -0.401996, 0.858285,
		0.942364, -0.231043, 0.242009,
		0.101014, 0.886012, 0.452524,
		25.550205, 20.000315, 14.053278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767307, 19.122702, 14.467210>,  <25.479496, 19.380106, 13.736511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767307, 19.122702, 14.467210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.621946, 19.494900, 14.485599>,  <25.534729, 19.718220, 14.496632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.621946, 19.494900, 14.485599>,  <25.767307, 19.122702, 14.467210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621946, 19.494900, 14.485599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528031, -0.246372, 0.812702,
		0.767543, 0.271064, 0.580864,
		-0.363403, 0.930498, 0.045971,
		25.512926, 19.774050, 14.499390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901573, 19.327362, 15.184230>,  <25.767307, 19.122702, 14.467210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901573, 19.327362, 15.184230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.613073, 19.553745, 15.024485>,  <25.439974, 19.689575, 14.928638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.613073, 19.553745, 15.024485>,  <25.901573, 19.327362, 15.184230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613073, 19.553745, 15.024485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546509, -0.110708, 0.830103,
		0.425592, 0.816966, 0.389149,
		-0.721248, 0.565959, -0.399363,
		25.396698, 19.723534, 14.904675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659466, 19.702700, 15.753080>,  <25.901573, 19.327362, 15.184230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659466, 19.702700, 15.753080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.374102, 19.709137, 15.472856>,  <25.202883, 19.712999, 15.304721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.374102, 19.709137, 15.472856>,  <25.659466, 19.702700, 15.753080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374102, 19.709137, 15.472856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691890, -0.174622, 0.700568,
		-0.111059, 0.984504, 0.135712,
		-0.713410, 0.016093, -0.700562,
		25.160078, 19.713964, 15.262687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137722, 20.097361, 16.070095>,  <25.659466, 19.702700, 15.753080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137722, 20.097361, 16.070095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.961515, 19.876797, 15.786716>,  <24.855791, 19.744459, 15.616690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.961515, 19.876797, 15.786716>,  <25.137722, 20.097361, 16.070095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961515, 19.876797, 15.786716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804099, -0.108570, 0.584498,
		-0.399213, 0.827140, -0.395561,
		-0.440515, -0.551409, -0.708445,
		24.829361, 19.711374, 15.574183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419044, 20.346045, 16.076788>,  <25.137722, 20.097361, 16.070095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419044, 20.346045, 16.076788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.420155, 19.987059, 15.900357>,  <24.420820, 19.771667, 15.794498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.420155, 19.987059, 15.900357>,  <24.419044, 20.346045, 16.076788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420155, 19.987059, 15.900357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902168, -0.192518, 0.386044,
		-0.431377, 0.396856, -0.810197,
		0.002774, -0.897464, -0.441079,
		24.420986, 19.717819, 15.768034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.784182, 20.210892, 15.772244>,  <24.419044, 20.346045, 16.076788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.784182, 20.210892, 15.772244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.938078, 19.846846, 15.833775>,  <24.030415, 19.628418, 15.870692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.938078, 19.846846, 15.833775>,  <23.784182, 20.210892, 15.772244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.938078, 19.846846, 15.833775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838293, -0.274785, 0.470912,
		-0.386317, -0.310127, -0.868666,
		0.384739, -0.910118, 0.153823,
		24.053499, 19.573811, 15.879922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.268789, 19.769194, 15.614743>,  <23.784182, 20.210892, 15.772244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.268789, 19.769194, 15.614743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.487776, 19.515039, 15.832576>,  <23.619167, 19.362547, 15.963275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.487776, 19.515039, 15.832576>,  <23.268789, 19.769194, 15.614743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.487776, 19.515039, 15.832576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835869, -0.446351, 0.319521,
		0.040055, -0.630124, -0.775460,
		0.547466, -0.635385, 0.544580,
		23.652016, 19.324425, 15.995950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.066648, 18.954348, 15.441066>,  <23.268789, 19.769194, 15.614743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.066648, 18.954348, 15.441066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.207949, 19.051464, 15.802456>,  <23.292728, 19.109734, 16.019291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.207949, 19.051464, 15.802456>,  <23.066648, 18.954348, 15.441066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.207949, 19.051464, 15.802456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701595, -0.570084, 0.427514,
		0.618853, -0.784893, -0.031042,
		0.353249, 0.242790, 0.903476,
		23.313923, 19.124302, 16.073498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.199541, 18.318869, 15.813590>,  <23.066648, 18.954348, 15.441066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.199541, 18.318869, 15.813590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.101269, 18.642477, 16.027178>,  <23.042305, 18.836641, 16.155331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.101269, 18.642477, 16.027178>,  <23.199541, 18.318869, 15.813590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.101269, 18.642477, 16.027178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780602, -0.491717, 0.385843,
		0.574717, -0.322024, 0.752330,
		-0.245683, 0.809021, 0.533971,
		23.027563, 18.885183, 16.187368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.474257, 17.654528, 15.424052>,  <23.199541, 18.318869, 15.813590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.474257, 17.654528, 15.424052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.650455, 17.311432, 15.318038>,  <23.756174, 17.105574, 15.254429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.650455, 17.311432, 15.318038>,  <23.474257, 17.654528, 15.424052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.650455, 17.311432, 15.318038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492291, 0.477661, -0.727660,
		0.750741, 0.190057, 0.632666,
		0.440497, -0.857740, -0.265036,
		23.782604, 17.054110, 15.238527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149830, 17.885069, 15.310865>,  <23.474257, 17.654528, 15.424052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149830, 17.885069, 15.310865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.129339, 17.527912, 15.131925>,  <24.117044, 17.313618, 15.024560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.129339, 17.527912, 15.131925>,  <24.149830, 17.885069, 15.310865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.129339, 17.527912, 15.131925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455443, 0.377760, -0.806145,
		0.888790, -0.245039, 0.387309,
		-0.051227, -0.892890, -0.447351,
		24.113972, 17.260044, 14.997720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836889, 17.890089, 14.935865>,  <24.149830, 17.885069, 15.310865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836889, 17.890089, 14.935865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.591848, 17.626280, 14.761626>,  <24.444824, 17.467995, 14.657083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.591848, 17.626280, 14.761626>,  <24.836889, 17.890089, 14.935865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591848, 17.626280, 14.761626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475857, 0.132289, -0.869517,
		0.631094, -0.739950, 0.232799,
		-0.612602, -0.659526, -0.435597,
		24.408068, 17.428423, 14.630947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278864, 17.454742, 14.650537>,  <24.836889, 17.890089, 14.935865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278864, 17.454742, 14.650537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.934248, 17.384720, 14.459915>,  <24.727478, 17.342707, 14.345543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.934248, 17.384720, 14.459915>,  <25.278864, 17.454742, 14.650537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934248, 17.384720, 14.459915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457275, 0.140229, -0.878200,
		0.220558, -0.974522, -0.040766,
		-0.861542, -0.175053, -0.476553,
		24.675785, 17.332203, 14.316950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399275, 16.999275, 14.193516>,  <25.278864, 17.454742, 14.650537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399275, 16.999275, 14.193516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.060892, 17.160561, 14.053932>,  <24.857862, 17.257332, 13.970182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.060892, 17.160561, 14.053932>,  <25.399275, 16.999275, 14.193516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060892, 17.160561, 14.053932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408193, 0.068578, -0.910316,
		-0.343122, -0.912532, -0.222604,
		-0.845958, 0.403214, -0.348959,
		24.807104, 17.281525, 13.949244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465588, 16.747635, 13.558298>,  <25.399275, 16.999275, 14.193516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465588, 16.747635, 13.558298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.159094, 17.002062, 13.521846>,  <24.975197, 17.154718, 13.499974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.159094, 17.002062, 13.521846>,  <25.465588, 16.747635, 13.558298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159094, 17.002062, 13.521846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204690, 0.107181, -0.972941,
		-0.609087, -0.764154, -0.212322,
		-0.766234, 0.636066, -0.091132,
		24.929224, 17.192883, 13.494506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063337, 16.534088, 12.951712>,  <25.465588, 16.747635, 13.558298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063337, 16.534088, 12.951712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.970030, 16.921858, 12.982184>,  <24.914045, 17.154520, 13.000468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.970030, 16.921858, 12.982184>,  <25.063337, 16.534088, 12.951712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970030, 16.921858, 12.982184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330564, 0.152731, -0.931343,
		-0.914501, -0.192072, -0.356084,
		-0.233270, 0.969423, 0.076181,
		24.900049, 17.212685, 13.005038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595779, 16.822027, 12.261717>,  <25.063337, 16.534088, 12.951712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595779, 16.822027, 12.261717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.765795, 17.126137, 12.458219>,  <24.867804, 17.308601, 12.576119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.765795, 17.126137, 12.458219>,  <24.595779, 16.822027, 12.261717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765795, 17.126137, 12.458219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422055, 0.313655, -0.850582,
		-0.800758, 0.568865, -0.187561,
		0.425037, 0.760272, 0.491254,
		24.893307, 17.354218, 12.605595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.457418, 17.414688, 11.859811>,  <24.595779, 16.822027, 12.261717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.457418, 17.414688, 11.859811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.778248, 17.518833, 12.074803>,  <24.970745, 17.581320, 12.203799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.778248, 17.518833, 12.074803>,  <24.457418, 17.414688, 11.859811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.778248, 17.518833, 12.074803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373482, 0.483605, -0.791605,
		-0.466032, 0.835666, 0.290648,
		0.802076, 0.260362, 0.537481,
		25.018871, 17.596941, 12.236048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.579165, 18.085484, 11.616830>,  <24.457418, 17.414688, 11.859811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.579165, 18.085484, 11.616830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.910089, 17.940065, 11.788124>,  <25.108644, 17.852816, 11.890901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.910089, 17.940065, 11.788124>,  <24.579165, 18.085484, 11.616830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910089, 17.940065, 11.788124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552682, 0.390445, -0.736271,
		0.100465, 0.845807, 0.523945,
		0.827315, -0.363544, 0.428236,
		25.158283, 17.831001, 11.916595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045446, 18.622492, 11.724677>,  <24.579165, 18.085484, 11.616830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.045446, 18.622492, 11.724677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.287743, 18.304304, 11.717639>,  <25.433121, 18.113392, 11.713416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.287743, 18.304304, 11.717639>,  <25.045446, 18.622492, 11.724677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287743, 18.304304, 11.717639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603286, 0.473591, -0.641683,
		0.518772, 0.378078, 0.766768,
		0.605741, -0.795467, -0.017596,
		25.469465, 18.065664, 11.712360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659061, 18.896643, 11.745190>,  <25.045446, 18.622492, 11.724677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659061, 18.896643, 11.745190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.741915, 18.525291, 11.621766>,  <25.791626, 18.302481, 11.547712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.741915, 18.525291, 11.621766>,  <25.659061, 18.896643, 11.745190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741915, 18.525291, 11.621766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577218, 0.370625, -0.727637,
		0.789882, -0.027388, 0.612646,
		0.207134, -0.928378, -0.308559,
		25.804054, 18.246778, 11.529199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456589, 18.823172, 11.925623>,  <25.659061, 18.896643, 11.745190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456589, 18.823172, 11.925623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.344872, 18.542473, 11.663465>,  <26.277842, 18.374054, 11.506171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.344872, 18.542473, 11.663465>,  <26.456589, 18.823172, 11.925623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344872, 18.542473, 11.663465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736490, 0.281389, -0.615144,
		0.616098, -0.654498, 0.438241,
		-0.279295, -0.701749, -0.655395,
		26.261084, 18.331947, 11.466847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119537, 18.412098, 11.773947>,  <26.456589, 18.823172, 11.925623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119537, 18.412098, 11.773947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.835150, 18.376236, 11.494953>,  <26.664516, 18.354719, 11.327557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.835150, 18.376236, 11.494953>,  <27.119537, 18.412098, 11.773947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835150, 18.376236, 11.494953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651789, 0.288332, -0.701452,
		0.263993, -0.953324, -0.146561,
		-0.710970, -0.089652, -0.697484,
		26.621859, 18.349340, 11.285707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504147, 18.207197, 11.233008>,  <27.119537, 18.412098, 11.773947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504147, 18.207197, 11.233008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.176723, 18.316353, 11.030823>,  <26.980268, 18.381845, 10.909512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.176723, 18.316353, 11.030823>,  <27.504147, 18.207197, 11.233008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176723, 18.316353, 11.030823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574266, 0.409310, -0.709002,
		0.013414, -0.870631, -0.491754,
		-0.818559, 0.272887, -0.505464,
		26.931156, 18.398218, 10.879184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563747, 17.952965, 10.618569>,  <27.504147, 18.207197, 11.233008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563747, 17.952965, 10.618569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.319075, 18.261290, 10.547363>,  <27.172272, 18.446285, 10.504640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.319075, 18.261290, 10.547363>,  <27.563747, 17.952965, 10.618569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319075, 18.261290, 10.547363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614156, 0.320850, -0.721018,
		-0.498655, -0.550364, -0.669659,
		-0.611683, 0.770814, -0.178016,
		27.135571, 18.492535, 10.493958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471077, 17.899851, 9.872739>,  <27.563747, 17.952965, 10.618569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471077, 17.899851, 9.872739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.407309, 18.270721, 10.008342>,  <27.369047, 18.493244, 10.089704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.407309, 18.270721, 10.008342>,  <27.471077, 17.899851, 9.872739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407309, 18.270721, 10.008342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402196, 0.374607, -0.835409,
		-0.901567, 0.003166, -0.432627,
		-0.159420, 0.927178, 0.339007,
		27.359482, 18.548876, 10.110044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173559, 18.308540, 9.296947>,  <27.471077, 17.899851, 9.872739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173559, 18.308540, 9.296947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.315844, 18.594915, 9.537249>,  <27.401215, 18.766741, 9.681429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.315844, 18.594915, 9.537249>,  <27.173559, 18.308540, 9.296947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315844, 18.594915, 9.537249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390000, 0.470444, -0.791569,
		-0.849335, 0.515863, -0.111873,
		0.355711, 0.715938, 0.600752,
		27.422558, 18.809696, 9.717474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131069, 18.935871, 8.905197>,  <27.173559, 18.308540, 9.296947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131069, 18.935871, 8.905197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.407652, 19.012539, 9.183807>,  <27.573601, 19.058540, 9.350974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.407652, 19.012539, 9.183807>,  <27.131069, 18.935871, 8.905197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407652, 19.012539, 9.183807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530200, 0.520244, -0.669503,
		-0.490687, 0.832231, 0.258103,
		0.691458, 0.191670, 0.696526,
		27.615089, 19.070040, 9.392765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<19.806395, 17.103863, 22.216047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491987, 16.864702, 22.278893>,  <19.303343, 16.721205, 22.316601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491987, 16.864702, 22.278893>,  <19.806395, 17.103863, 22.216047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.491987, 16.864702, 22.278893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119806, -0.396657, -0.910115,
		0.606481, -0.696546, 0.383413,
		-0.786020, -0.597903, 0.157115,
		19.256182, 16.685331, 22.326027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.001549, 16.376600, 21.923687>,  <19.806395, 17.103863, 22.216047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.001549, 16.376600, 21.923687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.608519, 16.450323, 21.933254>,  <19.372700, 16.494556, 21.938995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.608519, 16.450323, 21.933254>,  <20.001549, 16.376600, 21.923687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608519, 16.450323, 21.933254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051319, -0.145371, -0.988045,
		-0.178632, -0.972058, 0.152297,
		-0.982577, 0.184312, 0.023917,
		19.313745, 16.505615, 21.940430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758184, 16.219948, 21.360739>,  <20.001549, 16.376600, 21.923687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758184, 16.219948, 21.360739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402617, 16.376017, 21.456728>,  <19.189276, 16.469658, 21.514322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402617, 16.376017, 21.456728>,  <19.758184, 16.219948, 21.360739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.402617, 16.376017, 21.456728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281223, -0.051319, -0.958269,
		-0.361576, -0.919310, 0.155344,
		-0.888919, 0.390173, 0.239975,
		19.135941, 16.493069, 21.528721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.231524, 15.840235, 20.968073>,  <19.758184, 16.219948, 21.360739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.231524, 15.840235, 20.968073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.053318, 16.184568, 21.066446>,  <18.946396, 16.391169, 21.125471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.053318, 16.184568, 21.066446>,  <19.231524, 15.840235, 20.968073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.053318, 16.184568, 21.066446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304771, 0.112467, -0.945762,
		-0.841804, -0.496302, 0.212252,
		-0.445512, 0.860834, 0.245934,
		18.919664, 16.442818, 21.140226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507610, 15.903600, 20.791004>,  <19.231524, 15.840235, 20.968073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507610, 15.903600, 20.791004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629656, 16.284384, 20.801403>,  <18.702883, 16.512854, 20.807642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629656, 16.284384, 20.801403>,  <18.507610, 15.903600, 20.791004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629656, 16.284384, 20.801403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298598, 0.121557, -0.946606,
		-0.904292, 0.281060, 0.321342,
		0.305115, 0.951961, 0.025999,
		18.721189, 16.569971, 20.809202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012239, 16.240313, 20.338219>,  <18.507610, 15.903600, 20.791004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012239, 16.240313, 20.338219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298998, 16.513594, 20.393776>,  <18.471052, 16.677563, 20.427111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298998, 16.513594, 20.393776>,  <18.012239, 16.240313, 20.338219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.298998, 16.513594, 20.393776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289923, 0.473327, -0.831809,
		-0.634037, 0.556052, 0.537403,
		0.716897, 0.683204, 0.138894,
		18.514067, 16.718555, 20.435444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637764, 16.860958, 20.206011>,  <18.012239, 16.240313, 20.338219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637764, 16.860958, 20.206011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033972, 16.910929, 20.183161>,  <18.271696, 16.940910, 20.169451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033972, 16.910929, 20.183161>,  <17.637764, 16.860958, 20.206011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033972, 16.910929, 20.183161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110453, 0.477052, -0.871907,
		-0.081671, 0.869951, 0.486328,
		0.990520, 0.124925, -0.057127,
		18.331127, 16.948406, 20.166023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.674749, 17.499231, 19.881121>,  <17.637764, 16.860958, 20.206011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.674749, 17.499231, 19.881121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056011, 17.386177, 19.838017>,  <18.284769, 17.318344, 19.812155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056011, 17.386177, 19.838017>,  <17.674749, 17.499231, 19.881121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.056011, 17.386177, 19.838017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001030, 0.359286, -0.933227,
		0.302482, 0.889399, 0.342746,
		0.953155, -0.282637, -0.107761,
		18.341957, 17.301386, 19.805689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.121798, 18.051455, 19.545305>,  <17.674749, 17.499231, 19.881121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.121798, 18.051455, 19.545305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310606, 17.708179, 19.464600>,  <18.423891, 17.502214, 19.416176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310606, 17.708179, 19.464600>,  <18.121798, 18.051455, 19.545305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310606, 17.708179, 19.464600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066922, 0.263083, -0.962449,
		0.879043, 0.440796, 0.181612,
		0.472023, -0.858188, -0.201762,
		18.452213, 17.450724, 19.404072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.729891, 18.270828, 19.097986>,  <18.121798, 18.051455, 19.545305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.729891, 18.270828, 19.097986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.680162, 17.877663, 19.043690>,  <18.650326, 17.641764, 19.011112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.680162, 17.877663, 19.043690>,  <18.729891, 18.270828, 19.097986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.680162, 17.877663, 19.043690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146060, 0.117184, -0.982311,
		0.981433, -0.141949, 0.128996,
		-0.124322, -0.982913, -0.135742,
		18.642866, 17.582788, 19.002968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353411, 18.071232, 18.735651>,  <18.729891, 18.270828, 19.097986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353411, 18.071232, 18.735651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058332, 17.810951, 18.663662>,  <18.881285, 17.654783, 18.620468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058332, 17.810951, 18.663662>,  <19.353411, 18.071232, 18.735651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058332, 17.810951, 18.663662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230640, 0.007644, -0.973009,
		0.634515, -0.759295, 0.144439,
		-0.737697, -0.650702, -0.179973,
		18.837023, 17.615740, 18.609671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656944, 17.629887, 18.148304>,  <19.353411, 18.071232, 18.735651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.656944, 17.629887, 18.148304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262171, 17.565441, 18.149277>,  <19.025307, 17.526773, 18.149860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262171, 17.565441, 18.149277>,  <19.656944, 17.629887, 18.148304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262171, 17.565441, 18.149277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029038, 0.162993, -0.986200,
		0.158425, -0.973395, -0.165542,
		-0.986944, -0.161046, 0.002444,
		18.966091, 17.517107, 18.150007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334316, 17.032187, 17.834993>,  <19.656944, 17.629887, 18.148304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.334316, 17.032187, 17.834993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091291, 17.348856, 17.809317>,  <18.945477, 17.538858, 17.793911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091291, 17.348856, 17.809317>,  <19.334316, 17.032187, 17.834993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.091291, 17.348856, 17.809317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128508, 0.018224, -0.991541,
		-0.783808, -0.610671, -0.112808,
		-0.607561, 0.791675, -0.064192,
		18.909023, 17.586359, 17.790058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990093, 16.856472, 17.578491>,  <19.334316, 17.032187, 17.834993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990093, 16.856472, 17.578491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021126, 17.019800, 17.214676>,  <20.039745, 17.117796, 16.996387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021126, 17.019800, 17.214676>,  <19.990093, 16.856472, 17.578491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.021126, 17.019800, 17.214676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240227, -0.893064, -0.380432,
		-0.967611, -0.188980, -0.167376,
		0.077583, 0.408319, -0.909537,
		20.044401, 17.142296, 16.941814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520477, 17.467512, 17.541380>,  <19.990093, 16.856472, 17.578491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520477, 17.467512, 17.541380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879375, 17.291321, 17.529182>,  <21.094715, 17.185606, 17.521864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879375, 17.291321, 17.529182>,  <20.520477, 17.467512, 17.541380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.879375, 17.291321, 17.529182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436299, -0.895097, 0.091890,
		-0.067771, -0.069144, -0.995302,
		0.897246, -0.440477, -0.030494,
		21.148550, 17.159178, 17.520035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514174, 16.880203, 17.067493>,  <20.520477, 17.467512, 17.541380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514174, 16.880203, 17.067493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.824108, 16.803459, 17.308432>,  <21.010069, 16.757412, 17.452993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.824108, 16.803459, 17.308432>,  <20.514174, 16.880203, 17.067493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.824108, 16.803459, 17.308432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407928, -0.879653, 0.244554,
		0.482933, -0.435202, -0.759852,
		0.774836, -0.191862, 0.602344,
		21.056559, 16.745901, 17.489136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790722, 16.198088, 16.832539>,  <20.514174, 16.880203, 17.067493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790722, 16.198088, 16.832539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.898153, 16.301064, 17.203827>,  <20.962612, 16.362850, 17.426600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.898153, 16.301064, 17.203827>,  <20.790722, 16.198088, 16.832539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.898153, 16.301064, 17.203827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231825, -0.918026, 0.321692,
		0.934946, -0.301583, -0.186879,
		0.268576, 0.257442, 0.928219,
		20.978725, 16.378296, 17.482292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.060822, 15.573400, 17.166990>,  <20.790722, 16.198088, 16.832539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.060822, 15.573400, 17.166990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003643, 15.811701, 17.483128>,  <20.969336, 15.954681, 17.672810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003643, 15.811701, 17.483128>,  <21.060822, 15.573400, 17.166990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.003643, 15.811701, 17.483128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281795, -0.789993, 0.544521,
		0.948767, -0.144877, 0.280807,
		-0.142947, 0.595753, 0.790345,
		20.960758, 15.990427, 17.720230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334644, 15.141952, 17.773561>,  <21.060822, 15.573400, 17.166990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334644, 15.141952, 17.773561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095491, 15.417714, 17.937151>,  <20.952000, 15.583172, 18.035305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095491, 15.417714, 17.937151>,  <21.334644, 15.141952, 17.773561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.095491, 15.417714, 17.937151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289528, -0.661490, 0.691812,
		0.747470, 0.295213, 0.595095,
		-0.597881, 0.689405, 0.408972,
		20.916126, 15.624536, 18.059843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413660, 15.137464, 18.487404>,  <21.334644, 15.141952, 17.773561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413660, 15.137464, 18.487404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.057693, 15.315760, 18.448702>,  <20.844112, 15.422737, 18.425480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.057693, 15.315760, 18.448702>,  <21.413660, 15.137464, 18.487404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.057693, 15.315760, 18.448702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366424, -0.572320, 0.733610,
		0.271625, 0.688306, 0.672648,
		-0.889917, 0.445741, -0.096756,
		20.790718, 15.449482, 18.419676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189964, 15.215276, 19.128929>,  <21.413660, 15.137464, 18.487404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189964, 15.215276, 19.128929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.849138, 15.247706, 18.922083>,  <20.644642, 15.267165, 18.797976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.849138, 15.247706, 18.922083>,  <21.189964, 15.215276, 19.128929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849138, 15.247706, 18.922083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413129, -0.710807, 0.569279,
		-0.321415, 0.698699, 0.639150,
		-0.852067, 0.081076, -0.517116,
		20.593519, 15.272029, 18.766949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609177, 15.272703, 19.626480>,  <21.189964, 15.215276, 19.128929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609177, 15.272703, 19.626480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412748, 15.156362, 19.298029>,  <20.294891, 15.086556, 19.100958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412748, 15.156362, 19.298029>,  <20.609177, 15.272703, 19.626480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412748, 15.156362, 19.298029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565652, -0.610391, 0.554492,
		-0.662485, 0.736768, 0.135224,
		-0.491072, -0.290853, -0.821129,
		20.265427, 15.069106, 19.051691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.833014, 15.496042, 19.672922>,  <20.609177, 15.272703, 19.626480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.833014, 15.496042, 19.672922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847172, 15.204612, 19.399303>,  <19.855667, 15.029754, 19.235132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847172, 15.204612, 19.399303>,  <19.833014, 15.496042, 19.672922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.847172, 15.204612, 19.399303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677476, -0.520688, 0.519528,
		-0.734692, 0.445039, -0.512023,
		0.035394, -0.728577, -0.684049,
		19.857790, 14.986039, 19.194088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.128628, 15.409707, 19.487558>,  <19.833014, 15.496042, 19.672922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.128628, 15.409707, 19.487558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.290991, 15.063205, 19.371048>,  <19.388409, 14.855304, 19.301142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.290991, 15.063205, 19.371048>,  <19.128628, 15.409707, 19.487558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.290991, 15.063205, 19.371048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686911, -0.499399, 0.527972,
		-0.602821, -0.014227, -0.797750,
		0.405907, -0.866255, -0.291275,
		19.412764, 14.803329, 19.283665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700769, 14.975549, 19.034527>,  <19.128628, 15.409707, 19.487558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700769, 14.975549, 19.034527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.951796, 14.713873, 19.203382>,  <19.102411, 14.556868, 19.304695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.951796, 14.713873, 19.203382>,  <18.700769, 14.975549, 19.034527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.951796, 14.713873, 19.203382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761440, -0.402616, 0.508044,
		-0.162398, -0.640263, -0.750793,
		0.627563, -0.654190, 0.422138,
		19.140064, 14.517616, 19.330023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299532, 14.372747, 19.167067>,  <18.700769, 14.975549, 19.034527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299532, 14.372747, 19.167067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623911, 14.258349, 19.371252>,  <18.818539, 14.189711, 19.493763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623911, 14.258349, 19.371252>,  <18.299532, 14.372747, 19.167067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623911, 14.258349, 19.371252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569378, -0.586713, 0.575827,
		0.134811, -0.757611, -0.638633,
		0.810947, -0.285996, 0.510462,
		18.867195, 14.172551, 19.524391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284313, 13.570751, 19.251244>,  <18.299532, 14.372747, 19.167067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284313, 13.570751, 19.251244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492180, 13.743688, 19.546005>,  <18.616899, 13.847449, 19.722862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492180, 13.743688, 19.546005>,  <18.284313, 13.570751, 19.251244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492180, 13.743688, 19.546005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538794, -0.503541, 0.675387,
		0.663058, -0.748016, -0.028731,
		0.519667, 0.432340, 0.736904,
		18.648081, 13.873390, 19.767076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441299, 13.078450, 19.702099>,  <18.284313, 13.570751, 19.251244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.441299, 13.078450, 19.702099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514830, 13.397338, 19.932108>,  <18.558949, 13.588671, 20.070112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514830, 13.397338, 19.932108>,  <18.441299, 13.078450, 19.702099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514830, 13.397338, 19.932108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341210, -0.496861, 0.797938,
		0.921837, -0.342885, 0.180683,
		0.183826, 0.797220, 0.575021,
		18.569977, 13.636504, 20.104614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556738, 12.317412, 19.502607>,  <18.441299, 13.078450, 19.702099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556738, 12.317412, 19.502607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.323547, 11.997433, 19.559488>,  <18.183634, 11.805445, 19.593616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.323547, 11.997433, 19.559488>,  <18.556738, 12.317412, 19.502607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.323547, 11.997433, 19.559488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197208, -0.030473, -0.979888,
		0.788194, -0.599293, -0.139991,
		-0.582974, -0.799949, 0.142204,
		18.148655, 11.757448, 19.602150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807306, 11.731744, 19.087555>,  <18.556738, 12.317412, 19.502607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.807306, 11.731744, 19.087555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418461, 11.668198, 19.156553>,  <18.185154, 11.630070, 19.197952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418461, 11.668198, 19.156553>,  <18.807306, 11.731744, 19.087555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.418461, 11.668198, 19.156553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170621, -0.025482, -0.985007,
		0.160880, -0.986971, -0.002335,
		-0.972114, -0.158866, 0.172498,
		18.126827, 11.620538, 19.208303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568892, 11.212198, 18.636070>,  <18.807306, 11.731744, 19.087555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568892, 11.212198, 18.636070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221411, 11.370495, 18.755234>,  <18.012922, 11.465473, 18.826731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221411, 11.370495, 18.755234>,  <18.568892, 11.212198, 18.636070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.221411, 11.370495, 18.755234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259666, 0.148334, -0.954238,
		-0.421822, -0.906303, -0.026097,
		-0.868700, 0.395742, 0.297906,
		17.960800, 11.489218, 18.844606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054869, 10.961409, 18.204290>,  <18.568892, 11.212198, 18.636070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054869, 10.961409, 18.204290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866991, 11.285895, 18.343609>,  <17.754265, 11.480588, 18.427200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866991, 11.285895, 18.343609>,  <18.054869, 10.961409, 18.204290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.866991, 11.285895, 18.343609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356803, 0.186434, -0.915388,
		-0.807513, -0.554227, 0.201878,
		-0.469696, 0.811218, 0.348298,
		17.726082, 11.529261, 18.448097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.380524, 10.824262, 18.130144>,  <18.054869, 10.961409, 18.204290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.380524, 10.824262, 18.130144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.403996, 11.219893, 18.184221>,  <17.418077, 11.457273, 18.216667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.403996, 11.219893, 18.184221>,  <17.380524, 10.824262, 18.130144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.403996, 11.219893, 18.184221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725220, 0.135299, -0.675093,
		-0.686012, -0.058431, 0.725240,
		0.058678, 0.989080, 0.135192,
		17.421598, 11.516618, 18.224779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770256, 11.060142, 18.021469>,  <17.380524, 10.824262, 18.130144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770256, 11.060142, 18.021469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951838, 11.415736, 17.997366>,  <17.060785, 11.629093, 17.982904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951838, 11.415736, 17.997366>,  <16.770256, 11.060142, 18.021469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951838, 11.415736, 17.997366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661226, 0.290773, -0.691543,
		-0.597250, 0.353773, 0.719818,
		0.453952, 0.888986, -0.060260,
		17.088024, 11.682432, 17.979288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260050, 11.502088, 17.937395>,  <16.770256, 11.060142, 18.021469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260050, 11.502088, 17.937395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581223, 11.692090, 17.793358>,  <16.773926, 11.806091, 17.706936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581223, 11.692090, 17.793358>,  <16.260050, 11.502088, 17.937395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581223, 11.692090, 17.793358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528112, 0.286773, -0.799287,
		-0.276402, 0.831943, 0.481116,
		0.802932, 0.475007, -0.360095,
		16.822102, 11.834592, 17.685329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102711, 12.250420, 17.873726>,  <16.260050, 11.502088, 17.937395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.102711, 12.250420, 17.873726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.410036, 12.211040, 17.620743>,  <16.594431, 12.187411, 17.468952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.410036, 12.211040, 17.620743>,  <16.102711, 12.250420, 17.873726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.410036, 12.211040, 17.620743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576758, 0.322007, -0.750774,
		0.277570, 0.941604, 0.190620,
		0.768313, -0.098450, -0.632457,
		16.640530, 12.181504, 17.431005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042912, 12.820372, 17.394623>,  <16.102711, 12.250420, 17.873726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.042912, 12.820372, 17.394623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292326, 12.567557, 17.210564>,  <16.441975, 12.415869, 17.100128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292326, 12.567557, 17.210564>,  <16.042912, 12.820372, 17.394623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292326, 12.567557, 17.210564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543612, 0.072486, -0.836201,
		0.561863, 0.771541, -0.298385,
		0.623535, -0.632036, -0.460146,
		16.479387, 12.377947, 17.072519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.250624, 13.135402, 16.763258>,  <16.042912, 12.820372, 17.394623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.250624, 13.135402, 16.763258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308084, 12.744421, 16.701353>,  <16.342560, 12.509832, 16.664209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308084, 12.744421, 16.701353>,  <16.250624, 13.135402, 16.763258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.308084, 12.744421, 16.701353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364175, 0.093200, -0.926656,
		0.920185, 0.189476, -0.342575,
		0.143651, -0.977452, -0.154763,
		16.351179, 12.451185, 16.654924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538267, 13.174990, 16.133236>,  <16.250624, 13.135402, 16.763258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.538267, 13.174990, 16.133236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390923, 12.805640, 16.176483>,  <16.302515, 12.584030, 16.202431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390923, 12.805640, 16.176483>,  <16.538267, 13.174990, 16.133236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390923, 12.805640, 16.176483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448254, 0.074520, -0.890795,
		0.814479, -0.376600, -0.441356,
		-0.368363, -0.923374, 0.108118,
		16.280413, 12.528628, 16.208918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.474907, 12.882433, 15.466885>,  <16.538267, 13.174990, 16.133236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.474907, 12.882433, 15.466885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.238197, 12.631995, 15.669985>,  <16.096172, 12.481732, 15.791845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.238197, 12.631995, 15.669985>,  <16.474907, 12.882433, 15.466885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238197, 12.631995, 15.669985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533056, -0.168564, -0.829118,
		0.604696, -0.761308, -0.233993,
		-0.591771, -0.626096, 0.507750,
		16.060665, 12.444166, 15.822310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<17.357029, 9.920083, 24.558607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.736353, 9.833072, 24.651028>,  <17.963947, 9.780865, 24.706480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.736353, 9.833072, 24.651028>,  <17.357029, 9.920083, 24.558607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736353, 9.833072, 24.651028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296343, 0.346604, -0.889970,
		0.113510, 0.912440, 0.393152,
		0.948312, -0.217528, 0.231053,
		18.020847, 9.767814, 24.720343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684984, 10.627499, 24.603086>,  <17.357029, 9.920083, 24.558607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684984, 10.627499, 24.603086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.990120, 10.382309, 24.520784>,  <18.173203, 10.235195, 24.471403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.990120, 10.382309, 24.520784>,  <17.684984, 10.627499, 24.603086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990120, 10.382309, 24.520784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258061, 0.580406, -0.772356,
		0.592855, 0.536088, 0.600943,
		0.762842, -0.612975, -0.205753,
		18.218973, 10.198417, 24.459059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.201893, 11.061408, 24.505629>,  <17.684984, 10.627499, 24.603086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.201893, 11.061408, 24.505629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.356873, 10.728930, 24.346130>,  <18.449860, 10.529444, 24.250431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.356873, 10.728930, 24.346130>,  <18.201893, 11.061408, 24.505629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.356873, 10.728930, 24.346130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309012, 0.524602, -0.793286,
		0.868558, 0.184141, 0.460107,
		0.387450, -0.831194, -0.398746,
		18.473108, 10.479572, 24.226507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830212, 11.284322, 24.043034>,  <18.201893, 11.061408, 24.505629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.830212, 11.284322, 24.043034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.745398, 10.924856, 23.889441>,  <18.694510, 10.709177, 23.797285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.745398, 10.924856, 23.889441>,  <18.830212, 11.284322, 24.043034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.745398, 10.924856, 23.889441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416844, 0.272213, -0.867261,
		0.883901, -0.343953, 0.316884,
		-0.212037, -0.898664, -0.383984,
		18.681786, 10.655257, 23.774246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340616, 11.146593, 23.530497>,  <18.830212, 11.284322, 24.043034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340616, 11.146593, 23.530497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.045898, 10.893764, 23.434479>,  <18.869068, 10.742067, 23.376869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.045898, 10.893764, 23.434479>,  <19.340616, 11.146593, 23.530497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.045898, 10.893764, 23.434479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271199, 0.048934, -0.961279,
		0.619343, -0.773364, 0.135362,
		-0.736794, -0.632071, -0.240043,
		18.824860, 10.704144, 23.362467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.567057, 10.763570, 22.964254>,  <19.340616, 11.146593, 23.530497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.567057, 10.763570, 22.964254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.172518, 10.700680, 22.944643>,  <18.935795, 10.662946, 22.932877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.172518, 10.700680, 22.944643>,  <19.567057, 10.763570, 22.964254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172518, 10.700680, 22.944643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040139, 0.059223, -0.997438,
		0.159729, -0.985785, -0.052104,
		-0.986344, -0.157228, -0.049028,
		18.876614, 10.653512, 22.929935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485483, 10.168376, 22.554892>,  <19.567057, 10.763570, 22.964254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485483, 10.168376, 22.554892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.137325, 10.365129, 22.546249>,  <18.928431, 10.483180, 22.541065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.137325, 10.365129, 22.546249>,  <19.485483, 10.168376, 22.554892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137325, 10.365129, 22.546249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049861, 0.044408, -0.997768,
		-0.489825, -0.869528, -0.063178,
		-0.870394, 0.491882, -0.021603,
		18.876207, 10.512693, 22.539768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.956743, 9.870637, 21.974638>,  <19.485483, 10.168376, 22.554892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.956743, 9.870637, 21.974638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.808363, 10.234011, 22.051727>,  <18.719336, 10.452035, 22.097980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.808363, 10.234011, 22.051727>,  <18.956743, 9.870637, 21.974638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.808363, 10.234011, 22.051727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281700, 0.087676, -0.955489,
		-0.884896, -0.408729, 0.223382,
		-0.370951, 0.908435, 0.192723,
		18.697077, 10.506541, 22.109545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.332325, 10.010335, 21.621984>,  <18.956743, 9.870637, 21.974638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.332325, 10.010335, 21.621984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.395823, 10.389868, 21.731178>,  <18.433920, 10.617587, 21.796694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.395823, 10.389868, 21.731178>,  <18.332325, 10.010335, 21.621984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395823, 10.389868, 21.731178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348306, 0.312531, -0.883746,
		-0.923842, 0.045206, 0.380096,
		0.158742, 0.948831, 0.272984,
		18.443445, 10.674517, 21.813074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716938, 10.363742, 21.428604>,  <18.332325, 10.010335, 21.621984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716938, 10.363742, 21.428604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.025681, 10.616763, 21.402941>,  <18.210926, 10.768576, 21.387543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.025681, 10.616763, 21.402941>,  <17.716938, 10.363742, 21.428604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.025681, 10.616763, 21.402941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293652, 0.265170, -0.918397,
		-0.563922, 0.727710, 0.390423,
		0.771855, 0.632553, -0.064158,
		18.257236, 10.806529, 21.383694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373415, 10.893717, 21.151634>,  <17.716938, 10.363742, 21.428604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373415, 10.893717, 21.151634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.760521, 10.990771, 21.124630>,  <17.992785, 11.049004, 21.108427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.760521, 10.990771, 21.124630>,  <17.373415, 10.893717, 21.151634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.760521, 10.990771, 21.124630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176061, 0.460094, -0.870239,
		-0.180091, 0.854073, 0.487982,
		0.967765, 0.242636, -0.067510,
		18.050850, 11.063562, 21.104378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437840, 11.697612, 21.068306>,  <17.373415, 10.893717, 21.151634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437840, 11.697612, 21.068306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.766426, 11.511325, 20.936670>,  <17.963577, 11.399553, 20.857689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.766426, 11.511325, 20.936670>,  <17.437840, 11.697612, 21.068306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766426, 11.511325, 20.936670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095044, 0.457205, -0.884268,
		0.562280, 0.757675, 0.331315,
		0.821467, -0.465716, -0.329090,
		18.012867, 11.371610, 20.837944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744490, 12.161852, 20.728418>,  <17.437840, 11.697612, 21.068306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744490, 12.161852, 20.728418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.893002, 11.824862, 20.572271>,  <17.982109, 11.622667, 20.478584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.893002, 11.824862, 20.572271>,  <17.744490, 12.161852, 20.728418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.893002, 11.824862, 20.572271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133394, 0.367660, -0.920343,
		0.918888, 0.393779, 0.024125,
		0.371282, -0.842475, -0.390367,
		18.004387, 11.572119, 20.455162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.231277, 12.428488, 20.215549>,  <17.744490, 12.161852, 20.728418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.231277, 12.428488, 20.215549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.165913, 12.042705, 20.132490>,  <18.126694, 11.811234, 20.082655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.165913, 12.042705, 20.132490>,  <18.231277, 12.428488, 20.215549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165913, 12.042705, 20.132490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175135, 0.235492, -0.955966,
		0.970889, -0.119849, -0.207392,
		-0.163411, -0.964458, -0.207646,
		18.116890, 11.753367, 20.070196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.814856, 12.862942, 20.388441>,  <18.231277, 12.428488, 20.215549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.814856, 12.862942, 20.388441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.635471, 13.211790, 20.466709>,  <18.527840, 13.421099, 20.513670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.635471, 13.211790, 20.466709>,  <18.814856, 12.862942, 20.388441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.635471, 13.211790, 20.466709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372189, -0.381253, 0.846240,
		0.812624, 0.306679, 0.495571,
		-0.448462, 0.872121, 0.195672,
		18.500933, 13.473426, 20.525412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949551, 13.015975, 21.101614>,  <18.814856, 12.862942, 20.388441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949551, 13.015975, 21.101614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.677618, 13.300377, 21.029724>,  <18.514458, 13.471018, 20.986591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.677618, 13.300377, 21.029724>,  <18.949551, 13.015975, 21.101614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.677618, 13.300377, 21.029724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298015, -0.043916, 0.953550,
		0.670085, 0.701815, 0.241745,
		-0.679833, 0.711004, -0.179724,
		18.473669, 13.513678, 20.975807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.024563, 13.502982, 21.663227>,  <18.949551, 13.015975, 21.101614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.024563, 13.502982, 21.663227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.662106, 13.568619, 21.507292>,  <18.444630, 13.608001, 21.413731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.662106, 13.568619, 21.507292>,  <19.024563, 13.502982, 21.663227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.662106, 13.568619, 21.507292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397917, -0.018256, 0.917240,
		0.143394, 0.986276, 0.081838,
		-0.906146, 0.164092, -0.389839,
		18.390263, 13.617846, 21.390341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.639168, 14.095259, 21.994566>,  <19.024563, 13.502982, 21.663227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.639168, 14.095259, 21.994566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.359026, 13.844749, 21.857576>,  <18.190941, 13.694444, 21.775383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.359026, 13.844749, 21.857576>,  <18.639168, 14.095259, 21.994566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.359026, 13.844749, 21.857576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530888, 0.136300, 0.836409,
		-0.477140, 0.767597, -0.427939,
		-0.700353, -0.626272, -0.342474,
		18.148920, 13.656868, 21.754835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.062899, 14.489616, 22.128441>,  <18.639168, 14.095259, 21.994566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.062899, 14.489616, 22.128441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.948912, 14.111448, 22.065228>,  <17.880520, 13.884547, 22.027300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.948912, 14.111448, 22.065228>,  <18.062899, 14.489616, 22.128441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.948912, 14.111448, 22.065228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454458, -0.011904, 0.890689,
		-0.843956, 0.325637, -0.426261,
		-0.284967, -0.945420, -0.158035,
		17.863422, 13.827823, 22.017817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.443340, 14.412275, 22.581640>,  <18.062899, 14.489616, 22.128441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.443340, 14.412275, 22.581640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.550259, 14.042523, 22.472775>,  <17.614410, 13.820672, 22.407455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.550259, 14.042523, 22.472775>,  <17.443340, 14.412275, 22.581640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550259, 14.042523, 22.472775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386454, -0.361568, 0.848482,
		-0.882726, -0.121616, -0.453876,
		0.267296, -0.924380, -0.272166,
		17.630447, 13.765209, 22.391125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893990, 14.100072, 22.767467>,  <17.443340, 14.412275, 22.581640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893990, 14.100072, 22.767467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.189272, 13.830606, 22.753448>,  <17.366442, 13.668925, 22.745037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.189272, 13.830606, 22.753448>,  <16.893990, 14.100072, 22.767467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189272, 13.830606, 22.753448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280353, -0.353639, 0.892380,
		-0.613561, -0.648931, -0.449923,
		0.738204, -0.673667, -0.035050,
		17.410732, 13.628506, 22.742933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596916, 13.492517, 23.111290>,  <16.893990, 14.100072, 22.767467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.596916, 13.492517, 23.111290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.988430, 13.411489, 23.099014>,  <17.223339, 13.362873, 23.091648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.988430, 13.411489, 23.099014>,  <16.596916, 13.492517, 23.111290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988430, 13.411489, 23.099014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048689, -0.375486, 0.925548,
		-0.199010, -0.904420, -0.377384,
		0.978787, -0.202568, -0.030690,
		17.282066, 13.350718, 23.089808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802443, 12.780556, 23.202259>,  <16.596916, 13.492517, 23.111290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.802443, 12.780556, 23.202259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.126331, 12.974288, 23.334789>,  <17.320663, 13.090528, 23.414309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.126331, 12.974288, 23.334789>,  <16.802443, 12.780556, 23.202259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126331, 12.974288, 23.334789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099078, -0.443677, 0.890693,
		0.578392, -0.754039, -0.311268,
		0.809720, 0.484330, 0.331328,
		17.369247, 13.119587, 23.434187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065798, 12.282651, 23.633196>,  <16.802443, 12.780556, 23.202259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065798, 12.282651, 23.633196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.261618, 12.616153, 23.735331>,  <17.379108, 12.816254, 23.796612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.261618, 12.616153, 23.735331>,  <17.065798, 12.282651, 23.633196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.261618, 12.616153, 23.735331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167062, -0.377083, 0.910988,
		0.855823, -0.403315, -0.323889,
		0.489548, 0.833754, 0.255337,
		17.408482, 12.866279, 23.811932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.775303, 12.092291, 24.060801>,  <17.065798, 12.282651, 23.633196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.775303, 12.092291, 24.060801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.667223, 12.470539, 24.133234>,  <17.602375, 12.697488, 24.176695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.667223, 12.470539, 24.133234>,  <17.775303, 12.092291, 24.060801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667223, 12.470539, 24.133234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038303, -0.177375, 0.983398,
		0.962042, 0.272650, 0.011706,
		-0.270200, 0.945622, 0.181085,
		17.586163, 12.754226, 24.187559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.135817, 12.192102, 24.653566>,  <17.775303, 12.092291, 24.060801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.135817, 12.192102, 24.653566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.859810, 12.481419, 24.642790>,  <17.694206, 12.655008, 24.636324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.859810, 12.481419, 24.642790>,  <18.135817, 12.192102, 24.653566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.859810, 12.481419, 24.642790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058189, -0.018336, 0.998137,
		0.721449, 0.690301, 0.054740,
		-0.690019, 0.723290, -0.026939,
		17.652803, 12.698405, 24.634708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371874, 12.673019, 25.112934>,  <18.135817, 12.192102, 24.653566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371874, 12.673019, 25.112934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.986975, 12.767952, 25.059631>,  <17.756035, 12.824911, 25.027649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.986975, 12.767952, 25.059631>,  <18.371874, 12.673019, 25.112934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.986975, 12.767952, 25.059631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127154, 0.040907, 0.991039,
		0.240656, 0.970567, -0.009185,
		-0.962246, 0.237332, -0.133256,
		17.698301, 12.839151, 25.019655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.249283, 13.151283, 25.615034>,  <18.371874, 12.673019, 25.112934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.249283, 13.151283, 25.615034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.921341, 12.955702, 25.495861>,  <17.724575, 12.838353, 25.424358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.921341, 12.955702, 25.495861>,  <18.249283, 13.151283, 25.615034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.921341, 12.955702, 25.495861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339903, -0.003107, 0.940455,
		-0.460764, 0.872304, -0.163649,
		-0.819855, -0.488953, -0.297931,
		17.675385, 12.809016, 25.406481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.450467, 12.662524, 26.132347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.652104, 12.373331, 25.943378>,  <12.773087, 12.199815, 25.829996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.652104, 12.373331, 25.943378>,  <12.450467, 12.662524, 26.132347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.652104, 12.373331, 25.943378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203574, 0.631064, -0.748543,
		0.839313, 0.281163, 0.465296,
		0.504094, -0.722984, -0.472423,
		12.803332, 12.156436, 25.801651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.970539, 13.035880, 25.826424>,  <12.450467, 12.662524, 26.132347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.970539, 13.035880, 25.826424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.964932, 12.690742, 25.624313>,  <12.961568, 12.483660, 25.503046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.964932, 12.690742, 25.624313>,  <12.970539, 13.035880, 25.826424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964932, 12.690742, 25.624313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399323, 0.458450, -0.793955,
		0.916703, -0.212898, 0.338127,
		-0.014017, -0.862843, -0.505278,
		12.960727, 12.431890, 25.472731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.535091, 13.129529, 25.469799>,  <12.970539, 13.035880, 25.826424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.535091, 13.129529, 25.469799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.347572, 12.832483, 25.278486>,  <13.235061, 12.654256, 25.163698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.347572, 12.832483, 25.278486>,  <13.535091, 13.129529, 25.469799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.347572, 12.832483, 25.278486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245291, 0.410724, -0.878145,
		0.848565, -0.528990, -0.010389,
		-0.468796, -0.742614, -0.478283,
		13.206933, 12.609699, 25.135002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.964714, 12.768258, 24.959091>,  <13.535091, 13.129529, 25.469799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.964714, 12.768258, 24.959091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.584882, 12.709245, 24.848434>,  <13.356982, 12.673837, 24.782040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.584882, 12.709245, 24.848434>,  <13.964714, 12.768258, 24.959091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584882, 12.709245, 24.848434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237639, 0.236885, -0.942026,
		0.204508, -0.960271, -0.189883,
		-0.949581, -0.147529, -0.276643,
		13.300008, 12.664985, 24.765442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977923, 12.543864, 24.316278>,  <13.964714, 12.768258, 24.959091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977923, 12.543864, 24.316278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.592049, 12.645396, 24.344418>,  <13.360523, 12.706315, 24.361301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.592049, 12.645396, 24.344418>,  <13.977923, 12.543864, 24.316278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.592049, 12.645396, 24.344418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020094, 0.195386, -0.980521,
		-0.262631, -0.947309, -0.183386,
		-0.964687, 0.253830, 0.070349,
		13.302643, 12.721545, 24.365522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.698275, 12.222410, 23.741989>,  <13.977923, 12.543864, 24.316278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.698275, 12.222410, 23.741989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.424661, 12.502904, 23.822357>,  <13.260492, 12.671200, 23.870579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.424661, 12.502904, 23.822357>,  <13.698275, 12.222410, 23.741989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.424661, 12.502904, 23.822357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001853, 0.277110, -0.960836,
		-0.729447, -0.656873, -0.190852,
		-0.684035, 0.701233, 0.200920,
		13.219450, 12.713274, 23.882633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225307, 12.181449, 23.193954>,  <13.698275, 12.222410, 23.741989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.225307, 12.181449, 23.193954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.162917, 12.546066, 23.346144>,  <13.125484, 12.764836, 23.437458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.162917, 12.546066, 23.346144>,  <13.225307, 12.181449, 23.193954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.162917, 12.546066, 23.346144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062994, 0.393585, -0.917127,
		-0.985750, -0.119080, -0.118811,
		-0.155974, 0.911543, 0.380475,
		13.116125, 12.819530, 23.460287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.860361, 12.487995, 22.723431>,  <13.225307, 12.181449, 23.193954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.860361, 12.487995, 22.723431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.956639, 12.819010, 22.926310>,  <13.014406, 13.017618, 23.048037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.956639, 12.819010, 22.926310>,  <12.860361, 12.487995, 22.723431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.956639, 12.819010, 22.926310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184811, 0.473927, -0.860952,
		-0.952843, 0.300963, -0.038866,
		0.240695, 0.827535, 0.507199,
		13.028848, 13.067270, 23.078470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433730, 13.008473, 22.454521>,  <12.860361, 12.487995, 22.723431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.433730, 13.008473, 22.454521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.745773, 13.186278, 22.630630>,  <12.932999, 13.292961, 22.736296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.745773, 13.186278, 22.630630>,  <12.433730, 13.008473, 22.454521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.745773, 13.186278, 22.630630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059186, 0.648124, -0.759231,
		-0.622840, 0.618340, 0.479297,
		0.780107, 0.444512, 0.440275,
		12.979806, 13.319632, 22.762712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.349717, 13.767100, 22.544353>,  <12.433730, 13.008473, 22.454521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.349717, 13.767100, 22.544353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.741944, 13.692200, 22.520956>,  <12.977281, 13.647259, 22.506918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.741944, 13.692200, 22.520956>,  <12.349717, 13.767100, 22.544353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.741944, 13.692200, 22.520956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098185, 0.726587, -0.680023,
		0.169838, 0.661066, 0.730853,
		0.980569, -0.187252, -0.058495,
		13.036115, 13.636024, 22.503407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541284, 14.434185, 22.411322>,  <12.349717, 13.767100, 22.544353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.541284, 14.434185, 22.411322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.865714, 14.209518, 22.345978>,  <13.060372, 14.074718, 22.306770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.865714, 14.209518, 22.345978>,  <12.541284, 14.434185, 22.411322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.865714, 14.209518, 22.345978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164846, 0.487438, -0.857456,
		0.561233, 0.668532, 0.487937,
		0.811075, -0.561667, -0.163361,
		13.109036, 14.041018, 22.296968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.075150, 14.896650, 22.316271>,  <12.541284, 14.434185, 22.411322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.075150, 14.896650, 22.316271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.186807, 14.560667, 22.130131>,  <13.253800, 14.359077, 22.018446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.186807, 14.560667, 22.130131>,  <13.075150, 14.896650, 22.316271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.186807, 14.560667, 22.130131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157953, 0.518177, -0.840561,
		0.947170, 0.161130, 0.277318,
		0.279140, -0.839958, -0.465351,
		13.270549, 14.308680, 21.990526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.607543, 15.137114, 21.966213>,  <13.075150, 14.896650, 22.316271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.607543, 15.137114, 21.966213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.498801, 14.800494, 21.779497>,  <13.433557, 14.598523, 21.667467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.498801, 14.800494, 21.779497>,  <13.607543, 15.137114, 21.966213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498801, 14.800494, 21.779497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044419, 0.473568, -0.879636,
		0.961313, -0.259866, -0.091361,
		-0.271853, -0.841548, -0.466790,
		13.417245, 14.548030, 21.639460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.857463, 15.286104, 21.311270>,  <13.607543, 15.137114, 21.966213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.857463, 15.286104, 21.311270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.628617, 14.958967, 21.286547>,  <13.491310, 14.762685, 21.271713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.628617, 14.958967, 21.286547>,  <13.857463, 15.286104, 21.311270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.628617, 14.958967, 21.286547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110563, 0.151574, -0.982243,
		0.812688, -0.555122, -0.177141,
		-0.572114, -0.817842, -0.061806,
		13.456983, 14.713614, 21.268005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.552457, 15.040643, 21.281893>,  <13.857463, 15.286104, 21.311270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.552457, 15.040643, 21.281893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.669365, 15.414694, 21.362007>,  <14.739510, 15.639125, 21.410076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.669365, 15.414694, 21.362007>,  <14.552457, 15.040643, 21.281893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.669365, 15.414694, 21.362007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099032, -0.237901, 0.966227,
		0.951195, -0.262564, -0.162138,
		0.292269, 0.935127, 0.200288,
		14.757046, 15.695232, 21.422094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.996312, 14.874623, 21.832577>,  <14.552457, 15.040643, 21.281893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.996312, 14.874623, 21.832577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.920711, 15.266707, 21.856131>,  <14.875350, 15.501958, 21.870262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.920711, 15.266707, 21.856131>,  <14.996312, 14.874623, 21.832577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920711, 15.266707, 21.856131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079305, -0.044532, 0.995855,
		0.978769, 0.192890, -0.069319,
		-0.189003, 0.980209, 0.058884,
		14.864010, 15.560770, 21.873796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.513383, 15.207215, 22.247511>,  <14.996312, 14.874623, 21.832577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.513383, 15.207215, 22.247511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.189273, 15.440496, 22.270586>,  <14.994807, 15.580465, 22.284431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.189273, 15.440496, 22.270586>,  <15.513383, 15.207215, 22.247511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189273, 15.440496, 22.270586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021356, -0.068988, 0.997389,
		0.585660, 0.809391, 0.043444,
		-0.810275, 0.583203, 0.057689,
		14.946190, 15.615458, 22.287893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.697638, 15.600702, 22.832630>,  <15.513383, 15.207215, 22.247511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.697638, 15.600702, 22.832630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.305033, 15.668892, 22.797817>,  <15.069470, 15.709805, 22.776930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.305033, 15.668892, 22.797817>,  <15.697638, 15.600702, 22.832630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305033, 15.668892, 22.797817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094225, -0.034556, 0.994951,
		0.166606, 0.984756, 0.049981,
		-0.981511, 0.170475, -0.087031,
		15.010579, 15.720035, 22.771708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539308, 16.239006, 23.168921>,  <15.697638, 15.600702, 22.832630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.539308, 16.239006, 23.168921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.186513, 16.050703, 23.160082>,  <14.974836, 15.937721, 23.154779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.186513, 16.050703, 23.160082>,  <15.539308, 16.239006, 23.168921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.186513, 16.050703, 23.160082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122009, 0.182800, 0.975550,
		-0.455207, 0.863118, -0.218663,
		-0.881986, -0.470756, -0.022096,
		14.921917, 15.909476, 23.153454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.001790, 16.651035, 23.535223>,  <15.539308, 16.239006, 23.168921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.001790, 16.651035, 23.535223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.854293, 16.279343, 23.525766>,  <14.765795, 16.056328, 23.520092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.854293, 16.279343, 23.525766>,  <15.001790, 16.651035, 23.535223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.854293, 16.279343, 23.525766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326000, 0.105464, 0.939469,
		-0.870490, 0.354129, -0.341818,
		-0.368742, -0.929231, -0.023641,
		14.743670, 16.000574, 23.518675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501979, 16.603859, 24.082773>,  <15.001790, 16.651035, 23.535223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501979, 16.603859, 24.082773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.496251, 16.208906, 24.019684>,  <14.492814, 15.971935, 23.981831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.496251, 16.208906, 24.019684>,  <14.501979, 16.603859, 24.082773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.496251, 16.208906, 24.019684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343655, -0.143270, 0.928103,
		-0.938987, 0.067492, -0.337266,
		-0.014320, -0.987380, -0.157723,
		14.491955, 15.912692, 23.972366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974747, 16.378458, 24.380892>,  <14.501979, 16.603859, 24.082773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974747, 16.378458, 24.380892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.196762, 16.048843, 24.335468>,  <14.329971, 15.851074, 24.308214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.196762, 16.048843, 24.335468>,  <13.974747, 16.378458, 24.380892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.196762, 16.048843, 24.335468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266878, -0.305707, 0.913958,
		-0.787852, -0.476975, -0.389596,
		0.555037, -0.824038, -0.113558,
		14.363274, 15.801632, 24.301401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556092, 15.818625, 24.665915>,  <13.974747, 16.378458, 24.380892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.556092, 15.818625, 24.665915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.936468, 15.694891, 24.663921>,  <14.164694, 15.620650, 24.662725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.936468, 15.694891, 24.663921>,  <13.556092, 15.818625, 24.665915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.936468, 15.694891, 24.663921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169938, -0.535729, 0.827112,
		-0.258525, -0.785687, -0.562014,
		0.950939, -0.309337, -0.004981,
		14.221750, 15.602090, 24.662428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524695, 15.125228, 24.919851>,  <13.556092, 15.818625, 24.665915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.524695, 15.125228, 24.919851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.895493, 15.252483, 24.999323>,  <14.117970, 15.328836, 25.047007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.895493, 15.252483, 24.999323>,  <13.524695, 15.125228, 24.919851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.895493, 15.252483, 24.999323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018157, -0.491016, 0.870961,
		0.374642, -0.810981, -0.449392,
		0.926992, 0.318139, 0.198680,
		14.173590, 15.347925, 25.058928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087951, 14.482756, 25.019793>,  <13.524695, 15.125228, 24.919851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087951, 14.482756, 25.019793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.135048, 14.809995, 25.244951>,  <14.163306, 15.006338, 25.380047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.135048, 14.809995, 25.244951>,  <14.087951, 14.482756, 25.019793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135048, 14.809995, 25.244951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006226, -0.566222, 0.824230,
		0.993025, -0.100552, -0.061575,
		0.117743, 0.818097, 0.562898,
		14.170371, 15.055424, 25.413820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.753078, 14.447993, 25.305788>,  <14.087951, 14.482756, 25.019793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.753078, 14.447993, 25.305788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.547414, 14.695025, 25.543858>,  <14.424015, 14.843245, 25.686699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.547414, 14.695025, 25.543858>,  <14.753078, 14.447993, 25.305788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547414, 14.695025, 25.543858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176976, -0.602600, 0.778173,
		0.839236, 0.505438, 0.200537,
		-0.514162, 0.617580, 0.595174,
		14.393166, 14.880300, 25.722410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.168448, 14.783875, 25.756123>,  <14.753078, 14.447993, 25.305788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.168448, 14.783875, 25.756123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.813144, 14.799576, 25.939186>,  <14.599961, 14.808996, 26.049025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.813144, 14.799576, 25.939186>,  <15.168448, 14.783875, 25.756123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.813144, 14.799576, 25.939186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376779, -0.507630, 0.774822,
		0.262733, 0.860681, 0.436120,
		-0.888262, 0.039250, 0.457658,
		14.546665, 14.811351, 26.076483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370417, 14.806611, 26.377340>,  <15.168448, 14.783875, 25.756123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370417, 14.806611, 26.377340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.993060, 14.676481, 26.403187>,  <14.766646, 14.598404, 26.418695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.993060, 14.676481, 26.403187>,  <15.370417, 14.806611, 26.377340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993060, 14.676481, 26.403187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236179, -0.522110, 0.819524,
		-0.232874, 0.788394, 0.569390,
		-0.943392, -0.325324, 0.064616,
		14.710042, 14.578884, 26.422571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.667503, 15.271986, 26.754433>,  <15.370417, 14.806611, 26.377340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.667503, 15.271986, 26.754433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.016937, 15.326031, 26.941448>,  <16.226597, 15.358458, 27.053658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.016937, 15.326031, 26.941448>,  <15.667503, 15.271986, 26.754433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.016937, 15.326031, 26.941448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300296, 0.606347, -0.736319,
		-0.382976, 0.783638, 0.489122,
		0.873585, 0.135111, 0.467540,
		16.279013, 15.366564, 27.081711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.858169, 15.994761, 26.600031>,  <15.667503, 15.271986, 26.754433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.858169, 15.994761, 26.600031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.193296, 15.822143, 26.733791>,  <16.394373, 15.718572, 26.814049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.193296, 15.822143, 26.733791>,  <15.858169, 15.994761, 26.600031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193296, 15.822143, 26.733791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544376, 0.613925, -0.571622,
		0.041382, 0.660958, 0.749281,
		0.837820, -0.431546, 0.334404,
		16.444643, 15.692678, 26.834112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389715, 16.539694, 26.711452>,  <15.858169, 15.994761, 26.600031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389715, 16.539694, 26.711452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.609495, 16.207218, 26.677431>,  <16.741364, 16.007732, 26.657019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.609495, 16.207218, 26.677431>,  <16.389715, 16.539694, 26.711452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.609495, 16.207218, 26.677431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636555, 0.482366, -0.601765,
		0.541205, 0.276499, 0.794132,
		0.549449, -0.831187, -0.085052,
		16.774330, 15.957862, 26.651915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092871, 16.754292, 26.652491>,  <16.389715, 16.539694, 26.711452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092871, 16.754292, 26.652491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.099279, 16.399588, 26.467710>,  <17.103125, 16.186764, 26.356842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.099279, 16.399588, 26.467710>,  <17.092871, 16.754292, 26.652491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099279, 16.399588, 26.467710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635584, 0.365686, -0.679931,
		0.771865, -0.282713, 0.569471,
		0.016023, -0.886762, -0.461948,
		17.104086, 16.133558, 26.329126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819477, 16.744846, 26.523235>,  <17.092871, 16.754292, 26.652491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819477, 16.744846, 26.523235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.655527, 16.452301, 26.305202>,  <17.557158, 16.276773, 26.174383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.655527, 16.452301, 26.305202>,  <17.819477, 16.744846, 26.523235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.655527, 16.452301, 26.305202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563931, 0.266507, -0.781636,
		0.716928, -0.627760, 0.303204,
		-0.409874, -0.731363, -0.545080,
		17.532564, 16.232893, 26.141678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318705, 16.555351, 26.069530>,  <17.819477, 16.744846, 26.523235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318705, 16.555351, 26.069530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.019005, 16.371244, 25.879044>,  <17.839186, 16.260780, 25.764751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.019005, 16.371244, 25.879044>,  <18.318705, 16.555351, 26.069530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019005, 16.371244, 25.879044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565856, -0.071244, -0.821421,
		0.344146, -0.884917, 0.313824,
		-0.749247, -0.460268, -0.476217,
		17.794231, 16.233164, 25.736179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.483059, 15.892645, 25.836498>,  <18.318705, 16.555351, 26.069530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.483059, 15.892645, 25.836498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.176846, 16.016235, 25.610760>,  <17.993116, 16.090389, 25.475317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.176846, 16.016235, 25.610760>,  <18.483059, 15.892645, 25.836498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176846, 16.016235, 25.610760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555392, -0.125455, -0.822071,
		-0.324800, -0.942759, -0.075562,
		-0.765536, 0.308975, -0.564349,
		17.947186, 16.108929, 25.441456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.590408, 15.487372, 25.162441>,  <18.483059, 15.892645, 25.836498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.590408, 15.487372, 25.162441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.328236, 15.776048, 25.073380>,  <18.170933, 15.949253, 25.019941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.328236, 15.776048, 25.073380>,  <18.590408, 15.487372, 25.162441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.328236, 15.776048, 25.073380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291571, -0.030167, -0.956073,
		-0.696705, -0.691559, -0.190652,
		-0.655430, 0.721689, -0.222656,
		18.131607, 15.992555, 25.006582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133799, 15.246950, 24.566298>,  <18.590408, 15.487372, 25.162441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133799, 15.246950, 24.566298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.231152, 15.630902, 24.622007>,  <18.289564, 15.861274, 24.655434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.231152, 15.630902, 24.622007>,  <18.133799, 15.246950, 24.566298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.231152, 15.630902, 24.622007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433370, 0.020843, -0.900975,
		-0.867730, 0.279638, -0.410910,
		0.243382, 0.959879, 0.139273,
		18.304167, 15.918866, 24.663790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.890797, 15.613065, 23.966051>,  <18.133799, 15.246950, 24.566298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.890797, 15.613065, 23.966051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.180519, 15.832739, 24.132797>,  <18.354353, 15.964543, 24.232845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.180519, 15.832739, 24.132797>,  <17.890797, 15.613065, 23.966051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180519, 15.832739, 24.132797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323324, 0.263464, -0.908872,
		-0.608968, 0.793084, 0.013264,
		0.724306, 0.549186, 0.416864,
		18.397810, 15.997495, 24.257856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814157, 16.262280, 23.600481>,  <17.890797, 15.613065, 23.966051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814157, 16.262280, 23.600481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.179335, 16.268396, 23.763599>,  <18.398441, 16.272066, 23.861471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.179335, 16.268396, 23.763599>,  <17.814157, 16.262280, 23.600481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.179335, 16.268396, 23.763599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361546, 0.433131, -0.825640,
		-0.189256, 0.901201, 0.389896,
		0.912944, 0.015293, 0.407798,
		18.453218, 16.272984, 23.885939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.001169, 16.914400, 23.466461>,  <17.814157, 16.262280, 23.600481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.001169, 16.914400, 23.466461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.340780, 16.707041, 23.507278>,  <18.544546, 16.582624, 23.531769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.340780, 16.707041, 23.507278>,  <18.001169, 16.914400, 23.466461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.340780, 16.707041, 23.507278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306398, 0.325755, -0.894429,
		0.430432, 0.790661, 0.435412,
		0.849028, -0.518400, 0.102042,
		18.595490, 16.551521, 23.537891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581469, 17.378063, 23.388226>,  <18.001169, 16.914400, 23.466461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581469, 17.378063, 23.388226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.749756, 17.020590, 23.325844>,  <18.850729, 16.806105, 23.288416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.749756, 17.020590, 23.325844>,  <18.581469, 17.378063, 23.388226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749756, 17.020590, 23.325844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282583, 0.292455, -0.913574,
		0.862057, 0.340289, 0.375581,
		0.420720, -0.893685, -0.155953,
		18.875973, 16.752483, 23.279058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.132618, 17.502747, 23.023830>,  <18.581469, 17.378063, 23.388226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.132618, 17.502747, 23.023830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.028372, 17.124819, 22.944439>,  <18.965824, 16.898062, 22.896805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.028372, 17.124819, 22.944439>,  <19.132618, 17.502747, 23.023830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.028372, 17.124819, 22.944439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253642, 0.131355, -0.958338,
		0.931528, -0.300101, 0.205413,
		-0.260616, -0.944820, -0.198479,
		18.950188, 16.841373, 22.884895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<8.805655, 18.076000, 17.290907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.871077, 17.787001, 17.022207>,  <8.910329, 17.613602, 16.860987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.871077, 17.787001, 17.022207>,  <8.805655, 18.076000, 17.290907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.871077, 17.787001, 17.022207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170621, 0.691372, -0.702064,
		0.971668, 0.000210, 0.236349,
		0.163552, -0.722499, -0.671749,
		8.920142, 17.570251, 16.820683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.409242, 18.578957, 17.112959>,  <8.805655, 18.076000, 17.290907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.409242, 18.578957, 17.112959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.265457, 18.950500, 17.148760>,  <9.179186, 19.173426, 17.170240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.265457, 18.950500, 17.148760>,  <9.409242, 18.578957, 17.112959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.265457, 18.950500, 17.148760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093084, -0.059744, 0.993864,
		0.928505, 0.365588, -0.064986,
		-0.359462, 0.928857, 0.089503,
		9.157619, 19.229158, 17.175611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.757062, 18.778942, 17.655096>,  <9.409242, 18.578957, 17.112959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.757062, 18.778942, 17.655096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.490340, 19.074789, 17.618574>,  <9.330307, 19.252298, 17.596661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.490340, 19.074789, 17.618574>,  <9.757062, 18.778942, 17.655096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.490340, 19.074789, 17.618574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140580, -0.004518, 0.990059,
		0.731854, 0.673011, 0.106988,
		-0.666804, 0.739619, -0.091305,
		9.290299, 19.296675, 17.591183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.102262, 19.355465, 17.928263>,  <9.757062, 18.778942, 17.655096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.102262, 19.355465, 17.928263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.706872, 19.297848, 17.946911>,  <9.469639, 19.263277, 17.958099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.706872, 19.297848, 17.946911>,  <10.102262, 19.355465, 17.928263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.706872, 19.297848, 17.946911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043097, 0.027474, 0.998693,
		-0.145134, 0.989190, -0.020950,
		-0.988473, -0.144042, 0.046619,
		9.410330, 19.254635, 17.960897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.842966, 19.833239, 18.260410>,  <10.102262, 19.355465, 17.928263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.842966, 19.833239, 18.260410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.531243, 19.583456, 18.281322>,  <9.344210, 19.433586, 18.293869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.531243, 19.583456, 18.281322>,  <9.842966, 19.833239, 18.260410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.531243, 19.583456, 18.281322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143787, 0.259395, 0.955007,
		-0.609924, 0.736726, -0.291937,
		-0.779306, -0.624459, 0.052280,
		9.297451, 19.396118, 18.297007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.029208, 20.595198, 18.421576>,  <9.842966, 19.833239, 18.260410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.029208, 20.595198, 18.421576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.366225, 20.766348, 18.290703>,  <10.568436, 20.869038, 18.212179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.366225, 20.766348, 18.290703>,  <10.029208, 20.595198, 18.421576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.366225, 20.766348, 18.290703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243585, 0.239095, 0.939947,
		0.480406, -0.871641, 0.097224,
		0.842541, 0.427874, -0.327182,
		10.618988, 20.894711, 18.192549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.626998, 20.338326, 18.782824>,  <10.029208, 20.595198, 18.421576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.626998, 20.338326, 18.782824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.734918, 20.699163, 18.648106>,  <10.799669, 20.915667, 18.567274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.734918, 20.699163, 18.648106>,  <10.626998, 20.338326, 18.782824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.734918, 20.699163, 18.648106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210443, 0.286070, 0.934814,
		0.939640, -0.323087, -0.112658,
		0.269798, 0.902097, -0.336794,
		10.815857, 20.969793, 18.547068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.341366, 20.470713, 19.137148>,  <10.626998, 20.338326, 18.782824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.341366, 20.470713, 19.137148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.143566, 20.802174, 19.032223>,  <11.024886, 21.001049, 18.969267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.143566, 20.802174, 19.032223>,  <11.341366, 20.470713, 19.137148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.143566, 20.802174, 19.032223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135940, 0.371813, 0.918300,
		0.858482, 0.418440, -0.296508,
		-0.494499, 0.828651, -0.262312,
		10.995216, 21.050770, 18.953529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.994994, 19.889238, 19.357124>,  <11.341366, 20.470713, 19.137148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.994994, 19.889238, 19.357124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.326537, 19.666239, 19.338411>,  <11.525463, 19.532438, 19.327185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.326537, 19.666239, 19.338411>,  <10.994994, 19.889238, 19.357124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.326537, 19.666239, 19.338411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511742, -0.721716, -0.466097,
		0.226086, 0.410268, -0.883496,
		0.828857, -0.557501, -0.046781,
		11.575194, 19.498989, 19.324377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.635745, 20.338993, 19.893496>,  <10.994994, 19.889238, 19.357124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.635745, 20.338993, 19.893496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.450733, 20.375988, 20.246202>,  <10.339726, 20.398186, 20.457827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.450733, 20.375988, 20.246202>,  <10.635745, 20.338993, 19.893496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.450733, 20.375988, 20.246202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732882, -0.599578, -0.321543,
		0.498948, -0.794954, 0.345106,
		-0.462530, 0.092489, 0.881766,
		10.311975, 20.403734, 20.510733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.394282, 19.717825, 20.268410>,  <10.635745, 20.338993, 19.893496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.394282, 19.717825, 20.268410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.128617, 19.998486, 20.371616>,  <9.969218, 20.166882, 20.433540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.128617, 19.998486, 20.371616>,  <10.394282, 19.717825, 20.268410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.128617, 19.998486, 20.371616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747278, -0.633019, -0.202144,
		0.021496, -0.327067, 0.944756,
		-0.664164, 0.701650, 0.258018,
		9.929368, 20.208981, 20.449022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.909485, 19.337194, 20.631952>,  <10.394282, 19.717825, 20.268410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.909485, 19.337194, 20.631952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.757906, 19.685530, 20.506704>,  <9.666959, 19.894531, 20.431555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.757906, 19.685530, 20.506704>,  <9.909485, 19.337194, 20.631952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.757906, 19.685530, 20.506704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838709, -0.466182, -0.281498,
		-0.391110, 0.155943, 0.907036,
		-0.378947, 0.870836, -0.313119,
		9.644222, 19.946781, 20.412767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.193717, 19.328484, 20.883141>,  <9.909485, 19.337194, 20.631952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.193717, 19.328484, 20.883141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.219365, 19.562212, 20.559546>,  <9.234755, 19.702448, 20.365389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.219365, 19.562212, 20.559546>,  <9.193717, 19.328484, 20.883141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.219365, 19.562212, 20.559546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768102, -0.488644, -0.413821,
		-0.637110, 0.647919, 0.417483,
		0.064121, 0.584319, -0.808987,
		9.238602, 19.737507, 20.316849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.434159, 19.512606, 20.762928>,  <9.193717, 19.328484, 20.883141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.434159, 19.512606, 20.762928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.669427, 19.557074, 20.442503>,  <8.810588, 19.583755, 20.250248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.669427, 19.557074, 20.442503>,  <8.434159, 19.512606, 20.762928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.669427, 19.557074, 20.442503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703281, -0.418757, -0.574490,
		-0.399317, 0.901268, -0.168115,
		0.588169, 0.111171, -0.801061,
		8.845878, 19.590425, 20.202185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.062807, 19.835913, 20.262655>,  <8.434159, 19.512606, 20.762928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.062807, 19.835913, 20.262655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.373132, 19.668787, 20.073532>,  <8.559327, 19.568512, 19.960058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.373132, 19.668787, 20.073532>,  <8.062807, 19.835913, 20.262655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.373132, 19.668787, 20.073532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628114, -0.440268, -0.641590,
		0.059903, 0.794730, -0.604000,
		0.775812, -0.417814, -0.472808,
		8.605875, 19.543444, 19.931690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.820157, 19.812819, 19.541391>,  <8.062807, 19.835913, 20.262655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.820157, 19.812819, 19.541391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.113543, 19.541954, 19.565004>,  <8.289574, 19.379436, 19.579172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.113543, 19.541954, 19.565004>,  <7.820157, 19.812819, 19.541391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.113543, 19.541954, 19.565004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472117, -0.569994, -0.672467,
		0.489015, 0.465362, -0.737769,
		0.733465, -0.677160, 0.059031,
		8.333582, 19.338806, 19.582714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.868524, 19.560507, 18.889212>,  <7.820157, 19.812819, 19.541391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.868524, 19.560507, 18.889212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.053978, 19.290318, 19.118568>,  <8.165251, 19.128204, 19.256184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.053978, 19.290318, 19.118568>,  <7.868524, 19.560507, 18.889212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.053978, 19.290318, 19.118568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403115, -0.737106, -0.542377,
		0.789012, 0.020322, -0.614042,
		0.463636, -0.675471, 0.573394,
		8.193069, 19.087677, 19.290586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.158078, 19.032513, 18.356777>,  <7.868524, 19.560507, 18.889212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.158078, 19.032513, 18.356777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.088300, 18.861116, 18.711395>,  <8.046432, 18.758278, 18.924166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.088300, 18.861116, 18.711395>,  <8.158078, 19.032513, 18.356777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.088300, 18.861116, 18.711395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387535, -0.797812, -0.461858,
		0.905199, -0.424138, -0.026879,
		-0.174447, -0.428490, 0.886546,
		8.035966, 18.732569, 18.977360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.384245, 18.309120, 18.314445>,  <8.158078, 19.032513, 18.356777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.384245, 18.309120, 18.314445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.145222, 18.278530, 18.633715>,  <8.001808, 18.260176, 18.825275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.145222, 18.278530, 18.633715>,  <8.384245, 18.309120, 18.314445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.145222, 18.278530, 18.633715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264062, -0.921143, -0.285950,
		0.757097, -0.381638, 0.530241,
		-0.597557, -0.076476, 0.798171,
		7.965954, 18.255587, 18.873165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.494118, 17.667719, 18.583422>,  <8.384245, 18.309120, 18.314445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.494118, 17.667719, 18.583422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.133493, 17.786938, 18.708868>,  <7.917119, 17.858469, 18.784136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.133493, 17.786938, 18.708868>,  <8.494118, 17.667719, 18.583422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.133493, 17.786938, 18.708868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395957, -0.860541, -0.320449,
		0.174368, -0.413082, 0.893845,
		-0.901562, 0.298048, 0.313614,
		7.863025, 17.876352, 18.802952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.184349, 17.000597, 18.879585>,  <8.494118, 17.667719, 18.583422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.184349, 17.000597, 18.879585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.887695, 17.267618, 18.853197>,  <7.709703, 17.427832, 18.837364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.887695, 17.267618, 18.853197>,  <8.184349, 17.000597, 18.879585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.887695, 17.267618, 18.853197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616809, -0.717288, -0.324104,
		-0.263677, -0.199675, 0.943718,
		-0.741633, 0.667553, -0.065971,
		7.665205, 17.467884, 18.833406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.631383, 16.714180, 19.238842>,  <8.184349, 17.000597, 18.879585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.631383, 16.714180, 19.238842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.476135, 16.975700, 18.979025>,  <7.382986, 17.132612, 18.823135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.476135, 16.975700, 18.979025>,  <7.631383, 16.714180, 19.238842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.476135, 16.975700, 18.979025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517781, -0.737736, -0.433184,
		-0.762406, 0.168193, 0.624858,
		-0.388122, 0.653802, -0.649542,
		7.359699, 17.171841, 18.784163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.922643, 16.636272, 19.315489>,  <7.631383, 16.714180, 19.238842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.922643, 16.636272, 19.315489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.992881, 16.814608, 18.964401>,  <7.035023, 16.921610, 18.753748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.992881, 16.814608, 18.964401>,  <6.922643, 16.636272, 19.315489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.992881, 16.814608, 18.964401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588100, -0.667499, -0.456710,
		-0.789497, 0.596383, 0.144990,
		0.175594, 0.445840, -0.877721,
		7.045559, 16.948359, 18.701084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.366915, 16.472357, 18.928143>,  <6.922643, 16.636272, 19.315489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.366915, 16.472357, 18.928143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.625102, 16.557524, 18.634737>,  <6.780014, 16.608624, 18.458694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.625102, 16.557524, 18.634737>,  <6.366915, 16.472357, 18.928143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.625102, 16.557524, 18.634737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414977, -0.708491, -0.570820,
		-0.641223, 0.672835, -0.368952,
		0.645467, 0.212916, -0.733512,
		6.818742, 16.621399, 18.414684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.007002, 16.459023, 18.273823>,  <6.366915, 16.472357, 18.928143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.007002, 16.459023, 18.273823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.394593, 16.438171, 18.177187>,  <6.627148, 16.425661, 18.119205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.394593, 16.438171, 18.177187>,  <6.007002, 16.459023, 18.273823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.394593, 16.438171, 18.177187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195736, -0.758674, -0.621370,
		-0.150897, 0.649381, -0.745341,
		0.968978, -0.052127, -0.241589,
		6.685287, 16.422533, 18.104710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.978980, 16.431118, 17.536232>,  <6.007002, 16.459023, 18.273823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.978980, 16.431118, 17.536232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.352704, 16.306482, 17.605492>,  <6.576938, 16.231701, 17.647047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.352704, 16.306482, 17.605492>,  <5.978980, 16.431118, 17.536232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.352704, 16.306482, 17.605492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063646, -0.623748, -0.779030,
		0.350737, 0.716834, -0.602604,
		0.934309, -0.311588, 0.173147,
		6.632996, 16.213005, 17.657436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.235172, 16.439217, 16.957352>,  <5.978980, 16.431118, 17.536232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.235172, 16.439217, 16.957352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.468831, 16.196606, 17.173092>,  <6.609025, 16.051039, 17.302536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.468831, 16.196606, 17.173092>,  <6.235172, 16.439217, 16.957352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.468831, 16.196606, 17.173092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072664, -0.700925, -0.709524,
		0.808389, 0.375274, -0.453515,
		0.584146, -0.606526, 0.539351,
		6.644074, 16.014648, 17.334898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.552340, 16.255865, 16.397625>,  <6.235172, 16.439217, 16.957352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.552340, 16.255865, 16.397625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.654481, 16.004129, 16.691217>,  <6.715765, 15.853087, 16.867373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.654481, 16.004129, 16.691217>,  <6.552340, 16.255865, 16.397625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.654481, 16.004129, 16.691217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016331, -0.756231, -0.654101,
		0.966710, 0.179013, -0.182827,
		0.255352, -0.629340, 0.733980,
		6.731086, 15.815328, 16.911411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.067625, 15.768958, 16.187910>,  <6.552340, 16.255865, 16.397625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.067625, 15.768958, 16.187910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.894372, 15.563858, 16.484419>,  <6.790421, 15.440798, 16.662325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.894372, 15.563858, 16.484419>,  <7.067625, 15.768958, 16.187910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.894372, 15.563858, 16.484419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129608, -0.778441, -0.614191,
		0.891964, -0.362101, 0.270711,
		-0.433132, -0.512750, 0.741273,
		6.764433, 15.410033, 16.706800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.278553, 15.166177, 16.111801>,  <7.067625, 15.768958, 16.187910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.278553, 15.166177, 16.111801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.963890, 15.115644, 16.353531>,  <6.775092, 15.085323, 16.498569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.963890, 15.115644, 16.353531>,  <7.278553, 15.166177, 16.111801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.963890, 15.115644, 16.353531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189325, -0.882319, -0.430893,
		0.587644, -0.453380, 0.670165,
		-0.786658, -0.126332, 0.604326,
		6.727893, 15.077744, 16.534828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.297041, 14.508741, 16.485138>,  <7.278553, 15.166177, 16.111801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.297041, 14.508741, 16.485138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.927316, 14.622442, 16.383278>,  <6.705481, 14.690662, 16.322163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.927316, 14.622442, 16.383278>,  <7.297041, 14.508741, 16.485138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.927316, 14.622442, 16.383278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166173, -0.900452, -0.401961,
		-0.343558, -0.329222, 0.879534,
		-0.924313, 0.284252, -0.254649,
		6.650023, 14.707718, 16.306883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.034132, 14.446018, 16.409992>,  <7.297041, 14.508741, 16.485138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.034132, 14.446018, 16.409992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.324031, 14.175393, 16.357830>,  <8.497970, 14.013018, 16.326532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.324031, 14.175393, 16.357830>,  <8.034132, 14.446018, 16.409992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.324031, 14.175393, 16.357830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431148, 0.297681, 0.851761,
		-0.537451, -0.673534, 0.507442,
		0.724747, -0.676563, -0.130404,
		8.541455, 13.972425, 16.318708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.944652, 14.059113, 16.925375>,  <8.034132, 14.446018, 16.409992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.944652, 14.059113, 16.925375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.320589, 13.971649, 16.820393>,  <8.546151, 13.919171, 16.757402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.320589, 13.971649, 16.820393>,  <7.944652, 14.059113, 16.925375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.320589, 13.971649, 16.820393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283551, 0.070868, 0.956335,
		-0.190510, -0.973225, 0.128605,
		0.939843, -0.218658, -0.262458,
		8.602542, 13.906052, 16.741655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.110728, 13.509190, 17.293789>,  <7.944652, 14.059113, 16.925375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.110728, 13.509190, 17.293789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.448954, 13.696667, 17.191534>,  <8.651889, 13.809153, 17.130180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.448954, 13.696667, 17.191534>,  <8.110728, 13.509190, 17.293789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.448954, 13.696667, 17.191534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224347, 0.122563, 0.966771,
		0.484451, -0.874817, -0.001515,
		0.845563, 0.468693, -0.255638,
		8.702622, 13.837275, 17.114843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.512431, 13.272307, 17.840988>,  <8.110728, 13.509190, 17.293789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.512431, 13.272307, 17.840988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.734399, 13.571785, 17.695923>,  <8.867579, 13.751472, 17.608883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.734399, 13.571785, 17.695923>,  <8.512431, 13.272307, 17.840988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.734399, 13.571785, 17.695923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136686, 0.347962, 0.927491,
		0.820599, -0.564253, 0.090755,
		0.554918, 0.748693, -0.362663,
		8.900874, 13.796392, 17.587124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.047183, 13.303651, 18.256285>,  <8.512431, 13.272307, 17.840988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.047183, 13.303651, 18.256285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.032320, 13.661806, 18.078793>,  <9.023402, 13.876699, 17.972298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.032320, 13.661806, 18.078793>,  <9.047183, 13.303651, 18.256285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.032320, 13.661806, 18.078793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268602, 0.436647, 0.858599,
		0.962534, -0.087284, -0.256728,
		-0.037157, 0.895389, -0.443732,
		9.021173, 13.930423, 17.945673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.715810, 13.719275, 18.418911>,  <9.047183, 13.303651, 18.256285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.715810, 13.719275, 18.418911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.439500, 13.979848, 18.293394>,  <9.273714, 14.136192, 18.218084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.439500, 13.979848, 18.293394>,  <9.715810, 13.719275, 18.418911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.439500, 13.979848, 18.293394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270489, 0.635268, 0.723375,
		0.670572, 0.414812, -0.615032,
		-0.690775, 0.651434, -0.313791,
		9.232267, 14.175278, 18.199257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.051415, 14.425762, 18.408642>,  <9.715810, 13.719275, 18.418911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.051415, 14.425762, 18.408642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.658056, 14.494866, 18.430843>,  <9.422041, 14.536328, 18.444164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.658056, 14.494866, 18.430843>,  <10.051415, 14.425762, 18.408642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.658056, 14.494866, 18.430843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165783, 0.731025, 0.661905,
		0.073775, 0.660118, -0.747530,
		-0.983399, 0.172759, 0.055505,
		9.363036, 14.546694, 18.447495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.983521, 15.196656, 18.300789>,  <10.051415, 14.425762, 18.408642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.983521, 15.196656, 18.300789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.650649, 15.073489, 18.485250>,  <9.450926, 14.999589, 18.595928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.650649, 15.073489, 18.485250>,  <9.983521, 15.196656, 18.300789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.650649, 15.073489, 18.485250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177557, 0.639889, 0.747674,
		-0.525310, 0.704080, -0.477830,
		-0.832180, -0.307918, 0.461154,
		9.400995, 14.981113, 18.623596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.672890, 15.756996, 18.351303>,  <9.983521, 15.196656, 18.300789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.672890, 15.756996, 18.351303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.492161, 15.525132, 18.622553>,  <9.383723, 15.386014, 18.785303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.492161, 15.525132, 18.622553>,  <9.672890, 15.756996, 18.351303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.492161, 15.525132, 18.622553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045883, 0.774229, 0.631240,
		-0.890928, 0.254094, -0.376409,
		-0.451821, -0.579660, 0.678124,
		9.356614, 15.351234, 18.825991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.051825, 16.061909, 18.526718>,  <9.672890, 15.756996, 18.351303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.051825, 16.061909, 18.526718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.168832, 15.827865, 18.829262>,  <9.239036, 15.687438, 19.010788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.168832, 15.827865, 18.829262>,  <9.051825, 16.061909, 18.526718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.168832, 15.827865, 18.829262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053752, 0.779643, 0.623913,
		-0.954748, -0.223161, 0.196608,
		0.292517, -0.585112, 0.756358,
		9.256587, 15.652331, 19.056170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.779565, 16.434994, 19.101328>,  <9.051825, 16.061909, 18.526718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.779565, 16.434994, 19.101328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.012896, 16.167679, 19.285988>,  <9.152894, 16.007290, 19.396784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.012896, 16.167679, 19.285988>,  <8.779565, 16.434994, 19.101328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.012896, 16.167679, 19.285988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179245, 0.660272, 0.729323,
		-0.792212, -0.342685, 0.504942,
		0.583327, -0.668287, 0.461651,
		9.187894, 15.967193, 19.424482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.650335, 16.426792, 19.778502>,  <8.779565, 16.434994, 19.101328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.650335, 16.426792, 19.778502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.023849, 16.286055, 19.752426>,  <9.247958, 16.201612, 19.736780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.023849, 16.286055, 19.752426>,  <8.650335, 16.426792, 19.778502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.023849, 16.286055, 19.752426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338775, 0.810605, 0.477651,
		-0.115215, -0.468108, 0.876128,
		0.933786, -0.351843, -0.065189,
		9.303986, 16.180502, 19.732870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.822159, 16.496761, 20.394541>,  <8.650335, 16.426792, 19.778502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.822159, 16.496761, 20.394541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.154401, 16.490950, 20.171873>,  <9.353746, 16.487463, 20.038273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.154401, 16.490950, 20.171873>,  <8.822159, 16.496761, 20.394541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.154401, 16.490950, 20.171873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409174, 0.693993, 0.592411,
		0.377717, -0.719835, 0.582380,
		0.830606, -0.014531, -0.556671,
		9.403583, 16.486591, 20.004871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.434896, 16.322496, 20.828552>,  <8.822159, 16.496761, 20.394541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.434896, 16.322496, 20.828552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.590500, 16.483763, 20.497221>,  <9.683862, 16.580523, 20.298422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.590500, 16.483763, 20.497221>,  <9.434896, 16.322496, 20.828552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.590500, 16.483763, 20.497221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553051, 0.616891, 0.559983,
		0.736755, -0.675947, 0.017005,
		0.389009, 0.403166, -0.828330,
		9.707203, 16.604712, 20.248722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.177676, 16.366865, 20.952156>,  <9.434896, 16.322496, 20.828552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.177676, 16.366865, 20.952156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.084322, 16.649193, 20.684620>,  <10.028310, 16.818590, 20.524097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.084322, 16.649193, 20.684620>,  <10.177676, 16.366865, 20.952156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.084322, 16.649193, 20.684620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580829, 0.652835, 0.486255,
		0.779852, -0.274999, -0.562322,
		-0.233385, 0.705820, -0.668842,
		10.014307, 16.860939, 20.483967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.913167, 16.703091, 20.871307>,  <10.177676, 16.366865, 20.952156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.913167, 16.703091, 20.871307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.658019, 16.944372, 20.679781>,  <10.504930, 17.089142, 20.564865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.658019, 16.944372, 20.679781>,  <10.913167, 16.703091, 20.871307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.658019, 16.944372, 20.679781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436710, 0.795403, 0.420260,
		0.634354, 0.058968, -0.770790,
		-0.637871, 0.603205, -0.478815,
		10.466658, 17.125334, 20.536137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.261187, 17.253141, 20.492357>,  <10.913167, 16.703091, 20.871307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.261187, 17.253141, 20.492357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.893987, 17.391851, 20.569323>,  <10.673667, 17.475077, 20.615501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.893987, 17.391851, 20.569323>,  <11.261187, 17.253141, 20.492357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.893987, 17.391851, 20.569323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396353, 0.785839, 0.474723,
		0.013414, 0.512060, -0.858845,
		-0.918000, 0.346773, 0.192415,
		10.618587, 17.495884, 20.627047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.182640, 17.930773, 20.234293>,  <11.261187, 17.253141, 20.492357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.182640, 17.930773, 20.234293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.925050, 17.913048, 20.539799>,  <10.770496, 17.902412, 20.723103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.925050, 17.913048, 20.539799>,  <11.182640, 17.930773, 20.234293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.925050, 17.913048, 20.539799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385620, 0.843425, 0.374075,
		-0.660753, 0.535417, -0.526056,
		-0.643974, -0.044313, 0.763763,
		10.731857, 17.899754, 20.768927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.246541, 18.543934, 20.378586>,  <11.182640, 17.930773, 20.234293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.246541, 18.543934, 20.378586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.042104, 18.412725, 20.696375>,  <10.919441, 18.334000, 20.887049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.042104, 18.412725, 20.696375>,  <11.246541, 18.543934, 20.378586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.042104, 18.412725, 20.696375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290521, 0.803987, 0.518847,
		-0.808938, 0.495990, -0.315616,
		-0.511094, -0.328022, 0.794471,
		10.888776, 18.314320, 20.934715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651992, 19.022194, 20.655296>,  <11.246541, 18.543934, 20.378586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651992, 19.022194, 20.655296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.802285, 18.807949, 20.957806>,  <10.892461, 18.679403, 21.139311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.802285, 18.807949, 20.957806>,  <10.651992, 19.022194, 20.655296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802285, 18.807949, 20.957806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162914, 0.841533, 0.515055,
		-0.912296, -0.070316, 0.403450,
		0.375733, -0.535610, 0.756272,
		10.915005, 18.647266, 21.184687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.302010, 19.381914, 21.243326>,  <10.651992, 19.022194, 20.655296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.302010, 19.381914, 21.243326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.605758, 19.170988, 21.395798>,  <10.788007, 19.044434, 21.487280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.605758, 19.170988, 21.395798>,  <10.302010, 19.381914, 21.243326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.605758, 19.170988, 21.395798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358324, 0.827910, 0.431472,
		-0.543104, -0.191061, 0.817639,
		0.759369, -0.527314, 0.381180,
		10.833569, 19.012794, 21.510151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.688324, 13.439469, 26.041666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.537333, 13.093374, 25.909681>,  <17.446737, 12.885717, 25.830490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.537333, 13.093374, 25.909681>,  <17.688324, 13.439469, 26.041666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537333, 13.093374, 25.909681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366794, -0.187472, 0.911217,
		-0.850277, 0.464992, -0.246597,
		-0.377479, -0.865237, -0.329960,
		17.424089, 12.833803, 25.810694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.030773, 13.451938, 26.312897>,  <17.688324, 13.439469, 26.041666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.030773, 13.451938, 26.312897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.115475, 13.080937, 26.189671>,  <17.166296, 12.858337, 26.115736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.115475, 13.080937, 26.189671>,  <17.030773, 13.451938, 26.312897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115475, 13.080937, 26.189671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347495, -0.366068, 0.863274,
		-0.913459, -0.075752, -0.399818,
		0.211755, -0.927500, -0.308065,
		17.179001, 12.802688, 26.097252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.462845, 13.088351, 26.509256>,  <17.030773, 13.451938, 26.312897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.462845, 13.088351, 26.509256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.745686, 12.810615, 26.455750>,  <16.915390, 12.643972, 26.423645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.745686, 12.810615, 26.455750>,  <16.462845, 13.088351, 26.509256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745686, 12.810615, 26.455750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187281, -0.366317, 0.911448,
		-0.681858, -0.619436, -0.389061,
		0.707103, -0.694343, -0.133768,
		16.957817, 12.602312, 26.415619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158524, 12.479428, 26.721437>,  <16.462845, 13.088351, 26.509256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158524, 12.479428, 26.721437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.547018, 12.384781, 26.732094>,  <16.780115, 12.327992, 26.738487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.547018, 12.384781, 26.732094>,  <16.158524, 12.479428, 26.721437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547018, 12.384781, 26.732094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142861, -0.489534, 0.860202,
		-0.190497, -0.839266, -0.509257,
		0.971237, -0.236619, 0.026644,
		16.838388, 12.313795, 26.740088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205788, 11.728595, 26.838854>,  <16.158524, 12.479428, 26.721437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205788, 11.728595, 26.838854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.554083, 11.873656, 26.971699>,  <16.763060, 11.960693, 27.051405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.554083, 11.873656, 26.971699>,  <16.205788, 11.728595, 26.838854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.554083, 11.873656, 26.971699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008626, -0.664002, 0.747681,
		0.491672, -0.653899, -0.575043,
		0.870738, 0.362653, 0.332111,
		16.815304, 11.982452, 27.071333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591169, 11.246101, 27.080963>,  <16.205788, 11.728595, 26.838854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591169, 11.246101, 27.080963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.799631, 11.528137, 27.273315>,  <16.924709, 11.697359, 27.388727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.799631, 11.528137, 27.273315>,  <16.591169, 11.246101, 27.080963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799631, 11.528137, 27.273315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099209, -0.609676, 0.786418,
		0.847676, -0.362139, -0.387688,
		0.521156, 0.705090, 0.480880,
		16.955978, 11.739664, 27.417580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.097427, 10.846898, 27.401411>,  <16.591169, 11.246101, 27.080963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.097427, 10.846898, 27.401411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.105883, 11.193900, 27.600203>,  <17.110956, 11.402102, 27.719479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.105883, 11.193900, 27.600203>,  <17.097427, 10.846898, 27.401411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.105883, 11.193900, 27.600203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097440, -0.496513, 0.862543,
		0.995017, 0.030194, -0.095024,
		0.021137, 0.867504, 0.496981,
		17.112225, 11.454151, 27.749296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612143, 10.749355, 27.846544>,  <17.097427, 10.846898, 27.401411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612143, 10.749355, 27.846544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.415619, 11.057025, 28.010002>,  <17.297705, 11.241627, 28.108076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.415619, 11.057025, 28.010002>,  <17.612143, 10.749355, 27.846544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415619, 11.057025, 28.010002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155612, -0.384107, 0.910081,
		0.856972, 0.510720, 0.069022,
		-0.491308, 0.769173, 0.408643,
		17.268227, 11.287777, 28.132595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.047113, 11.192716, 28.279898>,  <17.612143, 10.749355, 27.846544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.047113, 11.192716, 28.279898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.665857, 11.193252, 28.400906>,  <17.437103, 11.193573, 28.473511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.665857, 11.193252, 28.400906>,  <18.047113, 11.192716, 28.279898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665857, 11.193252, 28.400906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283218, -0.347546, 0.893867,
		0.106339, 0.937662, 0.330881,
		-0.953142, 0.001341, 0.302521,
		17.379915, 11.193654, 28.491661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039263, 11.328026, 29.094780>,  <18.047113, 11.192716, 28.279898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039263, 11.328026, 29.094780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.672098, 11.195850, 29.006918>,  <17.451799, 11.116545, 28.954201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.672098, 11.195850, 29.006918>,  <18.039263, 11.328026, 29.094780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672098, 11.195850, 29.006918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051180, -0.450359, 0.891379,
		-0.393470, 0.829450, 0.396478,
		-0.917912, -0.330439, -0.219654,
		17.396725, 11.096719, 28.941021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.601254, 11.515835, 29.715738>,  <18.039263, 11.328026, 29.094780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.601254, 11.515835, 29.715738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.394411, 11.233204, 29.522512>,  <17.270306, 11.063625, 29.406576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.394411, 11.233204, 29.522512>,  <17.601254, 11.515835, 29.715738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394411, 11.233204, 29.522512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119232, -0.499412, 0.858121,
		-0.847577, 0.501335, 0.174002,
		-0.517104, -0.706577, -0.483065,
		17.239281, 11.021231, 29.377592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120255, 11.198522, 30.190645>,  <17.601254, 11.515835, 29.715738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120255, 11.198522, 30.190645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.164793, 10.909138, 29.918114>,  <17.191515, 10.735507, 29.754595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.164793, 10.909138, 29.918114>,  <17.120255, 11.198522, 30.190645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.164793, 10.909138, 29.918114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110378, -0.672346, 0.731962,
		-0.987633, -0.156703, 0.004993,
		0.111343, -0.723461, -0.681328,
		17.198196, 10.692100, 29.713715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667126, 11.716093, 30.217188>,  <17.120255, 11.198522, 30.190645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667126, 11.716093, 30.217188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.359755, 11.968675, 30.175648>,  <16.175331, 12.120224, 30.150724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.359755, 11.968675, 30.175648>,  <16.667126, 11.716093, 30.217188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359755, 11.968675, 30.175648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437533, -0.399995, 0.805338,
		0.466995, 0.664281, 0.583649,
		-0.768427, 0.631455, -0.103849,
		16.129227, 12.158112, 30.144493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745872, 11.880170, 30.923544>,  <16.667126, 11.716093, 30.217188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745872, 11.880170, 30.923544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.757938, 12.223198, 30.718151>,  <16.765179, 12.429015, 30.594915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.757938, 12.223198, 30.718151>,  <16.745872, 11.880170, 30.923544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757938, 12.223198, 30.718151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545160, -0.416466, -0.727569,
		-0.837789, 0.301877, 0.454950,
		0.030165, 0.857570, -0.513482,
		16.766989, 12.480469, 30.564106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552799, 12.574661, 31.297134>,  <16.745872, 11.880170, 30.923544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552799, 12.574661, 31.297134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.199905, 12.659122, 31.465458>,  <15.988170, 12.709798, 31.566452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.199905, 12.659122, 31.465458>,  <16.552799, 12.574661, 31.297134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199905, 12.659122, 31.465458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256263, 0.534434, -0.805425,
		-0.394960, -0.818410, -0.417386,
		-0.882234, 0.211151, 0.420808,
		15.935235, 12.722466, 31.591700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.096146, 12.500175, 30.810015>,  <16.552799, 12.574661, 31.297134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.096146, 12.500175, 30.810015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.933393, 12.760011, 31.066914>,  <15.835741, 12.915912, 31.221052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.933393, 12.760011, 31.066914>,  <16.096146, 12.500175, 30.810015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933393, 12.760011, 31.066914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327320, 0.552716, -0.766399,
		-0.852824, -0.522054, -0.012266,
		-0.406881, 0.649589, 0.642248,
		15.811328, 12.954887, 31.259588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.413230, 12.727138, 30.503050>,  <16.096146, 12.500175, 30.810015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.413230, 12.727138, 30.503050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.512407, 13.008413, 30.769598>,  <15.571914, 13.177178, 30.929527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.512407, 13.008413, 30.769598>,  <15.413230, 12.727138, 30.503050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.512407, 13.008413, 30.769598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287736, 0.710262, -0.642446,
		-0.925057, -0.032448, 0.378439,
		0.247945, 0.703190, 0.666369,
		15.586791, 13.219370, 30.969509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924279, 13.186019, 30.444868>,  <15.413230, 12.727138, 30.503050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924279, 13.186019, 30.444868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.231836, 13.381262, 30.610062>,  <15.416370, 13.498407, 30.709177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.231836, 13.381262, 30.610062>,  <14.924279, 13.186019, 30.444868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.231836, 13.381262, 30.610062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191725, 0.792204, -0.579356,
		-0.609956, 0.366283, 0.702702,
		0.768892, 0.488107, 0.412984,
		15.462504, 13.527694, 30.733957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744710, 13.876743, 30.498791>,  <14.924279, 13.186019, 30.444868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744710, 13.876743, 30.498791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.144423, 13.889267, 30.507280>,  <15.384252, 13.896781, 30.512373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.144423, 13.889267, 30.507280>,  <14.744710, 13.876743, 30.498791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.144423, 13.889267, 30.507280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006516, 0.695206, -0.718781,
		-0.037258, 0.718129, 0.694912,
		0.999284, 0.031308, 0.021222,
		15.444209, 13.898660, 30.513647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.909377, 14.559855, 30.440802>,  <14.744710, 13.876743, 30.498791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.909377, 14.559855, 30.440802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.257224, 14.390451, 30.339287>,  <15.465932, 14.288810, 30.278378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.257224, 14.390451, 30.339287>,  <14.909377, 14.559855, 30.440802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.257224, 14.390451, 30.339287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053269, 0.591504, -0.804540,
		0.490845, 0.686123, 0.536942,
		0.869617, -0.423507, -0.253788,
		15.518109, 14.263399, 30.263151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.323709, 15.192898, 30.250267>,  <14.909377, 14.559855, 30.440802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.323709, 15.192898, 30.250267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.515176, 14.869132, 30.114193>,  <15.630056, 14.674872, 30.032549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.515176, 14.869132, 30.114193>,  <15.323709, 15.192898, 30.250267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.515176, 14.869132, 30.114193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277736, 0.507150, -0.815881,
		0.832910, 0.296055, 0.467560,
		0.478669, -0.809414, -0.340185,
		15.658776, 14.626307, 30.012138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976649, 15.434149, 30.048670>,  <15.323709, 15.192898, 30.250267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976649, 15.434149, 30.048670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.908919, 15.086274, 29.863209>,  <15.868281, 14.877549, 29.751932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.908919, 15.086274, 29.863209>,  <15.976649, 15.434149, 30.048670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.908919, 15.086274, 29.863209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341484, 0.389532, -0.855367,
		0.924509, -0.303165, 0.231027,
		-0.169326, -0.869687, -0.463652,
		15.858122, 14.825368, 29.724113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532761, 15.386245, 29.629959>,  <15.976649, 15.434149, 30.048670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532761, 15.386245, 29.629959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.268274, 15.128428, 29.476410>,  <16.109583, 14.973738, 29.384281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.268274, 15.128428, 29.476410>,  <16.532761, 15.386245, 29.629959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268274, 15.128428, 29.476410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324148, 0.215999, -0.921017,
		0.676550, -0.733424, 0.066105,
		-0.661217, -0.644543, -0.383872,
		16.069910, 14.935065, 29.361248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876369, 14.905306, 29.199512>,  <16.532761, 15.386245, 29.629959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876369, 14.905306, 29.199512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.495834, 14.887197, 29.077593>,  <16.267513, 14.876330, 29.004440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.495834, 14.887197, 29.077593>,  <16.876369, 14.905306, 29.199512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495834, 14.887197, 29.077593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286470, 0.234456, -0.928959,
		0.113519, -0.971072, -0.210078,
		-0.951340, -0.045273, -0.304798,
		16.210432, 14.873614, 28.986153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.850956, 14.544716, 28.642851>,  <16.876369, 14.905306, 29.199512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.850956, 14.544716, 28.642851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.501896, 14.732254, 28.588207>,  <16.292459, 14.844777, 28.555422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.501896, 14.732254, 28.588207>,  <16.850956, 14.544716, 28.642851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.501896, 14.732254, 28.588207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206995, 0.101761, -0.973035,
		-0.442303, -0.877398, -0.185851,
		-0.872651, 0.468847, -0.136608,
		16.240101, 14.872908, 28.547224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.474983, 14.235860, 28.102123>,  <16.850956, 14.544716, 28.642851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.474983, 14.235860, 28.102123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.272932, 14.580992, 28.109821>,  <16.151701, 14.788071, 28.114441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.272932, 14.580992, 28.109821>,  <16.474983, 14.235860, 28.102123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.272932, 14.580992, 28.109821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126625, 0.096152, -0.987280,
		-0.853705, -0.496266, -0.157825,
		-0.505128, 0.862830, 0.019246,
		16.121393, 14.839841, 28.115595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026525, 14.183718, 27.571819>,  <16.474983, 14.235860, 28.102123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026525, 14.183718, 27.571819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.105326, 14.569909, 27.639984>,  <16.152607, 14.801624, 27.680883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.105326, 14.569909, 27.639984>,  <16.026525, 14.183718, 27.571819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105326, 14.569909, 27.639984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280136, 0.111138, -0.953505,
		-0.939528, 0.235582, -0.248571,
		0.197003, 0.965479, 0.170412,
		16.164427, 14.859552, 27.691107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747520, 14.507097, 27.033934>,  <16.026525, 14.183718, 27.571819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747520, 14.507097, 27.033934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.020472, 14.753449, 27.191441>,  <16.184242, 14.901260, 27.285944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.020472, 14.753449, 27.191441>,  <15.747520, 14.507097, 27.033934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.020472, 14.753449, 27.191441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312876, 0.240763, -0.918772,
		-0.660658, 0.750150, -0.028402,
		0.682378, 0.615880, 0.393766,
		16.225185, 14.938213, 27.309570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152851, 14.865755, 27.228989>,  <15.747520, 14.507097, 27.033934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.152851, 14.865755, 27.228989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.874867, 14.625409, 27.071005>,  <14.708077, 14.481202, 26.976213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.874867, 14.625409, 27.071005>,  <15.152851, 14.865755, 27.228989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874867, 14.625409, 27.071005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028698, -0.572022, 0.819736,
		-0.718476, 0.558349, 0.414775,
		-0.694959, -0.600864, -0.394961,
		14.666380, 14.445149, 26.952517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.751109, 14.620174, 27.795753>,  <15.152851, 14.865755, 27.228989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.751109, 14.620174, 27.795753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.634933, 14.343408, 27.531361>,  <14.565227, 14.177347, 27.372725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.634933, 14.343408, 27.531361>,  <14.751109, 14.620174, 27.795753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.634933, 14.343408, 27.531361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052868, -0.678098, 0.733067,
		-0.955431, 0.247858, 0.160368,
		-0.290442, -0.691917, -0.660980,
		14.547800, 14.135833, 27.333067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.216225, 14.266178, 28.117992>,  <14.751109, 14.620174, 27.795753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.216225, 14.266178, 28.117992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.316978, 14.007414, 27.830086>,  <14.377429, 13.852156, 27.657343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.316978, 14.007414, 27.830086>,  <14.216225, 14.266178, 28.117992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316978, 14.007414, 27.830086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111079, -0.758155, 0.642543,
		-0.961362, -0.081895, -0.262824,
		0.251882, -0.646911, -0.719765,
		14.392542, 13.813340, 27.614157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.651958, 13.787805, 28.140749>,  <14.216225, 14.266178, 28.117992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.651958, 13.787805, 28.140749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.933613, 13.569853, 27.958628>,  <14.102605, 13.439081, 27.849356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.933613, 13.569853, 27.958628>,  <13.651958, 13.787805, 28.140749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.933613, 13.569853, 27.958628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245471, -0.788469, 0.563969,
		-0.666287, -0.285347, -0.688941,
		0.704135, -0.544880, -0.455302,
		14.144854, 13.406389, 27.822037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.332079, 13.213231, 28.013283>,  <13.651958, 13.787805, 28.140749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.332079, 13.213231, 28.013283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.724524, 13.136313, 28.004900>,  <13.959991, 13.090162, 27.999870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.724524, 13.136313, 28.004900>,  <13.332079, 13.213231, 28.013283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.724524, 13.136313, 28.004900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126902, -0.721639, 0.680539,
		-0.145988, -0.665026, -0.732412,
		0.981114, -0.192295, -0.020957,
		14.018859, 13.078625, 27.998613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368812, 12.502890, 27.897089>,  <13.332079, 13.213231, 28.013283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368812, 12.502890, 27.897089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.729913, 12.598732, 28.039989>,  <13.946573, 12.656238, 28.125729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.729913, 12.598732, 28.039989>,  <13.368812, 12.502890, 27.897089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.729913, 12.598732, 28.039989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085761, -0.713578, 0.695307,
		0.421525, -0.658328, -0.623635,
		0.902752, 0.239605, 0.357250,
		14.000738, 12.670613, 28.147165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.701542, 11.762070, 28.141922>,  <13.368812, 12.502890, 27.897089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.701542, 11.762070, 28.141922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.904111, 12.059592, 28.316410>,  <14.025652, 12.238106, 28.421103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.904111, 12.059592, 28.316410>,  <13.701542, 11.762070, 28.141922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.904111, 12.059592, 28.316410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131470, -0.433371, 0.891575,
		0.852205, -0.508863, -0.121680,
		0.506422, 0.743807, 0.436220,
		14.056038, 12.282734, 28.447277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923718, 10.994209, 27.980053>,  <13.701542, 11.762070, 28.141922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.923718, 10.994209, 27.980053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.591767, 10.778657, 27.922211>,  <13.392596, 10.649326, 27.887505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.591767, 10.778657, 27.922211>,  <13.923718, 10.994209, 27.980053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.591767, 10.778657, 27.922211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019026, 0.231694, -0.972603,
		0.557620, -0.809893, -0.182025,
		-0.829878, -0.538880, -0.144606,
		13.342804, 10.616993, 27.878828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974967, 10.344658, 27.369480>,  <13.923718, 10.994209, 27.980053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974967, 10.344658, 27.369480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.588002, 10.437935, 27.408945>,  <13.355824, 10.493901, 27.432625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.588002, 10.437935, 27.408945>,  <13.974967, 10.344658, 27.369480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.588002, 10.437935, 27.408945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037775, 0.252383, -0.966890,
		-0.250373, -0.939108, -0.235349,
		-0.967412, 0.233192, 0.098664,
		13.297778, 10.507893, 27.438545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.610470, 10.180567, 26.676559>,  <13.974967, 10.344658, 27.369480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.610470, 10.180567, 26.676559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.359195, 10.437549, 26.852119>,  <13.208429, 10.591738, 26.957455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.359195, 10.437549, 26.852119>,  <13.610470, 10.180567, 26.676559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.359195, 10.437549, 26.852119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104514, 0.489305, -0.865828,
		-0.771010, -0.589774, -0.240230,
		-0.628188, 0.642454, 0.438899,
		13.170738, 10.630285, 26.983789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.991742, 10.290206, 26.226154>,  <13.610470, 10.180567, 26.676559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.991742, 10.290206, 26.226154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.962042, 10.605964, 26.469906>,  <12.944221, 10.795418, 26.616158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.962042, 10.605964, 26.469906>,  <12.991742, 10.290206, 26.226154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.962042, 10.605964, 26.469906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225707, 0.581907, -0.781307,
		-0.971362, -0.195553, 0.134965,
		-0.074250, 0.789394, 0.609380,
		12.939767, 10.842782, 26.652719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462957, 10.572623, 25.972338>,  <12.991742, 10.290206, 26.226154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.462957, 10.572623, 25.972338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.647482, 10.870673, 26.164995>,  <12.758197, 11.049503, 26.280590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.647482, 10.870673, 26.164995>,  <12.462957, 10.572623, 25.972338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.647482, 10.870673, 26.164995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176454, 0.609064, -0.773243,
		-0.869515, 0.271718, 0.412448,
		0.461311, 0.745124, 0.481644,
		12.785875, 11.094211, 26.309488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.961157, 11.236923, 25.869452>,  <12.462957, 10.572623, 25.972338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.961157, 11.236923, 25.869452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.322097, 11.347416, 26.001791>,  <12.538661, 11.413712, 26.081194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.322097, 11.347416, 26.001791>,  <11.961157, 11.236923, 25.869452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.322097, 11.347416, 26.001791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026207, 0.731037, -0.681834,
		-0.430205, 0.623924, 0.652412,
		0.902351, 0.276231, 0.330847,
		12.592802, 11.430285, 26.101046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.005765, 11.981605, 26.033285>,  <11.961157, 11.236923, 25.869452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.005765, 11.981605, 26.033285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.381213, 11.873913, 25.947023>,  <12.606483, 11.809298, 25.895266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.381213, 11.873913, 25.947023>,  <12.005765, 11.981605, 26.033285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381213, 11.873913, 25.947023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110820, 0.827385, -0.550594,
		0.326664, 0.492900, 0.806437,
		0.938621, -0.269229, -0.215654,
		12.662800, 11.793144, 25.882328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.332634, 8.396440, 29.211731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.698690, 8.555461, 29.238455>,  <16.918325, 8.650874, 29.254488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.698690, 8.555461, 29.238455>,  <16.332634, 8.396440, 29.211731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698690, 8.555461, 29.238455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069777, 0.319433, -0.945036,
		-0.397044, 0.860182, 0.320067,
		0.915143, 0.397554, 0.066808,
		16.973234, 8.674727, 29.258497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.251770, 8.831478, 28.643032>,  <16.332634, 8.396440, 29.211731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.251770, 8.831478, 28.643032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.631300, 8.837517, 28.769207>,  <16.859018, 8.841140, 28.844912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.631300, 8.837517, 28.769207>,  <16.251770, 8.831478, 28.643032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.631300, 8.837517, 28.769207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296113, 0.304616, -0.905277,
		-0.109753, 0.952356, 0.284558,
		0.948826, 0.015096, 0.315437,
		16.915947, 8.842046, 28.863838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.438290, 9.473441, 28.470903>,  <16.251770, 8.831478, 28.643032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.438290, 9.473441, 28.470903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.755722, 9.230285, 28.481483>,  <16.946180, 9.084391, 28.487831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.755722, 9.230285, 28.481483>,  <16.438290, 9.473441, 28.470903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755722, 9.230285, 28.481483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209650, 0.232367, -0.949764,
		0.571208, 0.759259, 0.311846,
		0.793580, -0.607891, 0.026449,
		16.993795, 9.047917, 28.489418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812246, 9.730628, 27.916784>,  <16.438290, 9.473441, 28.470903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812246, 9.730628, 27.916784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.047523, 9.412372, 27.974731>,  <17.188690, 9.221417, 28.009501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.047523, 9.412372, 27.974731>,  <16.812246, 9.730628, 27.916784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047523, 9.412372, 27.974731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358159, 0.095671, -0.928746,
		0.725088, 0.598166, 0.341239,
		0.588191, -0.795641, 0.144869,
		17.223980, 9.173679, 28.018192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526186, 9.935276, 27.743904>,  <16.812246, 9.730628, 27.916784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.526186, 9.935276, 27.743904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.538462, 9.535933, 27.724558>,  <17.545828, 9.296327, 27.712950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.538462, 9.535933, 27.724558>,  <17.526186, 9.935276, 27.743904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.538462, 9.535933, 27.724558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565010, 0.057244, -0.823096,
		0.824513, -0.002068, 0.565839,
		0.030689, -0.998358, -0.048367,
		17.547668, 9.236425, 27.710049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162067, 9.838333, 27.531904>,  <17.526186, 9.935276, 27.743904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162067, 9.838333, 27.531904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.995934, 9.483088, 27.453159>,  <17.896254, 9.269941, 27.405912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.995934, 9.483088, 27.453159>,  <18.162067, 9.838333, 27.531904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.995934, 9.483088, 27.453159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429495, -0.000682, -0.903069,
		0.801892, -0.459627, 0.381723,
		-0.415335, -0.888112, -0.196860,
		17.871332, 9.216655, 27.394102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740665, 9.275108, 27.269037>,  <18.162067, 9.838333, 27.531904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.740665, 9.275108, 27.269037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.381592, 9.160844, 27.134834>,  <18.166147, 9.092285, 27.054314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.381592, 9.160844, 27.134834>,  <18.740665, 9.275108, 27.269037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381592, 9.160844, 27.134834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361897, -0.043566, -0.931199,
		0.251391, -0.957339, 0.142489,
		-0.897682, -0.285662, -0.335506,
		18.112288, 9.075146, 27.034182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.820139, 8.724759, 26.787645>,  <18.740665, 9.275108, 27.269037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.820139, 8.724759, 26.787645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.452303, 8.865058, 26.716839>,  <18.231602, 8.949237, 26.674355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.452303, 8.865058, 26.716839>,  <18.820139, 8.724759, 26.787645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.452303, 8.865058, 26.716839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184594, -0.012009, -0.982741,
		-0.346819, -0.936393, -0.053702,
		-0.919588, 0.350747, -0.177018,
		18.176426, 8.970282, 26.663733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.503803, 8.378712, 26.189587>,  <18.820139, 8.724759, 26.787645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.503803, 8.378712, 26.189587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.284164, 8.712830, 26.200718>,  <18.152380, 8.913301, 26.207397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.284164, 8.712830, 26.200718>,  <18.503803, 8.378712, 26.189587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.284164, 8.712830, 26.200718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056388, -0.003804, -0.998402,
		-0.833853, -0.549790, 0.049189,
		-0.549098, 0.835294, 0.027830,
		18.119434, 8.963418, 26.209066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143679, 8.393679, 25.623251>,  <18.503803, 8.378712, 26.189587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143679, 8.393679, 25.623251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.105328, 8.773669, 25.742146>,  <18.082317, 9.001664, 25.813482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.105328, 8.773669, 25.742146>,  <18.143679, 8.393679, 25.623251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.105328, 8.773669, 25.742146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103840, 0.306529, -0.946180,
		-0.989962, -0.059852, -0.128035,
		-0.095878, 0.949978, 0.297237,
		18.076565, 9.058662, 25.831316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648943, 8.715712, 25.174448>,  <18.143679, 8.393679, 25.623251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648943, 8.715712, 25.174448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.860083, 9.025996, 25.312807>,  <17.986767, 9.212167, 25.395823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.860083, 9.025996, 25.312807>,  <17.648943, 8.715712, 25.174448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.860083, 9.025996, 25.312807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029801, 0.423923, -0.905208,
		-0.848814, 0.467507, 0.246885,
		0.527851, 0.775710, 0.345899,
		18.018438, 9.258709, 25.416576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323606, 9.224395, 24.818188>,  <17.648943, 8.715712, 25.174448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323606, 9.224395, 24.818188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.652180, 9.404782, 24.957829>,  <17.849323, 9.513015, 25.041613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.652180, 9.404782, 24.957829>,  <17.323606, 9.224395, 24.818188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.652180, 9.404782, 24.957829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164944, 0.398112, -0.902386,
		-0.545930, 0.798833, 0.252638,
		0.821434, 0.450968, 0.349104,
		17.898609, 9.540072, 25.062559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803087, 9.701482, 25.190399>,  <17.323606, 9.224395, 24.818188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803087, 9.701482, 25.190399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.410305, 9.777083, 25.192900>,  <16.174635, 9.822445, 25.194401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.410305, 9.777083, 25.192900>,  <16.803087, 9.701482, 25.190399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.410305, 9.777083, 25.192900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081708, -0.453860, 0.887319,
		0.170546, 0.870798, 0.461114,
		-0.981956, 0.189005, 0.006253,
		16.115719, 9.833785, 25.194775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784760, 9.812782, 25.829042>,  <16.803087, 9.701482, 25.190399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784760, 9.812782, 25.829042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.404598, 9.761707, 25.715601>,  <16.176502, 9.731062, 25.647537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.404598, 9.761707, 25.715601>,  <16.784760, 9.812782, 25.829042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.404598, 9.761707, 25.715601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201123, -0.443224, 0.873557,
		-0.237241, 0.887270, 0.395561,
		-0.950403, -0.127687, -0.283602,
		16.119478, 9.723401, 25.630520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350393, 9.963484, 26.404146>,  <16.784760, 9.812782, 25.829042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350393, 9.963484, 26.404146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.113634, 9.745774, 26.166349>,  <15.971579, 9.615149, 26.023672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.113634, 9.745774, 26.166349>,  <16.350393, 9.963484, 26.404146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.113634, 9.745774, 26.166349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429035, -0.411647, 0.804037,
		-0.682338, 0.730966, 0.010140,
		-0.591898, -0.544275, -0.594493,
		15.936065, 9.582492, 25.988001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698805, 9.931808, 26.709293>,  <16.350393, 9.963484, 26.404146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698805, 9.931808, 26.709293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.682692, 9.611732, 26.469936>,  <15.673024, 9.419685, 26.326323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.682692, 9.611732, 26.469936>,  <15.698805, 9.931808, 26.709293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682692, 9.611732, 26.469936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400375, -0.535770, 0.743405,
		-0.915465, 0.269527, -0.298795,
		-0.040282, -0.800191, -0.598390,
		15.670607, 9.371675, 26.290419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051250, 9.723263, 26.842976>,  <15.698805, 9.931808, 26.709293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051250, 9.723263, 26.842976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.238107, 9.402978, 26.692970>,  <15.350221, 9.210807, 26.602966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.238107, 9.402978, 26.692970>,  <15.051250, 9.723263, 26.842976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.238107, 9.402978, 26.692970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448413, -0.580093, 0.680013,
		-0.762040, -0.149500, -0.630036,
		0.467142, -0.800713, -0.375016,
		15.378249, 9.162764, 26.580465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527535, 9.345685, 26.721474>,  <15.051250, 9.723263, 26.842976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527535, 9.345685, 26.721474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.801041, 9.054438, 26.740704>,  <14.965144, 8.879689, 26.752241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.801041, 9.054438, 26.740704>,  <14.527535, 9.345685, 26.721474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801041, 9.054438, 26.740704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580164, -0.502496, 0.641021,
		-0.442580, -0.466199, -0.766016,
		0.683763, -0.728118, 0.048077,
		15.006169, 8.836002, 26.755127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.258183, 8.606847, 26.513283>,  <14.527535, 9.345685, 26.721474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.258183, 8.606847, 26.513283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.583290, 8.550896, 26.739502>,  <14.778354, 8.517324, 26.875233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.583290, 8.550896, 26.739502>,  <14.258183, 8.606847, 26.513283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.583290, 8.550896, 26.739502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508007, -0.645382, 0.570448,
		0.285201, -0.750943, -0.595605,
		0.812766, -0.139879, 0.565548,
		14.827120, 8.508932, 26.909166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.162980, 7.944382, 26.832010>,  <14.258183, 8.606847, 26.513283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.162980, 7.944382, 26.832010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454875, 8.108678, 27.050652>,  <14.630013, 8.207255, 27.181837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454875, 8.108678, 27.050652>,  <14.162980, 7.944382, 26.832010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454875, 8.108678, 27.050652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255211, -0.578035, 0.775076,
		0.634311, -0.705101, -0.316989,
		0.729738, 0.410740, 0.546604,
		14.673797, 8.231900, 27.214632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.642465, 7.366686, 26.922592>,  <14.162980, 7.944382, 26.832010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.642465, 7.366686, 26.922592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.633683, 7.655530, 27.199165>,  <14.628414, 7.828836, 27.365108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.633683, 7.655530, 27.199165>,  <14.642465, 7.366686, 26.922592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.633683, 7.655530, 27.199165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299147, -0.664656, 0.684648,
		0.953955, -0.191808, 0.230609,
		-0.021954, 0.722109, 0.691431,
		14.627097, 7.872163, 27.406595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.802991, 7.058284, 27.489588>,  <14.642465, 7.366686, 26.922592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.802991, 7.058284, 27.489588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.659492, 7.389162, 27.662584>,  <14.573392, 7.587689, 27.766382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.659492, 7.389162, 27.662584>,  <14.802991, 7.058284, 27.489588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659492, 7.389162, 27.662584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248376, -0.531223, 0.810007,
		0.899782, 0.183169, 0.396031,
		-0.358749, 0.827195, 0.432490,
		14.551867, 7.637321, 27.792332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126457, 7.175589, 28.257986>,  <14.802991, 7.058284, 27.489588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.126457, 7.175589, 28.257986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.794051, 7.397989, 28.251299>,  <14.594607, 7.531429, 28.247288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.794051, 7.397989, 28.251299>,  <15.126457, 7.175589, 28.257986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.794051, 7.397989, 28.251299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246972, -0.341872, 0.906713,
		0.498417, 0.757620, 0.421417,
		-0.831015, 0.555999, -0.016716,
		14.544746, 7.564789, 28.246284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074981, 7.477999, 28.946795>,  <15.126457, 7.175589, 28.257986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074981, 7.477999, 28.946795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.726099, 7.500891, 28.752481>,  <14.516770, 7.514627, 28.635893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.726099, 7.500891, 28.752481>,  <15.074981, 7.477999, 28.946795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.726099, 7.500891, 28.752481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486836, -0.197898, 0.850780,
		-0.047444, 0.978550, 0.200470,
		-0.872204, 0.057231, -0.485783,
		14.464437, 7.518061, 28.606747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.725988, 7.912603, 29.378405>,  <15.074981, 7.477999, 28.946795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.725988, 7.912603, 29.378405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454109, 7.717153, 29.159588>,  <14.290981, 7.599883, 29.028297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454109, 7.717153, 29.159588>,  <14.725988, 7.912603, 29.378405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454109, 7.717153, 29.159588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545642, -0.161590, 0.822291,
		-0.490189, 0.857400, -0.156783,
		-0.679698, -0.488626, -0.547043,
		14.250200, 7.570565, 28.995476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.066075, 8.270566, 29.467117>,  <14.725988, 7.912603, 29.378405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.066075, 8.270566, 29.467117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.020117, 7.884173, 29.374445>,  <13.992541, 7.652338, 29.318842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.020117, 7.884173, 29.374445>,  <14.066075, 8.270566, 29.467117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.020117, 7.884173, 29.374445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550173, -0.132311, 0.824502,
		-0.827108, 0.222198, -0.516256,
		-0.114896, -0.965982, -0.231683,
		13.985648, 7.594378, 29.304939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.267867, 8.503276, 29.557108>,  <14.066075, 8.270566, 29.467117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.267867, 8.503276, 29.557108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.028315, 8.653234, 29.840176>,  <12.884583, 8.743210, 30.010015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.028315, 8.653234, 29.840176>,  <13.267867, 8.503276, 29.557108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.028315, 8.653234, 29.840176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212044, 0.777890, -0.591545,
		-0.772255, -0.504322, -0.386370,
		-0.598882, 0.374896, 0.707667,
		12.848650, 8.765703, 30.052475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.687530, 8.698283, 29.216496>,  <13.267867, 8.503276, 29.557108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.687530, 8.698283, 29.216496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.727596, 8.935776, 29.535858>,  <12.751637, 9.078271, 29.727476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.727596, 8.935776, 29.535858>,  <12.687530, 8.698283, 29.216496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.727596, 8.935776, 29.535858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180396, 0.799979, -0.572268,
		-0.978480, -0.086707, 0.187237,
		0.100166, 0.593730, 0.798405,
		12.757646, 9.113894, 29.775379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.100717, 9.200550, 29.295605>,  <12.687530, 8.698283, 29.216496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.100717, 9.200550, 29.295605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.441921, 9.367665, 29.420713>,  <12.646644, 9.467935, 29.495779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.441921, 9.367665, 29.420713>,  <12.100717, 9.200550, 29.295605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.441921, 9.367665, 29.420713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118276, 0.738464, -0.663839,
		-0.508314, 0.529269, 0.679332,
		0.853011, 0.417787, 0.312771,
		12.697824, 9.493002, 29.514545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.019217, 9.881064, 29.453592>,  <12.100717, 9.200550, 29.295605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.019217, 9.881064, 29.453592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.407170, 9.854524, 29.359846>,  <12.639942, 9.838599, 29.303598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.407170, 9.854524, 29.359846>,  <12.019217, 9.881064, 29.453592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.407170, 9.854524, 29.359846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145103, 0.615430, -0.774720,
		0.195641, 0.785393, 0.587266,
		0.969881, -0.066353, -0.234366,
		12.698134, 9.834618, 29.289536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.281435, 10.566933, 29.263685>,  <12.019217, 9.881064, 29.453592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.281435, 10.566933, 29.263685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.580334, 10.327752, 29.147701>,  <12.759673, 10.184244, 29.078112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.580334, 10.327752, 29.147701>,  <12.281435, 10.566933, 29.263685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.580334, 10.327752, 29.147701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034875, 0.471011, -0.881438,
		0.663630, 0.648539, 0.372815,
		0.747247, -0.597951, -0.289959,
		12.804508, 10.148367, 29.060713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986484, 10.952099, 29.161659>,  <12.281435, 10.566933, 29.263685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986484, 10.952099, 29.161659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.959511, 10.633280, 28.921602>,  <12.943327, 10.441989, 28.777569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.959511, 10.633280, 28.921602>,  <12.986484, 10.952099, 29.161659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.959511, 10.633280, 28.921602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237662, 0.571364, -0.785531,
		0.969004, -0.195600, 0.150900,
		-0.067431, -0.797046, -0.600142,
		12.939281, 10.394166, 28.741560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.475477, 11.098871, 28.657543>,  <12.986484, 10.952099, 29.161659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.475477, 11.098871, 28.657543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.308827, 10.777300, 28.487780>,  <13.208838, 10.584357, 28.385921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.308827, 10.777300, 28.487780>,  <13.475477, 11.098871, 28.657543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.308827, 10.777300, 28.487780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294017, 0.322606, -0.899711,
		0.860220, -0.499625, 0.101962,
		-0.416624, -0.803928, -0.424410,
		13.183840, 10.536121, 28.360456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215656, 11.362391, 28.786686>,  <13.475477, 11.098871, 28.657543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215656, 11.362391, 28.786686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.200438, 11.753047, 28.871279>,  <14.191306, 11.987441, 28.922035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.200438, 11.753047, 28.871279>,  <14.215656, 11.362391, 28.786686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.200438, 11.753047, 28.871279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164699, -0.214871, 0.962655,
		0.985610, 0.001794, 0.169027,
		-0.038046, 0.976641, 0.211484,
		14.189024, 12.046040, 28.934725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733446, 11.468931, 29.176216>,  <14.215656, 11.362391, 28.786686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733446, 11.468931, 29.176216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.482882, 11.770397, 29.255812>,  <14.332542, 11.951277, 29.303570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.482882, 11.770397, 29.255812>,  <14.733446, 11.468931, 29.176216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482882, 11.770397, 29.255812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004265, -0.251965, 0.967727,
		0.779481, 0.607044, 0.154620,
		-0.626411, 0.753665, 0.198991,
		14.294958, 11.996497, 29.315510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.968431, 11.826748, 29.804335>,  <14.733446, 11.468931, 29.176216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.968431, 11.826748, 29.804335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.579716, 11.917398, 29.778210>,  <14.346486, 11.971789, 29.762535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.579716, 11.917398, 29.778210>,  <14.968431, 11.826748, 29.804335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579716, 11.917398, 29.778210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115357, -0.215193, 0.969734,
		0.205714, 0.949911, 0.235265,
		-0.971789, 0.226627, -0.065310,
		14.288179, 11.985387, 29.758617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884246, 12.049582, 30.406948>,  <14.968431, 11.826748, 29.804335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.884246, 12.049582, 30.406948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.507688, 11.977451, 30.292925>,  <14.281753, 11.934174, 30.224510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.507688, 11.977451, 30.292925>,  <14.884246, 12.049582, 30.406948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507688, 11.977451, 30.292925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269462, -0.106295, 0.957127,
		-0.202894, 0.977847, 0.051475,
		-0.941395, -0.180325, -0.285059,
		14.225269, 11.923354, 30.207407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.370443, 12.481840, 30.779795>,  <14.884246, 12.049582, 30.406948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.370443, 12.481840, 30.779795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.174912, 12.159406, 30.646366>,  <14.057593, 11.965945, 30.566309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.174912, 12.159406, 30.646366>,  <14.370443, 12.481840, 30.779795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174912, 12.159406, 30.646366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307320, -0.198743, 0.930621,
		-0.816457, 0.557427, -0.150576,
		-0.488828, -0.806087, -0.333574,
		14.028264, 11.917580, 30.546293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800749, 12.474287, 31.093456>,  <14.370443, 12.481840, 30.779795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.800749, 12.474287, 31.093456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.804487, 12.092696, 30.973564>,  <13.806730, 11.863742, 30.901628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.804487, 12.092696, 30.973564>,  <13.800749, 12.474287, 31.093456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804487, 12.092696, 30.973564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160401, -0.297294, 0.941217,
		-0.987008, 0.039280, -0.155797,
		0.009347, -0.953978, -0.299732,
		13.807291, 11.806503, 30.883644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.227164, 12.243395, 31.496868>,  <13.800749, 12.474287, 31.093456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.227164, 12.243395, 31.496868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.447705, 11.926364, 31.392691>,  <13.580029, 11.736145, 31.330183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.447705, 11.926364, 31.392691>,  <13.227164, 12.243395, 31.496868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447705, 11.926364, 31.392691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013591, -0.320674, 0.947092,
		-0.834162, -0.518641, -0.187576,
		0.551352, -0.792578, -0.260446,
		13.613111, 11.688591, 31.314556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.855586, 11.615473, 31.724472>,  <13.227164, 12.243395, 31.496868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.855586, 11.615473, 31.724472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.242025, 11.524157, 31.676247>,  <13.473889, 11.469367, 31.647312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.242025, 11.524157, 31.676247>,  <12.855586, 11.615473, 31.724472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.242025, 11.524157, 31.676247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010136, -0.433087, 0.901295,
		-0.257971, -0.871963, -0.416092,
		0.966099, -0.228290, -0.120562,
		13.531856, 11.455669, 31.640078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.990848, 10.997081, 32.053802>,  <12.855586, 11.615473, 31.724472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.990848, 10.997081, 32.053802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.371409, 11.109501, 32.003456>,  <13.599747, 11.176953, 31.973249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.371409, 11.109501, 32.003456>,  <12.990848, 10.997081, 32.053802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.371409, 11.109501, 32.003456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232790, -0.388825, 0.891417,
		0.201594, -0.877397, -0.435356,
		0.951403, 0.281051, -0.125865,
		13.656831, 11.193816, 31.965696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.788739, 18.168268, 16.821655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.095984, 18.125320, 17.074156>,  <16.280331, 18.099552, 17.225657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.095984, 18.125320, 17.074156>,  <15.788739, 18.168268, 16.821655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.095984, 18.125320, 17.074156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436642, -0.808905, 0.393723,
		0.468347, -0.578053, -0.668211,
		0.768112, -0.107370, 0.631250,
		16.326416, 18.093109, 17.263531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.945198, 17.441887, 16.949989>,  <15.788739, 18.168268, 16.821655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.945198, 17.441887, 16.949989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102966, 17.636219, 17.261990>,  <16.197628, 17.752819, 17.449190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102966, 17.636219, 17.261990>,  <15.945198, 17.441887, 16.949989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102966, 17.636219, 17.261990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377900, -0.687961, 0.619598,
		0.837630, -0.539144, -0.087750,
		0.394421, 0.485833, 0.779999,
		16.221292, 17.781969, 17.495989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.028660, 16.935905, 17.527128>,  <15.945198, 17.441887, 16.949989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.028660, 16.935905, 17.527128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058170, 17.271164, 17.743299>,  <16.075876, 17.472319, 17.873003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058170, 17.271164, 17.743299>,  <16.028660, 16.935905, 17.527128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058170, 17.271164, 17.743299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285191, -0.501544, 0.816774,
		0.955627, -0.214386, 0.202029,
		0.073778, 0.838148, 0.540430,
		16.080303, 17.522608, 17.905428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337427, 16.697605, 18.139025>,  <16.028660, 16.935905, 17.527128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.337427, 16.697605, 18.139025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.157146, 17.040468, 18.238743>,  <16.048979, 17.246185, 18.298573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.157146, 17.040468, 18.238743>,  <16.337427, 16.697605, 18.139025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157146, 17.040468, 18.238743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296561, -0.407178, 0.863862,
		0.841973, 0.315413, 0.437716,
		-0.450702, 0.857158, 0.249294,
		16.021936, 17.297615, 18.313532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637585, 16.863264, 18.718090>,  <16.337427, 16.697605, 18.139025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.637585, 16.863264, 18.718090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.295504, 17.069843, 18.700602>,  <16.090256, 17.193790, 18.690109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.295504, 17.069843, 18.700602>,  <16.637585, 16.863264, 18.718090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295504, 17.069843, 18.700602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245903, -0.330048, 0.911373,
		0.456246, 0.790159, 0.409253,
		-0.855203, 0.516447, -0.043719,
		16.038942, 17.224777, 18.687487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547834, 17.083670, 19.433916>,  <16.637585, 16.863264, 18.718090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547834, 17.083670, 19.433916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183367, 17.163851, 19.289923>,  <15.964686, 17.211960, 19.203527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183367, 17.163851, 19.289923>,  <16.547834, 17.083670, 19.433916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183367, 17.163851, 19.289923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406281, -0.582557, 0.703963,
		-0.068597, 0.787683, 0.612249,
		-0.911170, 0.200455, -0.359982,
		15.910016, 17.223988, 19.181929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207136, 17.336660, 19.930021>,  <16.547834, 17.083670, 19.433916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207136, 17.336660, 19.930021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922487, 17.188082, 19.691484>,  <15.751698, 17.098934, 19.548363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922487, 17.188082, 19.691484>,  <16.207136, 17.336660, 19.930021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922487, 17.188082, 19.691484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413546, -0.464719, 0.782953,
		-0.567954, 0.803782, 0.177096,
		-0.711623, -0.371444, -0.596340,
		15.709001, 17.076649, 19.512583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.642698, 17.459230, 20.316530>,  <16.207136, 17.336660, 19.930021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.642698, 17.459230, 20.316530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519595, 17.169378, 20.069889>,  <15.445733, 16.995468, 19.921904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519595, 17.169378, 20.069889>,  <15.642698, 17.459230, 20.316530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519595, 17.169378, 20.069889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579943, -0.370892, 0.725331,
		-0.754289, 0.580820, -0.306099,
		-0.307757, -0.724629, -0.616603,
		15.427268, 16.951990, 19.884909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.838318, 17.419628, 20.405680>,  <15.642698, 17.459230, 20.316530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.838318, 17.419628, 20.405680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000670, 17.079185, 20.272488>,  <15.098083, 16.874920, 20.192572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000670, 17.079185, 20.272488>,  <14.838318, 17.419628, 20.405680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.000670, 17.079185, 20.272488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473691, -0.507495, 0.719768,
		-0.781586, -0.134410, -0.609144,
		0.405882, -0.851107, -0.332982,
		15.122435, 16.823853, 20.172592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267640, 16.887354, 20.507774>,  <14.838318, 17.419628, 20.405680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267640, 16.887354, 20.507774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.602236, 16.672674, 20.463516>,  <14.802993, 16.543867, 20.436962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.602236, 16.672674, 20.463516>,  <14.267640, 16.887354, 20.507774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.602236, 16.672674, 20.463516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269272, -0.578427, 0.770010,
		-0.477261, -0.614312, -0.628365,
		0.836489, -0.536697, -0.110644,
		14.853183, 16.511665, 20.430323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065030, 16.277315, 20.471283>,  <14.267640, 16.887354, 20.507774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065030, 16.277315, 20.471283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.442873, 16.248039, 20.599258>,  <14.669579, 16.230474, 20.676044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.442873, 16.248039, 20.599258>,  <14.065030, 16.277315, 20.471283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.442873, 16.248039, 20.599258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320058, -0.421263, 0.848588,
		0.072672, -0.903981, -0.421352,
		0.944607, -0.073189, 0.319940,
		14.726255, 16.226082, 20.695240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.113639, 15.542731, 20.710142>,  <14.065030, 16.277315, 20.471283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.113639, 15.542731, 20.710142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407141, 15.746049, 20.890471>,  <14.583242, 15.868040, 20.998667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407141, 15.746049, 20.890471>,  <14.113639, 15.542731, 20.710142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.407141, 15.746049, 20.890471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047285, -0.623729, 0.780209,
		0.677767, -0.593799, -0.433630,
		0.733755, 0.508295, 0.450821,
		14.627268, 15.898538, 21.025717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.981259, 14.957717, 20.572836>,  <14.113639, 15.542731, 20.710142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.981259, 14.957717, 20.572836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.646941, 14.773878, 20.692982>,  <13.446350, 14.663575, 20.765070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.646941, 14.773878, 20.692982>,  <13.981259, 14.957717, 20.572836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.646941, 14.773878, 20.692982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436355, 0.224007, -0.871444,
		0.333228, -0.859414, -0.387771,
		-0.835795, -0.459595, 0.300364,
		13.396203, 14.636000, 20.783091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.952908, 14.419967, 20.062422>,  <13.981259, 14.957717, 20.572836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.952908, 14.419967, 20.062422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.605789, 14.521230, 20.233461>,  <13.397518, 14.581987, 20.336084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.605789, 14.521230, 20.233461>,  <13.952908, 14.419967, 20.062422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.605789, 14.521230, 20.233461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410738, 0.118893, -0.903969,
		-0.279687, -0.960091, 0.000807,
		-0.867796, 0.253160, 0.427598,
		13.345450, 14.597178, 20.361740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.373134, 14.115192, 19.632858>,  <13.952908, 14.419967, 20.062422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.373134, 14.115192, 19.632858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.175944, 14.385592, 19.851948>,  <13.057631, 14.547832, 19.983402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.175944, 14.385592, 19.851948>,  <13.373134, 14.115192, 19.632858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.175944, 14.385592, 19.851948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469517, 0.323304, -0.821601,
		-0.732484, -0.662193, 0.158013,
		-0.492972, 0.675999, 0.547726,
		13.028052, 14.588392, 20.016266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.625793, 14.049595, 19.550371>,  <13.373134, 14.115192, 19.632858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.625793, 14.049595, 19.550371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.668868, 14.419296, 19.696880>,  <12.694713, 14.641117, 19.784786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.668868, 14.419296, 19.696880>,  <12.625793, 14.049595, 19.550371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.668868, 14.419296, 19.696880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529854, 0.365090, -0.765483,
		-0.841224, -0.111639, 0.529035,
		0.107687, 0.924254, 0.366275,
		12.701174, 14.696572, 19.806763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.950818, 14.370893, 19.800072>,  <12.625793, 14.049595, 19.550371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.950818, 14.370893, 19.800072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214511, 14.654855, 19.700918>,  <12.372726, 14.825232, 19.641426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214511, 14.654855, 19.700918>,  <11.950818, 14.370893, 19.800072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214511, 14.654855, 19.700918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634011, 0.347530, -0.690835,
		-0.404280, 0.612583, 0.679191,
		0.659233, 0.709905, -0.247885,
		12.412281, 14.867826, 19.626553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.629310, 14.914204, 19.751556>,  <11.950818, 14.370893, 19.800072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.629310, 14.914204, 19.751556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.962361, 15.003789, 19.548946>,  <12.162192, 15.057540, 19.427380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.962361, 15.003789, 19.548946>,  <11.629310, 14.914204, 19.751556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.962361, 15.003789, 19.548946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552818, 0.391361, -0.735682,
		0.033469, 0.892568, 0.449669,
		0.832629, 0.223963, -0.506526,
		12.212151, 15.070978, 19.396988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.456695, 15.517168, 19.346140>,  <11.629310, 14.914204, 19.751556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.456695, 15.517168, 19.346140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.803336, 15.411287, 19.176939>,  <12.011321, 15.347759, 19.075418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.803336, 15.411287, 19.176939>,  <11.456695, 15.517168, 19.346140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.803336, 15.411287, 19.176939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403913, 0.125659, -0.906126,
		0.293007, 0.956108, 0.001980,
		0.866603, -0.264702, -0.423004,
		12.063317, 15.331877, 19.050037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.452005, 15.714682, 18.714119>,  <11.456695, 15.517168, 19.346140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.452005, 15.714682, 18.714119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.739487, 15.438756, 18.679197>,  <11.911976, 15.273201, 18.658245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.739487, 15.438756, 18.679197>,  <11.452005, 15.714682, 18.714119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.739487, 15.438756, 18.679197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264943, -0.155600, -0.951627,
		0.642860, 0.707069, -0.294591,
		0.718705, -0.689813, -0.087304,
		11.955098, 15.231812, 18.653006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600334, 15.850195, 18.086821>,  <11.452005, 15.714682, 18.714119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600334, 15.850195, 18.086821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.741879, 15.482675, 18.156773>,  <11.826807, 15.262162, 18.198744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.741879, 15.482675, 18.156773>,  <11.600334, 15.850195, 18.086821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.741879, 15.482675, 18.156773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017985, -0.180261, -0.983454,
		0.935124, 0.351155, -0.047263,
		0.353864, -0.918802, 0.174882,
		11.848039, 15.207034, 18.209238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.221734, 15.825783, 17.680321>,  <11.600334, 15.850195, 18.086821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.221734, 15.825783, 17.680321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.070153, 15.460481, 17.740135>,  <11.979204, 15.241300, 17.776024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.070153, 15.460481, 17.740135>,  <12.221734, 15.825783, 17.680321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.070153, 15.460481, 17.740135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058050, -0.137810, -0.988756,
		0.923594, -0.383372, -0.000791,
		-0.378952, -0.913255, 0.149536,
		11.956468, 15.186504, 17.784996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.482601, 15.459641, 17.185555>,  <12.221734, 15.825783, 17.680321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.482601, 15.459641, 17.185555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.173294, 15.227992, 17.288841>,  <11.987710, 15.089004, 17.350813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.173294, 15.227992, 17.288841>,  <12.482601, 15.459641, 17.185555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.173294, 15.227992, 17.288841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312102, -0.006862, -0.950024,
		0.551950, -0.815213, -0.175438,
		-0.773268, -0.579120, 0.258217,
		11.941314, 15.054256, 17.366306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.495320, 14.832964, 16.739092>,  <12.482601, 15.459641, 17.185555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.495320, 14.832964, 16.739092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112912, 14.868609, 16.850864>,  <11.883468, 14.889997, 16.917929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112912, 14.868609, 16.850864>,  <12.495320, 14.832964, 16.739092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.112912, 14.868609, 16.850864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276557, 0.043392, -0.960017,
		-0.097678, -0.995076, -0.016838,
		-0.956021, 0.089116, 0.279434,
		11.826106, 14.895344, 16.934694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.216442, 14.373376, 16.282204>,  <12.495320, 14.832964, 16.739092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.216442, 14.373376, 16.282204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.936414, 14.633124, 16.401011>,  <11.768397, 14.788973, 16.472296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.936414, 14.633124, 16.401011>,  <12.216442, 14.373376, 16.282204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.936414, 14.633124, 16.401011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264164, 0.150924, -0.952596,
		-0.663416, -0.745345, 0.065883,
		-0.700069, 0.649371, 0.297019,
		11.726393, 14.827935, 16.490116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.814170, 13.825590, 16.250528>,  <12.216442, 14.373376, 16.282204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.814170, 13.825590, 16.250528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943452, 14.117537, 16.491470>,  <13.021021, 14.292706, 16.636036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943452, 14.117537, 16.491470>,  <12.814170, 13.825590, 16.250528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943452, 14.117537, 16.491470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229096, -0.557235, 0.798125,
		0.918180, -0.395955, -0.012891,
		0.323205, 0.729869, 0.602354,
		13.040413, 14.336498, 16.672176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.291607, 13.607938, 16.923155>,  <12.814170, 13.825590, 16.250528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.291607, 13.607938, 16.923155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.062927, 13.934274, 16.957947>,  <12.925719, 14.130075, 16.978823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.062927, 13.934274, 16.957947>,  <13.291607, 13.607938, 16.923155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.062927, 13.934274, 16.957947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393284, -0.365537, 0.843629,
		0.720060, 0.448094, 0.529834,
		-0.571699, 0.815840, 0.086980,
		12.891418, 14.179026, 16.984041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.193700, 13.269444, 17.506699>,  <13.291607, 13.607938, 16.923155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.193700, 13.269444, 17.506699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847822, 13.313163, 17.702805>,  <12.640296, 13.339395, 17.820469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847822, 13.313163, 17.702805>,  <13.193700, 13.269444, 17.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847822, 13.313163, 17.702805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341917, 0.586931, -0.733897,
		-0.367965, -0.802226, -0.470145,
		-0.864693, 0.109298, 0.490265,
		12.588414, 13.345952, 17.849884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.677124, 13.197735, 17.035784>,  <13.193700, 13.269444, 17.506699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.677124, 13.197735, 17.035784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.580327, 13.442691, 17.336826>,  <12.522249, 13.589664, 17.517452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.580327, 13.442691, 17.336826>,  <12.677124, 13.197735, 17.035784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.580327, 13.442691, 17.336826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189945, 0.730754, -0.655683,
		-0.951505, -0.301624, -0.060516,
		-0.241992, 0.612391, 0.752607,
		12.507730, 13.626408, 17.562609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.422198, 12.599601, 16.758459>,  <12.677124, 13.197735, 17.035784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.422198, 12.599601, 16.758459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781677, 12.534850, 16.595419>,  <12.997365, 12.496000, 16.497595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781677, 12.534850, 16.595419>,  <12.422198, 12.599601, 16.758459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781677, 12.534850, 16.595419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343140, -0.319257, 0.883363,
		-0.273121, -0.933741, -0.231371,
		0.898699, -0.161873, -0.407599,
		13.051287, 12.486287, 16.473139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.723838, 12.124305, 17.147047>,  <12.422198, 12.599601, 16.758459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.723838, 12.124305, 17.147047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034856, 12.271584, 16.943142>,  <13.221466, 12.359951, 16.820799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034856, 12.271584, 16.943142>,  <12.723838, 12.124305, 17.147047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034856, 12.271584, 16.943142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583059, -0.118525, 0.803737,
		0.235516, -0.922161, -0.306840,
		0.777544, 0.368198, -0.509760,
		13.268119, 12.382043, 16.790215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.223604, 11.612380, 17.216354>,  <12.723838, 12.124305, 17.147047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.223604, 11.612380, 17.216354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414339, 11.953506, 17.131189>,  <13.528780, 12.158182, 17.080091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414339, 11.953506, 17.131189>,  <13.223604, 11.612380, 17.216354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414339, 11.953506, 17.131189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726330, -0.245868, 0.641868,
		0.495047, -0.460710, -0.736665,
		0.476837, 0.852816, -0.212911,
		13.557390, 12.209352, 17.067316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851561, 11.410970, 17.001986>,  <13.223604, 11.612380, 17.216354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851561, 11.410970, 17.001986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873111, 11.784338, 17.143871>,  <13.886041, 12.008359, 17.229002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873111, 11.784338, 17.143871>,  <13.851561, 11.410970, 17.001986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.873111, 11.784338, 17.143871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538430, -0.326319, 0.776922,
		0.840946, 0.149131, -0.520163,
		0.053876, 0.933421, 0.354714,
		13.889274, 12.064364, 17.250286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537992, 11.482631, 17.257166>,  <13.851561, 11.410970, 17.001986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537992, 11.482631, 17.257166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.352262, 11.781240, 17.447788>,  <14.240824, 11.960406, 17.562160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.352262, 11.781240, 17.447788>,  <14.537992, 11.482631, 17.257166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352262, 11.781240, 17.447788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482336, -0.238135, 0.842997,
		0.742802, 0.621283, -0.249504,
		-0.464325, 0.746524, 0.476554,
		14.212964, 12.005198, 17.590754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.083353, 11.874977, 17.608700>,  <14.537992, 11.482631, 17.257166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.083353, 11.874977, 17.608700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.745066, 11.989560, 17.788790>,  <14.542093, 12.058310, 17.896845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.745066, 11.989560, 17.788790>,  <15.083353, 11.874977, 17.608700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.745066, 11.989560, 17.788790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426366, -0.144626, 0.892914,
		0.320896, 0.947114, 0.000177,
		-0.845717, 0.286457, 0.450227,
		14.491350, 12.075498, 17.923859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303364, 12.347783, 18.124208>,  <15.083353, 11.874977, 17.608700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303364, 12.347783, 18.124208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.941032, 12.224630, 18.240612>,  <14.723634, 12.150739, 18.310453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.941032, 12.224630, 18.240612>,  <15.303364, 12.347783, 18.124208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941032, 12.224630, 18.240612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360100, -0.197705, 0.911724,
		-0.223169, 0.930657, 0.289955,
		-0.905827, -0.307882, 0.291008,
		14.669284, 12.132266, 18.327915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360690, 12.671784, 18.698259>,  <15.303364, 12.347783, 18.124208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360690, 12.671784, 18.698259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059752, 12.409557, 18.724199>,  <14.879189, 12.252221, 18.739763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059752, 12.409557, 18.724199>,  <15.360690, 12.671784, 18.698259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059752, 12.409557, 18.724199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275219, -0.223352, 0.935077,
		-0.598521, 0.721350, 0.348463,
		-0.752348, -0.655567, 0.064849,
		14.834047, 12.212888, 18.743654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115864, 12.729477, 19.345440>,  <15.360690, 12.671784, 18.698259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.115864, 12.729477, 19.345440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.035651, 12.361233, 19.211416>,  <14.987524, 12.140286, 19.131002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.035651, 12.361233, 19.211416>,  <15.115864, 12.729477, 19.345440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.035651, 12.361233, 19.211416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449169, -0.390337, 0.803669,
		-0.870652, 0.010663, 0.491784,
		-0.200531, -0.920610, -0.335059,
		14.975492, 12.085050, 19.110899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.714644, 12.444945, 19.838024>,  <15.115864, 12.729477, 19.345440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.714644, 12.444945, 19.838024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.856640, 12.128440, 19.638872>,  <14.941837, 11.938537, 19.519381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.856640, 12.128440, 19.638872>,  <14.714644, 12.444945, 19.838024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.856640, 12.128440, 19.638872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106297, -0.494950, 0.862396,
		-0.928808, -0.359064, -0.091592,
		0.354989, -0.791264, -0.497881,
		14.963137, 11.891061, 19.489508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.273767, 11.908614, 20.054291>,  <14.714644, 12.444945, 19.838024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.273767, 11.908614, 20.054291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.615081, 11.751545, 19.917051>,  <14.819869, 11.657304, 19.834707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.615081, 11.751545, 19.917051>,  <14.273767, 11.908614, 20.054291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.615081, 11.751545, 19.917051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059776, -0.579975, 0.812438,
		-0.518009, -0.713749, -0.471411,
		0.853284, -0.392672, -0.343097,
		14.871066, 11.633743, 19.814121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.241976, 11.169042, 20.242706>,  <14.273767, 11.908614, 20.054291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.241976, 11.169042, 20.242706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.634583, 11.193871, 20.170294>,  <14.870147, 11.208768, 20.126846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.634583, 11.193871, 20.170294>,  <14.241976, 11.169042, 20.242706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.634583, 11.193871, 20.170294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186469, -0.523023, 0.831671,
		-0.043058, -0.850055, -0.524930,
		0.981517, 0.062073, -0.181029,
		14.929037, 11.212493, 20.115986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679735, 10.408057, 20.173708>,  <14.241976, 11.169042, 20.242706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679735, 10.408057, 20.173708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.932407, 10.705671, 20.260788>,  <15.084010, 10.884240, 20.313036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.932407, 10.705671, 20.260788>,  <14.679735, 10.408057, 20.173708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.932407, 10.705671, 20.260788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225459, -0.444998, 0.866686,
		0.741720, -0.498386, -0.448845,
		0.631680, 0.744035, 0.217698,
		15.121911, 10.928882, 20.326097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247692, 10.122322, 20.611866>,  <14.679735, 10.408057, 20.173708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.247692, 10.122322, 20.611866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289984, 10.512990, 20.686632>,  <15.315359, 10.747391, 20.731493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289984, 10.512990, 20.686632>,  <15.247692, 10.122322, 20.611866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289984, 10.512990, 20.686632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154099, -0.201793, 0.967230,
		0.982382, -0.073461, -0.171839,
		0.105729, 0.976670, 0.186917,
		15.321703, 10.805991, 20.742708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853028, 10.115696, 21.038363>,  <15.247692, 10.122322, 20.611866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853028, 10.115696, 21.038363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.659084, 10.461859, 21.088926>,  <15.542718, 10.669557, 21.119265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.659084, 10.461859, 21.088926>,  <15.853028, 10.115696, 21.038363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659084, 10.461859, 21.088926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213770, -0.022884, 0.976616,
		0.848064, 0.500545, -0.173903,
		-0.484860, 0.865408, 0.126408,
		15.513626, 10.721481, 21.126848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384277, 10.597718, 21.163881>,  <15.853028, 10.115696, 21.038363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.384277, 10.597718, 21.163881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021008, 10.708677, 21.289274>,  <15.803046, 10.775252, 21.364510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021008, 10.708677, 21.289274>,  <16.384277, 10.597718, 21.163881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021008, 10.708677, 21.289274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315659, -0.038003, 0.948111,
		0.274917, 0.960003, -0.053050,
		-0.908174, 0.277397, 0.313481,
		15.748555, 10.791897, 21.383318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489582, 10.875797, 21.786793>,  <16.384277, 10.597718, 21.163881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489582, 10.875797, 21.786793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.092846, 10.832899, 21.814373>,  <15.854805, 10.807160, 21.830921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.092846, 10.832899, 21.814373>,  <16.489582, 10.875797, 21.786793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092846, 10.832899, 21.814373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076566, -0.068567, 0.994704,
		-0.101949, 0.991865, 0.076218,
		-0.991839, -0.107245, 0.068952,
		15.795294, 10.800726, 21.835058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301947, 11.467352, 22.189604>,  <16.489582, 10.875797, 21.786793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301947, 11.467352, 22.189604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.014984, 11.189494, 22.210751>,  <15.842806, 11.022779, 22.223438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.014984, 11.189494, 22.210751>,  <16.301947, 11.467352, 22.189604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.014984, 11.189494, 22.210751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115305, -0.043559, 0.992375,
		-0.687044, 0.718034, 0.111346,
		-0.717409, -0.694644, 0.052866,
		15.799762, 10.981101, 22.226610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961549, 11.663521, 22.768543>,  <16.301947, 11.467352, 22.189604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961549, 11.663521, 22.768543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.834653, 11.287196, 22.720823>,  <15.758515, 11.061401, 22.692192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.834653, 11.287196, 22.720823>,  <15.961549, 11.663521, 22.768543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834653, 11.287196, 22.720823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045036, -0.140602, 0.989041,
		-0.947275, 0.308391, 0.086975,
		-0.317240, -0.940811, -0.119300,
		15.739481, 11.004952, 22.685034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.531693, 11.604473, 23.318836>,  <15.961549, 11.663521, 22.768543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.531693, 11.604473, 23.318836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588008, 11.233301, 23.180777>,  <15.621798, 11.010598, 23.097940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588008, 11.233301, 23.180777>,  <15.531693, 11.604473, 23.318836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588008, 11.233301, 23.180777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168713, -0.321034, 0.931919,
		-0.975559, -0.189435, 0.111355,
		0.140789, -0.927929, -0.345147,
		15.630244, 10.954923, 23.077232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068065, 11.140932, 23.648615>,  <15.531693, 11.604473, 23.318836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.068065, 11.140932, 23.648615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.371282, 10.902295, 23.543203>,  <15.553212, 10.759112, 23.479958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.371282, 10.902295, 23.543203>,  <15.068065, 11.140932, 23.648615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371282, 10.902295, 23.543203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072992, -0.479122, 0.874708,
		-0.648108, -0.643830, -0.406742,
		0.758042, -0.596594, -0.263528,
		15.598695, 10.723317, 23.464146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774064, 10.568666, 23.673517>,  <15.068065, 11.140932, 23.648615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774064, 10.568666, 23.673517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.163926, 10.481050, 23.691710>,  <15.397843, 10.428479, 23.702625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.163926, 10.481050, 23.691710>,  <14.774064, 10.568666, 23.673517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.163926, 10.481050, 23.691710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153285, -0.505783, 0.848933,
		-0.162947, -0.834388, -0.526540,
		0.974655, -0.219042, 0.045483,
		15.456323, 10.415337, 23.705355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809877, 9.785534, 23.885342>,  <14.774064, 10.568666, 23.673517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809877, 9.785534, 23.885342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.150826, 9.981997, 23.957146>,  <15.355396, 10.099875, 24.000229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.150826, 9.981997, 23.957146>,  <14.809877, 9.785534, 23.885342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.150826, 9.981997, 23.957146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087450, -0.472320, 0.877078,
		0.515571, -0.731899, -0.445545,
		0.852372, 0.491159, 0.179510,
		15.406538, 10.129345, 24.010998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232853, 9.354873, 24.085550>,  <14.809877, 9.785534, 23.885342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.232853, 9.354873, 24.085550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440686, 9.663990, 24.231329>,  <15.565387, 9.849461, 24.318796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440686, 9.663990, 24.231329>,  <15.232853, 9.354873, 24.085550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440686, 9.663990, 24.231329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077037, -0.467180, 0.880800,
		0.850939, -0.429573, -0.302273,
		0.519584, 0.772793, 0.364449,
		15.596561, 9.895828, 24.340664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.861504, 9.048306, 24.368919>,  <15.232853, 9.354873, 24.085550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.861504, 9.048306, 24.368919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787408, 9.407261, 24.529112>,  <15.742950, 9.622634, 24.625227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787408, 9.407261, 24.529112>,  <15.861504, 9.048306, 24.368919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.787408, 9.407261, 24.529112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098076, -0.422381, 0.901097,
		0.977787, 0.127642, 0.166254,
		-0.185240, 0.897386, 0.400480,
		15.731835, 9.676476, 24.649256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
