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
	<3.042609, 0.883043, -0.183770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.944679, 1.180206, 0.065435>,  <2.885921, 1.358504, 0.214959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.944679, 1.180206, 0.065435>,  <3.042609, 0.883043, -0.183770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.944679, 1.180206, 0.065435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667200, -0.595323, 0.447699,
		0.703494, -0.306067, 0.641419,
		-0.244825, 0.742909, 0.623014,
		2.871232, 1.403079, 0.252340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.980861, 0.557840, 0.364576>,  <3.042609, 0.883043, -0.183770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.980861, 0.557840, 0.364576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.768990, 0.891985, 0.423378>,  <2.641867, 1.092472, 0.458659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.768990, 0.891985, 0.423378>,  <2.980861, 0.557840, 0.364576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.768990, 0.891985, 0.423378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775606, -0.547171, 0.314705,
		0.343330, 0.052675, 0.937737,
		-0.529679, 0.835362, 0.147005,
		2.610086, 1.142594, 0.467480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.712251, 0.409856, 1.119195>,  <2.980861, 0.557840, 0.364576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.712251, 0.409856, 1.119195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.507118, 0.640741, 0.865005>,  <2.384039, 0.779273, 0.712492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.507118, 0.640741, 0.865005>,  <2.712251, 0.409856, 1.119195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.507118, 0.640741, 0.865005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847669, -0.457615, 0.268414,
		-0.135871, 0.676323, 0.723966,
		-0.512832, 0.577214, -0.635474,
		2.353269, 0.813905, 0.674363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.388429, 0.654815, 1.750537>,  <2.712251, 0.409856, 1.119195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.388429, 0.654815, 1.750537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.163048, 0.490858, 2.037455>,  <2.027819, 0.392484, 2.209605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.163048, 0.490858, 2.037455>,  <2.388429, 0.654815, 1.750537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.163048, 0.490858, 2.037455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010559, -0.871740, -0.489855,
		0.826081, -0.268436, 0.495513,
		-0.563453, -0.409892, 0.717293,
		1.994012, 0.367891, 2.252643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.646230, -0.003049, 1.786497>,  <2.388429, 0.654815, 1.750537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.646230, -0.003049, 1.786497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.303864, -0.047384, 1.988535>,  <2.098444, -0.073985, 2.109758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.303864, -0.047384, 1.988535>,  <2.646230, -0.003049, 1.786497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.303864, -0.047384, 1.988535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151607, -0.880052, -0.450026,
		0.494391, -0.461761, 0.736447,
		-0.855916, -0.110838, 0.505096,
		2.047089, -0.080636, 2.140064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.589999, -0.686372, 2.041289>,  <2.646230, -0.003049, 1.786497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.589999, -0.686372, 2.041289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213783, -0.556313, 2.001966>,  <1.988054, -0.478277, 1.978373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213783, -0.556313, 2.001966>,  <2.589999, -0.686372, 2.041289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.213783, -0.556313, 2.001966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257476, -0.871177, -0.418039,
		-0.221566, -0.367871, 0.903094,
		-0.940539, 0.325148, -0.098305,
		1.931621, -0.458768, 1.972475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.214289, -1.208675, 2.266569>,  <2.589999, -0.686372, 2.041289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.214289, -1.208675, 2.266569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.972351, -0.996788, 2.028725>,  <1.827188, -0.869656, 1.886018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.972351, -0.996788, 2.028725>,  <2.214289, -1.208675, 2.266569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.972351, -0.996788, 2.028725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130416, -0.802485, -0.582246,
		-0.785590, -0.274623, 0.554464,
		-0.604846, 0.529718, -0.594609,
		1.790898, -0.837873, 1.850341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.503458, -1.556209, 2.189506>,  <2.214289, -1.208675, 2.266569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.503458, -1.556209, 2.189506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.555603, -1.324356, 1.867752>,  <1.586890, -1.185245, 1.674700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.555603, -1.324356, 1.867752>,  <1.503458, -1.556209, 2.189506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.555603, -1.324356, 1.867752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245072, -0.767293, -0.592622,
		-0.960700, 0.274388, 0.042025,
		0.130363, 0.579631, -0.804384,
		1.594712, -1.150467, 1.626437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.221061, 2.936291, 0.613882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.013916, 3.238243, 0.452898>,  <1.889629, 3.419414, 0.356308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.013916, 3.238243, 0.452898>,  <2.221061, 2.936291, 0.613882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.013916, 3.238243, 0.452898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015935, 0.461865, 0.886807,
		0.855315, 0.465658, -0.227154,
		-0.517863, 0.754880, -0.402460,
		1.858557, 3.464707, 0.332160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.448925, 3.568809, 0.845622>,  <2.221061, 2.936291, 0.613882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.448925, 3.568809, 0.845622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.068649, 3.642532, 0.745848>,  <1.840484, 3.686767, 0.685983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.068649, 3.642532, 0.745848>,  <2.448925, 3.568809, 0.845622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.068649, 3.642532, 0.745848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122690, 0.515156, 0.848269,
		0.284843, 0.837045, -0.467141,
		-0.950690, 0.184310, -0.249436,
		1.783442, 3.697825, 0.671017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.281689, 4.310724, 0.775498>,  <2.448925, 3.568809, 0.845622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.281689, 4.310724, 0.775498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.943306, 4.117161, 0.865110>,  <1.740276, 4.001023, 0.918878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.943306, 4.117161, 0.865110>,  <2.281689, 4.310724, 0.775498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.943306, 4.117161, 0.865110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085262, 0.537461, 0.838967,
		-0.526390, 0.690629, -0.495928,
		-0.845957, -0.483908, 0.224030,
		1.689519, 3.971988, 0.932319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.718907, 4.815653, 0.818223>,  <2.281689, 4.310724, 0.775498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.718907, 4.815653, 0.818223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.657143, 4.490845, 1.043356>,  <1.620084, 4.295960, 1.178436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.657143, 4.490845, 1.043356>,  <1.718907, 4.815653, 0.818223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.657143, 4.490845, 1.043356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300861, 0.581255, 0.756059,
		-0.941084, -0.052590, -0.334058,
		-0.154411, -0.812021, 0.562832,
		1.610819, 4.247239, 1.212206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.078359, 4.990072, 1.159294>,  <1.718907, 4.815653, 0.818223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.078359, 4.990072, 1.159294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.289551, 4.723408, 1.369741>,  <1.416266, 4.563409, 1.496010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.289551, 4.723408, 1.369741>,  <1.078359, 4.990072, 1.159294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.289551, 4.723408, 1.369741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094992, 0.569259, 0.816652,
		-0.843928, -0.481152, 0.237229,
		0.527979, -0.666661, 0.526120,
		1.447944, 4.523409, 1.527577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.729716, 4.798912, 1.753960>,  <1.078359, 4.990072, 1.159294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.729716, 4.798912, 1.753960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.123856, 4.754993, 1.806166>,  <1.360339, 4.728642, 1.837489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.123856, 4.754993, 1.806166>,  <0.729716, 4.798912, 1.753960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.123856, 4.754993, 1.806166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036198, 0.613172, 0.789120,
		-0.166669, -0.782282, 0.600213,
		0.985348, -0.109796, 0.130513,
		1.419460, 4.722055, 1.845320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.744425, 4.778479, 2.559572>,  <0.729716, 4.798912, 1.753960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.744425, 4.778479, 2.559572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125778, 4.815052, 2.444542>,  <1.354590, 4.836996, 2.375524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125778, 4.815052, 2.444542>,  <0.744425, 4.778479, 2.559572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.125778, 4.815052, 2.444542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178947, 0.596039, 0.782761,
		0.242975, -0.797733, 0.551893,
		0.953384, 0.091432, -0.287574,
		1.411793, 4.842482, 2.358270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.207261, 4.847951, 3.179211>,  <0.744425, 4.778479, 2.559572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.207261, 4.847951, 3.179211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.403381, 5.013596, 2.872456>,  <1.521053, 5.112982, 2.688402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.403381, 5.013596, 2.872456>,  <1.207261, 4.847951, 3.179211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.403381, 5.013596, 2.872456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321144, 0.732158, 0.600676,
		0.810230, -0.540793, 0.225986,
		0.490299, 0.414112, -0.766889,
		1.550471, 5.137829, 2.642389>
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
