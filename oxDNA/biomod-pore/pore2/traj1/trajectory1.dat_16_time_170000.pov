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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.285650, 17.257521, -2.779767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158405, 17.323143, -2.406266>,  <22.082058, 17.362516, -2.182166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158405, 17.323143, -2.406266>,  <22.285650, 17.257521, -2.779767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.158405, 17.323143, -2.406266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905773, -0.343445, -0.248237,
		0.279967, -0.924733, 0.257851,
		-0.318110, 0.164056, 0.933751,
		22.062973, 17.372360, -2.126141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.926613, 16.819155, -2.626092>,  <22.285650, 17.257521, -2.779767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.926613, 16.819155, -2.626092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.017876, 16.723923, -2.248466>,  <23.072634, 16.666782, -2.021890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.017876, 16.723923, -2.248466>,  <22.926613, 16.819155, -2.626092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.017876, 16.723923, -2.248466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951429, 0.151342, 0.268103,
		-0.206707, -0.959381, -0.191989,
		0.228158, -0.238082, 0.944066,
		23.086323, 16.652498, -1.965246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.559643, 16.260929, -2.377711>,  <22.926613, 16.819155, -2.626092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.559643, 16.260929, -2.377711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.651859, 16.481430, -2.056968>,  <22.707190, 16.613729, -1.864523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.651859, 16.481430, -2.056968>,  <22.559643, 16.260929, -2.377711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.651859, 16.481430, -2.056968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972227, 0.096344, 0.213290,
		0.040321, -0.828760, 0.558150,
		0.230541, 0.551248, 0.801858,
		22.721022, 16.646805, -1.816411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.470840, 15.904984, -3.032581>,  <22.559643, 16.260929, -2.377711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.470840, 15.904984, -3.032581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.718571, 15.672615, -3.243849>,  <22.867208, 15.533194, -3.370610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.718571, 15.672615, -3.243849>,  <22.470840, 15.904984, -3.032581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.718571, 15.672615, -3.243849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127973, 0.589026, -0.797917,
		0.774636, 0.561760, 0.290455,
		0.619324, -0.580925, -0.528171,
		22.904367, 15.498338, -3.402301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.171404, 15.457212, -2.520118>,  <22.470840, 15.904984, -3.032581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.171404, 15.457212, -2.520118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783764, 15.362896, -2.549086>,  <21.551180, 15.306306, -2.566467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783764, 15.362896, -2.549086>,  <22.171404, 15.457212, -2.520118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.783764, 15.362896, -2.549086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103511, 0.122261, 0.987085,
		-0.223891, 0.964082, -0.142890,
		-0.969102, -0.235791, -0.072420,
		21.493032, 15.292159, -2.570812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799942, 16.007071, -2.206485>,  <22.171404, 15.457212, -2.520118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799942, 16.007071, -2.206485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.657284, 15.634487, -2.177670>,  <21.571688, 15.410937, -2.160381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.657284, 15.634487, -2.177670>,  <21.799942, 16.007071, -2.206485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.657284, 15.634487, -2.177670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128474, 0.125275, 0.983769,
		-0.925363, 0.341603, -0.164347,
		-0.356647, -0.931458, 0.072037,
		21.550289, 15.355050, -2.156059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156235, 16.032257, -1.896077>,  <21.799942, 16.007071, -2.206485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156235, 16.032257, -1.896077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332699, 15.683418, -1.811392>,  <21.438578, 15.474114, -1.760581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332699, 15.683418, -1.811392>,  <21.156235, 16.032257, -1.896077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332699, 15.683418, -1.811392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148530, 0.161703, 0.975598,
		-0.885052, -0.461841, -0.058196,
		0.441160, -0.872098, 0.211713,
		21.465048, 15.421789, -1.747878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.638550, 15.571854, -1.548845>,  <21.156235, 16.032257, -1.896077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.638550, 15.571854, -1.548845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028019, 15.567924, -1.457752>,  <21.261702, 15.565567, -1.403097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028019, 15.567924, -1.457752>,  <20.638550, 15.571854, -1.548845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.028019, 15.567924, -1.457752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207424, 0.376075, 0.903074,
		-0.094515, -0.926537, 0.364137,
		0.973675, -0.009823, 0.227731,
		21.320122, 15.564978, -1.389433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.310432, 16.014881, -2.013819>,  <20.638550, 15.571854, -1.548845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.310432, 16.014881, -2.013819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.583370, 15.805809, -2.218255>,  <20.747133, 15.680366, -2.340916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.583370, 15.805809, -2.218255>,  <20.310432, 16.014881, -2.013819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583370, 15.805809, -2.218255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307107, -0.429494, 0.849247,
		-0.663396, -0.736436, -0.132542,
		0.682342, -0.522682, -0.511089,
		20.788073, 15.649004, -2.371582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.828644, 16.265282, -1.590079>,  <20.310432, 16.014881, -2.013819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.828644, 16.265282, -1.590079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.722801, 16.650906, -1.599607>,  <19.659296, 16.882280, -1.605324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.722801, 16.650906, -1.599607>,  <19.828644, 16.265282, -1.590079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.722801, 16.650906, -1.599607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516960, -0.120951, 0.847421,
		0.814085, 0.236549, 0.530386,
		-0.264608, 0.964062, -0.023822,
		19.643419, 16.940125, -1.606754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789282, 16.510117, -0.931179>,  <19.828644, 16.265282, -1.590079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.789282, 16.510117, -0.931179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.619411, 16.813850, -1.128385>,  <19.517488, 16.996090, -1.246708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.619411, 16.813850, -1.128385>,  <19.789282, 16.510117, -0.931179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.619411, 16.813850, -1.128385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528410, 0.234293, 0.816021,
		0.735142, 0.607057, 0.301741,
		-0.424676, 0.759334, -0.493014,
		19.492008, 17.041651, -1.276289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.805548, 17.133728, -0.506879>,  <19.789282, 16.510117, -0.931179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.805548, 17.133728, -0.506879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527462, 17.237965, -0.774840>,  <19.360611, 17.300507, -0.935617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527462, 17.237965, -0.774840>,  <19.805548, 17.133728, -0.506879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527462, 17.237965, -0.774840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544092, 0.418246, 0.727347,
		0.469724, 0.870151, -0.148986,
		-0.695214, 0.260591, -0.669902,
		19.318897, 17.316141, -0.975811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.625149, 17.895027, -0.643472>,  <19.805548, 17.133728, -0.506879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.625149, 17.895027, -0.643472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.287502, 17.712204, -0.755593>,  <19.084915, 17.602510, -0.822865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.287502, 17.712204, -0.755593>,  <19.625149, 17.895027, -0.643472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287502, 17.712204, -0.755593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525357, 0.600639, 0.602688,
		-0.107103, 0.655996, -0.747127,
		-0.844114, -0.457058, -0.280301,
		19.034267, 17.575087, -0.839683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226604, 18.454239, -0.940145>,  <19.625149, 17.895027, -0.643472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.226604, 18.454239, -0.940145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.054974, 18.147675, -0.748936>,  <18.951996, 17.963736, -0.634212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.054974, 18.147675, -0.748936>,  <19.226604, 18.454239, -0.940145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.054974, 18.147675, -0.748936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340180, 0.627359, 0.700498,
		-0.836762, 0.137955, -0.529904,
		-0.429077, -0.766413, 0.478020,
		18.926250, 17.917751, -0.605530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535109, 18.460453, -0.772962>,  <19.226604, 18.454239, -0.940145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535109, 18.460453, -0.772962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.754444, 18.302742, -0.477972>,  <18.886045, 18.208115, -0.300978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.754444, 18.302742, -0.477972>,  <18.535109, 18.460453, -0.772962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.754444, 18.302742, -0.477972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384341, 0.664399, 0.640980,
		-0.742702, -0.634916, 0.212778,
		0.548339, -0.394278, 0.737475,
		18.918945, 18.184458, -0.256729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241776, 18.579453, -0.090170>,  <18.535109, 18.460453, -0.772962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241776, 18.579453, -0.090170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.595413, 18.462933, 0.055992>,  <18.807596, 18.393021, 0.143689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.595413, 18.462933, 0.055992>,  <18.241776, 18.579453, -0.090170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.595413, 18.462933, 0.055992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133610, 0.591725, 0.794991,
		-0.447802, -0.751668, 0.484219,
		0.884094, -0.291302, 0.365406,
		18.860641, 18.375542, 0.165614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.213295, 18.207396, 0.620910>,  <18.241776, 18.579453, -0.090170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.213295, 18.207396, 0.620910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.498478, 18.462452, 0.504216>,  <18.669588, 18.615486, 0.434199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.498478, 18.462452, 0.504216>,  <18.213295, 18.207396, 0.620910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498478, 18.462452, 0.504216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264890, 0.630129, 0.729911,
		0.649255, -0.443113, 0.618157,
		0.712952, 0.637642, -0.291739,
		18.712364, 18.653744, 0.416695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.776365, 18.357185, 1.034853>,  <18.213295, 18.207396, 0.620910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.776365, 18.357185, 1.034853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.647465, 18.647362, 0.791579>,  <18.570124, 18.821468, 0.645615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.647465, 18.647362, 0.791579>,  <18.776365, 18.357185, 1.034853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647465, 18.647362, 0.791579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279658, 0.540829, 0.793281,
		0.904403, 0.425719, 0.028593,
		-0.322251, 0.725442, -0.608183,
		18.550789, 18.864994, 0.609124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301527, 18.988836, 0.913296>,  <18.776365, 18.357185, 1.034853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301527, 18.988836, 0.913296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915367, 19.091793, 0.896539>,  <18.683672, 19.153566, 0.886485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915367, 19.091793, 0.896539>,  <19.301527, 18.988836, 0.913296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.915367, 19.091793, 0.896539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074751, 0.427036, 0.901139,
		0.249833, 0.866828, -0.431501,
		-0.965399, 0.257390, -0.041892,
		18.625748, 19.169010, 0.883972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.187967, 19.653915, 0.939871>,  <19.301527, 18.988836, 0.913296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.187967, 19.653915, 0.939871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.868359, 19.483299, 1.109400>,  <18.676594, 19.380930, 1.211117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.868359, 19.483299, 1.109400>,  <19.187967, 19.653915, 0.939871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.868359, 19.483299, 1.109400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189358, 0.490489, 0.850626,
		-0.570706, 0.759925, -0.311143,
		-0.799024, -0.426539, 0.423823,
		18.628651, 19.355337, 1.236547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535786, 20.155592, 1.123182>,  <19.187967, 19.653915, 0.939871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535786, 20.155592, 1.123182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619133, 19.828651, 1.338038>,  <18.669142, 19.632486, 1.466951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619133, 19.828651, 1.338038>,  <18.535786, 20.155592, 1.123182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.619133, 19.828651, 1.338038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407890, 0.571776, 0.711827,
		-0.888936, 0.070770, 0.452530,
		0.208370, -0.817352, 0.537139,
		18.681644, 19.583447, 1.499180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.008484, 20.382927, 1.582352>,  <18.535786, 20.155592, 1.123182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.008484, 20.382927, 1.582352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021893, 19.998466, 1.691946>,  <19.029938, 19.767790, 1.757702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021893, 19.998466, 1.691946>,  <19.008484, 20.382927, 1.582352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.021893, 19.998466, 1.691946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690162, 0.220541, 0.689230,
		-0.722878, 0.165991, 0.670742,
		0.033520, -0.961150, 0.273985,
		19.031948, 19.710121, 1.774141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837677, 20.191317, 2.313136>,  <19.008484, 20.382927, 1.582352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837677, 20.191317, 2.313136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.112312, 19.951321, 2.148890>,  <19.277094, 19.807323, 2.050342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.112312, 19.951321, 2.148890>,  <18.837677, 20.191317, 2.313136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.112312, 19.951321, 2.148890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659206, 0.275518, 0.699669,
		-0.306664, -0.751065, 0.584687,
		0.686589, -0.599992, -0.410615,
		19.318289, 19.771322, 2.025705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.210152, 19.882078, 2.114352>,  <18.837677, 20.191317, 2.313136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.210152, 19.882078, 2.114352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.415112, 19.543098, 2.169885>,  <18.538088, 19.339710, 2.203205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.415112, 19.543098, 2.169885>,  <18.210152, 19.882078, 2.114352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415112, 19.543098, 2.169885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329163, -0.044502, 0.943224,
		-0.793157, -0.529006, -0.301752,
		0.512399, -0.847451, 0.138832,
		18.568830, 19.288864, 2.211535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781120, 19.258751, 2.449268>,  <18.210152, 19.882078, 2.114352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781120, 19.258751, 2.449268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.173466, 19.274899, 2.525457>,  <18.408873, 19.284586, 2.571171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.173466, 19.274899, 2.525457>,  <17.781120, 19.258751, 2.449268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.173466, 19.274899, 2.525457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191672, 0.028251, 0.981052,
		0.034284, -0.998783, 0.035460,
		0.980860, 0.040431, 0.190471,
		18.467724, 19.287008, 2.582599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.004723, 18.730991, 3.046572>,  <17.781120, 19.258751, 2.449268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.004723, 18.730991, 3.046572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.262966, 19.035339, 3.020445>,  <18.417913, 19.217947, 3.004769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.262966, 19.035339, 3.020445>,  <18.004723, 18.730991, 3.046572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.262966, 19.035339, 3.020445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017189, 0.099987, 0.994840,
		0.763474, -0.641156, 0.077631,
		0.645609, 0.760869, -0.065317,
		18.456650, 19.263599, 3.000850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.982079, 18.580326, 3.800890>,  <18.004723, 18.730991, 3.046572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.982079, 18.580326, 3.800890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.194466, 18.916233, 3.755524>,  <18.321898, 19.117777, 3.728304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.194466, 18.916233, 3.755524>,  <17.982079, 18.580326, 3.800890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.194466, 18.916233, 3.755524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125723, 0.210428, 0.969491,
		0.838013, -0.500512, 0.217309,
		0.530970, 0.839767, -0.113416,
		18.353756, 19.168163, 3.721499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.620815, 18.509390, 4.214889>,  <17.982079, 18.580326, 3.800890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.620815, 18.509390, 4.214889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.482548, 18.879124, 4.150244>,  <18.399586, 19.100964, 4.111458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.482548, 18.879124, 4.150244>,  <18.620815, 18.509390, 4.214889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482548, 18.879124, 4.150244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015114, 0.166721, 0.985889,
		0.938234, 0.343236, -0.043660,
		-0.345671, 0.924334, -0.161611,
		18.378847, 19.156424, 4.101761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.996367, 19.066545, 4.495157>,  <18.620815, 18.509390, 4.214889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.996367, 19.066545, 4.495157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625313, 19.215809, 4.501450>,  <18.402681, 19.305367, 4.505225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625313, 19.215809, 4.501450>,  <18.996367, 19.066545, 4.495157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.625313, 19.215809, 4.501450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124136, 0.268315, 0.955299,
		0.352255, 0.888122, -0.295221,
		-0.927635, 0.373157, 0.015732,
		18.347023, 19.327757, 4.506169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.085239, 19.673145, 4.911131>,  <18.996367, 19.066545, 4.495157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.085239, 19.673145, 4.911131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.702553, 19.561962, 4.876647>,  <18.472940, 19.495253, 4.855956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.702553, 19.561962, 4.876647>,  <19.085239, 19.673145, 4.911131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.702553, 19.561962, 4.876647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096659, 0.024079, 0.995026,
		-0.274501, 0.960291, -0.049904,
		-0.956716, -0.277960, -0.086211,
		18.415539, 19.478575, 4.850783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554060, 20.238754, 5.145297>,  <19.085239, 19.673145, 4.911131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554060, 20.238754, 5.145297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398151, 19.873440, 5.192597>,  <18.304605, 19.654251, 5.220978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398151, 19.873440, 5.192597>,  <18.554060, 20.238754, 5.145297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.398151, 19.873440, 5.192597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277409, 0.238884, 0.930580,
		-0.878135, 0.329910, -0.346464,
		-0.389772, -0.913287, 0.118252,
		18.281219, 19.599453, 5.228073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904064, 20.305511, 5.514318>,  <18.554060, 20.238754, 5.145297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.904064, 20.305511, 5.514318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041500, 19.949150, 5.633137>,  <18.123960, 19.735332, 5.704428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041500, 19.949150, 5.633137>,  <17.904064, 20.305511, 5.514318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041500, 19.949150, 5.633137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020986, 0.308942, 0.950849,
		-0.938886, -0.332934, 0.087452,
		0.343588, -0.890904, 0.297048,
		18.144577, 19.681879, 5.722251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458755, 19.923012, 6.114329>,  <17.904064, 20.305511, 5.514318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458755, 19.923012, 6.114329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845196, 19.820065, 6.106181>,  <18.077059, 19.758297, 6.101293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845196, 19.820065, 6.106181>,  <17.458755, 19.923012, 6.114329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845196, 19.820065, 6.106181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078977, 0.219501, 0.972410,
		-0.245796, -0.941053, 0.232386,
		0.966099, -0.257368, -0.020369,
		18.135025, 19.742855, 6.100070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565601, 19.492266, 6.578722>,  <17.458755, 19.923012, 6.114329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.565601, 19.492266, 6.578722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.934284, 19.630596, 6.508457>,  <18.155495, 19.713594, 6.466299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.934284, 19.630596, 6.508457>,  <17.565601, 19.492266, 6.578722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.934284, 19.630596, 6.508457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119453, 0.177788, 0.976792,
		0.369032, -0.921301, 0.122559,
		0.921708, 0.345827, -0.175661,
		18.210796, 19.734344, 6.455759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038464, 18.987400, 6.785655>,  <17.565601, 19.492266, 6.578722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.038464, 18.987400, 6.785655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.117626, 19.370754, 6.867952>,  <18.165123, 19.600767, 6.917331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.117626, 19.370754, 6.867952>,  <18.038464, 18.987400, 6.785655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117626, 19.370754, 6.867952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115303, -0.185678, 0.975822,
		0.973416, -0.216845, 0.073758,
		0.197907, 0.958385, 0.205744,
		18.176998, 19.658270, 6.929676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690468, 19.106649, 7.281950>,  <18.038464, 18.987400, 6.785655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690468, 19.106649, 7.281950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.389717, 19.370113, 7.293565>,  <18.209267, 19.528193, 7.300533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.389717, 19.370113, 7.293565>,  <18.690468, 19.106649, 7.281950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.389717, 19.370113, 7.293565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060938, -0.113280, 0.991693,
		0.656479, 0.743863, 0.125310,
		-0.751879, 0.658661, 0.029036,
		18.164154, 19.567711, 7.302276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980289, 19.569063, 7.718132>,  <18.690468, 19.106649, 7.281950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980289, 19.569063, 7.718132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.581924, 19.604515, 7.711184>,  <18.342905, 19.625786, 7.707014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.581924, 19.604515, 7.711184>,  <18.980289, 19.569063, 7.718132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.581924, 19.604515, 7.711184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024024, -0.074554, 0.996927,
		0.087061, 0.993271, 0.076379,
		-0.995913, 0.088628, -0.017372,
		18.283150, 19.631104, 7.705972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830046, 20.083509, 8.160356>,  <18.980289, 19.569063, 7.718132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.830046, 20.083509, 8.160356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.476406, 19.899818, 8.125772>,  <18.264221, 19.789604, 8.105021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.476406, 19.899818, 8.125772>,  <18.830046, 20.083509, 8.160356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.476406, 19.899818, 8.125772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163893, 0.131455, 0.977680,
		-0.437612, 0.878539, -0.191483,
		-0.884101, -0.459227, -0.086460,
		18.211176, 19.762051, 8.099833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355927, 20.499531, 8.449878>,  <18.830046, 20.083509, 8.160356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355927, 20.499531, 8.449878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.175915, 20.142326, 8.450542>,  <18.067907, 19.928003, 8.450941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.175915, 20.142326, 8.450542>,  <18.355927, 20.499531, 8.449878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.175915, 20.142326, 8.450542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136460, 0.070608, 0.988126,
		-0.882527, 0.444458, -0.153636,
		-0.450028, -0.893013, 0.001663,
		18.040907, 19.874422, 8.451041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.810532, 20.570532, 8.988450>,  <18.355927, 20.499531, 8.449878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.810532, 20.570532, 8.988450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885979, 20.182461, 8.927552>,  <17.931248, 19.949617, 8.891013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885979, 20.182461, 8.927552>,  <17.810532, 20.570532, 8.988450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885979, 20.182461, 8.927552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121938, -0.176966, 0.976634,
		-0.974451, -0.165648, -0.151680,
		0.188620, -0.970177, -0.152246,
		17.942564, 19.891407, 8.881879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.280857, 20.212166, 9.271073>,  <17.810532, 20.570532, 8.988450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.280857, 20.212166, 9.271073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.573055, 19.938999, 9.270062>,  <17.748373, 19.775101, 9.269456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.573055, 19.938999, 9.270062>,  <17.280857, 20.212166, 9.271073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573055, 19.938999, 9.270062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218115, -0.236816, 0.946755,
		-0.647151, -0.691047, -0.321946,
		0.730494, -0.682914, -0.002528,
		17.792204, 19.734125, 9.269304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929630, 19.726902, 9.749915>,  <17.280857, 20.212166, 9.271073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929630, 19.726902, 9.749915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.320026, 19.647469, 9.714113>,  <17.554264, 19.599808, 9.692632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.320026, 19.647469, 9.714113>,  <16.929630, 19.726902, 9.749915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.320026, 19.647469, 9.714113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125013, 0.174177, 0.976747,
		-0.178375, -0.964483, 0.194820,
		0.975988, -0.198583, -0.089504,
		17.612823, 19.587894, 9.687262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.054903, 19.220930, 10.188160>,  <16.929630, 19.726902, 9.749915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.054903, 19.220930, 10.188160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421169, 19.369328, 10.126297>,  <17.640930, 19.458366, 10.089179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421169, 19.369328, 10.126297>,  <17.054903, 19.220930, 10.188160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421169, 19.369328, 10.126297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202288, -0.092863, 0.974913,
		0.347324, -0.923981, -0.160079,
		0.915667, 0.370992, -0.154657,
		17.695869, 19.480625, 10.079900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500362, 18.796135, 10.451007>,  <17.054903, 19.220930, 10.188160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500362, 18.796135, 10.451007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.695641, 19.144695, 10.470303>,  <17.812807, 19.353832, 10.481880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.695641, 19.144695, 10.470303>,  <17.500362, 18.796135, 10.451007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.695641, 19.144695, 10.470303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083603, -0.101715, 0.991294,
		0.868721, -0.479912, -0.122509,
		0.488195, 0.871401, 0.048240,
		17.842098, 19.406115, 10.484775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930340, 18.692249, 10.908234>,  <17.500362, 18.796135, 10.451007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930340, 18.692249, 10.908234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.953197, 19.091431, 10.896745>,  <17.966911, 19.330940, 10.889852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.953197, 19.091431, 10.896745>,  <17.930340, 18.692249, 10.908234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953197, 19.091431, 10.896745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088494, 0.023593, 0.995797,
		0.994436, -0.059443, -0.086964,
		0.057142, 0.997953, -0.028722,
		17.970341, 19.390816, 10.888128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586576, 18.966740, 11.251075>,  <17.930340, 18.692249, 10.908234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586576, 18.966740, 11.251075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316433, 19.261700, 11.246510>,  <18.154346, 19.438675, 11.243771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316433, 19.261700, 11.246510>,  <18.586576, 18.966740, 11.251075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316433, 19.261700, 11.246510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205562, 0.203085, 0.957340,
		0.708261, 0.644203, -0.288737,
		-0.675360, 0.737400, -0.011413,
		18.113825, 19.482920, 11.243086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953106, 19.438139, 11.548550>,  <18.586576, 18.966740, 11.251075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953106, 19.438139, 11.548550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571667, 19.540825, 11.611471>,  <18.342802, 19.602436, 11.649224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571667, 19.540825, 11.611471>,  <18.953106, 19.438139, 11.548550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.571667, 19.540825, 11.611471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254374, 0.407471, 0.877075,
		0.161063, 0.876393, -0.453866,
		-0.953600, 0.256716, 0.157303,
		18.285587, 19.617840, 11.658662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.001434, 20.090654, 11.704450>,  <18.953106, 19.438139, 11.548550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.001434, 20.090654, 11.704450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.645458, 19.992588, 11.858281>,  <18.431873, 19.933748, 11.950580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.645458, 19.992588, 11.858281>,  <19.001434, 20.090654, 11.704450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.645458, 19.992588, 11.858281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289358, 0.348272, 0.891615,
		-0.352530, 0.904765, -0.239001,
		-0.889940, -0.245165, 0.384578,
		18.378475, 19.919039, 11.973655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807224, 20.642694, 12.019064>,  <19.001434, 20.090654, 11.704450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.807224, 20.642694, 12.019064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610554, 20.339054, 12.189717>,  <18.492552, 20.156870, 12.292109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610554, 20.339054, 12.189717>,  <18.807224, 20.642694, 12.019064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.610554, 20.339054, 12.189717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266187, 0.335469, 0.903662,
		-0.829094, 0.557876, 0.037121,
		-0.491678, -0.759102, 0.426634,
		18.463051, 20.111324, 12.317708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.300482, 20.987988, 12.448271>,  <18.807224, 20.642694, 12.019064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.300482, 20.987988, 12.448271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.355602, 20.616341, 12.585529>,  <18.388674, 20.393353, 12.667884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.355602, 20.616341, 12.585529>,  <18.300482, 20.987988, 12.448271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.355602, 20.616341, 12.585529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283283, 0.368950, 0.885227,
		-0.949085, -0.024778, 0.314045,
		0.137801, -0.929119, 0.343146,
		18.396942, 20.337605, 12.688473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012552, 21.089211, 13.123472>,  <18.300482, 20.987988, 12.448271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012552, 21.089211, 13.123472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207832, 20.740131, 13.126574>,  <18.325001, 20.530684, 13.128434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207832, 20.740131, 13.126574>,  <18.012552, 21.089211, 13.123472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.207832, 20.740131, 13.126574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335855, 0.196066, 0.921282,
		-0.805521, -0.447164, 0.388819,
		0.488198, -0.872698, 0.007753,
		18.354292, 20.478321, 13.128900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736267, 20.582483, 13.620658>,  <18.012552, 21.089211, 13.123472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736267, 20.582483, 13.620658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.128010, 20.524464, 13.564341>,  <18.363054, 20.489653, 13.530550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.128010, 20.524464, 13.564341>,  <17.736267, 20.582483, 13.620658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.128010, 20.524464, 13.564341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182904, 0.339281, 0.922732,
		-0.086074, -0.929435, 0.358807,
		0.979356, -0.145050, -0.140794,
		18.421816, 20.480949, 13.522102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898829, 20.541521, 14.436273>,  <17.736267, 20.582483, 13.620658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.898829, 20.541521, 14.436273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258354, 20.496689, 14.266769>,  <18.474070, 20.469790, 14.165068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258354, 20.496689, 14.266769>,  <17.898829, 20.541521, 14.436273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258354, 20.496689, 14.266769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428912, 0.424204, 0.797549,
		0.090373, -0.898604, 0.429352,
		0.898814, -0.112078, -0.423759,
		18.527998, 20.463066, 14.139642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326290, 20.148195, 14.927345>,  <17.898829, 20.541521, 14.436273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326290, 20.148195, 14.927345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.597206, 20.326370, 14.693127>,  <18.759756, 20.433275, 14.552595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.597206, 20.326370, 14.693127>,  <18.326290, 20.148195, 14.927345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.597206, 20.326370, 14.693127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437221, 0.396406, 0.807279,
		0.591706, -0.802776, 0.073728,
		0.677291, 0.445436, -0.585546,
		18.800394, 20.460001, 14.517463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922371, 19.923756, 15.138775>,  <18.326290, 20.148195, 14.927345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.922371, 19.923756, 15.138775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.992222, 20.267521, 14.946562>,  <19.034132, 20.473780, 14.831234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.992222, 20.267521, 14.946562>,  <18.922371, 19.923756, 15.138775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.992222, 20.267521, 14.946562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520447, 0.333720, 0.785981,
		0.835847, -0.387346, -0.389003,
		0.174629, 0.859415, -0.480532,
		19.044611, 20.525345, 14.802402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603428, 20.039322, 15.156410>,  <18.922371, 19.923756, 15.138775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603428, 20.039322, 15.156410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420757, 20.392197, 15.110464>,  <19.311155, 20.603922, 15.082896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420757, 20.392197, 15.110464>,  <19.603428, 20.039322, 15.156410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420757, 20.392197, 15.110464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387484, 0.313468, 0.866945,
		0.800814, 0.351405, -0.484986,
		-0.456677, 0.882186, -0.114866,
		19.283754, 20.656853, 15.076004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.137438, 20.452736, 15.345934>,  <19.603428, 20.039322, 15.156410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.137438, 20.452736, 15.345934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.825306, 20.702839, 15.341267>,  <19.638027, 20.852901, 15.338466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.825306, 20.702839, 15.341267>,  <20.137438, 20.452736, 15.345934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.825306, 20.702839, 15.341267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373721, 0.481208, 0.792951,
		0.501415, 0.614403, -0.609174,
		-0.780330, 0.625259, -0.011669,
		19.591208, 20.890417, 15.337766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.372873, 21.177490, 15.500836>,  <20.137438, 20.452736, 15.345934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.372873, 21.177490, 15.500836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.984158, 21.172497, 15.595041>,  <19.750927, 21.169500, 15.651564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.984158, 21.172497, 15.595041>,  <20.372873, 21.177490, 15.500836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.984158, 21.172497, 15.595041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210873, 0.401197, 0.891389,
		-0.105614, 0.915907, -0.387248,
		-0.971791, -0.012483, 0.235511,
		19.692619, 21.168753, 15.665695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.267323, 21.827686, 15.879890>,  <20.372873, 21.177490, 15.500836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.267323, 21.827686, 15.879890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.961697, 21.593155, 15.987537>,  <19.778320, 21.452436, 16.052126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.961697, 21.593155, 15.987537>,  <20.267323, 21.827686, 15.879890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.961697, 21.593155, 15.987537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084721, 0.322343, 0.942824,
		-0.639553, 0.743179, -0.196616,
		-0.764065, -0.586328, 0.269118,
		19.732477, 21.417257, 16.068274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.866789, 22.249319, 16.298729>,  <20.267323, 21.827686, 15.879890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.866789, 22.249319, 16.298729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744968, 21.875023, 16.369879>,  <19.671875, 21.650446, 16.412569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744968, 21.875023, 16.369879>,  <19.866789, 22.249319, 16.298729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.744968, 21.875023, 16.369879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068300, 0.207717, 0.975802,
		-0.950044, 0.285034, -0.127172,
		-0.304552, -0.935740, 0.177872,
		19.653603, 21.594301, 16.423241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.264549, 22.265186, 16.703571>,  <19.866789, 22.249319, 16.298729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.264549, 22.265186, 16.703571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.402302, 21.902744, 16.801855>,  <19.484953, 21.685280, 16.860826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.402302, 21.902744, 16.801855>,  <19.264549, 22.265186, 16.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.402302, 21.902744, 16.801855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013815, 0.266584, 0.963713,
		-0.938728, -0.328491, 0.104325,
		0.344383, -0.906105, 0.245712,
		19.505617, 21.630913, 16.875568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940092, 22.012207, 17.210527>,  <19.264549, 22.265186, 16.703571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940092, 22.012207, 17.210527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.278992, 21.800655, 17.230366>,  <19.482330, 21.673725, 17.242270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.278992, 21.800655, 17.230366>,  <18.940092, 22.012207, 17.210527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.278992, 21.800655, 17.230366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091502, 0.237278, 0.967123,
		-0.523258, -0.814854, 0.249427,
		0.847247, -0.528878, 0.049597,
		19.533167, 21.641993, 17.245245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.911938, 21.554930, 17.812725>,  <18.940092, 22.012207, 17.210527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.911938, 21.554930, 17.812725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304192, 21.609890, 17.756901>,  <19.539543, 21.642866, 17.723406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304192, 21.609890, 17.756901>,  <18.911938, 21.554930, 17.812725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304192, 21.609890, 17.756901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123011, 0.122376, 0.984831,
		0.152403, -0.982926, 0.103104,
		0.980633, 0.137408, -0.139561,
		19.598383, 21.651110, 17.715033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234217, 21.364372, 18.421715>,  <18.911938, 21.554930, 17.812725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234217, 21.364372, 18.421715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550068, 21.551933, 18.263414>,  <19.739578, 21.664471, 18.168434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550068, 21.551933, 18.263414>,  <19.234217, 21.364372, 18.421715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.550068, 21.551933, 18.263414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308910, 0.253478, 0.916691,
		0.530154, -0.846096, 0.055304,
		0.789628, 0.468903, -0.395750,
		19.786957, 21.692604, 18.144690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.861164, 21.020060, 18.727484>,  <19.234217, 21.364372, 18.421715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.861164, 21.020060, 18.727484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.951698, 21.383736, 18.587688>,  <20.006018, 21.601942, 18.503811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.951698, 21.383736, 18.587688>,  <19.861164, 21.020060, 18.727484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.951698, 21.383736, 18.587688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430576, 0.228452, 0.873164,
		0.873715, -0.348108, -0.339770,
		0.226334, 0.909193, -0.349488,
		20.019598, 21.656494, 18.482841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.599306, 21.118816, 18.990099>,  <19.861164, 21.020060, 18.727484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.599306, 21.118816, 18.990099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379269, 21.444626, 18.916405>,  <20.247246, 21.640112, 18.872189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379269, 21.444626, 18.916405>,  <20.599306, 21.118816, 18.990099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.379269, 21.444626, 18.916405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204322, 0.345184, 0.916024,
		0.809721, 0.466256, -0.356310,
		-0.550095, 0.814526, -0.184236,
		20.214241, 21.688984, 18.861134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945059, 21.682325, 19.505905>,  <20.599306, 21.118816, 18.990099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945059, 21.682325, 19.505905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585281, 21.808353, 19.384758>,  <20.369415, 21.883970, 19.312069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585281, 21.808353, 19.384758>,  <20.945059, 21.682325, 19.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585281, 21.808353, 19.384758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157867, 0.411990, 0.897409,
		0.407525, 0.854983, -0.320823,
		-0.899445, 0.315070, -0.302870,
		20.315449, 21.902874, 19.293898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917919, 22.365221, 19.694695>,  <20.945059, 21.682325, 19.505905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917919, 22.365221, 19.694695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.530323, 22.279510, 19.645466>,  <20.297766, 22.228085, 19.615929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.530323, 22.279510, 19.645466>,  <20.917919, 22.365221, 19.694695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.530323, 22.279510, 19.645466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190827, 0.332454, 0.923612,
		-0.156994, 0.918455, -0.363034,
		-0.968988, -0.214279, -0.123073,
		20.239626, 22.215227, 19.608543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.630033, 22.914104, 19.956156>,  <20.917919, 22.365221, 19.694695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.630033, 22.914104, 19.956156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357830, 22.621441, 19.972075>,  <20.194508, 22.445843, 19.981625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357830, 22.621441, 19.972075>,  <20.630033, 22.914104, 19.956156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357830, 22.621441, 19.972075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181254, 0.220708, 0.958350,
		-0.709968, 0.644953, -0.282810,
		-0.680509, -0.731659, 0.039796,
		20.153677, 22.401943, 19.984013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.074905, 23.203373, 20.239275>,  <20.630033, 22.914104, 19.956156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.074905, 23.203373, 20.239275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.011654, 22.813522, 20.302641>,  <19.973703, 22.579611, 20.340660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.011654, 22.813522, 20.302641>,  <20.074905, 23.203373, 20.239275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.011654, 22.813522, 20.302641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330071, 0.203378, 0.921787,
		-0.930617, 0.093475, -0.353856,
		-0.158131, -0.974628, 0.158414,
		19.964214, 22.521133, 20.350164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413136, 23.126635, 20.559994>,  <20.074905, 23.203373, 20.239275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413136, 23.126635, 20.559994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630852, 22.807693, 20.664286>,  <19.761480, 22.616329, 20.726860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630852, 22.807693, 20.664286>,  <19.413136, 23.126635, 20.559994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630852, 22.807693, 20.664286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328960, 0.083042, 0.940686,
		-0.771709, -0.597773, -0.217098,
		0.544289, -0.797353, 0.260728,
		19.794138, 22.568487, 20.742504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.987587, 22.711243, 21.001749>,  <19.413136, 23.126635, 20.559994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.987587, 22.711243, 21.001749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.347404, 22.553555, 21.077019>,  <19.563295, 22.458941, 21.122181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.347404, 22.553555, 21.077019>,  <18.987587, 22.711243, 21.001749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.347404, 22.553555, 21.077019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183988, 0.048774, 0.981718,
		-0.396193, -0.917720, -0.028658,
		0.899544, -0.394222, 0.188174,
		19.617268, 22.435287, 21.133471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790470, 22.387566, 21.582664>,  <18.987587, 22.711243, 21.001749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790470, 22.387566, 21.582664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189274, 22.418488, 21.582575>,  <19.428556, 22.437040, 21.582521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189274, 22.418488, 21.582575>,  <18.790470, 22.387566, 21.582664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.189274, 22.418488, 21.582575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019983, 0.260541, 0.965256,
		0.074675, -0.962363, 0.261306,
		0.997008, 0.077302, -0.000225,
		19.488377, 22.441679, 21.582508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.053835, 21.973742, 22.126427>,  <18.790470, 22.387566, 21.582664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.053835, 21.973742, 22.126427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.349213, 22.240467, 22.086313>,  <19.526440, 22.400503, 22.062244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.349213, 22.240467, 22.086313>,  <19.053835, 21.973742, 22.126427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349213, 22.240467, 22.086313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174678, 0.332809, 0.926675,
		0.651296, -0.666780, 0.362239,
		0.738444, 0.666815, -0.100285,
		19.570745, 22.440512, 22.056229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352324, 22.011835, 22.721064>,  <19.053835, 21.973742, 22.126427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352324, 22.011835, 22.721064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.538731, 22.334427, 22.575508>,  <19.650576, 22.527983, 22.488174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.538731, 22.334427, 22.575508>,  <19.352324, 22.011835, 22.721064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.538731, 22.334427, 22.575508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036107, 0.393604, 0.918571,
		0.884038, -0.441210, 0.154307,
		0.466019, 0.806480, -0.363891,
		19.678535, 22.576370, 22.466341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922850, 22.201756, 23.182171>,  <19.352324, 22.011835, 22.721064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922850, 22.201756, 23.182171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840290, 22.534466, 22.976046>,  <19.790754, 22.734093, 22.852371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840290, 22.534466, 22.976046>,  <19.922850, 22.201756, 23.182171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840290, 22.534466, 22.976046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044898, 0.534148, 0.844198,
		0.977437, 0.151106, -0.147593,
		-0.206400, 0.831777, -0.515312,
		19.778370, 22.783998, 22.821451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.481852, 22.716473, 23.322548>,  <19.922850, 22.201756, 23.182171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.481852, 22.716473, 23.322548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.140823, 22.887993, 23.203049>,  <19.936207, 22.990906, 23.131350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.140823, 22.887993, 23.203049>,  <20.481852, 22.716473, 23.322548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140823, 22.887993, 23.203049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021265, 0.542705, 0.839654,
		0.522177, 0.722218, -0.453577,
		-0.852572, 0.428803, -0.298747,
		19.885052, 23.016634, 23.113424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674675, 23.421801, 23.345949>,  <20.481852, 22.716473, 23.322548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674675, 23.421801, 23.345949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.285416, 23.338749, 23.385696>,  <20.051861, 23.288918, 23.409544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.285416, 23.338749, 23.385696>,  <20.674675, 23.421801, 23.345949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.285416, 23.338749, 23.385696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022141, 0.514127, 0.857428,
		-0.229113, 0.832205, -0.504918,
		-0.973148, -0.207627, 0.099367,
		19.993471, 23.276461, 23.415506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.252117, 24.043877, 23.371763>,  <20.674675, 23.421801, 23.345949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.252117, 24.043877, 23.371763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.059238, 23.759720, 23.576830>,  <19.943510, 23.589226, 23.699869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.059238, 23.759720, 23.576830>,  <20.252117, 24.043877, 23.371763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.059238, 23.759720, 23.576830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028798, 0.572024, 0.819731,
		-0.875588, 0.410037, -0.255372,
		-0.482199, -0.710393, 0.512666,
		19.914579, 23.546602, 23.730629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.733324, 24.364668, 23.687031>,  <20.252117, 24.043877, 23.371763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.733324, 24.364668, 23.687031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.793064, 24.033646, 23.903492>,  <19.828909, 23.835033, 24.033369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.793064, 24.033646, 23.903492>,  <19.733324, 24.364668, 23.687031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.793064, 24.033646, 23.903492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120035, 0.558420, 0.820828,
		-0.981471, -0.057635, 0.182736,
		0.149352, -0.827554, 0.541155,
		19.837870, 23.785379, 24.065838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767887, 25.101854, 24.063614>,  <19.733324, 24.364668, 23.687031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767887, 25.101854, 24.063614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055466, 24.923347, 23.850464>,  <20.228014, 24.816242, 23.722574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055466, 24.923347, 23.850464>,  <19.767887, 25.101854, 24.063614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.055466, 24.923347, 23.850464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405074, 0.353988, -0.842975,
		0.564825, 0.821910, 0.073727,
		0.718949, -0.446269, -0.532876,
		20.271151, 24.789467, 23.690601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.071754, 24.856928, 24.439993>,  <19.767887, 25.101854, 24.063614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.071754, 24.856928, 24.439993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.714695, 24.977684, 24.306105>,  <18.500460, 25.050138, 24.225771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.714695, 24.977684, 24.306105>,  <19.071754, 24.856928, 24.439993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.714695, 24.977684, 24.306105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051418, -0.805938, -0.589763,
		-0.447809, -0.509241, 0.734943,
		-0.892650, 0.301891, -0.334722,
		18.446899, 25.068251, 24.205688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477596, 24.279240, 24.517273>,  <19.071754, 24.856928, 24.439993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.477596, 24.279240, 24.517273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.410931, 24.528023, 24.211229>,  <18.370932, 24.677292, 24.027603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.410931, 24.528023, 24.211229>,  <18.477596, 24.279240, 24.517273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.410931, 24.528023, 24.211229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207805, -0.780689, -0.589357,
		-0.963867, 0.060769, 0.259358,
		-0.166663, 0.621958, -0.765109,
		18.360931, 24.714611, 23.981697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.687363, 23.596670, 24.380466>,  <18.477596, 24.279240, 24.517273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.687363, 23.596670, 24.380466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433727, 23.442348, 24.648521>,  <18.281546, 23.349754, 24.809355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433727, 23.442348, 24.648521>,  <18.687363, 23.596670, 24.380466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.433727, 23.442348, 24.648521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746591, 0.531096, -0.400674,
		-0.201324, -0.754381, -0.624802,
		-0.634090, -0.385806, 0.670137,
		18.243500, 23.326607, 24.849562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.270752, 23.116301, 24.064634>,  <18.687363, 23.596670, 24.380466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.270752, 23.116301, 24.064634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.144081, 23.340801, 24.370501>,  <18.068079, 23.475502, 24.554020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.144081, 23.340801, 24.370501>,  <18.270752, 23.116301, 24.064634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.144081, 23.340801, 24.370501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642944, 0.465689, -0.608076,
		-0.697380, -0.684199, 0.213383,
		-0.316675, 0.561254, 0.764664,
		18.049078, 23.509178, 24.599899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485731, 22.985950, 24.143055>,  <18.270752, 23.116301, 24.064634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485731, 22.985950, 24.143055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.655521, 23.332718, 24.247570>,  <17.757397, 23.540779, 24.310280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.655521, 23.332718, 24.247570>,  <17.485731, 22.985950, 24.143055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.655521, 23.332718, 24.247570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513584, 0.468192, -0.719046,
		-0.745688, 0.171024, 0.643973,
		0.424477, 0.866918, 0.261290,
		17.782866, 23.592793, 24.325956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037760, 23.498737, 24.339872>,  <17.485731, 22.985950, 24.143055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037760, 23.498737, 24.339872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330971, 23.719376, 24.180670>,  <17.506897, 23.851759, 24.085148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330971, 23.719376, 24.180670>,  <17.037760, 23.498737, 24.339872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330971, 23.719376, 24.180670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623368, 0.310636, -0.717578,
		-0.272177, 0.774111, 0.571552,
		0.733030, 0.551595, -0.398008,
		17.550880, 23.884853, 24.061268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789795, 24.221689, 24.089405>,  <17.037760, 23.498737, 24.339872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789795, 24.221689, 24.089405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120960, 24.139938, 23.880487>,  <17.319658, 24.090887, 23.755136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120960, 24.139938, 23.880487>,  <16.789795, 24.221689, 24.089405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120960, 24.139938, 23.880487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447727, 0.320027, -0.834939,
		0.337792, 0.925101, 0.173448,
		0.827911, -0.204379, -0.522295,
		17.369333, 24.078625, 23.723799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729551, 24.717579, 23.552671>,  <16.789795, 24.221689, 24.089405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729551, 24.717579, 23.552671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028854, 24.482334, 23.429880>,  <17.208435, 24.341187, 23.356205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028854, 24.482334, 23.429880>,  <16.729551, 24.717579, 23.552671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028854, 24.482334, 23.429880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203106, 0.237427, -0.949935,
		0.631555, 0.773143, 0.058206,
		0.748256, -0.588114, -0.306979,
		17.253330, 24.305901, 23.337786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.990265, 25.086735, 23.088634>,  <16.729551, 24.717579, 23.552671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.990265, 25.086735, 23.088634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098648, 24.708488, 23.016644>,  <17.163679, 24.481541, 22.973450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098648, 24.708488, 23.016644>,  <16.990265, 25.086735, 23.088634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098648, 24.708488, 23.016644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317617, 0.088670, -0.944064,
		0.908681, 0.312966, -0.276318,
		0.270959, -0.945616, -0.179976,
		17.179935, 24.424803, 22.962650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357637, 25.059483, 22.481426>,  <16.990265, 25.086735, 23.088634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.357637, 25.059483, 22.481426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.257317, 24.672787, 22.501480>,  <17.197124, 24.440769, 22.513512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.257317, 24.672787, 22.501480>,  <17.357637, 25.059483, 22.481426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257317, 24.672787, 22.501480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161196, -0.009360, -0.986878,
		0.954523, -0.255594, -0.153487,
		-0.250804, -0.966739, 0.050135,
		17.182076, 24.382765, 22.516521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656988, 24.791334, 21.917574>,  <17.357637, 25.059483, 22.481426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656988, 24.791334, 21.917574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398724, 24.500229, 22.010080>,  <17.243765, 24.325565, 22.065584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398724, 24.500229, 22.010080>,  <17.656988, 24.791334, 21.917574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.398724, 24.500229, 22.010080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079043, -0.237530, -0.968159,
		0.759523, -0.643382, 0.095839,
		-0.645661, -0.727763, 0.231265,
		17.205025, 24.281900, 22.079460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834667, 24.134735, 21.550459>,  <17.656988, 24.791334, 21.917574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.834667, 24.134735, 21.550459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444977, 24.090073, 21.628857>,  <17.211163, 24.063276, 21.675896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444977, 24.090073, 21.628857>,  <17.834667, 24.134735, 21.550459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444977, 24.090073, 21.628857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151050, -0.322381, -0.934481,
		0.167524, -0.940002, 0.297207,
		-0.974228, -0.111655, 0.195993,
		17.152708, 24.056576, 21.687654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716545, 23.546326, 21.338701>,  <17.834667, 24.134735, 21.550459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716545, 23.546326, 21.338701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350822, 23.705639, 21.368128>,  <17.131388, 23.801228, 21.385784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350822, 23.705639, 21.368128>,  <17.716545, 23.546326, 21.338701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.350822, 23.705639, 21.368128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195904, -0.275914, -0.941006,
		-0.354492, -0.874780, 0.330296,
		-0.914307, 0.398285, 0.073564,
		17.076530, 23.825125, 21.390198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319256, 23.117411, 20.914740>,  <17.716545, 23.546326, 21.338701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319256, 23.117411, 20.914740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120316, 23.463890, 20.934101>,  <17.000952, 23.671778, 20.945719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120316, 23.463890, 20.934101>,  <17.319256, 23.117411, 20.914740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120316, 23.463890, 20.934101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248549, -0.088811, -0.964539,
		-0.831184, -0.491745, 0.259463,
		-0.497350, 0.866199, 0.048404,
		16.971111, 23.723749, 20.948622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619772, 23.025154, 20.557053>,  <17.319256, 23.117411, 20.914740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.619772, 23.025154, 20.557053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710049, 23.414593, 20.570744>,  <16.764214, 23.648256, 20.578959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.710049, 23.414593, 20.570744>,  <16.619772, 23.025154, 20.557053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710049, 23.414593, 20.570744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127203, 0.064282, -0.989791,
		-0.965859, 0.219032, 0.138352,
		0.225690, 0.973598, 0.034226,
		16.777756, 23.706673, 20.581011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026417, 23.352304, 20.238871>,  <16.619772, 23.025154, 20.557053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026417, 23.352304, 20.238871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322010, 23.618172, 20.194826>,  <16.499365, 23.777691, 20.168400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322010, 23.618172, 20.194826>,  <16.026417, 23.352304, 20.238871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322010, 23.618172, 20.194826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148644, 0.001438, -0.988890,
		-0.657124, 0.747139, 0.099861,
		0.738981, 0.664667, -0.110113,
		16.543705, 23.817572, 20.161793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770408, 23.991686, 19.899700>,  <16.026417, 23.352304, 20.238871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.770408, 23.991686, 19.899700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166351, 23.981888, 19.843731>,  <16.403917, 23.976009, 19.810150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166351, 23.981888, 19.843731>,  <15.770408, 23.991686, 19.899700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166351, 23.981888, 19.843731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138832, 0.041638, -0.989440,
		0.030061, 0.998832, 0.037816,
		0.989860, -0.024494, -0.139921,
		16.463308, 23.974539, 19.801754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927903, 24.612856, 19.502207>,  <15.770408, 23.991686, 19.899700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.927903, 24.612856, 19.502207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239120, 24.368942, 19.441795>,  <16.425852, 24.222593, 19.405548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239120, 24.368942, 19.441795>,  <15.927903, 24.612856, 19.502207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239120, 24.368942, 19.441795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139281, 0.066989, -0.987985,
		0.612575, 0.789731, -0.032811,
		0.778044, -0.609784, -0.151030,
		16.472534, 24.186007, 19.396486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015404, 24.803854, 18.817787>,  <15.927903, 24.612856, 19.502207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015404, 24.803854, 18.817787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.296597, 24.525852, 18.878162>,  <16.465313, 24.359051, 18.914389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.296597, 24.525852, 18.878162>,  <16.015404, 24.803854, 18.817787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.296597, 24.525852, 18.878162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101839, -0.111676, -0.988513,
		0.703879, 0.710278, -0.007728,
		0.702982, -0.695006, 0.150940,
		16.507492, 24.317350, 18.923445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.621284, 24.914999, 18.267975>,  <16.015404, 24.803854, 18.817787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.621284, 24.914999, 18.267975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.600491, 24.534649, 18.390045>,  <16.588015, 24.306438, 18.463287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.600491, 24.534649, 18.390045>,  <16.621284, 24.914999, 18.267975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.600491, 24.534649, 18.390045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034144, -0.303718, -0.952150,
		0.998064, -0.059917, -0.016678,
		-0.051985, -0.950876, 0.305176,
		16.584896, 24.249386, 18.481598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.183798, 24.638319, 17.999825>,  <16.621284, 24.914999, 18.267975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.183798, 24.638319, 17.999825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922916, 24.342068, 18.064447>,  <16.766388, 24.164316, 18.103220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922916, 24.342068, 18.064447>,  <17.183798, 24.638319, 17.999825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922916, 24.342068, 18.064447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048075, -0.253104, -0.966244,
		0.756519, -0.622420, 0.200681,
		-0.652202, -0.740629, 0.161555,
		16.727255, 24.119879, 18.112913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.536301, 24.025858, 17.891014>,  <17.183798, 24.638319, 17.999825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.536301, 24.025858, 17.891014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.150974, 23.936951, 17.830854>,  <16.919779, 23.883606, 17.794760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.150974, 23.936951, 17.830854>,  <17.536301, 24.025858, 17.891014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.150974, 23.936951, 17.830854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208337, -0.266107, -0.941160,
		0.169168, -0.937968, 0.302652,
		-0.963316, -0.222268, -0.150397,
		16.861979, 23.870270, 17.785736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641150, 23.491196, 17.487255>,  <17.536301, 24.025858, 17.891014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641150, 23.491196, 17.487255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259480, 23.596214, 17.429819>,  <17.030478, 23.659225, 17.395357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259480, 23.596214, 17.429819>,  <17.641150, 23.491196, 17.487255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259480, 23.596214, 17.429819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105073, -0.155332, -0.982258,
		-0.280196, -0.952334, 0.120627,
		-0.954175, 0.262550, -0.143588,
		16.973227, 23.674978, 17.386744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.366142, 22.889103, 17.136494>,  <17.641150, 23.491196, 17.487255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.366142, 22.889103, 17.136494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.118977, 23.194588, 17.061741>,  <16.970678, 23.377878, 17.016890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.118977, 23.194588, 17.061741>,  <17.366142, 22.889103, 17.136494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.118977, 23.194588, 17.061741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157698, -0.353244, -0.922144,
		-0.770270, -0.540333, 0.338710,
		-0.617912, 0.763714, -0.186884,
		16.933603, 23.423702, 17.005676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647125, 22.635710, 16.843704>,  <17.366142, 22.889103, 17.136494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647125, 22.635710, 16.843704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674297, 23.010403, 16.706348>,  <16.690601, 23.235218, 16.623936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674297, 23.010403, 16.706348>,  <16.647125, 22.635710, 16.843704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674297, 23.010403, 16.706348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165220, -0.328869, -0.929810,
		-0.983914, 0.119897, 0.132427,
		0.067930, 0.936733, -0.343389,
		16.694677, 23.291422, 16.603333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113270, 22.777683, 16.221087>,  <16.647125, 22.635710, 16.843704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113270, 22.777683, 16.221087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385101, 23.068489, 16.181854>,  <16.548201, 23.242973, 16.158316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385101, 23.068489, 16.181854>,  <16.113270, 22.777683, 16.221087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.385101, 23.068489, 16.181854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002912, -0.131023, -0.991375,
		-0.733596, 0.674004, -0.086924,
		0.679580, 0.727015, -0.098080,
		16.588976, 23.286594, 16.152430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827724, 23.140108, 15.689908>,  <16.113270, 22.777683, 16.221087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827724, 23.140108, 15.689908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.210335, 23.256767, 15.690519>,  <16.439901, 23.326763, 15.690886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.210335, 23.256767, 15.690519>,  <15.827724, 23.140108, 15.689908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.210335, 23.256767, 15.690519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010891, 0.040958, -0.999102,
		-0.291447, 0.955649, 0.042353,
		0.956525, 0.291646, 0.001529,
		16.497292, 23.344261, 15.690978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882712, 23.632408, 15.196746>,  <15.827724, 23.140108, 15.689908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882712, 23.632408, 15.196746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.256939, 23.501835, 15.250645>,  <16.481474, 23.423491, 15.282984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.256939, 23.501835, 15.250645>,  <15.882712, 23.632408, 15.196746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.256939, 23.501835, 15.250645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135156, -0.021543, -0.990590,
		0.326266, 0.944974, 0.023965,
		0.935566, -0.326435, 0.134748,
		16.537609, 23.403904, 15.291069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204889, 24.000200, 14.687303>,  <15.882712, 23.632408, 15.196746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204889, 24.000200, 14.687303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449055, 23.702785, 14.796518>,  <16.595554, 23.524336, 14.862047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449055, 23.702785, 14.796518>,  <16.204889, 24.000200, 14.687303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449055, 23.702785, 14.796518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206098, -0.183743, -0.961125,
		0.764802, 0.642955, 0.041083,
		0.610411, -0.743537, 0.273039,
		16.632177, 23.479725, 14.878429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901239, 24.136095, 14.403775>,  <16.204889, 24.000200, 14.687303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.901239, 24.136095, 14.403775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.880272, 23.738102, 14.437872>,  <16.867691, 23.499306, 14.458330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.880272, 23.738102, 14.437872>,  <16.901239, 24.136095, 14.403775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880272, 23.738102, 14.437872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209339, -0.094412, -0.973275,
		0.976437, -0.033172, 0.213237,
		-0.052417, -0.994980, 0.085243,
		16.864546, 23.439608, 14.463445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.384375, 23.866007, 13.895644>,  <16.901239, 24.136095, 14.403775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.384375, 23.866007, 13.895644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124477, 23.573685, 13.979319>,  <16.968540, 23.398291, 14.029523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124477, 23.573685, 13.979319>,  <17.384375, 23.866007, 13.895644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.124477, 23.573685, 13.979319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042267, -0.309496, -0.949961,
		0.758979, -0.608388, 0.231981,
		-0.649742, -0.730806, 0.209186,
		16.929554, 23.354443, 14.042074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665812, 23.168882, 13.692932>,  <17.384375, 23.866007, 13.895644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665812, 23.168882, 13.692932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.268391, 23.127506, 13.711515>,  <17.029938, 23.102680, 13.722666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.268391, 23.127506, 13.711515>,  <17.665812, 23.168882, 13.692932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268391, 23.127506, 13.711515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016407, -0.274256, -0.961517,
		0.112203, -0.956077, 0.270790,
		-0.993549, -0.103443, 0.046459,
		16.970325, 23.096474, 13.725453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619085, 22.632311, 13.330182>,  <17.665812, 23.168882, 13.692932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619085, 22.632311, 13.330182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246613, 22.777966, 13.337128>,  <17.023129, 22.865358, 13.341295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246613, 22.777966, 13.337128>,  <17.619085, 22.632311, 13.330182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246613, 22.777966, 13.337128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193984, -0.454609, -0.869311,
		-0.308653, -0.812857, 0.493961,
		-0.931184, 0.364136, 0.017365,
		16.967257, 22.887207, 13.342337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176691, 22.135038, 13.191302>,  <17.619085, 22.632311, 13.330182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176691, 22.135038, 13.191302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998177, 22.476555, 13.084070>,  <16.891068, 22.681465, 13.019732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998177, 22.476555, 13.084070>,  <17.176691, 22.135038, 13.191302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.998177, 22.476555, 13.084070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117988, -0.353091, -0.928119,
		-0.887078, -0.382577, 0.258318,
		-0.446287, 0.853792, -0.268080,
		16.864290, 22.732693, 13.003646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538370, 21.882637, 12.922117>,  <17.176691, 22.135038, 13.191302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.538370, 21.882637, 12.922117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.593433, 22.256794, 12.791830>,  <16.626471, 22.481289, 12.713657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.593433, 22.256794, 12.791830>,  <16.538370, 21.882637, 12.922117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.593433, 22.256794, 12.791830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235080, -0.288598, -0.928142,
		-0.962179, 0.204335, 0.180165,
		0.137657, 0.935392, -0.325718,
		16.634731, 22.537411, 12.694115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137741, 21.888012, 12.298426>,  <16.538370, 21.882637, 12.922117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.137741, 21.888012, 12.298426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.330612, 22.234951, 12.249093>,  <16.446335, 22.443115, 12.219494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.330612, 22.234951, 12.249093>,  <16.137741, 21.888012, 12.298426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.330612, 22.234951, 12.249093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224564, -0.013707, -0.974363,
		-0.846802, 0.497514, 0.188166,
		0.482180, 0.867348, -0.123331,
		16.475266, 22.495155, 12.212094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619831, 22.366743, 12.011959>,  <16.137741, 21.888012, 12.298426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619831, 22.366743, 12.011959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.991446, 22.469246, 11.905210>,  <16.214415, 22.530748, 11.841160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.991446, 22.469246, 11.905210>,  <15.619831, 22.366743, 12.011959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.991446, 22.469246, 11.905210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266911, -0.035312, -0.963074,
		-0.256219, 0.965963, 0.035591,
		0.929037, 0.256258, -0.266874,
		16.270157, 22.546124, 11.825148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507906, 22.882498, 11.576330>,  <15.619831, 22.366743, 12.011959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507906, 22.882498, 11.576330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.884591, 22.762287, 11.515849>,  <16.110601, 22.690161, 11.479560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.884591, 22.762287, 11.515849>,  <15.507906, 22.882498, 11.576330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.884591, 22.762287, 11.515849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220590, -0.212254, -0.951992,
		0.254005, 0.929856, -0.266175,
		0.941712, -0.300526, -0.151203,
		16.167105, 22.672129, 11.470489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769006, 23.197517, 10.902129>,  <15.507906, 22.882498, 11.576330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769006, 23.197517, 10.902129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028130, 22.897694, 10.956538>,  <16.183603, 22.717798, 10.989183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028130, 22.897694, 10.956538>,  <15.769006, 23.197517, 10.902129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028130, 22.897694, 10.956538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069254, -0.235760, -0.969341,
		0.758648, 0.618528, -0.204637,
		0.647809, -0.749561, 0.136023,
		16.222473, 22.672825, 10.997345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167908, 23.196812, 10.248173>,  <15.769006, 23.197517, 10.902129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167908, 23.196812, 10.248173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246239, 22.853374, 10.437687>,  <16.293238, 22.647312, 10.551395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246239, 22.853374, 10.437687>,  <16.167908, 23.196812, 10.248173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.246239, 22.853374, 10.437687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029466, -0.477770, -0.877991,
		0.980196, 0.185895, -0.068262,
		0.195828, -0.858591, 0.473786,
		16.304987, 22.595797, 10.579823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803003, 22.877020, 9.929388>,  <16.167908, 23.196812, 10.248173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803003, 22.877020, 9.929388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579556, 22.600677, 10.112982>,  <16.445488, 22.434872, 10.223138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579556, 22.600677, 10.112982>,  <16.803003, 22.877020, 9.929388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579556, 22.600677, 10.112982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100721, -0.492779, -0.864306,
		0.823287, -0.529046, 0.205691,
		-0.558617, -0.690854, 0.458984,
		16.411970, 22.393421, 10.250677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061310, 22.158590, 9.658578>,  <16.803003, 22.877020, 9.929388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.061310, 22.158590, 9.658578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691273, 22.110630, 9.802704>,  <16.469250, 22.081854, 9.889179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691273, 22.110630, 9.802704>,  <17.061310, 22.158590, 9.658578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691273, 22.110630, 9.802704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229021, -0.580701, -0.781240,
		0.302907, -0.805239, 0.509742,
		-0.925093, -0.119901, 0.360315,
		16.413744, 22.074659, 9.910798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916710, 21.456656, 9.511063>,  <17.061310, 22.158590, 9.658578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916710, 21.456656, 9.511063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.557396, 21.610676, 9.595746>,  <16.341808, 21.703087, 9.646556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.557396, 21.610676, 9.595746>,  <16.916710, 21.456656, 9.511063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.557396, 21.610676, 9.595746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414284, -0.581539, -0.700130,
		-0.146466, -0.716624, 0.681907,
		-0.898285, 0.385048, 0.211710,
		16.287910, 21.726191, 9.659259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534082, 20.918360, 9.676871>,  <16.916710, 21.456656, 9.511063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.534082, 20.918360, 9.676871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.262226, 21.197598, 9.586757>,  <16.099112, 21.365139, 9.532688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.262226, 21.197598, 9.586757>,  <16.534082, 20.918360, 9.676871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262226, 21.197598, 9.586757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504282, -0.667683, -0.547631,
		-0.532718, -0.258584, 0.805820,
		-0.679641, 0.698093, -0.225287,
		16.058334, 21.407026, 9.519171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931354, 20.480268, 9.606037>,  <16.534082, 20.918360, 9.676871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931354, 20.480268, 9.606037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.867640, 20.832012, 9.426545>,  <15.829412, 21.043058, 9.318851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.867640, 20.832012, 9.426545>,  <15.931354, 20.480268, 9.606037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.867640, 20.832012, 9.426545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503336, -0.463355, -0.729353,
		-0.849283, 0.109688, 0.516417,
		-0.159283, 0.879358, -0.448729,
		15.819856, 21.095819, 9.291926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197624, 20.474579, 9.487454>,  <15.931354, 20.480268, 9.606037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197624, 20.474579, 9.487454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396552, 20.714405, 9.236633>,  <15.515909, 20.858301, 9.086141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396552, 20.714405, 9.236633>,  <15.197624, 20.474579, 9.487454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.396552, 20.714405, 9.236633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479754, -0.412148, -0.774578,
		-0.722848, 0.686044, 0.082675,
		0.497320, 0.599565, -0.627052,
		15.545748, 20.894274, 9.048517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051514, 21.248367, 9.400125>,  <15.197624, 20.474579, 9.487454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051514, 21.248367, 9.400125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.697839, 21.076626, 9.473737>,  <14.485634, 20.973581, 9.517904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.697839, 21.076626, 9.473737>,  <15.051514, 21.248367, 9.400125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.697839, 21.076626, 9.473737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037282, 0.457563, 0.888395,
		-0.465640, 0.778648, -0.420579,
		-0.884188, -0.429352, 0.184031,
		14.432582, 20.947821, 9.528946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.651677, 21.790213, 9.746367>,  <15.051514, 21.248367, 9.400125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.651677, 21.790213, 9.746367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.465461, 21.446953, 9.832952>,  <14.353731, 21.240997, 9.884902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.465461, 21.446953, 9.832952>,  <14.651677, 21.790213, 9.746367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.465461, 21.446953, 9.832952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193292, 0.337263, 0.921353,
		-0.863661, 0.387087, -0.322883,
		-0.465540, -0.858148, 0.216460,
		14.325799, 21.189508, 9.897890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.924470, 21.881596, 9.921321>,  <14.651677, 21.790213, 9.746367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.924470, 21.881596, 9.921321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.039723, 21.536736, 10.088020>,  <14.108875, 21.329821, 10.188040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.039723, 21.536736, 10.088020>,  <13.924470, 21.881596, 9.921321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.039723, 21.536736, 10.088020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298746, 0.332551, 0.894517,
		-0.909796, -0.382242, -0.161744,
		0.288134, -0.862149, 0.416747,
		14.126163, 21.278091, 10.213044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556046, 21.870502, 10.505815>,  <13.924470, 21.881596, 9.921321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.556046, 21.870502, 10.505815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.817014, 21.571770, 10.557343>,  <13.973594, 21.392530, 10.588260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.817014, 21.571770, 10.557343>,  <13.556046, 21.870502, 10.505815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.817014, 21.571770, 10.557343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040877, 0.204410, 0.978032,
		-0.756757, -0.632819, 0.163888,
		0.652417, -0.746831, 0.128821,
		14.012739, 21.347721, 10.595989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.289453, 21.501245, 11.025988>,  <13.556046, 21.870502, 10.505815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.289453, 21.501245, 11.025988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.674949, 21.395596, 11.041192>,  <13.906246, 21.332205, 11.050315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.674949, 21.395596, 11.041192>,  <13.289453, 21.501245, 11.025988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.674949, 21.395596, 11.041192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015353, 0.087325, 0.996062,
		-0.266404, -0.960527, 0.080104,
		0.963739, -0.264125, 0.038011,
		13.964070, 21.316359, 11.052595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250555, 20.906513, 11.391765>,  <13.289453, 21.501245, 11.025988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.250555, 20.906513, 11.391765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.610187, 21.078091, 11.426781>,  <13.825966, 21.181038, 11.447790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.610187, 21.078091, 11.426781>,  <13.250555, 20.906513, 11.391765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.610187, 21.078091, 11.426781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116939, 0.042613, 0.992225,
		0.421879, -0.902325, 0.088473,
		0.899079, 0.428945, 0.087539,
		13.879910, 21.206774, 11.453043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512145, 20.639252, 11.974908>,  <13.250555, 20.906513, 11.391765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512145, 20.639252, 11.974908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748458, 20.960320, 11.942163>,  <13.890245, 21.152960, 11.922517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748458, 20.960320, 11.942163>,  <13.512145, 20.639252, 11.974908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.748458, 20.960320, 11.942163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106939, 0.022665, 0.994007,
		0.799713, -0.595996, -0.072447,
		0.590782, 0.802668, -0.081861,
		13.925693, 21.201120, 11.917605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036685, 20.478369, 12.499869>,  <13.512145, 20.639252, 11.974908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036685, 20.478369, 12.499869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022103, 20.871658, 12.428379>,  <14.013354, 21.107632, 12.385485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022103, 20.871658, 12.428379>,  <14.036685, 20.478369, 12.499869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.022103, 20.871658, 12.428379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153663, 0.171204, 0.973179,
		0.987451, 0.062939, 0.144844,
		-0.036453, 0.983223, -0.178726,
		14.011168, 21.166626, 12.374762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.407162, 20.804495, 13.007197>,  <14.036685, 20.478369, 12.499869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.407162, 20.804495, 13.007197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195552, 21.114651, 12.869267>,  <14.068586, 21.300745, 12.786510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195552, 21.114651, 12.869267>,  <14.407162, 20.804495, 13.007197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195552, 21.114651, 12.869267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144550, 0.318065, 0.936984,
		0.836205, 0.545532, -0.056182,
		-0.529025, 0.775390, -0.344825,
		14.036844, 21.347267, 12.765821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536173, 21.361835, 13.491657>,  <14.407162, 20.804495, 13.007197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536173, 21.361835, 13.491657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203839, 21.466553, 13.295218>,  <14.004439, 21.529383, 13.177353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203839, 21.466553, 13.295218>,  <14.536173, 21.361835, 13.491657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203839, 21.466553, 13.295218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369504, 0.400376, 0.838550,
		0.416151, 0.878159, -0.235912,
		-0.830834, 0.261793, -0.491101,
		13.954589, 21.545092, 13.147887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406363, 22.151762, 13.516526>,  <14.536173, 21.361835, 13.491657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406363, 22.151762, 13.516526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.043832, 21.992737, 13.459240>,  <13.826313, 21.897322, 13.424869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.043832, 21.992737, 13.459240>,  <14.406363, 22.151762, 13.516526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.043832, 21.992737, 13.459240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333801, 0.465742, 0.819549,
		-0.259119, 0.790588, -0.554823,
		-0.906330, -0.397561, -0.143216,
		13.771933, 21.873468, 13.416275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904913, 22.764297, 13.586242>,  <14.406363, 22.151762, 13.516526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904913, 22.764297, 13.586242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705733, 22.421967, 13.642244>,  <13.586226, 22.216568, 13.675846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705733, 22.421967, 13.642244>,  <13.904913, 22.764297, 13.586242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705733, 22.421967, 13.642244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480642, 0.406746, 0.776879,
		-0.721823, 0.319554, -0.613887,
		-0.497950, -0.855829, 0.140007,
		13.556348, 22.165218, 13.684247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.262385, 22.932774, 13.805943>,  <13.904913, 22.764297, 13.586242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.262385, 22.932774, 13.805943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.320380, 22.558857, 13.935644>,  <13.355177, 22.334507, 14.013465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.320380, 22.558857, 13.935644>,  <13.262385, 22.932774, 13.805943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.320380, 22.558857, 13.935644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269314, 0.278059, 0.922038,
		-0.952076, -0.221009, -0.211438,
		0.144986, -0.934793, 0.324254,
		13.363876, 22.278419, 14.032920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.660294, 22.829895, 14.197940>,  <13.262385, 22.932774, 13.805943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.660294, 22.829895, 14.197940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959289, 22.586105, 14.303621>,  <13.138685, 22.439831, 14.367030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959289, 22.586105, 14.303621>,  <12.660294, 22.829895, 14.197940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.959289, 22.586105, 14.303621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096796, 0.293551, 0.951030,
		-0.657187, -0.736456, 0.160431,
		0.747487, -0.609475, 0.264204,
		13.183535, 22.403263, 14.382882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.395968, 22.694483, 14.841311>,  <12.660294, 22.829895, 14.197940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.395968, 22.694483, 14.841311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.766232, 22.546139, 14.871286>,  <12.988391, 22.457132, 14.889272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.766232, 22.546139, 14.871286>,  <12.395968, 22.694483, 14.841311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766232, 22.546139, 14.871286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044733, 0.089409, 0.994990,
		-0.375701, -0.924375, 0.066172,
		0.925661, -0.370859, 0.074941,
		13.043931, 22.434881, 14.893768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.418018, 22.437656, 15.601038>,  <12.395968, 22.694483, 14.841311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.418018, 22.437656, 15.601038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794251, 22.402531, 15.469833>,  <13.019992, 22.381454, 15.391110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794251, 22.402531, 15.469833>,  <12.418018, 22.437656, 15.601038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794251, 22.402531, 15.469833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316536, -0.122913, 0.940583,
		-0.122913, -0.988525, -0.087814,
		-0.940583, 0.087814, 0.328012,
		13.076427, 22.376186, 15.371429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682811, 21.785326, 15.909090>,  <12.418018, 22.437656, 15.601038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682811, 21.785326, 15.909090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.989490, 22.019543, 15.803778>,  <13.173497, 22.160072, 15.740590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.989490, 22.019543, 15.803778>,  <12.682811, 21.785326, 15.909090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.989490, 22.019543, 15.803778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441092, -0.182454, 0.878720,
		0.466490, -0.789843, -0.398164,
		0.766697, 0.585541, -0.263281,
		13.219499, 22.195206, 15.724793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.271531, 21.358582, 16.032339>,  <12.682811, 21.785326, 15.909090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.271531, 21.358582, 16.032339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.364913, 21.747345, 16.044317>,  <13.420942, 21.980602, 16.051504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.364913, 21.747345, 16.044317>,  <13.271531, 21.358582, 16.032339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.364913, 21.747345, 16.044317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509018, -0.148393, 0.847868,
		0.828492, -0.182696, -0.529361,
		0.233456, 0.971906, 0.029947,
		13.434950, 22.038918, 16.053301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.966312, 21.406902, 16.241306>,  <13.271531, 21.358582, 16.032339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.966312, 21.406902, 16.241306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.813872, 21.758575, 16.355711>,  <13.722408, 21.969580, 16.424355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.813872, 21.758575, 16.355711>,  <13.966312, 21.406902, 16.241306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.813872, 21.758575, 16.355711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433436, -0.103352, 0.895238,
		0.816637, 0.465143, -0.341681,
		-0.381101, 0.879181, 0.286011,
		13.699542, 22.022329, 16.441515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527289, 21.747152, 16.507120>,  <13.966312, 21.406902, 16.241306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527289, 21.747152, 16.507120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210879, 21.943485, 16.653194>,  <14.021033, 22.061285, 16.740839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210879, 21.943485, 16.653194>,  <14.527289, 21.747152, 16.507120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210879, 21.943485, 16.653194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458710, 0.080884, 0.884897,
		0.404800, 0.867491, -0.289131,
		-0.791026, 0.490834, 0.365185,
		13.973572, 22.090736, 16.762751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789324, 22.463581, 16.819681>,  <14.527289, 21.747152, 16.507120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789324, 22.463581, 16.819681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445363, 22.369957, 17.001135>,  <14.238987, 22.313782, 17.110008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.445363, 22.369957, 17.001135>,  <14.789324, 22.463581, 16.819681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.445363, 22.369957, 17.001135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427862, 0.154180, 0.890597,
		-0.278397, 0.959918, -0.032433,
		-0.859901, -0.234063, 0.453636,
		14.187393, 22.299738, 17.137226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.791162, 22.987497, 17.426016>,  <14.789324, 22.463581, 16.819681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.791162, 22.987497, 17.426016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.518861, 22.714882, 17.533407>,  <14.355480, 22.551313, 17.597843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.518861, 22.714882, 17.533407>,  <14.791162, 22.987497, 17.426016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518861, 22.714882, 17.533407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252132, 0.126113, 0.959440,
		-0.687755, 0.720833, 0.085986,
		-0.680752, -0.681539, 0.268480,
		14.314635, 22.510420, 17.613951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495801, 23.279711, 18.069700>,  <14.791162, 22.987497, 17.426016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495801, 23.279711, 18.069700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.415498, 22.887890, 18.064447>,  <14.367315, 22.652798, 18.061296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.415498, 22.887890, 18.064447>,  <14.495801, 23.279711, 18.069700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.415498, 22.887890, 18.064447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137761, -0.041501, 0.989596,
		-0.969906, 0.196861, 0.143276,
		-0.200759, -0.979553, -0.013133,
		14.355270, 22.594025, 18.060507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.108348, 23.190250, 18.707943>,  <14.495801, 23.279711, 18.069700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.108348, 23.190250, 18.707943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.250190, 22.830521, 18.605591>,  <14.335295, 22.614683, 18.544180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.250190, 22.830521, 18.605591>,  <14.108348, 23.190250, 18.707943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250190, 22.830521, 18.605591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358279, -0.122086, 0.925598,
		-0.863650, -0.419898, 0.278917,
		0.354605, -0.899322, -0.255880,
		14.356571, 22.560724, 18.528826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.014345, 22.706059, 19.278021>,  <14.108348, 23.190250, 18.707943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.014345, 22.706059, 19.278021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.291841, 22.520206, 19.057896>,  <14.458338, 22.408695, 18.925819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.291841, 22.520206, 19.057896>,  <14.014345, 22.706059, 19.278021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.291841, 22.520206, 19.057896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497153, -0.243926, 0.832670,
		-0.521121, -0.851244, 0.061773,
		0.693737, -0.464632, -0.550314,
		14.499962, 22.380817, 18.892801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.142554, 22.099325, 19.557823>,  <14.014345, 22.706059, 19.278021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.142554, 22.099325, 19.557823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.480407, 22.161308, 19.352850>,  <14.683118, 22.198498, 19.229866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.480407, 22.161308, 19.352850>,  <14.142554, 22.099325, 19.557823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480407, 22.161308, 19.352850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533843, -0.315562, 0.784495,
		-0.040141, -0.936167, -0.349257,
		0.844630, 0.154958, -0.512433,
		14.733796, 22.207796, 19.199120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.394882, 21.582144, 19.985027>,  <14.142554, 22.099325, 19.557823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.394882, 21.582144, 19.985027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.682733, 21.777752, 19.787848>,  <14.855443, 21.895117, 19.669540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.682733, 21.777752, 19.787848>,  <14.394882, 21.582144, 19.985027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.682733, 21.777752, 19.787848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650349, -0.225951, 0.725253,
		0.243282, -0.842499, -0.480634,
		0.719625, 0.489021, -0.492949,
		14.898620, 21.924458, 19.639963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017051, 21.170229, 19.921865>,  <14.394882, 21.582144, 19.985027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017051, 21.170229, 19.921865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140590, 21.550411, 19.907734>,  <15.214713, 21.778521, 19.899256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140590, 21.550411, 19.907734>,  <15.017051, 21.170229, 19.921865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.140590, 21.550411, 19.907734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742262, -0.217638, 0.633783,
		0.594693, -0.221965, -0.772704,
		0.308847, 0.950455, -0.035329,
		15.233244, 21.835548, 19.897135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.740826, 21.071045, 19.891443>,  <15.017051, 21.170229, 19.921865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.740826, 21.071045, 19.891443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.682212, 21.455574, 19.984730>,  <15.647043, 21.686291, 20.040701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.682212, 21.455574, 19.984730>,  <15.740826, 21.071045, 19.891443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682212, 21.455574, 19.984730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813125, -0.017207, 0.581836,
		0.563344, 0.274892, -0.779153,
		-0.146535, 0.961321, 0.233214,
		15.638251, 21.743971, 20.054693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402599, 21.323664, 20.008215>,  <15.740826, 21.071045, 19.891443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402599, 21.323664, 20.008215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148384, 21.577049, 20.184765>,  <15.995854, 21.729080, 20.290695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148384, 21.577049, 20.184765>,  <16.402599, 21.323664, 20.008215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148384, 21.577049, 20.184765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664145, 0.157041, 0.730923,
		0.393700, 0.757668, -0.520519,
		-0.635540, 0.633465, 0.441374,
		15.957722, 21.767088, 20.317177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842781, 21.934061, 20.193850>,  <16.402599, 21.323664, 20.008215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842781, 21.934061, 20.193850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526348, 21.953121, 20.437792>,  <16.336489, 21.964558, 20.584156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526348, 21.953121, 20.437792>,  <16.842781, 21.934061, 20.193850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526348, 21.953121, 20.437792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608989, -0.032629, 0.792508,
		0.057664, 0.998331, -0.003208,
		-0.791080, 0.047652, 0.609854,
		16.289024, 21.967417, 20.620749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016376, 22.461651, 20.763153>,  <16.842781, 21.934061, 20.193850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.016376, 22.461651, 20.763153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736309, 22.214558, 20.906357>,  <16.568268, 22.066301, 20.992279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736309, 22.214558, 20.906357>,  <17.016376, 22.461651, 20.763153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736309, 22.214558, 20.906357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403733, 0.071011, 0.912117,
		-0.588867, 0.783176, 0.199679,
		-0.700168, -0.617732, 0.358010,
		16.526258, 22.029238, 21.013760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.737856, 22.816227, 21.383923>,  <17.016376, 22.461651, 20.763153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.737856, 22.816227, 21.383923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.635853, 22.431404, 21.422733>,  <16.574652, 22.200510, 21.446020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.635853, 22.431404, 21.422733>,  <16.737856, 22.816227, 21.383923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635853, 22.431404, 21.422733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424687, -0.021288, 0.905090,
		-0.868685, 0.272009, 0.414003,
		-0.255006, -0.962059, 0.097026,
		16.559351, 22.142786, 21.451841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.399336, 22.745102, 22.092993>,  <16.737856, 22.816227, 21.383923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.399336, 22.745102, 22.092993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.506432, 22.376606, 21.980120>,  <16.570690, 22.155508, 21.912395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.506432, 22.376606, 21.980120>,  <16.399336, 22.745102, 22.092993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.506432, 22.376606, 21.980120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513478, -0.111387, 0.850843,
		-0.815264, -0.372700, 0.443215,
		0.267741, -0.921243, -0.282183,
		16.586754, 22.100233, 21.895464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343273, 22.339525, 22.662580>,  <16.399336, 22.745102, 22.092993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343273, 22.339525, 22.662580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553497, 22.080906, 22.441399>,  <16.679632, 21.925734, 22.308689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553497, 22.080906, 22.441399>,  <16.343273, 22.339525, 22.662580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553497, 22.080906, 22.441399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457308, -0.333376, 0.824457,
		-0.717393, -0.686175, 0.120462,
		0.525562, -0.646548, -0.552955,
		16.711166, 21.886942, 22.275513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.411087, 21.746046, 22.982698>,  <16.343273, 22.339525, 22.662580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.411087, 21.746046, 22.982698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.708012, 21.668060, 22.726273>,  <16.886166, 21.621269, 22.572416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.708012, 21.668060, 22.726273>,  <16.411087, 21.746046, 22.982698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.708012, 21.668060, 22.726273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453654, -0.557872, 0.694965,
		-0.493124, -0.806702, -0.325670,
		0.742312, -0.194963, -0.641064,
		16.930704, 21.609571, 22.533953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492262, 20.947655, 22.846441>,  <16.411087, 21.746046, 22.982698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492262, 20.947655, 22.846441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833466, 21.141502, 22.768967>,  <17.038189, 21.257811, 22.722481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833466, 21.141502, 22.768967>,  <16.492262, 20.947655, 22.846441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833466, 21.141502, 22.768967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492898, -0.626105, 0.604189,
		0.171533, -0.610849, -0.772943,
		0.853011, 0.484620, -0.193688,
		17.089369, 21.286888, 22.710859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066757, 20.529196, 22.864443>,  <16.492262, 20.947655, 22.846441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066757, 20.529196, 22.864443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304195, 20.848087, 22.908382>,  <17.446659, 21.039423, 22.934746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304195, 20.848087, 22.908382>,  <17.066757, 20.529196, 22.864443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304195, 20.848087, 22.908382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571908, -0.513928, 0.639374,
		0.566183, -0.316706, -0.761009,
		0.593598, 0.797229, 0.109851,
		17.482275, 21.087255, 22.941338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475107, 19.839584, 22.658905>,  <17.066757, 20.529196, 22.864443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475107, 19.839584, 22.658905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.232033, 19.669823, 22.927412>,  <17.086187, 19.567966, 23.088516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.232033, 19.669823, 22.927412>,  <17.475107, 19.839584, 22.658905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232033, 19.669823, 22.927412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732162, -0.028059, -0.680553,
		0.307664, -0.905038, -0.293681,
		-0.607686, -0.424404, 0.671267,
		17.049726, 19.542501, 23.128792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.350990, 19.131186, 22.452208>,  <17.475107, 19.839584, 22.658905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.350990, 19.131186, 22.452208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.048817, 19.249950, 22.685843>,  <16.867512, 19.321209, 22.826023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.048817, 19.249950, 22.685843>,  <17.350990, 19.131186, 22.452208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.048817, 19.249950, 22.685843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652209, -0.255360, -0.713733,
		-0.062763, -0.920127, 0.386557,
		-0.755437, 0.296912, 0.584089,
		16.822186, 19.339024, 22.861069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879581, 18.587862, 22.420057>,  <17.350990, 19.131186, 22.452208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879581, 18.587862, 22.420057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689240, 18.915260, 22.548820>,  <16.575035, 19.111700, 22.626080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689240, 18.915260, 22.548820>,  <16.879581, 18.587862, 22.420057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689240, 18.915260, 22.548820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729975, -0.163377, -0.663659,
		-0.490610, -0.550791, 0.675226,
		-0.475854, 0.818497, 0.321909,
		16.546482, 19.160809, 22.645393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.261263, 18.364279, 22.337410>,  <16.879581, 18.587862, 22.420057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.261263, 18.364279, 22.337410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170364, 18.749287, 22.396629>,  <16.115826, 18.980291, 22.432161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170364, 18.749287, 22.396629>,  <16.261263, 18.364279, 22.337410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.170364, 18.749287, 22.396629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662907, -0.041525, -0.747550,
		-0.713383, -0.268019, 0.647496,
		-0.227245, 0.962518, 0.148048,
		16.102190, 19.038042, 22.441044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.490985, 18.398527, 22.388859>,  <16.261263, 18.364279, 22.337410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.490985, 18.398527, 22.388859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641063, 18.742725, 22.251003>,  <15.731110, 18.949244, 22.168289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641063, 18.742725, 22.251003>,  <15.490985, 18.398527, 22.388859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641063, 18.742725, 22.251003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741843, 0.055817, -0.668247,
		-0.555787, 0.506392, 0.659294,
		0.375195, 0.860495, -0.344641,
		15.753621, 19.000874, 22.147612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883049, 18.911797, 22.286749>,  <15.490985, 18.398527, 22.388859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.883049, 18.911797, 22.286749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193570, 19.011425, 22.055122>,  <15.379883, 19.071201, 21.916145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.193570, 19.011425, 22.055122>,  <14.883049, 18.911797, 22.286749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193570, 19.011425, 22.055122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617231, 0.113831, -0.778504,
		-0.127985, 0.961773, 0.242101,
		0.776302, 0.249069, -0.579067,
		15.426461, 19.086145, 21.881403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.655621, 19.340143, 21.894924>,  <14.883049, 18.911797, 22.286749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.655621, 19.340143, 21.894924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.977618, 19.255032, 21.673399>,  <15.170817, 19.203964, 21.540483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.977618, 19.255032, 21.673399>,  <14.655621, 19.340143, 21.894924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.977618, 19.255032, 21.673399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512378, 0.221246, -0.829771,
		0.299086, 0.951722, 0.069079,
		0.804995, -0.212779, -0.553813,
		15.219116, 19.191198, 21.507256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744386, 19.919136, 21.487337>,  <14.655621, 19.340143, 21.894924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744386, 19.919136, 21.487337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.936507, 19.615379, 21.311777>,  <15.051780, 19.433126, 21.206440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.936507, 19.615379, 21.311777>,  <14.744386, 19.919136, 21.487337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.936507, 19.615379, 21.311777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464959, 0.203861, -0.861541,
		0.743722, 0.617872, -0.255170,
		0.480303, -0.759391, -0.438901,
		15.080598, 19.387562, 21.180107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058122, 20.126215, 20.782513>,  <14.744386, 19.919136, 21.487337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.058122, 20.126215, 20.782513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.030866, 19.727173, 20.777712>,  <15.014512, 19.487747, 20.774832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.030866, 19.727173, 20.777712>,  <15.058122, 20.126215, 20.782513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.030866, 19.727173, 20.777712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501123, 0.044625, -0.864224,
		0.862689, -0.052874, -0.502963,
		-0.068140, -0.997603, -0.012001,
		15.010424, 19.427893, 20.774111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.235568, 20.048090, 20.184380>,  <15.058122, 20.126215, 20.782513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.235568, 20.048090, 20.184380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060691, 19.702068, 20.282799>,  <14.955765, 19.494455, 20.341850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060691, 19.702068, 20.282799>,  <15.235568, 20.048090, 20.184380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060691, 19.702068, 20.282799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464960, -0.016782, -0.885172,
		0.769853, -0.501394, -0.394880,
		-0.437193, -0.865056, 0.246048,
		14.929533, 19.442551, 20.356613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.190574, 19.742420, 19.584644>,  <15.235568, 20.048090, 20.184380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.190574, 19.742420, 19.584644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.943261, 19.488441, 19.769932>,  <14.794873, 19.336054, 19.881104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.943261, 19.488441, 19.769932>,  <15.190574, 19.742420, 19.584644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.943261, 19.488441, 19.769932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431355, -0.218538, -0.875313,
		0.657008, -0.741002, -0.138769,
		-0.618282, -0.634947, 0.463216,
		14.757776, 19.297956, 19.908897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233829, 19.095802, 19.267725>,  <15.190574, 19.742420, 19.584644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233829, 19.095802, 19.267725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883542, 19.078651, 19.460093>,  <14.673370, 19.068361, 19.575512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883542, 19.078651, 19.460093>,  <15.233829, 19.095802, 19.267725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.883542, 19.078651, 19.460093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471241, -0.140965, -0.870667,
		0.105124, -0.989086, 0.103240,
		-0.875717, -0.042877, 0.480917,
		14.620827, 19.065788, 19.604368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.870460, 18.515316, 19.091339>,  <15.233829, 19.095802, 19.267725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.870460, 18.515316, 19.091339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588944, 18.777138, 19.201784>,  <14.420035, 18.934231, 19.268051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588944, 18.777138, 19.201784>,  <14.870460, 18.515316, 19.091339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588944, 18.777138, 19.201784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470272, -0.137940, -0.871675,
		-0.532472, -0.743323, 0.404900,
		-0.703788, 0.654556, 0.276115,
		14.377808, 18.973505, 19.284618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.364227, 18.233156, 18.720282>,  <14.870460, 18.515316, 19.091339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.364227, 18.233156, 18.720282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247209, 18.605087, 18.809582>,  <14.176997, 18.828245, 18.863161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247209, 18.605087, 18.809582>,  <14.364227, 18.233156, 18.720282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247209, 18.605087, 18.809582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544030, 0.030162, -0.838524,
		-0.786414, -0.366762, 0.497029,
		-0.292548, 0.929826, 0.223249,
		14.159444, 18.884035, 18.876556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.684767, 18.311493, 18.490879>,  <14.364227, 18.233156, 18.720282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.684767, 18.311493, 18.490879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.744161, 18.703369, 18.544777>,  <13.779797, 18.938496, 18.577116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.744161, 18.703369, 18.544777>,  <13.684767, 18.311493, 18.490879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.744161, 18.703369, 18.544777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591167, 0.197163, -0.782079,
		-0.792763, 0.036471, 0.608437,
		0.148485, 0.979692, 0.134743,
		13.788706, 18.997276, 18.585199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.096372, 18.570639, 18.313957>,  <13.684767, 18.311493, 18.490879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.096372, 18.570639, 18.313957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348693, 18.878136, 18.271780>,  <13.500086, 19.062634, 18.246473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348693, 18.878136, 18.271780>,  <13.096372, 18.570639, 18.313957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.348693, 18.878136, 18.271780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365964, 0.174927, -0.914041,
		-0.684220, 0.615168, 0.391677,
		0.630804, 0.768745, -0.105441,
		13.537934, 19.108759, 18.240149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.746836, 19.194674, 18.121265>,  <13.096372, 18.570639, 18.313957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.746836, 19.194674, 18.121265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124396, 19.204319, 17.989527>,  <13.350933, 19.210106, 17.910484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124396, 19.204319, 17.989527>,  <12.746836, 19.194674, 18.121265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124396, 19.204319, 17.989527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318557, 0.329295, -0.888868,
		0.087018, 0.943919, 0.318503,
		0.943901, 0.024114, -0.329347,
		13.407567, 19.211554, 17.890722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.795465, 19.847359, 17.873919>,  <12.746836, 19.194674, 18.121265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.795465, 19.847359, 17.873919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.098786, 19.649963, 17.703533>,  <13.280779, 19.531527, 17.601301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.098786, 19.649963, 17.703533>,  <12.795465, 19.847359, 17.873919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.098786, 19.649963, 17.703533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240667, 0.395339, -0.886446,
		0.605852, 0.774709, 0.181020,
		0.758302, -0.493490, -0.425964,
		13.326277, 19.501917, 17.575745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069068, 20.261806, 17.407455>,  <12.795465, 19.847359, 17.873919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069068, 20.261806, 17.407455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.222548, 19.918545, 17.271019>,  <13.314636, 19.712587, 17.189157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.222548, 19.918545, 17.271019>,  <13.069068, 20.261806, 17.407455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.222548, 19.918545, 17.271019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133896, 0.313759, -0.940014,
		0.913699, 0.406355, 0.005486,
		0.383701, -0.858156, -0.341091,
		13.337659, 19.661098, 17.168692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.591134, 20.392517, 16.910872>,  <13.069068, 20.261806, 17.407455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.591134, 20.392517, 16.910872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457046, 20.023220, 16.835772>,  <13.376593, 19.801641, 16.790712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457046, 20.023220, 16.835772>,  <13.591134, 20.392517, 16.910872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.457046, 20.023220, 16.835772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114346, 0.237676, -0.964591,
		0.935175, -0.301882, -0.185243,
		-0.335220, -0.923243, -0.187750,
		13.356480, 19.746246, 16.779446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.822734, 20.286957, 16.233616>,  <13.591134, 20.392517, 16.910872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.822734, 20.286957, 16.233616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561910, 19.985565, 16.267286>,  <13.405415, 19.804729, 16.287489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561910, 19.985565, 16.267286>,  <13.822734, 20.286957, 16.233616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561910, 19.985565, 16.267286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231816, 0.092430, -0.968358,
		0.721857, -0.650942, -0.234939,
		-0.652061, -0.753479, 0.084177,
		13.366291, 19.759521, 16.292540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.905123, 19.924894, 15.632938>,  <13.822734, 20.286957, 16.233616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.905123, 19.924894, 15.632938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544747, 19.831726, 15.779394>,  <13.328522, 19.775826, 15.867268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544747, 19.831726, 15.779394>,  <13.905123, 19.924894, 15.632938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544747, 19.831726, 15.779394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417153, 0.232407, -0.878619,
		0.119553, -0.944318, -0.306547,
		-0.900939, -0.232919, 0.366140,
		13.274466, 19.761848, 15.889235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.717192, 19.477446, 15.110059>,  <13.905123, 19.924894, 15.632938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.717192, 19.477446, 15.110059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372293, 19.549480, 15.299414>,  <13.165353, 19.592701, 15.413027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372293, 19.549480, 15.299414>,  <13.717192, 19.477446, 15.110059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.372293, 19.549480, 15.299414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441648, 0.190205, -0.876795,
		-0.247939, -0.965086, -0.084470,
		-0.862249, 0.180085, 0.473387,
		13.113618, 19.603506, 15.441430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.261304, 19.119946, 14.744063>,  <13.717192, 19.477446, 15.110059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.261304, 19.119946, 14.744063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043250, 19.385124, 14.949326>,  <12.912418, 19.544231, 15.072483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043250, 19.385124, 14.949326>,  <13.261304, 19.119946, 14.744063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.043250, 19.385124, 14.949326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592875, 0.127911, -0.795071,
		-0.592730, -0.737657, 0.323317,
		-0.545134, 0.662949, 0.513155,
		12.879710, 19.584009, 15.103272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.512450, 18.948013, 14.666574>,  <13.261304, 19.119946, 14.744063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.512450, 18.948013, 14.666574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.486770, 19.334015, 14.768272>,  <12.471361, 19.565617, 14.829291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.486770, 19.334015, 14.768272>,  <12.512450, 18.948013, 14.666574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.486770, 19.334015, 14.768272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617455, 0.161736, -0.769799,
		-0.783982, -0.206407, 0.585464,
		-0.064201, 0.965006, 0.254246,
		12.467509, 19.623516, 14.844546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.835727, 19.012180, 14.805532>,  <12.512450, 18.948013, 14.666574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.835727, 19.012180, 14.805532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.968190, 19.386639, 14.758263>,  <12.047668, 19.611313, 14.729901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.968190, 19.386639, 14.758263>,  <11.835727, 19.012180, 14.805532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.968190, 19.386639, 14.758263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628322, 0.125346, -0.767789,
		-0.703950, 0.328510, 0.629710,
		0.331158, 0.936146, -0.118173,
		12.067537, 19.667482, 14.722811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.173087, 19.410727, 14.757342>,  <11.835727, 19.012180, 14.805532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.173087, 19.410727, 14.757342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.468638, 19.623436, 14.591801>,  <11.645969, 19.751062, 14.492476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.468638, 19.623436, 14.591801>,  <11.173087, 19.410727, 14.757342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.468638, 19.623436, 14.591801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473926, -0.026490, -0.880166,
		-0.479013, 0.846471, 0.232449,
		0.738878, 0.531774, -0.413854,
		11.690302, 19.782969, 14.467645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.767768, 19.982639, 14.350591>,  <11.173087, 19.410727, 14.757342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.767768, 19.982639, 14.350591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.135459, 19.979824, 14.193125>,  <11.356073, 19.978136, 14.098645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.135459, 19.979824, 14.193125>,  <10.767768, 19.982639, 14.350591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.135459, 19.979824, 14.193125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391377, 0.092760, -0.915543,
		0.042958, 0.995664, 0.082513,
		0.919227, -0.007036, -0.393665,
		11.411227, 19.977713, 14.075026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.722459, 20.432480, 13.799542>,  <10.767768, 19.982639, 14.350591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.722459, 20.432480, 13.799542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.054280, 20.222729, 13.722734>,  <11.253373, 20.096878, 13.676650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.054280, 20.222729, 13.722734>,  <10.722459, 20.432480, 13.799542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.054280, 20.222729, 13.722734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282246, -0.097009, -0.954425,
		0.481850, 0.845942, -0.228478,
		0.829553, -0.524377, -0.192020,
		11.303146, 20.065416, 13.665129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.053847, 20.663269, 13.170923>,  <10.722459, 20.432480, 13.799542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.053847, 20.663269, 13.170923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.178769, 20.284904, 13.206060>,  <11.253722, 20.057886, 13.227142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.178769, 20.284904, 13.206060>,  <11.053847, 20.663269, 13.170923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.178769, 20.284904, 13.206060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194409, -0.154148, -0.968733,
		0.929877, 0.285462, -0.232035,
		0.312304, -0.945913, 0.087842,
		11.272460, 20.001131, 13.232413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.494479, 20.618265, 12.670339>,  <11.053847, 20.663269, 13.170923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.494479, 20.618265, 12.670339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375228, 20.244415, 12.747897>,  <11.303678, 20.020105, 12.794433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375228, 20.244415, 12.747897>,  <11.494479, 20.618265, 12.670339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.375228, 20.244415, 12.747897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022575, -0.209981, -0.977445,
		0.954259, -0.287026, 0.083701,
		-0.298128, -0.934625, 0.193897,
		11.285789, 19.964027, 12.806067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.889207, 20.312309, 12.185133>,  <11.494479, 20.618265, 12.670339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.889207, 20.312309, 12.185133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631778, 20.026711, 12.295423>,  <11.477321, 19.855350, 12.361596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631778, 20.026711, 12.295423>,  <11.889207, 20.312309, 12.185133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631778, 20.026711, 12.295423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053348, -0.401212, -0.914430,
		0.763524, -0.573793, 0.296299,
		-0.643573, -0.713996, 0.275724,
		11.438706, 19.812511, 12.378139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.125112, 19.647728, 11.936543>,  <11.889207, 20.312309, 12.185133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.125112, 19.647728, 11.936543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.730863, 19.606480, 11.990082>,  <11.494313, 19.581730, 12.022205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.730863, 19.606480, 11.990082>,  <12.125112, 19.647728, 11.936543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.730863, 19.606480, 11.990082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052995, -0.563523, -0.824399,
		0.160441, -0.819639, 0.549955,
		-0.985622, -0.103123, 0.133849,
		11.435176, 19.575542, 12.030236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.010329, 18.838175, 11.907826>,  <12.125112, 19.647728, 11.936543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.010329, 18.838175, 11.907826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.639871, 18.979618, 11.855347>,  <11.417596, 19.064484, 11.823858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.639871, 18.979618, 11.855347>,  <12.010329, 18.838175, 11.907826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.639871, 18.979618, 11.855347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131452, -0.628674, -0.766478,
		-0.353516, -0.692625, 0.628727,
		-0.926147, 0.353610, -0.131200,
		11.362027, 19.085701, 11.815987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.542041, 18.242994, 11.843717>,  <12.010329, 18.838175, 11.907826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.542041, 18.242994, 11.843717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.374980, 18.561012, 11.667775>,  <11.274744, 18.751823, 11.562210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.374980, 18.561012, 11.667775>,  <11.542041, 18.242994, 11.843717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.374980, 18.561012, 11.667775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093886, -0.519267, -0.849439,
		-0.903743, -0.313473, 0.291517,
		-0.417652, 0.795044, -0.439854,
		11.249684, 18.799526, 11.535819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.068449, 17.922760, 11.525268>,  <11.542041, 18.242994, 11.843717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.068449, 17.922760, 11.525268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.091411, 18.288860, 11.365760>,  <11.105187, 18.508520, 11.270055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.091411, 18.288860, 11.365760>,  <11.068449, 17.922760, 11.525268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.091411, 18.288860, 11.365760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063560, -0.401968, -0.913445,
		-0.996326, 0.027091, -0.081248,
		0.057405, 0.915253, -0.398769,
		11.108632, 18.563437, 11.246129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.439347, 18.018547, 10.971735>,  <11.068449, 17.922760, 11.525268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.439347, 18.018547, 10.971735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.742503, 18.253120, 10.857402>,  <10.924397, 18.393864, 10.788802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.742503, 18.253120, 10.857402>,  <10.439347, 18.018547, 10.971735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.742503, 18.253120, 10.857402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089501, -0.340529, -0.935965,
		-0.646213, 0.734941, -0.205597,
		0.757890, 0.586432, -0.285832,
		10.969871, 18.429050, 10.771652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.188090, 18.029915, 10.327094>,  <10.439347, 18.018547, 10.971735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.188090, 18.029915, 10.327094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.549781, 18.200703, 10.323660>,  <10.766795, 18.303175, 10.321600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.549781, 18.200703, 10.323660>,  <10.188090, 18.029915, 10.327094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.549781, 18.200703, 10.323660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170642, -0.379663, -0.909251,
		-0.391481, 0.820703, -0.416160,
		0.904226, 0.426969, -0.008584,
		10.821049, 18.328793, 10.321085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.289962, 18.311272, 9.690948>,  <10.188090, 18.029915, 10.327094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.289962, 18.311272, 9.690948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.659108, 18.275246, 9.840723>,  <10.880596, 18.253630, 9.930589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.659108, 18.275246, 9.840723>,  <10.289962, 18.311272, 9.690948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.659108, 18.275246, 9.840723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352458, -0.194323, -0.915430,
		0.155210, 0.976794, -0.147590,
		0.922867, -0.090065, 0.374440,
		10.935968, 18.248226, 9.953055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.664968, 18.478466, 9.038031>,  <10.289962, 18.311272, 9.690948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.664968, 18.478466, 9.038031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885133, 18.291843, 9.314978>,  <11.017231, 18.179871, 9.481146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885133, 18.291843, 9.314978>,  <10.664968, 18.478466, 9.038031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885133, 18.291843, 9.314978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446664, -0.536075, -0.716320,
		0.705366, 0.703525, -0.086667,
		0.550410, -0.466557, 0.692368,
		11.050256, 18.151876, 9.522688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.420380, 18.511959, 8.924155>,  <10.664968, 18.478466, 9.038031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.420380, 18.511959, 8.924155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.338094, 18.170761, 9.116021>,  <11.288722, 17.966042, 9.231140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.338094, 18.170761, 9.116021>,  <11.420380, 18.511959, 8.924155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.338094, 18.170761, 9.116021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567608, -0.503280, -0.651560,
		0.797184, 0.138225, 0.587700,
		-0.205716, -0.852997, 0.479664,
		11.276379, 17.914862, 9.259920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.315885, 18.869295, 8.246848>,  <11.420380, 18.511959, 8.924155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.315885, 18.869295, 8.246848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.361558, 18.895519, 7.850330>,  <11.388962, 18.911253, 7.612420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.361558, 18.895519, 7.850330>,  <11.315885, 18.869295, 8.246848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.361558, 18.895519, 7.850330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980741, -0.151718, -0.123001,
		-0.158462, 0.986247, 0.046973,
		0.114183, 0.065559, -0.991294,
		11.395813, 18.915188, 7.552942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769487, 19.419693, 8.006547>,  <11.315885, 18.869295, 8.246848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769487, 19.419693, 8.006547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.887607, 19.138165, 7.748111>,  <10.958478, 18.969248, 7.593049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.887607, 19.138165, 7.748111>,  <10.769487, 19.419693, 8.006547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.887607, 19.138165, 7.748111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939451, -0.090840, -0.330423,
		0.173868, 0.704543, -0.688033,
		0.295298, -0.703823, -0.646090,
		10.976196, 18.927017, 7.554284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.433686, 19.478971, 7.284025>,  <10.769487, 19.419693, 8.006547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.433686, 19.478971, 7.284025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.554498, 19.097733, 7.291841>,  <10.626985, 18.868988, 7.296530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.554498, 19.097733, 7.291841>,  <10.433686, 19.478971, 7.284025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.554498, 19.097733, 7.291841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891385, -0.289619, -0.348645,
		0.337952, 0.087884, -0.937051,
		0.302028, -0.953099, 0.019539,
		10.645106, 18.811804, 7.297702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.304171, 19.058865, 6.650974>,  <10.433686, 19.478971, 7.284025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.304171, 19.058865, 6.650974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.335521, 18.789665, 6.945167>,  <10.354331, 18.628145, 7.121682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.335521, 18.789665, 6.945167>,  <10.304171, 19.058865, 6.650974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.335521, 18.789665, 6.945167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803568, -0.479286, -0.352935,
		0.590030, -0.563348, -0.578363,
		0.078376, -0.672996, 0.735482,
		10.359034, 18.587767, 7.165811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.396847, 18.353354, 6.435309>,  <10.304171, 19.058865, 6.650974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.396847, 18.353354, 6.435309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.197633, 18.358223, 6.782138>,  <10.078104, 18.361145, 6.990235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.197633, 18.358223, 6.782138>,  <10.396847, 18.353354, 6.435309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197633, 18.358223, 6.782138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740812, -0.525701, -0.418133,
		0.450731, -0.850582, 0.270835,
		-0.498035, 0.012172, 0.867072,
		10.048223, 18.361876, 7.042259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.216733, 17.630630, 6.666391>,  <10.396847, 18.353354, 6.435309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.216733, 17.630630, 6.666391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959369, 17.908207, 6.795676>,  <9.804950, 18.074753, 6.873248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959369, 17.908207, 6.795676>,  <10.216733, 17.630630, 6.666391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.959369, 17.908207, 6.795676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762933, -0.546595, -0.345206,
		-0.062886, -0.468700, 0.881116,
		-0.643411, 0.693942, 0.323214,
		9.766345, 18.116390, 6.892640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.633026, 17.737375, 7.299161>,  <10.216733, 17.630630, 6.666391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.633026, 17.737375, 7.299161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.444133, 17.769577, 7.650277>,  <10.330797, 17.788898, 7.860947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.444133, 17.769577, 7.650277>,  <10.633026, 17.737375, 7.299161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.444133, 17.769577, 7.650277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460060, -0.871938, -0.167536,
		0.751892, -0.482952, 0.448794,
		-0.472232, 0.080503, 0.877790,
		10.302464, 17.793728, 7.913614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.561814, 17.097445, 7.491860>,  <10.633026, 17.737375, 7.299161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.561814, 17.097445, 7.491860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.281102, 17.287148, 7.704494>,  <10.112675, 17.400969, 7.832075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.281102, 17.287148, 7.704494>,  <10.561814, 17.097445, 7.491860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.281102, 17.287148, 7.704494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666618, -0.700342, -0.255229,
		0.251248, -0.533479, 0.807635,
		-0.701780, 0.474258, 0.531586,
		10.070568, 17.429424, 7.863970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.137513, 16.759457, 8.014454>,  <10.561814, 17.097445, 7.491860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.137513, 16.759457, 8.014454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.903220, 17.050789, 7.872212>,  <9.762644, 17.225588, 7.786868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.903220, 17.050789, 7.872212>,  <10.137513, 16.759457, 8.014454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.903220, 17.050789, 7.872212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733300, -0.663094, -0.150258,
		-0.345235, 0.172752, 0.922480,
		-0.585734, 0.728329, -0.355602,
		9.727500, 17.269287, 7.765532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.500994, 16.828091, 8.317211>,  <10.137513, 16.759457, 8.014454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.500994, 16.828091, 8.317211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.504281, 16.910522, 7.925811>,  <9.506253, 16.959982, 7.690970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.504281, 16.910522, 7.925811>,  <9.500994, 16.828091, 8.317211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.504281, 16.910522, 7.925811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668989, -0.726164, -0.158554,
		-0.743227, 0.655909, 0.131896,
		0.008219, 0.206079, -0.978501,
		9.506746, 16.972345, 7.632260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.797482, 16.677094, 8.107815>,  <9.500994, 16.828091, 8.317211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.797482, 16.677094, 8.107815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.088399, 16.648922, 7.834734>,  <9.262950, 16.632019, 7.670885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.088399, 16.648922, 7.834734>,  <8.797482, 16.677094, 8.107815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.088399, 16.648922, 7.834734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438351, -0.813069, -0.383103,
		-0.528102, 0.577892, -0.622213,
		0.727294, -0.070431, -0.682703,
		9.306587, 16.627792, 7.629923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.519187, 16.138119, 7.698345>,  <8.797482, 16.677094, 8.107815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.519187, 16.138119, 7.698345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.879067, 16.191833, 7.532210>,  <9.094995, 16.224062, 7.432529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.879067, 16.191833, 7.532210>,  <8.519187, 16.138119, 7.698345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.879067, 16.191833, 7.532210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139732, -0.812830, -0.565493,
		-0.413537, 0.566810, -0.712540,
		0.899701, 0.134288, -0.415337,
		9.148978, 16.232121, 7.407609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.520400, 16.194674, 7.020473>,  <8.519187, 16.138119, 7.698345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.520400, 16.194674, 7.020473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.861249, 16.032516, 7.152864>,  <9.065759, 15.935223, 7.232298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.861249, 16.032516, 7.152864>,  <8.520400, 16.194674, 7.020473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.861249, 16.032516, 7.152864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215906, -0.848414, -0.483299,
		0.476730, 0.340370, -0.810479,
		0.852122, -0.405391, 0.330977,
		9.116886, 15.910899, 7.252156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.088786, 15.994421, 6.511339>,  <8.520400, 16.194674, 7.020473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.088786, 15.994421, 6.511339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.037753, 15.761951, 6.832826>,  <9.007133, 15.622470, 7.025718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.037753, 15.761951, 6.832826>,  <9.088786, 15.994421, 6.511339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.037753, 15.761951, 6.832826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396802, -0.712753, -0.578386,
		0.908994, -0.392709, -0.139676,
		-0.127583, -0.581174, 0.803716,
		8.999478, 15.587600, 7.073941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.474697, 15.285069, 6.568846>,  <9.088786, 15.994421, 6.511339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.474697, 15.285069, 6.568846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112538, 15.314491, 6.736103>,  <8.895243, 15.332145, 6.836458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112538, 15.314491, 6.736103>,  <9.474697, 15.285069, 6.568846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.112538, 15.314491, 6.736103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377299, -0.591009, -0.712990,
		0.194681, -0.803304, 0.562851,
		-0.905398, 0.073557, 0.418144,
		8.840919, 15.336558, 6.861546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.304382, 14.693044, 6.873747>,  <9.474697, 15.285069, 6.568846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.304382, 14.693044, 6.873747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.956611, 14.861675, 6.770702>,  <8.747948, 14.962854, 6.708876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.956611, 14.861675, 6.770702>,  <9.304382, 14.693044, 6.873747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.956611, 14.861675, 6.770702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256352, -0.830679, -0.494223,
		-0.422347, -0.363652, 0.830289,
		-0.869429, 0.421580, -0.257612,
		8.695782, 14.988150, 6.693419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.610074, 14.516788, 7.221547>,  <9.304382, 14.693044, 6.873747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.610074, 14.516788, 7.221547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.511735, 14.882404, 7.350598>,  <8.452732, 15.101774, 7.428029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.511735, 14.882404, 7.350598>,  <8.610074, 14.516788, 7.221547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.511735, 14.882404, 7.350598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108503, -0.304802, 0.946215,
		0.963217, 0.267630, -0.024241,
		-0.245847, 0.914040, 0.322629,
		8.437981, 15.156616, 7.447387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.978824, 14.759058, 7.933678>,  <8.610074, 14.516788, 7.221547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.978824, 14.759058, 7.933678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.626643, 14.946178, 7.902776>,  <8.415335, 15.058451, 7.884234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.626643, 14.946178, 7.902776>,  <8.978824, 14.759058, 7.933678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.626643, 14.946178, 7.902776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278522, -0.378429, 0.882733,
		0.383708, 0.798720, 0.463481,
		-0.880451, 0.467801, -0.077255,
		8.362508, 15.086519, 7.879599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.853474, 15.293550, 8.502091>,  <8.978824, 14.759058, 7.933678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.853474, 15.293550, 8.502091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.532075, 15.114616, 8.344975>,  <8.339235, 15.007257, 8.250704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.532075, 15.114616, 8.344975>,  <8.853474, 15.293550, 8.502091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.532075, 15.114616, 8.344975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208913, -0.405967, 0.889689,
		-0.557449, 0.796921, 0.232739,
		-0.803496, -0.447334, -0.392793,
		8.291026, 14.980416, 8.227137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.116255, 15.504600, 8.733077>,  <8.853474, 15.293550, 8.502091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.116255, 15.504600, 8.733077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.983855, 15.129040, 8.770823>,  <7.904415, 14.903704, 8.793470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.983855, 15.129040, 8.770823>,  <8.116255, 15.504600, 8.733077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.983855, 15.129040, 8.770823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747234, -0.199726, 0.633838,
		-0.576263, 0.280313, 0.767688,
		-0.331000, -0.938901, 0.094364,
		7.884555, 14.847369, 8.799131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.517690, 15.187893, 8.986673>,  <8.116255, 15.504600, 8.733077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.517690, 15.187893, 8.986673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.257827, 15.236134, 9.286914>,  <7.101909, 15.265078, 9.467058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.257827, 15.236134, 9.286914>,  <7.517690, 15.187893, 8.986673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.257827, 15.236134, 9.286914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589672, 0.543230, -0.597652,
		-0.479826, -0.830877, -0.281798,
		-0.649657, 0.120601, 0.750601,
		7.062930, 15.272314, 9.512094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.787860, 14.973454, 8.920044>,  <7.517690, 15.187893, 8.986673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.787860, 14.973454, 8.920044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.828055, 15.303288, 9.142743>,  <6.852172, 15.501187, 9.276362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.828055, 15.303288, 9.142743>,  <6.787860, 14.973454, 8.920044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.828055, 15.303288, 9.142743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606103, 0.494496, -0.622987,
		-0.789013, -0.274844, 0.549472,
		0.100488, 0.824582, 0.556747,
		6.858202, 15.550662, 9.309767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.149909, 15.480024, 8.878028>,  <6.787860, 14.973454, 8.920044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.149909, 15.480024, 8.878028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.433419, 15.745152, 8.974614>,  <6.603526, 15.904228, 9.032566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.433419, 15.745152, 8.974614>,  <6.149909, 15.480024, 8.878028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.433419, 15.745152, 8.974614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411356, 0.666415, -0.621834,
		-0.573080, 0.341413, 0.744994,
		0.708777, 0.662819, 0.241467,
		6.646052, 15.943997, 9.047054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.934783, 16.090672, 8.537709>,  <6.149909, 15.480024, 8.878028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.934783, 16.090672, 8.537709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.238471, 16.280537, 8.715823>,  <6.420684, 16.394457, 8.822691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.238471, 16.280537, 8.715823>,  <5.934783, 16.090672, 8.537709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.238471, 16.280537, 8.715823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329791, 0.870413, -0.365540,
		-0.561090, 0.130675, 0.817375,
		0.759221, 0.474664, 0.445284,
		6.466237, 16.422935, 8.849408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.741272, 16.483767, 9.102283>,  <5.934783, 16.090672, 8.537709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.741272, 16.483767, 9.102283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.059682, 16.636971, 8.914816>,  <6.250728, 16.728893, 8.802336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.059682, 16.636971, 8.914816>,  <5.741272, 16.483767, 9.102283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.059682, 16.636971, 8.914816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555006, 0.770825, -0.312726,
		0.241482, 0.509050, 0.826168,
		0.796025, 0.383010, -0.468666,
		6.298489, 16.751873, 8.774216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.911840, 16.948465, 9.548399>,  <5.741272, 16.483767, 9.102283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.911840, 16.948465, 9.548399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.925408, 16.915859, 9.149961>,  <5.933549, 16.896296, 8.910899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.925408, 16.915859, 9.149961>,  <5.911840, 16.948465, 9.548399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.925408, 16.915859, 9.149961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730809, 0.677835, -0.080358,
		0.681739, 0.730681, -0.036581,
		0.033920, -0.081517, -0.996095,
		5.935584, 16.891403, 8.851133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.950885, 17.597748, 9.147596>,  <5.911840, 16.948465, 9.548399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.950885, 17.597748, 9.147596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.804254, 17.387028, 8.840845>,  <5.716275, 17.260595, 8.656795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.804254, 17.387028, 8.840845>,  <5.950885, 17.597748, 9.147596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.804254, 17.387028, 8.840845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559216, 0.783507, -0.270912,
		0.743572, 0.329540, -0.581812,
		-0.366577, -0.526801, -0.766878,
		5.694280, 17.228987, 8.610782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.515325, 17.337347, 8.642541>,  <5.950885, 17.597748, 9.147596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.515325, 17.337347, 8.642541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.580874, 17.700481, 8.796932>,  <6.620204, 17.918362, 8.889567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.580874, 17.700481, 8.796932>,  <6.515325, 17.337347, 8.642541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.580874, 17.700481, 8.796932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068449, 0.400789, -0.913610,
		-0.984104, 0.123297, 0.127819,
		0.163874, 0.907836, 0.385978,
		6.630037, 17.972832, 8.912725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.236088, 17.971323, 8.306092>,  <6.515325, 17.337347, 8.642541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.236088, 17.971323, 8.306092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.548608, 18.182083, 8.439927>,  <6.736120, 18.308538, 8.520227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.548608, 18.182083, 8.439927>,  <6.236088, 17.971323, 8.306092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.548608, 18.182083, 8.439927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003633, 0.539893, -0.841726,
		-0.624145, 0.656425, 0.423733,
		0.781300, 0.526898, 0.334587,
		6.782998, 18.340153, 8.540303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.146460, 18.745735, 8.445936>,  <6.236088, 17.971323, 8.306092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.146460, 18.745735, 8.445936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.497584, 18.650761, 8.279530>,  <6.708259, 18.593777, 8.179686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.497584, 18.650761, 8.279530>,  <6.146460, 18.745735, 8.445936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.497584, 18.650761, 8.279530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231096, 0.550819, -0.801993,
		0.419572, 0.800139, 0.428645,
		0.877812, -0.237435, -0.416017,
		6.760928, 18.579531, 8.154724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.651300, 19.037426, 7.955557>,  <6.146460, 18.745735, 8.445936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.651300, 19.037426, 7.955557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.719459, 19.238117, 8.294787>,  <5.760354, 19.358532, 8.498325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.719459, 19.238117, 8.294787>,  <5.651300, 19.037426, 7.955557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.719459, 19.238117, 8.294787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983813, 0.135075, 0.117758,
		-0.055472, -0.854414, 0.516623,
		0.170397, 0.501729, 0.848077,
		5.770577, 19.388636, 8.549211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.147991, 18.756844, 8.348146>,  <5.651300, 19.037426, 7.955557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.147991, 18.756844, 8.348146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.232465, 19.119709, 8.493724>,  <5.283149, 19.337429, 8.581070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.232465, 19.119709, 8.493724>,  <5.147991, 18.756844, 8.348146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.232465, 19.119709, 8.493724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964069, 0.131927, 0.230577,
		0.161158, -0.399558, 0.902431,
		0.211184, 0.907165, 0.363941,
		5.295820, 19.391859, 8.602907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.026443, 18.852705, 9.050057>,  <5.147991, 18.756844, 8.348146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.026443, 18.852705, 9.050057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.967372, 19.185097, 8.835520>,  <4.931929, 19.384531, 8.706798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.967372, 19.185097, 8.835520>,  <5.026443, 18.852705, 9.050057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.967372, 19.185097, 8.835520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970769, -0.018046, 0.239335,
		0.189203, 0.556011, 0.809354,
		-0.147679, 0.830979, -0.536344,
		4.923069, 19.434391, 8.674617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.453060, 18.620953, 9.133979>,  <5.026443, 18.852705, 9.050057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.453060, 18.620953, 9.133979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.283885, 18.659401, 9.494397>,  <4.182380, 18.682470, 9.710649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.283885, 18.659401, 9.494397>,  <4.453060, 18.620953, 9.133979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.283885, 18.659401, 9.494397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116940, 0.980254, -0.159460,
		-0.898582, -0.172809, -0.403345,
		-0.422937, 0.096120, 0.901047,
		4.157004, 18.688236, 9.764711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.466221, 17.634245, 17.302032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.772331, 17.832588, 17.137848>,  <18.955997, 17.951593, 17.039337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.772331, 17.832588, 17.137848>,  <18.466221, 17.634245, 17.302032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772331, 17.832588, 17.137848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447845, -0.047890, -0.892828,
		-0.462371, 0.867083, 0.185418,
		0.765276, 0.495856, -0.410462,
		19.001915, 17.981344, 17.014709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.187706, 18.142204, 16.886402>,  <18.466221, 17.634245, 17.302032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.187706, 18.142204, 16.886402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.560249, 18.110867, 16.744175>,  <18.783775, 18.092064, 16.658838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.560249, 18.110867, 16.744175>,  <18.187706, 18.142204, 16.886402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.560249, 18.110867, 16.744175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348964, 0.086558, -0.933130,
		0.103883, 0.993162, 0.053277,
		0.931361, -0.078345, -0.355569,
		18.839657, 18.087362, 16.637505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.271133, 18.772528, 16.436604>,  <18.187706, 18.142204, 16.886402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.271133, 18.772528, 16.436604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.515659, 18.468971, 16.346823>,  <18.662374, 18.286839, 16.292953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.515659, 18.468971, 16.346823>,  <18.271133, 18.772528, 16.436604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515659, 18.468971, 16.346823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364295, -0.018065, -0.931108,
		0.702554, 0.650969, -0.287503,
		0.611316, -0.758890, -0.224452,
		18.699055, 18.241304, 16.279488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640089, 18.957092, 15.746764>,  <18.271133, 18.772528, 16.436604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640089, 18.957092, 15.746764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.673115, 18.562065, 15.800264>,  <18.692930, 18.325048, 15.832364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.673115, 18.562065, 15.800264>,  <18.640089, 18.957092, 15.746764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673115, 18.562065, 15.800264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352456, -0.154471, -0.922992,
		0.932179, 0.029064, -0.360828,
		0.082563, -0.987570, 0.133750,
		18.697884, 18.265795, 15.840389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.118164, 18.765528, 15.201726>,  <18.640089, 18.957092, 15.746764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.118164, 18.765528, 15.201726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.904415, 18.448372, 15.318871>,  <18.776165, 18.258078, 15.389157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.904415, 18.448372, 15.318871>,  <19.118164, 18.765528, 15.201726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.904415, 18.448372, 15.318871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401871, -0.066485, -0.913279,
		0.743603, -0.605724, -0.283112,
		-0.534373, -0.792892, 0.292862,
		18.744102, 18.210505, 15.406729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.207207, 18.312199, 14.618374>,  <19.118164, 18.765528, 15.201726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.207207, 18.312199, 14.618374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.886478, 18.176151, 14.814905>,  <18.694042, 18.094522, 14.932824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.886478, 18.176151, 14.814905>,  <19.207207, 18.312199, 14.618374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.886478, 18.176151, 14.814905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417978, -0.268390, -0.867906,
		0.427059, -0.901269, 0.073038,
		-0.801820, -0.340118, 0.491329,
		18.645933, 18.074116, 14.962304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954472, 17.834545, 14.151695>,  <19.207207, 18.312199, 14.618374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954472, 17.834545, 14.151695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.648075, 17.865551, 14.406960>,  <18.464237, 17.884153, 14.560118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.648075, 17.865551, 14.406960>,  <18.954472, 17.834545, 14.151695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.648075, 17.865551, 14.406960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642768, -0.108296, -0.758367,
		0.010330, -0.991092, 0.132775,
		-0.765991, 0.077510, 0.638161,
		18.418278, 17.888805, 14.598408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674297, 17.219618, 14.182419>,  <18.954472, 17.834545, 14.151695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.674297, 17.219618, 14.182419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.373230, 17.449787, 14.310406>,  <18.192591, 17.587889, 14.387198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.373230, 17.449787, 14.310406>,  <18.674297, 17.219618, 14.182419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373230, 17.449787, 14.310406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532360, -0.245927, -0.810008,
		-0.387411, -0.780003, 0.491435,
		-0.752666, 0.575426, 0.319967,
		18.147430, 17.622414, 14.406396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037115, 16.926119, 14.123543>,  <18.674297, 17.219618, 14.182419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037115, 16.926119, 14.123543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.932487, 17.311176, 14.151537>,  <17.869711, 17.542212, 14.168334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.932487, 17.311176, 14.151537>,  <18.037115, 16.926119, 14.123543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932487, 17.311176, 14.151537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734516, -0.151492, -0.661465,
		-0.626153, -0.224424, 0.746703,
		-0.261568, 0.962644, 0.069986,
		17.854017, 17.599970, 14.172533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233912, 17.011454, 14.071345>,  <18.037115, 16.926119, 14.123543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233912, 17.011454, 14.071345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.374668, 17.375862, 13.985357>,  <17.459122, 17.594507, 13.933764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.374668, 17.375862, 13.985357>,  <17.233912, 17.011454, 14.071345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.374668, 17.375862, 13.985357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733104, 0.125439, -0.668448,
		-0.582004, 0.392818, 0.712015,
		0.351893, 0.911021, -0.214971,
		17.480236, 17.649168, 13.920866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623993, 17.407940, 13.991163>,  <17.233912, 17.011454, 14.071345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.623993, 17.407940, 13.991163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.922028, 17.604256, 13.810509>,  <17.100847, 17.722044, 13.702116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.922028, 17.604256, 13.810509>,  <16.623993, 17.407940, 13.991163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922028, 17.604256, 13.810509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606327, 0.216300, -0.765233,
		-0.277878, 0.844003, 0.458740,
		0.745085, 0.490788, -0.451637,
		17.145554, 17.751492, 13.675017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330214, 18.046570, 13.739116>,  <16.623993, 17.407940, 13.991163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330214, 18.046570, 13.739116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.661991, 18.001148, 13.520344>,  <16.861057, 17.973894, 13.389081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.661991, 18.001148, 13.520344>,  <16.330214, 18.046570, 13.739116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661991, 18.001148, 13.520344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531039, 0.143420, -0.835122,
		0.173274, 0.983125, 0.058656,
		0.829442, -0.113556, -0.546929,
		16.910824, 17.967081, 13.356265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285709, 18.587858, 13.286324>,  <16.330214, 18.046570, 13.739116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.285709, 18.587858, 13.286324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.536350, 18.326302, 13.116714>,  <16.686735, 18.169369, 13.014949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.536350, 18.326302, 13.116714>,  <16.285709, 18.587858, 13.286324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536350, 18.326302, 13.116714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388363, 0.209722, -0.897324,
		0.675679, 0.726941, -0.122534,
		0.626604, -0.653891, -0.424021,
		16.724331, 18.130135, 12.989508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443369, 18.851997, 12.651052>,  <16.285709, 18.587858, 13.286324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443369, 18.851997, 12.651052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.564503, 18.473923, 12.602206>,  <16.637182, 18.247078, 12.572899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.564503, 18.473923, 12.602206>,  <16.443369, 18.851997, 12.651052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.564503, 18.473923, 12.602206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336383, 0.013880, -0.941623,
		0.891705, 0.326233, -0.313741,
		0.302834, -0.945188, -0.122116,
		16.655354, 18.190367, 12.565572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801117, 18.800598, 12.012448>,  <16.443369, 18.851997, 12.651052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801117, 18.800598, 12.012448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.685165, 18.430538, 12.110480>,  <16.615595, 18.208502, 12.169299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.685165, 18.430538, 12.110480>,  <16.801117, 18.800598, 12.012448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.685165, 18.430538, 12.110480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320106, -0.147603, -0.935813,
		0.901943, -0.349725, -0.253360,
		-0.289880, -0.925152, 0.245079,
		16.598202, 18.152992, 12.184004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047068, 18.496059, 11.505181>,  <16.801117, 18.800598, 12.012448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047068, 18.496059, 11.505181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.772224, 18.248764, 11.657845>,  <16.607319, 18.100386, 11.749443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.772224, 18.248764, 11.657845>,  <17.047068, 18.496059, 11.505181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772224, 18.248764, 11.657845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282075, -0.257104, -0.924300,
		0.669566, -0.742750, 0.002268,
		-0.687107, -0.618240, 0.381659,
		16.566092, 18.063292, 11.772343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140673, 17.965506, 11.114107>,  <17.047068, 18.496059, 11.505181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140673, 17.965506, 11.114107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.772102, 17.924015, 11.263890>,  <16.550961, 17.899120, 11.353760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.772102, 17.924015, 11.263890>,  <17.140673, 17.965506, 11.114107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772102, 17.924015, 11.263890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314412, -0.367204, -0.875389,
		0.228302, -0.924339, 0.305738,
		-0.921424, -0.103725, 0.374457,
		16.495674, 17.892899, 11.376227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812601, 17.329865, 10.698500>,  <17.140673, 17.965506, 11.114107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812601, 17.329865, 10.698500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.526051, 17.539196, 10.883080>,  <16.354120, 17.664795, 10.993827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.526051, 17.539196, 10.883080>,  <16.812601, 17.329865, 10.698500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526051, 17.539196, 10.883080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627691, -0.194616, -0.753743,
		-0.304651, -0.829608, 0.467908,
		-0.716374, 0.523331, 0.461447,
		16.311138, 17.696194, 11.021514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280806, 16.907270, 10.842459>,  <16.812601, 17.329865, 10.698500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.280806, 16.907270, 10.842459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.132305, 17.278378, 10.827402>,  <16.043205, 17.501041, 10.818368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.132305, 17.278378, 10.827402>,  <16.280806, 16.907270, 10.842459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.132305, 17.278378, 10.827402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521062, -0.241718, -0.818576,
		-0.768548, -0.284285, 0.573164,
		-0.371253, 0.927768, -0.037641,
		16.020929, 17.556707, 10.816110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507137, 16.799200, 10.874054>,  <16.280806, 16.907270, 10.842459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507137, 16.799200, 10.874054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.495397, 17.177544, 10.744754>,  <15.488353, 17.404551, 10.667173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.495397, 17.177544, 10.744754>,  <15.507137, 16.799200, 10.874054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495397, 17.177544, 10.744754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598831, -0.275571, -0.751972,
		-0.800337, 0.171501, 0.574498,
		-0.029351, 0.945858, -0.323250,
		15.486591, 17.461302, 10.647779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.798249, 16.894955, 10.715796>,  <15.507137, 16.799200, 10.874054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.798249, 16.894955, 10.715796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.000176, 17.178970, 10.519429>,  <15.121333, 17.349380, 10.401609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.000176, 17.178970, 10.519429>,  <14.798249, 16.894955, 10.715796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.000176, 17.178970, 10.519429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678772, -0.024846, -0.733929,
		-0.533317, 0.703722, 0.469413,
		0.504818, 0.710041, -0.490918,
		15.151622, 17.391983, 10.372154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.333875, 17.364037, 10.361259>,  <14.798249, 16.894955, 10.715796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.333875, 17.364037, 10.361259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.664058, 17.388287, 10.136780>,  <14.862167, 17.402836, 10.002091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.664058, 17.388287, 10.136780>,  <14.333875, 17.364037, 10.361259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.664058, 17.388287, 10.136780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540079, -0.204248, -0.816454,
		-0.164121, 0.977040, -0.135857,
		0.825457, 0.060624, -0.561200,
		14.911695, 17.406473, 9.968420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.670510, 17.339630, 10.521593>,  <14.333875, 17.364037, 10.361259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.670510, 17.339630, 10.521593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.455415, 17.003654, 10.492361>,  <13.326357, 16.802069, 10.474822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.455415, 17.003654, 10.492361>,  <13.670510, 17.339630, 10.521593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455415, 17.003654, 10.492361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055335, -0.121654, 0.991029,
		-0.841293, 0.528872, 0.111896,
		-0.537740, -0.839938, -0.073081,
		13.294093, 16.751673, 10.470437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.037740, 17.480513, 10.858512>,  <13.670510, 17.339630, 10.521593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.037740, 17.480513, 10.858512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.078576, 17.082603, 10.858665>,  <13.103078, 16.843857, 10.858758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.078576, 17.082603, 10.858665>,  <13.037740, 17.480513, 10.858512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.078576, 17.082603, 10.858665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116827, -0.011607, 0.993085,
		-0.987891, -0.101429, -0.117402,
		0.102090, -0.994775, 0.000384,
		13.109203, 16.784170, 10.858781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.545372, 17.276041, 11.411901>,  <13.037740, 17.480513, 10.858512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.545372, 17.276041, 11.411901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.825423, 16.998024, 11.346501>,  <12.993454, 16.831213, 11.307261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.825423, 16.998024, 11.346501>,  <12.545372, 17.276041, 11.411901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825423, 16.998024, 11.346501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073961, -0.157158, 0.984800,
		-0.710175, -0.701580, -0.058625,
		0.700129, -0.695044, -0.163500,
		13.035462, 16.789511, 11.297451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446125, 16.767597, 11.962023>,  <12.545372, 17.276041, 11.411901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446125, 16.767597, 11.962023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.811543, 16.674400, 11.828669>,  <13.030795, 16.618483, 11.748656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.811543, 16.674400, 11.828669>,  <12.446125, 16.767597, 11.962023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.811543, 16.674400, 11.828669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331328, -0.049120, 0.942236,
		-0.235911, -0.971237, 0.032324,
		0.913546, -0.232993, -0.333386,
		13.085608, 16.604502, 11.728653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.587073, 16.236099, 12.358622>,  <12.446125, 16.767597, 11.962023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.587073, 16.236099, 12.358622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.944013, 16.349926, 12.218488>,  <13.158176, 16.418222, 12.134408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.944013, 16.349926, 12.218488>,  <12.587073, 16.236099, 12.358622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.944013, 16.349926, 12.218488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348603, 0.058483, 0.935444,
		0.286687, -0.956870, -0.047014,
		0.892349, 0.284569, -0.350334,
		13.211718, 16.435297, 12.113387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.029568, 15.836180, 12.778839>,  <12.587073, 16.236099, 12.358622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.029568, 15.836180, 12.778839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.253078, 16.131660, 12.628058>,  <13.387183, 16.308949, 12.537590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.253078, 16.131660, 12.628058>,  <13.029568, 15.836180, 12.778839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.253078, 16.131660, 12.628058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537551, 0.023505, 0.842904,
		0.631514, -0.673624, -0.383955,
		0.558775, 0.738701, -0.376951,
		13.420710, 16.353271, 12.514973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.682320, 15.621042, 12.906134>,  <13.029568, 15.836180, 12.778839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.682320, 15.621042, 12.906134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.726100, 16.013741, 12.843915>,  <13.752368, 16.249359, 12.806583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.726100, 16.013741, 12.843915>,  <13.682320, 15.621042, 12.906134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.726100, 16.013741, 12.843915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558096, 0.068797, 0.826920,
		0.822527, -0.177316, -0.540379,
		0.109450, 0.981746, -0.155547,
		13.758935, 16.308264, 12.797251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.413685, 15.757085, 12.905116>,  <13.682320, 15.621042, 12.906134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.413685, 15.757085, 12.905116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.222796, 16.103340, 12.965687>,  <14.108264, 16.311094, 13.002029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.222796, 16.103340, 12.965687>,  <14.413685, 15.757085, 12.905116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222796, 16.103340, 12.965687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551838, 0.161088, 0.818245,
		0.683912, 0.474046, -0.554567,
		-0.477220, 0.865639, 0.151426,
		14.079630, 16.363031, 13.011115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.015160, 16.257952, 12.906778>,  <14.413685, 15.757085, 12.905116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.015160, 16.257952, 12.906778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.699290, 16.396317, 13.109465>,  <14.509768, 16.479336, 13.231076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.699290, 16.396317, 13.109465>,  <15.015160, 16.257952, 12.906778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.699290, 16.396317, 13.109465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592571, 0.215996, 0.776019,
		0.158985, 0.913067, -0.375543,
		-0.789673, 0.345911, 0.506717,
		14.462388, 16.500090, 13.261479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275296, 16.888464, 13.210708>,  <15.015160, 16.257952, 12.906778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275296, 16.888464, 13.210708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.944709, 16.826199, 13.427122>,  <14.746356, 16.788839, 13.556971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.944709, 16.826199, 13.427122>,  <15.275296, 16.888464, 13.210708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944709, 16.826199, 13.427122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489641, 0.275551, 0.827239,
		-0.277852, 0.948600, -0.151515,
		-0.826468, -0.155662, 0.541035,
		14.696769, 16.779501, 13.589433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.073345, 17.545736, 13.658533>,  <15.275296, 16.888464, 13.210708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.073345, 17.545736, 13.658533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.918216, 17.213818, 13.819048>,  <14.825138, 17.014668, 13.915357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.918216, 17.213818, 13.819048>,  <15.073345, 17.545736, 13.658533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918216, 17.213818, 13.819048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357385, 0.265931, 0.895297,
		-0.849629, 0.490632, 0.193422,
		-0.387824, -0.829796, 0.401287,
		14.801868, 16.964878, 13.939434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635425, 17.672802, 14.300406>,  <15.073345, 17.545736, 13.658533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635425, 17.672802, 14.300406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.719151, 17.283047, 14.333271>,  <14.769387, 17.049192, 14.352990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.719151, 17.283047, 14.333271>,  <14.635425, 17.672802, 14.300406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719151, 17.283047, 14.333271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308616, 0.145557, 0.939984,
		-0.927870, -0.171398, 0.331180,
		0.209317, -0.974390, 0.082161,
		14.781947, 16.990730, 14.357920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.263705, 17.379602, 14.926146>,  <14.635425, 17.672802, 14.300406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.263705, 17.379602, 14.926146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.579303, 17.147438, 14.845535>,  <14.768661, 17.008139, 14.797170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.579303, 17.147438, 14.845535>,  <14.263705, 17.379602, 14.926146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579303, 17.147438, 14.845535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370815, 0.188317, 0.909414,
		-0.489884, -0.792250, 0.363805,
		0.788993, -0.580411, -0.201525,
		14.816001, 16.973314, 14.785078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.421330, 16.954760, 15.496302>,  <14.263705, 17.379602, 14.926146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.421330, 16.954760, 15.496302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.760083, 16.992897, 15.287037>,  <14.963335, 17.015779, 15.161478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.760083, 16.992897, 15.287037>,  <14.421330, 16.954760, 15.496302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.760083, 16.992897, 15.287037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513130, 0.111745, 0.851006,
		0.139600, -0.989153, 0.045710,
		0.846883, 0.095345, -0.523163,
		15.014148, 17.021500, 15.130088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896035, 16.879511, 15.950012>,  <14.421330, 16.954760, 15.496302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896035, 16.879511, 15.950012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.142900, 16.963200, 15.646608>,  <15.291018, 17.013412, 15.464566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.142900, 16.963200, 15.646608>,  <14.896035, 16.879511, 15.950012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142900, 16.963200, 15.646608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763755, 0.072489, 0.641423,
		0.189184, -0.975177, -0.115058,
		0.617161, 0.209223, -0.758510,
		15.328048, 17.025967, 15.419055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304588, 16.355923, 15.946129>,  <14.896035, 16.879511, 15.950012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304588, 16.355923, 15.946129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.481435, 16.683956, 15.800802>,  <15.587543, 16.880775, 15.713606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.481435, 16.683956, 15.800802>,  <15.304588, 16.355923, 15.946129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481435, 16.683956, 15.800802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701774, -0.064001, 0.709519,
		0.558611, -0.568656, -0.603807,
		0.442117, 0.820082, -0.363316,
		15.614070, 16.929981, 15.691808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057369, 16.205204, 15.920114>,  <15.304588, 16.355923, 15.946129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.057369, 16.205204, 15.920114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.026466, 16.602955, 15.949074>,  <16.007925, 16.841606, 15.966450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.026466, 16.602955, 15.949074>,  <16.057369, 16.205204, 15.920114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.026466, 16.602955, 15.949074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794866, 0.017596, 0.606529,
		0.601846, 0.104409, -0.791758,
		-0.077259, 0.994379, 0.072401,
		16.003288, 16.901268, 15.970794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725466, 16.384184, 16.160069>,  <16.057369, 16.205204, 15.920114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725466, 16.384184, 16.160069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.516079, 16.717903, 16.229269>,  <16.390448, 16.918135, 16.270790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.516079, 16.717903, 16.229269>,  <16.725466, 16.384184, 16.160069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.516079, 16.717903, 16.229269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637801, 0.249047, 0.728825,
		0.564971, 0.491856, -0.662484,
		-0.523466, 0.834298, 0.173001,
		16.359039, 16.968193, 16.281170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.253370, 16.937901, 16.346193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.905949, 17.077820, 16.486624>,  <16.697496, 17.161772, 16.570883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.905949, 17.077820, 16.486624>,  <17.253370, 16.937901, 16.346193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.905949, 17.077820, 16.486624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477169, 0.398884, 0.783072,
		0.133880, 0.847663, -0.513366,
		-0.868554, 0.349799, 0.351076,
		16.645382, 17.182760, 16.591948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298979, 17.658773, 16.597126>,  <17.253370, 16.937901, 16.346193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298979, 17.658773, 16.597126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.980713, 17.538212, 16.807297>,  <16.789753, 17.465876, 16.933399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.980713, 17.538212, 16.807297>,  <17.298979, 17.658773, 16.597126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.980713, 17.538212, 16.807297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444280, 0.299241, 0.844435,
		-0.411745, 0.905324, -0.104188,
		-0.795664, -0.301403, 0.525428,
		16.742014, 17.447790, 16.964926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165913, 18.155540, 17.158058>,  <17.298979, 17.658773, 16.597126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165913, 18.155540, 17.158058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.980694, 17.813835, 17.252563>,  <16.869562, 17.608812, 17.309267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.980694, 17.813835, 17.252563>,  <17.165913, 18.155540, 17.158058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.980694, 17.813835, 17.252563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218485, 0.148324, 0.964502,
		-0.858983, 0.498230, 0.117963,
		-0.463047, -0.854264, 0.236264,
		16.841780, 17.557556, 17.323442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.832077, 18.334558, 17.724682>,  <17.165913, 18.155540, 17.158058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.832077, 18.334558, 17.724682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.880527, 17.938099, 17.746403>,  <16.909597, 17.700222, 17.759436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.880527, 17.938099, 17.746403>,  <16.832077, 18.334558, 17.724682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880527, 17.938099, 17.746403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364889, 0.095334, 0.926158,
		-0.923138, -0.092368, 0.373207,
		0.121127, -0.991151, 0.054302,
		16.916866, 17.640753, 17.762693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566105, 18.112555, 18.372370>,  <16.832077, 18.334558, 17.724682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566105, 18.112555, 18.372370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.776627, 17.782200, 18.291458>,  <16.902939, 17.583988, 18.242910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.776627, 17.782200, 18.291458>,  <16.566105, 18.112555, 18.372370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.776627, 17.782200, 18.291458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335433, -0.016939, 0.941912,
		-0.781337, -0.563584, 0.268114,
		0.526305, -0.825885, -0.202280,
		16.934519, 17.534435, 18.230774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.484255, 17.569338, 18.950504>,  <16.566105, 18.112555, 18.372370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.484255, 17.569338, 18.950504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.847027, 17.502491, 18.795815>,  <17.064690, 17.462383, 18.703001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.847027, 17.502491, 18.795815>,  <16.484255, 17.569338, 18.950504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847027, 17.502491, 18.795815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393713, 0.009572, 0.919184,
		-0.149909, -0.985891, 0.074476,
		0.906927, -0.167116, -0.386723,
		17.119104, 17.452356, 18.679798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775360, 17.290319, 19.547997>,  <16.484255, 17.569338, 18.950504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775360, 17.290319, 19.547997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081291, 17.326927, 19.292915>,  <17.264849, 17.348892, 19.139866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081291, 17.326927, 19.292915>,  <16.775360, 17.290319, 19.547997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081291, 17.326927, 19.292915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631016, 0.093084, 0.770165,
		0.129848, -0.991443, 0.013440,
		0.764826, 0.091523, -0.637703,
		17.310740, 17.354383, 19.101604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236204, 16.886950, 19.821434>,  <16.775360, 17.290319, 19.547997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236204, 16.886950, 19.821434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.433910, 17.147755, 19.591450>,  <17.552534, 17.304237, 19.453459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.433910, 17.147755, 19.591450>,  <17.236204, 16.886950, 19.821434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.433910, 17.147755, 19.591450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685338, 0.114630, 0.719147,
		0.534801, -0.749493, -0.390191,
		0.494267, 0.652013, -0.574960,
		17.582191, 17.343359, 19.418962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931015, 16.634647, 19.923321>,  <17.236204, 16.886950, 19.821434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931015, 16.634647, 19.923321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.986591, 17.011200, 19.800358>,  <18.019938, 17.237131, 19.726580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.986591, 17.011200, 19.800358>,  <17.931015, 16.634647, 19.923321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.986591, 17.011200, 19.800358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639595, 0.151686, 0.753598,
		0.756052, -0.301321, -0.581026,
		0.138941, 0.941381, -0.307406,
		18.028275, 17.293613, 19.708136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692919, 16.742874, 19.893749>,  <17.931015, 16.634647, 19.923321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692919, 16.742874, 19.893749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.517700, 17.102432, 19.897764>,  <18.412569, 17.318167, 19.900173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.517700, 17.102432, 19.897764>,  <18.692919, 16.742874, 19.893749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517700, 17.102432, 19.897764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615998, 0.292017, 0.731623,
		0.654723, 0.326666, -0.681635,
		-0.438046, 0.898897, 0.010035,
		18.386286, 17.372101, 19.900774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157873, 17.152706, 20.340210>,  <18.692919, 16.742874, 19.893749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.157873, 17.152706, 20.340210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.833214, 17.386070, 20.328516>,  <18.638418, 17.526089, 20.321501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.833214, 17.386070, 20.328516>,  <19.157873, 17.152706, 20.340210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.833214, 17.386070, 20.328516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217185, 0.347852, 0.912047,
		0.542267, 0.733914, -0.409043,
		-0.811651, 0.583411, -0.029234,
		18.589718, 17.561094, 20.319746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.417675, 17.798796, 20.637234>,  <19.157873, 17.152706, 20.340210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.417675, 17.798796, 20.637234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.018845, 17.821423, 20.657768>,  <18.779547, 17.834999, 20.670088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.018845, 17.821423, 20.657768>,  <19.417675, 17.798796, 20.637234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.018845, 17.821423, 20.657768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071658, 0.459877, 0.885087,
		0.026457, 0.886179, -0.462586,
		-0.997078, 0.056565, 0.051335,
		18.719721, 17.838392, 20.673168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.248619, 18.514288, 20.709843>,  <19.417675, 17.798796, 20.637234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.248619, 18.514288, 20.709843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.973671, 18.280609, 20.882463>,  <18.808702, 18.140402, 20.986036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.973671, 18.280609, 20.882463>,  <19.248619, 18.514288, 20.709843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973671, 18.280609, 20.882463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062990, 0.543983, 0.836729,
		-0.723568, 0.602328, -0.337120,
		-0.687372, -0.584195, 0.431550,
		18.767460, 18.105350, 21.011929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.748058, 18.931244, 21.018330>,  <19.248619, 18.514288, 20.709843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.748058, 18.931244, 21.018330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.703262, 18.583279, 21.210461>,  <18.676384, 18.374500, 21.325739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.703262, 18.583279, 21.210461>,  <18.748058, 18.931244, 21.018330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703262, 18.583279, 21.210461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149572, 0.492617, 0.857296,
		-0.982388, 0.024167, -0.185283,
		-0.111992, -0.869911, 0.480326,
		18.669664, 18.322306, 21.354559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.367121, 19.071659, 21.631239>,  <18.748058, 18.931244, 21.018330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.367121, 19.071659, 21.631239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.469620, 18.699738, 21.736919>,  <18.531118, 18.476585, 21.800327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.469620, 18.699738, 21.736919>,  <18.367121, 19.071659, 21.631239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.469620, 18.699738, 21.736919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002852, 0.272600, 0.962123,
		-0.966607, -0.247295, 0.067201,
		0.256247, -0.929803, 0.264203,
		18.546494, 18.420797, 21.816179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.876778, 18.853703, 22.072037>,  <18.367121, 19.071659, 21.631239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.876778, 18.853703, 22.072037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.203197, 18.638855, 22.157421>,  <18.399050, 18.509947, 22.208652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.203197, 18.638855, 22.157421>,  <17.876778, 18.853703, 22.072037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.203197, 18.638855, 22.157421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148361, 0.162286, 0.975527,
		-0.558617, -0.827747, 0.052745,
		0.816048, -0.537121, 0.213461,
		18.448011, 18.477718, 22.221460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.690491, 18.389116, 22.585144>,  <17.876778, 18.853703, 22.072037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.690491, 18.389116, 22.585144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.089394, 18.387161, 22.614676>,  <18.328735, 18.385988, 22.632395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.089394, 18.387161, 22.614676>,  <17.690491, 18.389116, 22.585144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.089394, 18.387161, 22.614676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072581, 0.129304, 0.988945,
		-0.014380, -0.991593, 0.128595,
		0.997259, -0.004888, 0.073830,
		18.388571, 18.385695, 22.636824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699440, 18.234926, 23.208858>,  <17.690491, 18.389116, 22.585144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699440, 18.234926, 23.208858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.091011, 18.291714, 23.150145>,  <18.325954, 18.325787, 23.114916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.091011, 18.291714, 23.150145>,  <17.699440, 18.234926, 23.208858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.091011, 18.291714, 23.150145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129307, 0.125395, 0.983644,
		0.158059, -0.981896, 0.104394,
		0.978926, 0.141975, -0.146786,
		18.384689, 18.334305, 23.106110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055229, 17.858654, 23.689552>,  <17.699440, 18.234926, 23.208858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.055229, 17.858654, 23.689552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.288563, 18.162949, 23.575708>,  <18.428564, 18.345526, 23.507402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.288563, 18.162949, 23.575708>,  <18.055229, 17.858654, 23.689552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.288563, 18.162949, 23.575708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157641, 0.237702, 0.958461,
		0.796787, -0.603970, 0.018737,
		0.583336, 0.760735, -0.284608,
		18.463564, 18.391169, 23.490326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.530096, 17.867191, 24.234543>,  <18.055229, 17.858654, 23.689552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.530096, 17.867191, 24.234543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.587570, 18.225918, 24.067177>,  <18.622055, 18.441154, 23.966757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.587570, 18.225918, 24.067177>,  <18.530096, 17.867191, 24.234543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.587570, 18.225918, 24.067177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078027, 0.411221, 0.908190,
		0.986543, -0.163142, -0.010890,
		0.143686, 0.896818, -0.418416,
		18.630676, 18.494963, 23.941652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.219334, 18.172798, 24.504288>,  <18.530096, 17.867191, 24.234543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.219334, 18.172798, 24.504288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.976048, 18.464298, 24.378431>,  <18.830076, 18.639198, 24.302917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.976048, 18.464298, 24.378431>,  <19.219334, 18.172798, 24.504288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976048, 18.464298, 24.378431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170696, 0.507191, 0.844760,
		0.775202, 0.460088, -0.432876,
		-0.608215, 0.728750, -0.314641,
		18.793583, 18.682922, 24.284039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.576466, 18.739126, 24.767868>,  <19.219334, 18.172798, 24.504288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.576466, 18.739126, 24.767868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.195930, 18.832207, 24.687061>,  <18.967609, 18.888056, 24.638577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.195930, 18.832207, 24.687061>,  <19.576466, 18.739126, 24.767868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.195930, 18.832207, 24.687061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034354, 0.571390, 0.819959,
		0.306236, 0.786996, -0.535589,
		-0.951335, 0.232702, -0.202016,
		18.910530, 18.902018, 24.626457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.412926, 19.429728, 24.426630>,  <19.576466, 18.739126, 24.767868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.412926, 19.429728, 24.426630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.179127, 19.262119, 24.704561>,  <19.038847, 19.161554, 24.871321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.179127, 19.262119, 24.704561>,  <19.412926, 19.429728, 24.426630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.179127, 19.262119, 24.704561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201286, 0.754688, 0.624444,
		-0.786033, 0.504844, -0.356769,
		-0.584497, -0.419021, 0.694828,
		19.003778, 19.136414, 24.913010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975744, 20.051218, 24.659258>,  <19.412926, 19.429728, 24.426630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975744, 20.051218, 24.659258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.998890, 19.766037, 24.938786>,  <19.012777, 19.594929, 25.106503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.998890, 19.766037, 24.938786>,  <18.975744, 20.051218, 24.659258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.998890, 19.766037, 24.938786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535955, 0.612751, 0.580765,
		-0.842261, 0.340930, 0.417568,
		0.057866, -0.712953, 0.698820,
		19.016249, 19.552151, 25.148432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.644106, 20.394640, 24.466127>,  <18.975744, 20.051218, 24.659258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.644106, 20.394640, 24.466127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.942211, 20.657394, 24.420382>,  <20.121075, 20.815048, 24.392935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.942211, 20.657394, 24.420382>,  <19.644106, 20.394640, 24.466127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.942211, 20.657394, 24.420382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006770, -0.178967, -0.983832,
		-0.666734, 0.732441, -0.137825,
		0.745265, 0.656888, -0.114365,
		20.165791, 20.854462, 24.386072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462851, 20.890152, 23.932615>,  <19.644106, 20.394640, 24.466127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462851, 20.890152, 23.932615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.862320, 20.895088, 23.952618>,  <20.102001, 20.898050, 23.964619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.862320, 20.895088, 23.952618>,  <19.462851, 20.890152, 23.932615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862320, 20.895088, 23.952618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050682, -0.062701, -0.996745,
		-0.009165, 0.997956, -0.063244,
		0.998673, 0.012340, 0.050004,
		20.161922, 20.898790, 23.967619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.673615, 21.340670, 23.417587>,  <19.462851, 20.890152, 23.932615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.673615, 21.340670, 23.417587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.000385, 21.123268, 23.494776>,  <20.196447, 20.992828, 23.541088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.000385, 21.123268, 23.494776>,  <19.673615, 21.340670, 23.417587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.000385, 21.123268, 23.494776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229010, -0.001397, -0.973423,
		0.529327, 0.839406, 0.123326,
		0.816925, -0.543502, 0.192972,
		20.245462, 20.960217, 23.552668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.203440, 21.502903, 22.936930>,  <19.673615, 21.340670, 23.417587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.203440, 21.502903, 22.936930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.303780, 21.138577, 23.068075>,  <20.363983, 20.919981, 23.146763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.303780, 21.138577, 23.068075>,  <20.203440, 21.502903, 22.936930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.303780, 21.138577, 23.068075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091332, -0.314912, -0.944716,
		0.963708, 0.266924, 0.004191,
		0.250848, -0.910814, 0.327862,
		20.379034, 20.865332, 23.166433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.828451, 21.389677, 22.573805>,  <20.203440, 21.502903, 22.936930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.828451, 21.389677, 22.573805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.690525, 21.026329, 22.668438>,  <20.607769, 20.808321, 22.725218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.690525, 21.026329, 22.668438>,  <20.828451, 21.389677, 22.573805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.690525, 21.026329, 22.668438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015516, -0.257519, -0.966149,
		0.938543, -0.329470, 0.102890,
		-0.344814, -0.908368, 0.236581,
		20.587082, 20.753819, 22.739412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191391, 20.909887, 22.010399>,  <20.828451, 21.389677, 22.573805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191391, 20.909887, 22.010399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.911045, 20.676926, 22.175125>,  <20.742838, 20.537148, 22.273960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.911045, 20.676926, 22.175125>,  <21.191391, 20.909887, 22.010399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.911045, 20.676926, 22.175125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098134, -0.493121, -0.864408,
		0.706511, -0.646247, 0.288457,
		-0.700865, -0.582406, 0.411814,
		20.700785, 20.502203, 22.298670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.438053, 20.200188, 21.956129>,  <21.191391, 20.909887, 22.010399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.438053, 20.200188, 21.956129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.039631, 20.177971, 21.983814>,  <20.800577, 20.164640, 22.000425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.039631, 20.177971, 21.983814>,  <21.438053, 20.200188, 21.956129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.039631, 20.177971, 21.983814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024302, -0.579392, -0.814687,
		0.085354, -0.813154, 0.575756,
		-0.996054, -0.055545, 0.069215,
		20.740814, 20.161308, 22.004580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.104258, 19.447540, 21.746653>,  <21.438053, 20.200188, 21.956129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.104258, 19.447540, 21.746653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.801109, 19.707577, 21.724710>,  <20.619221, 19.863600, 21.711546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.801109, 19.707577, 21.724710>,  <21.104258, 19.447540, 21.746653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801109, 19.707577, 21.724710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294967, -0.416433, -0.859987,
		-0.581916, -0.635579, 0.507359,
		-0.757871, 0.650094, -0.054854,
		20.573748, 19.902605, 21.708254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.611399, 18.977720, 21.542143>,  <21.104258, 19.447540, 21.746653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.611399, 18.977720, 21.542143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.492527, 19.352760, 21.469931>,  <20.421204, 19.577784, 21.426603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.492527, 19.352760, 21.469931>,  <20.611399, 18.977720, 21.542143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492527, 19.352760, 21.469931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106727, -0.220504, -0.969530,
		-0.948839, -0.268855, 0.165596,
		-0.297178, 0.937601, -0.180528,
		20.403374, 19.634041, 21.415771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.888527, 18.938643, 21.233437>,  <20.611399, 18.977720, 21.542143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.888527, 18.938643, 21.233437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.043575, 19.288464, 21.116879>,  <20.136604, 19.498356, 21.046944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.043575, 19.288464, 21.116879>,  <19.888527, 18.938643, 21.233437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043575, 19.288464, 21.116879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374040, -0.139702, -0.916830,
		-0.842523, 0.464375, 0.272966,
		0.387619, 0.874551, -0.291397,
		20.159861, 19.550829, 21.029459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301899, 19.399536, 20.992462>,  <19.888527, 18.938643, 21.233437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301899, 19.399536, 20.992462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.648018, 19.522346, 20.833973>,  <19.855690, 19.596033, 20.738878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.648018, 19.522346, 20.833973>,  <19.301899, 19.399536, 20.992462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.648018, 19.522346, 20.833973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426565, 0.035896, -0.903744,
		-0.263250, 0.951024, 0.162027,
		0.865298, 0.307026, -0.396224,
		19.907608, 19.614454, 20.715105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.130796, 19.784035, 20.478373>,  <19.301899, 19.399536, 20.992462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.130796, 19.784035, 20.478373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.512005, 19.710377, 20.382170>,  <19.740730, 19.666182, 20.324448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.512005, 19.710377, 20.382170>,  <19.130796, 19.784035, 20.478373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.512005, 19.710377, 20.382170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247208, -0.014001, -0.968861,
		0.175046, 0.982799, -0.058866,
		0.953020, -0.184147, -0.240505,
		19.797911, 19.655132, 20.310019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.228279, 20.039009, 19.782534>,  <19.130796, 19.784035, 20.478373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.228279, 20.039009, 19.782534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.563995, 19.821781, 19.792864>,  <19.765425, 19.691444, 19.799061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.563995, 19.821781, 19.792864>,  <19.228279, 20.039009, 19.782534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.563995, 19.821781, 19.792864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133056, -0.251222, -0.958741,
		0.527151, 0.801225, -0.283107,
		0.839290, -0.543071, 0.025824,
		19.815783, 19.658859, 19.800611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616476, 20.170460, 19.064291>,  <19.228279, 20.039009, 19.782534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.616476, 20.170460, 19.064291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.726292, 19.809822, 19.198011>,  <19.792181, 19.593439, 19.278244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.726292, 19.809822, 19.198011>,  <19.616476, 20.170460, 19.064291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.726292, 19.809822, 19.198011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140898, -0.381623, -0.913516,
		0.951197, 0.203693, -0.231803,
		0.274539, -0.901595, 0.334299,
		19.808653, 19.539343, 19.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.940029, 19.961742, 18.557505>,  <19.616476, 20.170460, 19.064291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.940029, 19.961742, 18.557505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.849998, 19.633148, 18.767076>,  <19.795980, 19.435991, 18.892820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.849998, 19.633148, 18.767076>,  <19.940029, 19.961742, 18.557505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849998, 19.633148, 18.767076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223048, -0.480008, -0.848435,
		0.948467, -0.307825, -0.075191,
		-0.225077, -0.821484, 0.523932,
		19.782475, 19.386703, 18.924255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373320, 19.442617, 18.195168>,  <19.940029, 19.961742, 18.557505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.373320, 19.442617, 18.195168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.080654, 19.247131, 18.385250>,  <19.905054, 19.129839, 18.499300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.080654, 19.247131, 18.385250>,  <20.373320, 19.442617, 18.195168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.080654, 19.247131, 18.385250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102233, -0.610573, -0.785334,
		0.673954, -0.623184, 0.396773,
		-0.731666, -0.488715, 0.475208,
		19.861155, 19.100517, 18.527813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494490, 18.726046, 18.178690>,  <20.373320, 19.442617, 18.195168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494490, 18.726046, 18.178690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.100426, 18.725845, 18.247345>,  <19.863987, 18.725725, 18.288538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.100426, 18.725845, 18.247345>,  <20.494490, 18.726046, 18.178690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.100426, 18.725845, 18.247345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140804, -0.569514, -0.809832,
		0.098155, -0.821982, 0.560992,
		-0.985160, -0.000499, 0.171639,
		19.804878, 18.725697, 18.298836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.340282, 18.039206, 18.024458>,  <20.494490, 18.726046, 18.178690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.340282, 18.039206, 18.024458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.001671, 18.250671, 17.999466>,  <19.798504, 18.377550, 17.984470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.001671, 18.250671, 17.999466>,  <20.340282, 18.039206, 18.024458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.001671, 18.250671, 17.999466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306145, -0.579484, -0.755297,
		-0.435503, -0.620254, 0.652397,
		-0.846530, 0.528662, -0.062480,
		19.747711, 18.409269, 17.980722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891909, 17.522087, 17.941267>,  <20.340282, 18.039206, 18.024458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891909, 17.522087, 17.941267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.707474, 17.852257, 17.810993>,  <19.596813, 18.050360, 17.732828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.707474, 17.852257, 17.810993>,  <19.891909, 17.522087, 17.941267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.707474, 17.852257, 17.810993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331267, -0.500613, -0.799781,
		-0.823202, -0.260880, 0.504263,
		-0.461087, 0.825426, -0.325684,
		19.569147, 18.099884, 17.713287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161192, 17.275919, 17.665565>,  <19.891909, 17.522087, 17.941267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161192, 17.275919, 17.665565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.264870, 17.629539, 17.509991>,  <19.327076, 17.841711, 17.416647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.264870, 17.629539, 17.509991>,  <19.161192, 17.275919, 17.665565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.264870, 17.629539, 17.509991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354751, -0.287408, -0.889690,
		-0.898316, 0.368576, 0.239124,
		0.259192, 0.884052, -0.388936,
		19.342627, 17.894754, 17.393311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.005161, 15.697388, 14.491223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.970300, 16.093040, 14.443859>,  <14.949383, 16.330433, 14.415441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.970300, 16.093040, 14.443859>,  <15.005161, 15.697388, 14.491223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.970300, 16.093040, 14.443859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728789, -0.144345, -0.669351,
		-0.679169, 0.027960, 0.733449,
		-0.087155, 0.989132, -0.118412,
		14.944154, 16.389780, 14.408336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.294728, 15.817369, 14.324405>,  <15.005161, 15.697388, 14.491223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.294728, 15.817369, 14.324405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.440919, 16.171448, 14.209267>,  <14.528633, 16.383894, 14.140183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.440919, 16.171448, 14.209267>,  <14.294728, 15.817369, 14.324405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440919, 16.171448, 14.209267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717800, 0.071143, -0.692605,
		-0.592613, 0.459746, 0.661395,
		0.365476, 0.885196, -0.287845,
		14.550562, 16.437006, 14.122913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.712115, 16.369148, 14.288986>,  <14.294728, 15.817369, 14.324405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.712115, 16.369148, 14.288986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.018617, 16.486870, 14.060516>,  <14.202518, 16.557503, 13.923434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.018617, 16.486870, 14.060516>,  <13.712115, 16.369148, 14.288986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018617, 16.486870, 14.060516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621815, 0.115707, -0.774570,
		-0.161868, 0.948682, 0.271662,
		0.766254, 0.294302, -0.571175,
		14.248493, 16.575161, 13.889164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.437860, 16.866783, 13.932790>,  <13.712115, 16.369148, 14.288986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.437860, 16.866783, 13.932790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.756736, 16.757549, 13.717415>,  <13.948061, 16.692009, 13.588190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.756736, 16.757549, 13.717415>,  <13.437860, 16.866783, 13.932790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.756736, 16.757549, 13.717415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520495, 0.141013, -0.842141,
		0.305904, 0.951598, -0.029727,
		0.797188, -0.273087, -0.538438,
		13.995893, 16.675623, 13.555883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.413970, 17.392136, 13.422425>,  <13.437860, 16.866783, 13.932790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.413970, 17.392136, 13.422425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.633554, 17.091560, 13.276009>,  <13.765304, 16.911215, 13.188159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.633554, 17.091560, 13.276009>,  <13.413970, 17.392136, 13.422425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.633554, 17.091560, 13.276009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436885, 0.115391, -0.892085,
		0.712584, 0.649635, -0.264948,
		0.548958, -0.751438, -0.366042,
		13.798241, 16.866129, 13.166196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.717214, 17.691010, 12.750239>,  <13.413970, 17.392136, 13.422425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.717214, 17.691010, 12.750239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.721576, 17.291199, 12.761721>,  <13.724194, 17.051311, 12.768609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.721576, 17.291199, 12.761721>,  <13.717214, 17.691010, 12.750239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721576, 17.291199, 12.761721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138657, -0.029939, -0.989888,
		0.990280, 0.006816, -0.138918,
		0.010906, -0.999528, 0.028702,
		13.724848, 16.991341, 12.770331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943202, 17.455862, 12.197297>,  <13.717214, 17.691010, 12.750239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943202, 17.455862, 12.197297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.800536, 17.091152, 12.278742>,  <13.714936, 16.872326, 12.327609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.800536, 17.091152, 12.278742>,  <13.943202, 17.455862, 12.197297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800536, 17.091152, 12.278742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308419, -0.090811, -0.946906,
		0.881854, -0.400526, -0.248820,
		-0.356665, -0.911774, 0.203612,
		13.693537, 16.817619, 12.339826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247534, 17.112070, 11.717297>,  <13.943202, 17.455862, 12.197297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.247534, 17.112070, 11.717297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.935981, 16.891064, 11.836001>,  <13.749049, 16.758461, 11.907225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.935981, 16.891064, 11.836001>,  <14.247534, 17.112070, 11.717297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935981, 16.891064, 11.836001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179747, -0.256671, -0.949637,
		0.600859, -0.792999, 0.100604,
		-0.778883, -0.552515, 0.296763,
		13.702315, 16.725309, 11.925030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293437, 16.411390, 11.350996>,  <14.247534, 17.112070, 11.717297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293437, 16.411390, 11.350996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.915431, 16.496338, 11.450471>,  <13.688627, 16.547306, 11.510156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.915431, 16.496338, 11.450471>,  <14.293437, 16.411390, 11.350996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.915431, 16.496338, 11.450471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292173, -0.206688, -0.933764,
		-0.146903, -0.955081, 0.257372,
		-0.945015, 0.212370, 0.248686,
		13.631927, 16.560049, 11.525077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.937431, 15.880210, 11.055494>,  <14.293437, 16.411390, 11.350996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.937431, 15.880210, 11.055494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.659495, 16.160309, 11.121042>,  <13.492734, 16.328367, 11.160371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.659495, 16.160309, 11.121042>,  <13.937431, 15.880210, 11.055494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659495, 16.160309, 11.121042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374797, -0.158123, -0.913523,
		-0.613780, -0.696169, 0.372321,
		-0.694838, 0.700247, 0.163869,
		13.451044, 16.370382, 11.170203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.303991, 15.518536, 10.858537>,  <13.937431, 15.880210, 11.055494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.303991, 15.518536, 10.858537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.248618, 15.914631, 10.852028>,  <13.215394, 16.152288, 10.848123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.248618, 15.914631, 10.852028>,  <13.303991, 15.518536, 10.858537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.248618, 15.914631, 10.852028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368338, -0.066730, -0.927294,
		-0.919328, -0.122375, 0.373980,
		-0.138433, 0.990238, -0.016272,
		13.207088, 16.211702, 10.847146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.572720, 15.701057, 10.615345>,  <13.303991, 15.518536, 10.858537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.572720, 15.701057, 10.615345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.809155, 16.012093, 10.529582>,  <12.951017, 16.198713, 10.478125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.809155, 16.012093, 10.529582>,  <12.572720, 15.701057, 10.615345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.809155, 16.012093, 10.529582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485690, 0.130891, -0.864276,
		-0.643987, 0.615000, 0.455035,
		0.591089, 0.777588, -0.214407,
		12.986483, 16.245369, 10.465260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.160396, 16.357084, 10.407285>,  <12.572720, 15.701057, 10.615345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.160396, 16.357084, 10.407285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.523784, 16.325134, 10.243187>,  <12.741817, 16.305964, 10.144729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.523784, 16.325134, 10.243187>,  <12.160396, 16.357084, 10.407285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.523784, 16.325134, 10.243187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391069, 0.183866, -0.901808,
		0.147461, 0.979701, 0.135800,
		0.908471, -0.079874, -0.410244,
		12.796325, 16.301172, 10.120113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.419854, 16.978546, 10.185629>,  <12.160396, 16.357084, 10.407285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.419854, 16.978546, 10.185629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.574475, 16.683090, 9.964726>,  <12.667248, 16.505817, 9.832185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.574475, 16.683090, 9.964726>,  <12.419854, 16.978546, 10.185629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574475, 16.683090, 9.964726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514329, 0.324389, -0.793875,
		0.765534, 0.590917, -0.254510,
		0.386553, -0.738640, -0.552257,
		12.690441, 16.461498, 9.799049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.873581, 17.480730, 10.309406>,  <12.419854, 16.978546, 10.185629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.873581, 17.480730, 10.309406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.643233, 17.711479, 10.077685>,  <11.505025, 17.849928, 9.938653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.643233, 17.711479, 10.077685>,  <11.873581, 17.480730, 10.309406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.643233, 17.711479, 10.077685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080913, 0.664896, 0.742541,
		0.813528, 0.474479, -0.336216,
		-0.575869, 0.576873, -0.579303,
		11.470472, 17.884541, 9.903894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.164364, 18.120262, 10.456460>,  <11.873581, 17.480730, 10.309406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.164364, 18.120262, 10.456460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.794894, 18.154205, 10.306993>,  <11.573213, 18.174570, 10.217314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.794894, 18.154205, 10.306993>,  <12.164364, 18.120262, 10.456460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.794894, 18.154205, 10.306993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211963, 0.699236, 0.682745,
		0.319216, 0.709837, -0.627880,
		-0.923674, 0.084856, -0.373666,
		11.517792, 18.179663, 10.194894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.068920, 18.782761, 10.365581>,  <12.164364, 18.120262, 10.456460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.068920, 18.782761, 10.365581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.692672, 18.647743, 10.351192>,  <11.466923, 18.566732, 10.342558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.692672, 18.647743, 10.351192>,  <12.068920, 18.782761, 10.365581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.692672, 18.647743, 10.351192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275095, 0.695900, 0.663360,
		-0.198881, 0.633866, -0.747436,
		-0.940622, -0.337546, -0.035972,
		11.410485, 18.546480, 10.340400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.765276, 19.391165, 10.427299>,  <12.068920, 18.782761, 10.365581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.765276, 19.391165, 10.427299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.519353, 19.093369, 10.531411>,  <11.371799, 18.914690, 10.593878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.519353, 19.093369, 10.531411>,  <11.765276, 19.391165, 10.427299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.519353, 19.093369, 10.531411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355927, 0.556415, 0.750812,
		-0.703796, 0.368965, -0.607072,
		-0.614807, -0.744492, 0.260278,
		11.334910, 18.870022, 10.609494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.093392, 19.706808, 10.545056>,  <11.765276, 19.391165, 10.427299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.093392, 19.706808, 10.545056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.112666, 19.364868, 10.751709>,  <11.124230, 19.159704, 10.875701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.112666, 19.364868, 10.751709>,  <11.093392, 19.706808, 10.545056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.112666, 19.364868, 10.751709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346954, 0.470702, 0.811210,
		-0.936643, -0.218337, -0.273913,
		0.048185, -0.854850, 0.516633,
		11.127122, 19.108414, 10.906699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.571980, 19.824856, 11.009524>,  <11.093392, 19.706808, 10.545056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.571980, 19.824856, 11.009524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<10.765706, 19.504639, 11.150702>,  <10.881942, 19.312508, 11.235410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<10.765706, 19.504639, 11.150702>,  <10.571980, 19.824856, 11.009524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.765706, 19.504639, 11.150702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182283, 0.302231, 0.935644,
		-0.855694, -0.517482, 0.000449,
		0.484315, -0.800543, 0.352945,
		10.911000, 19.264477, 11.256586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.185502, 19.564625, 11.543571>,  <10.571980, 19.824856, 11.009524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.185502, 19.564625, 11.543571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<10.552287, 19.424076, 11.619167>,  <10.772358, 19.339748, 11.664525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<10.552287, 19.424076, 11.619167>,  <10.185502, 19.564625, 11.543571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.552287, 19.424076, 11.619167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084791, 0.291247, 0.952883,
		-0.389857, -0.889783, 0.237270,
		0.916963, -0.351370, 0.188990,
		10.827376, 19.318665, 11.675864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.236333, 19.199413, 12.118449>,  <10.185502, 19.564625, 11.543571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.236333, 19.199413, 12.118449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<10.607898, 19.346111, 12.097980>,  <10.830836, 19.434130, 12.085699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<10.607898, 19.346111, 12.097980>,  <10.236333, 19.199413, 12.118449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.607898, 19.346111, 12.097980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020868, 0.086123, 0.996066,
		0.369711, -0.926326, 0.072348,
		0.928912, 0.366747, -0.051171,
		10.886572, 19.456135, 12.082629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.517783, 18.966511, 12.688276>,  <10.236333, 19.199413, 12.118449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.517783, 18.966511, 12.688276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<10.803506, 19.227852, 12.587960>,  <10.974939, 19.384657, 12.527770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<10.803506, 19.227852, 12.587960>,  <10.517783, 18.966511, 12.688276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.803506, 19.227852, 12.587960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190544, 0.163252, 0.968009,
		0.673394, -0.739242, -0.007880,
		0.714306, 0.653353, -0.250791,
		11.017797, 19.423859, 12.512723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.028799, 18.742134, 13.142000>,  <10.517783, 18.966511, 12.688276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.028799, 18.742134, 13.142000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.144893, 19.107632, 13.028273>,  <11.214549, 19.326931, 12.960036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.144893, 19.107632, 13.028273>,  <11.028799, 18.742134, 13.142000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.144893, 19.107632, 13.028273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227489, 0.222712, 0.947971,
		0.929523, -0.339812, -0.143229,
		0.290233, 0.913744, -0.284319,
		11.231962, 19.381754, 12.942977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.629807, 18.801178, 13.422180>,  <11.028799, 18.742134, 13.142000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.629807, 18.801178, 13.422180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.506688, 19.176571, 13.359550>,  <11.432817, 19.401806, 13.321973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.506688, 19.176571, 13.359550>,  <11.629807, 18.801178, 13.422180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.506688, 19.176571, 13.359550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359213, 0.267007, 0.894245,
		0.881038, 0.219001, -0.419298,
		-0.307797, 0.938480, -0.156575,
		11.414350, 19.458115, 13.312578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.207768, 19.225542, 13.285165>,  <11.629807, 18.801178, 13.422180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.207768, 19.225542, 13.285165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.925872, 19.465618, 13.436485>,  <11.756734, 19.609663, 13.527278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.925872, 19.465618, 13.436485>,  <12.207768, 19.225542, 13.285165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.925872, 19.465618, 13.436485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603910, 0.227654, 0.763850,
		0.372333, 0.766777, -0.522897,
		-0.704742, 0.600189, 0.378301,
		11.714449, 19.645676, 13.549975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.606157, 19.838617, 13.494712>,  <12.207768, 19.225542, 13.285165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.606157, 19.838617, 13.494712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.251595, 19.877975, 13.675646>,  <12.038858, 19.901590, 13.784206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.251595, 19.877975, 13.675646>,  <12.606157, 19.838617, 13.494712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.251595, 19.877975, 13.675646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460506, 0.286944, 0.839998,
		-0.047143, 0.952881, -0.299660,
		-0.886404, 0.098395, 0.452335,
		11.985674, 19.907494, 13.811346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.636203, 20.454813, 13.872450>,  <12.606157, 19.838617, 13.494712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.636203, 20.454813, 13.872450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.340203, 20.255733, 14.053425>,  <12.162603, 20.136286, 14.162009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.340203, 20.255733, 14.053425>,  <12.636203, 20.454813, 13.872450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.340203, 20.255733, 14.053425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379350, 0.246642, 0.891774,
		-0.555424, 0.831543, 0.006287,
		-0.739999, -0.497698, 0.452437,
		12.118204, 20.106424, 14.189156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.687547, 21.120918, 13.724898>,  <12.636203, 20.454813, 13.872450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.687547, 21.120918, 13.724898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.939649, 21.431362, 13.716593>,  <13.090910, 21.617628, 13.711609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.939649, 21.431362, 13.716593>,  <12.687547, 21.120918, 13.724898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.939649, 21.431362, 13.716593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364245, -0.319200, -0.874893,
		-0.685641, 0.543842, -0.483871,
		0.630255, 0.776110, -0.020765,
		13.128725, 21.664196, 13.710363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.680252, 21.400846, 13.028048>,  <12.687547, 21.120918, 13.724898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.680252, 21.400846, 13.028048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.034829, 21.525429, 13.164993>,  <13.247576, 21.600178, 13.247161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.034829, 21.525429, 13.164993>,  <12.680252, 21.400846, 13.028048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034829, 21.525429, 13.164993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377157, -0.057328, -0.924373,
		-0.268275, 0.948529, -0.168286,
		0.886443, 0.311457, 0.342365,
		13.300762, 21.618866, 13.267703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862257, 21.962944, 12.528504>,  <12.680252, 21.400846, 13.028048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.862257, 21.962944, 12.528504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.188092, 21.833885, 12.721314>,  <13.383594, 21.756451, 12.837000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.188092, 21.833885, 12.721314>,  <12.862257, 21.962944, 12.528504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.188092, 21.833885, 12.721314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491717, -0.056683, -0.868908,
		0.307672, 0.944821, 0.112477,
		0.814587, -0.322645, 0.482024,
		13.432468, 21.737091, 12.865922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.321979, 22.268793, 12.240109>,  <12.862257, 21.962944, 12.528504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.321979, 22.268793, 12.240109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.553935, 21.993855, 12.415051>,  <13.693109, 21.828892, 12.520017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.553935, 21.993855, 12.415051>,  <13.321979, 22.268793, 12.240109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.553935, 21.993855, 12.415051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470543, -0.155666, -0.868538,
		0.665069, 0.709451, 0.233157,
		0.579890, -0.687348, 0.437356,
		13.727902, 21.787651, 12.546258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.045134, 22.424892, 12.138504>,  <13.321979, 22.268793, 12.240109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.045134, 22.424892, 12.138504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.044490, 22.034534, 12.225800>,  <14.044104, 21.800320, 12.278177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.044490, 22.034534, 12.225800>,  <14.045134, 22.424892, 12.138504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.044490, 22.034534, 12.225800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443207, -0.196330, -0.874655,
		0.896418, 0.095319, 0.432839,
		-0.001608, -0.975894, 0.218240,
		14.044007, 21.741766, 12.291271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.704402, 22.230125, 11.846344>,  <14.045134, 22.424892, 12.138504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.704402, 22.230125, 11.846344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.489129, 21.894463, 11.877785>,  <14.359965, 21.693066, 11.896649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.489129, 21.894463, 11.877785>,  <14.704402, 22.230125, 11.846344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.489129, 21.894463, 11.877785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269218, -0.259532, -0.927451,
		0.798675, -0.477976, 0.365591,
		-0.538182, -0.839156, 0.078602,
		14.327675, 21.642715, 11.901365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099401, 21.681593, 11.487935>,  <14.704402, 22.230125, 11.846344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.099401, 21.681593, 11.487935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.723435, 21.545052, 11.490466>,  <14.497856, 21.463127, 11.491984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.723435, 21.545052, 11.490466>,  <15.099401, 21.681593, 11.487935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723435, 21.545052, 11.490466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137206, -0.394635, -0.908536,
		0.312629, -0.853077, 0.417759,
		-0.939914, -0.341354, 0.006327,
		14.441462, 21.442646, 11.492364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172139, 20.946964, 11.214138>,  <15.099401, 21.681593, 11.487935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172139, 20.946964, 11.214138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.791047, 21.055958, 11.160390>,  <14.562391, 21.121355, 11.128140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.791047, 21.055958, 11.160390>,  <15.172139, 20.946964, 11.214138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791047, 21.055958, 11.160390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000985, -0.445048, -0.895506,
		-0.303813, -0.853044, 0.424280,
		-0.952731, 0.272484, -0.134371,
		14.505228, 21.137703, 11.120078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.949492, 20.468447, 10.736187>,  <15.172139, 20.946964, 11.214138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.949492, 20.468447, 10.736187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.638701, 20.720039, 10.725657>,  <14.452228, 20.870995, 10.719338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.638701, 20.720039, 10.725657>,  <14.949492, 20.468447, 10.736187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638701, 20.720039, 10.725657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369663, -0.489692, -0.789653,
		-0.509581, -0.603798, 0.612989,
		-0.776967, 0.628991, -0.026336,
		14.405609, 20.908733, 10.717758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250535, 20.141258, 10.784775>,  <14.949492, 20.468447, 10.736187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.250535, 20.141258, 10.784775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.216699, 20.494659, 10.600485>,  <14.196397, 20.706699, 10.489911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.216699, 20.494659, 10.600485>,  <14.250535, 20.141258, 10.784775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.216699, 20.494659, 10.600485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167735, -0.468409, -0.867444,
		-0.982196, 0.003903, 0.187817,
		-0.084590, 0.883503, -0.460724,
		14.191321, 20.759710, 10.462268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.831490, 20.022203, 10.195539>,  <14.250535, 20.141258, 10.784775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.831490, 20.022203, 10.195539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.000274, 20.373363, 10.104990>,  <14.101544, 20.584059, 10.050660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.000274, 20.373363, 10.104990>,  <13.831490, 20.022203, 10.195539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000274, 20.373363, 10.104990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032654, -0.234812, -0.971492,
		-0.906026, 0.417323, -0.070414,
		0.421960, 0.877898, -0.226373,
		14.126862, 20.636732, 10.037078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.286241, 20.369921, 9.791710>,  <13.831490, 20.022203, 10.195539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.286241, 20.369921, 9.791710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.626929, 20.558407, 9.700038>,  <13.831343, 20.671499, 9.645035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.626929, 20.558407, 9.700038>,  <13.286241, 20.369921, 9.791710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.626929, 20.558407, 9.700038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071992, -0.327992, -0.941934,
		-0.519024, 0.818766, -0.245434,
		0.851723, 0.471216, -0.229180,
		13.882446, 20.699772, 9.631284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.007289, 22.141764, 17.651785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.375278, 22.195808, 17.504601>,  <13.596071, 22.228235, 17.416290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.375278, 22.195808, 17.504601>,  <13.007289, 22.141764, 17.651785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.375278, 22.195808, 17.504601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374731, 0.027728, -0.926719,
		-0.115009, 0.990442, 0.076140,
		0.919973, 0.135113, -0.367961,
		13.651269, 22.236341, 17.394213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.918511, 22.696678, 17.143372>,  <13.007289, 22.141764, 17.651785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.918511, 22.696678, 17.143372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.264272, 22.524937, 17.038710>,  <13.471728, 22.421892, 16.975912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.264272, 22.524937, 17.038710>,  <12.918511, 22.696678, 17.143372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.264272, 22.524937, 17.038710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199696, 0.184431, -0.962344,
		0.461446, 0.884103, 0.073682,
		0.864401, -0.429356, -0.261657,
		13.523592, 22.396130, 16.960213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281346, 23.205351, 16.688923>,  <12.918511, 22.696678, 17.143372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281346, 23.205351, 16.688923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399278, 22.829136, 16.621437>,  <13.470037, 22.603407, 16.580946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399278, 22.829136, 16.621437>,  <13.281346, 23.205351, 16.688923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.399278, 22.829136, 16.621437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046442, 0.162251, -0.985656,
		0.954421, 0.298436, 0.004156,
		0.294829, -0.940538, -0.168715,
		13.487726, 22.546974, 16.570822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.680835, 23.316957, 16.053244>,  <13.281346, 23.205351, 16.688923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.680835, 23.316957, 16.053244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.619472, 22.921692, 16.053791>,  <13.582654, 22.684532, 16.054119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.619472, 22.921692, 16.053791>,  <13.680835, 23.316957, 16.053244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.619472, 22.921692, 16.053791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041325, 0.005034, -0.999133,
		0.987298, -0.153332, -0.041608,
		-0.153408, -0.988162, 0.001367,
		13.573449, 22.625244, 16.054201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247916, 22.978729, 15.592229>,  <13.680835, 23.316957, 16.053244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.247916, 22.978729, 15.592229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.927251, 22.741962, 15.625618>,  <13.734852, 22.599901, 15.645651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.927251, 22.741962, 15.625618>,  <14.247916, 22.978729, 15.592229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.927251, 22.741962, 15.625618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067784, -0.228751, -0.971122,
		0.593920, -0.772856, 0.223504,
		-0.801664, -0.591918, 0.083472,
		13.686751, 22.564386, 15.650660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.307101, 22.564697, 15.061088>,  <14.247916, 22.978729, 15.592229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.307101, 22.564697, 15.061088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.931811, 22.484734, 15.174061>,  <13.706637, 22.436754, 15.241845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.931811, 22.484734, 15.174061>,  <14.307101, 22.564697, 15.061088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.931811, 22.484734, 15.174061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229945, -0.249722, -0.940619,
		0.258570, -0.947457, 0.188327,
		-0.938225, -0.199911, 0.282434,
		13.650344, 22.424761, 15.258791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176005, 21.897394, 14.969999>,  <14.307101, 22.564697, 15.061088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.176005, 21.897394, 14.969999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833110, 22.099274, 14.929173>,  <13.627373, 22.220402, 14.904676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833110, 22.099274, 14.929173>,  <14.176005, 21.897394, 14.969999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.833110, 22.099274, 14.929173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184724, -0.486459, -0.853952,
		-0.480622, -0.713199, 0.510245,
		-0.857252, 0.504683, -0.102058,
		13.575938, 22.250683, 14.898552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.791656, 21.336416, 14.758512>,  <14.176005, 21.897394, 14.969999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.791656, 21.336416, 14.758512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581077, 21.661587, 14.658909>,  <13.454729, 21.856689, 14.599147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581077, 21.661587, 14.658909>,  <13.791656, 21.336416, 14.758512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.581077, 21.661587, 14.658909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127701, -0.365160, -0.922144,
		-0.840563, -0.453661, 0.296049,
		-0.526447, 0.812926, -0.249007,
		13.423142, 21.905464, 14.584207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.177283, 21.107943, 14.468398>,  <13.791656, 21.336416, 14.758512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.177283, 21.107943, 14.468398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250865, 21.475483, 14.328758>,  <13.295014, 21.696007, 14.244974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250865, 21.475483, 14.328758>,  <13.177283, 21.107943, 14.468398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250865, 21.475483, 14.328758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091651, -0.337579, -0.936825,
		-0.978653, 0.204329, 0.022114,
		0.183955, 0.918853, -0.349100,
		13.306051, 21.751139, 14.224029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.441132, 20.885588, 14.513570>,  <13.177283, 21.107943, 14.468398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.441132, 20.885588, 14.513570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340713, 20.501499, 14.562483>,  <12.280461, 20.271046, 14.591830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340713, 20.501499, 14.562483>,  <12.441132, 20.885588, 14.513570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.340713, 20.501499, 14.562483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422593, 0.004930, 0.906306,
		-0.870856, 0.279201, 0.404545,
		-0.251047, -0.960220, 0.122282,
		12.265398, 20.213432, 14.599167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.336301, 20.856831, 15.201396>,  <12.441132, 20.885588, 14.513570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.336301, 20.856831, 15.201396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.388532, 20.480019, 15.077766>,  <12.419870, 20.253931, 15.003589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.388532, 20.480019, 15.077766>,  <12.336301, 20.856831, 15.201396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.388532, 20.480019, 15.077766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167874, -0.286233, 0.943339,
		-0.977122, -0.175065, 0.120767,
		0.130578, -0.942031, -0.309074,
		12.427705, 20.197409, 14.985044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.052806, 20.469870, 15.642803>,  <12.336301, 20.856831, 15.201396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.052806, 20.469870, 15.642803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.310775, 20.210529, 15.480955>,  <12.465556, 20.054926, 15.383846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.310775, 20.210529, 15.480955>,  <12.052806, 20.469870, 15.642803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310775, 20.210529, 15.480955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142925, -0.417777, 0.897237,
		-0.750764, -0.636479, -0.176769,
		0.644923, -0.648349, -0.404621,
		12.504251, 20.016026, 15.359569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.040272, 19.925581, 16.108147>,  <12.052806, 20.469870, 15.642803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.040272, 19.925581, 16.108147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362981, 19.835915, 15.889471>,  <12.556606, 19.782114, 15.758265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362981, 19.835915, 15.889471>,  <12.040272, 19.925581, 16.108147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.362981, 19.835915, 15.889471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392970, -0.487377, 0.779768,
		-0.441236, -0.843929, -0.305115,
		0.806774, -0.224161, -0.546687,
		12.605012, 19.768665, 15.725464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.108904, 19.237053, 16.240961>,  <12.040272, 19.925581, 16.108147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.108904, 19.237053, 16.240961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.456414, 19.405197, 16.136251>,  <12.664920, 19.506084, 16.073425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.456414, 19.405197, 16.136251>,  <12.108904, 19.237053, 16.240961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.456414, 19.405197, 16.136251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406092, -0.302235, 0.862406,
		0.283406, -0.855541, -0.433280,
		0.868775, 0.420362, -0.261773,
		12.717047, 19.531305, 16.057720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.546803, 18.721958, 16.404182>,  <12.108904, 19.237053, 16.240961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.546803, 18.721958, 16.404182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.789935, 19.039398, 16.393293>,  <12.935815, 19.229862, 16.386759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.789935, 19.039398, 16.393293>,  <12.546803, 18.721958, 16.404182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.789935, 19.039398, 16.393293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353558, -0.239779, 0.904159,
		0.711013, -0.559200, -0.426329,
		0.607830, 0.793600, -0.027224,
		12.972284, 19.277479, 16.385126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.112103, 18.472456, 16.646704>,  <12.546803, 18.721958, 16.404182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.112103, 18.472456, 16.646704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166566, 18.867809, 16.673719>,  <13.199244, 19.105021, 16.689930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166566, 18.867809, 16.673719>,  <13.112103, 18.472456, 16.646704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166566, 18.867809, 16.673719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394086, -0.116585, 0.911649,
		0.908933, -0.097509, -0.405381,
		0.136155, 0.988382, 0.067541,
		13.207413, 19.164324, 16.693981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869502, 18.535225, 16.745293>,  <13.112103, 18.472456, 16.646704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.869502, 18.535225, 16.745293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.713828, 18.875416, 16.886841>,  <13.620423, 19.079531, 16.971769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.713828, 18.875416, 16.886841>,  <13.869502, 18.535225, 16.745293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713828, 18.875416, 16.886841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545335, -0.096885, 0.832600,
		0.742391, 0.517016, -0.426088,
		-0.389186, 0.850475, 0.353873,
		13.597073, 19.130558, 16.993002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.383206, 18.961418, 16.990545>,  <13.869502, 18.535225, 16.745293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.383206, 18.961418, 16.990545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062373, 19.115429, 17.173155>,  <13.869873, 19.207836, 17.282721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062373, 19.115429, 17.173155>,  <14.383206, 18.961418, 16.990545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062373, 19.115429, 17.173155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475995, -0.049519, 0.878053,
		0.360682, 0.921575, -0.143553,
		-0.802083, 0.385029, 0.456526,
		13.821749, 19.230938, 17.310112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602867, 19.607395, 17.469105>,  <14.383206, 18.961418, 16.990545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602867, 19.607395, 17.469105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250712, 19.496449, 17.622982>,  <14.039420, 19.429880, 17.715307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250712, 19.496449, 17.622982>,  <14.602867, 19.607395, 17.469105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250712, 19.496449, 17.622982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395962, 0.016556, 0.918117,
		-0.261025, 0.960621, 0.095251,
		-0.880386, -0.277367, 0.384692,
		13.986596, 19.413239, 17.738390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.530936, 19.927856, 18.096544>,  <14.602867, 19.607395, 17.469105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.530936, 19.927856, 18.096544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219049, 19.681458, 18.141420>,  <14.031916, 19.533619, 18.168346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219049, 19.681458, 18.141420>,  <14.530936, 19.927856, 18.096544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.219049, 19.681458, 18.141420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137616, 0.006199, 0.990466,
		-0.610818, 0.787725, 0.079937,
		-0.779720, -0.615995, 0.112190,
		13.985132, 19.496658, 18.175077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.057058, 20.226820, 18.583626>,  <14.530936, 19.927856, 18.096544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.057058, 20.226820, 18.583626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986659, 19.833332, 18.598152>,  <13.944420, 19.597239, 18.606869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986659, 19.833332, 18.598152>,  <14.057058, 20.226820, 18.583626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.986659, 19.833332, 18.598152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185290, 0.003128, 0.982679,
		-0.966795, 0.179679, 0.181723,
		-0.175998, -0.983720, 0.036316,
		13.933860, 19.538216, 18.609047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.707374, 20.121046, 19.251713>,  <14.057058, 20.226820, 18.583626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.707374, 20.121046, 19.251713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832921, 19.759907, 19.134171>,  <13.908250, 19.543222, 19.063644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832921, 19.759907, 19.134171>,  <13.707374, 20.121046, 19.251713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.832921, 19.759907, 19.134171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324818, -0.188719, 0.926757,
		-0.892177, -0.386331, 0.234028,
		0.313870, -0.902848, -0.293858,
		13.927082, 19.489052, 19.046013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371326, 19.696281, 19.680807>,  <13.707374, 20.121046, 19.251713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371326, 19.696281, 19.680807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697082, 19.498791, 19.558819>,  <13.892535, 19.380297, 19.485626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697082, 19.498791, 19.558819>,  <13.371326, 19.696281, 19.680807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.697082, 19.498791, 19.558819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231145, -0.206061, 0.950847,
		-0.532300, -0.844851, -0.053691,
		0.814388, -0.493726, -0.304970,
		13.941398, 19.350674, 19.467327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.896645, 21.587921, 17.488747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.505981, 21.590302, 17.574636>,  <20.271584, 21.591730, 17.626171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.505981, 21.590302, 17.574636>,  <20.896645, 21.587921, 17.488747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505981, 21.590302, 17.574636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180858, -0.562139, -0.807026,
		0.115902, -0.827022, 0.550093,
		-0.976656, 0.005952, 0.214726,
		20.212984, 21.592087, 17.639055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.590893, 20.896700, 17.410997>,  <20.896645, 21.587921, 17.488747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.590893, 20.896700, 17.410997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.267952, 21.129093, 17.369743>,  <20.074186, 21.268530, 17.344990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.267952, 21.129093, 17.369743>,  <20.590893, 20.896700, 17.410997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267952, 21.129093, 17.369743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246700, -0.491127, -0.835424,
		-0.536025, -0.649037, 0.539841,
		-0.807352, 0.580987, -0.103139,
		20.025745, 21.303389, 17.338802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.982357, 20.481125, 17.210836>,  <20.590893, 20.896700, 17.410997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.982357, 20.481125, 17.210836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.866013, 20.835709, 17.066841>,  <19.796206, 21.048458, 16.980444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.866013, 20.835709, 17.066841>,  <19.982357, 20.481125, 17.210836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.866013, 20.835709, 17.066841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521381, -0.462337, -0.717221,
		-0.802223, -0.020919, 0.596657,
		-0.290860, 0.886458, -0.359991,
		19.778755, 21.101646, 16.958843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410704, 20.340015, 16.690132>,  <19.982357, 20.481125, 17.210836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410704, 20.340015, 16.690132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.487270, 20.722458, 16.601393>,  <19.533211, 20.951923, 16.548149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.487270, 20.722458, 16.601393>,  <19.410704, 20.340015, 16.690132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487270, 20.722458, 16.601393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402171, -0.129780, -0.906320,
		-0.895331, 0.262706, 0.359677,
		0.191417, 0.956108, -0.221849,
		19.544695, 21.009291, 16.534838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780361, 20.601469, 16.371214>,  <19.410704, 20.340015, 16.690132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780361, 20.601469, 16.371214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.052799, 20.879379, 16.278780>,  <19.216263, 21.046125, 16.223320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.052799, 20.879379, 16.278780>,  <18.780361, 20.601469, 16.371214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.052799, 20.879379, 16.278780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249960, -0.076013, -0.965268,
		-0.688208, 0.715201, 0.121894,
		0.681095, 0.694773, -0.231084,
		19.257128, 21.087811, 16.209455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.448122, 21.266737, 16.042152>,  <18.780361, 20.601469, 16.371214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.448122, 21.266737, 16.042152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.823620, 21.219746, 15.912563>,  <19.048918, 21.191551, 15.834810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.823620, 21.219746, 15.912563>,  <18.448122, 21.266737, 16.042152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823620, 21.219746, 15.912563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339691, -0.157086, -0.927327,
		0.058050, 0.980573, -0.187370,
		0.938744, -0.117479, -0.323972,
		19.105244, 21.184502, 15.815372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.532711, 21.676987, 15.453979>,  <18.448122, 21.266737, 16.042152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.532711, 21.676987, 15.453979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.851337, 21.438366, 15.414774>,  <19.042513, 21.295193, 15.391251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.851337, 21.438366, 15.414774>,  <18.532711, 21.676987, 15.453979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851337, 21.438366, 15.414774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208394, -0.118764, -0.970807,
		0.567497, 0.793738, -0.218921,
		0.796567, -0.596552, -0.098012,
		19.090307, 21.259399, 15.385370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910534, 21.879301, 14.841784>,  <18.532711, 21.676987, 15.453979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910534, 21.879301, 14.841784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.997139, 21.496235, 14.917683>,  <19.049101, 21.266396, 14.963222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.997139, 21.496235, 14.917683>,  <18.910534, 21.879301, 14.841784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.997139, 21.496235, 14.917683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241854, -0.240912, -0.939930,
		0.945848, 0.157615, -0.283775,
		0.216512, -0.957663, 0.189747,
		19.062092, 21.208937, 14.974607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322115, 21.714735, 14.231949>,  <18.910534, 21.879301, 14.841784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.322115, 21.714735, 14.231949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.193653, 21.370121, 14.389236>,  <19.116577, 21.163353, 14.483609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.193653, 21.370121, 14.389236>,  <19.322115, 21.714735, 14.231949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.193653, 21.370121, 14.389236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168432, -0.356633, -0.918936,
		0.931929, -0.361350, -0.030576,
		-0.321154, -0.861533, 0.393219,
		19.097307, 21.111662, 14.507202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.516327, 21.203705, 13.754170>,  <19.322115, 21.714735, 14.231949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.516327, 21.203705, 13.754170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.297737, 20.953274, 13.976662>,  <19.166582, 20.803015, 14.110157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.297737, 20.953274, 13.976662>,  <19.516327, 21.203705, 13.754170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.297737, 20.953274, 13.976662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277370, -0.491384, -0.825596,
		0.790209, -0.605450, 0.094874,
		-0.546476, -0.626078, 0.556229,
		19.133795, 20.765451, 14.143531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662685, 20.506048, 13.520274>,  <19.516327, 21.203705, 13.754170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.662685, 20.506048, 13.520274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.300133, 20.507389, 13.689253>,  <19.082602, 20.508194, 13.790640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.300133, 20.507389, 13.689253>,  <19.662685, 20.506048, 13.520274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300133, 20.507389, 13.689253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368403, -0.495687, -0.786495,
		0.206763, -0.868495, 0.450517,
		-0.906382, 0.003354, 0.422446,
		19.028217, 20.508394, 13.815987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509296, 19.830116, 13.600169>,  <19.662685, 20.506048, 13.520274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509296, 19.830116, 13.600169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.178497, 20.049889, 13.552498>,  <18.980019, 20.181751, 13.523895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.178497, 20.049889, 13.552498>,  <19.509296, 19.830116, 13.600169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.178497, 20.049889, 13.552498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302637, -0.613707, -0.729229,
		-0.473800, -0.567003, 0.673811,
		-0.826997, 0.549429, -0.119179,
		18.930399, 20.214718, 13.516744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.145519, 19.405613, 13.152389>,  <19.509296, 19.830116, 13.600169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.145519, 19.405613, 13.152389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.912994, 19.730507, 13.132977>,  <18.773479, 19.925444, 13.121329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.912994, 19.730507, 13.132977>,  <19.145519, 19.405613, 13.152389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912994, 19.730507, 13.132977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558967, -0.441969, -0.701583,
		-0.591299, -0.380710, 0.710933,
		-0.581310, 0.812233, -0.048532,
		18.738602, 19.974176, 13.118418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408703, 19.193169, 13.255485>,  <19.145519, 19.405613, 13.152389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408703, 19.193169, 13.255485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.417988, 19.536545, 13.050529>,  <18.423559, 19.742571, 12.927557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.417988, 19.536545, 13.050529>,  <18.408703, 19.193169, 13.255485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.417988, 19.536545, 13.050529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576169, -0.407359, -0.708582,
		-0.817001, 0.311670, 0.485150,
		0.023214, 0.858441, -0.512387,
		18.424952, 19.794077, 12.896813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886942, 18.854523, 13.678101>,  <18.408703, 19.193169, 13.255485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.886942, 18.854523, 13.678101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.776516, 18.475540, 13.742741>,  <17.710260, 18.248150, 13.781525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.776516, 18.475540, 13.742741>,  <17.886942, 18.854523, 13.678101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776516, 18.475540, 13.742741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331271, 0.064037, 0.941360,
		-0.902246, 0.313408, 0.296187,
		-0.276063, -0.947457, 0.161601,
		17.693697, 18.191303, 13.791221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.590265, 18.866234, 14.370198>,  <17.886942, 18.854523, 13.678101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.590265, 18.866234, 14.370198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.644642, 18.471909, 14.330824>,  <17.677269, 18.235313, 14.307199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.644642, 18.471909, 14.330824>,  <17.590265, 18.866234, 14.370198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644642, 18.471909, 14.330824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298466, -0.053991, 0.952892,
		-0.944689, -0.158919, 0.286892,
		0.135944, -0.985814, -0.098436,
		17.685425, 18.176165, 14.301293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239897, 18.483992, 14.897778>,  <17.590265, 18.866234, 14.370198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239897, 18.483992, 14.897778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.526253, 18.232380, 14.776566>,  <17.698067, 18.081413, 14.703838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.526253, 18.232380, 14.776566>,  <17.239897, 18.483992, 14.897778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.526253, 18.232380, 14.776566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392325, 0.003384, 0.919820,
		-0.577568, -0.777375, 0.249206,
		0.715889, -0.629028, -0.303029,
		17.741020, 18.043671, 14.685657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456186, 18.053591, 15.421758>,  <17.239897, 18.483992, 14.897778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.456186, 18.053591, 15.421758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.756504, 17.985958, 15.166346>,  <17.936695, 17.945379, 15.013099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.756504, 17.985958, 15.166346>,  <17.456186, 18.053591, 15.421758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.756504, 17.985958, 15.166346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632579, -0.094212, 0.768745,
		-0.190140, -0.981088, 0.036226,
		0.750794, -0.169085, -0.638529,
		17.981743, 17.935234, 14.974787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641579, 17.431057, 15.595416>,  <17.456186, 18.053591, 15.421758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641579, 17.431057, 15.595416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.950829, 17.619076, 15.425083>,  <18.136379, 17.731888, 15.322884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.950829, 17.619076, 15.425083>,  <17.641579, 17.431057, 15.595416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.950829, 17.619076, 15.425083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555606, -0.178096, 0.812147,
		0.305910, -0.864486, -0.398852,
		0.773124, 0.470049, -0.425833,
		18.182766, 17.760090, 15.297334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.201378, 16.999773, 15.645523>,  <17.641579, 17.431057, 15.595416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.201378, 16.999773, 15.645523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.335667, 17.374432, 15.605556>,  <18.416239, 17.599228, 15.581576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.335667, 17.374432, 15.605556>,  <18.201378, 16.999773, 15.645523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.335667, 17.374432, 15.605556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556153, -0.111486, 0.823568,
		0.760254, -0.332058, -0.558347,
		0.335720, 0.936648, -0.099918,
		18.436382, 17.655426, 15.575582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.902666, 16.967522, 15.864646>,  <18.201378, 16.999773, 15.645523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.902666, 16.967522, 15.864646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.857323, 17.364887, 15.857946>,  <18.830116, 17.603306, 15.853927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.857323, 17.364887, 15.857946>,  <18.902666, 16.967522, 15.864646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857323, 17.364887, 15.857946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477157, 0.069220, 0.876088,
		0.871476, 0.091322, -0.481861,
		-0.113361, 0.993413, -0.016749,
		18.823315, 17.662910, 15.852921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531656, 17.318302, 16.039133>,  <18.902666, 16.967522, 15.864646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531656, 17.318302, 16.039133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.256500, 17.598335, 16.115749>,  <19.091406, 17.766356, 16.161720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.256500, 17.598335, 16.115749>,  <19.531656, 17.318302, 16.039133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.256500, 17.598335, 16.115749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487858, 0.250582, 0.836184,
		0.537402, 0.668649, -0.513914,
		-0.687891, 0.700084, 0.191542,
		19.050133, 17.808361, 16.173212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.038158, 17.912457, 16.169395>,  <19.531656, 17.318302, 16.039133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.038158, 17.912457, 16.169395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.670223, 17.938343, 16.324165>,  <19.449463, 17.953875, 16.417027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.670223, 17.938343, 16.324165>,  <20.038158, 17.912457, 16.169395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.670223, 17.938343, 16.324165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392291, 0.158191, 0.906136,
		-0.002568, 0.985286, -0.170897,
		-0.919837, 0.064714, 0.386925,
		19.394272, 17.957758, 16.440243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984459, 18.587149, 16.503992>,  <20.038158, 17.912457, 16.169395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984459, 18.587149, 16.503992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.665089, 18.401005, 16.656807>,  <19.473467, 18.289318, 16.748495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.665089, 18.401005, 16.656807>,  <19.984459, 18.587149, 16.503992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.665089, 18.401005, 16.656807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170350, 0.433991, 0.884665,
		-0.577489, 0.771421, -0.267237,
		-0.798428, -0.465361, 0.382037,
		19.425560, 18.261396, 16.771418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626371, 19.107723, 16.904259>,  <19.984459, 18.587149, 16.503992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626371, 19.107723, 16.904259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.508312, 18.758228, 17.058905>,  <19.437477, 18.548531, 17.151691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.508312, 18.758228, 17.058905>,  <19.626371, 19.107723, 16.904259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.508312, 18.758228, 17.058905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084017, 0.379339, 0.921435,
		-0.951750, 0.304443, -0.038552,
		-0.295149, -0.873737, 0.386614,
		19.419767, 18.496107, 17.174889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.020355, 19.172197, 17.273680>,  <19.626371, 19.107723, 16.904259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.020355, 19.172197, 17.273680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.171825, 18.832947, 17.421886>,  <19.262707, 18.629396, 17.510811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.171825, 18.832947, 17.421886>,  <19.020355, 19.172197, 17.273680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171825, 18.832947, 17.421886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138639, 0.343834, 0.928740,
		-0.915087, -0.403059, 0.012617,
		0.378675, -0.848128, 0.370518,
		19.285427, 18.578508, 17.533041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633276, 19.043591, 17.833439>,  <19.020355, 19.172197, 17.273680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633276, 19.043591, 17.833439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.985825, 18.858044, 17.869251>,  <19.197353, 18.746716, 17.890738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.985825, 18.858044, 17.869251>,  <18.633276, 19.043591, 17.833439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.985825, 18.858044, 17.869251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100189, 0.368726, 0.924123,
		-0.461681, -0.805524, 0.371458,
		0.881370, -0.463866, 0.089529,
		19.250235, 18.718884, 17.896111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.516693, 18.677074, 18.396128>,  <18.633276, 19.043591, 17.833439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.516693, 18.677074, 18.396128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.914299, 18.710304, 18.367756>,  <19.152863, 18.730242, 18.350733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.914299, 18.710304, 18.367756>,  <18.516693, 18.677074, 18.396128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.914299, 18.710304, 18.367756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029879, 0.417802, 0.908047,
		0.105071, -0.904732, 0.412820,
		0.994016, 0.083075, -0.070931,
		19.212503, 18.735228, 18.346476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.368061, 18.083191, 18.723095>,  <18.516693, 18.677074, 18.396128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.368061, 18.083191, 18.723095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.129761, 17.846245, 18.940048>,  <17.986780, 17.704077, 19.070221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.129761, 17.846245, 18.940048>,  <18.368061, 18.083191, 18.723095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.129761, 17.846245, 18.940048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527981, -0.220044, -0.820254,
		0.605240, -0.775037, -0.181667,
		-0.595752, -0.592367, 0.542385,
		17.951035, 17.668535, 19.102764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481056, 17.457199, 18.412489>,  <18.368061, 18.083191, 18.723095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481056, 17.457199, 18.412489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.126884, 17.470772, 18.597904>,  <17.914381, 17.478916, 18.709154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.126884, 17.470772, 18.597904>,  <18.481056, 17.457199, 18.412489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126884, 17.470772, 18.597904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454405, -0.272731, -0.848017,
		0.097645, -0.961492, 0.256903,
		-0.885427, 0.033933, 0.463538,
		17.861256, 17.480951, 18.736965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143202, 16.976877, 18.097118>,  <18.481056, 17.457199, 18.412489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143202, 16.976877, 18.097118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.840092, 17.152657, 18.290058>,  <17.658226, 17.258123, 18.405823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.840092, 17.152657, 18.290058>,  <18.143202, 16.976877, 18.097118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840092, 17.152657, 18.290058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604123, -0.193128, -0.773134,
		-0.246604, -0.877257, 0.411832,
		-0.757774, 0.439455, 0.482346,
		17.612759, 17.284491, 18.434763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.654646, 16.497440, 17.885313>,  <18.143202, 16.976877, 18.097118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.654646, 16.497440, 17.885313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.454365, 16.825619, 17.995707>,  <17.334196, 17.022526, 18.061943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.454365, 16.825619, 17.995707>,  <17.654646, 16.497440, 17.885313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454365, 16.825619, 17.995707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552680, -0.057623, -0.831399,
		-0.666215, -0.568813, 0.482295,
		-0.500702, 0.820446, 0.275982,
		17.304153, 17.071753, 18.078501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.903913, 16.341528, 17.727238>,  <17.654646, 16.497440, 17.885313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.903913, 16.341528, 17.727238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.873936, 16.738400, 17.767172>,  <16.855949, 16.976522, 17.791132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.873936, 16.738400, 17.767172>,  <16.903913, 16.341528, 17.727238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.873936, 16.738400, 17.767172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478230, 0.052091, -0.876688,
		-0.875031, -0.113448, 0.470585,
		-0.074945, 0.992177, 0.099836,
		16.851452, 17.036053, 17.797123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.252581, 16.538414, 17.722692>,  <16.903913, 16.341528, 17.727238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.252581, 16.538414, 17.722692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.423901, 16.877808, 17.598347>,  <16.526693, 17.081444, 17.523739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.423901, 16.877808, 17.598347>,  <16.252581, 16.538414, 17.722692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.423901, 16.877808, 17.598347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648553, 0.049086, -0.759585,
		-0.629236, 0.526943, 0.571309,
		0.428301, 0.848482, -0.310863,
		16.552391, 17.132353, 17.505087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651995, 17.044270, 17.644964>,  <16.252581, 16.538414, 17.722692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651995, 17.044270, 17.644964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.962699, 17.165215, 17.423977>,  <16.149122, 17.237782, 17.291386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.962699, 17.165215, 17.423977>,  <15.651995, 17.044270, 17.644964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.962699, 17.165215, 17.423977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608262, 0.132740, -0.782558,
		-0.163282, 0.943905, 0.287023,
		0.776760, 0.302363, -0.552467,
		16.195726, 17.255924, 17.258236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.483240, 17.583731, 17.084402>,  <15.651995, 17.044270, 17.644964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.483240, 17.583731, 17.084402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.831933, 17.470749, 16.924252>,  <16.041149, 17.402960, 16.828161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.831933, 17.470749, 16.924252>,  <15.483240, 17.583731, 17.084402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.831933, 17.470749, 16.924252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418985, -0.006055, -0.907973,
		0.254038, 0.959261, -0.123623,
		0.871732, -0.282456, -0.400378,
		16.093452, 17.386011, 16.804138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780699, 18.049198, 16.576042>,  <15.483240, 17.583731, 17.084402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780699, 18.049198, 16.576042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.942531, 17.699062, 16.470139>,  <16.039629, 17.488981, 16.406597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.942531, 17.699062, 16.470139>,  <15.780699, 18.049198, 16.576042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.942531, 17.699062, 16.470139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438995, 0.068076, -0.895907,
		0.802246, 0.478693, -0.356727,
		0.404580, -0.875339, -0.264757,
		16.063904, 17.436460, 16.390711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094187, 18.140976, 15.832893>,  <15.780699, 18.049198, 16.576042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.094187, 18.140976, 15.832893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.068943, 17.742809, 15.861641>,  <16.053797, 17.503910, 15.878889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.068943, 17.742809, 15.861641>,  <16.094187, 18.140976, 15.832893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068943, 17.742809, 15.861641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440989, -0.036787, -0.896758,
		0.895291, -0.088287, -0.436645,
		-0.063110, -0.995416, 0.071869,
		16.050011, 17.444185, 15.883202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265182, 17.897903, 15.157026>,  <16.094187, 18.140976, 15.832893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265182, 17.897903, 15.157026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.064354, 17.600983, 15.334526>,  <15.943857, 17.422831, 15.441026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.064354, 17.600983, 15.334526>,  <16.265182, 17.897903, 15.157026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064354, 17.600983, 15.334526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492536, -0.176336, -0.852241,
		0.710868, -0.646448, -0.277076,
		-0.502071, -0.742301, 0.443750,
		15.913733, 17.378292, 15.467651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.138777, 17.504311, 14.545630>,  <16.265182, 17.897903, 15.157026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.138777, 17.504311, 14.545630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.935884, 17.306637, 14.828047>,  <15.814148, 17.188032, 14.997498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.935884, 17.306637, 14.828047>,  <16.138777, 17.504311, 14.545630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.935884, 17.306637, 14.828047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611723, -0.370622, -0.698881,
		0.607051, -0.786398, -0.114313,
		-0.507231, -0.494184, 0.706044,
		15.783714, 17.158382, 15.039860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051754, 16.873518, 14.306923>,  <16.138777, 17.504311, 14.545630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.051754, 16.873518, 14.306923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.753993, 16.905632, 14.572077>,  <15.575336, 16.924900, 14.731169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.753993, 16.905632, 14.572077>,  <16.051754, 16.873518, 14.306923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.753993, 16.905632, 14.572077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607189, -0.494438, -0.621975,
		0.277819, -0.865497, 0.416811,
		-0.744405, 0.080287, 0.662885,
		15.530672, 16.929718, 14.770942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.793783, 16.225277, 14.359414>,  <16.051754, 16.873518, 14.306923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.793783, 16.225277, 14.359414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.505645, 16.466099, 14.497187>,  <15.332762, 16.610592, 14.579850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.505645, 16.466099, 14.497187>,  <15.793783, 16.225277, 14.359414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505645, 16.466099, 14.497187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667044, -0.465174, -0.581950,
		-0.190143, -0.648957, 0.736682,
		-0.720346, 0.602053, 0.344434,
		15.289541, 16.646715, 14.600516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.453156, 19.121922, 20.191074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.811053, 19.087330, 20.015821>,  <14.025791, 19.066574, 19.910669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.811053, 19.087330, 20.015821>,  <13.453156, 19.121922, 20.191074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.811053, 19.087330, 20.015821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442679, 0.042289, 0.895683,
		-0.058931, -0.995356, 0.076120,
		0.894742, -0.086480, -0.438131,
		14.079475, 19.061386, 19.884382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.857627, 18.613693, 20.591532>,  <13.453156, 19.121922, 20.191074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.857627, 18.613693, 20.591532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.135243, 18.814106, 20.384737>,  <14.301813, 18.934353, 20.260660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.135243, 18.814106, 20.384737>,  <13.857627, 18.613693, 20.591532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135243, 18.814106, 20.384737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573800, 0.048736, 0.817544,
		0.434810, -0.864056, -0.253666,
		0.694041, 0.501030, -0.516987,
		14.343456, 18.964415, 20.229641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.390494, 18.324007, 20.901855>,  <13.857627, 18.613693, 20.591532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.390494, 18.324007, 20.901855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.542159, 18.624031, 20.685101>,  <14.633158, 18.804047, 20.555048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.542159, 18.624031, 20.685101>,  <14.390494, 18.324007, 20.901855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.542159, 18.624031, 20.685101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748368, 0.095858, 0.656320,
		0.544225, -0.654384, -0.524977,
		0.379163, 0.750062, -0.541888,
		14.655908, 18.849051, 20.522533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.055468, 18.154959, 20.702332>,  <14.390494, 18.324007, 20.901855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.055468, 18.154959, 20.702332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.046823, 18.554729, 20.712740>,  <15.041636, 18.794592, 20.718985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.046823, 18.554729, 20.712740>,  <15.055468, 18.154959, 20.702332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.046823, 18.554729, 20.712740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770128, 0.000046, 0.637890,
		0.637524, 0.033825, -0.769688,
		-0.021612, 0.999428, 0.026020,
		15.040339, 18.854557, 20.720547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729115, 18.347775, 20.651344>,  <15.055468, 18.154959, 20.702332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729115, 18.347775, 20.651344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.531114, 18.661201, 20.801542>,  <15.412313, 18.849257, 20.891661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.531114, 18.661201, 20.801542>,  <15.729115, 18.347775, 20.651344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.531114, 18.661201, 20.801542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808093, 0.256350, 0.530350,
		0.319307, 0.565959, -0.760088,
		-0.495005, 0.783566, 0.375493,
		15.382612, 18.896271, 20.914190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215202, 18.836817, 20.746557>,  <15.729115, 18.347775, 20.651344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.215202, 18.836817, 20.746557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.910375, 18.934849, 20.986286>,  <15.727478, 18.993668, 21.130123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.910375, 18.934849, 20.986286>,  <16.215202, 18.836817, 20.746557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910375, 18.934849, 20.986286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647195, 0.260078, 0.716588,
		0.019753, 0.933967, -0.356813,
		-0.762068, 0.245082, 0.599322,
		15.681754, 19.008373, 21.166082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378809, 19.344534, 21.066662>,  <16.215202, 18.836817, 20.746557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.378809, 19.344534, 21.066662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.094040, 19.242638, 21.328432>,  <15.923179, 19.181499, 21.485495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.094040, 19.242638, 21.328432>,  <16.378809, 19.344534, 21.066662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094040, 19.242638, 21.328432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547321, 0.382612, 0.744344,
		-0.440005, 0.888097, -0.132965,
		-0.711924, -0.254741, 0.654425,
		15.880463, 19.166216, 21.524759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.320412, 20.016899, 21.663282>,  <16.378809, 19.344534, 21.066662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.320412, 20.016899, 21.663282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.112904, 19.725094, 21.841581>,  <15.988399, 19.550011, 21.948561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.112904, 19.725094, 21.841581>,  <16.320412, 20.016899, 21.663282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112904, 19.725094, 21.841581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355887, 0.289792, 0.888462,
		-0.777318, 0.619542, 0.109288,
		-0.518769, -0.729512, 0.445748,
		15.957273, 19.506241, 21.975306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038382, 20.315449, 22.380739>,  <16.320412, 20.016899, 21.663282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038382, 20.315449, 22.380739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.061596, 19.916180, 22.387524>,  <16.075525, 19.676619, 22.391594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.061596, 19.916180, 22.387524>,  <16.038382, 20.315449, 22.380739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061596, 19.916180, 22.387524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461492, 0.041890, 0.886155,
		-0.885244, -0.043601, 0.463079,
		0.058036, -0.998170, 0.016962,
		16.079006, 19.616728, 22.392612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830211, 20.103163, 23.114801>,  <16.038382, 20.315449, 22.380739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830211, 20.103163, 23.114801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.061604, 19.831661, 22.933847>,  <16.200439, 19.668760, 22.825275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.061604, 19.831661, 22.933847>,  <15.830211, 20.103163, 23.114801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061604, 19.831661, 22.933847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616210, 0.000262, 0.787582,
		-0.534457, -0.734365, 0.418407,
		0.578482, -0.678755, -0.452383,
		16.235147, 19.628035, 22.798132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.893478, 19.732382, 23.764421>,  <15.830211, 20.103163, 23.114801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.893478, 19.732382, 23.764421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.161736, 19.577553, 23.511309>,  <16.322691, 19.484655, 23.359442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.161736, 19.577553, 23.511309>,  <15.893478, 19.732382, 23.764421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.161736, 19.577553, 23.511309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604003, -0.210244, 0.768750,
		-0.430600, -0.897760, 0.092794,
		0.670644, -0.387071, -0.632781,
		16.362928, 19.461432, 23.321474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173273, 19.116415, 24.001616>,  <15.893478, 19.732382, 23.764421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173273, 19.116415, 24.001616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.435833, 19.259914, 23.736153>,  <16.593369, 19.346014, 23.576876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.435833, 19.259914, 23.736153>,  <16.173273, 19.116415, 24.001616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435833, 19.259914, 23.736153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716848, -0.022468, 0.696867,
		0.235089, -0.933164, -0.271916,
		0.656401, 0.358748, -0.663655,
		16.632753, 19.367538, 23.537056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790155, 18.732117, 24.011349>,  <16.173273, 19.116415, 24.001616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790155, 18.732117, 24.011349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.890781, 19.093613, 23.872803>,  <16.951157, 19.310511, 23.789675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.890781, 19.093613, 23.872803>,  <16.790155, 18.732117, 24.011349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890781, 19.093613, 23.872803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712158, 0.069498, 0.698571,
		0.655398, -0.422404, -0.626122,
		0.251565, 0.903740, -0.346367,
		16.966251, 19.364735, 23.768892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512234, 18.789505, 23.802896>,  <16.790155, 18.732117, 24.011349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.512234, 18.789505, 23.802896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.330280, 19.107773, 23.962891>,  <17.221107, 19.298735, 24.058887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.330280, 19.107773, 23.962891>,  <17.512234, 18.789505, 23.802896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330280, 19.107773, 23.962891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634777, -0.025326, 0.772280,
		0.624611, 0.605200, -0.493553,
		-0.454884, 0.795670, 0.399986,
		17.193815, 19.346474, 24.082886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692013, 19.281456, 24.409863>,  <17.512234, 18.789505, 23.802896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692013, 19.281456, 24.409863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.086750, 19.225945, 24.443037>,  <18.323593, 19.192636, 24.462942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.086750, 19.225945, 24.443037>,  <17.692013, 19.281456, 24.409863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.086750, 19.225945, 24.443037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051122, -0.218812, -0.974427,
		0.153379, 0.965847, -0.208839,
		0.986844, -0.138781, 0.082937,
		18.382803, 19.184311, 24.467918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.043018, 19.645128, 23.857302>,  <17.692013, 19.281456, 24.409863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.043018, 19.645128, 23.857302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.309925, 19.375233, 23.983463>,  <18.470070, 19.213295, 24.059160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.309925, 19.375233, 23.983463>,  <18.043018, 19.645128, 23.857302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.309925, 19.375233, 23.983463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122867, -0.317944, -0.940115,
		0.734613, 0.666062, -0.129251,
		0.667269, -0.674740, 0.315402,
		18.510105, 19.172812, 24.078085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.530836, 19.619503, 23.323942>,  <18.043018, 19.645128, 23.857302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.530836, 19.619503, 23.323942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.604309, 19.278511, 23.519714>,  <18.648394, 19.073915, 23.637178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.604309, 19.278511, 23.519714>,  <18.530836, 19.619503, 23.323942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604309, 19.278511, 23.519714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305428, -0.423762, -0.852725,
		0.934331, 0.306117, 0.182533,
		0.183683, -0.852478, 0.489431,
		18.659414, 19.022768, 23.666544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.175194, 19.413782, 23.174723>,  <18.530836, 19.619503, 23.323942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.175194, 19.413782, 23.174723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.933853, 19.106606, 23.260725>,  <18.789047, 18.922298, 23.312326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.933853, 19.106606, 23.260725>,  <19.175194, 19.413782, 23.174723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933853, 19.106606, 23.260725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313871, -0.476523, -0.821225,
		0.733109, -0.428005, 0.528547,
		-0.603354, -0.767943, 0.215005,
		18.752848, 18.876223, 23.325226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.585882, 18.909544, 23.032543>,  <19.175194, 19.413782, 23.174723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.585882, 18.909544, 23.032543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.220589, 18.746571, 23.032364>,  <19.001411, 18.648787, 23.032257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.220589, 18.746571, 23.032364>,  <19.585882, 18.909544, 23.032543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220589, 18.746571, 23.032364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185074, -0.413849, -0.891334,
		0.362973, -0.814080, 0.453347,
		-0.913235, -0.407433, -0.000449,
		18.946619, 18.624340, 23.032228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699785, 18.301071, 22.792122>,  <19.585882, 18.909544, 23.032543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.699785, 18.301071, 22.792122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.304600, 18.329334, 22.737074>,  <19.067490, 18.346292, 22.704044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.304600, 18.329334, 22.737074>,  <19.699785, 18.301071, 22.792122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304600, 18.329334, 22.737074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094453, -0.429026, -0.898341,
		-0.122518, -0.900525, 0.417187,
		-0.987962, 0.070658, -0.137621,
		19.008211, 18.350533, 22.695787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.436436, 17.675848, 22.458252>,  <19.699785, 18.301071, 22.792122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.436436, 17.675848, 22.458252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.131516, 17.926743, 22.394409>,  <18.948563, 18.077278, 22.356104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.131516, 17.926743, 22.394409>,  <19.436436, 17.675848, 22.458252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.131516, 17.926743, 22.394409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197065, -0.459828, -0.865866,
		-0.616493, -0.628597, 0.474133,
		-0.762300, 0.627236, -0.159606,
		18.902824, 18.114914, 22.346527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.961733, 17.299414, 22.259354>,  <19.436436, 17.675848, 22.458252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.961733, 17.299414, 22.259354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.815311, 17.639385, 22.107761>,  <18.727459, 17.843369, 22.016806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.815311, 17.639385, 22.107761>,  <18.961733, 17.299414, 22.259354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.815311, 17.639385, 22.107761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269262, -0.486562, -0.831117,
		-0.890788, -0.202187, 0.406961,
		-0.366052, 0.849928, -0.378982,
		18.705496, 17.894363, 21.994066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364283, 17.145124, 21.861338>,  <18.961733, 17.299414, 22.259354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.364283, 17.145124, 21.861338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.437290, 17.513481, 21.723557>,  <18.481094, 17.734495, 21.640888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.437290, 17.513481, 21.723557>,  <18.364283, 17.145124, 21.861338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437290, 17.513481, 21.723557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341653, -0.269101, -0.900477,
		-0.921933, 0.282035, 0.265509,
		0.182517, 0.920891, -0.344452,
		18.492044, 17.789749, 21.620220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751333, 17.518713, 21.623438>,  <18.364283, 17.145124, 21.861338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751333, 17.518713, 21.623438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.050079, 17.698017, 21.426968>,  <18.229326, 17.805599, 21.309086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.050079, 17.698017, 21.426968>,  <17.751333, 17.518713, 21.623438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.050079, 17.698017, 21.426968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417895, -0.258164, -0.871043,
		-0.517259, 0.855811, -0.005487,
		0.746864, 0.448262, -0.491177,
		18.274139, 17.832497, 21.279615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.442842, 17.610531, 20.955030>,  <17.751333, 17.518713, 21.623438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.442842, 17.610531, 20.955030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.818726, 17.713940, 20.865480>,  <18.044254, 17.775986, 20.811750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.818726, 17.713940, 20.865480>,  <17.442842, 17.610531, 20.955030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.818726, 17.713940, 20.865480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205959, -0.094783, -0.973960,
		-0.273009, 0.961344, -0.035823,
		0.939706, 0.258521, -0.223874,
		18.100637, 17.791496, 20.798319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454584, 18.190125, 20.356827>,  <17.442842, 17.610531, 20.955030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.454584, 18.190125, 20.356827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.803238, 17.994125, 20.361858>,  <18.012430, 17.876526, 20.364878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.803238, 17.994125, 20.361858>,  <17.454584, 18.190125, 20.356827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803238, 17.994125, 20.361858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029695, 0.027167, -0.999190,
		0.489259, 0.871300, 0.038230,
		0.871633, -0.489998, 0.012581,
		18.064728, 17.847126, 20.365633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838049, 18.540539, 19.873728>,  <17.454584, 18.190125, 20.356827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838049, 18.540539, 19.873728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.019073, 18.183975, 19.883326>,  <18.127687, 17.970037, 19.889084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.019073, 18.183975, 19.883326>,  <17.838049, 18.540539, 19.873728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019073, 18.183975, 19.883326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169229, -0.112273, -0.979161,
		0.875529, 0.439069, -0.201663,
		0.452560, -0.891411, 0.023995,
		18.154842, 17.916552, 19.890524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264666, 18.486830, 19.292517>,  <17.838049, 18.540539, 19.873728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264666, 18.486830, 19.292517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.161179, 18.115509, 19.399343>,  <18.099087, 17.892717, 19.463440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.161179, 18.115509, 19.399343>,  <18.264666, 18.486830, 19.292517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161179, 18.115509, 19.399343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495494, -0.109793, -0.861645,
		0.829186, -0.355253, -0.431561,
		-0.258720, -0.928300, 0.267065,
		18.083563, 17.837019, 19.479464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.956886, 18.423016, 19.163681>,  <18.264666, 18.486830, 19.292517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.956886, 18.423016, 19.163681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.224857, 18.638523, 18.959356>,  <19.385639, 18.767826, 18.836761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.224857, 18.638523, 18.959356>,  <18.956886, 18.423016, 19.163681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.224857, 18.638523, 18.959356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251992, 0.482174, 0.839052,
		0.698353, -0.690824, 0.187257,
		0.669928, 0.538767, -0.510810,
		19.425837, 18.800154, 18.806112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.458010, 18.280674, 19.563387>,  <18.956886, 18.423016, 19.163681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.458010, 18.280674, 19.563387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.566711, 18.608810, 19.362114>,  <19.631933, 18.805693, 19.241350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.566711, 18.608810, 19.362114>,  <19.458010, 18.280674, 19.563387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566711, 18.608810, 19.362114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287640, 0.429719, 0.855923,
		0.918375, -0.377335, -0.119186,
		0.271753, 0.820341, -0.503180,
		19.648237, 18.854912, 19.211161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.092083, 18.403980, 19.912397>,  <19.458010, 18.280674, 19.563387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.092083, 18.403980, 19.912397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.992764, 18.743355, 19.725422>,  <19.933172, 18.946980, 19.613235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.992764, 18.743355, 19.725422>,  <20.092083, 18.403980, 19.912397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992764, 18.743355, 19.725422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273403, 0.524315, 0.806439,
		0.929300, 0.072439, -0.362153,
		-0.248299, 0.848438, -0.467441,
		19.918274, 18.997887, 19.585190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.695969, 18.771235, 20.019674>,  <20.092083, 18.403980, 19.912397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.695969, 18.771235, 20.019674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.431744, 19.055264, 19.922142>,  <20.273209, 19.225681, 19.863623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.431744, 19.055264, 19.922142>,  <20.695969, 18.771235, 20.019674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.431744, 19.055264, 19.922142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322615, 0.561727, 0.761828,
		0.677918, 0.424573, -0.600137,
		-0.660565, 0.710071, -0.243831,
		20.233574, 19.268284, 19.848993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.048534, 19.399464, 20.066162>,  <20.695969, 18.771235, 20.019674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.048534, 19.399464, 20.066162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.664375, 19.501595, 20.110777>,  <20.433880, 19.562874, 20.137547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.664375, 19.501595, 20.110777>,  <21.048534, 19.399464, 20.066162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664375, 19.501595, 20.110777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249118, 0.607594, 0.754168,
		0.124791, 0.752089, -0.647140,
		-0.960400, 0.255328, 0.111536,
		20.376255, 19.578194, 20.144238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.043198, 20.114784, 20.267820>,  <21.048534, 19.399464, 20.066162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.043198, 20.114784, 20.267820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.694035, 19.960060, 20.386757>,  <20.484537, 19.867226, 20.458118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.694035, 19.960060, 20.386757>,  <21.043198, 20.114784, 20.267820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.694035, 19.960060, 20.386757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095188, 0.462710, 0.881385,
		-0.478511, 0.797670, -0.367083,
		-0.872907, -0.386810, 0.297340,
		20.432163, 19.844017, 20.475960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.551224, 20.701887, 20.663895>,  <21.043198, 20.114784, 20.267820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.551224, 20.701887, 20.663895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.439728, 20.336727, 20.783169>,  <20.372829, 20.117632, 20.854734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.439728, 20.336727, 20.783169>,  <20.551224, 20.701887, 20.663895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439728, 20.336727, 20.783169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040101, 0.299158, 0.953360,
		-0.959528, 0.277699, -0.046780,
		-0.278742, -0.912900, 0.298187,
		20.356106, 20.062857, 20.872625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.911341, 21.265596, 20.487326>,  <20.551224, 20.701887, 20.663895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.911341, 21.265596, 20.487326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.884472, 21.662716, 20.447645>,  <19.868351, 21.900988, 20.423838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.884472, 21.662716, 20.447645>,  <19.911341, 21.265596, 20.487326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884472, 21.662716, 20.447645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078135, -0.093885, -0.992512,
		-0.994677, -0.074420, -0.071266,
		-0.067172, 0.992798, -0.099200,
		19.864321, 21.960556, 20.417885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.398188, 21.374077, 20.001520>,  <19.911341, 21.265596, 20.487326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.398188, 21.374077, 20.001520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.618435, 21.707897, 19.994076>,  <19.750584, 21.908190, 19.989609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.618435, 21.707897, 19.994076>,  <19.398188, 21.374077, 20.001520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.618435, 21.707897, 19.994076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034386, 0.000398, -0.999408,
		-0.834049, 0.550932, 0.028916,
		0.550617, 0.834550, -0.018613,
		19.783621, 21.958261, 19.988491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986156, 21.812035, 19.520638>,  <19.398188, 21.374077, 20.001520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.986156, 21.812035, 19.520638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.369411, 21.924023, 19.544600>,  <19.599365, 21.991215, 19.558977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.369411, 21.924023, 19.544600>,  <18.986156, 21.812035, 19.520638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369411, 21.924023, 19.544600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037689, 0.084082, -0.995746,
		-0.283816, 0.956319, 0.070010,
		0.958138, 0.279970, 0.059907,
		19.656853, 22.008013, 19.562571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163496, 22.445444, 19.059515>,  <18.986156, 21.812035, 19.520638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.163496, 22.445444, 19.059515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.512718, 22.262009, 19.125813>,  <19.722252, 22.151947, 19.165590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.512718, 22.262009, 19.125813>,  <19.163496, 22.445444, 19.059515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.512718, 22.262009, 19.125813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099967, -0.164353, -0.981323,
		0.477265, 0.873318, -0.097645,
		0.873055, -0.458590, 0.165743,
		19.774635, 22.124432, 19.175535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.660063, 22.819075, 18.590147>,  <19.163496, 22.445444, 19.059515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.660063, 22.819075, 18.590147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.820793, 22.463371, 18.677559>,  <19.917231, 22.249949, 18.730005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.820793, 22.463371, 18.677559>,  <19.660063, 22.819075, 18.590147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.820793, 22.463371, 18.677559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303901, -0.095615, -0.947894,
		0.863818, 0.447298, 0.231826,
		0.401825, -0.889259, 0.218528,
		19.941341, 22.196594, 18.743118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.317158, 22.891319, 18.249340>,  <19.660063, 22.819075, 18.590147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.317158, 22.891319, 18.249340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.218166, 22.510391, 18.320713>,  <20.158772, 22.281834, 18.363537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.218166, 22.510391, 18.320713>,  <20.317158, 22.891319, 18.249340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.218166, 22.510391, 18.320713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121158, -0.213132, -0.969482,
		0.961289, -0.218305, 0.168127,
		-0.247476, -0.952322, 0.178432,
		20.143923, 22.224695, 18.374243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.799492, 22.447733, 17.802509>,  <20.317158, 22.891319, 18.249340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.799492, 22.447733, 17.802509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.478817, 22.223518, 17.885550>,  <20.286411, 22.088989, 17.935373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.478817, 22.223518, 17.885550>,  <20.799492, 22.447733, 17.802509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.478817, 22.223518, 17.885550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031544, -0.307149, -0.951139,
		0.596912, -0.769064, 0.228555,
		-0.801686, -0.560536, 0.207600,
		20.238312, 22.055357, 17.947830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.052464, 22.174219, 23.127678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.895882, 21.822247, 23.019987>,  <17.801933, 21.611063, 22.955372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.895882, 21.822247, 23.019987>,  <18.052464, 22.174219, 23.127678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.895882, 21.822247, 23.019987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643597, 0.470915, -0.603342,
		0.657683, -0.062906, -0.750663,
		-0.391453, -0.879933, -0.269227,
		17.778446, 21.558268, 22.939219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.089642, 22.180365, 22.346186>,  <18.052464, 22.174219, 23.127678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.089642, 22.180365, 22.346186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.827545, 21.908333, 22.477732>,  <17.670288, 21.745113, 22.556660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.827545, 21.908333, 22.477732>,  <18.089642, 22.180365, 22.346186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827545, 21.908333, 22.477732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657357, 0.298815, -0.691803,
		0.372212, -0.669478, -0.642851,
		-0.655240, -0.680080, 0.328864,
		17.630972, 21.704309, 22.576391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.906593, 21.667847, 21.788645>,  <18.089642, 22.180365, 22.346186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.906593, 21.667847, 21.788645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.608536, 21.640667, 22.054018>,  <17.429701, 21.624359, 22.213242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.608536, 21.640667, 22.054018>,  <17.906593, 21.667847, 21.788645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.608536, 21.640667, 22.054018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666808, 0.092653, -0.739448,
		-0.011227, -0.993378, -0.114346,
		-0.745145, -0.067945, 0.663432,
		17.384993, 21.620281, 22.253048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492842, 21.101488, 21.617373>,  <17.906593, 21.667847, 21.788645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492842, 21.101488, 21.617373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.249969, 21.342365, 21.824717>,  <17.104246, 21.486891, 21.949123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.249969, 21.342365, 21.824717>,  <17.492842, 21.101488, 21.617373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249969, 21.342365, 21.824717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715526, -0.130744, -0.686243,
		-0.345477, -0.787573, 0.510269,
		-0.607181, 0.602192, 0.518359,
		17.067816, 21.523024, 21.980225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880266, 20.871359, 21.593245>,  <17.492842, 21.101488, 21.617373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880266, 20.871359, 21.593245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.793530, 21.250278, 21.687571>,  <16.741488, 21.477631, 21.744165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.793530, 21.250278, 21.687571>,  <16.880266, 20.871359, 21.593245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.793530, 21.250278, 21.687571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627413, 0.049824, -0.777091,
		-0.747885, -0.316458, 0.583543,
		-0.216842, 0.947297, 0.235813,
		16.728477, 21.534468, 21.758314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185287, 20.870663, 21.486242>,  <16.880266, 20.871359, 21.593245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185287, 20.870663, 21.486242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.306843, 21.251686, 21.493011>,  <16.379776, 21.480299, 21.497074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.306843, 21.251686, 21.493011>,  <16.185287, 20.870663, 21.486242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.306843, 21.251686, 21.493011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562734, 0.193804, -0.803599,
		-0.768753, 0.234682, 0.594931,
		0.303890, 0.952557, 0.016924,
		16.398010, 21.537453, 21.498089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596080, 21.319292, 21.529095>,  <16.185287, 20.870663, 21.486242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596080, 21.319292, 21.529095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.880425, 21.552494, 21.371727>,  <16.051033, 21.692415, 21.277306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.880425, 21.552494, 21.371727>,  <15.596080, 21.319292, 21.529095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.880425, 21.552494, 21.371727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604374, 0.220249, -0.765651,
		-0.359726, 0.782047, 0.508919,
		0.710865, 0.583003, -0.393420,
		16.093685, 21.727394, 21.253700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211933, 21.932869, 21.341722>,  <15.596080, 21.319292, 21.529095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211933, 21.932869, 21.341722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.547080, 21.932453, 21.123373>,  <15.748168, 21.932203, 20.992363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.547080, 21.932453, 21.123373>,  <15.211933, 21.932869, 21.341722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547080, 21.932453, 21.123373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526641, 0.261576, -0.808843,
		0.143627, 0.965182, 0.218619,
		0.837866, -0.001038, -0.545874,
		15.798440, 21.932142, 20.959610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.257265, 22.558424, 21.010067>,  <15.211933, 21.932869, 21.341722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.257265, 22.558424, 21.010067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.476674, 22.320263, 20.775249>,  <15.608319, 22.177366, 20.634359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.476674, 22.320263, 20.775249>,  <15.257265, 22.558424, 21.010067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.476674, 22.320263, 20.775249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503436, 0.325385, -0.800423,
		0.667589, 0.734588, -0.121267,
		0.548522, -0.595404, -0.587041,
		15.641231, 22.141642, 20.599136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.347078, 22.990149, 20.420424>,  <15.257265, 22.558424, 21.010067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.347078, 22.990149, 20.420424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.429652, 22.615814, 20.306160>,  <15.479197, 22.391214, 20.237602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.429652, 22.615814, 20.306160>,  <15.347078, 22.990149, 20.420424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429652, 22.615814, 20.306160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526543, 0.139818, -0.838572,
		0.824704, 0.323522, -0.463894,
		0.206436, -0.935834, -0.285657,
		15.491583, 22.335064, 20.220463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.667123, 23.026073, 19.723131>,  <15.347078, 22.990149, 20.420424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.667123, 23.026073, 19.723131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.536338, 22.653000, 19.784046>,  <15.457867, 22.429155, 19.820595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.536338, 22.653000, 19.784046>,  <15.667123, 23.026073, 19.723131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536338, 22.653000, 19.784046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349393, -0.030426, -0.936482,
		0.878078, -0.359403, -0.315926,
		-0.326962, -0.932687, 0.152289,
		15.438250, 22.373194, 19.829733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925639, 22.679081, 19.152485>,  <15.667123, 23.026073, 19.723131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925639, 22.679081, 19.152485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.616044, 22.475716, 19.303459>,  <15.430286, 22.353697, 19.394045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.616044, 22.475716, 19.303459>,  <15.925639, 22.679081, 19.152485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616044, 22.475716, 19.303459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376000, -0.110585, -0.919998,
		0.509476, -0.853984, -0.105571,
		-0.773989, -0.508412, 0.377438,
		15.383847, 22.323193, 19.416691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450027, 22.943382, 18.732891>,  <15.925639, 22.679081, 19.152485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450027, 22.943382, 18.732891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.485741, 23.335621, 18.663082>,  <16.507170, 23.570965, 18.621197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.485741, 23.335621, 18.663082>,  <16.450027, 22.943382, 18.732891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.485741, 23.335621, 18.663082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291984, 0.141753, 0.945860,
		0.952247, -0.135409, -0.273662,
		0.089285, 0.980597, -0.174521,
		16.512526, 23.629801, 18.610725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049902, 23.101986, 19.024311>,  <16.450027, 22.943382, 18.732891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049902, 23.101986, 19.024311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.905449, 23.473236, 18.988157>,  <16.818777, 23.695986, 18.966465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.905449, 23.473236, 18.988157>,  <17.049902, 23.101986, 19.024311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.905449, 23.473236, 18.988157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308887, 0.210514, 0.927509,
		0.879871, 0.307034, -0.362709,
		-0.361132, 0.928124, -0.090386,
		16.797110, 23.751673, 18.961042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.601929, 23.502867, 19.271189>,  <17.049902, 23.101986, 19.024311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.601929, 23.502867, 19.271189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.250431, 23.689922, 19.309399>,  <17.039534, 23.802156, 19.332325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.250431, 23.689922, 19.309399>,  <17.601929, 23.502867, 19.271189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250431, 23.689922, 19.309399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237139, 0.254071, 0.937664,
		0.414220, 0.846617, -0.334159,
		-0.878742, 0.467641, 0.095525,
		16.986809, 23.830215, 19.338057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759140, 24.105413, 19.644133>,  <17.601929, 23.502867, 19.271189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759140, 24.105413, 19.644133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.363369, 24.083229, 19.697739>,  <17.125906, 24.069920, 19.729902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.363369, 24.083229, 19.697739>,  <17.759140, 24.105413, 19.644133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.363369, 24.083229, 19.697739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114119, 0.272573, 0.955343,
		-0.089511, 0.960535, -0.263362,
		-0.989426, -0.055459, 0.134014,
		17.066542, 24.066591, 19.737944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546299, 24.683023, 20.127367>,  <17.759140, 24.105413, 19.644133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546299, 24.683023, 20.127367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.219368, 24.452572, 20.130220>,  <17.023209, 24.314301, 20.131931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.219368, 24.452572, 20.130220>,  <17.546299, 24.683023, 20.127367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.219368, 24.452572, 20.130220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084049, 0.131464, 0.987752,
		-0.570009, 0.806718, -0.155873,
		-0.817328, -0.576128, 0.007131,
		16.974169, 24.279734, 20.132360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.136412, 24.976559, 20.633410>,  <17.546299, 24.683023, 20.127367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.136412, 24.976559, 20.633410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.006542, 24.600330, 20.593575>,  <16.928621, 24.374594, 20.569674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.006542, 24.600330, 20.593575>,  <17.136412, 24.976559, 20.633410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.006542, 24.600330, 20.593575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154186, -0.051249, 0.986712,
		-0.933174, 0.335713, -0.128383,
		-0.324673, -0.940569, -0.099586,
		16.909140, 24.318159, 20.563698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397505, 24.846773, 21.072081>,  <17.136412, 24.976559, 20.633410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.397505, 24.846773, 21.072081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.558369, 24.483231, 21.027819>,  <16.654886, 24.265104, 21.001261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.558369, 24.483231, 21.027819>,  <16.397505, 24.846773, 21.072081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.558369, 24.483231, 21.027819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155957, -0.187095, 0.969883,
		-0.902189, -0.372789, -0.216985,
		0.402158, -0.908858, -0.110655,
		16.679016, 24.210573, 20.994621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.959078, 24.431849, 21.448277>,  <16.397505, 24.846773, 21.072081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.959078, 24.431849, 21.448277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.312981, 24.247387, 21.421312>,  <16.525322, 24.136709, 21.405134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.312981, 24.247387, 21.421312>,  <15.959078, 24.431849, 21.448277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.312981, 24.247387, 21.421312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032443, -0.083346, 0.995992,
		-0.464924, -0.883397, -0.058780,
		0.884756, -0.461154, -0.067409,
		16.578407, 24.109041, 21.401089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.917304, 23.952333, 21.935217>,  <15.959078, 24.431849, 21.448277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.917304, 23.952333, 21.935217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.309620, 23.996571, 21.870939>,  <16.545010, 24.023113, 21.832373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.309620, 23.996571, 21.870939>,  <15.917304, 23.952333, 21.935217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309620, 23.996571, 21.870939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156760, 0.043438, 0.986681,
		0.116103, -0.992916, 0.025267,
		0.980788, 0.110595, -0.160693,
		16.603857, 24.029749, 21.822731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.225933, 23.505442, 22.393005>,  <15.917304, 23.952333, 21.935217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.225933, 23.505442, 22.393005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.513218, 23.768009, 22.300671>,  <16.685589, 23.925550, 22.245270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.513218, 23.768009, 22.300671>,  <16.225933, 23.505442, 22.393005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513218, 23.768009, 22.300671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319117, -0.015926, 0.947582,
		0.618334, -0.754229, -0.220913,
		0.718211, 0.656419, -0.230839,
		16.728682, 23.964935, 22.231419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785231, 23.176752, 22.675158>,  <16.225933, 23.505442, 22.393005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785231, 23.176752, 22.675158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.898518, 23.556477, 22.620613>,  <16.966490, 23.784311, 22.587887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.898518, 23.556477, 22.620613>,  <16.785231, 23.176752, 22.675158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898518, 23.556477, 22.620613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324249, 0.039030, 0.945166,
		0.902580, -0.311903, -0.296760,
		0.283218, 0.949312, -0.136362,
		16.983482, 23.841270, 22.579704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.555532, 23.210165, 22.811628>,  <16.785231, 23.176752, 22.675158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.555532, 23.210165, 22.811628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.447594, 23.593433, 22.849768>,  <17.382830, 23.823395, 22.872650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.447594, 23.593433, 22.849768>,  <17.555532, 23.210165, 22.811628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447594, 23.593433, 22.849768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472191, 0.045380, 0.880328,
		0.839177, 0.282576, -0.464685,
		-0.269847, 0.958171, 0.095347,
		17.366640, 23.880884, 22.878372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131523, 23.444084, 23.014231>,  <17.555532, 23.210165, 22.811628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131523, 23.444084, 23.014231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.853191, 23.707584, 23.128685>,  <17.686192, 23.865685, 23.197357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.853191, 23.707584, 23.128685>,  <18.131523, 23.444084, 23.014231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853191, 23.707584, 23.128685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542940, 0.221677, 0.809985,
		0.470147, 0.718965, -0.511910,
		-0.695829, 0.658748, 0.286134,
		17.644444, 23.905209, 23.214525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558830, 24.056431, 23.204592>,  <18.131523, 23.444084, 23.014231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558830, 24.056431, 23.204592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.189651, 24.053730, 23.358538>,  <17.968143, 24.052109, 23.450905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.189651, 24.053730, 23.358538>,  <18.558830, 24.056431, 23.204592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189651, 24.053730, 23.358538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383989, -0.085788, 0.919344,
		0.026807, 0.996291, 0.081772,
		-0.922949, -0.006754, 0.384864,
		17.912767, 24.051704, 23.473997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815496, 23.623190, 22.653515>,  <18.558830, 24.056431, 23.204592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815496, 23.623190, 22.653515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.156353, 23.469532, 22.795664>,  <19.360867, 23.377338, 22.880953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.156353, 23.469532, 22.795664>,  <18.815496, 23.623190, 22.653515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156353, 23.469532, 22.795664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144622, -0.479768, -0.865394,
		0.502932, 0.788833, -0.353274,
		0.852141, -0.384143, 0.355373,
		19.411995, 23.354290, 22.902275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400909, 23.813839, 22.201641>,  <18.815496, 23.623190, 22.653515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400909, 23.813839, 22.201641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.534767, 23.491364, 22.396812>,  <19.615082, 23.297878, 22.513916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.534767, 23.491364, 22.396812>,  <19.400909, 23.813839, 22.201641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.534767, 23.491364, 22.396812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228941, -0.432716, -0.871976,
		0.914111, 0.403509, 0.039763,
		0.334645, -0.806186, 0.487931,
		19.635160, 23.249508, 22.543192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.980467, 23.690035, 21.867037>,  <19.400909, 23.813839, 22.201641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.980467, 23.690035, 21.867037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.894924, 23.347229, 22.054564>,  <19.843599, 23.141544, 22.167080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.894924, 23.347229, 22.054564>,  <19.980467, 23.690035, 21.867037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.894924, 23.347229, 22.054564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244394, -0.511596, -0.823736,
		0.945800, -0.061586, 0.318858,
		-0.213857, -0.857016, 0.468816,
		19.830767, 23.090124, 22.195208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586006, 23.197874, 21.764097>,  <19.980467, 23.690035, 21.867037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586006, 23.197874, 21.764097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.284939, 22.954697, 21.865208>,  <20.104300, 22.808790, 21.925873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.284939, 22.954697, 21.865208>,  <20.586006, 23.197874, 21.764097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.284939, 22.954697, 21.865208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191031, -0.569052, -0.799804,
		0.630079, -0.553698, 0.544443,
		-0.752667, -0.607946, 0.252774,
		20.059139, 22.772312, 21.941040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.765011, 22.580854, 21.612772>,  <20.586006, 23.197874, 21.764097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.765011, 22.580854, 21.612772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.369865, 22.519093, 21.605997>,  <20.132778, 22.482037, 21.601933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.369865, 22.519093, 21.605997>,  <20.765011, 22.580854, 21.612772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369865, 22.519093, 21.605997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102978, -0.569389, -0.815593,
		0.116287, -0.807438, 0.578379,
		-0.987863, -0.154403, -0.016936,
		20.073507, 22.472771, 21.600916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.809246, 21.974852, 21.285740>,  <20.765011, 22.580854, 21.612772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.809246, 21.974852, 21.285740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.438110, 22.119884, 21.250750>,  <20.215429, 22.206903, 21.229755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.438110, 22.119884, 21.250750>,  <20.809246, 21.974852, 21.285740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438110, 22.119884, 21.250750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009684, -0.257868, -0.966131,
		-0.372859, -0.895566, 0.242771,
		-0.927837, 0.362582, -0.087476,
		20.159760, 22.228659, 21.224506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.498287, 21.509893, 20.924725>,  <20.809246, 21.974852, 21.285740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.498287, 21.509893, 20.924725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.276524, 21.839405, 20.877373>,  <20.143465, 22.037113, 20.848961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.276524, 21.839405, 20.877373>,  <20.498287, 21.509893, 20.924725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276524, 21.839405, 20.877373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168890, -0.250647, -0.953232,
		-0.814927, -0.508488, 0.278090,
		-0.554410, 0.823781, -0.118381,
		20.110201, 22.086540, 20.841858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.033339, 20.929775, 21.118444>,  <20.498287, 21.509893, 20.924725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.033339, 20.929775, 21.118444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.138325, 20.553661, 21.205141>,  <20.201317, 20.327993, 21.257160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.138325, 20.553661, 21.205141>,  <20.033339, 20.929775, 21.118444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138325, 20.553661, 21.205141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011787, 0.221477, 0.975094,
		-0.964869, -0.258483, 0.047047,
		0.262465, -0.940284, 0.216743,
		20.217064, 20.271576, 21.270164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472261, 20.629974, 21.603100>,  <20.033339, 20.929775, 21.118444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472261, 20.629974, 21.603100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.816868, 20.428585, 21.629356>,  <20.023632, 20.307753, 21.645111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.816868, 20.428585, 21.629356>,  <19.472261, 20.629974, 21.603100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816868, 20.428585, 21.629356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036972, 0.191152, 0.980864,
		-0.506385, -0.842602, 0.183294,
		0.861515, -0.503471, 0.065644,
		20.075323, 20.277544, 21.649050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422209, 20.044699, 22.082785>,  <19.472261, 20.629974, 21.603100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422209, 20.044699, 22.082785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.811543, 20.131153, 22.052036>,  <20.045143, 20.183025, 22.033588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.811543, 20.131153, 22.052036>,  <19.422209, 20.044699, 22.082785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.811543, 20.131153, 22.052036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053044, 0.113959, 0.992068,
		0.223185, -0.969689, 0.099455,
		0.973332, 0.216140, -0.076870,
		20.103542, 20.195993, 22.028975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.651140, 19.816036, 22.647284>,  <19.422209, 20.044699, 22.082785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.651140, 19.816036, 22.647284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.986942, 20.014442, 22.558559>,  <20.188423, 20.133486, 22.505325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.986942, 20.014442, 22.558559>,  <19.651140, 19.816036, 22.647284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.986942, 20.014442, 22.558559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127622, 0.216804, 0.967837,
		0.528152, -0.840812, 0.118705,
		0.839505, 0.496016, -0.221811,
		20.238794, 20.163248, 22.492016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.212957, 19.559149, 23.071575>,  <19.651140, 19.816036, 22.647284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.212957, 19.559149, 23.071575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.332104, 19.929157, 22.977249>,  <20.403591, 20.151163, 22.920654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.332104, 19.929157, 22.977249>,  <20.212957, 19.559149, 23.071575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.332104, 19.929157, 22.977249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246065, 0.164280, 0.955230,
		0.922349, -0.342557, -0.178682,
		0.297867, 0.925022, -0.235815,
		20.421463, 20.206663, 22.906506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931673, 19.761965, 23.394726>,  <20.212957, 19.559149, 23.071575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931673, 19.761965, 23.394726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.753006, 20.113998, 23.330307>,  <20.645805, 20.325218, 23.291656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.753006, 20.113998, 23.330307>,  <20.931673, 19.761965, 23.394726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.753006, 20.113998, 23.330307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147516, 0.249981, 0.956947,
		0.882454, 0.403683, -0.241486,
		-0.446670, 0.880085, -0.161048,
		20.619005, 20.378023, 23.281992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324896, 20.254372, 23.757971>,  <20.931673, 19.761965, 23.394726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324896, 20.254372, 23.757971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.989288, 20.467930, 23.716011>,  <20.787924, 20.596066, 23.690834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.989288, 20.467930, 23.716011>,  <21.324896, 20.254372, 23.757971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989288, 20.467930, 23.716011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063443, 0.287477, 0.955684,
		0.540392, 0.795181, -0.275070,
		-0.839018, 0.533895, -0.104902,
		20.737583, 20.628099, 23.684540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.468702, 20.949337, 23.924824>,  <21.324896, 20.254372, 23.757971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.468702, 20.949337, 23.924824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.073566, 20.910362, 23.973291>,  <20.836485, 20.886976, 24.002371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.073566, 20.910362, 23.973291>,  <21.468702, 20.949337, 23.924824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.073566, 20.910362, 23.973291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078244, 0.361902, 0.928927,
		-0.134365, 0.927110, -0.349877,
		-0.987838, -0.097439, 0.121168,
		20.777216, 20.881130, 24.009642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.211084, 21.609182, 24.408024>,  <21.468702, 20.949337, 23.924824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.211084, 21.609182, 24.408024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.907776, 21.348427, 24.404762>,  <20.725792, 21.191973, 24.402805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.907776, 21.348427, 24.404762>,  <21.211084, 21.609182, 24.408024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.907776, 21.348427, 24.404762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152005, 0.164619, 0.974574,
		-0.633973, 0.740230, -0.223917,
		-0.758270, -0.651890, -0.008155,
		20.680294, 21.152861, 24.402315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.900399, 17.607952, 9.637867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.521825, 17.729275, 9.682166>,  <15.294681, 17.802069, 9.708746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.521825, 17.729275, 9.682166>,  <15.900399, 17.607952, 9.637867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521825, 17.729275, 9.682166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224784, 0.372672, 0.900326,
		0.231801, 0.876996, -0.420889,
		-0.946436, 0.303305, 0.110749,
		15.237894, 17.820267, 9.715391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.860181, 18.314011, 9.733740>,  <15.900399, 17.607952, 9.637867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.860181, 18.314011, 9.733740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.607591, 18.067715, 9.922251>,  <15.456037, 17.919937, 10.035357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.607591, 18.067715, 9.922251>,  <15.860181, 18.314011, 9.733740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607591, 18.067715, 9.922251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443138, 0.212174, 0.870983,
		-0.636291, 0.758846, 0.138875,
		-0.631476, -0.615739, 0.471278,
		15.418148, 17.882994, 10.063634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670925, 18.659519, 10.291605>,  <15.860181, 18.314011, 9.733740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670925, 18.659519, 10.291605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.594592, 18.278809, 10.387691>,  <15.548792, 18.050383, 10.445343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.594592, 18.278809, 10.387691>,  <15.670925, 18.659519, 10.291605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594592, 18.278809, 10.387691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452682, 0.131809, 0.881876,
		-0.871012, 0.277033, 0.405699,
		-0.190834, -0.951777, 0.240215,
		15.537342, 17.993275, 10.459756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401895, 18.698444, 10.960374>,  <15.670925, 18.659519, 10.291605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401895, 18.698444, 10.960374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.567956, 18.335773, 10.930485>,  <15.667593, 18.118172, 10.912552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.567956, 18.335773, 10.930485>,  <15.401895, 18.698444, 10.960374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567956, 18.335773, 10.930485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264718, 0.041812, 0.963419,
		-0.870386, -0.419747, 0.257372,
		0.415153, -0.906678, -0.074722,
		15.692502, 18.063770, 10.908068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279502, 18.325451, 11.540784>,  <15.401895, 18.698444, 10.960374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279502, 18.325451, 11.540784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.600158, 18.127331, 11.406888>,  <15.792551, 18.008459, 11.326550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.600158, 18.127331, 11.406888>,  <15.279502, 18.325451, 11.540784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600158, 18.127331, 11.406888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333012, -0.095035, 0.938121,
		-0.496465, -0.863508, 0.088757,
		0.801639, -0.495301, -0.334740,
		15.840650, 17.978741, 11.306466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.306010, 17.734772, 11.903910>,  <15.279502, 18.325451, 11.540784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.306010, 17.734772, 11.903910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.673333, 17.796101, 11.757920>,  <15.893726, 17.832897, 11.670327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.673333, 17.796101, 11.757920>,  <15.306010, 17.734772, 11.903910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.673333, 17.796101, 11.757920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373799, -0.032298, 0.926947,
		0.130335, -0.987648, -0.086972,
		0.918307, 0.153323, -0.364973,
		15.948825, 17.842098, 11.648428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.590998, 17.287535, 12.318283>,  <15.306010, 17.734772, 11.903910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.590998, 17.287535, 12.318283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.872205, 17.516048, 12.148861>,  <16.040930, 17.653156, 12.047208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.872205, 17.516048, 12.148861>,  <15.590998, 17.287535, 12.318283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.872205, 17.516048, 12.148861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459238, 0.090075, 0.883735,
		0.543017, -0.815794, -0.199031,
		0.703017, 0.571285, -0.423556,
		16.083111, 17.687433, 12.021794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.278606, 16.965187, 12.253998>,  <15.590998, 17.287535, 12.318283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.278606, 16.965187, 12.253998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.420284, 17.338020, 12.223630>,  <16.505291, 17.561720, 12.205409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.420284, 17.338020, 12.223630>,  <16.278606, 16.965187, 12.253998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420284, 17.338020, 12.223630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620407, -0.173457, 0.764858,
		0.699744, -0.318011, -0.639709,
		0.354195, 0.932085, -0.075920,
		16.526543, 17.617645, 12.200854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046219, 16.962700, 12.340462>,  <16.278606, 16.965187, 12.253998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.046219, 16.962700, 12.340462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.942593, 17.343708, 12.404450>,  <16.880417, 17.572313, 12.442843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.942593, 17.343708, 12.404450>,  <17.046219, 16.962700, 12.340462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.942593, 17.343708, 12.404450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574430, 0.018796, 0.818338,
		0.776477, 0.303894, -0.552025,
		-0.259064, 0.952520, 0.159971,
		16.864874, 17.629463, 12.452442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695744, 17.331600, 12.569199>,  <17.046219, 16.962700, 12.340462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695744, 17.331600, 12.569199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.391716, 17.558510, 12.696004>,  <17.209299, 17.694654, 12.772087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.391716, 17.558510, 12.696004>,  <17.695744, 17.331600, 12.569199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.391716, 17.558510, 12.696004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528407, 0.255548, 0.809618,
		0.378262, 0.782877, -0.493985,
		-0.760068, 0.567273, 0.317013,
		17.163696, 17.728691, 12.791108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.990843, 17.914637, 12.664517>,  <17.695744, 17.331600, 12.569199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.990843, 17.914637, 12.664517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.656643, 17.879795, 12.881534>,  <17.456123, 17.858891, 13.011744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.656643, 17.879795, 12.881534>,  <17.990843, 17.914637, 12.664517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.656643, 17.879795, 12.881534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522420, 0.180153, 0.833440,
		-0.170338, 0.979774, -0.105012,
		-0.835501, -0.087106, 0.542540,
		17.405993, 17.853662, 13.044295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072783, 18.458445, 13.071162>,  <17.990843, 17.914637, 12.664517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.072783, 18.458445, 13.071162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.798988, 18.240097, 13.264454>,  <17.634712, 18.109089, 13.380429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.798988, 18.240097, 13.264454>,  <18.072783, 18.458445, 13.071162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.798988, 18.240097, 13.264454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479733, 0.161847, 0.862358,
		-0.548942, 0.822092, 0.151088,
		-0.684484, -0.545867, 0.483229,
		17.593643, 18.076338, 13.409423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.769531, 19.161572, 12.895011>,  <18.072783, 18.458445, 13.071162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.769531, 19.161572, 12.895011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.947628, 19.478073, 12.727357>,  <18.054485, 19.667974, 12.626764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.947628, 19.478073, 12.727357>,  <17.769531, 19.161572, 12.895011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.947628, 19.478073, 12.727357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447487, -0.208815, -0.869570,
		-0.775574, 0.574726, 0.261104,
		0.445242, 0.791256, -0.419134,
		18.081200, 19.715450, 12.601617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270342, 19.381874, 12.408583>,  <17.769531, 19.161572, 12.895011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270342, 19.381874, 12.408583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.600262, 19.566189, 12.277508>,  <17.798214, 19.676777, 12.198863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.600262, 19.566189, 12.277508>,  <17.270342, 19.381874, 12.408583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600262, 19.566189, 12.277508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321219, -0.095080, -0.942220,
		-0.465319, 0.882403, 0.069592,
		0.824801, 0.460786, -0.327687,
		17.847702, 19.704424, 12.179202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043375, 19.923134, 11.833353>,  <17.270342, 19.381874, 12.408583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043375, 19.923134, 11.833353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.432262, 19.849312, 11.775765>,  <17.665596, 19.805017, 11.741213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.432262, 19.849312, 11.775765>,  <17.043375, 19.923134, 11.833353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432262, 19.849312, 11.775765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137309, 0.048443, -0.989343,
		0.189565, 0.981627, 0.021756,
		0.972220, -0.184557, -0.143969,
		17.723928, 19.793945, 11.732574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.238768, 20.430653, 11.350535>,  <17.043375, 19.923134, 11.833353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.238768, 20.430653, 11.350535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.540878, 20.169865, 11.323714>,  <17.722145, 20.013391, 11.307622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.540878, 20.169865, 11.323714>,  <17.238768, 20.430653, 11.350535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.540878, 20.169865, 11.323714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002152, 0.099838, -0.995001,
		0.655405, 0.751644, 0.074002,
		0.755275, -0.651969, -0.067052,
		17.767460, 19.974274, 11.303598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822515, 20.724854, 10.843052>,  <17.238768, 20.430653, 11.350535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.822515, 20.724854, 10.843052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.908806, 20.335609, 10.875351>,  <17.960581, 20.102064, 10.894731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.908806, 20.335609, 10.875351>,  <17.822515, 20.724854, 10.843052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.908806, 20.335609, 10.875351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185959, -0.040238, -0.981733,
		0.958583, 0.226803, 0.172277,
		0.215728, -0.973109, 0.080747,
		17.973524, 20.043676, 10.899575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.572758, 20.452959, 10.520089>,  <17.822515, 20.724854, 10.843052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.572758, 20.452959, 10.520089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.323223, 20.142414, 10.484111>,  <18.173502, 19.956087, 10.462523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.323223, 20.142414, 10.484111>,  <18.572758, 20.452959, 10.520089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.323223, 20.142414, 10.484111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273021, -0.108642, -0.955854,
		0.732316, -0.620854, 0.279738,
		-0.623837, -0.776361, -0.089945,
		18.136072, 19.909506, 10.457128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.870897, 20.074028, 9.890620>,  <18.572758, 20.452959, 10.520089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.870897, 20.074028, 9.890620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.525410, 19.883625, 9.956840>,  <18.318117, 19.769384, 9.996571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.525410, 19.883625, 9.956840>,  <18.870897, 20.074028, 9.890620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.525410, 19.883625, 9.956840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002911, -0.333193, -0.942854,
		0.503963, -0.813881, 0.289171,
		-0.863720, -0.476005, 0.165548,
		18.266294, 19.740824, 10.006504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894217, 19.470163, 9.450674>,  <18.870897, 20.074028, 9.890620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894217, 19.470163, 9.450674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.504585, 19.508476, 9.532650>,  <18.270807, 19.531464, 9.581836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.504585, 19.508476, 9.532650>,  <18.894217, 19.470163, 9.450674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504585, 19.508476, 9.532650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220856, -0.206598, -0.953173,
		-0.048955, -0.973727, 0.222396,
		-0.974077, 0.095780, 0.204940,
		18.212362, 19.537210, 9.594131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635059, 18.738331, 9.293383>,  <18.894217, 19.470163, 9.450674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635059, 18.738331, 9.293383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.376469, 19.042812, 9.272836>,  <18.221315, 19.225502, 9.260508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.376469, 19.042812, 9.272836>,  <18.635059, 18.738331, 9.293383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.376469, 19.042812, 9.272836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253421, -0.277756, -0.926623,
		-0.719617, -0.586020, 0.372467,
		-0.646475, 0.761204, -0.051368,
		18.182526, 19.271173, 9.257425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166512, 18.583294, 8.790362>,  <18.635059, 18.738331, 9.293383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166512, 18.583294, 8.790362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.080612, 18.973251, 8.813903>,  <18.029074, 19.207226, 8.828027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.080612, 18.973251, 8.813903>,  <18.166512, 18.583294, 8.790362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.080612, 18.973251, 8.813903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234623, 0.006997, -0.972061,
		-0.948069, -0.222555, 0.227231,
		-0.214747, 0.974895, 0.058851,
		18.016188, 19.265720, 8.831558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.462105, 18.740538, 8.523943>,  <18.166512, 18.583294, 8.790362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.462105, 18.740538, 8.523943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.652061, 19.091579, 8.497744>,  <17.766035, 19.302204, 8.482024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.652061, 19.091579, 8.497744>,  <17.462105, 18.740538, 8.523943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.652061, 19.091579, 8.497744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205186, 0.038041, -0.977984,
		-0.855790, 0.477875, 0.198138,
		0.474891, 0.877604, -0.065498,
		17.794529, 19.354860, 8.478094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087593, 19.083281, 8.012612>,  <17.462105, 18.740538, 8.523943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087593, 19.083281, 8.012612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.418880, 19.306492, 8.033234>,  <17.617653, 19.440418, 8.045607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.418880, 19.306492, 8.033234>,  <17.087593, 19.083281, 8.012612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.418880, 19.306492, 8.033234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091223, 0.225015, -0.970076,
		-0.552928, 0.798734, 0.237266,
		0.828220, 0.558026, 0.051554,
		17.667347, 19.473900, 8.048699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016525, 19.829317, 7.628422>,  <17.087593, 19.083281, 8.012612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.016525, 19.829317, 7.628422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.409550, 19.757393, 7.647340>,  <17.645365, 19.714237, 7.658690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.409550, 19.757393, 7.647340>,  <17.016525, 19.829317, 7.628422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.409550, 19.757393, 7.647340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085106, 0.208809, -0.974246,
		0.165306, 0.961284, 0.220471,
		0.982563, -0.179812, 0.047293,
		17.704319, 19.703449, 7.661528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201183, 20.444994, 7.438646>,  <17.016525, 19.829317, 7.628422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.201183, 20.444994, 7.438646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.495468, 20.178516, 7.389802>,  <17.672039, 20.018629, 7.360496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.495468, 20.178516, 7.389802>,  <17.201183, 20.444994, 7.438646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.495468, 20.178516, 7.389802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208492, 0.394302, -0.895018,
		0.644405, 0.633017, 0.428989,
		0.735713, -0.666195, -0.122111,
		17.716183, 19.978659, 7.353168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.125082, 20.957390, 8.043220>,  <17.201183, 20.444994, 7.438646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.125082, 20.957390, 8.043220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.843952, 20.892334, 7.766212>,  <16.675274, 20.853300, 7.600008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.843952, 20.892334, 7.766212>,  <17.125082, 20.957390, 8.043220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843952, 20.892334, 7.766212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394728, -0.720722, 0.569868,
		-0.591798, 0.673875, 0.442344,
		-0.702827, -0.162641, -0.692519,
		16.633104, 20.843542, 7.558457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319843, 21.075764, 8.094738>,  <17.125082, 20.957390, 8.043220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319843, 21.075764, 8.094738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.949405, 21.017525, 8.233960>,  <15.727141, 20.982580, 8.317493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.949405, 21.017525, 8.233960>,  <16.319843, 21.075764, 8.094738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.949405, 21.017525, 8.233960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119638, 0.761589, 0.636921,
		-0.357810, 0.631493, -0.687887,
		-0.926099, -0.145599, 0.348055,
		15.671576, 20.973845, 8.338377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057129, 21.707075, 8.185571>,  <16.319843, 21.075764, 8.094738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.057129, 21.707075, 8.185571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.860698, 21.473320, 8.443975>,  <15.742839, 21.333067, 8.599018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.860698, 21.473320, 8.443975>,  <16.057129, 21.707075, 8.185571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.860698, 21.473320, 8.443975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145789, 0.675997, 0.722339,
		-0.858829, 0.448907, -0.246770,
		-0.491079, -0.584389, 0.646011,
		15.713374, 21.298002, 8.637778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610072, 22.166449, 8.577431>,  <16.057129, 21.707075, 8.185571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.610072, 22.166449, 8.577431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.637485, 21.839382, 8.806071>,  <15.653932, 21.643143, 8.943255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.637485, 21.839382, 8.806071>,  <15.610072, 22.166449, 8.577431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637485, 21.839382, 8.806071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226897, 0.570709, 0.789183,
		-0.971505, 0.075612, 0.224636,
		0.068530, -0.817664, 0.571602,
		15.658044, 21.594084, 8.977552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.461984, 22.446358, 9.148250>,  <15.610072, 22.166449, 8.577431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.461984, 22.446358, 9.148250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.616858, 22.095596, 9.262178>,  <15.709784, 21.885139, 9.330536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.616858, 22.095596, 9.262178>,  <15.461984, 22.446358, 9.148250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616858, 22.095596, 9.262178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254722, 0.398630, 0.881029,
		-0.886117, -0.268572, 0.377711,
		0.387187, -0.876906, 0.284822,
		15.733014, 21.832525, 9.347625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142450, 22.320631, 9.745913>,  <15.461984, 22.446358, 9.148250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.142450, 22.320631, 9.745913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.492755, 22.127598, 9.740917>,  <15.702937, 22.011778, 9.737920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.492755, 22.127598, 9.740917>,  <15.142450, 22.320631, 9.745913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.492755, 22.127598, 9.740917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306901, 0.536604, 0.786046,
		-0.372632, -0.692221, 0.618042,
		0.875761, -0.482583, -0.012488,
		15.755484, 21.982822, 9.737171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201172, 21.943609, 10.398058>,  <15.142450, 22.320631, 9.745913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201172, 21.943609, 10.398058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.570765, 21.967484, 10.246960>,  <15.792521, 21.981808, 10.156301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.570765, 21.967484, 10.246960>,  <15.201172, 21.943609, 10.398058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.570765, 21.967484, 10.246960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331298, 0.368496, 0.868593,
		0.191039, -0.927712, 0.320711,
		0.923984, 0.059685, -0.377746,
		15.847960, 21.985390, 10.133636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628675, 21.447351, 10.703194>,  <15.201172, 21.943609, 10.398058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628675, 21.447351, 10.703194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.888364, 21.726562, 10.582351>,  <16.044176, 21.894089, 10.509845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.888364, 21.726562, 10.582351>,  <15.628675, 21.447351, 10.703194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888364, 21.726562, 10.582351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234374, 0.194272, 0.952537,
		0.723590, -0.689212, -0.037475,
		0.649220, 0.698029, -0.302106,
		16.083130, 21.935970, 10.491719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401644, 21.357805, 11.059582>,  <15.628675, 21.447351, 10.703194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401644, 21.357805, 11.059582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.369209, 21.733444, 10.926003>,  <16.349749, 21.958828, 10.845855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.369209, 21.733444, 10.926003>,  <16.401644, 21.357805, 11.059582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369209, 21.733444, 10.926003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381391, 0.338786, 0.860096,
		0.920850, -0.057621, -0.385635,
		-0.081088, 0.939097, -0.333947,
		16.344883, 22.015173, 10.825818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996487, 21.692766, 11.242325>,  <16.401644, 21.357805, 11.059582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996487, 21.692766, 11.242325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.757469, 22.005424, 11.170806>,  <16.614059, 22.193020, 11.127894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.757469, 22.005424, 11.170806>,  <16.996487, 21.692766, 11.242325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757469, 22.005424, 11.170806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298651, 0.423897, 0.855055,
		0.744144, 0.457534, -0.486737,
		-0.597543, 0.781648, -0.178798,
		16.578207, 22.239920, 11.117167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435026, 22.339872, 11.232213>,  <16.996487, 21.692766, 11.242325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435026, 22.339872, 11.232213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.056267, 22.443596, 11.308258>,  <16.829012, 22.505831, 11.353885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.056267, 22.443596, 11.308258>,  <17.435026, 22.339872, 11.232213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056267, 22.443596, 11.308258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291639, 0.443673, 0.847409,
		0.135394, 0.857854, -0.495738,
		-0.946898, 0.259310, 0.190113,
		16.772198, 22.521389, 11.365292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439480, 23.037888, 11.562509>,  <17.435026, 22.339872, 11.232213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439480, 23.037888, 11.562509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.066399, 22.911087, 11.631295>,  <16.842550, 22.835007, 11.672567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.066399, 22.911087, 11.631295>,  <17.439480, 23.037888, 11.562509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066399, 22.911087, 11.631295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096235, 0.240777, 0.965798,
		-0.347563, 0.917354, -0.194067,
		-0.932705, -0.316999, 0.171967,
		16.786587, 22.815987, 11.682885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180700, 23.579535, 11.961205>,  <17.439480, 23.037888, 11.562509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180700, 23.579535, 11.961205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.943054, 23.266525, 12.035699>,  <16.800467, 23.078720, 12.080395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.943054, 23.266525, 12.035699>,  <17.180700, 23.579535, 11.961205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943054, 23.266525, 12.035699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073630, 0.177647, 0.981336,
		-0.801002, 0.596740, -0.047926,
		-0.594116, -0.782524, 0.186233,
		16.764820, 23.031769, 12.091569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771719, 23.816343, 12.444107>,  <17.180700, 23.579535, 11.961205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771719, 23.816343, 12.444107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.678589, 23.429298, 12.483138>,  <16.622711, 23.197071, 12.506557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.678589, 23.429298, 12.483138>,  <16.771719, 23.816343, 12.444107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.678589, 23.429298, 12.483138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157145, 0.136447, 0.978104,
		-0.959739, 0.212391, -0.183824,
		-0.232823, -0.967612, 0.097578,
		16.608742, 23.139015, 12.512411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193764, 23.778664, 12.954767>,  <16.771719, 23.816343, 12.444107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193764, 23.778664, 12.954767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.352058, 23.412083, 12.931078>,  <16.447035, 23.192135, 12.916864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.352058, 23.412083, 12.931078>,  <16.193764, 23.778664, 12.954767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352058, 23.412083, 12.931078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100833, -0.107459, 0.989083,
		-0.912812, -0.385444, -0.134934,
		0.395736, -0.916453, -0.059224,
		16.470779, 23.137146, 12.913311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.772040, 23.437067, 13.367284>,  <16.193764, 23.778664, 12.954767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.772040, 23.437067, 13.367284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.126949, 23.252659, 13.361515>,  <16.339895, 23.142014, 13.358054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.126949, 23.252659, 13.361515>,  <15.772040, 23.437067, 13.367284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.126949, 23.252659, 13.361515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024625, 0.016123, 0.999567,
		-0.460587, -0.887244, 0.025659,
		0.887273, -0.461020, -0.014422,
		16.393131, 23.114353, 13.357188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.754179, 22.828627, 13.829085>,  <15.772040, 23.437067, 13.367284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.754179, 22.828627, 13.829085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.147243, 22.892765, 13.791853>,  <16.383083, 22.931248, 13.769513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.147243, 22.892765, 13.791853>,  <15.754179, 22.828627, 13.829085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.147243, 22.892765, 13.791853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084977, 0.056699, 0.994768,
		0.164787, -0.985431, 0.042090,
		0.982662, 0.160348, -0.093082,
		16.442041, 22.940868, 13.763928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231468, 22.311495, 14.195588>,  <15.754179, 22.828627, 13.829085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231468, 22.311495, 14.195588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.432617, 22.652943, 14.141253>,  <16.553307, 22.857811, 14.108651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.432617, 22.652943, 14.141253>,  <16.231468, 22.311495, 14.195588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.432617, 22.652943, 14.141253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281760, -0.013314, 0.959392,
		0.817148, -0.520725, -0.247212,
		0.502871, 0.853620, -0.135840,
		16.583479, 22.909029, 14.100500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.835526, 22.180929, 14.665618>,  <16.231468, 22.311495, 14.195588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.835526, 22.180929, 14.665618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.824387, 22.575443, 14.600540>,  <16.817703, 22.812151, 14.561494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.824387, 22.575443, 14.600540>,  <16.835526, 22.180929, 14.665618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824387, 22.575443, 14.600540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228114, 0.164733, 0.959597,
		0.973236, -0.010390, -0.229572,
		-0.027848, 0.986283, -0.162694,
		16.816032, 22.871328, 14.551732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445047, 22.494358, 15.077750>,  <16.835526, 22.180929, 14.665618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445047, 22.494358, 15.077750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.201061, 22.804436, 15.012007>,  <17.054668, 22.990482, 14.972561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.201061, 22.804436, 15.012007>,  <17.445047, 22.494358, 15.077750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201061, 22.804436, 15.012007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130826, 0.303079, 0.943942,
		0.781552, 0.554272, -0.286284,
		-0.609968, 0.775194, -0.164359,
		17.018070, 23.036993, 14.962699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744421, 22.997267, 15.488917>,  <17.445047, 22.494358, 15.077750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744421, 22.997267, 15.488917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.363228, 23.099705, 15.424122>,  <17.134512, 23.161167, 15.385244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.363228, 23.099705, 15.424122>,  <17.744421, 22.997267, 15.488917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.363228, 23.099705, 15.424122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022046, 0.474556, 0.879949,
		0.302225, 0.842147, -0.446597,
		-0.952982, 0.256097, -0.161989,
		17.077333, 23.176535, 15.375525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744453, 23.578188, 15.853423>,  <17.744421, 22.997267, 15.488917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744453, 23.578188, 15.853423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.352303, 23.539177, 15.784897>,  <17.117012, 23.515770, 15.743781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.352303, 23.539177, 15.784897>,  <17.744453, 23.578188, 15.853423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352303, 23.539177, 15.784897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196621, 0.421345, 0.885330,
		-0.014160, 0.901641, -0.432252,
		-0.980377, -0.097526, -0.171315,
		17.058189, 23.509920, 15.733502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454943, 24.227890, 16.069977>,  <17.744453, 23.578188, 15.853423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.454943, 24.227890, 16.069977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.190033, 23.928318, 16.078880>,  <17.031086, 23.748575, 16.084223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.190033, 23.928318, 16.078880>,  <17.454943, 24.227890, 16.069977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.190033, 23.928318, 16.078880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253467, 0.251897, 0.933971,
		-0.705084, 0.612906, -0.356654,
		-0.662277, -0.748929, 0.022257,
		16.991350, 23.703640, 16.085558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899607, 24.539494, 16.429152>,  <17.454943, 24.227890, 16.069977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899607, 24.539494, 16.429152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.815914, 24.149704, 16.461691>,  <16.765697, 23.915829, 16.481215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.815914, 24.149704, 16.461691>,  <16.899607, 24.539494, 16.429152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.815914, 24.149704, 16.461691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223287, 0.128603, 0.966232,
		-0.952032, 0.184004, -0.244496,
		-0.209233, -0.974476, 0.081348,
		16.753145, 23.857361, 16.486095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.180525, 24.425911, 16.711767>,  <16.899607, 24.539494, 16.429152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.180525, 24.425911, 16.711767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.392952, 24.103176, 16.815292>,  <16.520409, 23.909534, 16.877407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.392952, 24.103176, 16.815292>,  <16.180525, 24.425911, 16.711767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392952, 24.103176, 16.815292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164983, 0.201135, 0.965570,
		-0.831113, -0.555481, -0.026299,
		0.531066, -0.806837, 0.258811,
		16.552273, 23.861126, 16.892935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.700594, 24.093719, 17.233974>,  <16.180525, 24.425911, 16.711767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.700594, 24.093719, 17.233974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.081078, 23.975624, 17.269825>,  <16.309368, 23.904766, 17.291336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.081078, 23.975624, 17.269825>,  <15.700594, 24.093719, 17.233974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081078, 23.975624, 17.269825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086618, 0.023285, 0.995969,
		-0.296137, -0.955139, -0.003424,
		0.951210, -0.295240, 0.089628,
		16.366440, 23.887053, 17.296713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563631, 23.678143, 17.825724>,  <15.700594, 24.093719, 17.233974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563631, 23.678143, 17.825724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.956822, 23.742008, 17.789371>,  <16.192738, 23.780327, 17.767559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.956822, 23.742008, 17.789371>,  <15.563631, 23.678143, 17.825724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.956822, 23.742008, 17.789371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102628, -0.066911, 0.992467,
		0.152381, -0.984901, -0.082158,
		0.982979, 0.159665, -0.090882,
		16.251717, 23.789907, 17.762106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847349, 23.166050, 18.316685>,  <15.563631, 23.678143, 17.825724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847349, 23.166050, 18.316685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.136871, 23.436436, 18.261288>,  <16.310585, 23.598667, 18.228050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.136871, 23.436436, 18.261288>,  <15.847349, 23.166050, 18.316685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136871, 23.436436, 18.261288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110430, 0.084640, 0.990273,
		0.681111, -0.732058, -0.013384,
		0.723805, 0.675964, -0.138491,
		16.354013, 23.639225, 18.219740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.681375, 22.373032, 18.358452>,  <15.847349, 23.166050, 18.316685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.681375, 22.373032, 18.358452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.403363, 22.347977, 18.644951>,  <15.236557, 22.332943, 18.816851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.403363, 22.347977, 18.644951>,  <15.681375, 22.373032, 18.358452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403363, 22.347977, 18.644951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708680, -0.108366, -0.697158,
		0.121286, -0.992136, 0.030927,
		-0.695027, -0.062638, 0.716250,
		15.194855, 22.329185, 18.859825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.387384, 21.647793, 18.245192>,  <15.681375, 22.373032, 18.358452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.387384, 21.647793, 18.245192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.124988, 21.862114, 18.457827>,  <14.967549, 21.990707, 18.585407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.124988, 21.862114, 18.457827>,  <15.387384, 21.647793, 18.245192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.124988, 21.862114, 18.457827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677861, -0.108496, -0.727140,
		-0.331930, -0.837342, 0.434374,
		-0.655993, 0.535805, 0.531589,
		14.928189, 22.022856, 18.617304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844252, 21.327827, 18.194931>,  <15.387384, 21.647793, 18.245192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844252, 21.327827, 18.194931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.716565, 21.701015, 18.261467>,  <14.639954, 21.924929, 18.301388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.716565, 21.701015, 18.261467>,  <14.844252, 21.327827, 18.194931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.716565, 21.701015, 18.261467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710081, -0.119231, -0.693952,
		-0.627604, -0.339634, 0.700544,
		-0.319216, 0.932970, 0.166338,
		14.620800, 21.980906, 18.311369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.084741, 21.276587, 18.160925>,  <14.844252, 21.327827, 18.194931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.084741, 21.276587, 18.160925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.169755, 21.665573, 18.122688>,  <14.220763, 21.898966, 18.099747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.169755, 21.665573, 18.122688>,  <14.084741, 21.276587, 18.160925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.169755, 21.665573, 18.122688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621119, 0.058929, -0.781498,
		-0.754348, 0.225469, 0.616542,
		0.212535, 0.972466, -0.095590,
		14.233516, 21.957314, 18.094011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466604, 21.673725, 18.140148>,  <14.084741, 21.276587, 18.160925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.466604, 21.673725, 18.140148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.723842, 21.924965, 17.964912>,  <13.878184, 22.075708, 17.859772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.723842, 21.924965, 17.964912>,  <13.466604, 21.673725, 18.140148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.723842, 21.924965, 17.964912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493868, -0.097042, -0.864105,
		-0.585256, 0.772059, 0.247791,
		0.643094, 0.628099, -0.438090,
		13.916770, 22.113394, 17.833485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
