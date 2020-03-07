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
	<1.204290, 3.699390, 1.646581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.276901, 4.059597, 1.804626>,  <1.320468, 4.275722, 1.899454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.276901, 4.059597, 1.804626>,  <1.204290, 3.699390, 1.646581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.276901, 4.059597, 1.804626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421809, 0.291648, -0.858498,
		-0.888327, 0.322503, -0.326904,
		0.181527, 0.900518, 0.395114,
		1.331360, 4.329752, 1.923161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.714644, 4.202085, 1.363385>,  <1.204290, 3.699390, 1.646581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.714644, 4.202085, 1.363385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.087566, 4.296268, 1.473194>,  <1.311320, 4.352778, 1.539080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.087566, 4.296268, 1.473194>,  <0.714644, 4.202085, 1.363385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.087566, 4.296268, 1.473194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251553, 0.123204, -0.959970,
		-0.259854, 0.964044, 0.055634,
		0.932307, 0.235458, 0.274524,
		1.367259, 4.366906, 1.555551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.793885, 4.869006, 1.131841>,  <0.714644, 4.202085, 1.363385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.793885, 4.869006, 1.131841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.122984, 4.641930, 1.143251>,  <1.320444, 4.505684, 1.150098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.122984, 4.641930, 1.143251>,  <0.793885, 4.869006, 1.131841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.122984, 4.641930, 1.143251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160078, 0.183259, -0.969944,
		0.545399, 0.802586, 0.241650,
		0.822748, -0.567690, 0.028527,
		1.369808, 4.471622, 1.151810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.387919, 5.271973, 0.913927>,  <0.793885, 4.869006, 1.131841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.387919, 5.271973, 0.913927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.423056, 4.885052, 0.818758>,  <1.444138, 4.652899, 0.761657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.423056, 4.885052, 0.818758>,  <1.387919, 5.271973, 0.913927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.423056, 4.885052, 0.818758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139319, 0.248428, -0.958579,
		0.986344, 0.051056, 0.156586,
		0.087842, -0.967304, -0.237922,
		1.449408, 4.594861, 0.747381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.038341, 5.113184, 0.598505>,  <1.387919, 5.271973, 0.913927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.038341, 5.113184, 0.598505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.784832, 4.829411, 0.475195>,  <1.632726, 4.659146, 0.401209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.784832, 4.829411, 0.475195>,  <2.038341, 5.113184, 0.598505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.784832, 4.829411, 0.475195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334688, 0.107797, -0.936143,
		0.697364, -0.696479, 0.169120,
		-0.633773, -0.709435, -0.308276,
		1.594700, 4.616580, 0.382712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.412784, 4.872212, 0.069026>,  <2.038341, 5.113184, 0.598505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.412784, 4.872212, 0.069026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.058121, 4.701439, -0.002041>,  <1.845323, 4.598975, -0.044681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.058121, 4.701439, -0.002041>,  <2.412784, 4.872212, 0.069026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.058121, 4.701439, -0.002041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147678, 0.102662, -0.983693,
		0.438211, -0.898436, -0.027977,
		-0.886658, -0.426934, -0.177666,
		1.792123, 4.573359, -0.055341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.524014, 4.282638, -0.323822>,  <2.412784, 4.872212, 0.069026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.524014, 4.282638, -0.323822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.150414, 4.410950, -0.386744>,  <1.926253, 4.487937, -0.424496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.150414, 4.410950, -0.386744>,  <2.524014, 4.282638, -0.323822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.150414, 4.410950, -0.386744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159813, -0.018666, -0.986971,
		-0.319537, -0.946970, -0.033830,
		-0.934000, 0.320781, -0.157303,
		1.870214, 4.507184, -0.433934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.176440, 3.805961, -0.830692>,  <2.524014, 4.282638, -0.323822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.176440, 3.805961, -0.830692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.957788, 4.140450, -0.848276>,  <1.826598, 4.341143, -0.858827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.957788, 4.140450, -0.848276>,  <2.176440, 3.805961, -0.830692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.957788, 4.140450, -0.848276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086281, 0.004026, -0.996263,
		-0.832918, -0.548378, -0.074350,
		-0.546628, 0.836221, -0.043961,
		1.793800, 4.391315, -0.861465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.287171, 4.598226, 2.868918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.938858, 4.794556, 2.880450>,  <1.729871, 4.912354, 2.887369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.938858, 4.794556, 2.880450>,  <2.287171, 4.598226, 2.868918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.938858, 4.794556, 2.880450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091108, -0.218701, 0.971529,
		0.483155, 0.843363, 0.235159,
		-0.870781, 0.490824, 0.028829,
		1.677624, 4.941803, 2.889099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.218764, 5.394521, 3.240065>,  <2.287171, 4.598226, 2.868918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.218764, 5.394521, 3.240065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.896935, 5.157188, 3.250016>,  <1.703837, 5.014789, 3.255987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.896935, 5.157188, 3.250016>,  <2.218764, 5.394521, 3.240065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.896935, 5.157188, 3.250016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062128, -0.042438, 0.997166,
		-0.590594, 0.803839, 0.071007,
		-0.804574, -0.593332, 0.024877,
		1.655562, 4.979189, 3.257479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.792812, 5.598110, 3.791029>,  <2.218764, 5.394521, 3.240065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.792812, 5.598110, 3.791029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.671303, 5.218391, 3.758631>,  <1.598397, 4.990561, 3.739192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.671303, 5.218391, 3.758631>,  <1.792812, 5.598110, 3.791029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.671303, 5.218391, 3.758631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114363, -0.048068, 0.992275,
		-0.945856, 0.310689, -0.093962,
		-0.303773, -0.949295, -0.080997,
		1.580171, 4.933603, 3.734332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.089161, 5.463428, 4.105863>,  <1.792812, 5.598110, 3.791029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.089161, 5.463428, 4.105863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.305428, 5.126945, 4.108827>,  <1.435187, 4.925056, 4.110605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.305428, 5.126945, 4.108827>,  <1.089161, 5.463428, 4.105863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.305428, 5.126945, 4.108827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279882, -0.171569, 0.944579,
		-0.793314, -0.512775, -0.328200,
		0.540666, -0.841205, 0.007408,
		1.467627, 4.874584, 4.111049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.642026, 5.030021, 4.539130>,  <1.089161, 5.463428, 4.105863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.642026, 5.030021, 4.539130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.997910, 4.847916, 4.525549>,  <1.211440, 4.738653, 4.517400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.997910, 4.847916, 4.525549>,  <0.642026, 5.030021, 4.539130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.997910, 4.847916, 4.525549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177783, -0.414020, 0.892738,
		-0.420530, -0.788220, -0.449294,
		0.889690, -0.455299, -0.033976,
		1.264822, 4.711337, 4.515363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.507165, 4.294327, 4.754250>,  <0.642026, 5.030021, 4.539130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.507165, 4.294327, 4.754250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.887726, 4.403625, 4.811061>,  <1.116062, 4.469204, 4.845148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.887726, 4.403625, 4.811061>,  <0.507165, 4.294327, 4.754250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.887726, 4.403625, 4.811061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066027, -0.269475, 0.960741,
		0.300792, -0.923428, -0.238337,
		0.951401, 0.273247, 0.142027,
		1.173146, 4.485600, 4.853669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.849509, 3.692598, 4.951262>,  <0.507165, 4.294327, 4.754250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.849509, 3.692598, 4.951262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.060219, 4.004654, 5.086253>,  <1.186645, 4.191887, 5.167248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.060219, 4.004654, 5.086253>,  <0.849509, 3.692598, 4.951262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.060219, 4.004654, 5.086253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093402, -0.447752, 0.889266,
		0.844858, -0.436921, -0.308731,
		0.526774, 0.780140, 0.337478,
		1.218251, 4.238696, 5.187497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.384187, 3.377667, 5.412343>,  <0.849509, 3.692598, 4.951262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.384187, 3.377667, 5.412343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.365883, 3.766083, 5.506141>,  <1.354900, 3.999132, 5.562419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.365883, 3.766083, 5.506141>,  <1.384187, 3.377667, 5.412343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.365883, 3.766083, 5.506141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250211, -0.216116, 0.943763,
		0.967109, 0.101861, -0.233075,
		-0.045761, 0.971040, 0.234495,
		1.352155, 4.057395, 5.576489>
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
