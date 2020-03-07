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
	<-0.243623, 5.031512, 5.196095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.215141, 4.994522, 4.798828>,  <-0.198052, 4.972328, 4.560468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.215141, 4.994522, 4.798828>,  <-0.243623, 5.031512, 5.196095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.215141, 4.994522, 4.798828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477865, -0.870828, 0.115343,
		-0.875543, -0.482812, -0.017819,
		0.071207, -0.092473, -0.993166,
		-0.193780, 4.966780, 4.500878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.467629, 4.289418, 5.057500>,  <-0.243623, 5.031512, 5.196095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.467629, 4.289418, 5.057500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.221527, 4.454060, 4.788563>,  <-0.073866, 4.552845, 4.627201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.221527, 4.454060, 4.788563>,  <-0.467629, 4.289418, 5.057500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.221527, 4.454060, 4.788563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370337, -0.903812, -0.214417,
		-0.695926, -0.117072, -0.708506,
		0.615254, 0.411605, -0.672343,
		-0.036951, 4.577541, 4.586860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.687688, 3.936999, 4.408230>,  <-0.467629, 4.289418, 5.057500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.687688, 3.936999, 4.408230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.312523, 4.051178, 4.487061>,  <-0.087424, 4.119685, 4.534359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.312523, 4.051178, 4.487061>,  <-0.687688, 3.936999, 4.408230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.312523, 4.051178, 4.487061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335217, -0.891929, -0.303466,
		0.089155, 0.350688, -0.932239,
		0.937913, 0.285447, 0.197076,
		-0.031149, 4.136812, 4.546184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.290741, 3.861196, 3.815763>,  <-0.687688, 3.936999, 4.408230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.290741, 3.861196, 3.815763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.057152, 3.819027, 4.137722>,  <0.083002, 3.793725, 4.330898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.057152, 3.819027, 4.137722>,  <-0.290741, 3.861196, 3.815763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.057152, 3.819027, 4.137722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401588, -0.824183, -0.399311,
		0.705481, 0.556424, -0.438963,
		0.583973, -0.105424, 0.804899,
		0.118040, 3.787400, 4.379191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.332153, 3.583226, 3.572214>,  <-0.290741, 3.861196, 3.815763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.332153, 3.583226, 3.572214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.310234, 3.489853, 3.960545>,  <0.297082, 3.433829, 4.193543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.310234, 3.489853, 3.960545>,  <0.332153, 3.583226, 3.572214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.310234, 3.489853, 3.960545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532297, -0.829437, -0.169391,
		0.844782, 0.507486, 0.169708,
		-0.054798, -0.233434, 0.970827,
		0.293795, 3.419823, 4.251793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.950270, 3.349680, 3.730215>,  <0.332153, 3.583226, 3.572214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.950270, 3.349680, 3.730215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.700340, 3.179306, 3.991955>,  <0.550382, 3.077082, 4.148999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.700340, 3.179306, 3.991955>,  <0.950270, 3.349680, 3.730215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.700340, 3.179306, 3.991955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415415, -0.890974, -0.183290,
		0.661079, 0.157302, 0.733642,
		-0.624824, -0.425935, 0.654350,
		0.512893, 3.051526, 4.188260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.447934, 2.835946, 4.066914>,  <0.950270, 3.349680, 3.730215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.447934, 2.835946, 4.066914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.094658, 2.688454, 4.182854>,  <0.882692, 2.599958, 4.252418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.094658, 2.688454, 4.182854>,  <1.447934, 2.835946, 4.066914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.094658, 2.688454, 4.182854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329741, -0.927643, -0.175353,
		0.333534, -0.059295, 0.940871,
		-0.883191, -0.368730, 0.289849,
		0.829701, 2.577835, 4.269808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.654360, 2.233063, 4.444700>,  <1.447934, 2.835946, 4.066914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.654360, 2.233063, 4.444700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.267540, 2.214176, 4.344631>,  <1.035448, 2.202844, 4.284590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.267540, 2.214176, 4.344631>,  <1.654360, 2.233063, 4.444700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.267540, 2.214176, 4.344631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103906, -0.970285, -0.218519,
		-0.232419, -0.237313, 0.943220,
		-0.967049, -0.047218, -0.250171,
		0.977425, 2.200011, 4.269580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.192154, 1.374202, 4.187756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.948898, 1.189095, 3.929760>,  <0.802945, 1.078030, 3.774962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.948898, 1.189095, 3.929760>,  <1.192154, 1.374202, 4.187756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.948898, 1.189095, 3.929760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693485, 0.705115, 0.147957,
		0.386322, 0.537270, -0.749731,
		-0.608139, -0.462768, -0.644991,
		0.766457, 1.050264, 3.736263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.975835, 1.685134, 3.519307>,  <1.192154, 1.374202, 4.187756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.975835, 1.685134, 3.519307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.707726, 1.487301, 3.740620>,  <0.546860, 1.368601, 3.873407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.707726, 1.487301, 3.740620>,  <0.975835, 1.685134, 3.519307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.707726, 1.487301, 3.740620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417042, 0.867721, 0.270437,
		-0.613847, -0.049475, -0.787873,
		-0.670274, -0.494583, 0.553281,
		0.506643, 1.338926, 3.906604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.397591, 2.077320, 3.360813>,  <0.975835, 1.685134, 3.519307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.397591, 2.077320, 3.360813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.430283, 1.888931, 3.712154>,  <0.449898, 1.775898, 3.922959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.430283, 1.888931, 3.712154>,  <0.397591, 2.077320, 3.360813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.430283, 1.888931, 3.712154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160245, 0.863626, 0.477986,
		-0.983688, -0.179817, -0.004888,
		0.081729, -0.470972, 0.878354,
		0.454801, 1.747640, 3.975661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.292119, 2.069759, 3.822006>,  <0.397591, 2.077320, 3.360813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.292119, 2.069759, 3.822006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.060669, 2.065144, 4.010471>,  <0.272342, 2.062374, 4.123551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.060669, 2.065144, 4.010471>,  <-0.292119, 2.069759, 3.822006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.060669, 2.065144, 4.010471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265087, 0.814436, 0.516161,
		-0.389690, -0.580138, 0.715249,
		0.881969, -0.011540, 0.471165,
		0.325260, 2.061682, 4.151821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.349934, 2.113166, 4.522157>,  <-0.292119, 2.069759, 3.822006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.349934, 2.113166, 4.522157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.014076, 2.265491, 4.456631>,  <0.232482, 2.356887, 4.417315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.014076, 2.265491, 4.456631>,  <-0.349934, 2.113166, 4.522157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.014076, 2.265491, 4.456631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274926, 0.850158, 0.449050,
		0.310273, -0.363610, 0.878361,
		0.910025, 0.380813, -0.163816,
		0.287084, 2.379735, 4.407486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.035097, 2.339473, 5.162356>,  <-0.349934, 2.113166, 4.522157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.035097, 2.339473, 5.162356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.119843, 2.557858, 4.865200>,  <0.212806, 2.688889, 4.686906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.119843, 2.557858, 4.865200>,  <-0.035097, 2.339473, 5.162356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.119843, 2.557858, 4.865200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175212, 0.834705, 0.522081,
		0.905131, -0.072064, 0.418981,
		0.387348, 0.545962, -0.742891,
		0.236047, 2.721646, 4.642333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.313873, 3.006649, 5.425282>,  <-0.035097, 2.339473, 5.162356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.313873, 3.006649, 5.425282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.297386, 3.152050, 5.053009>,  <0.287494, 3.239290, 4.829646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.297386, 3.152050, 5.053009>,  <0.313873, 3.006649, 5.425282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.297386, 3.152050, 5.053009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253595, 0.897164, 0.361642,
		0.966432, 0.250923, 0.055203,
		-0.041218, 0.363502, -0.930681,
		0.285021, 3.261101, 4.773805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.671478, 3.699111, 5.517148>,  <0.313873, 3.006649, 5.425282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.671478, 3.699111, 5.517148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465996, 3.698681, 5.173962>,  <0.342706, 3.698423, 4.968050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465996, 3.698681, 5.173962>,  <0.671478, 3.699111, 5.517148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.465996, 3.698681, 5.173962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339856, 0.918454, 0.202338,
		0.787784, 0.395527, -0.472180,
		-0.513706, -0.001074, -0.857966,
		0.311884, 3.698359, 4.916572>
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
