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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.613373, 2.780553, 4.187315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.819618, 2.445993, 4.261696>,  <2.943366, 2.245257, 4.306324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.819618, 2.445993, 4.261696>,  <2.613373, 2.780553, 4.187315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.819618, 2.445993, 4.261696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148757, -0.301114, -0.941914,
		0.843809, 0.458002, -0.279679,
		0.515613, -0.836400, 0.185951,
		2.974302, 2.195073, 4.317482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.207418, 2.571806, 3.815502>,  <2.613373, 2.780553, 4.187315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.207418, 2.571806, 3.815502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.016327, 2.240458, 3.932516>,  <2.901672, 2.041648, 4.002725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.016327, 2.240458, 3.932516>,  <3.207418, 2.571806, 3.815502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.016327, 2.240458, 3.932516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329830, -0.139507, -0.933676,
		0.814241, -0.542530, -0.206575,
		-0.477728, -0.828371, 0.292535,
		2.873008, 1.991946, 4.020277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.486973, 2.133040, 3.368173>,  <3.207418, 2.571806, 3.815502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.486973, 2.133040, 3.368173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.118916, 2.064375, 3.508953>,  <2.898081, 2.023176, 3.593421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.118916, 2.064375, 3.508953>,  <3.486973, 2.133040, 3.368173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.118916, 2.064375, 3.508953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357401, 0.000913, -0.933951,
		0.160006, -0.985155, -0.062193,
		-0.920143, -0.171666, 0.351949,
		2.842873, 2.012876, 3.614538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.204543, 1.772555, 2.815385>,  <3.486973, 2.133040, 3.368173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.204543, 1.772555, 2.815385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.909847, 1.926113, 3.038038>,  <2.733030, 2.018248, 3.171630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.909847, 1.926113, 3.038038>,  <3.204543, 1.772555, 2.815385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.909847, 1.926113, 3.038038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550713, 0.136983, -0.823378,
		-0.392341, -0.913159, 0.110495,
		-0.736739, 0.383896, 0.556633,
		2.688826, 2.041282, 3.205028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.657672, 1.400393, 2.608488>,  <3.204543, 1.772555, 2.815385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.657672, 1.400393, 2.608488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.514145, 1.743982, 2.754591>,  <2.428028, 1.950136, 2.842253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.514145, 1.743982, 2.754591>,  <2.657672, 1.400393, 2.608488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.514145, 1.743982, 2.754591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680895, 0.026789, -0.731891,
		-0.638460, -0.511318, 0.575258,
		-0.358819, 0.858974, 0.365258,
		2.406499, 2.001674, 2.864168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.940827, 1.325017, 2.516201>,  <2.657672, 1.400393, 2.608488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.940827, 1.325017, 2.516201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.993839, 1.720289, 2.547012>,  <2.025647, 1.957453, 2.565499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.993839, 1.720289, 2.547012>,  <1.940827, 1.325017, 2.516201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.993839, 1.720289, 2.547012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722322, 0.149507, -0.675203,
		-0.678739, 0.033847, 0.733599,
		0.132531, 0.988181, 0.077028,
		2.033599, 2.016744, 2.570121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.334429, 1.611873, 2.577831>,  <1.940827, 1.325017, 2.516201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.334429, 1.611873, 2.577831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.535614, 1.929213, 2.440645>,  <1.656325, 2.119616, 2.358334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.535614, 1.929213, 2.440645>,  <1.334429, 1.611873, 2.577831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.535614, 1.929213, 2.440645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724826, 0.171018, -0.667368,
		-0.470803, 0.584252, 0.661056,
		0.502963, 0.793349, -0.342965,
		1.686503, 2.167217, 2.337756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.856260, 2.155421, 2.432809>,  <1.334429, 1.611873, 2.577831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.856260, 2.155421, 2.432809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.189117, 2.249779, 2.232054>,  <1.388832, 2.306393, 2.111601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.189117, 2.249779, 2.232054>,  <0.856260, 2.155421, 2.432809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.189117, 2.249779, 2.232054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547643, 0.207062, -0.810686,
		-0.087314, 0.949463, 0.301491,
		0.832143, 0.235894, -0.501888,
		1.438761, 2.320547, 2.081487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.918613, 2.088468, 0.837862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.158218, 2.408718, 0.843258>,  <1.301982, 2.600868, 0.846495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.158218, 2.408718, 0.843258>,  <0.918613, 2.088468, 0.837862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.158218, 2.408718, 0.843258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538798, -0.415467, 0.732860,
		0.592351, -0.431725, -0.680246,
		0.599014, 0.800625, 0.013490,
		1.337922, 2.648906, 0.847305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.682297, 1.880020, 0.846321>,  <0.918613, 2.088468, 0.837862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.682297, 1.880020, 0.846321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.596466, 2.225323, 1.029076>,  <1.544968, 2.432504, 1.138728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.596466, 2.225323, 1.029076>,  <1.682297, 1.880020, 0.846321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.596466, 2.225323, 1.029076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324329, -0.378262, 0.867023,
		0.921286, 0.334225, -0.198812,
		-0.214577, 0.863256, 0.456887,
		1.532093, 2.484300, 1.166142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.257683, 2.076939, 1.274776>,  <1.682297, 1.880020, 0.846321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.257683, 2.076939, 1.274776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.932594, 2.268276, 1.407845>,  <1.737541, 2.383079, 1.487686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.932594, 2.268276, 1.407845>,  <2.257683, 2.076939, 1.274776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.932594, 2.268276, 1.407845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372562, -0.012344, 0.927925,
		0.447974, 0.878086, -0.168180,
		-0.812722, 0.478343, 0.332671,
		1.688778, 2.411779, 1.507646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.573875, 2.730355, 1.486278>,  <2.257683, 2.076939, 1.274776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.573875, 2.730355, 1.486278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.222015, 2.635822, 1.651379>,  <2.010900, 2.579103, 1.750439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.222015, 2.635822, 1.651379>,  <2.573875, 2.730355, 1.486278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.222015, 2.635822, 1.651379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418587, 0.027382, 0.907764,
		-0.225836, 0.971287, 0.074838,
		-0.879650, -0.236332, 0.412751,
		1.958120, 2.564923, 1.775204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.599446, 3.096961, 2.044033>,  <2.573875, 2.730355, 1.486278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.599446, 3.096961, 2.044033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.305199, 2.836330, 2.118126>,  <2.128650, 2.679952, 2.162582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.305199, 2.836330, 2.118126>,  <2.599446, 3.096961, 2.044033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.305199, 2.836330, 2.118126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319406, -0.092497, 0.943093,
		-0.597365, 0.752921, 0.276160,
		-0.735619, -0.651578, 0.185233,
		2.084513, 2.640857, 2.173696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.135618, 3.293289, 2.731336>,  <2.599446, 3.096961, 2.044033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.135618, 3.293289, 2.731336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.103943, 2.898746, 2.673607>,  <2.084938, 2.662021, 2.638969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.103943, 2.898746, 2.673607>,  <2.135618, 3.293289, 2.731336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.103943, 2.898746, 2.673607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330040, -0.162555, 0.929865,
		-0.940639, 0.026001, 0.338410,
		-0.079188, -0.986357, -0.144324,
		2.080187, 2.602839, 2.630310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.840211, 3.085246, 3.355494>,  <2.135618, 3.293289, 2.731336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.840211, 3.085246, 3.355494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.000763, 2.747585, 3.213337>,  <2.097094, 2.544989, 3.128043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.000763, 2.747585, 3.213337>,  <1.840211, 3.085246, 3.355494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.000763, 2.747585, 3.213337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461021, -0.149078, 0.874777,
		-0.791426, -0.514960, 0.329334,
		0.401379, -0.844151, -0.355392,
		2.121177, 2.494340, 3.106719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.630154, 2.570904, 3.775398>,  <1.840211, 3.085246, 3.355494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.630154, 2.570904, 3.775398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.968803, 2.464169, 3.591213>,  <2.171993, 2.400127, 3.480702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.968803, 2.464169, 3.591213>,  <1.630154, 2.570904, 3.775398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.968803, 2.464169, 3.591213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438765, -0.139687, 0.887678,
		-0.301188, -0.953564, -0.001182,
		0.846623, -0.266840, -0.460463,
		2.222790, 2.384117, 3.453074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
