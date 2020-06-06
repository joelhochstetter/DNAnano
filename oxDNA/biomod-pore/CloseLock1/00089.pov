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
	<24.302881, 35.306705, 34.960888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.103067, 34.975143, 34.860184>,  <23.983179, 34.776207, 34.799763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.103067, 34.975143, 34.860184>,  <24.302881, 35.306705, 34.960888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.103067, 34.975143, 34.860184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729199, -0.245437, -0.638772,
		0.467689, -0.502673, 0.727040,
		-0.499536, -0.828903, -0.251761,
		23.953207, 34.726471, 34.784657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.691051, 34.706909, 35.032364>,  <24.302881, 35.306705, 34.960888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.691051, 34.706909, 35.032364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433226, 34.650318, 34.731827>,  <24.278530, 34.616364, 34.551502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433226, 34.650318, 34.731827>,  <24.691051, 34.706909, 35.032364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433226, 34.650318, 34.731827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764422, -0.137120, -0.629966,
		-0.013900, -0.980400, 0.196529,
		-0.644566, -0.141475, -0.751345,
		24.239857, 34.607876, 34.506424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888430, 34.053867, 34.634483>,  <24.691051, 34.706909, 35.032364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888430, 34.053867, 34.634483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689922, 34.316933, 34.407787>,  <24.570818, 34.474773, 34.271770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689922, 34.316933, 34.407787>,  <24.888430, 34.053867, 34.634483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689922, 34.316933, 34.407787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645463, -0.157064, -0.747468,
		-0.580599, -0.736753, -0.346554,
		-0.496268, 0.657667, -0.566739,
		24.541042, 34.514233, 34.237766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985691, 33.832996, 33.883377>,  <24.888430, 34.053867, 34.634483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985691, 33.832996, 33.883377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.908745, 34.225525, 33.884109>,  <24.862577, 34.461040, 33.884548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.908745, 34.225525, 33.884109>,  <24.985691, 33.832996, 33.883377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.908745, 34.225525, 33.884109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660616, 0.130880, -0.739227,
		-0.725659, -0.140993, -0.673454,
		-0.192368, 0.981321, 0.001832,
		24.851034, 34.519920, 33.884659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643183, 34.112686, 33.545883>,  <24.985691, 33.832996, 33.883377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643183, 34.112686, 33.545883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752895, 34.420231, 33.776924>,  <25.818722, 34.604759, 33.915546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752895, 34.420231, 33.776924>,  <25.643183, 34.112686, 33.545883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752895, 34.420231, 33.776924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206453, 0.539549, -0.816250,
		-0.939227, 0.343128, -0.010746,
		0.274281, 0.768862, 0.577599,
		25.835180, 34.650890, 33.950203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390963, 33.946915, 33.555984>,  <25.643183, 34.112686, 33.545883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390963, 33.946915, 33.555984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750923, 34.106888, 33.486435>,  <26.966900, 34.202873, 33.444706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750923, 34.106888, 33.486435>,  <26.390963, 33.946915, 33.555984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750923, 34.106888, 33.486435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281382, 0.227895, -0.932141,
		-0.333171, 0.887759, 0.317618,
		0.899901, 0.399935, -0.173872,
		27.020893, 34.226868, 33.434273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508909, 34.793400, 33.363853>,  <26.390963, 33.946915, 33.555984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508909, 34.793400, 33.363853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710875, 34.490429, 33.198265>,  <26.832054, 34.308647, 33.098911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710875, 34.490429, 33.198265>,  <26.508909, 34.793400, 33.363853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710875, 34.490429, 33.198265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256691, 0.326139, -0.909804,
		0.824119, 0.565634, -0.029752,
		0.504913, -0.757424, -0.413971,
		26.862349, 34.263203, 33.074074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075254, 35.096642, 32.987232>,  <26.508909, 34.793400, 33.363853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075254, 35.096642, 32.987232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988619, 34.735455, 32.838779>,  <26.936638, 34.518742, 32.749706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988619, 34.735455, 32.838779>,  <27.075254, 35.096642, 32.987232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988619, 34.735455, 32.838779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082523, 0.395733, -0.914650,
		0.972769, -0.167475, -0.160226,
		-0.216588, -0.902966, -0.371137,
		26.923643, 34.464565, 32.727440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384228, 35.140732, 32.368843>,  <27.075254, 35.096642, 32.987232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384228, 35.140732, 32.368843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138119, 34.829559, 32.317825>,  <26.990454, 34.642857, 32.287212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138119, 34.829559, 32.317825>,  <27.384228, 35.140732, 32.368843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138119, 34.829559, 32.317825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153345, 0.276814, -0.948609,
		0.773257, -0.564094, -0.289608,
		-0.615272, -0.777928, -0.127547,
		26.953537, 34.596180, 32.279560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569889, 34.934853, 31.706932>,  <27.384228, 35.140732, 32.368843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569889, 34.934853, 31.706932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204006, 34.795876, 31.789490>,  <26.984476, 34.712490, 31.839025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204006, 34.795876, 31.789490>,  <27.569889, 34.934853, 31.706932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204006, 34.795876, 31.789490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296007, 0.228319, -0.927497,
		0.275131, -0.909479, -0.311690,
		-0.914704, -0.347445, 0.206394,
		26.929594, 34.691643, 31.851408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471626, 34.483166, 31.178831>,  <27.569889, 34.934853, 31.706932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471626, 34.483166, 31.178831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108616, 34.569817, 31.322758>,  <26.890810, 34.621807, 31.409113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108616, 34.569817, 31.322758>,  <27.471626, 34.483166, 31.178831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108616, 34.569817, 31.322758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312971, 0.222496, -0.923333,
		-0.280077, -0.950562, -0.134123,
		-0.907527, 0.216628, 0.359815,
		26.836357, 34.634804, 31.430702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959106, 34.277145, 30.705315>,  <27.471626, 34.483166, 31.178831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959106, 34.277145, 30.705315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742455, 34.546383, 30.906744>,  <26.612463, 34.707924, 31.027601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742455, 34.546383, 30.906744>,  <26.959106, 34.277145, 30.705315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742455, 34.546383, 30.906744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290955, 0.411914, -0.863523,
		-0.788657, -0.614228, -0.027267,
		-0.541632, 0.673091, 0.503571,
		26.579966, 34.748310, 31.057816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387480, 34.376652, 30.337629>,  <26.959106, 34.277145, 30.705315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387480, 34.376652, 30.337629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386383, 34.723175, 30.537428>,  <26.385725, 34.931091, 30.657307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386383, 34.723175, 30.537428>,  <26.387480, 34.376652, 30.337629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386383, 34.723175, 30.537428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180650, 0.490852, -0.852309,
		-0.983544, -0.092571, 0.155153,
		-0.002742, 0.866311, 0.499497,
		26.385561, 34.983067, 30.687277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871027, 34.798653, 29.956892>,  <26.387480, 34.376652, 30.337629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871027, 34.798653, 29.956892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098425, 35.058681, 30.158575>,  <26.234863, 35.214699, 30.279585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098425, 35.058681, 30.158575>,  <25.871027, 34.798653, 29.956892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098425, 35.058681, 30.158575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000756, 0.613291, -0.789857,
		-0.822688, 0.448647, 0.349143,
		0.568493, 0.650070, 0.504207,
		26.268972, 35.253704, 30.309837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707117, 35.389805, 29.693123>,  <25.871027, 34.798653, 29.956892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707117, 35.389805, 29.693123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025768, 35.525673, 29.893126>,  <26.216959, 35.607193, 30.013128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025768, 35.525673, 29.893126>,  <25.707117, 35.389805, 29.693123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025768, 35.525673, 29.893126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120612, 0.721231, -0.682113,
		-0.592314, 0.603698, 0.533585,
		0.796628, 0.339669, 0.500009,
		26.264757, 35.627575, 30.043129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602175, 36.098362, 29.891102>,  <25.707117, 35.389805, 29.693123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602175, 36.098362, 29.891102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998846, 36.051861, 29.913235>,  <26.236849, 36.023960, 29.926516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998846, 36.051861, 29.913235>,  <25.602175, 36.098362, 29.891102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998846, 36.051861, 29.913235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127581, 0.829615, -0.543564,
		0.017283, 0.546100, 0.837542,
		0.991678, -0.116248, 0.055334,
		26.296349, 36.016987, 29.929834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926991, 36.722134, 30.229736>,  <25.602175, 36.098362, 29.891102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926991, 36.722134, 30.229736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194408, 36.563351, 29.978189>,  <26.354860, 36.468082, 29.827261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194408, 36.563351, 29.978189>,  <25.926991, 36.722134, 30.229736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194408, 36.563351, 29.978189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154197, 0.901238, -0.404960,
		0.727509, 0.173765, 0.663729,
		0.668546, -0.396957, -0.628865,
		26.394972, 36.444263, 29.789530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456173, 37.217316, 30.184881>,  <25.926991, 36.722134, 30.229736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456173, 37.217316, 30.184881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574619, 36.999435, 29.871037>,  <26.645687, 36.868710, 29.682730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574619, 36.999435, 29.871037>,  <26.456173, 37.217316, 30.184881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574619, 36.999435, 29.871037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181235, 0.838573, -0.513760,
		0.937800, 0.009934, 0.347034,
		0.296117, -0.544699, -0.784613,
		26.663454, 36.836025, 29.635653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245508, 37.343185, 30.075312>,  <26.456173, 37.217316, 30.184881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245508, 37.343185, 30.075312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097921, 37.204514, 29.730366>,  <27.009369, 37.121311, 29.523397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097921, 37.204514, 29.730366>,  <27.245508, 37.343185, 30.075312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097921, 37.204514, 29.730366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522545, 0.689935, -0.500936,
		0.768642, -0.635454, -0.073406,
		-0.368967, -0.346682, -0.862365,
		26.987232, 37.100510, 29.471657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846674, 37.323647, 29.641785>,  <27.245508, 37.343185, 30.075312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846674, 37.323647, 29.641785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520594, 37.326523, 29.410131>,  <27.324945, 37.328251, 29.271139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520594, 37.326523, 29.410131>,  <27.846674, 37.323647, 29.641785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520594, 37.326523, 29.410131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362673, 0.785953, -0.500746,
		0.451569, -0.618244, -0.643319,
		-0.815202, 0.007193, -0.579132,
		27.276033, 37.328682, 29.236391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057091, 37.387718, 28.961866>,  <27.846674, 37.323647, 29.641785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057091, 37.387718, 28.961866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682673, 37.527023, 28.941734>,  <27.458021, 37.610607, 28.929655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682673, 37.527023, 28.941734>,  <28.057091, 37.387718, 28.961866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682673, 37.527023, 28.941734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308186, 0.742342, -0.594936,
		-0.169836, -0.572397, -0.802196,
		-0.936043, 0.348267, -0.050328,
		27.401859, 37.631504, 28.926636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960024, 37.714481, 28.255096>,  <28.057091, 37.387718, 28.961866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960024, 37.714481, 28.255096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678959, 37.867714, 28.494936>,  <27.510321, 37.959652, 28.638840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678959, 37.867714, 28.494936>,  <27.960024, 37.714481, 28.255096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678959, 37.867714, 28.494936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229846, 0.919720, -0.318253,
		-0.673379, -0.085809, -0.734301,
		-0.702661, 0.383081, 0.599597,
		27.468161, 37.982639, 28.674814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592867, 38.105633, 27.811153>,  <27.960024, 37.714481, 28.255096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592867, 38.105633, 27.811153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524918, 38.251251, 28.177456>,  <27.484148, 38.338623, 28.397238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524918, 38.251251, 28.177456>,  <27.592867, 38.105633, 27.811153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524918, 38.251251, 28.177456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400134, 0.874694, -0.273501,
		-0.900575, 0.319964, -0.294258,
		-0.169876, 0.364051, 0.915756,
		27.473955, 38.360466, 28.452183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382299, 38.761639, 27.585638>,  <27.592867, 38.105633, 27.811153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382299, 38.761639, 27.585638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454872, 38.783012, 27.978418>,  <27.498415, 38.795837, 28.214087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454872, 38.783012, 27.978418>,  <27.382299, 38.761639, 27.585638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454872, 38.783012, 27.978418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221678, 0.970600, -0.093777,
		-0.958093, 0.234690, 0.164252,
		0.181431, 0.053436, 0.981951,
		27.509302, 38.799042, 28.273005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901110, 39.086338, 27.898636>,  <27.382299, 38.761639, 27.585638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901110, 39.086338, 27.898636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254488, 39.133762, 28.079950>,  <27.466515, 39.162216, 28.188740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254488, 39.133762, 28.079950>,  <26.901110, 39.086338, 27.898636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254488, 39.133762, 28.079950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004591, 0.965217, -0.261411,
		-0.468513, 0.233023, 0.852171,
		0.883445, 0.118562, 0.453286,
		27.519522, 39.169331, 28.215937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930592, 39.734261, 28.173586>,  <26.901110, 39.086338, 27.898636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930592, 39.734261, 28.173586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312685, 39.622944, 28.133429>,  <27.541943, 39.556152, 28.109335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312685, 39.622944, 28.133429>,  <26.930592, 39.734261, 28.173586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312685, 39.622944, 28.133429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231461, 0.914351, -0.332246,
		0.184255, 0.294136, 0.937835,
		0.955236, -0.278291, -0.100393,
		27.599257, 39.539455, 28.103312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279518, 40.348228, 28.230402>,  <26.930592, 39.734261, 28.173586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279518, 40.348228, 28.230402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526649, 40.093925, 28.045315>,  <27.674929, 39.941345, 27.934263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526649, 40.093925, 28.045315>,  <27.279518, 40.348228, 28.230402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526649, 40.093925, 28.045315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415010, 0.763471, -0.494853,
		0.667875, 0.113701, 0.735537,
		0.617827, -0.635755, -0.462716,
		27.711998, 39.903198, 27.906500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091146, 40.481201, 28.326817>,  <27.279518, 40.348228, 28.230402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091146, 40.481201, 28.326817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041708, 40.311466, 27.968004>,  <28.012045, 40.209625, 27.752718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041708, 40.311466, 27.968004>,  <28.091146, 40.481201, 28.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041708, 40.311466, 27.968004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565936, 0.712398, -0.414976,
		0.815132, -0.558951, 0.152098,
		-0.123597, -0.424338, -0.897029,
		28.004629, 40.184166, 27.698895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627939, 40.775547, 27.873436>,  <28.091146, 40.481201, 28.326817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627939, 40.775547, 27.873436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390863, 40.607601, 27.598501>,  <28.248617, 40.506832, 27.433540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390863, 40.607601, 27.598501>,  <28.627939, 40.775547, 27.873436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390863, 40.607601, 27.598501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347964, 0.636149, -0.688647,
		0.726387, -0.647324, -0.230943,
		-0.592692, -0.419864, -0.687335,
		28.213057, 40.481640, 27.392300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049313, 40.561077, 27.318798>,  <28.627939, 40.775547, 27.873436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049313, 40.561077, 27.318798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681238, 40.624046, 27.175423>,  <28.460394, 40.661827, 27.089397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681238, 40.624046, 27.175423>,  <29.049313, 40.561077, 27.318798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681238, 40.624046, 27.175423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355274, 0.720375, -0.595685,
		0.164434, -0.675483, -0.718807,
		-0.920186, 0.157423, -0.358436,
		28.405182, 40.671272, 27.067892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784924, 40.462246, 27.521797>,  <29.049313, 40.561077, 27.318798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784924, 40.462246, 27.521797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143187, 40.609436, 27.421881>,  <30.358145, 40.697750, 27.361931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143187, 40.609436, 27.421881>,  <29.784924, 40.462246, 27.521797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143187, 40.609436, 27.421881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388488, -0.920725, 0.036632,
		-0.216510, -0.129851, -0.967607,
		0.895657, 0.367972, -0.249792,
		30.411884, 40.719830, 27.346943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111876, 40.135136, 26.791553>,  <29.784924, 40.462246, 27.521797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111876, 40.135136, 26.791553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382914, 40.226185, 27.071283>,  <30.545536, 40.280815, 27.239122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382914, 40.226185, 27.071283>,  <30.111876, 40.135136, 26.791553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382914, 40.226185, 27.071283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374788, -0.925031, -0.062059,
		0.632773, 0.304150, -0.712103,
		0.677593, 0.227618, 0.699327,
		30.586191, 40.294472, 27.281082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859367, 40.183060, 26.514257>,  <30.111876, 40.135136, 26.791553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859367, 40.183060, 26.514257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837709, 40.087387, 26.902042>,  <30.824715, 40.029984, 27.134714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837709, 40.087387, 26.902042>,  <30.859367, 40.183060, 26.514257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837709, 40.087387, 26.902042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321635, -0.923321, -0.209834,
		0.945315, 0.300452, 0.126921,
		-0.054144, -0.239181, 0.969464,
		30.821466, 40.015633, 27.192883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424606, 39.625324, 26.621979>,  <30.859367, 40.183060, 26.514257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424606, 39.625324, 26.621979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200174, 39.610107, 26.952734>,  <31.065516, 39.600975, 27.151188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200174, 39.610107, 26.952734>,  <31.424606, 39.625324, 26.621979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200174, 39.610107, 26.952734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266063, -0.954223, 0.136630,
		0.783838, 0.296665, 0.545516,
		-0.561078, -0.038046, 0.826888,
		31.031851, 39.598694, 27.200800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734871, 39.054035, 26.964783>,  <31.424606, 39.625324, 26.621979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734871, 39.054035, 26.964783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420954, 39.154770, 27.191298>,  <31.232603, 39.215210, 27.327206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420954, 39.154770, 27.191298>,  <31.734871, 39.054035, 26.964783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420954, 39.154770, 27.191298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055930, -0.881213, 0.469400,
		0.617231, 0.400053, 0.677483,
		-0.784791, 0.251837, 0.566287,
		31.185516, 39.230320, 27.361183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950777, 38.544506, 27.432360>,  <31.734871, 39.054035, 26.964783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950777, 38.544506, 27.432360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568993, 38.646587, 27.494162>,  <31.339922, 38.707836, 27.531242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568993, 38.646587, 27.494162>,  <31.950777, 38.544506, 27.432360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568993, 38.646587, 27.494162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133345, -0.828232, 0.544290,
		0.266871, 0.498902, 0.824546,
		-0.954463, 0.255204, 0.154505,
		31.282654, 38.723148, 27.540514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830122, 38.422016, 28.103598>,  <31.950777, 38.544506, 27.432360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830122, 38.422016, 28.103598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452112, 38.444607, 27.974764>,  <31.225306, 38.458160, 27.897465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452112, 38.444607, 27.974764>,  <31.830122, 38.422016, 28.103598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452112, 38.444607, 27.974764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192332, -0.892580, 0.407810,
		-0.264454, 0.447338, 0.854373,
		-0.945025, 0.056477, -0.322083,
		31.168604, 38.461552, 27.878139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428133, 38.348610, 28.765625>,  <31.830122, 38.422016, 28.103598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428133, 38.348610, 28.765625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204088, 38.255596, 28.447580>,  <31.069660, 38.199787, 28.256754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204088, 38.255596, 28.447580>,  <31.428133, 38.348610, 28.765625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204088, 38.255596, 28.447580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265970, -0.858506, 0.438437,
		-0.784559, 0.457050, 0.419014,
		-0.560114, -0.232534, -0.795110,
		31.036055, 38.185837, 28.209047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882273, 38.062393, 29.022129>,  <31.428133, 38.348610, 28.765625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882273, 38.062393, 29.022129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894453, 37.929016, 28.645218>,  <30.901762, 37.848991, 28.419071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894453, 37.929016, 28.645218>,  <30.882273, 38.062393, 29.022129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894453, 37.929016, 28.645218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463718, -0.839837, 0.282205,
		-0.885460, 0.428358, -0.180196,
		0.030450, -0.333442, -0.942279,
		30.903587, 37.828983, 28.362534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207653, 37.842426, 28.943514>,  <30.882273, 38.062393, 29.022129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207653, 37.842426, 28.943514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421082, 37.668724, 28.653212>,  <30.549139, 37.564503, 28.479031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421082, 37.668724, 28.653212>,  <30.207653, 37.842426, 28.943514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421082, 37.668724, 28.653212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528692, -0.841049, 0.114553,
		-0.660141, 0.322578, -0.678349,
		0.533573, -0.434259, -0.725755,
		30.581154, 37.538448, 28.435486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732023, 37.447578, 28.740810>,  <30.207653, 37.842426, 28.943514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732023, 37.447578, 28.740810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089952, 37.309784, 28.627235>,  <30.304710, 37.227108, 28.559090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089952, 37.309784, 28.627235>,  <29.732023, 37.447578, 28.740810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089952, 37.309784, 28.627235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307545, -0.936717, 0.167264,
		-0.323590, -0.062348, -0.944141,
		0.894821, -0.344491, -0.283938,
		30.358398, 37.206436, 28.542053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711298, 36.858585, 28.296135>,  <29.732023, 37.447578, 28.740810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711298, 36.858585, 28.296135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092846, 36.806103, 28.404148>,  <30.321775, 36.774612, 28.468956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092846, 36.806103, 28.404148>,  <29.711298, 36.858585, 28.296135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092846, 36.806103, 28.404148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200172, -0.948289, 0.246332,
		0.223747, -0.289021, -0.930808,
		0.953870, -0.131206, 0.270031,
		30.379007, 36.766743, 28.485157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771202, 36.173046, 28.138884>,  <29.711298, 36.858585, 28.296135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771202, 36.173046, 28.138884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064203, 36.273052, 28.392160>,  <30.240004, 36.333057, 28.544127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064203, 36.273052, 28.392160>,  <29.771202, 36.173046, 28.138884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064203, 36.273052, 28.392160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029109, -0.940770, 0.337794,
		0.680143, -0.229003, -0.696393,
		0.732501, 0.250020, 0.633192,
		30.283955, 36.348057, 28.582117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280209, 35.673328, 28.158337>,  <29.771202, 36.173046, 28.138884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280209, 35.673328, 28.158337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339634, 35.846394, 28.514029>,  <30.375288, 35.950233, 28.727444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339634, 35.846394, 28.514029>,  <30.280209, 35.673328, 28.158337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339634, 35.846394, 28.514029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025524, -0.900587, 0.433926,
		0.988574, -0.041768, -0.144836,
		0.148561, 0.432664, 0.889230,
		30.384203, 35.976192, 28.780798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701410, 35.193905, 28.592661>,  <30.280209, 35.673328, 28.158337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701410, 35.193905, 28.592661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530867, 35.420647, 28.874622>,  <30.428541, 35.556694, 29.043798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530867, 35.420647, 28.874622>,  <30.701410, 35.193905, 28.592661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530867, 35.420647, 28.874622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137700, -0.810874, 0.568790,
		0.894011, 0.145444, 0.423781,
		-0.426360, 0.566859, 0.704903,
		30.402958, 35.590706, 29.086094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954809, 34.851509, 29.055847>,  <30.701410, 35.193905, 28.592661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954809, 34.851509, 29.055847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711540, 35.102585, 29.250223>,  <30.565578, 35.253231, 29.366848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711540, 35.102585, 29.250223>,  <30.954809, 34.851509, 29.055847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711540, 35.102585, 29.250223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097188, -0.666437, 0.739199,
		0.787834, 0.402332, 0.466311,
		-0.608171, 0.627687, 0.485940,
		30.529089, 35.290890, 29.396006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262213, 35.019096, 29.785000>,  <30.954809, 34.851509, 29.055847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262213, 35.019096, 29.785000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864584, 35.060505, 29.771677>,  <30.626007, 35.085350, 29.763683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864584, 35.060505, 29.771677>,  <31.262213, 35.019096, 29.785000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864584, 35.060505, 29.771677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095846, -0.689340, 0.718070,
		0.051373, 0.717004, 0.695174,
		-0.994070, 0.103519, -0.033309,
		30.566362, 35.091560, 29.761684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949480, 35.179012, 30.487217>,  <31.262213, 35.019096, 29.785000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949480, 35.179012, 30.487217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645702, 35.040836, 30.266703>,  <30.463436, 34.957932, 30.134394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645702, 35.040836, 30.266703>,  <30.949480, 35.179012, 30.487217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645702, 35.040836, 30.266703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230314, -0.649749, 0.724418,
		-0.608443, 0.677122, 0.413887,
		-0.759443, -0.345443, -0.551286,
		30.417870, 34.937202, 30.101316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504194, 35.118282, 30.941980>,  <30.949480, 35.179012, 30.487217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504194, 35.118282, 30.941980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352724, 34.900650, 30.642494>,  <30.261841, 34.770069, 30.462803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352724, 34.900650, 30.642494>,  <30.504194, 35.118282, 30.941980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352724, 34.900650, 30.642494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438001, -0.607289, 0.662838,
		-0.815327, 0.578940, -0.008342,
		-0.378677, -0.544084, -0.748716,
		30.239120, 34.737423, 30.417879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683315, 35.118317, 31.014122>,  <30.504194, 35.118282, 30.941980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683315, 35.118317, 31.014122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851168, 34.807831, 30.825911>,  <29.951880, 34.621540, 30.712984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851168, 34.807831, 30.825911>,  <29.683315, 35.118317, 31.014122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851168, 34.807831, 30.825911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486775, -0.629974, 0.605131,
		-0.766134, -0.024889, -0.642198,
		0.419629, -0.776218, -0.470529,
		29.977057, 34.574966, 30.684752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112839, 34.750381, 30.826473>,  <29.683315, 35.118317, 31.014122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112839, 34.750381, 30.826473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412912, 34.486107, 30.815783>,  <29.592957, 34.327541, 30.809368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412912, 34.486107, 30.815783>,  <29.112839, 34.750381, 30.826473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412912, 34.486107, 30.815783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387455, -0.471976, 0.791907,
		-0.535820, -0.583720, -0.610056,
		0.750184, -0.660689, -0.026729,
		29.637968, 34.287899, 30.807764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858765, 34.115608, 30.952169>,  <29.112839, 34.750381, 30.826473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858765, 34.115608, 30.952169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238066, 34.044979, 31.057728>,  <29.465647, 34.002602, 31.121063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238066, 34.044979, 31.057728>,  <28.858765, 34.115608, 30.952169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238066, 34.044979, 31.057728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317245, -0.492234, 0.810593,
		-0.013227, -0.852367, -0.522777,
		0.948251, -0.176570, 0.263899,
		29.522541, 33.992008, 31.136898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790491, 33.464108, 31.123245>,  <28.858765, 34.115608, 30.952169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790491, 33.464108, 31.123245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110853, 33.606277, 31.316004>,  <29.303070, 33.691578, 31.431660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110853, 33.606277, 31.316004>,  <28.790491, 33.464108, 31.123245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110853, 33.606277, 31.316004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112298, -0.701347, 0.703918,
		0.588167, -0.617888, -0.521799,
		0.800905, 0.355424, 0.481897,
		29.351126, 33.712906, 31.460573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125772, 32.823708, 31.247849>,  <28.790491, 33.464108, 31.123245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125772, 32.823708, 31.247849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315987, 33.091946, 31.475594>,  <29.430115, 33.252888, 31.612240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315987, 33.091946, 31.475594>,  <29.125772, 32.823708, 31.247849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315987, 33.091946, 31.475594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078951, -0.677147, 0.731600,
		0.876147, -0.302949, -0.374951,
		0.475534, 0.670592, 0.569363,
		29.458647, 33.293121, 31.646402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615255, 32.425133, 31.542568>,  <29.125772, 32.823708, 31.247849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615255, 32.425133, 31.542568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593189, 32.739845, 31.788475>,  <29.579950, 32.928673, 31.936018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593189, 32.739845, 31.788475>,  <29.615255, 32.425133, 31.542568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593189, 32.739845, 31.788475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070170, -0.611126, 0.788417,
		0.996009, 0.086632, -0.021495,
		-0.055166, 0.786778, 0.614766,
		29.576639, 32.975880, 31.972904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046835, 32.343098, 32.051136>,  <29.615255, 32.425133, 31.542568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046835, 32.343098, 32.051136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820667, 32.612232, 32.241959>,  <29.684967, 32.773712, 32.356453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820667, 32.612232, 32.241959>,  <30.046835, 32.343098, 32.051136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820667, 32.612232, 32.241959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089217, -0.624893, 0.775596,
		0.819963, 0.395977, 0.413356,
		-0.565422, 0.672838, 0.477061,
		29.651041, 32.814083, 32.385078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361788, 32.406029, 32.723816>,  <30.046835, 32.343098, 32.051136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361788, 32.406029, 32.723816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978300, 32.517639, 32.745728>,  <29.748207, 32.584606, 32.758877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978300, 32.517639, 32.745728>,  <30.361788, 32.406029, 32.723816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978300, 32.517639, 32.745728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125478, -0.588015, 0.799058,
		0.255169, 0.759199, 0.598754,
		-0.958720, 0.279025, 0.054781,
		29.690683, 32.601345, 32.762161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722181, 32.919277, 33.072151>,  <30.361788, 32.406029, 32.723816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722181, 32.919277, 33.072151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872110, 33.265034, 32.938084>,  <30.962069, 33.472488, 32.857643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872110, 33.265034, 32.938084>,  <30.722181, 32.919277, 33.072151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872110, 33.265034, 32.938084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911454, -0.277446, 0.303767,
		0.169582, -0.419350, -0.891845,
		0.374824, 0.864390, -0.335168,
		30.984558, 33.524349, 32.837532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459642, 32.692947, 32.813881>,  <30.722181, 32.919277, 33.072151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459642, 32.692947, 32.813881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443813, 33.082230, 32.904476>,  <31.434317, 33.315800, 32.958832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443813, 33.082230, 32.904476>,  <31.459642, 32.692947, 32.813881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443813, 33.082230, 32.904476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883794, -0.071663, 0.462356,
		0.466200, 0.218463, -0.857281,
		-0.039573, 0.973210, 0.226486,
		31.431942, 33.374191, 32.972424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047676, 32.950390, 33.143715>,  <31.459642, 32.692947, 32.813881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047676, 32.950390, 33.143715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847811, 33.273430, 33.269012>,  <31.727892, 33.467255, 33.344189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847811, 33.273430, 33.269012>,  <32.047676, 32.950390, 33.143715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847811, 33.273430, 33.269012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809889, 0.307276, 0.499661,
		0.307276, 0.503352, -0.807601,
		-0.499661, 0.807601, 0.313241,
		31.697912, 33.515709, 33.362984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414230, 33.657555, 32.968613>,  <32.047676, 32.950390, 33.143715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414230, 33.657555, 32.968613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224403, 33.666134, 33.320595>,  <32.110508, 33.671280, 33.531784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224403, 33.666134, 33.320595>,  <32.414230, 33.657555, 32.968613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224403, 33.666134, 33.320595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846830, 0.283857, 0.449783,
		-0.240134, 0.958627, -0.152873,
		-0.474568, 0.021449, 0.879958,
		32.082031, 33.672569, 33.584583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768623, 34.166630, 33.340778>,  <32.414230, 33.657555, 32.968613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768623, 34.166630, 33.340778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535213, 33.997211, 33.617939>,  <32.395168, 33.895561, 33.784237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535213, 33.997211, 33.617939>,  <32.768623, 34.166630, 33.340778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535213, 33.997211, 33.617939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569199, 0.395266, 0.720956,
		-0.579237, 0.815093, 0.010435,
		-0.583521, -0.423543, 0.692903,
		32.360157, 33.870148, 33.825809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548710, 34.718090, 33.774197>,  <32.768623, 34.166630, 33.340778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548710, 34.718090, 33.774197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551197, 34.369900, 33.971062>,  <32.552689, 34.160984, 34.089180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551197, 34.369900, 33.971062>,  <32.548710, 34.718090, 33.774197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551197, 34.369900, 33.971062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343271, 0.464124, 0.816550,
		-0.939216, 0.163871, 0.301695,
		0.006215, -0.870480, 0.492165,
		32.553062, 34.108757, 34.118710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184052, 34.813683, 34.401798>,  <32.548710, 34.718090, 33.774197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184052, 34.813683, 34.401798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461372, 34.526264, 34.423786>,  <32.627766, 34.353813, 34.436977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461372, 34.526264, 34.423786>,  <32.184052, 34.813683, 34.401798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461372, 34.526264, 34.423786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292348, 0.350155, 0.889901,
		-0.658681, -0.600903, 0.452829,
		0.693305, -0.718545, 0.054968,
		32.669365, 34.310699, 34.440277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066826, 34.449776, 34.985180>,  <32.184052, 34.813683, 34.401798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066826, 34.449776, 34.985180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459282, 34.423553, 34.912441>,  <32.694756, 34.407822, 34.868797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459282, 34.423553, 34.912441>,  <32.066826, 34.449776, 34.985180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459282, 34.423553, 34.912441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192870, 0.269235, 0.943564,
		-0.012893, -0.960841, 0.276801,
		0.981140, -0.065552, -0.181846,
		32.753624, 34.403889, 34.857887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403244, 34.067368, 35.495098>,  <32.066826, 34.449776, 34.985180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403244, 34.067368, 35.495098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721249, 34.262398, 35.350750>,  <32.912052, 34.379417, 35.264141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721249, 34.262398, 35.350750>,  <32.403244, 34.067368, 35.495098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721249, 34.262398, 35.350750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294768, 0.209416, 0.932339,
		0.530157, -0.847594, 0.022767,
		0.795013, 0.487575, -0.360867,
		32.959751, 34.408669, 35.242489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929077, 33.712868, 35.814041>,  <32.403244, 34.067368, 35.495098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929077, 33.712868, 35.814041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059258, 34.073544, 35.700176>,  <33.137367, 34.289951, 35.631859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059258, 34.073544, 35.700176>,  <32.929077, 33.712868, 35.814041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059258, 34.073544, 35.700176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286384, 0.192915, 0.938493,
		0.901146, -0.386958, -0.195446,
		0.325453, 0.901691, -0.284663,
		33.156895, 34.344051, 35.614777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446697, 33.737640, 36.147446>,  <32.929077, 33.712868, 35.814041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446697, 33.737640, 36.147446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383114, 34.115952, 36.034138>,  <33.344963, 34.342937, 35.966152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383114, 34.115952, 36.034138>,  <33.446697, 33.737640, 36.147446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383114, 34.115952, 36.034138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321291, 0.320858, 0.890967,
		0.933544, 0.050613, -0.354871,
		-0.158957, 0.945774, -0.283274,
		33.335426, 34.399685, 35.949154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036018, 33.998528, 36.240971>,  <33.446697, 33.737640, 36.147446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036018, 33.998528, 36.240971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774258, 34.300903, 36.248001>,  <33.617199, 34.482330, 36.252220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774258, 34.300903, 36.248001>,  <34.036018, 33.998528, 36.240971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774258, 34.300903, 36.248001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500738, 0.415829, 0.759176,
		0.566584, 0.505608, -0.650648,
		-0.654404, 0.755941, 0.017575,
		33.577938, 34.527687, 36.253273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385551, 34.585827, 36.355568>,  <34.036018, 33.998528, 36.240971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385551, 34.585827, 36.355568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019775, 34.707912, 36.461884>,  <33.800312, 34.781166, 36.525673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019775, 34.707912, 36.461884>,  <34.385551, 34.585827, 36.355568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019775, 34.707912, 36.461884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377573, 0.406845, 0.831815,
		0.145747, 0.860999, -0.487276,
		-0.914438, 0.305216, 0.265794,
		33.745445, 34.799477, 36.541622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403831, 35.289787, 36.442520>,  <34.385551, 34.585827, 36.355568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403831, 35.289787, 36.442520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091972, 35.173630, 36.664448>,  <33.904858, 35.103935, 36.797604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091972, 35.173630, 36.664448>,  <34.403831, 35.289787, 36.442520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091972, 35.173630, 36.664448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394242, 0.460753, 0.795160,
		-0.486542, 0.838677, -0.244740,
		-0.779647, -0.290392, 0.554817,
		33.858078, 35.086514, 36.830894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257557, 35.838917, 36.857613>,  <34.403831, 35.289787, 36.442520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257557, 35.838917, 36.857613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008183, 35.572826, 37.021954>,  <33.858559, 35.413174, 37.120556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008183, 35.572826, 37.021954>,  <34.257557, 35.838917, 36.857613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008183, 35.572826, 37.021954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212738, 0.361319, 0.907850,
		-0.752373, 0.653393, -0.083741,
		-0.623440, -0.665227, 0.410848,
		33.821152, 35.373257, 37.145206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006432, 36.167469, 37.354542>,  <34.257557, 35.838917, 36.857613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006432, 36.167469, 37.354542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917580, 35.788849, 37.448093>,  <33.864269, 35.561676, 37.504227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917580, 35.788849, 37.448093>,  <34.006432, 36.167469, 37.354542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917580, 35.788849, 37.448093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049811, 0.228545, 0.972258,
		-0.973743, 0.227622, -0.003619,
		-0.222134, -0.946549, 0.233882,
		33.850941, 35.504883, 37.518257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433937, 36.207775, 37.814568>,  <34.006432, 36.167469, 37.354542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433937, 36.207775, 37.814568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621273, 35.862148, 37.888382>,  <33.733673, 35.654774, 37.932671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621273, 35.862148, 37.888382>,  <33.433937, 36.207775, 37.814568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621273, 35.862148, 37.888382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047047, 0.232946, 0.971351,
		-0.882297, -0.446238, 0.149749,
		0.468337, -0.864065, 0.184533,
		33.761776, 35.602928, 37.943741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162216, 35.940632, 38.430618>,  <33.433937, 36.207775, 37.814568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162216, 35.940632, 38.430618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512402, 35.747845, 38.416313>,  <33.722511, 35.632172, 38.407730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512402, 35.747845, 38.416313>,  <33.162216, 35.940632, 38.430618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512402, 35.747845, 38.416313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068482, 0.050462, 0.996375,
		-0.478417, -0.874734, 0.077183,
		0.875458, -0.481968, -0.035761,
		33.775040, 35.603252, 38.405586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127243, 35.395218, 38.804333>,  <33.162216, 35.940632, 38.430618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127243, 35.395218, 38.804333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527111, 35.388046, 38.796898>,  <33.767033, 35.383743, 38.792439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527111, 35.388046, 38.796898>,  <33.127243, 35.395218, 38.804333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527111, 35.388046, 38.796898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016254, -0.122446, 0.992342,
		-0.020067, -0.992313, -0.122114,
		0.999666, -0.017929, -0.018586,
		33.827011, 35.382668, 38.791321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362568, 34.828335, 39.132656>,  <33.127243, 35.395218, 38.804333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362568, 34.828335, 39.132656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687572, 35.060711, 39.151978>,  <33.882576, 35.200134, 39.163570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687572, 35.060711, 39.151978>,  <33.362568, 34.828335, 39.132656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687572, 35.060711, 39.151978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035968, -0.132658, 0.990509,
		0.581830, -0.803066, -0.128682,
		0.812515, 0.580936, 0.048299,
		33.931328, 35.234993, 39.166466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820911, 34.383007, 39.438965>,  <33.362568, 34.828335, 39.132656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820911, 34.383007, 39.438965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940872, 34.760731, 39.493130>,  <34.012848, 34.987366, 39.525627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940872, 34.760731, 39.493130>,  <33.820911, 34.383007, 39.438965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940872, 34.760731, 39.493130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073381, -0.118690, 0.990216,
		0.951142, -0.306909, 0.033698,
		0.299907, 0.944309, 0.135413,
		34.030846, 35.044022, 39.533752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201420, 34.348763, 40.046623>,  <33.820911, 34.383007, 39.438965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201420, 34.348763, 40.046623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120464, 34.739723, 40.022232>,  <34.071892, 34.974300, 40.007599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120464, 34.739723, 40.022232>,  <34.201420, 34.348763, 40.046623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120464, 34.739723, 40.022232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373540, -0.019491, 0.927409,
		0.905265, 0.210478, 0.369045,
		-0.202392, 0.977404, -0.060977,
		34.059746, 35.032944, 40.003941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502132, 34.753696, 40.631222>,  <34.201420, 34.348763, 40.046623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502132, 34.753696, 40.631222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166355, 34.927135, 40.500179>,  <33.964890, 35.031200, 40.421555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166355, 34.927135, 40.500179>,  <34.502132, 34.753696, 40.631222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166355, 34.927135, 40.500179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393748, -0.069778, 0.916566,
		0.374561, 0.898401, 0.229303,
		-0.839444, 0.433598, -0.327607,
		33.914520, 35.057213, 40.401897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364544, 35.152306, 41.133572>,  <34.502132, 34.753696, 40.631222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364544, 35.152306, 41.133572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010864, 35.127518, 40.948380>,  <33.798656, 35.112644, 40.837265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010864, 35.127518, 40.948380>,  <34.364544, 35.152306, 41.133572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010864, 35.127518, 40.948380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466298, 0.058873, 0.882666,
		-0.027445, 0.996340, -0.080954,
		-0.884202, -0.061973, -0.462976,
		33.745605, 35.108925, 40.809486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019264, 35.696781, 41.401382>,  <34.364544, 35.152306, 41.133572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019264, 35.696781, 41.401382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759174, 35.439682, 41.239353>,  <33.603119, 35.285423, 41.142136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759174, 35.439682, 41.239353>,  <34.019264, 35.696781, 41.401382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759174, 35.439682, 41.239353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459818, -0.091494, 0.883287,
		-0.604793, 0.760594, -0.236055,
		-0.650226, -0.642748, -0.405069,
		33.564106, 35.246857, 41.117832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388165, 35.927204, 41.621822>,  <34.019264, 35.696781, 41.401382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388165, 35.927204, 41.621822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326817, 35.542824, 41.529694>,  <33.290009, 35.312195, 41.474419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326817, 35.542824, 41.529694>,  <33.388165, 35.927204, 41.621822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326817, 35.542824, 41.529694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494685, -0.127106, 0.859727,
		-0.855433, 0.245791, -0.455875,
		-0.153369, -0.960953, -0.230320,
		33.280807, 35.254539, 41.460598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682983, 35.830471, 41.824677>,  <33.388165, 35.927204, 41.621822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682983, 35.830471, 41.824677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802834, 35.453136, 41.767643>,  <32.874744, 35.226734, 41.733421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802834, 35.453136, 41.767643>,  <32.682983, 35.830471, 41.824677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802834, 35.453136, 41.767643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387468, -0.256894, 0.885367,
		-0.871832, -0.210034, -0.442487,
		0.299630, -0.943340, -0.142587,
		32.892723, 35.170135, 41.724865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056503, 35.385326, 41.985962>,  <32.682983, 35.830471, 41.824677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056503, 35.385326, 41.985962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374783, 35.146782, 42.028328>,  <32.565750, 35.003654, 42.053745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374783, 35.146782, 42.028328>,  <32.056503, 35.385326, 41.985962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374783, 35.146782, 42.028328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397316, -0.381928, 0.834429,
		-0.457172, -0.706033, -0.540843,
		0.795697, -0.596363, 0.105911,
		32.613491, 34.967873, 42.060101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784868, 34.727638, 42.122505>,  <32.056503, 35.385326, 41.985962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784868, 34.727638, 42.122505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166054, 34.696911, 42.239780>,  <32.394764, 34.678474, 42.310146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166054, 34.696911, 42.239780>,  <31.784868, 34.727638, 42.122505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166054, 34.696911, 42.239780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289254, -0.519387, 0.804095,
		0.090511, -0.851080, -0.517176,
		0.952964, -0.076816, 0.293189,
		32.451942, 34.673866, 42.327736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865528, 33.966843, 42.296375>,  <31.784868, 34.727638, 42.122505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865528, 33.966843, 42.296375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166794, 34.154858, 42.480465>,  <32.347553, 34.267666, 42.590919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166794, 34.154858, 42.480465>,  <31.865528, 33.966843, 42.296375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166794, 34.154858, 42.480465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108523, -0.601239, 0.791666,
		0.648820, -0.646198, -0.401821,
		0.753163, 0.470042, 0.460223,
		32.392742, 34.295872, 42.618530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300549, 33.544640, 42.580818>,  <31.865528, 33.966843, 42.296375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300549, 33.544640, 42.580818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424732, 33.860355, 42.792717>,  <32.499245, 34.049786, 42.919857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424732, 33.860355, 42.792717>,  <32.300549, 33.544640, 42.580818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424732, 33.860355, 42.792717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083524, -0.577780, 0.811908,
		0.946909, -0.207820, -0.245304,
		0.310462, 0.789292, 0.529747,
		32.517872, 34.097141, 42.951641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838566, 33.348141, 42.991711>,  <32.300549, 33.544640, 42.580818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838566, 33.348141, 42.991711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724216, 33.678478, 43.186134>,  <32.655605, 33.876682, 43.302788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724216, 33.678478, 43.186134>,  <32.838566, 33.348141, 42.991711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724216, 33.678478, 43.186134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224708, -0.435310, 0.871787,
		0.931549, 0.358441, -0.061131,
		-0.285873, 0.825849, 0.486057,
		32.638454, 33.926231, 43.331951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320263, 33.540173, 43.509209>,  <32.838566, 33.348141, 42.991711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320263, 33.540173, 43.509209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979031, 33.712337, 43.627186>,  <32.774292, 33.815636, 43.697971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979031, 33.712337, 43.627186>,  <33.320263, 33.540173, 43.509209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979031, 33.712337, 43.627186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145141, -0.347207, 0.926489,
		0.501183, 0.833180, 0.233726,
		-0.853083, 0.430417, 0.294943,
		32.723106, 33.841461, 43.715668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457203, 33.774746, 44.229988>,  <33.320263, 33.540173, 43.509209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457203, 33.774746, 44.229988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058243, 33.783791, 44.202595>,  <32.818867, 33.789215, 44.186157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058243, 33.783791, 44.202595>,  <33.457203, 33.774746, 44.229988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058243, 33.783791, 44.202595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071672, -0.416420, 0.906343,
		-0.008028, 0.908891, 0.416956,
		-0.997396, 0.022608, -0.068485,
		32.759026, 33.790573, 44.182049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232452, 34.041000, 44.824867>,  <33.457203, 33.774746, 44.229988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232452, 34.041000, 44.824867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940224, 33.820763, 44.663322>,  <32.764885, 33.688622, 44.566395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940224, 33.820763, 44.663322>,  <33.232452, 34.041000, 44.824867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940224, 33.820763, 44.663322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134973, -0.463336, 0.875844,
		-0.669359, 0.694380, 0.264187,
		-0.730576, -0.550596, -0.403861,
		32.721050, 33.655582, 44.542164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830353, 34.034576, 45.425575>,  <33.232452, 34.041000, 44.824867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830353, 34.034576, 45.425575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706341, 33.752369, 45.170666>,  <32.631935, 33.583042, 45.017719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706341, 33.752369, 45.170666>,  <32.830353, 34.034576, 45.425575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706341, 33.752369, 45.170666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275652, -0.574806, 0.770464,
		-0.909889, 0.414532, -0.016273,
		-0.310028, -0.705523, -0.637276,
		32.613331, 33.540710, 44.979485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167854, 33.828083, 45.693066>,  <32.830353, 34.034576, 45.425575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167854, 33.828083, 45.693066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298103, 33.501637, 45.502098>,  <32.376251, 33.305771, 45.387516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298103, 33.501637, 45.502098>,  <32.167854, 33.828083, 45.693066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298103, 33.501637, 45.502098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211912, -0.555085, 0.804346,
		-0.921447, -0.160740, -0.353692,
		0.325620, -0.816115, -0.477419,
		32.395790, 33.256802, 45.358871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765324, 33.201351, 45.962708>,  <32.167854, 33.828083, 45.693066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765324, 33.201351, 45.962708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094971, 33.055607, 45.789234>,  <32.292759, 32.968163, 45.685150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094971, 33.055607, 45.789234>,  <31.765324, 33.201351, 45.962708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094971, 33.055607, 45.789234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043921, -0.722236, 0.690250,
		-0.564716, -0.587894, -0.579203,
		0.824116, -0.364356, -0.433680,
		32.342205, 32.946301, 45.659130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715343, 32.507221, 46.006989>,  <31.765324, 33.201351, 45.962708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715343, 32.507221, 46.006989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100925, 32.601177, 45.957005>,  <32.332275, 32.657551, 45.927013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100925, 32.601177, 45.957005>,  <31.715343, 32.507221, 46.006989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100925, 32.601177, 45.957005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228289, -0.488971, 0.841898,
		0.136653, -0.840079, -0.524970,
		0.963956, 0.234893, -0.124962,
		32.390114, 32.671646, 45.919518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035122, 31.845165, 46.141331>,  <31.715343, 32.507221, 46.006989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035122, 31.845165, 46.141331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349388, 32.091946, 46.159637>,  <32.537949, 32.240013, 46.170624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349388, 32.091946, 46.159637>,  <32.035122, 31.845165, 46.141331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349388, 32.091946, 46.159637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418709, -0.584758, 0.694795,
		0.455420, -0.526714, -0.717749,
		0.785669, 0.616952, 0.045771,
		32.585091, 32.277031, 46.173370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563469, 31.393211, 46.211407>,  <32.035122, 31.845165, 46.141331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563469, 31.393211, 46.211407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723255, 31.743217, 46.320793>,  <32.819126, 31.953220, 46.386425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723255, 31.743217, 46.320793>,  <32.563469, 31.393211, 46.211407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723255, 31.743217, 46.320793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535463, -0.464821, 0.705139,
		0.744117, -0.135247, -0.654216,
		0.399461, 0.875014, 0.273462,
		32.843094, 32.005722, 46.402832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292538, 31.413469, 46.055885>,  <32.563469, 31.393211, 46.211407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292538, 31.413469, 46.055885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200562, 31.662945, 46.354721>,  <33.145374, 31.812630, 46.534023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200562, 31.662945, 46.354721>,  <33.292538, 31.413469, 46.055885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200562, 31.662945, 46.354721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423981, -0.626777, 0.653751,
		0.875994, 0.467077, -0.120308,
		-0.229945, 0.623690, 0.747085,
		33.131577, 31.850052, 46.578846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876167, 31.291473, 46.449089>,  <33.292538, 31.413469, 46.055885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876167, 31.291473, 46.449089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583832, 31.467274, 46.657978>,  <33.408432, 31.572754, 46.783310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583832, 31.467274, 46.657978>,  <33.876167, 31.291473, 46.449089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583832, 31.467274, 46.657978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277500, -0.507688, 0.815627,
		0.623594, 0.741007, 0.249076,
		-0.730838, 0.439502, 0.522221,
		33.364582, 31.599125, 46.814644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163982, 31.616114, 47.039021>,  <33.876167, 31.291473, 46.449089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163982, 31.616114, 47.039021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777309, 31.574305, 47.132488>,  <33.545307, 31.549219, 47.188568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777309, 31.574305, 47.132488>,  <34.163982, 31.616114, 47.039021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777309, 31.574305, 47.132488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253860, -0.508726, 0.822650,
		0.032888, 0.854560, 0.518310,
		-0.966682, -0.104522, 0.233670,
		33.487305, 31.542948, 47.202591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184536, 31.762848, 47.876110>,  <34.163982, 31.616114, 47.039021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184536, 31.762848, 47.876110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830986, 31.592468, 47.798824>,  <33.618855, 31.490240, 47.752453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830986, 31.592468, 47.798824>,  <34.184536, 31.762848, 47.876110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830986, 31.592468, 47.798824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104125, -0.581918, 0.806554,
		-0.455985, 0.692775, 0.558695,
		-0.883875, -0.425951, -0.193211,
		33.565823, 31.464684, 47.740860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829533, 31.782820, 48.510559>,  <34.184536, 31.762848, 47.876110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829533, 31.782820, 48.510559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659512, 31.503736, 48.279896>,  <33.557499, 31.336287, 48.141499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659512, 31.503736, 48.279896>,  <33.829533, 31.782820, 48.510559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659512, 31.503736, 48.279896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010389, -0.640794, 0.767642,
		-0.905111, 0.320294, 0.279617,
		-0.425048, -0.697706, -0.576662,
		33.531998, 31.294424, 48.106895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151302, 31.568316, 48.852520>,  <33.829533, 31.782820, 48.510559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151302, 31.568316, 48.852520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257622, 31.269300, 48.609032>,  <33.321411, 31.089891, 48.462940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257622, 31.269300, 48.609032>,  <33.151302, 31.568316, 48.852520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257622, 31.269300, 48.609032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137450, -0.654369, 0.743578,
		-0.954180, -0.113971, -0.276677,
		0.265795, -0.747537, -0.608721,
		33.337360, 31.045040, 48.426414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632042, 31.053932, 48.572063>,  <33.151302, 31.568316, 48.852520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632042, 31.053932, 48.572063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975014, 30.871347, 48.667099>,  <33.180798, 30.761797, 48.724121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975014, 30.871347, 48.667099>,  <32.632042, 31.053932, 48.572063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975014, 30.871347, 48.667099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422073, -0.359705, 0.832146,
		-0.294382, -0.813790, -0.501084,
		0.857435, -0.456463, 0.237588,
		33.232243, 30.734409, 48.738377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544300, 30.323977, 48.776848>,  <32.632042, 31.053932, 48.572063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544300, 30.323977, 48.776848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901772, 30.387352, 48.944767>,  <33.116257, 30.425377, 49.045517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901772, 30.387352, 48.944767>,  <32.544300, 30.323977, 48.776848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901772, 30.387352, 48.944767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273094, -0.550276, 0.789061,
		0.356022, -0.819813, -0.448503,
		0.893682, 0.158440, 0.419796,
		33.169876, 30.434883, 49.070705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971989, 29.690458, 48.880146>,  <32.544300, 30.323977, 48.776848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971989, 29.690458, 48.880146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128952, 29.946810, 49.144051>,  <33.223129, 30.100620, 49.302395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128952, 29.946810, 49.144051>,  <32.971989, 29.690458, 48.880146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128952, 29.946810, 49.144051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091793, -0.741004, 0.665197,
		0.915200, -0.200466, -0.349604,
		0.392407, 0.640879, 0.659766,
		33.246674, 30.139074, 49.341980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557327, 29.356865, 49.007420>,  <32.971989, 29.690458, 48.880146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557327, 29.356865, 49.007420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424976, 29.601492, 49.294891>,  <33.345566, 29.748268, 49.467377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424976, 29.601492, 49.294891>,  <33.557327, 29.356865, 49.007420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424976, 29.601492, 49.294891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149564, -0.717968, 0.679818,
		0.931746, 0.332425, 0.146091,
		-0.330877, 0.611568, 0.718682,
		33.325714, 29.784962, 49.510498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834984, 29.118330, 49.631207>,  <33.557327, 29.356865, 49.007420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834984, 29.118330, 49.631207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555470, 29.356283, 49.790108>,  <33.387760, 29.499056, 49.885448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555470, 29.356283, 49.790108>,  <33.834984, 29.118330, 49.631207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555470, 29.356283, 49.790108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147604, -0.663302, 0.733651,
		0.699933, 0.454032, 0.551316,
		-0.698790, 0.594882, 0.397250,
		33.345833, 29.534748, 49.909283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876141, 29.097662, 50.379089>,  <33.834984, 29.118330, 49.631207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876141, 29.097662, 50.379089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495827, 29.209555, 50.325779>,  <33.267639, 29.276690, 50.293793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495827, 29.209555, 50.325779>,  <33.876141, 29.097662, 50.379089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495827, 29.209555, 50.325779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252851, -0.451816, 0.855528,
		0.179102, 0.847121, 0.500309,
		-0.950783, 0.279730, -0.133275,
		33.210590, 29.293474, 50.285797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653248, 29.420200, 51.055885>,  <33.876141, 29.097662, 50.379089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653248, 29.420200, 51.055885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404701, 29.209629, 50.823753>,  <33.255573, 29.083286, 50.684475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404701, 29.209629, 50.823753>,  <33.653248, 29.420200, 51.055885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404701, 29.209629, 50.823753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238887, -0.578116, 0.780201,
		-0.746217, 0.623422, 0.233464,
		-0.621364, -0.526428, -0.580328,
		33.218292, 29.051701, 50.649654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137245, 29.766623, 50.562664>,  <33.653248, 29.420200, 51.055885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137245, 29.766623, 50.562664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251175, 29.394905, 50.656715>,  <34.319534, 29.171875, 50.713146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251175, 29.394905, 50.656715>,  <34.137245, 29.766623, 50.562664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251175, 29.394905, 50.656715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397709, -0.108620, -0.911059,
		0.872181, 0.353009, 0.338650,
		0.284828, -0.929293, 0.235132,
		34.336624, 29.116117, 50.727257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788780, 29.655836, 50.199341>,  <34.137245, 29.766623, 50.562664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788780, 29.655836, 50.199341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634056, 29.295374, 50.277622>,  <34.541222, 29.079096, 50.324593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634056, 29.295374, 50.277622>,  <34.788780, 29.655836, 50.199341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634056, 29.295374, 50.277622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244351, -0.304799, -0.920538,
		0.889198, -0.308249, 0.338096,
		-0.386806, -0.901155, 0.195706,
		34.518013, 29.025028, 50.336334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239388, 29.065664, 49.974377>,  <34.788780, 29.655836, 50.199341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239388, 29.065664, 49.974377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848396, 28.981297, 49.977215>,  <34.613800, 28.930676, 49.978920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848396, 28.981297, 49.977215>,  <35.239388, 29.065664, 49.974377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848396, 28.981297, 49.977215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074699, -0.377250, -0.923094,
		0.197376, -0.901773, 0.384509,
		-0.977478, -0.210919, 0.007098,
		34.555153, 28.918020, 49.979343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207119, 28.572298, 49.542786>,  <35.239388, 29.065664, 49.974377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207119, 28.572298, 49.542786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826878, 28.691629, 49.577084>,  <34.598732, 28.763227, 49.597660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826878, 28.691629, 49.577084>,  <35.207119, 28.572298, 49.542786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826878, 28.691629, 49.577084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100535, -0.034567, -0.994333,
		-0.293673, -0.953837, 0.062852,
		-0.950604, 0.298328, 0.085743,
		34.541695, 28.781128, 49.602806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820160, 27.961775, 49.333675>,  <35.207119, 28.572298, 49.542786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820160, 27.961775, 49.333675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675472, 28.330362, 49.277020>,  <34.588661, 28.551514, 49.243027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675472, 28.330362, 49.277020>,  <34.820160, 27.961775, 49.333675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675472, 28.330362, 49.277020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074730, -0.180095, -0.980806,
		-0.929289, -0.344187, 0.134004,
		-0.361715, 0.921466, -0.141639,
		34.566959, 28.606802, 49.234528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121826, 27.936361, 49.073311>,  <34.820160, 27.961775, 49.333675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121826, 27.936361, 49.073311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270428, 28.290058, 48.960098>,  <34.359589, 28.502275, 48.892170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270428, 28.290058, 48.960098>,  <34.121826, 27.936361, 49.073311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270428, 28.290058, 48.960098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140126, -0.247956, -0.958584,
		-0.917797, 0.395775, 0.031789,
		0.371501, 0.884240, -0.283032,
		34.381878, 28.555330, 48.875187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609291, 28.196115, 48.616383>,  <34.121826, 27.936361, 49.073311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609291, 28.196115, 48.616383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964153, 28.365368, 48.542717>,  <34.177071, 28.466919, 48.498516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964153, 28.365368, 48.542717>,  <33.609291, 28.196115, 48.616383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964153, 28.365368, 48.542717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116344, -0.181107, -0.976557,
		-0.446567, 0.887783, -0.111441,
		0.887154, 0.423133, -0.184164,
		34.230301, 28.492308, 48.487469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507034, 28.851044, 48.120098>,  <33.609291, 28.196115, 48.616383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507034, 28.851044, 48.120098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884975, 28.735846, 48.057728>,  <34.111740, 28.666727, 48.020306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884975, 28.735846, 48.057728>,  <33.507034, 28.851044, 48.120098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884975, 28.735846, 48.057728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159132, 0.012388, -0.987180,
		0.286233, 0.957552, -0.034124,
		0.944853, -0.287993, -0.155923,
		34.168430, 28.649448, 48.010952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607582, 29.017321, 47.513123>,  <33.507034, 28.851044, 48.120098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607582, 29.017321, 47.513123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935596, 28.794014, 47.563538>,  <34.132404, 28.660030, 47.593788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935596, 28.794014, 47.563538>,  <33.607582, 29.017321, 47.513123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935596, 28.794014, 47.563538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062881, -0.131002, -0.989386,
		0.568851, 0.819255, -0.072322,
		0.820034, -0.558265, 0.126036,
		34.181606, 28.626535, 47.601349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131577, 29.204782, 47.020096>,  <33.607582, 29.017321, 47.513123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131577, 29.204782, 47.020096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205379, 28.823601, 47.116295>,  <34.249660, 28.594893, 47.174015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205379, 28.823601, 47.116295>,  <34.131577, 29.204782, 47.020096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205379, 28.823601, 47.116295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001212, -0.244919, -0.969543,
		0.982831, 0.178595, -0.046344,
		0.184506, -0.952953, 0.240497,
		34.260731, 28.537716, 47.188442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556782, 29.001690, 46.542519>,  <34.131577, 29.204782, 47.020096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556782, 29.001690, 46.542519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401180, 28.661894, 46.685089>,  <34.307819, 28.458015, 46.770630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401180, 28.661894, 46.685089>,  <34.556782, 29.001690, 46.542519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401180, 28.661894, 46.685089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123745, -0.335209, -0.933982,
		0.912887, -0.407429, 0.025278,
		-0.389004, -0.849492, 0.356425,
		34.284477, 28.407045, 46.792015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994938, 28.458410, 46.235828>,  <34.556782, 29.001690, 46.542519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994938, 28.458410, 46.235828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645206, 28.299082, 46.346748>,  <34.435368, 28.203484, 46.413300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645206, 28.299082, 46.346748>,  <34.994938, 28.458410, 46.235828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645206, 28.299082, 46.346748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113801, -0.387167, -0.914959,
		0.471810, -0.831529, 0.293180,
		-0.874325, -0.398323, 0.277299,
		34.382908, 28.179585, 46.429939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015877, 27.808647, 45.886608>,  <34.994938, 28.458410, 46.235828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015877, 27.808647, 45.886608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633545, 27.857220, 45.993679>,  <34.404148, 27.886362, 46.057922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633545, 27.857220, 45.993679>,  <35.015877, 27.808647, 45.886608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633545, 27.857220, 45.993679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292761, -0.311969, -0.903862,
		-0.026247, -0.942300, 0.333738,
		-0.955826, 0.121429, 0.267680,
		34.346798, 27.893648, 46.073982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689209, 27.176292, 45.802509>,  <35.015877, 27.808647, 45.886608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689209, 27.176292, 45.802509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416855, 27.467913, 45.774551>,  <34.253445, 27.642885, 45.757778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416855, 27.467913, 45.774551>,  <34.689209, 27.176292, 45.802509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416855, 27.467913, 45.774551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209036, -0.284910, -0.935484,
		-0.701927, -0.622345, 0.346388,
		-0.680883, 0.729049, -0.069893,
		34.212589, 27.686626, 45.753582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215069, 26.899570, 45.486084>,  <34.689209, 27.176292, 45.802509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215069, 26.899570, 45.486084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143318, 27.286507, 45.414448>,  <34.100266, 27.518669, 45.371468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143318, 27.286507, 45.414448>,  <34.215069, 26.899570, 45.486084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143318, 27.286507, 45.414448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346209, -0.232468, -0.908900,
		-0.920849, -0.101037, 0.376602,
		-0.179380, 0.967342, -0.179088,
		34.089504, 27.576710, 45.360722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656689, 26.884773, 45.073914>,  <34.215069, 26.899570, 45.486084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656689, 26.884773, 45.073914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775352, 27.261612, 45.011372>,  <33.846550, 27.487715, 44.973846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775352, 27.261612, 45.011372>,  <33.656689, 26.884773, 45.073914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775352, 27.261612, 45.011372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423528, -0.016949, -0.905724,
		-0.855931, 0.334908, 0.393977,
		0.296657, 0.942098, -0.156350,
		33.864349, 27.544241, 44.964466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157078, 27.174360, 44.660622>,  <33.656689, 26.884773, 45.073914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157078, 27.174360, 44.660622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446877, 27.447382, 44.622189>,  <33.620754, 27.611195, 44.599129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446877, 27.447382, 44.622189>,  <33.157078, 27.174360, 44.660622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446877, 27.447382, 44.622189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403755, 0.307258, -0.861728,
		-0.558652, 0.663110, 0.498190,
		0.724493, 0.682553, -0.096084,
		33.664223, 27.652147, 44.593365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870857, 27.866087, 44.481224>,  <33.157078, 27.174360, 44.660622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870857, 27.866087, 44.481224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251835, 27.899429, 44.363987>,  <33.480423, 27.919434, 44.293644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251835, 27.899429, 44.363987>,  <32.870857, 27.866087, 44.481224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251835, 27.899429, 44.363987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298931, 0.442140, -0.845667,
		0.059099, 0.893065, 0.446030,
		0.952443, 0.083354, -0.293095,
		33.537567, 27.924435, 44.276058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038719, 28.576897, 44.358250>,  <32.870857, 27.866087, 44.481224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038719, 28.576897, 44.358250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317234, 28.366230, 44.163189>,  <33.484344, 28.239830, 44.046154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317234, 28.366230, 44.163189>,  <33.038719, 28.576897, 44.358250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317234, 28.366230, 44.163189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256061, 0.452431, -0.854247,
		0.670533, 0.719671, 0.180163,
		0.696289, -0.526669, -0.487650,
		33.526119, 28.208229, 44.016895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407230, 29.065847, 43.899639>,  <33.038719, 28.576897, 44.358250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407230, 29.065847, 43.899639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435009, 28.694595, 43.753349>,  <33.451675, 28.471844, 43.665577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435009, 28.694595, 43.753349>,  <33.407230, 29.065847, 43.899639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435009, 28.694595, 43.753349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319664, 0.326571, -0.889475,
		0.944983, 0.178676, -0.274011,
		0.069444, -0.928130, -0.365720,
		33.455841, 28.416157, 43.643635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848751, 29.258753, 43.431499>,  <33.407230, 29.065847, 43.899639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848751, 29.258753, 43.431499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687866, 28.910908, 43.316956>,  <33.591335, 28.702200, 43.248230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687866, 28.910908, 43.316956>,  <33.848751, 29.258753, 43.431499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687866, 28.910908, 43.316956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236268, 0.400767, -0.885191,
		0.884537, -0.288373, -0.366653,
		-0.402208, -0.869613, -0.286360,
		33.567204, 28.650024, 43.231049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240810, 29.048992, 42.819149>,  <33.848751, 29.258753, 43.431499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240810, 29.048992, 42.819149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902737, 28.835278, 42.813435>,  <33.699894, 28.707048, 42.810005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902737, 28.835278, 42.813435>,  <34.240810, 29.048992, 42.819149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902737, 28.835278, 42.813435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112459, 0.203904, -0.972510,
		0.522514, -0.820341, -0.232422,
		-0.845182, -0.534288, -0.014288,
		33.649181, 28.674992, 42.809147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269535, 28.929001, 42.166618>,  <34.240810, 29.048992, 42.819149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269535, 28.929001, 42.166618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901039, 28.799002, 42.252125>,  <33.679943, 28.721003, 42.303429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901039, 28.799002, 42.252125>,  <34.269535, 28.929001, 42.166618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901039, 28.799002, 42.252125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300791, 0.246670, -0.921238,
		0.246670, -0.912979, -0.324998,
		0.921238, 0.324998, -0.213770,
		33.624668, 28.701502, 42.316257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070763, 28.288095, 41.666744>,  <34.269535, 28.929001, 42.166618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070763, 28.288095, 41.666744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739315, 28.463081, 41.806469>,  <33.540447, 28.568073, 41.890305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739315, 28.463081, 41.806469>,  <34.070763, 28.288095, 41.666744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739315, 28.463081, 41.806469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351645, 0.078780, -0.932812,
		-0.435593, -0.895777, 0.088555,
		-0.828616, 0.437467, 0.349312,
		33.490730, 28.594320, 41.911263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525154, 27.973841, 41.336029>,  <34.070763, 28.288095, 41.666744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525154, 27.973841, 41.336029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449047, 28.347219, 41.457668>,  <33.403385, 28.571247, 41.530651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449047, 28.347219, 41.457668>,  <33.525154, 27.973841, 41.336029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449047, 28.347219, 41.457668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162929, 0.275435, -0.947412,
		-0.968119, -0.229803, 0.099681,
		-0.190263, 0.933449, 0.304095,
		33.391968, 28.627254, 41.548897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132847, 28.275518, 40.797741>,  <33.525154, 27.973841, 41.336029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132847, 28.275518, 40.797741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157246, 28.599955, 41.030434>,  <33.171886, 28.794617, 41.170048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157246, 28.599955, 41.030434>,  <33.132847, 28.275518, 40.797741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157246, 28.599955, 41.030434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124514, 0.584447, -0.801822,
		-0.990341, -0.023524, 0.136642,
		0.060998, 0.811091, 0.581731,
		33.175545, 28.843283, 41.204952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579014, 28.642952, 40.677063>,  <33.132847, 28.275518, 40.797741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579014, 28.642952, 40.677063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848763, 28.898100, 40.825844>,  <33.010612, 29.051189, 40.915112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848763, 28.898100, 40.825844>,  <32.579014, 28.642952, 40.677063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848763, 28.898100, 40.825844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052778, 0.544083, -0.837370,
		-0.736507, 0.545064, 0.400577,
		0.674368, 0.637871, 0.371953,
		33.051071, 29.089460, 40.937431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290798, 29.348232, 40.537144>,  <32.579014, 28.642952, 40.677063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290798, 29.348232, 40.537144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676308, 29.417192, 40.618546>,  <32.907616, 29.458569, 40.667389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676308, 29.417192, 40.618546>,  <32.290798, 29.348232, 40.537144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676308, 29.417192, 40.618546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014161, 0.728860, -0.684516,
		-0.266338, 0.662602, 0.700016,
		0.963776, 0.172399, 0.203506,
		32.965439, 29.468912, 40.679596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292534, 30.066298, 40.659393>,  <32.290798, 29.348232, 40.537144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292534, 30.066298, 40.659393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648602, 29.926838, 40.542057>,  <32.862240, 29.843163, 40.471657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648602, 29.926838, 40.542057>,  <32.292534, 30.066298, 40.659393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648602, 29.926838, 40.542057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003995, 0.649749, -0.760138,
		0.455617, 0.675478, 0.579778,
		0.890167, -0.348648, -0.293338,
		32.915653, 29.822243, 40.454056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794674, 30.625193, 40.523846>,  <32.292534, 30.066298, 40.659393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794674, 30.625193, 40.523846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937435, 30.313967, 40.317066>,  <33.023090, 30.127232, 40.192997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937435, 30.313967, 40.317066>,  <32.794674, 30.625193, 40.523846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937435, 30.313967, 40.317066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018038, 0.559030, -0.828951,
		0.933967, 0.286531, 0.213554,
		0.356903, -0.778066, -0.516947,
		33.044506, 30.080547, 40.161983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151649, 30.939154, 40.103455>,  <32.794674, 30.625193, 40.523846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151649, 30.939154, 40.103455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182518, 30.597483, 39.897766>,  <33.201038, 30.392481, 39.774353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182518, 30.597483, 39.897766>,  <33.151649, 30.939154, 40.103455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182518, 30.597483, 39.897766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242605, 0.516348, -0.821296,
		0.967051, -0.061371, 0.247075,
		0.077173, -0.854177, -0.514224,
		33.205669, 30.341230, 39.743500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732113, 31.066521, 39.730000>,  <33.151649, 30.939154, 40.103455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732113, 31.066521, 39.730000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517422, 30.778961, 39.553318>,  <33.388607, 30.606426, 39.447308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517422, 30.778961, 39.553318>,  <33.732113, 31.066521, 39.730000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517422, 30.778961, 39.553318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144044, 0.437747, -0.887485,
		0.831366, -0.539967, -0.131400,
		-0.536733, -0.718898, -0.441707,
		33.356403, 30.563292, 39.420807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008362, 30.902979, 39.078438>,  <33.732113, 31.066521, 39.730000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008362, 30.902979, 39.078438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652477, 30.735949, 39.004639>,  <33.438946, 30.635731, 38.960361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652477, 30.735949, 39.004639>,  <34.008362, 30.902979, 39.078438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652477, 30.735949, 39.004639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082782, 0.249859, -0.964737,
		0.448950, -0.873613, -0.187735,
		-0.889714, -0.417577, -0.184493,
		33.385563, 30.610676, 38.949291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072124, 30.572414, 38.426319>,  <34.008362, 30.902979, 39.078438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072124, 30.572414, 38.426319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679939, 30.639006, 38.468235>,  <33.444630, 30.678961, 38.493385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679939, 30.639006, 38.468235>,  <34.072124, 30.572414, 38.426319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679939, 30.639006, 38.468235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023458, 0.429953, -0.902546,
		-0.195308, -0.887370, -0.417647,
		-0.980461, 0.166478, 0.104789,
		33.385799, 30.688950, 38.499672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718288, 30.274164, 37.869278>,  <34.072124, 30.572414, 38.426319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718288, 30.274164, 37.869278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471409, 30.550936, 38.019104>,  <33.323280, 30.716999, 38.108997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471409, 30.550936, 38.019104>,  <33.718288, 30.274164, 37.869278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471409, 30.550936, 38.019104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054136, 0.437582, -0.897547,
		-0.784940, -0.574245, -0.232618,
		-0.617202, 0.691928, 0.374563,
		33.286247, 30.758514, 38.131474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152298, 30.369707, 37.368523>,  <33.718288, 30.274164, 37.869278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152298, 30.369707, 37.368523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145847, 30.699949, 37.594131>,  <33.141979, 30.898094, 37.729496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145847, 30.699949, 37.594131>,  <33.152298, 30.369707, 37.368523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145847, 30.699949, 37.594131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172893, 0.553292, -0.814847,
		-0.984809, -0.110653, 0.133820,
		-0.016124, 0.825605, 0.564018,
		33.141010, 30.947630, 37.763336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517590, 30.710535, 37.267315>,  <33.152298, 30.369707, 37.368523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517590, 30.710535, 37.267315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797173, 30.966814, 37.394417>,  <32.964920, 31.120581, 37.470676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797173, 30.966814, 37.394417>,  <32.517590, 30.710535, 37.267315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797173, 30.966814, 37.394417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112197, 0.537041, -0.836061,
		-0.706309, 0.548719, 0.447252,
		0.698956, 0.640698, 0.317752,
		33.006859, 31.159023, 37.489742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182610, 31.294170, 37.132187>,  <32.517590, 30.710535, 37.267315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182610, 31.294170, 37.132187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570122, 31.380768, 37.180523>,  <32.802628, 31.432726, 37.209526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570122, 31.380768, 37.180523>,  <32.182610, 31.294170, 37.132187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570122, 31.380768, 37.180523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016549, 0.429836, -0.902755,
		-0.247384, 0.876567, 0.412832,
		0.968776, 0.216495, 0.120841,
		32.860756, 31.445717, 37.216774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215153, 31.998241, 36.868484>,  <32.182610, 31.294170, 37.132187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215153, 31.998241, 36.868484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595390, 31.875202, 36.851711>,  <32.823532, 31.801378, 36.841648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595390, 31.875202, 36.851711>,  <32.215153, 31.998241, 36.868484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595390, 31.875202, 36.851711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163883, 0.611946, -0.773734,
		0.263662, 0.728632, 0.632121,
		0.950592, -0.307598, -0.041936,
		32.880569, 31.782923, 36.839130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613701, 32.617535, 36.773804>,  <32.215153, 31.998241, 36.868484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613701, 32.617535, 36.773804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837776, 32.298714, 36.683563>,  <32.972221, 32.107422, 36.629417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837776, 32.298714, 36.683563>,  <32.613701, 32.617535, 36.773804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837776, 32.298714, 36.683563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268057, 0.432114, -0.861059,
		0.783796, 0.421880, 0.455720,
		0.560187, -0.797054, -0.225601,
		33.005833, 32.059597, 36.615883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167252, 32.877563, 36.493431>,  <32.613701, 32.617535, 36.773804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167252, 32.877563, 36.493431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215908, 32.504070, 36.358761>,  <33.245102, 32.279976, 36.277958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215908, 32.504070, 36.358761>,  <33.167252, 32.877563, 36.493431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215908, 32.504070, 36.358761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572093, 0.343141, -0.744959,
		0.811119, -0.101995, 0.575920,
		0.121640, -0.933730, -0.336679,
		33.252399, 32.223953, 36.257755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853252, 32.712368, 36.276218>,  <33.167252, 32.877563, 36.493431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853252, 32.712368, 36.276218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651222, 32.421787, 36.089813>,  <33.530003, 32.247440, 35.977970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651222, 32.421787, 36.089813>,  <33.853252, 32.712368, 36.276218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651222, 32.421787, 36.089813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548360, 0.146848, -0.823248,
		0.666482, -0.671345, 0.324187,
		-0.505078, -0.726451, -0.466010,
		33.499699, 32.203854, 35.950008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407295, 32.352264, 35.887051>,  <33.853252, 32.712368, 36.276218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407295, 32.352264, 35.887051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057568, 32.250126, 35.721951>,  <33.847733, 32.188843, 35.622890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057568, 32.250126, 35.721951>,  <34.407295, 32.352264, 35.887051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057568, 32.250126, 35.721951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435630, -0.037911, -0.899327,
		0.213994, -0.966105, 0.144384,
		-0.874319, -0.255349, -0.412751,
		33.795273, 32.173523, 35.598125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681137, 32.405903, 35.126617>,  <34.407295, 32.352264, 35.887051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681137, 32.405903, 35.126617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286026, 32.425137, 35.067318>,  <34.048958, 32.436676, 35.031738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286026, 32.425137, 35.067318>,  <34.681137, 32.405903, 35.126617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286026, 32.425137, 35.067318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154979, 0.403714, -0.901663,
		0.016494, -0.913621, -0.406233,
		-0.987780, 0.048085, -0.148250,
		33.989693, 32.439564, 35.022842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749393, 32.974632, 34.649513>,  <34.681137, 32.405903, 35.126617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749393, 32.974632, 34.649513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110653, 33.107220, 34.540367>,  <35.327408, 33.186771, 34.474880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110653, 33.107220, 34.540367>,  <34.749393, 32.974632, 34.649513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110653, 33.107220, 34.540367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429152, -0.715411, 0.551377,
		-0.012448, -0.615075, -0.788370,
		0.903147, 0.331467, -0.272866,
		35.381596, 33.206661, 34.458508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115517, 32.480251, 34.387604>,  <34.749393, 32.974632, 34.649513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115517, 32.480251, 34.387604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381531, 32.731091, 34.549824>,  <35.541142, 32.881592, 34.647156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381531, 32.731091, 34.549824>,  <35.115517, 32.480251, 34.387604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381531, 32.731091, 34.549824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345108, -0.739647, 0.577775,
		0.662287, -0.244283, -0.708309,
		0.665039, 0.627095, 0.405554,
		35.581043, 32.919220, 34.671490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752502, 32.100460, 34.509769>,  <35.115517, 32.480251, 34.387604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752502, 32.100460, 34.509769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802944, 32.414726, 34.752033>,  <35.833210, 32.603287, 34.897392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802944, 32.414726, 34.752033>,  <35.752502, 32.100460, 34.509769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802944, 32.414726, 34.752033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519517, -0.572422, 0.634378,
		0.845104, 0.234655, -0.480350,
		0.126103, 0.785665, 0.605663,
		35.840775, 32.650425, 34.933731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228806, 31.942059, 34.939865>,  <35.752502, 32.100460, 34.509769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228806, 31.942059, 34.939865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159851, 32.270882, 35.156937>,  <36.118477, 32.468178, 35.287178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159851, 32.270882, 35.156937>,  <36.228806, 31.942059, 34.939865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159851, 32.270882, 35.156937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339552, -0.467565, 0.816142,
		0.924655, 0.324962, -0.198528,
		-0.172391, 0.822060, 0.542677,
		36.108135, 32.517498, 35.319740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873726, 32.171631, 35.383976>,  <36.228806, 31.942059, 34.939865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873726, 32.171631, 35.383976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560562, 32.322865, 35.581604>,  <36.372662, 32.413605, 35.700180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560562, 32.322865, 35.581604>,  <36.873726, 32.171631, 35.383976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560562, 32.322865, 35.581604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362455, -0.368257, 0.856162,
		0.505642, 0.849377, 0.151276,
		-0.782913, 0.378081, 0.494067,
		36.325687, 32.436287, 35.729824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156776, 32.424458, 36.079887>,  <36.873726, 32.171631, 35.383976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156776, 32.424458, 36.079887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760567, 32.376064, 36.105904>,  <36.522842, 32.347027, 36.121513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760567, 32.376064, 36.105904>,  <37.156776, 32.424458, 36.079887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760567, 32.376064, 36.105904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118843, -0.517349, 0.847482,
		-0.068885, 0.847179, 0.526824,
		-0.990521, -0.120987, 0.065043,
		36.463409, 32.339767, 36.125416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052311, 32.607960, 36.718670>,  <37.156776, 32.424458, 36.079887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052311, 32.607960, 36.718670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721848, 32.409153, 36.612514>,  <36.523567, 32.289867, 36.548820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721848, 32.409153, 36.612514>,  <37.052311, 32.607960, 36.718670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721848, 32.409153, 36.612514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000639, -0.471844, 0.881682,
		-0.563432, 0.728243, 0.390137,
		-0.826163, -0.497016, -0.265387,
		36.473999, 32.260048, 36.532898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665924, 32.637562, 37.313297>,  <37.052311, 32.607960, 36.718670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665924, 32.637562, 37.313297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477783, 32.338734, 37.125404>,  <36.364899, 32.159435, 37.012669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477783, 32.338734, 37.125404>,  <36.665924, 32.637562, 37.313297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477783, 32.338734, 37.125404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031040, -0.517956, 0.854844,
		-0.881931, 0.416661, 0.220434,
		-0.470355, -0.747071, -0.469734,
		36.336678, 32.114613, 36.984486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158192, 32.341415, 37.775452>,  <36.665924, 32.637562, 37.313297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158192, 32.341415, 37.775452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202732, 32.036301, 37.520657>,  <36.229454, 31.853231, 37.367779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202732, 32.036301, 37.520657>,  <36.158192, 32.341415, 37.775452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202732, 32.036301, 37.520657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130386, -0.646647, 0.751563,
		-0.985191, -0.000629, -0.171459,
		0.111347, -0.762789, -0.636989,
		36.236137, 31.807465, 37.329559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628544, 31.814907, 37.920876>,  <36.158192, 32.341415, 37.775452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628544, 31.814907, 37.920876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918427, 31.611166, 37.735249>,  <36.092358, 31.488922, 37.623871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918427, 31.611166, 37.735249>,  <35.628544, 31.814907, 37.920876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918427, 31.611166, 37.735249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114610, -0.753206, 0.647722,
		-0.679459, -0.416222, -0.604231,
		0.724707, -0.509352, -0.464069,
		36.135838, 31.458361, 37.596027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389999, 31.117218, 37.917122>,  <35.628544, 31.814907, 37.920876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389999, 31.117218, 37.917122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780418, 31.071875, 37.842846>,  <36.014671, 31.044668, 37.798279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780418, 31.071875, 37.842846>,  <35.389999, 31.117218, 37.917122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780418, 31.071875, 37.842846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011315, -0.825916, 0.563680,
		-0.217262, -0.552280, -0.804851,
		0.976048, -0.113359, -0.185689,
		36.073235, 31.037867, 37.787140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545109, 30.357836, 37.626392>,  <35.389999, 31.117218, 37.917122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545109, 30.357836, 37.626392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887459, 30.487947, 37.787228>,  <36.092869, 30.566015, 37.883728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887459, 30.487947, 37.787228>,  <35.545109, 30.357836, 37.626392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887459, 30.487947, 37.787228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033461, -0.810647, 0.584578,
		0.516100, -0.486871, -0.704697,
		0.855874, 0.325281, 0.402084,
		36.144222, 30.585531, 37.907852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912174, 29.697662, 37.747715>,  <35.545109, 30.357836, 37.626392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912174, 29.697662, 37.747715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077545, 29.985584, 37.970768>,  <36.176769, 30.158339, 38.104599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077545, 29.985584, 37.970768>,  <35.912174, 29.697662, 37.747715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077545, 29.985584, 37.970768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226284, -0.674432, 0.702806,
		0.881970, -0.164377, -0.441711,
		0.413429, 0.719806, 0.557633,
		36.201572, 30.201527, 38.138058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531170, 29.398859, 37.905411>,  <35.912174, 29.697662, 37.747715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531170, 29.398859, 37.905411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455341, 29.685986, 38.173382>,  <36.409843, 29.858261, 38.334164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455341, 29.685986, 38.173382>,  <36.531170, 29.398859, 37.905411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455341, 29.685986, 38.173382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047257, -0.688180, 0.723999,
		0.980730, 0.105589, 0.164378,
		-0.189568, 0.717815, 0.669929,
		36.398472, 29.901331, 38.374359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016266, 29.193205, 38.440956>,  <36.531170, 29.398859, 37.905411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016266, 29.193205, 38.440956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730274, 29.426313, 38.595455>,  <36.558681, 29.566177, 38.688156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730274, 29.426313, 38.595455>,  <37.016266, 29.193205, 38.440956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730274, 29.426313, 38.595455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026720, -0.529275, 0.848029,
		0.698637, 0.616642, 0.362848,
		-0.714977, 0.582769, 0.386248,
		36.515781, 29.601145, 38.711330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213669, 29.354944, 39.133041>,  <37.016266, 29.193205, 38.440956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213669, 29.354944, 39.133041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819401, 29.422014, 39.125690>,  <36.582840, 29.462255, 39.121281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819401, 29.422014, 39.125690>,  <37.213669, 29.354944, 39.133041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819401, 29.422014, 39.125690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098250, -0.482151, 0.870562,
		0.137112, 0.859893, 0.491716,
		-0.985671, 0.167675, -0.018375,
		36.523701, 29.472317, 39.120178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040577, 29.631804, 39.822788>,  <37.213669, 29.354944, 39.133041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040577, 29.631804, 39.822788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718002, 29.463848, 39.656242>,  <36.524460, 29.363075, 39.556316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718002, 29.463848, 39.656242>,  <37.040577, 29.631804, 39.822788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718002, 29.463848, 39.656242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164088, -0.517566, 0.839762,
		-0.568104, 0.745532, 0.348483,
		-0.806432, -0.419891, -0.416364,
		36.476074, 29.337881, 39.531334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548748, 29.759129, 40.347393>,  <37.040577, 29.631804, 39.822788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548748, 29.759129, 40.347393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424732, 29.451746, 40.123482>,  <36.350323, 29.267317, 39.989136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424732, 29.451746, 40.123482>,  <36.548748, 29.759129, 40.347393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424732, 29.451746, 40.123482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320501, -0.469844, 0.822512,
		-0.895072, 0.434421, -0.100620,
		-0.310041, -0.768456, -0.559776,
		36.331718, 29.221209, 39.955547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873837, 29.584694, 40.610912>,  <36.548748, 29.759129, 40.347393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873837, 29.584694, 40.610912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937695, 29.263453, 40.381290>,  <35.976009, 29.070707, 40.243515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937695, 29.263453, 40.381290>,  <35.873837, 29.584694, 40.610912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937695, 29.263453, 40.381290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450065, -0.576774, 0.681743,
		-0.878610, 0.149528, -0.453525,
		0.159642, -0.803102, -0.574057,
		35.985588, 29.022522, 40.209072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275856, 29.195833, 40.520267>,  <35.873837, 29.584694, 40.610912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275856, 29.195833, 40.520267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595840, 28.955969, 40.511642>,  <35.787830, 28.812050, 40.506466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595840, 28.955969, 40.511642>,  <35.275856, 29.195833, 40.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595840, 28.955969, 40.511642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300438, -0.431384, 0.850673,
		-0.519419, -0.674028, -0.525252,
		0.799963, -0.599662, -0.021565,
		35.835831, 28.776072, 40.505173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041233, 28.731627, 40.878754>,  <35.275856, 29.195833, 40.520267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041233, 28.731627, 40.878754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414814, 28.589615, 40.862289>,  <35.638962, 28.504408, 40.852413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414814, 28.589615, 40.862289>,  <35.041233, 28.731627, 40.878754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414814, 28.589615, 40.862289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185490, -0.579915, 0.793279,
		-0.305506, -0.733248, -0.607465,
		0.933948, -0.355031, -0.041157,
		35.695000, 28.483105, 40.849941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039684, 28.027346, 40.901882>,  <35.041233, 28.731627, 40.878754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039684, 28.027346, 40.901882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397091, 28.135355, 41.045395>,  <35.611534, 28.200161, 41.131504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397091, 28.135355, 41.045395>,  <35.039684, 28.027346, 40.901882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397091, 28.135355, 41.045395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138444, -0.594419, 0.792149,
		0.427164, -0.757466, -0.493738,
		0.893512, 0.270022, 0.358781,
		35.665146, 28.216362, 41.153030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535240, 27.488031, 41.199013>,  <35.039684, 28.027346, 40.901882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535240, 27.488031, 41.199013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666191, 27.826998, 41.366203>,  <35.744762, 28.030378, 41.466518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666191, 27.826998, 41.366203>,  <35.535240, 27.488031, 41.199013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666191, 27.826998, 41.366203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036504, -0.453368, 0.890576,
		0.944188, -0.276298, -0.179358,
		0.327379, 0.847418, 0.417978,
		35.764404, 28.081223, 41.491596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183464, 27.350500, 41.524410>,  <35.535240, 27.488031, 41.199013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183464, 27.350500, 41.524410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038391, 27.665350, 41.723969>,  <35.951347, 27.854259, 41.843704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038391, 27.665350, 41.723969>,  <36.183464, 27.350500, 41.524410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038391, 27.665350, 41.723969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263715, -0.426776, 0.865053,
		0.893821, 0.445305, -0.052793,
		-0.362682, 0.787125, 0.498895,
		35.929588, 27.901487, 41.873638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689236, 27.649271, 41.973061>,  <36.183464, 27.350500, 41.524410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689236, 27.649271, 41.973061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342648, 27.748447, 42.146381>,  <36.134693, 27.807953, 42.250374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342648, 27.748447, 42.146381>,  <36.689236, 27.649271, 41.973061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342648, 27.748447, 42.146381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366051, -0.274637, 0.889146,
		0.339454, 0.929032, 0.147208,
		-0.866474, 0.247939, 0.433300,
		36.082706, 27.822828, 42.276371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848885, 27.905502, 42.595509>,  <36.689236, 27.649271, 41.973061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848885, 27.905502, 42.595509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459309, 27.873346, 42.680344>,  <36.225563, 27.854053, 42.731247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459309, 27.873346, 42.680344>,  <36.848885, 27.905502, 42.595509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459309, 27.873346, 42.680344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224306, -0.202701, 0.953205,
		-0.033638, 0.975935, 0.215450,
		-0.973938, -0.080391, 0.212090,
		36.167126, 27.849230, 42.743969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875099, 28.262449, 43.224957>,  <36.848885, 27.905502, 42.595509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875099, 28.262449, 43.224957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531956, 28.057493, 43.209293>,  <36.326069, 27.934519, 43.199894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531956, 28.057493, 43.209293>,  <36.875099, 28.262449, 43.224957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531956, 28.057493, 43.209293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152365, -0.326383, 0.932877,
		-0.490778, 0.794311, 0.358061,
		-0.857859, -0.512391, -0.039156,
		36.274597, 27.903776, 43.197548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514324, 28.518692, 43.776581>,  <36.875099, 28.262449, 43.224957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514324, 28.518692, 43.776581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321640, 28.177822, 43.694847>,  <36.206028, 27.973299, 43.645805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321640, 28.177822, 43.694847>,  <36.514324, 28.518692, 43.776581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321640, 28.177822, 43.694847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115545, -0.292897, 0.949137,
		-0.868680, 0.433598, 0.239556,
		-0.481709, -0.852176, -0.204333,
		36.177128, 27.922169, 43.633549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122143, 28.506601, 44.351662>,  <36.514324, 28.518692, 43.776581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122143, 28.506601, 44.351662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153500, 28.142149, 44.189823>,  <36.172314, 27.923477, 44.092720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153500, 28.142149, 44.189823>,  <36.122143, 28.506601, 44.351662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153500, 28.142149, 44.189823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052115, -0.401544, 0.914356,
		-0.995559, -0.092765, 0.016005,
		0.078394, -0.911129, -0.404595,
		36.177017, 27.868811, 44.068443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713802, 28.072569, 44.811634>,  <36.122143, 28.506601, 44.351662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713802, 28.072569, 44.811634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952194, 27.824247, 44.607906>,  <36.095230, 27.675255, 44.485668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952194, 27.824247, 44.607906>,  <35.713802, 28.072569, 44.811634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952194, 27.824247, 44.607906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165042, -0.526029, 0.834299,
		-0.785852, -0.581288, -0.211046,
		0.595984, -0.620804, -0.509318,
		36.130989, 27.638006, 44.455112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493401, 27.406929, 45.051441>,  <35.713802, 28.072569, 44.811634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493401, 27.406929, 45.051441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857990, 27.379045, 44.889275>,  <36.076744, 27.362314, 44.791973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857990, 27.379045, 44.889275>,  <35.493401, 27.406929, 45.051441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857990, 27.379045, 44.889275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313627, -0.519987, 0.794513,
		-0.266197, -0.851325, -0.452090,
		0.911470, -0.069710, -0.405417,
		36.131432, 27.358133, 44.767651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666019, 26.726976, 45.137932>,  <35.493401, 27.406929, 45.051441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666019, 26.726976, 45.137932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009808, 26.925943, 45.090782>,  <36.216080, 27.045322, 45.062492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009808, 26.925943, 45.090782>,  <35.666019, 26.726976, 45.137932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009808, 26.925943, 45.090782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340868, -0.385819, 0.857294,
		0.380954, -0.776995, -0.501152,
		0.859467, 0.497416, -0.117873,
		36.267647, 27.075169, 45.055420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169132, 26.223400, 45.378815>,  <35.666019, 26.726976, 45.137932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169132, 26.223400, 45.378815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352871, 26.578072, 45.399971>,  <36.463116, 26.790874, 45.412666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352871, 26.578072, 45.399971>,  <36.169132, 26.223400, 45.378815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352871, 26.578072, 45.399971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258359, -0.190339, 0.947112,
		0.849852, -0.421391, -0.316514,
		0.459350, 0.886680, 0.052890,
		36.490677, 26.844076, 45.415836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792667, 26.112505, 45.758198>,  <36.169132, 26.223400, 45.378815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792667, 26.112505, 45.758198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758972, 26.509659, 45.791855>,  <36.738754, 26.747952, 45.812050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758972, 26.509659, 45.791855>,  <36.792667, 26.112505, 45.758198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758972, 26.509659, 45.791855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282690, -0.057161, 0.957506,
		0.955505, 0.104448, -0.275864,
		-0.084241, 0.992886, 0.084144,
		36.733700, 26.807526, 45.817097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347218, 26.326824, 46.235062>,  <36.792667, 26.112505, 45.758198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347218, 26.326824, 46.235062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066727, 26.611691, 46.248283>,  <36.898430, 26.782610, 46.256218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066727, 26.611691, 46.248283>,  <37.347218, 26.326824, 46.235062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066727, 26.611691, 46.248283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022759, -0.023980, 0.999453,
		0.712570, 0.701601, 0.000607,
		-0.701232, 0.712167, 0.033055,
		36.856358, 26.825340, 46.258202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455437, 26.604532, 46.909889>,  <37.347218, 26.326824, 46.235062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455437, 26.604532, 46.909889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095554, 26.749729, 46.812923>,  <36.879623, 26.836847, 46.754745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095554, 26.749729, 46.812923>,  <37.455437, 26.604532, 46.909889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095554, 26.749729, 46.812923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268155, -0.021447, 0.963137,
		0.344410, 0.931546, 0.116634,
		-0.899708, 0.362990, -0.242412,
		36.825642, 26.858625, 46.740200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289879, 27.131668, 47.352444>,  <37.455437, 26.604532, 46.909889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289879, 27.131668, 47.352444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916424, 27.030071, 47.251408>,  <36.692348, 26.969112, 47.190784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916424, 27.030071, 47.251408>,  <37.289879, 27.131668, 47.352444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916424, 27.030071, 47.251408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174379, -0.293688, 0.939861,
		-0.312902, 0.921539, 0.229908,
		-0.933640, -0.253994, -0.252592,
		36.636333, 26.953873, 47.175629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754246, 27.441168, 47.747368>,  <37.289879, 27.131668, 47.352444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754246, 27.441168, 47.747368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571663, 27.111925, 47.612225>,  <36.462112, 26.914379, 47.531139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571663, 27.111925, 47.612225>,  <36.754246, 27.441168, 47.747368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571663, 27.111925, 47.612225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211829, -0.268269, 0.939766,
		-0.864164, 0.500527, -0.051905,
		-0.456453, -0.823107, -0.337855,
		36.434727, 26.864992, 47.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626125, 27.802635, 48.388596>,  <36.754246, 27.441168, 47.747368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626125, 27.802635, 48.388596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772293, 28.055349, 48.662037>,  <36.859993, 28.206978, 48.826103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772293, 28.055349, 48.662037>,  <36.626125, 27.802635, 48.388596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772293, 28.055349, 48.662037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137805, 0.763020, -0.631515,
		-0.920585, 0.136565, 0.365887,
		0.365421, 0.631784, 0.683605,
		36.881920, 28.244884, 48.867119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183964, 28.465099, 48.426926>,  <36.626125, 27.802635, 48.388596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183964, 28.465099, 48.426926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555744, 28.552147, 48.546097>,  <36.778812, 28.604376, 48.617599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555744, 28.552147, 48.546097>,  <36.183964, 28.465099, 48.426926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555744, 28.552147, 48.546097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018660, 0.778751, -0.627056,
		-0.368468, 0.588378, 0.719752,
		0.929453, 0.217620, 0.297924,
		36.834579, 28.617434, 48.635475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144344, 29.237532, 48.560463>,  <36.183964, 28.465099, 48.426926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144344, 29.237532, 48.560463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521969, 29.130547, 48.483303>,  <36.748543, 29.066355, 48.437008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521969, 29.130547, 48.483303>,  <36.144344, 29.237532, 48.560463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521969, 29.130547, 48.483303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093860, 0.778700, -0.620337,
		0.316128, 0.567531, 0.760245,
		0.944062, -0.267462, -0.192900,
		36.805187, 29.050308, 48.425434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471115, 29.910053, 48.356220>,  <36.144344, 29.237532, 48.560463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471115, 29.910053, 48.356220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706776, 29.611662, 48.232014>,  <36.848171, 29.432627, 48.157490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706776, 29.611662, 48.232014>,  <36.471115, 29.910053, 48.356220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706776, 29.611662, 48.232014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196384, 0.504961, -0.840505,
		0.783798, 0.434200, 0.443994,
		0.589147, -0.745979, -0.310517,
		36.883518, 29.387869, 48.138859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132767, 30.285681, 48.152256>,  <36.471115, 29.910053, 48.356220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132767, 30.285681, 48.152256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092453, 29.928707, 47.976345>,  <37.068264, 29.714523, 47.870800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092453, 29.928707, 47.976345>,  <37.132767, 30.285681, 48.152256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092453, 29.928707, 47.976345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293823, 0.395612, -0.870149,
		0.950532, -0.216910, 0.222348,
		-0.100781, -0.892436, -0.439775,
		37.062218, 29.660976, 47.844414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542545, 30.381798, 47.595325>,  <37.132767, 30.285681, 48.152256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542545, 30.381798, 47.595325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333332, 30.054922, 47.498466>,  <37.207802, 29.858797, 47.440350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333332, 30.054922, 47.498466>,  <37.542545, 30.381798, 47.595325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333332, 30.054922, 47.498466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147403, 0.193098, -0.970044,
		0.839468, -0.543061, 0.019459,
		-0.523035, -0.817189, -0.242148,
		37.176422, 29.809765, 47.425823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917397, 30.083160, 46.974377>,  <37.542545, 30.381798, 47.595325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917397, 30.083160, 46.974377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557903, 29.907892, 46.981182>,  <37.342209, 29.802731, 46.985268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557903, 29.907892, 46.981182>,  <37.917397, 30.083160, 46.974377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557903, 29.907892, 46.981182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023427, 0.009232, -0.999683,
		0.437875, -0.898844, -0.018562,
		-0.898731, -0.438171, 0.017015,
		37.288284, 29.776442, 46.986286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867729, 29.787563, 46.320507>,  <37.917397, 30.083160, 46.974377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867729, 29.787563, 46.320507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493660, 29.699623, 46.431591>,  <37.269218, 29.646858, 46.498241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493660, 29.699623, 46.431591>,  <37.867729, 29.787563, 46.320507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493660, 29.699623, 46.431591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299270, 0.071054, -0.951519,
		0.189459, -0.972942, -0.132242,
		-0.935170, -0.219850, 0.277710,
		37.213108, 29.633669, 46.514904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682293, 29.184929, 45.936935>,  <37.867729, 29.787563, 46.320507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682293, 29.184929, 45.936935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358727, 29.396851, 46.038883>,  <37.164585, 29.524004, 46.100052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358727, 29.396851, 46.038883>,  <37.682293, 29.184929, 45.936935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358727, 29.396851, 46.038883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208401, 0.146960, -0.966939,
		-0.549743, -0.835290, -0.008467,
		-0.808920, 0.529804, 0.254866,
		37.116051, 29.555792, 46.115341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183598, 28.859579, 45.617805>,  <37.682293, 29.184929, 45.936935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183598, 28.859579, 45.617805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074184, 29.239952, 45.675640>,  <37.008537, 29.468176, 45.710342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074184, 29.239952, 45.675640>,  <37.183598, 28.859579, 45.617805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074184, 29.239952, 45.675640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119529, 0.115553, -0.986083,
		-0.954407, -0.287010, 0.082056,
		-0.273534, 0.950933, 0.144590,
		36.992123, 29.525232, 45.719017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591709, 28.916061, 45.168205>,  <37.183598, 28.859579, 45.617805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591709, 28.916061, 45.168205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691559, 29.293221, 45.256416>,  <36.751469, 29.519516, 45.309341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691559, 29.293221, 45.256416>,  <36.591709, 28.916061, 45.168205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691559, 29.293221, 45.256416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249786, 0.282729, -0.926105,
		-0.935571, 0.176098, 0.306100,
		0.249628, 0.942896, 0.220526,
		36.766449, 29.576090, 45.322575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016167, 29.329504, 45.067009>,  <36.591709, 28.916061, 45.168205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016167, 29.329504, 45.067009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317131, 29.586308, 45.008083>,  <36.497711, 29.740389, 44.972729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317131, 29.586308, 45.008083>,  <36.016167, 29.329504, 45.067009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317131, 29.586308, 45.008083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335370, 0.180903, -0.924554,
		-0.566921, 0.745051, 0.351424,
		0.752414, 0.642006, -0.147310,
		36.542854, 29.778910, 44.963890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788315, 29.995108, 44.640450>,  <36.016167, 29.329504, 45.067009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788315, 29.995108, 44.640450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183064, 29.944572, 44.600204>,  <36.419914, 29.914251, 44.576057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183064, 29.944572, 44.600204>,  <35.788315, 29.995108, 44.640450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183064, 29.944572, 44.600204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055814, 0.317769, -0.946524,
		0.151551, 0.939714, 0.306546,
		0.986872, -0.126337, -0.100608,
		36.479126, 29.906672, 44.570023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932205, 30.460621, 44.300842>,  <35.788315, 29.995108, 44.640450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932205, 30.460621, 44.300842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284145, 30.279085, 44.244438>,  <36.495312, 30.170164, 44.210594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284145, 30.279085, 44.244438>,  <35.932205, 30.460621, 44.300842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284145, 30.279085, 44.244438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000607, 0.297787, -0.954632,
		0.475242, 0.839852, 0.262285,
		0.879855, -0.453840, -0.141011,
		36.548103, 30.142933, 44.202133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402657, 30.950872, 44.094364>,  <35.932205, 30.460621, 44.300842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402657, 30.950872, 44.094364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536461, 30.595455, 43.968765>,  <36.616745, 30.382206, 43.893406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536461, 30.595455, 43.968765>,  <36.402657, 30.950872, 44.094364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536461, 30.595455, 43.968765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098104, 0.364217, -0.926132,
		0.937271, 0.278998, 0.209005,
		0.334512, -0.888541, -0.314000,
		36.636814, 30.328894, 43.874565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962742, 31.093355, 43.695072>,  <36.402657, 30.950872, 44.094364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962742, 31.093355, 43.695072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864296, 30.724838, 43.574642>,  <36.805229, 30.503727, 43.502384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864296, 30.724838, 43.574642>,  <36.962742, 31.093355, 43.695072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864296, 30.724838, 43.574642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236047, 0.244300, -0.940531,
		0.940058, -0.302548, 0.157343,
		-0.246117, -0.921294, -0.301072,
		36.790462, 30.448450, 43.484322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517853, 31.014290, 43.291073>,  <36.962742, 31.093355, 43.695072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517853, 31.014290, 43.291073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226223, 30.758228, 43.194195>,  <37.051247, 30.604591, 43.136066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226223, 30.758228, 43.194195>,  <37.517853, 31.014290, 43.291073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226223, 30.758228, 43.194195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196250, 0.143486, -0.969999,
		0.655700, -0.754729, 0.021019,
		-0.729071, -0.640153, -0.242199,
		37.007504, 30.566183, 43.121536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733280, 30.665604, 42.649780>,  <37.517853, 31.014290, 43.291073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733280, 30.665604, 42.649780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337368, 30.610250, 42.663551>,  <37.099819, 30.577038, 42.671814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337368, 30.610250, 42.663551>,  <37.733280, 30.665604, 42.649780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337368, 30.610250, 42.663551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077966, 0.323003, -0.943181,
		0.119398, -0.936226, -0.330492,
		-0.989781, -0.138381, 0.034428,
		37.040436, 30.568735, 42.673878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681339, 30.286821, 42.153717>,  <37.733280, 30.665604, 42.649780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681339, 30.286821, 42.153717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319427, 30.449699, 42.203636>,  <37.102280, 30.547426, 42.233585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319427, 30.449699, 42.203636>,  <37.681339, 30.286821, 42.153717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319427, 30.449699, 42.203636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025425, 0.240860, -0.970227,
		-0.425130, -0.881010, -0.207571,
		-0.904775, 0.407195, 0.124796,
		37.047997, 30.571857, 42.241074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282616, 30.048010, 41.622330>,  <37.681339, 30.286821, 42.153717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282616, 30.048010, 41.622330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075352, 30.373943, 41.726292>,  <36.950993, 30.569504, 41.788670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075352, 30.373943, 41.726292>,  <37.282616, 30.048010, 41.622330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075352, 30.373943, 41.726292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124750, 0.372634, -0.919555,
		-0.846134, -0.444058, -0.294736,
		-0.518164, 0.814835, 0.259902,
		36.919903, 30.618393, 41.804264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710423, 30.128666, 41.184231>,  <37.282616, 30.048010, 41.622330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710423, 30.128666, 41.184231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784313, 30.499817, 41.313797>,  <36.828648, 30.722507, 41.391537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784313, 30.499817, 41.313797>,  <36.710423, 30.128666, 41.184231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784313, 30.499817, 41.313797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035198, 0.335622, -0.941339,
		-0.982159, 0.162492, 0.094658,
		0.184730, 0.927876, 0.323915,
		36.839733, 30.778179, 41.410973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211254, 30.632355, 40.788998>,  <36.710423, 30.128666, 41.184231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211254, 30.632355, 40.788998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507919, 30.850586, 40.945091>,  <36.685921, 30.981524, 41.038746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507919, 30.850586, 40.945091>,  <36.211254, 30.632355, 40.788998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507919, 30.850586, 40.945091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103847, 0.481358, -0.870351,
		-0.662683, 0.686033, 0.300349,
		0.741665, 0.545577, 0.390230,
		36.730419, 31.014259, 41.062160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089722, 31.367323, 40.567196>,  <36.211254, 30.632355, 40.788998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089722, 31.367323, 40.567196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476746, 31.339758, 40.664413>,  <36.708961, 31.323219, 40.722744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476746, 31.339758, 40.664413>,  <36.089722, 31.367323, 40.567196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476746, 31.339758, 40.664413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243447, 0.511306, -0.824196,
		-0.067472, 0.856631, 0.511498,
		0.967565, -0.068912, 0.243043,
		36.767014, 31.319084, 40.737328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326382, 31.866678, 40.215809>,  <36.089722, 31.367323, 40.567196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326382, 31.866678, 40.215809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662903, 31.665741, 40.295666>,  <36.864815, 31.545179, 40.343578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662903, 31.665741, 40.295666>,  <36.326382, 31.866678, 40.215809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662903, 31.665741, 40.295666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456664, 0.462865, -0.759746,
		0.289246, 0.730348, 0.618812,
		0.841305, -0.502343, 0.199641,
		36.915295, 31.515038, 40.355556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902473, 32.305412, 40.133034>,  <36.326382, 31.866678, 40.215809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902473, 32.305412, 40.133034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076782, 31.945932, 40.113239>,  <37.181366, 31.730246, 40.101360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076782, 31.945932, 40.113239>,  <36.902473, 32.305412, 40.133034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076782, 31.945932, 40.113239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535486, 0.303062, -0.788295,
		0.723436, 0.317015, 0.613304,
		0.435770, -0.898696, -0.049489,
		37.207512, 31.676323, 40.098392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623993, 32.468426, 39.972023>,  <36.902473, 32.305412, 40.133034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623993, 32.468426, 39.972023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575500, 32.078350, 39.897934>,  <37.546406, 31.844305, 39.853481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575500, 32.078350, 39.897934>,  <37.623993, 32.468426, 39.972023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575500, 32.078350, 39.897934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481191, 0.105470, -0.870248,
		0.868193, -0.194628, 0.456466,
		-0.121231, -0.975190, -0.185222,
		37.539131, 31.785793, 39.842369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282921, 32.045033, 39.913456>,  <37.623993, 32.468426, 39.972023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282921, 32.045033, 39.913456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975266, 31.910376, 39.696163>,  <37.790672, 31.829580, 39.565788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975266, 31.910376, 39.696163>,  <38.282921, 32.045033, 39.913456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975266, 31.910376, 39.696163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526952, 0.146865, -0.837109,
		0.361589, -0.930108, 0.064435,
		-0.769139, -0.336644, -0.543227,
		37.744522, 31.809383, 39.533195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483585, 31.545252, 39.465565>,  <38.282921, 32.045033, 39.913456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483585, 31.545252, 39.465565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171883, 31.739563, 39.307186>,  <37.984859, 31.856150, 39.212158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171883, 31.739563, 39.307186>,  <38.483585, 31.545252, 39.465565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171883, 31.739563, 39.307186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521942, 0.153364, -0.839080,
		-0.346883, -0.860523, -0.373059,
		-0.779261, 0.485778, -0.395944,
		37.938103, 31.885296, 39.188404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440243, 31.272125, 38.804359>,  <38.483585, 31.545252, 39.465565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440243, 31.272125, 38.804359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212463, 31.600492, 38.787251>,  <38.075798, 31.797512, 38.776985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212463, 31.600492, 38.787251>,  <38.440243, 31.272125, 38.804359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212463, 31.600492, 38.787251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489913, 0.297134, -0.819571,
		-0.660089, -0.487655, -0.571379,
		-0.569444, 0.820916, -0.042774,
		38.041630, 31.846767, 38.774418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243416, 31.287895, 38.075150>,  <38.440243, 31.272125, 38.804359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243416, 31.287895, 38.075150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193466, 31.652292, 38.232376>,  <38.163498, 31.870930, 38.326710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193466, 31.652292, 38.232376>,  <38.243416, 31.287895, 38.075150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193466, 31.652292, 38.232376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344067, 0.411342, -0.844047,
		-0.930604, 0.029840, -0.364809,
		-0.124875, 0.910992, 0.393064,
		38.156002, 31.925591, 38.350296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873878, 31.569157, 37.559235>,  <38.243416, 31.287895, 38.075150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873878, 31.569157, 37.559235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045326, 31.869558, 37.760143>,  <38.148193, 32.049801, 37.880688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045326, 31.869558, 37.760143>,  <37.873878, 31.569157, 37.559235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045326, 31.869558, 37.760143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424462, 0.323374, -0.845731,
		-0.797570, 0.575692, -0.180169,
		0.428619, 0.751005, 0.502273,
		38.173912, 32.094860, 37.910824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803921, 32.063629, 37.031605>,  <37.873878, 31.569157, 37.559235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803921, 32.063629, 37.031605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075138, 32.213852, 37.284336>,  <38.237869, 32.303986, 37.435974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075138, 32.213852, 37.284336>,  <37.803921, 32.063629, 37.031605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075138, 32.213852, 37.284336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453728, 0.462418, -0.761774,
		-0.578263, 0.803196, 0.143136,
		0.678043, 0.375561, 0.631832,
		38.278549, 32.326519, 37.473885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912224, 32.754707, 36.842327>,  <37.803921, 32.063629, 37.031605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912224, 32.754707, 36.842327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230885, 32.659084, 37.064388>,  <38.422081, 32.601711, 37.197624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230885, 32.659084, 37.064388>,  <37.912224, 32.754707, 36.842327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230885, 32.659084, 37.064388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594557, 0.475286, -0.648541,
		-0.108816, 0.846732, 0.520773,
		0.796656, -0.239058, 0.555148,
		38.469883, 32.587368, 37.230934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329948, 33.371975, 36.948853>,  <37.912224, 32.754707, 36.842327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329948, 33.371975, 36.948853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556244, 33.044022, 36.984032>,  <38.692020, 32.847248, 37.005138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556244, 33.044022, 36.984032>,  <38.329948, 33.371975, 36.948853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556244, 33.044022, 36.984032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642955, 0.371824, -0.669594,
		0.516288, 0.435359, 0.737502,
		0.565735, -0.819884, 0.087948,
		38.725964, 32.798058, 37.010418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993618, 33.687790, 37.020237>,  <38.329948, 33.371975, 36.948853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993618, 33.687790, 37.020237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048233, 33.300617, 36.935890>,  <39.081001, 33.068314, 36.885281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048233, 33.300617, 36.935890>,  <38.993618, 33.687790, 37.020237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048233, 33.300617, 36.935890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685259, 0.246000, -0.685496,
		0.715387, -0.050903, 0.696872,
		0.136537, -0.967932, -0.210866,
		39.089195, 33.010239, 36.872631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689926, 33.736721, 37.053719>,  <38.993618, 33.687790, 37.020237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689926, 33.736721, 37.053719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650848, 33.375256, 36.886940>,  <39.627403, 33.158375, 36.786873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650848, 33.375256, 36.886940>,  <39.689926, 33.736721, 37.053719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650848, 33.375256, 36.886940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808035, 0.172551, -0.563298,
		0.580977, -0.391941, 0.713336,
		-0.097693, -0.903664, -0.416950,
		39.621540, 33.104156, 36.761856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400761, 33.519836, 37.111454>,  <39.689926, 33.736721, 37.053719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400761, 33.519836, 37.111454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208397, 33.298431, 36.839466>,  <40.092979, 33.165588, 36.676273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208397, 33.298431, 36.839466>,  <40.400761, 33.519836, 37.111454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208397, 33.298431, 36.839466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765877, 0.112327, -0.633100,
		0.426804, -0.825234, 0.369900,
		-0.480906, -0.553508, -0.679969,
		40.064125, 33.132378, 36.635475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757435, 32.863052, 36.876205>,  <40.400761, 33.519836, 37.111454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757435, 32.863052, 36.876205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515949, 33.002590, 36.589474>,  <40.371059, 33.086311, 36.417435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515949, 33.002590, 36.589474>,  <40.757435, 32.863052, 36.876205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515949, 33.002590, 36.589474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727569, -0.126425, -0.674285,
		-0.325846, -0.928614, -0.177485,
		-0.603712, 0.348845, -0.716825,
		40.334835, 33.107243, 36.374428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151253, 32.942532, 36.288769>,  <40.757435, 32.863052, 36.876205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151253, 32.942532, 36.288769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830933, 33.074135, 36.088577>,  <40.638741, 33.153095, 35.968464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830933, 33.074135, 36.088577>,  <41.151253, 32.942532, 36.288769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830933, 33.074135, 36.088577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552288, 0.082338, -0.829577,
		-0.231731, -0.940730, -0.247644,
		-0.800798, 0.329010, -0.500474,
		40.590694, 33.172836, 35.938435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125862, 32.556850, 35.678944>,  <41.151253, 32.942532, 36.288769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125862, 32.556850, 35.678944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953739, 32.912971, 35.619343>,  <40.850464, 33.126644, 35.583584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953739, 32.912971, 35.619343>,  <41.125862, 32.556850, 35.678944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953739, 32.912971, 35.619343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538805, 0.120888, -0.833712,
		-0.724240, -0.439037, -0.531717,
		-0.430308, 0.890299, -0.149004,
		40.824646, 33.180061, 35.574642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842136, 32.581085, 35.016960>,  <41.125862, 32.556850, 35.678944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842136, 32.581085, 35.016960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933460, 32.952183, 35.135059>,  <40.988255, 33.174839, 35.205917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933460, 32.952183, 35.135059>,  <40.842136, 32.581085, 35.016960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933460, 32.952183, 35.135059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539509, 0.131879, -0.831588,
		-0.810435, 0.349147, -0.470416,
		0.228308, 0.927742, 0.295247,
		41.001953, 33.230507, 35.223633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565102, 33.098225, 34.548344>,  <40.842136, 32.581085, 35.016960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565102, 33.098225, 34.548344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926098, 33.196033, 34.690170>,  <41.142696, 33.254719, 34.775269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926098, 33.196033, 34.690170>,  <40.565102, 33.098225, 34.548344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926098, 33.196033, 34.690170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329320, 0.138817, -0.933958,
		-0.277596, 0.959655, 0.044754,
		0.902490, 0.244525, 0.354568,
		41.196846, 33.269390, 34.796539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787346, 33.769306, 34.200836>,  <40.565102, 33.098225, 34.548344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787346, 33.769306, 34.200836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103981, 33.562389, 34.330940>,  <41.293964, 33.438240, 34.409004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103981, 33.562389, 34.330940>,  <40.787346, 33.769306, 34.200836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103981, 33.562389, 34.330940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461663, 0.157580, -0.872946,
		0.400310, 0.841179, 0.363552,
		0.791593, -0.517288, 0.325261,
		41.341457, 33.407204, 34.428520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553642, 34.022686, 34.003845>,  <40.787346, 33.769306, 34.200836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553642, 34.022686, 34.003845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552013, 33.623592, 34.030731>,  <41.551037, 33.384136, 34.046864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552013, 33.623592, 34.030731>,  <41.553642, 34.022686, 34.003845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552013, 33.623592, 34.030731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540540, -0.058748, -0.839264,
		0.841308, 0.032914, 0.539553,
		-0.004074, -0.997730, 0.067216,
		41.550793, 33.324272, 34.050896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280060, 33.812599, 34.162220>,  <41.553642, 34.022686, 34.003845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280060, 33.812599, 34.162220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050552, 33.561985, 33.951225>,  <41.912849, 33.411617, 33.824631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050552, 33.561985, 33.951225>,  <42.280060, 33.812599, 34.162220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050552, 33.561985, 33.951225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618988, 0.090020, -0.780225,
		0.536324, -0.774175, 0.336169,
		-0.573768, -0.626538, -0.527485,
		41.878422, 33.374023, 33.792980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743061, 33.448833, 33.816120>,  <42.280060, 33.812599, 34.162220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743061, 33.448833, 33.816120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432201, 33.466061, 33.564983>,  <42.245686, 33.476398, 33.414303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432201, 33.466061, 33.564983>,  <42.743061, 33.448833, 33.816120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432201, 33.466061, 33.564983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598580, 0.358566, -0.716333,
		0.194271, -0.932510, -0.304440,
		-0.777149, 0.043069, -0.627841,
		42.199059, 33.478981, 33.376633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583309, 34.065174, 33.374306>,  <42.743061, 33.448833, 33.816120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583309, 34.065174, 33.374306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769062, 34.417408, 33.412071>,  <42.880512, 34.628750, 33.434731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769062, 34.417408, 33.412071>,  <42.583309, 34.065174, 33.374306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769062, 34.417408, 33.412071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474897, 0.337574, -0.812722,
		-0.747545, 0.332576, 0.574952,
		0.464380, 0.880589, 0.094413,
		42.908375, 34.681583, 33.440395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090076, 34.609077, 33.227039>,  <42.583309, 34.065174, 33.374306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090076, 34.609077, 33.227039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468269, 34.715580, 33.152027>,  <42.695187, 34.779480, 33.107021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468269, 34.715580, 33.152027>,  <42.090076, 34.609077, 33.227039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468269, 34.715580, 33.152027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284550, 0.395341, -0.873348,
		-0.158394, 0.879099, 0.449552,
		0.945485, 0.266253, -0.187528,
		42.751915, 34.795456, 33.095768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075500, 35.362953, 33.020317>,  <42.090076, 34.609077, 33.227039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075500, 35.362953, 33.020317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407940, 35.184605, 32.887371>,  <42.607403, 35.077595, 32.807606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407940, 35.184605, 32.887371>,  <42.075500, 35.362953, 33.020317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407940, 35.184605, 32.887371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098811, 0.469740, -0.877258,
		0.547270, 0.761932, 0.346345,
		0.831103, -0.445874, -0.332361,
		42.657272, 35.050842, 32.787663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475857, 35.885483, 32.745132>,  <42.075500, 35.362953, 33.020317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475857, 35.885483, 32.745132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621143, 35.551712, 32.579330>,  <42.708313, 35.351452, 32.479851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621143, 35.551712, 32.579330>,  <42.475857, 35.885483, 32.745132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621143, 35.551712, 32.579330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213399, 0.358553, -0.908791,
		0.906938, 0.418540, -0.047833,
		0.363214, -0.834424, -0.414501,
		42.730106, 35.301384, 32.454979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943020, 36.146667, 32.334332>,  <42.475857, 35.885483, 32.745132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943020, 36.146667, 32.334332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856705, 35.784138, 32.188995>,  <42.804916, 35.566620, 32.101795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856705, 35.784138, 32.188995>,  <42.943020, 36.146667, 32.334332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856705, 35.784138, 32.188995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346688, 0.418979, -0.839205,
		0.912821, -0.055127, -0.404622,
		-0.215791, -0.906321, -0.363341,
		42.791969, 35.512241, 32.079994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118332, 36.205719, 31.663412>,  <42.943020, 36.146667, 32.334332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118332, 36.205719, 31.663412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884254, 35.881424, 31.669735>,  <42.743809, 35.686848, 31.673529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884254, 35.881424, 31.669735>,  <43.118332, 36.205719, 31.663412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884254, 35.881424, 31.669735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502533, 0.347293, -0.791738,
		0.636402, -0.471265, -0.610657,
		-0.585195, -0.810738, 0.015809,
		42.708694, 35.638203, 31.674479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149582, 35.899590, 31.002419>,  <43.118332, 36.205719, 31.663412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149582, 35.899590, 31.002419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804333, 35.809231, 31.183077>,  <42.597183, 35.755016, 31.291471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804333, 35.809231, 31.183077>,  <43.149582, 35.899590, 31.002419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804333, 35.809231, 31.183077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504496, 0.346286, -0.790930,
		0.022269, -0.910526, -0.412852,
		-0.863126, -0.225895, 0.451645,
		42.545395, 35.741463, 31.318571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765518, 35.615139, 30.541159>,  <43.149582, 35.899590, 31.002419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765518, 35.615139, 30.541159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473011, 35.687580, 30.804203>,  <42.297508, 35.731045, 30.962030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473011, 35.687580, 30.804203>,  <42.765518, 35.615139, 30.541159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473011, 35.687580, 30.804203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617967, 0.232208, -0.751130,
		-0.288733, -0.955658, -0.057891,
		-0.731266, 0.181102, 0.657611,
		42.253632, 35.741909, 31.001486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148209, 35.360310, 30.267855>,  <42.765518, 35.615139, 30.541159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148209, 35.360310, 30.267855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029331, 35.636295, 30.531864>,  <41.958004, 35.801888, 30.690269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029331, 35.636295, 30.531864>,  <42.148209, 35.360310, 30.267855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029331, 35.636295, 30.531864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734584, 0.276375, -0.619680,
		-0.609968, -0.669007, 0.424698,
		-0.297195, 0.689961, 0.660022,
		41.940174, 35.843285, 30.729872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370083, 35.280296, 30.276575>,  <42.148209, 35.360310, 30.267855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370083, 35.280296, 30.276575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487782, 35.640102, 30.405748>,  <41.558403, 35.855988, 30.483252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487782, 35.640102, 30.405748>,  <41.370083, 35.280296, 30.276575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487782, 35.640102, 30.405748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667140, 0.435268, -0.604538,
		-0.684355, -0.037555, 0.728182,
		0.294251, 0.899517, 0.322933,
		41.576057, 35.909958, 30.502628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796688, 35.670177, 30.366959>,  <41.370083, 35.280296, 30.276575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796688, 35.670177, 30.366959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059681, 35.969536, 30.332060>,  <41.217476, 36.149151, 30.311121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059681, 35.969536, 30.332060>,  <40.796688, 35.670177, 30.366959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059681, 35.969536, 30.332060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606318, 0.456777, -0.650948,
		-0.447317, 0.480887, 0.754092,
		0.657484, 0.748400, -0.087246,
		41.256927, 36.194057, 30.305885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374306, 36.264977, 30.265799>,  <40.796688, 35.670177, 30.366959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374306, 36.264977, 30.265799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738598, 36.384003, 30.151241>,  <40.957172, 36.455418, 30.082508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738598, 36.384003, 30.151241>,  <40.374306, 36.264977, 30.265799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738598, 36.384003, 30.151241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411891, 0.705035, -0.577296,
		0.030134, 0.643726, 0.764663,
		0.910735, 0.297562, -0.286391,
		41.011818, 36.473270, 30.065325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473026, 37.075230, 30.414391>,  <40.374306, 36.264977, 30.265799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473026, 37.075230, 30.414391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748753, 36.988594, 30.137861>,  <40.914188, 36.936611, 29.971943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748753, 36.988594, 30.137861>,  <40.473026, 37.075230, 30.414391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748753, 36.988594, 30.137861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341209, 0.744732, -0.573543,
		0.639075, 0.631239, 0.439454,
		0.689318, -0.216591, -0.691324,
		40.955547, 36.923618, 29.930464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573174, 37.680283, 30.074188>,  <40.473026, 37.075230, 30.414391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573174, 37.680283, 30.074188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745430, 37.429470, 29.814533>,  <40.848785, 37.278984, 29.658741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745430, 37.429470, 29.814533>,  <40.573174, 37.680283, 30.074188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745430, 37.429470, 29.814533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095895, 0.683386, -0.723732,
		0.897413, 0.373919, 0.234167,
		0.430644, -0.627031, -0.649137,
		40.874622, 37.241360, 29.619793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027550, 38.090862, 29.703487>,  <40.573174, 37.680283, 30.074188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027550, 38.090862, 29.703487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997154, 37.752857, 29.491760>,  <40.978916, 37.550053, 29.364723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997154, 37.752857, 29.491760>,  <41.027550, 38.090862, 29.703487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997154, 37.752857, 29.491760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052267, 0.526750, -0.848412,
		0.995737, -0.092138, 0.004138,
		-0.075992, -0.845012, -0.529320,
		40.974358, 37.499355, 29.332964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619267, 38.045856, 29.313726>,  <41.027550, 38.090862, 29.703487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619267, 38.045856, 29.313726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330990, 37.837807, 29.130388>,  <41.158024, 37.712978, 29.020386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330990, 37.837807, 29.130388>,  <41.619267, 38.045856, 29.313726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330990, 37.837807, 29.130388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131027, 0.547036, -0.826791,
		0.680762, -0.655917, -0.326094,
		-0.720691, -0.520121, -0.458344,
		41.114784, 37.681770, 28.992886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933205, 37.753403, 28.673487>,  <41.619267, 38.045856, 29.313726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933205, 37.753403, 28.673487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534283, 37.754021, 28.644167>,  <41.294930, 37.754391, 28.626575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534283, 37.754021, 28.644167>,  <41.933205, 37.753403, 28.673487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534283, 37.754021, 28.644167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054855, 0.679069, -0.732022,
		0.048640, -0.734073, -0.677326,
		-0.997309, 0.001550, -0.073298,
		41.235088, 37.754486, 28.622177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803932, 37.766060, 27.933161>,  <41.933205, 37.753403, 28.673487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803932, 37.766060, 27.933161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480591, 37.898792, 28.127668>,  <41.286587, 37.978432, 28.244373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480591, 37.898792, 28.127668>,  <41.803932, 37.766060, 27.933161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480591, 37.898792, 28.127668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091207, 0.745437, -0.660307,
		-0.581593, -0.578111, -0.572309,
		-0.808351, 0.331831, 0.486269,
		41.238087, 37.998341, 28.273548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399750, 37.967426, 27.408352>,  <41.803932, 37.766060, 27.933161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399750, 37.967426, 27.408352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259541, 38.170258, 27.723312>,  <41.175415, 38.291958, 27.912289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259541, 38.170258, 27.723312>,  <41.399750, 37.967426, 27.408352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259541, 38.170258, 27.723312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036327, 0.847472, -0.529596,
		-0.935848, -0.157033, -0.315483,
		-0.350527, 0.507082, 0.787400,
		41.154381, 38.322384, 27.959532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887585, 38.435677, 27.125051>,  <41.399750, 37.967426, 27.408352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887585, 38.435677, 27.125051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014690, 38.586544, 27.473022>,  <41.090954, 38.677063, 27.681805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014690, 38.586544, 27.473022>,  <40.887585, 38.435677, 27.125051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014690, 38.586544, 27.473022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097035, 0.899727, -0.425531,
		-0.943192, 0.219631, 0.249301,
		0.317763, 0.377166, 0.869927,
		41.110020, 38.699696, 27.734001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600945, 39.128510, 27.107292>,  <40.887585, 38.435677, 27.125051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600945, 39.128510, 27.107292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895882, 39.147785, 27.376812>,  <41.072845, 39.159351, 27.538523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895882, 39.147785, 27.376812>,  <40.600945, 39.128510, 27.107292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895882, 39.147785, 27.376812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269713, 0.893496, -0.359055,
		-0.619340, 0.446478, 0.645813,
		0.737342, 0.048193, 0.673799,
		41.117085, 39.162243, 27.578951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571999, 39.778870, 27.234169>,  <40.600945, 39.128510, 27.107292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571999, 39.778870, 27.234169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928360, 39.671726, 27.380894>,  <41.142178, 39.607441, 27.468927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928360, 39.671726, 27.380894>,  <40.571999, 39.778870, 27.234169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928360, 39.671726, 27.380894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369894, 0.896544, -0.243697,
		-0.263585, 0.352791, 0.897809,
		0.890899, -0.267859, 0.366811,
		41.195629, 39.591370, 27.490936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824081, 40.217716, 27.801035>,  <40.571999, 39.778870, 27.234169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824081, 40.217716, 27.801035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138451, 40.065964, 27.605730>,  <41.327072, 39.974915, 27.488546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138451, 40.065964, 27.605730>,  <40.824081, 40.217716, 27.801035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138451, 40.065964, 27.605730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371788, 0.920903, -0.117094,
		0.494065, -0.089503, 0.864806,
		0.785922, -0.379377, -0.488262,
		41.374226, 39.952152, 27.459251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441078, 40.621582, 28.073837>,  <40.824081, 40.217716, 27.801035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441078, 40.621582, 28.073837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456383, 40.505985, 27.691212>,  <41.465565, 40.436626, 27.461636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456383, 40.505985, 27.691212>,  <41.441078, 40.621582, 28.073837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456383, 40.505985, 27.691212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270180, 0.924605, -0.268529,
		0.962049, -0.248170, 0.113460,
		0.038265, -0.288993, -0.956566,
		41.467861, 40.419289, 27.404242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153553, 40.807213, 27.801678>,  <41.441078, 40.621582, 28.073837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153553, 40.807213, 27.801678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897003, 40.759556, 27.498508>,  <41.743073, 40.730961, 27.316607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897003, 40.759556, 27.498508>,  <42.153553, 40.807213, 27.801678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897003, 40.759556, 27.498508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289024, 0.877571, -0.382536,
		0.710707, -0.464405, -0.528415,
		-0.641373, -0.119147, -0.757921,
		41.704590, 40.723812, 27.271132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409023, 40.709793, 27.158672>,  <42.153553, 40.807213, 27.801678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409023, 40.709793, 27.158672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074677, 40.928814, 27.143147>,  <41.874069, 41.060226, 27.133831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074677, 40.928814, 27.143147>,  <42.409023, 40.709793, 27.158672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074677, 40.928814, 27.143147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512154, 0.752468, -0.414114,
		-0.197544, -0.366024, -0.909397,
		-0.835868, 0.547557, -0.038815,
		41.823917, 41.093082, 27.131502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111851, 40.383663, 26.469193>,  <42.409023, 40.709793, 27.158672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111851, 40.383663, 26.469193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356052, 40.603149, 26.240738>,  <42.502571, 40.734840, 26.103664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356052, 40.603149, 26.240738>,  <42.111851, 40.383663, 26.469193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356052, 40.603149, 26.240738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707092, -0.702476, 0.080925,
		-0.356804, -0.453251, -0.816856,
		0.610501, 0.548718, -0.571136,
		42.539204, 40.767765, 26.069397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397209, 40.021225, 25.796759>,  <42.111851, 40.383663, 26.469193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397209, 40.021225, 25.796759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647606, 40.274857, 25.978342>,  <42.797844, 40.427036, 26.087292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647606, 40.274857, 25.978342>,  <42.397209, 40.021225, 25.796759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647606, 40.274857, 25.978342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615492, -0.759186, 0.211675,
		0.478856, 0.146900, -0.865516,
		0.625992, 0.634080, 0.453957,
		42.835403, 40.465080, 26.114529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252087, 40.111572, 25.638508>,  <42.397209, 40.021225, 25.796759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252087, 40.111572, 25.638508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197853, 40.184319, 26.028080>,  <43.165314, 40.227966, 26.261824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197853, 40.184319, 26.028080>,  <43.252087, 40.111572, 25.638508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197853, 40.184319, 26.028080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733864, -0.641983, 0.222039,
		0.665628, 0.744838, -0.046423,
		-0.135580, 0.181863, 0.973932,
		43.157181, 40.238876, 26.320259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885090, 40.224834, 26.093142>,  <43.252087, 40.111572, 25.638508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885090, 40.224834, 26.093142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617130, 40.101997, 26.363527>,  <43.456356, 40.028294, 26.525759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617130, 40.101997, 26.363527>,  <43.885090, 40.224834, 26.093142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617130, 40.101997, 26.363527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734120, -0.409990, 0.541273,
		0.110918, 0.858838, 0.500095,
		-0.669900, -0.307093, 0.675965,
		43.416161, 40.009869, 26.566317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155354, 40.475407, 26.704786>,  <43.885090, 40.224834, 26.093142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155354, 40.475407, 26.704786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921349, 40.171803, 26.819090>,  <43.780945, 39.989639, 26.887672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921349, 40.171803, 26.819090>,  <44.155354, 40.475407, 26.704786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921349, 40.171803, 26.819090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646289, -0.223423, 0.729652,
		-0.489972, 0.611538, 0.621248,
		-0.585011, -0.759015, 0.285760,
		43.745846, 39.944099, 26.904818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368305, 39.874355, 27.060286>,  <44.155354, 40.475407, 26.704786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368305, 39.874355, 27.060286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995312, 39.865704, 27.204508>,  <43.771515, 39.860512, 27.291042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995312, 39.865704, 27.204508>,  <44.368305, 39.874355, 27.060286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995312, 39.865704, 27.204508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337915, -0.404865, 0.849646,
		0.127603, 0.914121, 0.384839,
		-0.932486, -0.021625, 0.360557,
		43.715565, 39.859215, 27.312675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393723, 40.040276, 27.768215>,  <44.368305, 39.874355, 27.060286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393723, 40.040276, 27.768215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024475, 39.890762, 27.732141>,  <43.802925, 39.801052, 27.710497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024475, 39.890762, 27.732141>,  <44.393723, 40.040276, 27.768215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024475, 39.890762, 27.732141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173993, -0.615219, 0.768916,
		-0.342892, 0.694111, 0.632957,
		-0.923120, -0.373786, -0.090183,
		43.747540, 39.778625, 27.705086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072166, 40.024136, 28.427763>,  <44.393723, 40.040276, 27.768215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072166, 40.024136, 28.427763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897057, 39.745548, 28.200331>,  <43.791988, 39.578396, 28.063871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897057, 39.745548, 28.200331>,  <44.072166, 40.024136, 28.427763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897057, 39.745548, 28.200331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097630, -0.665482, 0.740001,
		-0.893767, 0.268445, 0.359329,
		-0.437777, -0.696470, -0.568578,
		43.765724, 39.536606, 28.029757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503632, 39.652012, 28.862638>,  <44.072166, 40.024136, 28.427763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503632, 39.652012, 28.862638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605213, 39.406082, 28.563976>,  <43.666164, 39.258522, 28.384779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605213, 39.406082, 28.563976>,  <43.503632, 39.652012, 28.862638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605213, 39.406082, 28.563976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215169, -0.716705, 0.663353,
		-0.942978, -0.329120, -0.049720,
		0.253958, -0.614829, -0.746653,
		43.681400, 39.221634, 28.339981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309143, 38.951786, 29.107134>,  <43.503632, 39.652012, 28.862638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309143, 38.951786, 29.107134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550632, 38.906094, 28.791548>,  <43.695526, 38.878677, 28.602196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550632, 38.906094, 28.791548>,  <43.309143, 38.951786, 29.107134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550632, 38.906094, 28.791548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465976, -0.752440, 0.465510,
		-0.646824, -0.648680, -0.401041,
		0.603726, -0.114228, -0.788965,
		43.731750, 38.871826, 28.554857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272396, 38.252850, 28.974829>,  <43.309143, 38.951786, 29.107134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272396, 38.252850, 28.974829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601776, 38.368889, 28.779783>,  <43.799404, 38.438511, 28.662756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601776, 38.368889, 28.779783>,  <43.272396, 38.252850, 28.974829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601776, 38.368889, 28.779783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480580, -0.813452, 0.327627,
		-0.301604, -0.504122, -0.809256,
		0.823455, 0.290099, -0.487612,
		43.848812, 38.455917, 28.633499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487629, 37.662102, 28.641319>,  <43.272396, 38.252850, 28.974829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487629, 37.662102, 28.641319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832771, 37.863422, 28.659967>,  <44.039856, 37.984215, 28.671156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832771, 37.863422, 28.659967>,  <43.487629, 37.662102, 28.641319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832771, 37.863422, 28.659967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402178, -0.739496, 0.539814,
		0.306165, -0.447030, -0.840492,
		0.862853, 0.503299, 0.046622,
		44.091629, 38.014412, 28.673954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085526, 37.221272, 28.483780>,  <43.487629, 37.662102, 28.641319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085526, 37.221272, 28.483780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223343, 37.531723, 28.695030>,  <44.306034, 37.717995, 28.821779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223343, 37.531723, 28.695030>,  <44.085526, 37.221272, 28.483780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223343, 37.531723, 28.695030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544793, -0.623453, 0.560809,
		0.764521, 0.094497, -0.637635,
		0.344541, 0.776129, 0.528124,
		44.326706, 37.764561, 28.853468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788845, 37.103840, 28.469570>,  <44.085526, 37.221272, 28.483780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788845, 37.103840, 28.469570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725407, 37.342731, 28.784063>,  <44.687344, 37.486069, 28.972759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725407, 37.342731, 28.784063>,  <44.788845, 37.103840, 28.469570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725407, 37.342731, 28.784063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593567, -0.578672, 0.559300,
		0.789003, 0.555384, -0.262722,
		-0.158597, 0.597232, 0.786232,
		44.677826, 37.521900, 29.019934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449169, 37.043861, 28.774307>,  <44.788845, 37.103840, 28.469570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449169, 37.043861, 28.774307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185665, 37.180630, 29.042376>,  <45.027565, 37.262691, 29.203217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185665, 37.180630, 29.042376>,  <45.449169, 37.043861, 28.774307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185665, 37.180630, 29.042376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422079, -0.569429, 0.705408,
		0.622808, 0.747557, 0.230798,
		-0.658756, 0.341919, 0.670173,
		44.988037, 37.283207, 29.243427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841759, 37.250214, 29.435225>,  <45.449169, 37.043861, 28.774307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841759, 37.250214, 29.435225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464420, 37.200771, 29.558395>,  <45.238018, 37.171108, 29.632298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464420, 37.200771, 29.558395>,  <45.841759, 37.250214, 29.435225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464420, 37.200771, 29.558395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331752, -0.368297, 0.868504,
		0.006058, 0.921455, 0.388437,
		-0.943347, -0.123603, 0.307926,
		45.181416, 37.163689, 29.650774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825401, 37.402218, 30.170538>,  <45.841759, 37.250214, 29.435225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825401, 37.402218, 30.170538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483086, 37.205711, 30.105684>,  <45.277699, 37.087807, 30.066772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483086, 37.205711, 30.105684>,  <45.825401, 37.402218, 30.170538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483086, 37.205711, 30.105684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098767, -0.462797, 0.880945,
		-0.507813, 0.737887, 0.444576,
		-0.855787, -0.491265, -0.162136,
		45.226349, 37.058331, 30.057043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366764, 37.575481, 30.741871>,  <45.825401, 37.402218, 30.170538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366764, 37.575481, 30.741871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241810, 37.238663, 30.565973>,  <45.166836, 37.036572, 30.460434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241810, 37.238663, 30.565973>,  <45.366764, 37.575481, 30.741871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241810, 37.238663, 30.565973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062275, -0.443762, 0.893978,
		-0.947912, 0.306650, 0.086186,
		-0.312385, -0.842046, -0.439744,
		45.148094, 36.986050, 30.434050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991356, 37.282356, 31.228451>,  <45.366764, 37.575481, 30.741871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991356, 37.282356, 31.228451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002800, 36.961521, 30.989843>,  <45.009666, 36.769020, 30.846680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002800, 36.961521, 30.989843>,  <44.991356, 37.282356, 31.228451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002800, 36.961521, 30.989843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050370, -0.594847, 0.802259,
		-0.998321, -0.052999, 0.023383,
		0.028609, -0.802090, -0.596518,
		45.011383, 36.720894, 30.810888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359921, 36.895725, 31.344004>,  <44.991356, 37.282356, 31.228451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359921, 36.895725, 31.344004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635738, 36.641941, 31.204294>,  <44.801228, 36.489670, 31.120468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635738, 36.641941, 31.204294>,  <44.359921, 36.895725, 31.344004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635738, 36.641941, 31.204294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085145, -0.549927, 0.830861,
		-0.719224, -0.543175, -0.433219,
		0.689541, -0.634462, -0.349272,
		44.842602, 36.451603, 31.099512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097118, 36.203575, 31.342548>,  <44.359921, 36.895725, 31.344004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097118, 36.203575, 31.342548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489742, 36.131298, 31.367523>,  <44.725315, 36.087933, 31.382507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489742, 36.131298, 31.367523>,  <44.097118, 36.203575, 31.342548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489742, 36.131298, 31.367523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149960, -0.525180, 0.837674,
		-0.118568, -0.831587, -0.542590,
		0.981557, -0.180689, 0.062435,
		44.784210, 36.077091, 31.386253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137943, 35.541019, 31.461878>,  <44.097118, 36.203575, 31.342548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137943, 35.541019, 31.461878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502941, 35.669193, 31.563599>,  <44.721939, 35.746098, 31.624632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502941, 35.669193, 31.563599>,  <44.137943, 35.541019, 31.461878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502941, 35.669193, 31.563599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017388, -0.590698, 0.806705,
		0.408712, -0.740539, -0.533439,
		0.912498, 0.320435, 0.254302,
		44.776691, 35.765324, 31.639889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530891, 34.951077, 31.544886>,  <44.137943, 35.541019, 31.461878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530891, 34.951077, 31.544886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689747, 35.260662, 31.742168>,  <44.785061, 35.446415, 31.860538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689747, 35.260662, 31.742168>,  <44.530891, 34.951077, 31.544886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689747, 35.260662, 31.742168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041558, -0.521689, 0.852123,
		0.916816, -0.358911, -0.175020,
		0.397142, 0.773966, 0.493209,
		44.808891, 35.492851, 31.890131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956860, 34.662224, 31.952797>,  <44.530891, 34.951077, 31.544886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956860, 34.662224, 31.952797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929127, 35.027020, 32.114525>,  <44.912487, 35.245895, 32.211559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929127, 35.027020, 32.114525>,  <44.956860, 34.662224, 31.952797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929127, 35.027020, 32.114525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073066, -0.399562, 0.913790,
		0.994914, 0.092901, -0.038931,
		-0.069337, 0.911987, 0.404317,
		44.908325, 35.300617, 32.235821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471489, 34.711994, 32.531612>,  <44.956860, 34.662224, 31.952797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471489, 34.711994, 32.531612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223164, 35.012043, 32.622746>,  <45.074169, 35.192074, 32.677425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223164, 35.012043, 32.622746>,  <45.471489, 34.711994, 32.531612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223164, 35.012043, 32.622746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114148, -0.201032, 0.972911,
		0.775603, 0.630004, 0.039179,
		-0.620814, 0.750121, 0.227835,
		45.036919, 35.237080, 32.691097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809742, 35.171082, 33.020885>,  <45.471489, 34.711994, 32.531612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809742, 35.171082, 33.020885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415321, 35.229130, 33.053486>,  <45.178669, 35.263958, 33.073048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415321, 35.229130, 33.053486>,  <45.809742, 35.171082, 33.020885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415321, 35.229130, 33.053486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064530, -0.118049, 0.990909,
		0.153421, 0.982346, 0.107038,
		-0.986052, 0.145119, 0.081502,
		45.119507, 35.272667, 33.077938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757496, 35.600998, 33.661476>,  <45.809742, 35.171082, 33.020885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757496, 35.600998, 33.661476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385059, 35.464146, 33.610851>,  <45.161598, 35.382034, 33.580479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385059, 35.464146, 33.610851>,  <45.757496, 35.600998, 33.661476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385059, 35.464146, 33.610851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093981, -0.110252, 0.989450,
		-0.352472, 0.933163, 0.070501,
		-0.931091, -0.342128, -0.126560,
		45.105732, 35.361507, 33.572884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225048, 35.711559, 34.330421>,  <45.757496, 35.600998, 33.661476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225048, 35.711559, 34.330421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242626, 36.002544, 34.056526>,  <46.253174, 36.177135, 33.892189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242626, 36.002544, 34.056526>,  <46.225048, 35.711559, 34.330421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242626, 36.002544, 34.056526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279687, 0.666949, 0.690619,
		0.959085, 0.161163, 0.232771,
		0.043944, 0.727465, -0.684736,
		46.255810, 36.220783, 33.851105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924057, 35.456345, 34.027885>,  <46.225048, 35.711559, 34.330421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924057, 35.456345, 34.027885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039806, 35.669231, 34.346134>,  <47.109257, 35.796963, 34.537083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039806, 35.669231, 34.346134>,  <46.924057, 35.456345, 34.027885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039806, 35.669231, 34.346134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026298, -0.835289, 0.549182,
		0.956856, -0.137994, -0.255705,
		0.289371, 0.532212, 0.795622,
		47.126617, 35.828896, 34.584820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.259758, 35.010246, 34.379761>,  <46.924057, 35.456345, 34.027885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.259758, 35.010246, 34.379761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248898, 35.281811, 34.673248>,  <47.242382, 35.444748, 34.849342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248898, 35.281811, 34.673248>,  <47.259758, 35.010246, 34.379761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.248898, 35.281811, 34.673248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092754, -0.729112, 0.678080,
		0.995319, 0.086468, -0.043174,
		-0.027154, 0.678910, 0.733719,
		47.240753, 35.485485, 34.893364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896980, 34.769604, 34.819771>,  <47.259758, 35.010246, 34.379761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896980, 34.769604, 34.819771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593063, 34.945602, 35.011234>,  <47.410713, 35.051201, 35.126114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593063, 34.945602, 35.011234>,  <47.896980, 34.769604, 34.819771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593063, 34.945602, 35.011234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057309, -0.688026, 0.723419,
		0.647637, 0.577079, 0.497540,
		-0.759791, 0.440000, 0.478663,
		47.365128, 35.077602, 35.154835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.272263, 35.322720, 43.792805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893600, 35.446922, 43.758320>,  <35.666405, 35.521442, 43.737629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893600, 35.446922, 43.758320>,  <36.272263, 35.322720, 43.792805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893600, 35.446922, 43.758320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131359, 0.127510, -0.983100,
		-0.294265, -0.941981, -0.161495,
		-0.946654, 0.310506, -0.086216,
		35.609604, 35.540073, 43.732456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015709, 34.899506, 43.314167>,  <36.272263, 35.322720, 43.792805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015709, 34.899506, 43.314167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802792, 35.238121, 43.311836>,  <35.675041, 35.441292, 43.310440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802792, 35.238121, 43.311836>,  <36.015709, 34.899506, 43.314167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802792, 35.238121, 43.311836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115297, 0.065677, -0.991158,
		-0.838675, -0.528253, -0.132563,
		-0.532289, 0.846543, -0.005824,
		35.643105, 35.492085, 43.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638466, 34.909508, 42.745033>,  <36.015709, 34.899506, 43.314167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638466, 34.909508, 42.745033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.558128, 35.286091, 42.853340>,  <35.509926, 35.512043, 42.918324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.558128, 35.286091, 42.853340>,  <35.638466, 34.909508, 42.745033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558128, 35.286091, 42.853340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049236, 0.266348, -0.962619,
		-0.978386, -0.206665, -0.007140,
		-0.200842, 0.941461, 0.270766,
		35.497875, 35.568527, 42.934570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064354, 35.100029, 42.394600>,  <35.638466, 34.909508, 42.745033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064354, 35.100029, 42.394600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250984, 35.438534, 42.497486>,  <35.362961, 35.641636, 42.559216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250984, 35.438534, 42.497486>,  <35.064354, 35.100029, 42.394600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250984, 35.438534, 42.497486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011801, 0.284822, -0.958508,
		-0.884405, 0.450248, 0.122903,
		0.466572, 0.846258, 0.257211,
		35.390957, 35.692410, 42.574650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729847, 35.620525, 42.127888>,  <35.064354, 35.100029, 42.394600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729847, 35.620525, 42.127888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104614, 35.744053, 42.193390>,  <35.329475, 35.818169, 42.232693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104614, 35.744053, 42.193390>,  <34.729847, 35.620525, 42.127888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104614, 35.744053, 42.193390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079106, 0.268996, -0.959887,
		-0.340481, 0.912290, 0.227597,
		0.936918, 0.308819, 0.163755,
		35.385689, 35.836700, 42.242516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722572, 36.236649, 41.757885>,  <34.729847, 35.620525, 42.127888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722572, 36.236649, 41.757885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.111515, 36.177498, 41.830177>,  <35.344879, 36.142006, 41.873550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.111515, 36.177498, 41.830177>,  <34.722572, 36.236649, 41.757885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111515, 36.177498, 41.830177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216949, 0.285748, -0.933425,
		0.086392, 0.946826, 0.309930,
		0.972353, -0.147880, 0.180727,
		35.403221, 36.133133, 41.884396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092293, 36.835922, 41.415234>,  <34.722572, 36.236649, 41.757885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092293, 36.835922, 41.415234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362206, 36.546055, 41.471119>,  <35.524155, 36.372135, 41.504650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362206, 36.546055, 41.471119>,  <35.092293, 36.835922, 41.415234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362206, 36.546055, 41.471119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428671, 0.230758, -0.873494,
		0.600755, 0.649311, 0.466356,
		0.674785, -0.724670, 0.139712,
		35.564640, 36.328655, 41.513031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609936, 37.076252, 41.112083>,  <35.092293, 36.835922, 41.415234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609936, 37.076252, 41.112083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650692, 36.678684, 41.128799>,  <35.675144, 36.440144, 41.138828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650692, 36.678684, 41.128799>,  <35.609936, 37.076252, 41.112083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650692, 36.678684, 41.128799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406283, 0.003227, -0.913742,
		0.908049, 0.110082, 0.404141,
		0.101891, -0.993917, 0.041794,
		35.681259, 36.380508, 41.141338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307911, 36.990673, 40.894081>,  <35.609936, 37.076252, 41.112083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307911, 36.990673, 40.894081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089249, 36.661568, 40.831818>,  <35.958050, 36.464104, 40.794460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089249, 36.661568, 40.831818>,  <36.307911, 36.990673, 40.894081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089249, 36.661568, 40.831818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337375, -0.046275, -0.940232,
		0.766385, -0.566499, 0.302876,
		-0.546656, -0.822762, -0.155658,
		35.925251, 36.414738, 40.785122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701645, 36.502655, 40.588047>,  <36.307911, 36.990673, 40.894081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701645, 36.502655, 40.588047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327866, 36.410477, 40.479450>,  <36.103600, 36.355171, 40.414291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327866, 36.410477, 40.479450>,  <36.701645, 36.502655, 40.588047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327866, 36.410477, 40.479450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327636, -0.257648, -0.908995,
		0.139523, -0.938357, 0.316259,
		-0.934445, -0.230444, -0.271492,
		36.047531, 36.341343, 40.398003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675816, 35.824764, 40.203922>,  <36.701645, 36.502655, 40.588047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675816, 35.824764, 40.203922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361988, 36.041393, 40.083157>,  <36.173691, 36.171371, 40.010696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361988, 36.041393, 40.083157>,  <36.675816, 35.824764, 40.203922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361988, 36.041393, 40.083157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329143, -0.048889, -0.943014,
		-0.525470, -0.839231, -0.139898,
		-0.784567, 0.541572, -0.301917,
		36.126617, 36.203865, 39.992580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486309, 35.440086, 39.641827>,  <36.675816, 35.824764, 40.203922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486309, 35.440086, 39.641827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293213, 35.785549, 39.583778>,  <36.177357, 35.992828, 39.548950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293213, 35.785549, 39.583778>,  <36.486309, 35.440086, 39.641827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293213, 35.785549, 39.583778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228013, -0.036048, -0.972990,
		-0.845561, -0.502791, -0.179523,
		-0.482739, 0.863656, -0.145124,
		36.148392, 36.044647, 39.540241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234310, 35.329498, 39.049782>,  <36.486309, 35.440086, 39.641827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234310, 35.329498, 39.049782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193771, 35.727333, 39.058914>,  <36.169449, 35.966034, 39.064396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193771, 35.727333, 39.058914>,  <36.234310, 35.329498, 39.049782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193771, 35.727333, 39.058914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229380, 0.045696, -0.972264,
		-0.968046, -0.093298, -0.232770,
		-0.101346, 0.994589, 0.022835,
		36.163368, 36.025711, 39.065765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909618, 35.513985, 38.403042>,  <36.234310, 35.329498, 39.049782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909618, 35.513985, 38.403042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129059, 35.811100, 38.556564>,  <36.260723, 35.989368, 38.648678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129059, 35.811100, 38.556564>,  <35.909618, 35.513985, 38.403042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129059, 35.811100, 38.556564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338426, 0.222482, -0.914314,
		-0.764528, 0.631484, -0.129323,
		0.548603, 0.742785, 0.383804,
		36.293640, 36.033936, 38.671707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754498, 35.990334, 38.000057>,  <35.909618, 35.513985, 38.403042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754498, 35.990334, 38.000057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096092, 36.110836, 38.169743>,  <36.301048, 36.183140, 38.271553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096092, 36.110836, 38.169743>,  <35.754498, 35.990334, 38.000057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096092, 36.110836, 38.169743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407137, 0.120730, -0.905353,
		-0.323961, 0.945868, -0.019552,
		0.853984, 0.301259, 0.424210,
		36.352287, 36.201214, 38.297005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968407, 36.553288, 37.615269>,  <35.754498, 35.990334, 38.000057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968407, 36.553288, 37.615269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311047, 36.458862, 37.798798>,  <36.516628, 36.402206, 37.908913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311047, 36.458862, 37.798798>,  <35.968407, 36.553288, 37.615269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311047, 36.458862, 37.798798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508280, 0.232935, -0.829092,
		0.088843, 0.943406, 0.319517,
		0.856597, -0.236064, 0.458820,
		36.568027, 36.388042, 37.936443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428135, 37.083363, 37.572197>,  <35.968407, 36.553288, 37.615269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428135, 37.083363, 37.572197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649067, 36.751476, 37.604458>,  <36.781628, 36.552345, 37.623814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649067, 36.751476, 37.604458>,  <36.428135, 37.083363, 37.572197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649067, 36.751476, 37.604458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458202, 0.221338, -0.860849,
		0.696407, 0.512428, 0.502429,
		0.552329, -0.829715, 0.080654,
		36.814766, 36.502563, 37.628654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124615, 37.313820, 37.373028>,  <36.428135, 37.083363, 37.572197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124615, 37.313820, 37.373028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172123, 36.917709, 37.344040>,  <37.200626, 36.680042, 37.326649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172123, 36.917709, 37.344040>,  <37.124615, 37.313820, 37.373028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172123, 36.917709, 37.344040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437567, 0.117716, -0.891447,
		0.891307, 0.074166, 0.447292,
		0.118769, -0.990274, -0.072468,
		37.207752, 36.620628, 37.322300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844372, 37.178925, 37.097614>,  <37.124615, 37.313820, 37.373028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844372, 37.178925, 37.097614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.666290, 36.824184, 37.048145>,  <37.559441, 36.611340, 37.018463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.666290, 36.824184, 37.048145>,  <37.844372, 37.178925, 37.097614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666290, 36.824184, 37.048145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537818, -0.154413, -0.828799,
		0.715922, -0.435497, 0.545708,
		-0.445204, -0.886848, -0.123671,
		37.532730, 36.558128, 37.011044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383743, 36.526413, 37.189709>,  <37.844372, 37.178925, 37.097614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383743, 36.526413, 37.189709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074661, 36.460541, 36.944496>,  <37.889214, 36.421017, 36.797367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074661, 36.460541, 36.944496>,  <38.383743, 36.526413, 37.189709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074661, 36.460541, 36.944496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632603, -0.120148, -0.765100,
		0.052340, -0.979003, 0.197014,
		-0.772706, -0.164676, -0.613032,
		37.842850, 36.411137, 36.760586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629925, 36.051807, 36.698151>,  <38.383743, 36.526413, 37.189709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629925, 36.051807, 36.698151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294647, 36.166580, 36.512638>,  <38.093479, 36.235443, 36.401329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294647, 36.166580, 36.512638>,  <38.629925, 36.051807, 36.698151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294647, 36.166580, 36.512638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478531, -0.020953, -0.877820,
		-0.261597, -0.957720, -0.119745,
		-0.838197, 0.286937, -0.463780,
		38.043186, 36.252663, 36.373505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457901, 35.456089, 36.231380>,  <38.629925, 36.051807, 36.698151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457901, 35.456089, 36.231380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330418, 35.817490, 36.116764>,  <38.253925, 36.034328, 36.047993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330418, 35.817490, 36.116764>,  <38.457901, 35.456089, 36.231380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330418, 35.817490, 36.116764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337634, -0.174263, -0.925006,
		-0.885678, -0.391557, -0.249513,
		-0.318712, 0.903502, -0.286544,
		38.234802, 36.088539, 36.030800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145943, 35.853596, 35.936550>,  <38.457901, 35.456089, 36.231380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145943, 35.853596, 35.936550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.533722, 35.757893, 35.914944>,  <39.766392, 35.700470, 35.901978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.533722, 35.757893, 35.914944>,  <39.145943, 35.853596, 35.936550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533722, 35.757893, 35.914944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108398, -0.615470, 0.780671,
		-0.220028, -0.750968, -0.622604,
		0.969452, -0.239258, -0.054017,
		39.824558, 35.686115, 35.898739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148499, 35.132175, 35.862267>,  <39.145943, 35.853596, 35.936550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148499, 35.132175, 35.862267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501175, 35.240589, 36.016754>,  <39.712780, 35.305637, 36.109447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501175, 35.240589, 36.016754>,  <39.148499, 35.132175, 35.862267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501175, 35.240589, 36.016754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257944, -0.408527, 0.875540,
		0.395085, -0.871576, -0.290281,
		0.881688, 0.271036, 0.386221,
		39.765682, 35.321899, 36.132622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378826, 34.532848, 36.112003>,  <39.148499, 35.132175, 35.862267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378826, 34.532848, 36.112003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611126, 34.809055, 36.284477>,  <39.750504, 34.974777, 36.387962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611126, 34.809055, 36.284477>,  <39.378826, 34.532848, 36.112003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611126, 34.809055, 36.284477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108855, -0.459035, 0.881724,
		0.806773, -0.558996, -0.191417,
		0.580747, 0.690515, 0.431186,
		39.785351, 35.016209, 36.413834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878803, 34.160851, 36.516972>,  <39.378826, 34.532848, 36.112003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878803, 34.160851, 36.516972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.856850, 34.533340, 36.661083>,  <39.843678, 34.756836, 36.747551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.856850, 34.533340, 36.661083>,  <39.878803, 34.160851, 36.516972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856850, 34.533340, 36.661083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112516, -0.364293, 0.924462,
		0.992133, 0.010201, 0.124772,
		-0.054884, 0.931229, 0.360279,
		39.840385, 34.812710, 36.769165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453789, 34.268196, 36.974640>,  <39.878803, 34.160851, 36.516972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453789, 34.268196, 36.974640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163757, 34.529629, 37.061443>,  <39.989738, 34.686489, 37.113525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163757, 34.529629, 37.061443>,  <40.453789, 34.268196, 36.974640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163757, 34.529629, 37.061443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042930, -0.271606, 0.961451,
		0.687329, 0.706442, 0.168877,
		-0.725077, 0.653583, 0.217010,
		39.946236, 34.725704, 37.126545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704712, 34.498272, 37.584038>,  <40.453789, 34.268196, 36.974640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704712, 34.498272, 37.584038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316517, 34.594727, 37.585110>,  <40.083599, 34.652599, 37.585754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316517, 34.594727, 37.585110>,  <40.704712, 34.498272, 37.584038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316517, 34.594727, 37.585110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063609, -0.266703, 0.961678,
		0.232614, 0.933125, 0.274170,
		-0.970487, 0.241139, 0.002684,
		40.025372, 34.667068, 37.585915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632202, 34.710384, 38.236561>,  <40.704712, 34.498272, 37.584038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632202, 34.710384, 38.236561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.256832, 34.682442, 38.101227>,  <40.031609, 34.665676, 38.020027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.256832, 34.682442, 38.101227>,  <40.632202, 34.710384, 38.236561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256832, 34.682442, 38.101227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341143, 0.032852, 0.939437,
		-0.054513, 0.997016, -0.054661,
		-0.938430, -0.069859, -0.338334,
		39.975304, 34.661484, 37.999725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214493, 35.352600, 38.385460>,  <40.632202, 34.710384, 38.236561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214493, 35.352600, 38.385460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996227, 35.017834, 38.368378>,  <39.865269, 34.816975, 38.358128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996227, 35.017834, 38.368378>,  <40.214493, 35.352600, 38.385460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996227, 35.017834, 38.368378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116787, 0.025487, 0.992830,
		-0.829824, 0.546741, -0.111648,
		-0.545667, -0.836914, -0.042703,
		39.832527, 34.766758, 38.355568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710056, 35.486084, 38.855179>,  <40.214493, 35.352600, 38.385460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710056, 35.486084, 38.855179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636292, 35.100388, 38.779034>,  <39.592033, 34.868969, 38.733349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.636292, 35.100388, 38.779034>,  <39.710056, 35.486084, 38.855179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636292, 35.100388, 38.779034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201900, -0.152384, 0.967479,
		-0.961888, 0.216850, -0.166578,
		-0.184414, -0.964238, -0.190358,
		39.580967, 34.811115, 38.721928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927673, 35.274445, 38.964069>,  <39.710056, 35.486084, 38.855179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927673, 35.274445, 38.964069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120377, 34.925247, 38.994530>,  <39.236000, 34.715729, 39.012806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120377, 34.925247, 38.994530>,  <38.927673, 35.274445, 38.964069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120377, 34.925247, 38.994530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416074, -0.151397, 0.896639,
		-0.771227, -0.463647, -0.436165,
		0.481758, -0.872989, 0.076150,
		39.264904, 34.663349, 39.017376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482849, 34.884884, 39.256046>,  <38.927673, 35.274445, 38.964069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482849, 34.884884, 39.256046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815609, 34.675861, 39.330750>,  <39.015266, 34.550446, 39.375572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815609, 34.675861, 39.330750>,  <38.482849, 34.884884, 39.256046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815609, 34.675861, 39.330750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322036, -0.180529, 0.929356,
		-0.451927, -0.833272, -0.318464,
		0.831898, -0.522558, 0.186758,
		39.065178, 34.519093, 39.386776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239937, 34.427940, 39.717037>,  <38.482849, 34.884884, 39.256046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239937, 34.427940, 39.717037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636406, 34.458500, 39.760368>,  <38.874287, 34.476837, 39.786369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636406, 34.458500, 39.760368>,  <38.239937, 34.427940, 39.717037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636406, 34.458500, 39.760368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087733, -0.234566, 0.968133,
		0.099376, -0.969093, -0.225793,
		0.991175, 0.076399, 0.108332,
		38.933758, 34.481419, 39.792870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409554, 33.806259, 39.971054>,  <38.239937, 34.427940, 39.717037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409554, 33.806259, 39.971054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601036, 34.142090, 40.073780>,  <38.715927, 34.343586, 40.135414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601036, 34.142090, 40.073780>,  <38.409554, 33.806259, 39.971054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601036, 34.142090, 40.073780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423337, -0.035534, 0.905275,
		0.769170, -0.542083, 0.338412,
		0.478710, 0.839573, 0.256815,
		38.744648, 34.393963, 40.150826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707821, 33.636520, 40.569008>,  <38.409554, 33.806259, 39.971054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707821, 33.636520, 40.569008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.675850, 34.035229, 40.566154>,  <38.656670, 34.274456, 40.564442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.675850, 34.035229, 40.566154>,  <38.707821, 33.636520, 40.569008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675850, 34.035229, 40.566154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197373, -0.008807, 0.980289,
		0.977065, 0.079757, 0.197440,
		-0.079924, 0.996775, -0.007137,
		38.651875, 34.334263, 40.564014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117615, 33.905262, 41.119286>,  <38.707821, 33.636520, 40.569008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117615, 33.905262, 41.119286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856350, 34.202000, 41.058552>,  <38.699593, 34.380043, 41.022110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856350, 34.202000, 41.058552>,  <39.117615, 33.905262, 41.119286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856350, 34.202000, 41.058552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178779, 0.043768, 0.982915,
		0.735815, 0.669143, 0.104038,
		-0.653157, 0.741844, -0.151834,
		38.660404, 34.424553, 41.013000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191139, 34.335911, 41.710506>,  <39.117615, 33.905262, 41.119286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191139, 34.335911, 41.710506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842239, 34.466694, 41.565025>,  <38.632900, 34.545162, 41.477737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842239, 34.466694, 41.565025>,  <39.191139, 34.335911, 41.710506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842239, 34.466694, 41.565025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317837, 0.186244, 0.929673,
		0.371702, 0.926505, -0.058531,
		-0.872248, 0.326958, -0.363705,
		38.580566, 34.564781, 41.455914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019173, 34.825146, 42.206841>,  <39.191139, 34.335911, 41.710506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019173, 34.825146, 42.206841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663200, 34.737541, 42.046810>,  <38.449619, 34.684978, 41.950790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663200, 34.737541, 42.046810>,  <39.019173, 34.825146, 42.206841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663200, 34.737541, 42.046810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439219, 0.175050, 0.881161,
		-0.122950, 0.959892, -0.251975,
		-0.889927, -0.219011, -0.400080,
		38.396221, 34.671837, 41.926785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520554, 35.351868, 42.278641>,  <39.019173, 34.825146, 42.206841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520554, 35.351868, 42.278641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346256, 34.992096, 42.265053>,  <38.241676, 34.776234, 42.256901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346256, 34.992096, 42.265053>,  <38.520554, 35.351868, 42.278641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346256, 34.992096, 42.265053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523081, 0.222344, 0.822770,
		-0.732470, 0.376285, -0.567360,
		-0.435745, -0.899429, -0.033968,
		38.215534, 34.722267, 42.254864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.900356, 35.457932, 42.722015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878124, 35.064293, 42.654537>,  <37.864784, 34.828110, 42.614052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878124, 35.064293, 42.654537>,  <37.900356, 35.457932, 42.722015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878124, 35.064293, 42.654537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435315, -0.128170, 0.891108,
		-0.898561, 0.122963, -0.421270,
		-0.055579, -0.984100, -0.168696,
		37.861450, 34.769062, 42.603928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266117, 35.327194, 42.923176>,  <37.900356, 35.457932, 42.722015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266117, 35.327194, 42.923176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447235, 34.971352, 42.947090>,  <37.555904, 34.757847, 42.961437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447235, 34.971352, 42.947090>,  <37.266117, 35.327194, 42.923176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447235, 34.971352, 42.947090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237349, -0.055634, 0.969830,
		-0.859443, -0.453323, -0.236339,
		0.452795, -0.889609, 0.059781,
		37.583073, 34.704468, 42.965023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767189, 34.928474, 43.345432>,  <37.266117, 35.327194, 42.923176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767189, 34.928474, 43.345432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110210, 34.723602, 43.364464>,  <37.316025, 34.600677, 43.375885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110210, 34.723602, 43.364464>,  <36.767189, 34.928474, 43.345432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110210, 34.723602, 43.364464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237148, -0.311579, 0.920152,
		-0.456461, -0.800366, -0.388661,
		0.857557, -0.512184, 0.047581,
		37.367477, 34.569946, 43.378738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703503, 34.230675, 43.456230>,  <36.767189, 34.928474, 43.345432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703503, 34.230675, 43.456230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079300, 34.291065, 43.579235>,  <37.304779, 34.327301, 43.653038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079300, 34.291065, 43.579235>,  <36.703503, 34.230675, 43.456230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079300, 34.291065, 43.579235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250239, -0.310621, 0.917003,
		0.233967, -0.938467, -0.254045,
		0.939489, 0.150977, 0.307516,
		37.361145, 34.336357, 43.671490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886517, 33.596066, 43.870441>,  <36.703503, 34.230675, 43.456230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886517, 33.596066, 43.870441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.141838, 33.886650, 43.972275>,  <37.295033, 34.061001, 44.033375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.141838, 33.886650, 43.972275>,  <36.886517, 33.596066, 43.870441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141838, 33.886650, 43.972275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015528, -0.318503, 0.947795,
		0.769625, -0.608938, -0.192023,
		0.638308, 0.726464, 0.254584,
		37.333332, 34.104588, 44.048649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426647, 33.258621, 44.232399>,  <36.886517, 33.596066, 43.870441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426647, 33.258621, 44.232399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424408, 33.646011, 44.332020>,  <37.423065, 33.878445, 44.391792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424408, 33.646011, 44.332020>,  <37.426647, 33.258621, 44.232399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424408, 33.646011, 44.332020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098255, -0.248387, 0.963665,
		0.995146, -0.019078, 0.096547,
		-0.005596, 0.968473, 0.249055,
		37.422729, 33.936554, 44.406738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890537, 33.222240, 44.805687>,  <37.426647, 33.258621, 44.232399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890537, 33.222240, 44.805687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679287, 33.559544, 44.845680>,  <37.552536, 33.761925, 44.869675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679287, 33.559544, 44.845680>,  <37.890537, 33.222240, 44.805687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679287, 33.559544, 44.845680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151865, -0.209635, 0.965914,
		0.835473, 0.494945, 0.238776,
		-0.528130, 0.843257, 0.099979,
		37.520847, 33.812519, 44.875675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234520, 33.664597, 45.332283>,  <37.890537, 33.222240, 44.805687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234520, 33.664597, 45.332283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850761, 33.776646, 45.319069>,  <37.620506, 33.843876, 45.311142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850761, 33.776646, 45.319069>,  <38.234520, 33.664597, 45.332283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850761, 33.776646, 45.319069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067698, -0.114985, 0.991058,
		0.273818, 0.953053, 0.129280,
		-0.959396, 0.280122, -0.033034,
		37.562943, 33.860683, 45.309158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095623, 34.062553, 45.969875>,  <38.234520, 33.664597, 45.332283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095623, 34.062553, 45.969875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718044, 34.005310, 45.850887>,  <37.491497, 33.970963, 45.779495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718044, 34.005310, 45.850887>,  <38.095623, 34.062553, 45.969875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718044, 34.005310, 45.850887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299627, -0.006722, 0.954033,
		-0.138529, 0.989684, -0.036533,
		-0.943946, -0.143107, -0.297468,
		37.434860, 33.962379, 45.761646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618286, 34.468258, 46.376827>,  <38.095623, 34.062553, 45.969875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618286, 34.468258, 46.376827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405697, 34.158943, 46.238522>,  <37.278141, 33.973354, 46.155537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405697, 34.158943, 46.238522>,  <37.618286, 34.468258, 46.376827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405697, 34.158943, 46.238522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295872, -0.213007, 0.931176,
		-0.793720, 0.597201, -0.115586,
		-0.531478, -0.773291, -0.345763,
		37.246254, 33.926956, 46.134792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988102, 34.526604, 46.749878>,  <37.618286, 34.468258, 46.376827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988102, 34.526604, 46.749878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006119, 34.159714, 46.591549>,  <37.016930, 33.939579, 46.496552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006119, 34.159714, 46.591549>,  <36.988102, 34.526604, 46.749878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006119, 34.159714, 46.591549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360041, -0.384503, 0.850017,
		-0.931849, 0.104230, -0.347554,
		0.045038, -0.917221, -0.395825,
		37.019630, 33.884548, 46.472801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507847, 34.222244, 47.053406>,  <36.988102, 34.526604, 46.749878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507847, 34.222244, 47.053406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707737, 33.902378, 46.920254>,  <36.827671, 33.710457, 46.840363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707737, 33.902378, 46.920254>,  <36.507847, 34.222244, 47.053406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707737, 33.902378, 46.920254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310097, -0.523997, 0.793263,
		-0.808775, -0.293187, -0.509827,
		0.499722, -0.799668, -0.332880,
		36.857655, 33.662479, 46.820389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063183, 33.673477, 47.108566>,  <36.507847, 34.222244, 47.053406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063183, 33.673477, 47.108566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417778, 33.491043, 47.077248>,  <36.630535, 33.381584, 47.058456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417778, 33.491043, 47.077248>,  <36.063183, 33.673477, 47.108566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417778, 33.491043, 47.077248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225127, -0.572871, 0.788122,
		-0.404301, -0.681034, -0.610519,
		0.886487, -0.456083, -0.078293,
		36.683723, 33.354218, 47.053761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870655, 32.968605, 47.195225>,  <36.063183, 33.673477, 47.108566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870655, 32.968605, 47.195225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265663, 32.962704, 47.257946>,  <36.502666, 32.959164, 47.295578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265663, 32.962704, 47.257946>,  <35.870655, 32.968605, 47.195225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265663, 32.962704, 47.257946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116474, -0.738562, 0.664048,
		0.106016, -0.674024, -0.731063,
		0.987519, -0.014750, 0.156806,
		36.561920, 32.958279, 47.304989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121975, 32.289253, 47.025196>,  <35.870655, 32.968605, 47.195225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121975, 32.289253, 47.025196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.360420, 32.455124, 47.300209>,  <36.503487, 32.554646, 47.465218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.360420, 32.455124, 47.300209>,  <36.121975, 32.289253, 47.025196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360420, 32.455124, 47.300209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134521, -0.792620, 0.594691,
		0.791552, -0.446990, -0.416708,
		0.596112, 0.414673, 0.687529,
		36.539253, 32.579525, 47.506470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429565, 31.744671, 47.255959>,  <36.121975, 32.289253, 47.025196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429565, 31.744671, 47.255959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.547646, 32.011276, 47.529781>,  <36.618492, 32.171242, 47.694073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.547646, 32.011276, 47.529781>,  <36.429565, 31.744671, 47.255959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547646, 32.011276, 47.529781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061411, -0.701766, 0.709756,
		0.953460, -0.251559, -0.166229,
		0.295199, 0.666515, 0.684554,
		36.636204, 32.211231, 47.735149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031525, 31.528856, 47.687550>,  <36.429565, 31.744671, 47.255959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031525, 31.528856, 47.687550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867519, 31.800793, 47.930763>,  <36.769115, 31.963955, 48.076691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867519, 31.800793, 47.930763>,  <37.031525, 31.528856, 47.687550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867519, 31.800793, 47.930763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123971, -0.618920, 0.775609,
		0.903615, 0.393389, 0.169485,
		-0.410013, 0.679841, 0.608034,
		36.744514, 32.004745, 48.113174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439106, 31.420069, 48.168480>,  <37.031525, 31.528856, 47.687550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439106, 31.420069, 48.168480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121136, 31.620539, 48.305252>,  <36.930355, 31.740822, 48.387314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121136, 31.620539, 48.305252>,  <37.439106, 31.420069, 48.168480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121136, 31.620539, 48.305252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077081, -0.642439, 0.762450,
		0.601790, 0.579735, 0.549323,
		-0.794926, 0.501177, 0.341927,
		36.882656, 31.770891, 48.407829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542645, 31.589897, 48.900894>,  <37.439106, 31.420069, 48.168480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542645, 31.589897, 48.900894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145279, 31.620390, 48.866669>,  <36.906860, 31.638685, 48.846134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145279, 31.620390, 48.866669>,  <37.542645, 31.589897, 48.900894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145279, 31.620390, 48.866669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114464, -0.696368, 0.708498,
		-0.005574, 0.713625, 0.700506,
		-0.993412, 0.076233, -0.085566,
		36.847256, 31.643259, 48.841000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283997, 31.675377, 49.624058>,  <37.542645, 31.589897, 48.900894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283997, 31.675377, 49.624058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.965317, 31.566191, 49.408367>,  <36.774109, 31.500679, 49.278954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.965317, 31.566191, 49.408367>,  <37.283997, 31.675377, 49.624058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965317, 31.566191, 49.408367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253372, -0.659163, 0.708031,
		-0.548704, 0.700711, 0.455992,
		-0.796697, -0.272964, -0.539225,
		36.726307, 31.484303, 49.246601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800415, 31.728113, 50.057182>,  <37.283997, 31.675377, 49.624058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800415, 31.728113, 50.057182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639515, 31.485699, 49.782688>,  <36.542973, 31.340250, 49.617992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639515, 31.485699, 49.782688>,  <36.800415, 31.728113, 50.057182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639515, 31.485699, 49.782688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362134, -0.583096, 0.727227,
		-0.840863, 0.541038, 0.015088,
		-0.402255, -0.606034, -0.686231,
		36.518837, 31.303888, 49.576820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134602, 31.650084, 50.179226>,  <36.800415, 31.728113, 50.057182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134602, 31.650084, 50.179226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250164, 31.321032, 49.983341>,  <36.319500, 31.123600, 49.865810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250164, 31.321032, 49.983341>,  <36.134602, 31.650084, 50.179226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250164, 31.321032, 49.983341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479969, -0.567050, 0.669390,
		-0.828351, 0.041659, -0.558659,
		0.288902, -0.822629, -0.489712,
		36.336834, 31.074244, 49.836430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476444, 31.353302, 50.065495>,  <36.134602, 31.650084, 50.179226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476444, 31.353302, 50.065495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819332, 31.157806, 50.130367>,  <36.025066, 31.040508, 50.169292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819332, 31.157806, 50.130367>,  <35.476444, 31.353302, 50.065495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819332, 31.157806, 50.130367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372415, -0.370885, 0.850736,
		-0.355626, -0.789676, -0.499943,
		0.857227, -0.488730, 0.162191,
		36.076500, 31.011185, 50.179024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137192, 30.950840, 50.522640>,  <35.476444, 31.353302, 50.065495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137192, 30.950840, 50.522640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913837, 30.749943, 50.258533>,  <34.779823, 30.629404, 50.100071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913837, 30.749943, 50.258533>,  <35.137192, 30.950840, 50.522640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913837, 30.749943, 50.258533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631455, 0.773505, -0.054361,
		0.538023, 0.386575, -0.749061,
		-0.558387, -0.502246, -0.660267,
		34.746323, 30.599270, 50.060452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826603, 31.655689, 50.494682>,  <35.137192, 30.950840, 50.522640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826603, 31.655689, 50.494682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498810, 31.859789, 50.599060>,  <34.302135, 31.982248, 50.661686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498810, 31.859789, 50.599060>,  <34.826603, 31.655689, 50.494682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498810, 31.859789, 50.599060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060310, 0.376013, -0.924649,
		-0.569923, -0.773471, -0.277363,
		-0.819482, 0.510251, 0.260946,
		34.252964, 32.012863, 50.677345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340588, 31.631353, 49.942039>,  <34.826603, 31.655689, 50.494682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340588, 31.631353, 49.942039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245426, 31.968044, 50.135902>,  <34.188328, 32.170059, 50.252220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245426, 31.968044, 50.135902>,  <34.340588, 31.631353, 49.942039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245426, 31.968044, 50.135902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000734, 0.499142, -0.866520,
		-0.971288, -0.205794, -0.119367,
		-0.237906, 0.841728, 0.484659,
		34.174053, 32.220562, 50.281300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695892, 31.878748, 49.722836>,  <34.340588, 31.631353, 49.942039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695892, 31.878748, 49.722836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850063, 32.216228, 49.872295>,  <33.942566, 32.418716, 49.961971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850063, 32.216228, 49.872295>,  <33.695892, 31.878748, 49.722836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850063, 32.216228, 49.872295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190435, 0.468952, -0.862449,
		-0.902875, 0.261252, 0.341415,
		0.385424, 0.843701, 0.373654,
		33.965691, 32.469337, 49.984390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227150, 32.501865, 49.542553>,  <33.695892, 31.878748, 49.722836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227150, 32.501865, 49.542553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.591957, 32.639065, 49.632504>,  <33.810841, 32.721386, 49.686474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.591957, 32.639065, 49.632504>,  <33.227150, 32.501865, 49.542553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591957, 32.639065, 49.632504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075158, 0.678764, -0.730501,
		-0.403199, 0.649331, 0.644826,
		0.912021, 0.343001, 0.224874,
		33.865562, 32.741966, 49.699966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179817, 33.154762, 49.629993>,  <33.227150, 32.501865, 49.542553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179817, 33.154762, 49.629993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564865, 33.104092, 49.534229>,  <33.795895, 33.073689, 49.476772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564865, 33.104092, 49.534229>,  <33.179817, 33.154762, 49.629993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564865, 33.104092, 49.534229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087981, 0.689711, -0.718720,
		0.256169, 0.712917, 0.652784,
		0.962620, -0.126681, -0.239406,
		33.853653, 33.066086, 49.462406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349689, 33.722050, 49.355530>,  <33.179817, 33.154762, 49.629993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349689, 33.722050, 49.355530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679054, 33.522907, 49.246624>,  <33.876675, 33.403423, 49.181282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679054, 33.522907, 49.246624>,  <33.349689, 33.722050, 49.355530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679054, 33.522907, 49.246624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132559, 0.635302, -0.760801,
		0.551737, 0.590365, 0.589113,
		0.823416, -0.497855, -0.272262,
		33.926079, 33.373550, 49.164944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926643, 34.141491, 49.255959>,  <33.349689, 33.722050, 49.355530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926643, 34.141491, 49.255959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983932, 33.811760, 49.036880>,  <34.018307, 33.613922, 48.905434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983932, 33.811760, 49.036880>,  <33.926643, 34.141491, 49.255959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983932, 33.811760, 49.036880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152470, 0.565172, -0.810761,
		0.977875, 0.032611, 0.206630,
		0.143221, -0.824328, -0.547696,
		34.026897, 33.564461, 48.872570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340458, 34.384285, 48.742809>,  <33.926643, 34.141491, 49.255959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340458, 34.384285, 48.742809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245125, 34.025146, 48.594715>,  <34.187927, 33.809666, 48.505859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245125, 34.025146, 48.594715>,  <34.340458, 34.384285, 48.742809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245125, 34.025146, 48.594715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355583, 0.274081, -0.893555,
		0.903747, -0.344612, 0.253936,
		-0.238331, -0.897843, -0.370238,
		34.173626, 33.755795, 48.483643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890778, 34.281540, 48.338135>,  <34.340458, 34.384285, 48.742809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890778, 34.281540, 48.338135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613247, 34.031261, 48.195526>,  <34.446728, 33.881092, 48.109962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613247, 34.031261, 48.195526>,  <34.890778, 34.281540, 48.338135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613247, 34.031261, 48.195526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268099, 0.235055, -0.934276,
		0.668377, -0.743808, 0.004662,
		-0.693826, -0.625699, -0.356520,
		34.405098, 33.843552, 48.088570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237331, 33.897564, 47.907612>,  <34.890778, 34.281540, 48.338135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237331, 33.897564, 47.907612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858479, 33.875523, 47.781178>,  <34.631168, 33.862297, 47.705315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858479, 33.875523, 47.781178>,  <35.237331, 33.897564, 47.907612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858479, 33.875523, 47.781178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310204, 0.094461, -0.945966,
		0.081975, -0.994003, -0.072376,
		-0.947129, -0.055094, -0.316087,
		34.574341, 33.858990, 47.686352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294926, 33.489677, 47.297169>,  <35.237331, 33.897564, 47.907612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294926, 33.489677, 47.297169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928345, 33.645744, 47.261665>,  <34.708397, 33.739384, 47.240364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928345, 33.645744, 47.261665>,  <35.294926, 33.489677, 47.297169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928345, 33.645744, 47.261665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192836, 0.236287, -0.952356,
		-0.350606, -0.889908, -0.291785,
		-0.916455, 0.390169, -0.088763,
		34.653408, 33.762794, 47.235035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964230, 33.190559, 46.753174>,  <35.294926, 33.489677, 47.297169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964230, 33.190559, 46.753174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760166, 33.530891, 46.803501>,  <34.637730, 33.735088, 46.833698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760166, 33.530891, 46.803501>,  <34.964230, 33.190559, 46.753174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760166, 33.530891, 46.803501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061841, 0.182199, -0.981315,
		-0.857854, -0.492845, -0.145567,
		-0.510158, 0.850828, 0.125822,
		34.607121, 33.786140, 46.841248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523956, 33.238640, 46.231388>,  <34.964230, 33.190559, 46.753174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523956, 33.238640, 46.231388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513550, 33.623425, 46.340157>,  <34.507305, 33.854298, 46.405418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513550, 33.623425, 46.340157>,  <34.523956, 33.238640, 46.231388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513550, 33.623425, 46.340157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009876, 0.271757, -0.962315,
		-0.999613, -0.027723, 0.002430,
		-0.026018, 0.961967, 0.271926,
		34.505745, 33.912014, 46.421734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122921, 33.602566, 45.715809>,  <34.523956, 33.238640, 46.231388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122921, 33.602566, 45.715809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329407, 33.891365, 45.900085>,  <34.453300, 34.064644, 46.010651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329407, 33.891365, 45.900085>,  <34.122921, 33.602566, 45.715809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329407, 33.891365, 45.900085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121354, 0.470817, -0.873845,
		-0.847817, 0.507000, 0.155426,
		0.516216, 0.721999, 0.460693,
		34.484272, 34.107964, 46.038292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804356, 34.225689, 45.474880>,  <34.122921, 33.602566, 45.715809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804356, 34.225689, 45.474880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178940, 34.300301, 45.593712>,  <34.403690, 34.345066, 45.665009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178940, 34.300301, 45.593712>,  <33.804356, 34.225689, 45.474880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178940, 34.300301, 45.593712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179315, 0.473329, -0.862442,
		-0.301486, 0.860910, 0.409805,
		0.936457, 0.186531, 0.297076,
		34.459877, 34.356258, 45.682835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869232, 34.958435, 45.302250>,  <33.804356, 34.225689, 45.474880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869232, 34.958435, 45.302250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248108, 34.833347, 45.330673>,  <34.475433, 34.758297, 45.347729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248108, 34.833347, 45.330673>,  <33.869232, 34.958435, 45.302250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248108, 34.833347, 45.330673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231240, 0.512488, -0.826973,
		0.222190, 0.799728, 0.557733,
		0.947185, -0.312716, 0.071059,
		34.532265, 34.739532, 45.351990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325294, 35.541908, 45.218700>,  <33.869232, 34.958435, 45.302250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325294, 35.541908, 45.218700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.585663, 35.245064, 45.154732>,  <34.741882, 35.066956, 45.116352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.585663, 35.245064, 45.154732>,  <34.325294, 35.541908, 45.218700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585663, 35.245064, 45.154732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454559, 0.549728, -0.700839,
		0.608011, 0.383500, 0.695163,
		0.650922, -0.742110, -0.159917,
		34.780941, 35.022430, 45.106758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887222, 35.942596, 45.242962>,  <34.325294, 35.541908, 45.218700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887222, 35.942596, 45.242962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974926, 35.609970, 45.038837>,  <35.027550, 35.410393, 44.916363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974926, 35.609970, 45.038837>,  <34.887222, 35.942596, 45.242962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974926, 35.609970, 45.038837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447070, 0.550526, -0.705017,
		0.867211, -0.073563, 0.492478,
		0.219259, -0.831571, -0.510310,
		35.040703, 35.360500, 44.885746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520916, 36.165249, 44.913235>,  <34.887222, 35.942596, 45.242962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520916, 36.165249, 44.913235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383724, 35.848362, 44.711338>,  <35.301411, 35.658230, 44.590202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383724, 35.848362, 44.711338>,  <35.520916, 36.165249, 44.913235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383724, 35.848362, 44.711338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410817, 0.356714, -0.839038,
		0.844745, -0.495128, 0.203110,
		-0.342979, -0.792214, -0.504740,
		35.280830, 35.610699, 44.559917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117485, 35.779999, 44.498428>,  <35.520916, 36.165249, 44.913235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117485, 35.779999, 44.498428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.752857, 35.734650, 44.340351>,  <35.534081, 35.707439, 44.245502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.752857, 35.734650, 44.340351>,  <36.117485, 35.779999, 44.498428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752857, 35.734650, 44.340351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357953, 0.253980, -0.898534,
		0.202241, -0.960542, -0.190939,
		-0.911575, -0.113373, -0.395195,
		35.479385, 35.700638, 44.221794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.316219, 39.341049, 28.013226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961685, 39.426785, 27.849043>,  <41.748966, 39.478226, 27.750534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961685, 39.426785, 27.849043>,  <42.316219, 39.341049, 28.013226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961685, 39.426785, 27.849043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382721, -0.838072, 0.388794,
		-0.260657, 0.501690, 0.824842,
		-0.886331, 0.214342, -0.410457,
		41.695786, 39.491089, 27.725906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949764, 39.238144, 28.562038>,  <42.316219, 39.341049, 28.013226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949764, 39.238144, 28.562038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.721565, 39.212082, 28.234554>,  <41.584644, 39.196445, 28.038063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.721565, 39.212082, 28.234554>,  <41.949764, 39.238144, 28.562038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721565, 39.212082, 28.234554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417517, -0.835423, 0.357419,
		-0.707257, 0.545733, 0.449403,
		-0.570497, -0.065154, -0.818711,
		41.550415, 39.192535, 27.988941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294613, 39.266529, 28.865316>,  <41.949764, 39.238144, 28.562038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294613, 39.266529, 28.865316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.266338, 39.067570, 28.519461>,  <41.249374, 38.948196, 28.311947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.266338, 39.067570, 28.519461>,  <41.294613, 39.266529, 28.865316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266338, 39.067570, 28.519461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505363, -0.729473, 0.460953,
		-0.860007, 0.469541, -0.199801,
		-0.070687, -0.497394, -0.864640,
		41.245132, 38.918350, 28.260069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690163, 38.976418, 28.997725>,  <41.294613, 39.266529, 28.865316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690163, 38.976418, 28.997725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.839134, 38.784061, 28.680225>,  <40.928516, 38.668648, 28.489725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.839134, 38.784061, 28.680225>,  <40.690163, 38.976418, 28.997725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839134, 38.784061, 28.680225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263771, -0.874856, 0.406267,
		-0.889786, 0.058060, -0.452670,
		0.372433, -0.480892, -0.793749,
		40.950863, 38.639793, 28.442101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179111, 38.409573, 28.866961>,  <40.690163, 38.976418, 28.997725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179111, 38.409573, 28.866961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518684, 38.294167, 28.689842>,  <40.722427, 38.224922, 28.583570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518684, 38.294167, 28.689842>,  <40.179111, 38.409573, 28.866961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518684, 38.294167, 28.689842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095204, -0.907622, 0.408851,
		-0.519852, -0.304932, -0.797979,
		0.848935, -0.288512, -0.442798,
		40.773365, 38.207611, 28.557003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933624, 37.815758, 28.520185>,  <40.179111, 38.409573, 28.866961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933624, 37.815758, 28.520185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332233, 37.800762, 28.549955>,  <40.571400, 37.791767, 28.567818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332233, 37.800762, 28.549955>,  <39.933624, 37.815758, 28.520185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332233, 37.800762, 28.549955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070935, -0.850285, 0.521521,
		0.043731, -0.524986, -0.849986,
		0.996522, -0.037487, 0.074424,
		40.631191, 37.789516, 28.572283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225632, 37.038040, 28.356821>,  <39.933624, 37.815758, 28.520185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225632, 37.038040, 28.356821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489479, 37.256214, 28.563665>,  <40.647789, 37.387119, 28.687771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489479, 37.256214, 28.563665>,  <40.225632, 37.038040, 28.356821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489479, 37.256214, 28.563665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179064, -0.782245, 0.596682,
		0.729957, -0.300988, -0.613652,
		0.659621, 0.545435, 0.517109,
		40.687366, 37.419846, 28.718798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771339, 36.537098, 28.480770>,  <40.225632, 37.038040, 28.356821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771339, 36.537098, 28.480770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838997, 36.825523, 28.749531>,  <40.879593, 36.998581, 28.910788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838997, 36.825523, 28.749531>,  <40.771339, 36.537098, 28.480770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838997, 36.825523, 28.749531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354810, -0.680566, 0.641046,
		0.919510, 0.129966, -0.370959,
		0.169148, 0.721068, 0.671900,
		40.889740, 37.041843, 28.951101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400730, 36.444324, 28.710859>,  <40.771339, 36.537098, 28.480770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400730, 36.444324, 28.710859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272240, 36.698429, 28.991789>,  <41.195145, 36.850891, 29.160347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272240, 36.698429, 28.991789>,  <41.400730, 36.444324, 28.710859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272240, 36.698429, 28.991789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679697, -0.361747, 0.638084,
		0.659412, 0.682338, -0.315580,
		-0.321229, 0.635259, 0.702323,
		41.175873, 36.889008, 29.202486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889370, 36.531460, 29.126574>,  <41.400730, 36.444324, 28.710859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889370, 36.531460, 29.126574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.603493, 36.667576, 29.371002>,  <41.431965, 36.749245, 29.517660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.603493, 36.667576, 29.371002>,  <41.889370, 36.531460, 29.126574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603493, 36.667576, 29.371002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458710, -0.431496, 0.776786,
		0.528008, 0.835472, 0.152294,
		-0.714697, 0.340290, 0.611073,
		41.389084, 36.769665, 29.554323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182613, 36.917740, 29.708206>,  <41.889370, 36.531460, 29.126574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182613, 36.917740, 29.708206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821541, 36.786987, 29.820145>,  <41.604897, 36.708534, 29.887308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821541, 36.786987, 29.820145>,  <42.182613, 36.917740, 29.708206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821541, 36.786987, 29.820145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392717, -0.359970, 0.846283,
		-0.175897, 0.873825, 0.453310,
		-0.902681, -0.326881, 0.279848,
		41.550735, 36.688923, 29.904099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211056, 37.019962, 30.402552>,  <42.182613, 36.917740, 29.708206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211056, 37.019962, 30.402552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.909885, 36.760715, 30.356873>,  <41.729183, 36.605167, 30.329466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.909885, 36.760715, 30.356873>,  <42.211056, 37.019962, 30.402552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909885, 36.760715, 30.356873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199811, -0.390466, 0.898672,
		-0.627038, 0.653816, 0.423494,
		-0.752927, -0.648120, -0.114198,
		41.684006, 36.566280, 30.322613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709732, 37.120487, 31.047102>,  <42.211056, 37.019962, 30.402552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709732, 37.120487, 31.047102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670177, 36.755291, 30.888779>,  <41.646446, 36.536171, 30.793785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670177, 36.755291, 30.888779>,  <41.709732, 37.120487, 31.047102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670177, 36.755291, 30.888779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379438, -0.402302, 0.833175,
		-0.919918, -0.067796, 0.386206,
		-0.098885, -0.912994, -0.395809,
		41.640511, 36.481392, 30.770037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515450, 36.649937, 31.632505>,  <41.709732, 37.120487, 31.047102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515450, 36.649937, 31.632505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654381, 36.404285, 31.349039>,  <41.737740, 36.256893, 31.178959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654381, 36.404285, 31.349039>,  <41.515450, 36.649937, 31.632505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654381, 36.404285, 31.349039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462723, -0.545063, 0.699138,
		-0.815631, -0.570743, 0.094860,
		0.347323, -0.614132, -0.708666,
		41.758579, 36.220047, 31.136438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238846, 35.963757, 31.790197>,  <41.515450, 36.649937, 31.632505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238846, 35.963757, 31.790197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.560299, 35.906219, 31.559202>,  <41.753170, 35.871696, 31.420605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.560299, 35.906219, 31.559202>,  <41.238846, 35.963757, 31.790197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560299, 35.906219, 31.559202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427759, -0.535033, 0.728534,
		-0.413768, -0.832496, -0.368438,
		0.803629, -0.143842, -0.577487,
		41.801388, 35.863068, 31.385956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493378, 35.240318, 31.875229>,  <41.238846, 35.963757, 31.790197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493378, 35.240318, 31.875229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.807880, 35.412167, 31.697586>,  <41.996582, 35.515274, 31.591000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.807880, 35.412167, 31.697586>,  <41.493378, 35.240318, 31.875229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807880, 35.412167, 31.697586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609100, -0.659768, 0.440119,
		-0.103924, -0.616551, -0.780426,
		0.786255, 0.429618, -0.444107,
		42.043758, 35.541054, 31.564354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803146, 34.715027, 31.568890>,  <41.493378, 35.240318, 31.875229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803146, 34.715027, 31.568890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.089542, 34.987350, 31.630671>,  <42.261379, 35.150745, 31.667740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.089542, 34.987350, 31.630671>,  <41.803146, 34.715027, 31.568890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089542, 34.987350, 31.630671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488038, -0.646337, 0.586572,
		0.499172, -0.344602, -0.795033,
		0.715993, 0.680807, 0.154454,
		42.304340, 35.191593, 31.677008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393494, 34.359272, 31.557655>,  <41.803146, 34.715027, 31.568890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393494, 34.359272, 31.557655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510792, 34.704166, 31.722851>,  <42.581169, 34.911102, 31.821968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510792, 34.704166, 31.722851>,  <42.393494, 34.359272, 31.557655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510792, 34.704166, 31.722851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446626, -0.505494, 0.738242,
		0.845301, -0.032035, -0.533330,
		0.293245, 0.862235, 0.412987,
		42.598766, 34.962837, 31.846746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029552, 34.237991, 31.829424>,  <42.393494, 34.359272, 31.557655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029552, 34.237991, 31.829424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942554, 34.578098, 32.021152>,  <42.890354, 34.782162, 32.136189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942554, 34.578098, 32.021152>,  <43.029552, 34.237991, 31.829424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942554, 34.578098, 32.021152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411785, -0.365303, 0.834858,
		0.884946, 0.378955, -0.270673,
		-0.217496, 0.850263, 0.479321,
		42.877304, 34.833176, 32.164948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639969, 34.365295, 32.221699>,  <43.029552, 34.237991, 31.829424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639969, 34.365295, 32.221699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355526, 34.596500, 32.381813>,  <43.184860, 34.735222, 32.477882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355526, 34.596500, 32.381813>,  <43.639969, 34.365295, 32.221699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355526, 34.596500, 32.381813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402173, -0.132585, 0.905913,
		0.576700, 0.805186, -0.138178,
		-0.711108, 0.578011, 0.400286,
		43.142193, 34.769905, 32.501900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967926, 34.860413, 32.622936>,  <43.639969, 34.365295, 32.221699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967926, 34.860413, 32.622936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.598709, 34.848057, 32.776314>,  <43.377178, 34.840641, 32.868340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.598709, 34.848057, 32.776314>,  <43.967926, 34.860413, 32.622936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598709, 34.848057, 32.776314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384668, -0.084455, 0.919184,
		0.003987, 0.995948, 0.089840,
		-0.923047, -0.030894, 0.383446,
		43.321796, 34.838787, 32.891346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893162, 35.023109, 33.433250>,  <43.967926, 34.860413, 32.622936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893162, 35.023109, 33.433250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264259, 35.163147, 33.484978>,  <44.486919, 35.247169, 33.516014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264259, 35.163147, 33.484978>,  <43.893162, 35.023109, 33.433250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264259, 35.163147, 33.484978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034712, 0.425942, -0.904084,
		-0.371596, 0.834271, 0.407318,
		0.927745, 0.350093, 0.129319,
		44.542583, 35.268173, 33.523773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916771, 35.775246, 33.333290>,  <43.893162, 35.023109, 33.433250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916771, 35.775246, 33.333290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276253, 35.616276, 33.259106>,  <44.491940, 35.520893, 33.214596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276253, 35.616276, 33.259106>,  <43.916771, 35.775246, 33.333290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276253, 35.616276, 33.259106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008444, 0.438483, -0.898700,
		0.438483, 0.806095, 0.397420,
		0.898700, -0.397420, -0.185461,
		44.545864, 35.497051, 33.203468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188374, 36.236034, 32.877266>,  <43.916771, 35.775246, 33.333290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188374, 36.236034, 32.877266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.452072, 35.938690, 32.831997>,  <44.610291, 35.760284, 32.804836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.452072, 35.938690, 32.831997>,  <44.188374, 36.236034, 32.877266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452072, 35.938690, 32.831997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362484, 0.446054, -0.818316,
		0.658785, 0.498449, 0.563516,
		0.659248, -0.743360, -0.113174,
		44.649845, 35.715683, 32.798046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793213, 36.534756, 32.667526>,  <44.188374, 36.236034, 32.877266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793213, 36.534756, 32.667526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837067, 36.146889, 32.580139>,  <44.863377, 35.914169, 32.527706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837067, 36.146889, 32.580139>,  <44.793213, 36.534756, 32.667526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837067, 36.146889, 32.580139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387705, 0.244103, -0.888875,
		0.915241, 0.012745, 0.402705,
		0.109630, -0.969666, -0.218471,
		44.869957, 35.855988, 32.514599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426792, 36.523361, 32.415337>,  <44.793213, 36.534756, 32.667526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426792, 36.523361, 32.415337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.264805, 36.189793, 32.265358>,  <45.167614, 35.989651, 32.175373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.264805, 36.189793, 32.265358>,  <45.426792, 36.523361, 32.415337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264805, 36.189793, 32.265358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313903, 0.258347, -0.913631,
		0.858760, -0.487684, 0.157148,
		-0.404965, -0.833919, -0.374944,
		45.143314, 35.939617, 32.152874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.964340, 36.202507, 31.998507>,  <45.426792, 36.523361, 32.415337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.964340, 36.202507, 31.998507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602520, 36.082207, 31.877626>,  <45.385426, 36.010025, 31.805098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602520, 36.082207, 31.877626>,  <45.964340, 36.202507, 31.998507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602520, 36.082207, 31.877626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258178, 0.177688, -0.949616,
		0.339301, -0.937002, -0.083080,
		-0.904555, -0.300756, -0.302203,
		45.331154, 35.991982, 31.786966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.125187, 35.948021, 31.309250>,  <45.964340, 36.202507, 31.998507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.125187, 35.948021, 31.309250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.725845, 35.961960, 31.327501>,  <45.486240, 35.970325, 31.338451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.725845, 35.961960, 31.327501>,  <46.125187, 35.948021, 31.309250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725845, 35.961960, 31.327501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044698, 0.026980, -0.998636,
		-0.036035, -0.999028, -0.025378,
		-0.998350, 0.034851, 0.045627,
		45.426342, 35.972416, 31.341188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822365, 35.596882, 30.718077>,  <46.125187, 35.948021, 31.309250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822365, 35.596882, 30.718077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.533894, 35.850483, 30.829744>,  <45.360809, 36.002644, 30.896746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.533894, 35.850483, 30.829744>,  <45.822365, 35.596882, 30.718077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533894, 35.850483, 30.829744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118906, 0.283719, -0.951507,
		-0.682468, -0.719401, -0.129225,
		-0.721179, 0.634008, 0.279170,
		45.317539, 36.040684, 30.913496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342098, 35.646347, 30.185507>,  <45.822365, 35.596882, 30.718077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342098, 35.646347, 30.185507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251778, 35.996204, 30.357092>,  <45.197586, 36.206120, 30.460043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251778, 35.996204, 30.357092>,  <45.342098, 35.646347, 30.185507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251778, 35.996204, 30.357092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164295, 0.399839, -0.901741,
		-0.960220, -0.274089, 0.053416,
		-0.225799, 0.874645, 0.428964,
		45.184036, 36.258598, 30.485781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660271, 35.873482, 29.977407>,  <45.342098, 35.646347, 30.185507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660271, 35.873482, 29.977407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812321, 36.218407, 30.111225>,  <44.903549, 36.425362, 30.191517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812321, 36.218407, 30.111225>,  <44.660271, 35.873482, 29.977407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812321, 36.218407, 30.111225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403603, 0.480084, -0.778861,
		-0.832233, 0.161037, 0.530523,
		0.380121, 0.862315, 0.334546,
		44.926357, 36.477100, 30.211590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082470, 36.356628, 29.952065>,  <44.660271, 35.873482, 29.977407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082470, 36.356628, 29.952065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425026, 36.562912, 29.962114>,  <44.630562, 36.686684, 29.968145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425026, 36.562912, 29.962114>,  <44.082470, 36.356628, 29.952065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425026, 36.562912, 29.962114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382542, 0.666431, -0.639946,
		-0.346772, 0.538434, 0.768009,
		0.856394, 0.515711, 0.025126,
		44.681946, 36.717625, 29.969652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921791, 37.092777, 29.885170>,  <44.082470, 36.356628, 29.952065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921791, 37.092777, 29.885170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317780, 37.106949, 29.830462>,  <44.555370, 37.115452, 29.797636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317780, 37.106949, 29.830462>,  <43.921791, 37.092777, 29.885170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317780, 37.106949, 29.830462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106533, 0.823024, -0.557927,
		0.092802, 0.566901, 0.818542,
		0.989969, 0.035425, -0.136772,
		44.614769, 37.117577, 29.789431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111851, 37.816368, 30.058474>,  <43.921791, 37.092777, 29.885170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111851, 37.816368, 30.058474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393200, 37.660053, 29.820971>,  <44.562012, 37.566265, 29.678469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393200, 37.660053, 29.820971>,  <44.111851, 37.816368, 30.058474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393200, 37.660053, 29.820971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098025, 0.774006, -0.625545,
		0.704028, 0.498196, 0.506109,
		0.703375, -0.390789, -0.593757,
		44.604214, 37.542816, 29.642843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568661, 38.427307, 29.903486>,  <44.111851, 37.816368, 30.058474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568661, 38.427307, 29.903486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598606, 38.134083, 29.633076>,  <44.616573, 37.958149, 29.470829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598606, 38.134083, 29.633076>,  <44.568661, 38.427307, 29.903486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598606, 38.134083, 29.633076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187486, 0.655493, -0.731559,
		0.979411, 0.181511, -0.088368,
		0.074861, -0.733064, -0.676028,
		44.621063, 37.914165, 29.430267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962769, 38.729057, 29.426809>,  <44.568661, 38.427307, 29.903486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962769, 38.729057, 29.426809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.768070, 38.430199, 29.245768>,  <44.651253, 38.250885, 29.137142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.768070, 38.430199, 29.245768>,  <44.962769, 38.729057, 29.426809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768070, 38.430199, 29.245768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261042, 0.618858, -0.740859,
		0.833628, -0.242461, -0.496263,
		-0.486745, -0.747146, -0.452605,
		44.622047, 38.206055, 29.109985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098404, 38.869072, 28.764668>,  <44.962769, 38.729057, 29.426809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098404, 38.869072, 28.764668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798939, 38.608109, 28.717554>,  <44.619259, 38.451530, 28.689287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798939, 38.608109, 28.717554>,  <45.098404, 38.869072, 28.764668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798939, 38.608109, 28.717554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408497, 0.593895, -0.693123,
		0.522147, -0.470801, -0.711132,
		-0.748661, -0.652407, -0.117780,
		44.574341, 38.412388, 28.682220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890911, 38.946949, 28.042473>,  <45.098404, 38.869072, 28.764668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890911, 38.946949, 28.042473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581181, 38.779507, 28.232290>,  <44.395344, 38.679043, 28.346180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581181, 38.779507, 28.232290>,  <44.890911, 38.946949, 28.042473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581181, 38.779507, 28.232290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627756, 0.413761, -0.659336,
		0.079654, -0.808438, -0.583167,
		-0.774324, -0.418605, 0.474544,
		44.348885, 38.653923, 28.374653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577209, 38.505119, 27.657524>,  <44.890911, 38.946949, 28.042473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577209, 38.505119, 27.657524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295612, 38.614368, 27.919760>,  <44.126652, 38.679916, 28.077101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295612, 38.614368, 27.919760>,  <44.577209, 38.505119, 27.657524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295612, 38.614368, 27.919760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504019, 0.458208, -0.732128,
		-0.500354, -0.845843, -0.184919,
		-0.703996, 0.273121, 0.655587,
		44.084412, 38.696304, 28.116436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817673, 38.429523, 27.341505>,  <44.577209, 38.505119, 27.657524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817673, 38.429523, 27.341505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.789757, 38.672699, 27.657869>,  <43.773006, 38.818604, 27.847689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.789757, 38.672699, 27.657869>,  <43.817673, 38.429523, 27.341505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789757, 38.672699, 27.657869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493857, 0.667812, -0.556896,
		-0.866737, -0.429466, 0.253625,
		-0.069794, 0.607937, 0.790912,
		43.768818, 38.855080, 27.895144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166489, 38.588127, 27.421167>,  <43.817673, 38.429523, 27.341505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166489, 38.588127, 27.421167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357952, 38.894005, 27.593739>,  <43.472832, 39.077530, 27.697281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357952, 38.894005, 27.593739>,  <43.166489, 38.588127, 27.421167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357952, 38.894005, 27.593739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536007, 0.643688, -0.546225,
		-0.695400, 0.030207, 0.717988,
		0.478660, 0.764692, 0.431429,
		43.501549, 39.123413, 27.723167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647728, 39.082333, 27.383009>,  <43.166489, 38.588127, 27.421167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647728, 39.082333, 27.383009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.984947, 39.274990, 27.478750>,  <43.187279, 39.390583, 27.536196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.984947, 39.274990, 27.478750>,  <42.647728, 39.082333, 27.383009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984947, 39.274990, 27.478750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259339, 0.753908, -0.603628,
		-0.471183, 0.446814, 0.760489,
		0.843048, 0.481643, 0.239353,
		43.237862, 39.419483, 27.550556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.213154, 34.521729, 39.925610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816025, 34.479176, 39.903767>,  <39.577747, 34.453644, 39.890659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816025, 34.479176, 39.903767>,  <40.213154, 34.521729, 39.925610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816025, 34.479176, 39.903767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078074, -0.230813, -0.969861,
		0.090571, -0.967165, 0.237462,
		-0.992825, -0.106381, -0.054606,
		39.518177, 34.447262, 39.887386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224247, 33.918064, 39.616558>,  <40.213154, 34.521729, 39.925610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224247, 33.918064, 39.616558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870663, 34.097363, 39.563354>,  <39.658512, 34.204941, 39.531433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870663, 34.097363, 39.563354>,  <40.224247, 33.918064, 39.616558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870663, 34.097363, 39.563354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160136, 0.022969, -0.986828,
		-0.439282, -0.893617, -0.092083,
		-0.883961, 0.448242, -0.133011,
		39.605473, 34.231834, 39.523453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941982, 33.535824, 39.072536>,  <40.224247, 33.918064, 39.616558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941982, 33.535824, 39.072536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729298, 33.874451, 39.062675>,  <39.601688, 34.077625, 39.056759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729298, 33.874451, 39.062675>,  <39.941982, 33.535824, 39.072536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729298, 33.874451, 39.062675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102666, 0.035532, -0.994081,
		-0.840681, -0.531094, -0.105807,
		-0.531710, 0.846568, -0.024654,
		39.569786, 34.128422, 39.055279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358902, 33.569649, 38.484684>,  <39.941982, 33.535824, 39.072536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358902, 33.569649, 38.484684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410820, 33.959679, 38.556667>,  <39.441971, 34.193695, 38.599857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410820, 33.959679, 38.556667>,  <39.358902, 33.569649, 38.484684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410820, 33.959679, 38.556667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066552, 0.189655, -0.979593,
		-0.989305, 0.115169, 0.089509,
		0.129795, 0.975073, 0.179962,
		39.449757, 34.252201, 38.610657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955502, 33.877518, 37.973747>,  <39.358902, 33.569649, 38.484684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955502, 33.877518, 37.973747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205231, 34.162582, 38.101707>,  <39.355068, 34.333618, 38.178482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205231, 34.162582, 38.101707>,  <38.955502, 33.877518, 37.973747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205231, 34.162582, 38.101707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174158, 0.272227, -0.946341,
		-0.761503, 0.646539, 0.045843,
		0.624326, 0.712657, 0.319902,
		39.392529, 34.376381, 38.197678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750401, 34.463413, 37.725304>,  <38.955502, 33.877518, 37.973747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750401, 34.463413, 37.725304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132401, 34.531513, 37.822449>,  <39.361603, 34.572372, 37.880737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132401, 34.531513, 37.822449>,  <38.750401, 34.463413, 37.725304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132401, 34.531513, 37.822449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137038, 0.472925, -0.870381,
		-0.263036, 0.864499, 0.428315,
		0.955004, 0.170246, 0.242866,
		39.418903, 34.582588, 37.895309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812229, 35.076214, 37.580170>,  <38.750401, 34.463413, 37.725304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812229, 35.076214, 37.580170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194553, 34.959263, 37.592381>,  <39.423950, 34.889091, 37.599709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194553, 34.959263, 37.592381>,  <38.812229, 35.076214, 37.580170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194553, 34.959263, 37.592381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204504, 0.586728, -0.783536,
		0.211177, 0.755159, 0.620596,
		0.955815, -0.292379, 0.030529,
		39.481297, 34.871548, 37.601540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186008, 35.738911, 37.408978>,  <38.812229, 35.076214, 37.580170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186008, 35.738911, 37.408978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426567, 35.423962, 37.354752>,  <39.570900, 35.234993, 37.322216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426567, 35.423962, 37.354752>,  <39.186008, 35.738911, 37.408978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426567, 35.423962, 37.354752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341927, 0.406999, -0.847017,
		0.722089, 0.463036, 0.513989,
		0.601393, -0.787368, -0.135565,
		39.606983, 35.187752, 37.314083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923225, 35.961422, 37.369053>,  <39.186008, 35.738911, 37.408978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923225, 35.961422, 37.369053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889217, 35.608768, 37.183372>,  <39.868813, 35.397175, 37.071964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889217, 35.608768, 37.183372>,  <39.923225, 35.961422, 37.369053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889217, 35.608768, 37.183372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466785, 0.376360, -0.800291,
		0.880275, -0.284724, 0.379538,
		-0.085019, -0.881638, -0.464205,
		39.863712, 35.344276, 37.044109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482075, 35.976593, 37.015644>,  <39.923225, 35.961422, 37.369053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482075, 35.976593, 37.015644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263668, 35.691200, 36.840004>,  <40.132622, 35.519966, 36.734619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263668, 35.691200, 36.840004>,  <40.482075, 35.976593, 37.015644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263668, 35.691200, 36.840004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415955, 0.224080, -0.881346,
		0.727216, -0.663877, 0.174424,
		-0.546020, -0.713481, -0.439098,
		40.099861, 35.477158, 36.708275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932575, 35.648266, 36.599991>,  <40.482075, 35.976593, 37.015644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932575, 35.648266, 36.599991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578068, 35.529362, 36.457916>,  <40.365364, 35.458019, 36.372669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578068, 35.529362, 36.457916>,  <40.932575, 35.648266, 36.599991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578068, 35.529362, 36.457916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311190, 0.185828, -0.932002,
		0.343051, -0.936538, -0.072190,
		-0.886271, -0.297260, -0.355190,
		40.312187, 35.440186, 36.351360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126907, 35.371582, 35.904057>,  <40.932575, 35.648266, 36.599991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126907, 35.371582, 35.904057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735336, 35.453175, 35.908024>,  <40.500393, 35.502132, 35.910404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735336, 35.453175, 35.908024>,  <41.126907, 35.371582, 35.904057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735336, 35.453175, 35.908024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049154, 0.282488, -0.958011,
		-0.198223, -0.937332, -0.286560,
		-0.978923, 0.203986, 0.009922,
		40.441658, 35.514370, 35.910999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650471, 34.931229, 35.484520>,  <41.126907, 35.371582, 35.904057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650471, 34.931229, 35.484520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520969, 35.309593, 35.492802>,  <40.443268, 35.536613, 35.497772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520969, 35.309593, 35.492802>,  <40.650471, 34.931229, 35.484520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520969, 35.309593, 35.492802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084571, 0.050729, -0.995125,
		-0.942354, -0.320425, -0.096421,
		-0.323754, 0.945915, 0.020706,
		40.423843, 35.593369, 35.499012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941795, 34.279034, 35.475178>,  <40.650471, 34.931229, 35.484520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941795, 34.279034, 35.475178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870914, 33.925953, 35.301083>,  <40.828384, 33.714104, 35.196625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870914, 33.925953, 35.301083>,  <40.941795, 34.279034, 35.475178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870914, 33.925953, 35.301083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794320, -0.132828, 0.592799,
		-0.581079, 0.450764, -0.677613,
		-0.177207, -0.882705, -0.435235,
		40.817753, 33.661140, 35.170513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184235, 34.250420, 35.302937>,  <40.941795, 34.279034, 35.475178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184235, 34.250420, 35.302937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371300, 33.908188, 35.391727>,  <40.483540, 33.702850, 35.445000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371300, 33.908188, 35.391727>,  <40.184235, 34.250420, 35.302937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371300, 33.908188, 35.391727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730853, -0.233051, 0.641515,
		-0.497137, -0.462242, -0.734293,
		0.467663, -0.855581, 0.221973,
		40.511600, 33.651512, 35.458321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664318, 33.750202, 35.252800>,  <40.184235, 34.250420, 35.302937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664318, 33.750202, 35.252800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945553, 33.565273, 35.468922>,  <40.114292, 33.454315, 35.598595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945553, 33.565273, 35.468922>,  <39.664318, 33.750202, 35.252800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945553, 33.565273, 35.468922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705327, -0.356740, 0.612576,
		-0.090458, -0.811786, -0.576906,
		0.703087, -0.462320, 0.540305,
		40.156479, 33.426579, 35.631012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396420, 33.176743, 35.392281>,  <39.664318, 33.750202, 35.252800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396420, 33.176743, 35.392281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681717, 33.189053, 35.672379>,  <39.852894, 33.196438, 35.840435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681717, 33.189053, 35.672379>,  <39.396420, 33.176743, 35.392281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681717, 33.189053, 35.672379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637055, -0.388184, 0.665939,
		0.292316, -0.921068, -0.257265,
		0.713241, 0.030773, 0.700243,
		39.895691, 33.198284, 35.882450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262688, 32.596237, 35.729263>,  <39.396420, 33.176743, 35.392281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262688, 32.596237, 35.729263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510056, 32.763836, 35.995197>,  <39.658474, 32.864395, 36.154758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510056, 32.763836, 35.995197>,  <39.262688, 32.596237, 35.729263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510056, 32.763836, 35.995197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476173, -0.473221, 0.741162,
		0.625157, -0.774923, -0.093133,
		0.618416, 0.418995, 0.664834,
		39.695580, 32.889534, 36.194649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609467, 31.993151, 36.048851>,  <39.262688, 32.596237, 35.729263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609467, 31.993151, 36.048851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575981, 32.315536, 36.283257>,  <39.555889, 32.508968, 36.423901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575981, 32.315536, 36.283257>,  <39.609467, 31.993151, 36.048851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575981, 32.315536, 36.283257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534028, -0.532788, 0.656469,
		0.841313, -0.257995, 0.475007,
		-0.083712, 0.805963, 0.586018,
		39.550869, 32.557323, 36.459061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248180, 31.699724, 36.645073>,  <39.609467, 31.993151, 36.048851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248180, 31.699724, 36.645073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233513, 32.094402, 36.708435>,  <39.224712, 32.331207, 36.746452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233513, 32.094402, 36.708435>,  <39.248180, 31.699724, 36.645073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233513, 32.094402, 36.708435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508002, -0.154907, 0.847312,
		0.860575, -0.049398, 0.506922,
		-0.036670, 0.986693, 0.158404,
		39.222511, 32.390411, 36.755955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525204, 31.839653, 37.291866>,  <39.248180, 31.699724, 36.645073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525204, 31.839653, 37.291866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269279, 32.128712, 37.187233>,  <39.115726, 32.302147, 37.124454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269279, 32.128712, 37.187233>,  <39.525204, 31.839653, 37.291866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269279, 32.128712, 37.187233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586388, -0.239017, 0.773964,
		0.496780, 0.648577, 0.576677,
		-0.639811, 0.722646, -0.261579,
		39.077335, 32.345505, 37.108761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597633, 32.277622, 37.925537>,  <39.525204, 31.839653, 37.291866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597633, 32.277622, 37.925537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266224, 32.360844, 37.717590>,  <39.067379, 32.410774, 37.592823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266224, 32.360844, 37.717590>,  <39.597633, 32.277622, 37.925537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266224, 32.360844, 37.717590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548024, -0.110699, 0.829105,
		0.114948, 0.971833, 0.205734,
		-0.828527, 0.208051, -0.519863,
		39.017666, 32.423260, 37.561630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217945, 32.797863, 38.322094>,  <39.597633, 32.277622, 37.925537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217945, 32.797863, 38.322094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953842, 32.629234, 38.073467>,  <38.795380, 32.528057, 37.924294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953842, 32.629234, 38.073467>,  <39.217945, 32.797863, 38.322094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953842, 32.629234, 38.073467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657199, -0.076279, 0.749847,
		-0.363525, 0.903582, -0.226692,
		-0.660257, -0.421570, -0.621562,
		38.755764, 32.502762, 37.886997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591309, 33.165470, 38.474159>,  <39.217945, 32.797863, 38.322094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591309, 33.165470, 38.474159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469696, 32.826473, 38.300114>,  <38.396729, 32.623074, 38.195686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469696, 32.826473, 38.300114>,  <38.591309, 33.165470, 38.474159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469696, 32.826473, 38.300114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584011, -0.195041, 0.787965,
		-0.752660, 0.493675, -0.435647,
		-0.304030, -0.847493, -0.435112,
		38.378487, 32.572224, 38.169579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031780, 33.183876, 38.761673>,  <38.591309, 33.165470, 38.474159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031780, 33.183876, 38.761673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067833, 32.803051, 38.644745>,  <38.089466, 32.574554, 38.574589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067833, 32.803051, 38.644745>,  <38.031780, 33.183876, 38.761673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067833, 32.803051, 38.644745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752049, -0.257490, 0.606730,
		-0.652915, 0.165152, -0.739207,
		0.090135, -0.952063, -0.292322,
		38.094875, 32.517433, 38.557049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306801, 32.945171, 38.654335>,  <38.031780, 33.183876, 38.761673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306801, 32.945171, 38.654335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537998, 32.623222, 38.708164>,  <37.676716, 32.430054, 38.740459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537998, 32.623222, 38.708164>,  <37.306801, 32.945171, 38.654335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537998, 32.623222, 38.708164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683661, -0.387556, 0.618392,
		-0.445575, -0.449421, -0.774263,
		0.577988, -0.804874, 0.134567,
		37.711395, 32.381760, 38.748535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878895, 32.383709, 38.621281>,  <37.306801, 32.945171, 38.654335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878895, 32.383709, 38.621281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200226, 32.233337, 38.806034>,  <37.393024, 32.143116, 38.916885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200226, 32.233337, 38.806034>,  <36.878895, 32.383709, 38.621281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200226, 32.233337, 38.806034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593045, -0.575836, 0.562770,
		0.054410, -0.726010, -0.685529,
		0.803328, -0.375929, 0.461888,
		37.441223, 32.120560, 38.944599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874409, 31.603636, 38.565636>,  <36.878895, 32.383709, 38.621281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874409, 31.603636, 38.565636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103062, 31.672190, 38.886600>,  <37.240253, 31.713322, 39.079178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103062, 31.672190, 38.886600>,  <36.874409, 31.603636, 38.565636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103062, 31.672190, 38.886600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484794, -0.718444, 0.498811,
		0.661976, -0.674141, -0.327600,
		0.571632, 0.171383, 0.802413,
		37.274551, 31.723604, 39.127323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248096, 30.993690, 38.368687>,  <36.874409, 31.603636, 38.565636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248096, 30.993690, 38.368687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913433, 30.850641, 38.202740>,  <36.712635, 30.764812, 38.103172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913433, 30.850641, 38.202740>,  <37.248096, 30.993690, 38.368687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913433, 30.850641, 38.202740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016274, 0.773329, -0.633797,
		0.547490, -0.523517, -0.652829,
		-0.836654, -0.357621, -0.414870,
		36.662437, 30.743355, 38.078278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366867, 30.920183, 37.687759>,  <37.248096, 30.993690, 38.368687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366867, 30.920183, 37.687759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968922, 30.947104, 37.717999>,  <36.730156, 30.963257, 37.736141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968922, 30.947104, 37.717999>,  <37.366867, 30.920183, 37.687759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968922, 30.947104, 37.717999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019671, 0.604102, -0.796665,
		-0.099288, -0.794060, -0.599675,
		-0.994864, 0.067303, 0.075600,
		36.670464, 30.967295, 37.740677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113800, 30.814854, 37.036373>,  <37.366867, 30.920183, 37.687759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113800, 30.814854, 37.036373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837284, 31.030647, 37.228653>,  <36.671375, 31.160124, 37.344021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837284, 31.030647, 37.228653>,  <37.113800, 30.814854, 37.036373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837284, 31.030647, 37.228653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040830, 0.635031, -0.771407,
		-0.721419, -0.552896, -0.416966,
		-0.691294, 0.539483, 0.480698,
		36.629894, 31.192492, 37.372864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473248, 30.785389, 36.657242>,  <37.113800, 30.814854, 37.036373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473248, 30.785389, 36.657242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419262, 31.132084, 36.849308>,  <36.386871, 31.340101, 36.964546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419262, 31.132084, 36.849308>,  <36.473248, 30.785389, 36.657242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419262, 31.132084, 36.849308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321790, 0.419988, -0.848564,
		-0.937143, -0.269033, 0.222225,
		-0.134960, 0.866736, 0.480161,
		36.378773, 31.392105, 36.993355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972374, 31.092030, 36.202511>,  <36.473248, 30.785389, 36.657242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972374, 31.092030, 36.202511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057262, 31.411533, 36.427700>,  <36.108196, 31.603235, 36.562813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057262, 31.411533, 36.427700>,  <35.972374, 31.092030, 36.202511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057262, 31.411533, 36.427700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369605, 0.598913, -0.710419,
		-0.904629, -0.057310, 0.422330,
		0.212225, 0.798761, 0.562975,
		36.120930, 31.651161, 36.596592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401455, 31.565910, 36.287891>,  <35.972374, 31.092030, 36.202511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401455, 31.565910, 36.287891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739861, 31.774073, 36.334267>,  <35.942902, 31.898970, 36.362091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739861, 31.774073, 36.334267>,  <35.401455, 31.565910, 36.287891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739861, 31.774073, 36.334267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379744, 0.740784, -0.554106,
		-0.374244, 0.424754, 0.824333,
		0.846012, 0.520406, 0.115936,
		35.993664, 31.930195, 36.369049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164246, 32.272842, 36.254707>,  <35.401455, 31.565910, 36.287891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164246, 32.272842, 36.254707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561302, 32.305893, 36.219280>,  <35.799534, 32.325722, 36.198025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561302, 32.305893, 36.219280>,  <35.164246, 32.272842, 36.254707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561302, 32.305893, 36.219280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121114, 0.668163, -0.734091,
		-0.001473, 0.739413, 0.673251,
		0.992638, 0.082622, -0.088569,
		35.859093, 32.330681, 36.192711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280136, 32.914692, 36.267277>,  <35.164246, 32.272842, 36.254707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280136, 32.914692, 36.267277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600895, 32.761269, 36.084042>,  <35.793350, 32.669212, 35.974102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600895, 32.761269, 36.084042>,  <35.280136, 32.914692, 36.267277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600895, 32.761269, 36.084042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157271, 0.604166, -0.781184,
		0.576392, 0.698473, 0.424156,
		0.801897, -0.383561, -0.458086,
		35.841465, 32.646202, 35.946617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621910, 33.459164, 36.025753>,  <35.280136, 32.914692, 36.267277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621910, 33.459164, 36.025753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753784, 33.162220, 35.792442>,  <35.832909, 32.984055, 35.652454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753784, 33.162220, 35.792442>,  <35.621910, 33.459164, 36.025753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753784, 33.162220, 35.792442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049562, 0.603358, -0.795929,
		0.942790, 0.291313, 0.162124,
		0.329683, -0.742358, -0.583278,
		35.852688, 32.939514, 35.617458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172798, 33.744225, 35.567078>,  <35.621910, 33.459164, 36.025753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172798, 33.744225, 35.567078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036324, 33.410892, 35.393112>,  <35.954437, 33.210892, 35.288734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036324, 33.410892, 35.393112>,  <36.172798, 33.744225, 35.567078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036324, 33.410892, 35.393112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102697, 0.492948, -0.863976,
		0.934369, -0.250112, -0.253768,
		-0.341186, -0.833334, -0.434910,
		35.933968, 33.160892, 35.262638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356796, 33.909885, 34.983604>,  <36.172798, 33.744225, 35.567078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356796, 33.909885, 34.983604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127384, 33.592926, 34.900494>,  <35.989738, 33.402752, 34.850628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127384, 33.592926, 34.900494>,  <36.356796, 33.909885, 34.983604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127384, 33.592926, 34.900494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390637, 0.487488, -0.780870,
		0.720047, -0.366687, -0.589129,
		-0.573528, -0.792399, -0.207773,
		35.955326, 33.355206, 34.838161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534843, 33.724808, 34.261917>,  <36.356796, 33.909885, 34.983604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534843, 33.724808, 34.261917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167831, 33.600979, 34.361755>,  <35.947624, 33.526684, 34.421658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167831, 33.600979, 34.361755>,  <36.534843, 33.724808, 34.261917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167831, 33.600979, 34.361755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390609, 0.583972, -0.711619,
		0.074537, -0.750430, -0.656734,
		-0.917534, -0.309568, 0.249598,
		35.892570, 33.508110, 34.436634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.887028, 28.023851, 40.800392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.503323, 28.136156, 40.812965>,  <36.273098, 28.203539, 40.820511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.503323, 28.136156, 40.812965>,  <36.887028, 28.023851, 40.800392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503323, 28.136156, 40.812965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073407, 0.355131, -0.931930,
		-0.272815, -0.891658, -0.361274,
		-0.959262, 0.280764, 0.031432,
		36.215546, 28.220385, 40.822395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677551, 27.862722, 40.107525>,  <36.887028, 28.023851, 40.800392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677551, 27.862722, 40.107525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.418339, 28.139637, 40.234520>,  <36.262814, 28.305786, 40.310719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.418339, 28.139637, 40.234520>,  <36.677551, 27.862722, 40.107525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418339, 28.139637, 40.234520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111535, 0.498628, -0.859610,
		-0.753405, -0.521641, -0.400340,
		-0.648028, 0.692287, 0.317487,
		36.223930, 28.347322, 40.329765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302895, 27.997229, 39.499641>,  <36.677551, 27.862722, 40.107525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302895, 27.997229, 39.499641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.203609, 28.316181, 39.719669>,  <36.144039, 28.507553, 39.851685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.203609, 28.316181, 39.719669>,  <36.302895, 27.997229, 39.499641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203609, 28.316181, 39.719669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048847, 0.556815, -0.829199,
		-0.967474, -0.232685, -0.099258,
		-0.248210, 0.797380, 0.550070,
		36.129147, 28.555395, 39.884689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808758, 28.304337, 39.237167>,  <36.302895, 27.997229, 39.499641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808758, 28.304337, 39.237167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957161, 28.595161, 39.468246>,  <36.046204, 28.769655, 39.606895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957161, 28.595161, 39.468246>,  <35.808758, 28.304337, 39.237167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957161, 28.595161, 39.468246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065086, 0.640928, -0.764837,
		-0.926346, 0.246159, 0.285110,
		0.371007, 0.727061, 0.577700,
		36.068462, 28.813280, 39.641556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335850, 28.880379, 39.184315>,  <35.808758, 28.304337, 39.237167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335850, 28.880379, 39.184315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704147, 29.001978, 39.282150>,  <35.925125, 29.074938, 39.340851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704147, 29.001978, 39.282150>,  <35.335850, 28.880379, 39.184315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704147, 29.001978, 39.282150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026949, 0.674912, -0.737406,
		-0.389243, 0.672368, 0.629611,
		0.920741, 0.303998, 0.244586,
		35.980370, 29.093178, 39.355526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229095, 29.591557, 38.964188>,  <35.335850, 28.880379, 39.184315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229095, 29.591557, 38.964188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622997, 29.558376, 39.025352>,  <35.859337, 29.538467, 39.062050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622997, 29.558376, 39.025352>,  <35.229095, 29.591557, 38.964188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622997, 29.558376, 39.025352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167119, 0.695199, -0.699120,
		-0.048311, 0.714015, 0.698462,
		0.984752, -0.082951, 0.152912,
		35.918423, 29.533491, 39.071224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521744, 30.319965, 39.197960>,  <35.229095, 29.591557, 38.964188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521744, 30.319965, 39.197960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.832592, 30.110109, 39.058914>,  <36.019100, 29.984196, 38.975487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.832592, 30.110109, 39.058914>,  <35.521744, 30.319965, 39.197960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832592, 30.110109, 39.058914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242785, 0.759495, -0.603509,
		0.580640, 0.384602, 0.717593,
		0.777119, -0.524642, -0.347617,
		36.065727, 29.952717, 38.954628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079445, 30.786903, 39.315201>,  <35.521744, 30.319965, 39.197960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079445, 30.786903, 39.315201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.190533, 30.526217, 39.032887>,  <36.257187, 30.369804, 38.863499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.190533, 30.526217, 39.032887>,  <36.079445, 30.786903, 39.315201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190533, 30.526217, 39.032887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360537, 0.751692, -0.552242,
		0.890441, -0.101095, 0.443728,
		0.277718, -0.651719, -0.705786,
		36.273849, 30.330700, 38.821152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778259, 30.926048, 39.040127>,  <36.079445, 30.786903, 39.315201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778259, 30.926048, 39.040127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605610, 30.716352, 38.746494>,  <36.502022, 30.590536, 38.570312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605610, 30.716352, 38.746494>,  <36.778259, 30.926048, 39.040127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605610, 30.716352, 38.746494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316497, 0.674044, -0.667453,
		0.844709, -0.520422, -0.125013,
		-0.431622, -0.524238, -0.734083,
		36.476124, 30.559082, 38.526268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336163, 30.572430, 39.424610>,  <36.778259, 30.926048, 39.040127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336163, 30.572430, 39.424610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426918, 30.935446, 39.565971>,  <37.481373, 31.153255, 39.650787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426918, 30.935446, 39.565971>,  <37.336163, 30.572430, 39.424610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426918, 30.935446, 39.565971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314329, -0.275208, 0.908547,
		0.921802, -0.317221, 0.222826,
		0.226887, 0.907541, 0.353399,
		37.494984, 31.207708, 39.671989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813850, 30.479481, 40.022888>,  <37.336163, 30.572430, 39.424610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813850, 30.479481, 40.022888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629803, 30.833920, 40.045219>,  <37.519375, 31.046583, 40.058617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629803, 30.833920, 40.045219>,  <37.813850, 30.479481, 40.022888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629803, 30.833920, 40.045219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239809, -0.184575, 0.953112,
		0.854856, 0.425159, 0.297422,
		-0.460122, 0.886099, 0.055828,
		37.491768, 31.099749, 40.061970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945950, 30.697289, 40.731525>,  <37.813850, 30.479481, 40.022888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945950, 30.697289, 40.731525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658318, 30.955149, 40.627712>,  <37.485741, 31.109865, 40.565422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658318, 30.955149, 40.627712>,  <37.945950, 30.697289, 40.731525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658318, 30.955149, 40.627712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306428, 0.041068, 0.951008,
		0.623724, 0.763375, 0.168007,
		-0.719076, 0.644648, -0.259535,
		37.442596, 31.148542, 40.549850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043484, 31.291994, 41.197914>,  <37.945950, 30.697289, 40.731525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043484, 31.291994, 41.197914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669865, 31.307299, 41.055878>,  <37.445694, 31.316481, 40.970654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669865, 31.307299, 41.055878>,  <38.043484, 31.291994, 41.197914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669865, 31.307299, 41.055878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356350, -0.033297, 0.933759,
		0.023903, 0.998713, 0.044736,
		-0.934047, 0.038261, -0.355095,
		37.389652, 31.318777, 40.949348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622410, 31.785522, 41.643261>,  <38.043484, 31.291994, 41.197914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622410, 31.785522, 41.643261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333916, 31.566465, 41.473598>,  <37.160820, 31.435032, 41.371799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333916, 31.566465, 41.473598>,  <37.622410, 31.785522, 41.643261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333916, 31.566465, 41.473598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262398, -0.350699, 0.898976,
		-0.641068, 0.759671, 0.109236,
		-0.721234, -0.547641, -0.424158,
		37.117546, 31.402172, 41.346352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008865, 31.845171, 42.059975>,  <37.622410, 31.785522, 41.643261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008865, 31.845171, 42.059975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955360, 31.505798, 41.855125>,  <36.923260, 31.302176, 41.732216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955360, 31.505798, 41.855125>,  <37.008865, 31.845171, 42.059975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955360, 31.505798, 41.855125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301760, -0.457361, 0.836518,
		-0.943954, 0.266431, -0.194847,
		-0.133759, -0.848431, -0.512126,
		36.915234, 31.251268, 41.701488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310459, 31.680010, 42.332546>,  <37.008865, 31.845171, 42.059975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310459, 31.680010, 42.332546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484070, 31.360746, 42.165424>,  <36.588238, 31.169188, 42.065151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484070, 31.360746, 42.165424>,  <36.310459, 31.680010, 42.332546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484070, 31.360746, 42.165424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286863, -0.562068, 0.775751,
		-0.854008, -0.216845, -0.472916,
		0.434028, -0.798159, -0.417806,
		36.614277, 31.121298, 42.040081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839947, 31.066269, 42.485893>,  <36.310459, 31.680010, 42.332546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839947, 31.066269, 42.485893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.195957, 30.901833, 42.407040>,  <36.409565, 30.803171, 42.359726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.195957, 30.901833, 42.407040>,  <35.839947, 31.066269, 42.485893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195957, 30.901833, 42.407040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094396, -0.589186, 0.802465,
		-0.446032, -0.695605, -0.563195,
		0.890025, -0.411088, -0.197133,
		36.462963, 30.778505, 42.347900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755436, 30.434027, 42.698929>,  <35.839947, 31.066269, 42.485893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755436, 30.434027, 42.698929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153679, 30.470764, 42.691730>,  <36.392624, 30.492807, 42.687412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153679, 30.470764, 42.691730>,  <35.755436, 30.434027, 42.698929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153679, 30.470764, 42.691730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063410, -0.520595, 0.851446,
		0.068834, -0.848849, -0.524134,
		0.995611, 0.091844, -0.017991,
		36.452362, 30.498318, 42.686333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038982, 29.753325, 42.752052>,  <35.755436, 30.434027, 42.698929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038982, 29.753325, 42.752052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.332844, 29.997051, 42.871399>,  <36.509159, 30.143288, 42.943008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.332844, 29.997051, 42.871399>,  <36.038982, 29.753325, 42.752052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332844, 29.997051, 42.871399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087437, -0.521151, 0.848974,
		0.672789, -0.597610, -0.436139,
		0.734649, 0.609315, 0.298371,
		36.553238, 30.179846, 42.960911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551533, 29.302639, 43.021568>,  <36.038982, 29.753325, 42.752052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551533, 29.302639, 43.021568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633064, 29.665768, 43.168163>,  <36.681984, 29.883644, 43.256123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633064, 29.665768, 43.168163>,  <36.551533, 29.302639, 43.021568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633064, 29.665768, 43.168163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105195, -0.392491, 0.913720,
		0.973339, -0.147689, -0.175498,
		0.203828, 0.907821, 0.366490,
		36.694214, 29.938114, 43.278111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031914, 29.139366, 43.564247>,  <36.551533, 29.302639, 43.021568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031914, 29.139366, 43.564247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909767, 29.512655, 43.639977>,  <36.836479, 29.736629, 43.685413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909767, 29.512655, 43.639977>,  <37.031914, 29.139366, 43.564247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909767, 29.512655, 43.639977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047487, -0.183652, 0.981844,
		0.951049, 0.308817, 0.011766,
		-0.305371, 0.933222, 0.189327,
		36.818157, 29.792622, 43.696774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564327, 29.356178, 43.961430>,  <37.031914, 29.139366, 43.564247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564327, 29.356178, 43.961430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263027, 29.607353, 44.039722>,  <37.082249, 29.758059, 44.086697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263027, 29.607353, 44.039722>,  <37.564327, 29.356178, 43.961430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263027, 29.607353, 44.039722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170297, -0.101245, 0.980178,
		0.635307, 0.771651, -0.030673,
		-0.753249, 0.627937, 0.195731,
		37.037052, 29.795734, 44.098442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792030, 29.863859, 44.432663>,  <37.564327, 29.356178, 43.961430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792030, 29.863859, 44.432663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395515, 29.893370, 44.476303>,  <37.157604, 29.911076, 44.502487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395515, 29.893370, 44.476303>,  <37.792030, 29.863859, 44.432663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395515, 29.893370, 44.476303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103301, -0.078341, 0.991560,
		0.081702, 0.994193, 0.070037,
		-0.991289, 0.073777, 0.109101,
		37.098129, 29.915503, 44.509033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.503807, 33.776272, 44.059128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898752, 33.799202, 44.118225>,  <32.135719, 33.812962, 44.153683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898752, 33.799202, 44.118225>,  <31.503807, 33.776272, 44.059128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898752, 33.799202, 44.118225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075742, 0.648222, -0.757675,
		-0.139208, 0.759290, 0.635688,
		0.987362, 0.057326, 0.147748,
		32.194962, 33.816399, 44.162548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666399, 34.493191, 44.121342>,  <31.503807, 33.776272, 44.059128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666399, 34.493191, 44.121342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998360, 34.301456, 44.007145>,  <32.197536, 34.186417, 43.938629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998360, 34.301456, 44.007145>,  <31.666399, 34.493191, 44.121342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998360, 34.301456, 44.007145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146375, 0.680855, -0.717642,
		0.538367, 0.553783, 0.635205,
		0.829901, -0.479333, -0.285490,
		32.247330, 34.157658, 43.921497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134830, 35.065037, 43.794453>,  <31.666399, 34.493191, 44.121342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134830, 35.065037, 43.794453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.304394, 34.723568, 43.673424>,  <32.406132, 34.518688, 43.600807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.304394, 34.723568, 43.673424>,  <32.134830, 35.065037, 43.794453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304394, 34.723568, 43.673424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405358, 0.477572, -0.779493,
		0.809927, 0.207788, 0.548490,
		0.423913, -0.853668, -0.302570,
		32.431568, 34.467468, 43.582653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760487, 35.168812, 43.590687>,  <32.134830, 35.065037, 43.794453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760487, 35.168812, 43.590687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684639, 34.832550, 43.387768>,  <32.639130, 34.630795, 43.266018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684639, 34.832550, 43.387768>,  <32.760487, 35.168812, 43.590687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684639, 34.832550, 43.387768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486739, 0.368229, -0.792144,
		0.852718, -0.397128, 0.339353,
		-0.189623, -0.840653, -0.507293,
		32.627750, 34.580353, 43.235580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268250, 35.176224, 43.173172>,  <32.760487, 35.168812, 43.590687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268250, 35.176224, 43.173172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032467, 34.895351, 43.013428>,  <32.890999, 34.726830, 42.917583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032467, 34.895351, 43.013428>,  <33.268250, 35.176224, 43.173172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032467, 34.895351, 43.013428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375624, 0.199424, -0.905062,
		0.715160, -0.683499, 0.146205,
		-0.589452, -0.702182, -0.399358,
		32.855633, 34.684696, 42.893620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667034, 34.736469, 42.752510>,  <33.268250, 35.176224, 43.173172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667034, 34.736469, 42.752510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292294, 34.700268, 42.617386>,  <33.067448, 34.678547, 42.536312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292294, 34.700268, 42.617386>,  <33.667034, 34.736469, 42.752510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292294, 34.700268, 42.617386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334842, 0.046643, -0.941119,
		0.100938, -0.994803, -0.013391,
		-0.936852, -0.090511, -0.337810,
		33.011238, 34.673115, 42.516045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711727, 34.237911, 42.175419>,  <33.667034, 34.736469, 42.752510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711727, 34.237911, 42.175419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371265, 34.441681, 42.124767>,  <33.166988, 34.563942, 42.094376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371265, 34.441681, 42.124767>,  <33.711727, 34.237911, 42.175419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371265, 34.441681, 42.124767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211130, 0.111369, -0.971093,
		-0.480592, -0.853280, -0.202346,
		-0.851149, 0.509421, -0.126630,
		33.115921, 34.594505, 42.086777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273506, 33.937485, 41.579929>,  <33.711727, 34.237911, 42.175419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273506, 33.937485, 41.579929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153526, 34.316586, 41.623383>,  <33.081539, 34.544044, 41.649456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153526, 34.316586, 41.623383>,  <33.273506, 33.937485, 41.579929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153526, 34.316586, 41.623383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004734, 0.112399, -0.993652,
		-0.953942, -0.298563, -0.029228,
		-0.299953, 0.947748, 0.108636,
		33.063541, 34.600910, 41.655972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807919, 34.063236, 41.068905>,  <33.273506, 33.937485, 41.579929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807919, 34.063236, 41.068905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961678, 34.417629, 41.172649>,  <33.053932, 34.630264, 41.234898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961678, 34.417629, 41.172649>,  <32.807919, 34.063236, 41.068905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961678, 34.417629, 41.172649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178699, 0.204222, -0.962476,
		-0.905708, 0.416318, -0.079823,
		0.384394, 0.885987, 0.259361,
		33.076996, 34.683426, 41.250458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707134, 34.526455, 40.475010>,  <32.807919, 34.063236, 41.068905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707134, 34.526455, 40.475010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954010, 34.766159, 40.678959>,  <33.102135, 34.909981, 40.801331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954010, 34.766159, 40.678959>,  <32.707134, 34.526455, 40.475010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954010, 34.766159, 40.678959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349842, 0.371439, -0.860026,
		-0.704764, 0.709171, 0.019601,
		0.617186, 0.599258, 0.509874,
		33.139164, 34.945938, 40.831921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616138, 35.178204, 40.158291>,  <32.707134, 34.526455, 40.475010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616138, 35.178204, 40.158291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.972420, 35.168636, 40.339874>,  <33.186188, 35.162895, 40.448826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.972420, 35.168636, 40.339874>,  <32.616138, 35.178204, 40.158291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972420, 35.168636, 40.339874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443676, 0.263274, -0.856644,
		-0.099026, 0.964425, 0.245111,
		0.890699, -0.023920, 0.453963,
		33.239628, 35.161461, 40.476063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933132, 35.777668, 39.917778>,  <32.616138, 35.178204, 40.158291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933132, 35.777668, 39.917778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226158, 35.544693, 40.058701>,  <33.401974, 35.404907, 40.143253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226158, 35.544693, 40.058701>,  <32.933132, 35.777668, 39.917778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226158, 35.544693, 40.058701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600663, 0.309622, -0.737115,
		0.320239, 0.751602, 0.576665,
		0.732565, -0.582434, 0.352306,
		33.445927, 35.369965, 40.164394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558643, 36.214939, 39.966736>,  <32.933132, 35.777668, 39.917778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558643, 36.214939, 39.966736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.713703, 35.846462, 39.953232>,  <33.806740, 35.625378, 39.945129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.713703, 35.846462, 39.953232>,  <33.558643, 36.214939, 39.966736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713703, 35.846462, 39.953232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515072, 0.246832, -0.820838,
		0.764480, 0.300807, 0.570163,
		0.387648, -0.921189, -0.033761,
		33.829998, 35.570107, 39.943104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365211, 36.279205, 39.925041>,  <33.558643, 36.214939, 39.966736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365211, 36.279205, 39.925041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248455, 35.930508, 39.767635>,  <34.178402, 35.721287, 39.673191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248455, 35.930508, 39.767635>,  <34.365211, 36.279205, 39.925041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248455, 35.930508, 39.767635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449612, 0.238081, -0.860910,
		0.844186, -0.428220, 0.322455,
		-0.291889, -0.871748, -0.393518,
		34.160889, 35.668983, 39.649582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926174, 35.830151, 40.129654>,  <34.365211, 36.279205, 39.925041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926174, 35.830151, 40.129654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295944, 35.968727, 40.193428>,  <35.517807, 36.051872, 40.231693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295944, 35.968727, 40.193428>,  <34.926174, 35.830151, 40.129654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295944, 35.968727, 40.193428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125192, -0.119216, 0.984944,
		0.360236, -0.930464, -0.066834,
		0.924422, 0.346445, 0.159433,
		35.573273, 36.072662, 40.241257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376137, 35.199463, 40.535961>,  <34.926174, 35.830151, 40.129654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376137, 35.199463, 40.535961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.542198, 35.558773, 40.593594>,  <35.641834, 35.774357, 40.628174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.542198, 35.558773, 40.593594>,  <35.376137, 35.199463, 40.535961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542198, 35.558773, 40.593594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008599, -0.162244, 0.986713,
		0.909713, -0.408395, -0.075080,
		0.415150, 0.898271, 0.144084,
		35.666744, 35.828255, 40.636818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818905, 35.139187, 41.064945>,  <35.376137, 35.199463, 40.535961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818905, 35.139187, 41.064945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828613, 35.537041, 41.105183>,  <35.834438, 35.775753, 41.129326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828613, 35.537041, 41.105183>,  <35.818905, 35.139187, 41.064945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828613, 35.537041, 41.105183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170576, -0.103267, 0.979918,
		0.985046, -0.006621, -0.172166,
		0.024267, 0.994632, 0.100593,
		35.835892, 35.835430, 41.135361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409286, 35.301903, 41.476471>,  <35.818905, 35.139187, 41.064945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409286, 35.301903, 41.476471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.138020, 35.594437, 41.505444>,  <35.975262, 35.769955, 41.522827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.138020, 35.594437, 41.505444>,  <36.409286, 35.301903, 41.476471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138020, 35.594437, 41.505444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085556, -0.019319, 0.996146,
		0.729913, 0.681748, -0.049468,
		-0.678165, 0.731332, 0.072429,
		35.934570, 35.813835, 41.527172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630829, 35.718246, 42.023827>,  <36.409286, 35.301903, 41.476471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630829, 35.718246, 42.023827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.254292, 35.845379, 41.978493>,  <36.028370, 35.921658, 41.951290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.254292, 35.845379, 41.978493>,  <36.630829, 35.718246, 42.023827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254292, 35.845379, 41.978493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097709, 0.064746, 0.993107,
		0.322981, 0.945933, -0.029893,
		-0.941348, 0.317834, -0.113338,
		35.971886, 35.940727, 41.944492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505005, 36.452888, 42.324081>,  <36.630829, 35.718246, 42.023827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505005, 36.452888, 42.324081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166260, 36.240810, 42.307522>,  <35.963013, 36.113564, 42.297588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166260, 36.240810, 42.307522>,  <36.505005, 36.452888, 42.324081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166260, 36.240810, 42.307522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187317, 0.224528, 0.956295,
		-0.497730, 0.817605, -0.289459,
		-0.846863, -0.530197, -0.041397,
		35.912201, 36.081753, 42.295101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090355, 36.812363, 42.877441>,  <36.505005, 36.452888, 42.324081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090355, 36.812363, 42.877441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863941, 36.493305, 42.794144>,  <35.728092, 36.301872, 42.744164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863941, 36.493305, 42.794144>,  <36.090355, 36.812363, 42.877441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863941, 36.493305, 42.794144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323826, -0.017172, 0.945961,
		-0.758116, 0.602884, -0.248578,
		-0.566036, -0.797644, -0.208248,
		35.694130, 36.254013, 42.731670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407536, 36.863579, 43.191757>,  <36.090355, 36.812363, 42.877441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407536, 36.863579, 43.191757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423565, 36.473888, 43.102962>,  <35.433182, 36.240074, 43.049686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423565, 36.473888, 43.102962>,  <35.407536, 36.863579, 43.191757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423565, 36.473888, 43.102962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382965, -0.220175, 0.897140,
		-0.922893, 0.049063, -0.381917,
		0.040072, -0.974226, -0.221988,
		35.435585, 36.181622, 43.036366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757599, 36.533794, 43.238880>,  <35.407536, 36.863579, 43.191757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757599, 36.533794, 43.238880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036816, 36.251522, 43.287460>,  <35.204346, 36.082161, 43.316608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036816, 36.251522, 43.287460>,  <34.757599, 36.533794, 43.238880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036816, 36.251522, 43.287460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469417, -0.322899, 0.821818,
		-0.540722, -0.630678, -0.556655,
		0.698046, -0.705678, 0.121453,
		35.246231, 36.039818, 43.323895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384441, 35.997589, 43.480495>,  <34.757599, 36.533794, 43.238880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384441, 35.997589, 43.480495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760754, 35.879539, 43.547226>,  <34.986542, 35.808708, 43.587265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760754, 35.879539, 43.547226>,  <34.384441, 35.997589, 43.480495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760754, 35.879539, 43.547226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276569, -0.383541, 0.881139,
		-0.196062, -0.875098, -0.442451,
		0.940781, -0.295126, 0.166827,
		35.042988, 35.791000, 43.597275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337029, 35.323750, 43.693146>,  <34.384441, 35.997589, 43.480495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337029, 35.323750, 43.693146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.690304, 35.430103, 43.847694>,  <34.902271, 35.493916, 43.940422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.690304, 35.430103, 43.847694>,  <34.337029, 35.323750, 43.693146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690304, 35.430103, 43.847694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173238, -0.580603, 0.795543,
		0.435849, -0.769549, -0.466722,
		0.883190, 0.265883, 0.386371,
		34.955261, 35.509869, 43.963604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732555, 34.637222, 43.912319>,  <34.337029, 35.323750, 43.693146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732555, 34.637222, 43.912319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884003, 34.961369, 44.091187>,  <34.974873, 35.155857, 44.198505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884003, 34.961369, 44.091187>,  <34.732555, 34.637222, 43.912319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884003, 34.961369, 44.091187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051177, -0.464070, 0.884319,
		0.924137, -0.357705, -0.134234,
		0.378619, 0.810362, 0.447170,
		34.997589, 35.204475, 44.225338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089958, 34.206898, 44.327168>,  <34.732555, 34.637222, 43.912319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089958, 34.206898, 44.327168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112595, 34.577667, 44.475552>,  <35.126175, 34.800129, 44.564583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112595, 34.577667, 44.475552>,  <35.089958, 34.206898, 44.327168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112595, 34.577667, 44.475552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095723, -0.374884, 0.922117,
		0.993798, -0.016672, -0.109942,
		0.056589, 0.926922, 0.370963,
		35.129570, 34.855743, 44.586842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658230, 34.187893, 44.828114>,  <35.089958, 34.206898, 44.327168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658230, 34.187893, 44.828114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.367687, 34.446861, 44.920425>,  <35.193363, 34.602242, 44.975815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.367687, 34.446861, 44.920425>,  <35.658230, 34.187893, 44.828114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367687, 34.446861, 44.920425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001870, -0.337632, 0.941276,
		0.687318, 0.683268, 0.246452,
		-0.726354, 0.647417, 0.230783,
		35.149780, 34.641087, 44.989662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387039, 34.358791, 45.155476>,  <35.658230, 34.187893, 44.828114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387039, 34.358791, 45.155476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750244, 34.197109, 45.199539>,  <36.968166, 34.100098, 45.225975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750244, 34.197109, 45.199539>,  <36.387039, 34.358791, 45.155476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750244, 34.197109, 45.199539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306076, 0.460491, -0.833226,
		0.286072, 0.790293, 0.541849,
		0.908009, -0.404209, 0.110156,
		37.022648, 34.075848, 45.232586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732170, 34.907703, 44.930893>,  <36.387039, 34.358791, 45.155476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732170, 34.907703, 44.930893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975662, 34.590626, 44.917732>,  <37.121758, 34.400379, 44.909836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975662, 34.590626, 44.917732>,  <36.732170, 34.907703, 44.930893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975662, 34.590626, 44.917732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481354, 0.401978, -0.778917,
		0.630666, 0.458316, 0.626264,
		0.608735, -0.792691, -0.032902,
		37.158283, 34.352818, 44.907860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414940, 35.130863, 44.895863>,  <36.732170, 34.907703, 44.930893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414940, 35.130863, 44.895863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408958, 34.761307, 44.742916>,  <37.405369, 34.539574, 44.651150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408958, 34.761307, 44.742916>,  <37.414940, 35.130863, 44.895863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408958, 34.761307, 44.742916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477806, 0.329317, -0.814403,
		0.878338, -0.194869, 0.436518,
		-0.014950, -0.923892, -0.382361,
		37.404472, 34.484138, 44.628208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136475, 35.052006, 44.493565>,  <37.414940, 35.130863, 44.895863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136475, 35.052006, 44.493565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898338, 34.766285, 44.346413>,  <37.755455, 34.594852, 44.258121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898338, 34.766285, 44.346413>,  <38.136475, 35.052006, 44.493565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898338, 34.766285, 44.346413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249741, 0.270676, -0.929712,
		0.763674, -0.645372, 0.017246,
		-0.595342, -0.714303, -0.367884,
		37.719734, 34.551994, 44.236046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553375, 34.663567, 44.124859>,  <38.136475, 35.052006, 44.493565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553375, 34.663567, 44.124859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.194496, 34.547573, 43.991623>,  <37.979168, 34.477978, 43.911682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.194496, 34.547573, 43.991623>,  <38.553375, 34.663567, 44.124859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194496, 34.547573, 43.991623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344712, 0.011658, -0.938636,
		0.276075, -0.956960, 0.089502,
		-0.897193, -0.289986, -0.333094,
		37.925339, 34.460579, 43.891693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613049, 34.112595, 43.520695>,  <38.553375, 34.663567, 44.124859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613049, 34.112595, 43.520695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229420, 34.220013, 43.484776>,  <37.999241, 34.284462, 43.463223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229420, 34.220013, 43.484776>,  <38.613049, 34.112595, 43.520695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229420, 34.220013, 43.484776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111421, 0.066351, -0.991556,
		-0.260316, -0.960980, -0.093557,
		-0.959073, 0.268542, -0.089801,
		37.941696, 34.300575, 43.457836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215103, 33.577999, 43.089657>,  <38.613049, 34.112595, 43.520695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215103, 33.577999, 43.089657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029087, 33.930767, 43.058769>,  <37.917477, 34.142426, 43.040237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029087, 33.930767, 43.058769>,  <38.215103, 33.577999, 43.089657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029087, 33.930767, 43.058769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171233, 0.004022, -0.985222,
		-0.868574, -0.471387, -0.152884,
		-0.465036, 0.881917, -0.077223,
		37.889576, 34.195343, 43.035603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793133, 33.507286, 42.412121>,  <38.215103, 33.577999, 43.089657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793133, 33.507286, 42.412121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830921, 33.901119, 42.471004>,  <37.853596, 34.137421, 42.506336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830921, 33.901119, 42.471004>,  <37.793133, 33.507286, 42.412121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830921, 33.901119, 42.471004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266175, 0.117503, -0.956736,
		-0.959284, 0.129571, -0.250970,
		0.094476, 0.984583, 0.147208,
		37.859264, 34.196495, 42.515167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441250, 33.804390, 41.854160>,  <37.793133, 33.507286, 42.412121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441250, 33.804390, 41.854160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697533, 34.085930, 41.976852>,  <37.851303, 34.254856, 42.050468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697533, 34.085930, 41.976852>,  <37.441250, 33.804390, 41.854160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697533, 34.085930, 41.976852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202295, 0.230629, -0.951781,
		-0.740656, 0.671863, 0.005380,
		0.640707, 0.703854, 0.306731,
		37.889744, 34.297085, 42.068871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299477, 34.341110, 41.344864>,  <37.441250, 33.804390, 41.854160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299477, 34.341110, 41.344864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646172, 34.424061, 41.526306>,  <37.854187, 34.473831, 41.635174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646172, 34.424061, 41.526306>,  <37.299477, 34.341110, 41.344864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646172, 34.424061, 41.526306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382561, 0.307128, -0.871389,
		-0.320021, 0.928799, 0.186865,
		0.866737, 0.207376, 0.453610,
		37.906193, 34.486275, 41.662388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439075, 34.991905, 41.088413>,  <37.299477, 34.341110, 41.344864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439075, 34.991905, 41.088413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796455, 34.858601, 41.208870>,  <38.010883, 34.778618, 41.281143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796455, 34.858601, 41.208870>,  <37.439075, 34.991905, 41.088413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796455, 34.858601, 41.208870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408181, 0.322618, -0.853994,
		0.187454, 0.885918, 0.424276,
		0.893448, -0.333266, 0.301139,
		38.064491, 34.758621, 41.299213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866352, 35.380619, 40.611378>,  <37.439075, 34.991905, 41.088413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866352, 35.380619, 40.611378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116032, 35.109028, 40.765976>,  <38.265839, 34.946075, 40.858734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116032, 35.109028, 40.765976>,  <37.866352, 35.380619, 40.611378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116032, 35.109028, 40.765976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530314, 0.004944, -0.847787,
		0.573714, 0.734146, 0.363155,
		0.624195, -0.678974, 0.386492,
		38.303291, 34.905334, 40.881924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522495, 35.650627, 40.507481>,  <37.866352, 35.380619, 40.611378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522495, 35.650627, 40.507481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.577049, 35.254978, 40.529507>,  <38.609783, 35.017590, 40.542721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.577049, 35.254978, 40.529507>,  <38.522495, 35.650627, 40.507481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577049, 35.254978, 40.529507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616903, 0.041307, -0.785954,
		0.775131, 0.141165, 0.615828,
		0.136387, -0.989124, 0.055067,
		38.617966, 34.958241, 40.546028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234962, 35.522308, 40.441345>,  <38.522495, 35.650627, 40.507481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234962, 35.522308, 40.441345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.091389, 35.159794, 40.352081>,  <39.005245, 34.942284, 40.298523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.091389, 35.159794, 40.352081>,  <39.234962, 35.522308, 40.441345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091389, 35.159794, 40.352081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618587, -0.051940, -0.783998,
		0.698939, -0.419451, 0.579263,
		-0.358936, -0.906291, -0.223164,
		38.983707, 34.887905, 40.285133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.503647, 38.974388, 29.178804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183411, 39.038330, 28.947807>,  <27.991268, 39.076694, 28.809210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183411, 39.038330, 28.947807>,  <28.503647, 38.974388, 29.178804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183411, 39.038330, 28.947807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417603, -0.840004, 0.346412,
		-0.429720, 0.518497, 0.739257,
		-0.800593, 0.159856, -0.577492,
		27.943233, 39.086288, 28.774559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803774, 39.002716, 29.535326>,  <28.503647, 38.974388, 29.178804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803774, 39.002716, 29.535326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691807, 38.935703, 29.157209>,  <27.624626, 38.895496, 28.930340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691807, 38.935703, 29.157209>,  <27.803774, 39.002716, 29.535326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691807, 38.935703, 29.157209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442723, -0.851176, 0.281952,
		-0.851846, 0.497426, 0.164089,
		-0.279919, -0.167533, -0.945293,
		27.607832, 38.885445, 28.873621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142807, 38.897968, 29.555725>,  <27.803774, 39.002716, 29.535326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142807, 38.897968, 29.555725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257090, 38.709499, 29.221930>,  <27.325659, 38.596416, 29.021652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257090, 38.709499, 29.221930>,  <27.142807, 38.897968, 29.555725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257090, 38.709499, 29.221930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490532, -0.819963, 0.295025,
		-0.823260, 0.325059, -0.465381,
		0.285694, -0.471167, -0.834494,
		27.342802, 38.568146, 28.971584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440460, 38.490662, 29.265261>,  <27.142807, 38.897968, 29.555725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440460, 38.490662, 29.265261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.754820, 38.333195, 29.074520>,  <26.943436, 38.238712, 28.960075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.754820, 38.333195, 29.074520>,  <26.440460, 38.490662, 29.265261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754820, 38.333195, 29.074520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408981, -0.909318, 0.076655,
		-0.463787, 0.134780, -0.875634,
		0.785898, -0.393669, -0.476852,
		26.990589, 38.215096, 28.931465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119415, 38.053364, 28.845600>,  <26.440460, 38.490662, 29.265261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119415, 38.053364, 28.845600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494734, 37.916481, 28.865562>,  <26.719925, 37.834351, 28.877541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494734, 37.916481, 28.865562>,  <26.119415, 38.053364, 28.845600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494734, 37.916481, 28.865562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344738, -0.914083, 0.213559,
		-0.027464, -0.217587, -0.975655,
		0.938297, -0.342210, 0.049906,
		26.776222, 37.813820, 28.880535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260761, 37.451668, 28.432573>,  <26.119415, 38.053364, 28.845600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260761, 37.451668, 28.432573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.573895, 37.393219, 28.674505>,  <26.761774, 37.358150, 28.819664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.573895, 37.393219, 28.674505>,  <26.260761, 37.451668, 28.432573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573895, 37.393219, 28.674505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292123, -0.944561, 0.149899,
		0.549396, -0.294031, -0.782119,
		0.782834, -0.146121, 0.604831,
		26.808744, 37.349384, 28.855955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647133, 36.819588, 28.299572>,  <26.260761, 37.451668, 28.432573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647133, 36.819588, 28.299572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725012, 36.889431, 28.685650>,  <26.771740, 36.931335, 28.917297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725012, 36.889431, 28.685650>,  <26.647133, 36.819588, 28.299572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725012, 36.889431, 28.685650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171622, -0.962784, 0.208791,
		0.965732, -0.206300, -0.157485,
		0.194698, 0.174608, 0.965197,
		26.783421, 36.941814, 28.975208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883205, 36.164680, 28.578527>,  <26.647133, 36.819588, 28.299572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883205, 36.164680, 28.578527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.844889, 36.372387, 28.918219>,  <26.821899, 36.497009, 29.122034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.844889, 36.372387, 28.918219>,  <26.883205, 36.164680, 28.578527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844889, 36.372387, 28.918219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005842, -0.853430, 0.521175,
		0.995384, 0.044962, 0.084783,
		-0.095790, 0.519265, 0.849228,
		26.816153, 36.528168, 29.172987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309566, 35.898277, 29.083033>,  <26.883205, 36.164680, 28.578527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309566, 35.898277, 29.083033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031897, 36.083027, 29.303865>,  <26.865294, 36.193878, 29.436365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031897, 36.083027, 29.303865>,  <27.309566, 35.898277, 29.083033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031897, 36.083027, 29.303865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022182, -0.752894, 0.657768,
		0.719463, 0.468853, 0.512396,
		-0.694176, 0.461873, 0.552080,
		26.823643, 36.221588, 29.469490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575933, 35.837410, 29.798151>,  <27.309566, 35.898277, 29.083033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575933, 35.837410, 29.798151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183710, 35.906643, 29.835125>,  <26.948376, 35.948185, 29.857309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183710, 35.906643, 29.835125>,  <27.575933, 35.837410, 29.798151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183710, 35.906643, 29.835125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004417, -0.490422, 0.871474,
		0.196169, 0.854124, 0.481653,
		-0.980560, 0.173084, 0.092433,
		26.889542, 35.958569, 29.862854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447659, 35.806225, 30.450157>,  <27.575933, 35.837410, 29.798151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447659, 35.806225, 30.450157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.069397, 35.752922, 30.331512>,  <26.842440, 35.720940, 30.260326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.069397, 35.752922, 30.331512>,  <27.447659, 35.806225, 30.450157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069397, 35.752922, 30.331512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199637, -0.482099, 0.853069,
		-0.256670, 0.865924, 0.429297,
		-0.945656, -0.133254, -0.296611,
		26.785700, 35.712944, 30.242529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101532, 36.117878, 30.947653>,  <27.447659, 35.806225, 30.450157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101532, 36.117878, 30.947653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862995, 35.854771, 30.763603>,  <26.719873, 35.696907, 30.653173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862995, 35.854771, 30.763603>,  <27.101532, 36.117878, 30.947653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862995, 35.854771, 30.763603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052710, -0.539872, 0.840095,
		-0.800998, 0.525238, 0.287277,
		-0.596342, -0.657772, -0.460122,
		26.684092, 35.657440, 30.625566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431543, 36.005638, 31.470510>,  <27.101532, 36.117878, 30.947653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431543, 36.005638, 31.470510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.442493, 35.697063, 31.216225>,  <26.449064, 35.511917, 31.063654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.442493, 35.697063, 31.216225>,  <26.431543, 36.005638, 31.470510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442493, 35.697063, 31.216225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039658, -0.636290, 0.770430,
		-0.998838, 0.004119, -0.048014,
		0.027378, -0.771439, -0.635714,
		26.450706, 35.465633, 31.025511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.063759, 35.635021, 31.872633>,  <26.431543, 36.005638, 31.470510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.063759, 35.635021, 31.872633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.186089, 35.374043, 31.595280>,  <26.259487, 35.217457, 31.428867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.186089, 35.374043, 31.595280>,  <26.063759, 35.635021, 31.872633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186089, 35.374043, 31.595280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015838, -0.724692, 0.688891,
		-0.951956, -0.221662, -0.211295,
		0.305825, -0.652447, -0.693386,
		26.277836, 35.178307, 31.387264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655527, 35.008312, 31.873001>,  <26.063759, 35.635021, 31.872633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655527, 35.008312, 31.873001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.020811, 34.896835, 31.754084>,  <26.239981, 34.829948, 31.682734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.020811, 34.896835, 31.754084>,  <25.655527, 35.008312, 31.873001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020811, 34.896835, 31.754084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061967, -0.626102, 0.777275,
		-0.402754, -0.728236, -0.554492,
		0.913209, -0.278691, -0.297292,
		26.294773, 34.813229, 31.664896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748613, 34.263962, 32.045364>,  <25.655527, 35.008312, 31.873001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748613, 34.263962, 32.045364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121897, 34.400574, 32.000675>,  <26.345867, 34.482540, 31.973862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121897, 34.400574, 32.000675>,  <25.748613, 34.263962, 32.045364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121897, 34.400574, 32.000675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308497, -0.602034, 0.736468,
		0.184266, -0.721743, -0.667183,
		0.933207, 0.341530, -0.111722,
		26.401859, 34.503033, 31.967159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119106, 33.602100, 32.071983>,  <25.748613, 34.263962, 32.045364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119106, 33.602100, 32.071983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377115, 33.901054, 32.135685>,  <26.531921, 34.080425, 32.173904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377115, 33.901054, 32.135685>,  <26.119106, 33.602100, 32.071983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377115, 33.901054, 32.135685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477263, -0.556766, 0.679876,
		0.596798, -0.362528, -0.715825,
		0.645022, 0.747385, 0.159255,
		26.570621, 34.125271, 32.183460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763662, 33.329811, 32.114811>,  <26.119106, 33.602100, 32.071983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763662, 33.329811, 32.114811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819584, 33.670521, 32.316776>,  <26.853136, 33.874947, 32.437954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819584, 33.670521, 32.316776>,  <26.763662, 33.329811, 32.114811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819584, 33.670521, 32.316776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371439, -0.517793, 0.770664,
		0.917871, 0.079801, -0.388772,
		0.139804, 0.851776, 0.504909,
		26.861525, 33.926052, 32.468250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505411, 33.393860, 32.347244>,  <26.763662, 33.329811, 32.114811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505411, 33.393860, 32.347244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246140, 33.596424, 32.574722>,  <27.090576, 33.717964, 32.711208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246140, 33.596424, 32.574722>,  <27.505411, 33.393860, 32.347244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246140, 33.596424, 32.574722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214288, -0.595334, 0.774376,
		0.730716, 0.623797, 0.277364,
		-0.648178, 0.506413, 0.568692,
		27.051685, 33.748348, 32.745331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850098, 33.555744, 32.924244>,  <27.505411, 33.393860, 32.347244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850098, 33.555744, 32.924244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463810, 33.536850, 33.026344>,  <27.232037, 33.525513, 33.087605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463810, 33.536850, 33.026344>,  <27.850098, 33.555744, 32.924244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463810, 33.536850, 33.026344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247809, -0.460587, 0.852321,
		0.077307, 0.886357, 0.456503,
		-0.965720, -0.047235, 0.255253,
		27.174093, 33.522678, 33.102921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439459, 33.068584, 32.739891>,  <27.850098, 33.555744, 32.924244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439459, 33.068584, 32.739891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810343, 32.918789, 32.737518>,  <29.032873, 32.828911, 32.736095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810343, 32.918789, 32.737518>,  <28.439459, 33.068584, 32.739891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810343, 32.918789, 32.737518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281275, 0.706701, -0.649198,
		0.247313, 0.600274, 0.760597,
		0.927211, -0.374492, -0.005935,
		29.088507, 32.806442, 32.735737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829704, 33.671467, 32.895950>,  <28.439459, 33.068584, 32.739891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829704, 33.671467, 32.895950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.092375, 33.415367, 32.736523>,  <29.249977, 33.261707, 32.640865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.092375, 33.415367, 32.736523>,  <28.829704, 33.671467, 32.895950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092375, 33.415367, 32.736523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308223, 0.710170, -0.632975,
		0.688314, 0.292811, 0.663691,
		0.656676, -0.640250, -0.398569,
		29.289377, 33.223293, 32.616951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517097, 33.945179, 32.899181>,  <28.829704, 33.671467, 32.895950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517097, 33.945179, 32.899181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487324, 33.666168, 32.614109>,  <29.469460, 33.498760, 32.443066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487324, 33.666168, 32.614109>,  <29.517097, 33.945179, 32.899181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487324, 33.666168, 32.614109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254662, 0.677669, -0.689863,
		0.964161, -0.232843, 0.127192,
		-0.074436, -0.697530, -0.712678,
		29.464993, 33.456909, 32.400307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086960, 34.104252, 32.417580>,  <29.517097, 33.945179, 32.899181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086960, 34.104252, 32.417580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869385, 33.850914, 32.197395>,  <29.738840, 33.698910, 32.065285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869385, 33.850914, 32.197395>,  <30.086960, 34.104252, 32.417580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869385, 33.850914, 32.197395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299657, 0.466131, -0.832422,
		0.783797, -0.617735, -0.063761,
		-0.543938, -0.633344, -0.550461,
		29.706203, 33.660912, 32.032257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478361, 33.997314, 31.964640>,  <30.086960, 34.104252, 32.417580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478361, 33.997314, 31.964640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.121725, 33.928127, 31.797235>,  <29.907743, 33.886616, 31.696793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.121725, 33.928127, 31.797235>,  <30.478361, 33.997314, 31.964640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121725, 33.928127, 31.797235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312705, 0.433298, -0.845262,
		0.327541, -0.884497, -0.332237,
		-0.891590, -0.172966, -0.418509,
		29.854248, 33.876236, 31.671682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734726, 33.646709, 31.351679>,  <30.478361, 33.997314, 31.964640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734726, 33.646709, 31.351679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.352028, 33.754074, 31.306797>,  <30.122408, 33.818493, 31.279867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.352028, 33.754074, 31.306797>,  <30.734726, 33.646709, 31.351679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352028, 33.754074, 31.306797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207013, 0.357133, -0.910825,
		-0.204409, -0.894656, -0.397251,
		-0.956746, 0.268417, -0.112204,
		30.065004, 33.834599, 31.273136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563417, 33.433498, 30.595907>,  <30.734726, 33.646709, 31.351679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563417, 33.433498, 30.595907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.288427, 33.708126, 30.690571>,  <30.123434, 33.872902, 30.747370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.288427, 33.708126, 30.690571>,  <30.563417, 33.433498, 30.595907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288427, 33.708126, 30.690571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151015, 0.453914, -0.878155,
		-0.710334, -0.567970, -0.415736,
		-0.687474, 0.686566, 0.236658,
		30.082186, 33.914097, 30.761568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252884, 33.547783, 29.903893>,  <30.563417, 33.433498, 30.595907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252884, 33.547783, 29.903893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155012, 33.848354, 30.149002>,  <30.096289, 34.028698, 30.296068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155012, 33.848354, 30.149002>,  <30.252884, 33.547783, 29.903893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155012, 33.848354, 30.149002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099666, 0.648128, -0.754981,
		-0.964468, -0.123656, -0.233476,
		-0.244680, 0.751425, 0.612775,
		30.081608, 34.073780, 30.332834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798223, 34.023262, 29.463549>,  <30.252884, 33.547783, 29.903893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798223, 34.023262, 29.463549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932272, 34.243385, 29.769451>,  <30.012701, 34.375458, 29.952993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932272, 34.243385, 29.769451>,  <29.798223, 34.023262, 29.463549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932272, 34.243385, 29.769451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139857, 0.773645, -0.617991,
		-0.931737, 0.314058, 0.182300,
		0.335120, 0.550309, 0.764757,
		30.032808, 34.408478, 29.998878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442873, 34.604630, 29.304140>,  <29.798223, 34.023262, 29.463549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442873, 34.604630, 29.304140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732023, 34.708702, 29.560188>,  <29.905514, 34.771145, 29.713818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732023, 34.708702, 29.560188>,  <29.442873, 34.604630, 29.304140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732023, 34.708702, 29.560188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109161, 0.871764, -0.477610,
		-0.682301, 0.415129, 0.601775,
		0.722875, 0.260183, 0.640122,
		29.948885, 34.786758, 29.752224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296434, 35.264771, 29.593166>,  <29.442873, 34.604630, 29.304140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296434, 35.264771, 29.593166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687449, 35.210529, 29.657715>,  <29.922056, 35.177982, 29.696444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687449, 35.210529, 29.657715>,  <29.296434, 35.264771, 29.593166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687449, 35.210529, 29.657715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195427, 0.869925, -0.452812,
		-0.078976, 0.474175, 0.876881,
		0.977533, -0.135605, 0.161369,
		29.980709, 35.169849, 29.706125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539364, 35.907200, 29.968630>,  <29.296434, 35.264771, 29.593166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539364, 35.907200, 29.968630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835548, 35.717304, 29.778328>,  <30.013258, 35.603367, 29.664146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835548, 35.717304, 29.778328>,  <29.539364, 35.907200, 29.968630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835548, 35.717304, 29.778328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277214, 0.860573, -0.427278,
		0.612268, 0.184496, 0.768823,
		0.740460, -0.474737, -0.475756,
		30.057686, 35.574883, 29.635601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162643, 36.237545, 30.112238>,  <29.539364, 35.907200, 29.968630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162643, 36.237545, 30.112238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200302, 36.047409, 29.762339>,  <30.222897, 35.933327, 29.552399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200302, 36.047409, 29.762339>,  <30.162643, 36.237545, 30.112238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200302, 36.047409, 29.762339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308037, 0.849443, -0.428438,
		0.946705, -0.229120, 0.226395,
		0.094146, -0.475342, -0.874749,
		30.228546, 35.904808, 29.499914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712601, 36.583294, 29.852045>,  <30.162643, 36.237545, 30.112238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712601, 36.583294, 29.852045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.604733, 36.383808, 29.522545>,  <30.540012, 36.264118, 29.324844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.604733, 36.383808, 29.522545>,  <30.712601, 36.583294, 29.852045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604733, 36.383808, 29.522545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111600, 0.833491, -0.541145,
		0.956464, -0.237860, -0.169110,
		-0.269669, -0.498713, -0.823750,
		30.523832, 36.234196, 29.275419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275204, 36.617039, 29.375448>,  <30.712601, 36.583294, 29.852045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275204, 36.617039, 29.375448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.964655, 36.534058, 29.137386>,  <30.778326, 36.484268, 28.994549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.964655, 36.534058, 29.137386>,  <31.275204, 36.617039, 29.375448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964655, 36.534058, 29.137386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303249, 0.704845, -0.641275,
		0.552528, -0.678348, -0.484311,
		-0.776372, -0.207456, -0.595154,
		30.731743, 36.471821, 28.958839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588293, 36.388042, 28.722090>,  <31.275204, 36.617039, 29.375448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588293, 36.388042, 28.722090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214399, 36.515251, 28.658678>,  <30.990063, 36.591576, 28.620632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214399, 36.515251, 28.658678>,  <31.588293, 36.388042, 28.722090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214399, 36.515251, 28.658678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349734, 0.744398, -0.568822,
		-0.062890, -0.587141, -0.807038,
		-0.934736, 0.318022, -0.158528,
		30.933979, 36.610657, 28.611120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605059, 36.688316, 28.092581>,  <31.588293, 36.388042, 28.722090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605059, 36.688316, 28.092581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.257624, 36.830978, 28.230192>,  <31.049162, 36.916576, 28.312759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.257624, 36.830978, 28.230192>,  <31.605059, 36.688316, 28.092581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257624, 36.830978, 28.230192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217785, 0.898361, -0.381469,
		-0.445114, -0.256414, -0.857978,
		-0.868587, 0.356652, 0.344030,
		30.997047, 36.937973, 28.333401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419851, 37.168774, 27.612213>,  <31.605059, 36.688316, 28.092581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419851, 37.168774, 27.612213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.113157, 37.249809, 27.855877>,  <30.929140, 37.298431, 28.002075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.113157, 37.249809, 27.855877>,  <31.419851, 37.168774, 27.612213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113157, 37.249809, 27.855877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042125, 0.930976, -0.362643,
		-0.640580, -0.303712, -0.705278,
		-0.766735, 0.202592, 0.609158,
		30.883137, 37.310589, 28.038624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932003, 37.466297, 27.089241>,  <31.419851, 37.168774, 27.612213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932003, 37.466297, 27.089241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.932449, 37.578091, 27.473301>,  <30.932716, 37.645168, 27.703737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.932449, 37.578091, 27.473301>,  <30.932003, 37.466297, 27.089241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932449, 37.578091, 27.473301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112023, 0.954142, -0.277604,
		-0.993705, -0.107249, 0.032373,
		0.001116, 0.279483, 0.960150,
		30.932783, 37.661934, 27.761347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276039, 37.825352, 27.203762>,  <30.932003, 37.466297, 27.089241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276039, 37.825352, 27.203762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.539494, 37.946678, 27.479210>,  <30.697567, 38.019474, 27.644478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.539494, 37.946678, 27.479210>,  <30.276039, 37.825352, 27.203762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539494, 37.946678, 27.479210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135626, 0.948023, -0.287852,
		-0.740136, 0.096195, 0.665541,
		0.658638, 0.303314, 0.688619,
		30.737085, 38.037674, 27.685795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956202, 38.358727, 27.420774>,  <30.276039, 37.825352, 27.203762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956202, 38.358727, 27.420774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327717, 38.400650, 27.562969>,  <30.550625, 38.425804, 27.648287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327717, 38.400650, 27.562969>,  <29.956202, 38.358727, 27.420774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327717, 38.400650, 27.562969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043133, 0.983228, -0.177205,
		-0.368098, 0.149252, 0.917729,
		0.928786, 0.104813, 0.355487,
		30.606352, 38.432095, 27.669615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020763, 39.018982, 27.772840>,  <29.956202, 38.358727, 27.420774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020763, 39.018982, 27.772840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.394560, 38.922203, 27.668392>,  <30.618837, 38.864136, 27.605722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.394560, 38.922203, 27.668392>,  <30.020763, 39.018982, 27.772840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394560, 38.922203, 27.668392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172949, 0.949712, -0.261027,
		0.311145, 0.198767, 0.929344,
		0.934493, -0.241947, -0.261122,
		30.674908, 38.849621, 27.590055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.597649, 30.524071, 44.900642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282558, 30.279360, 44.929523>,  <37.093506, 30.132532, 44.946854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282558, 30.279360, 44.929523>,  <37.597649, 30.524071, 44.900642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282558, 30.279360, 44.929523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128517, -0.048578, 0.990517,
		-0.602471, 0.789535, 0.116890,
		-0.787726, -0.611780, 0.072202,
		37.046242, 30.095825, 44.951183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285519, 30.688435, 45.614319>,  <37.597649, 30.524071, 44.900642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285519, 30.688435, 45.614319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112820, 30.342300, 45.512505>,  <37.009201, 30.134621, 45.451416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112820, 30.342300, 45.512505>,  <37.285519, 30.688435, 45.614319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112820, 30.342300, 45.512505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026864, -0.269733, 0.962560,
		-0.901594, 0.422422, 0.093210,
		-0.431749, -0.865334, -0.254538,
		36.983295, 30.082701, 45.436142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613171, 30.715633, 45.998596>,  <37.285519, 30.688435, 45.614319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613171, 30.715633, 45.998596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708740, 30.336790, 45.912899>,  <36.766083, 30.109484, 45.861481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708740, 30.336790, 45.912899>,  <36.613171, 30.715633, 45.998596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708740, 30.336790, 45.912899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188940, -0.261760, 0.946459,
		-0.952480, -0.185651, -0.241487,
		0.238923, -0.947109, -0.214244,
		36.780418, 30.052658, 45.848625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091419, 30.269142, 46.325764>,  <36.613171, 30.715633, 45.998596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091419, 30.269142, 46.325764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424053, 30.051611, 46.280663>,  <36.623634, 29.921093, 46.253601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424053, 30.051611, 46.280663>,  <36.091419, 30.269142, 46.325764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424053, 30.051611, 46.280663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042975, -0.265411, 0.963177,
		-0.553727, -0.796122, -0.244084,
		0.831589, -0.543826, -0.112752,
		36.673531, 29.888464, 46.246838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065331, 29.894766, 46.868523>,  <36.091419, 30.269142, 46.325764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065331, 29.894766, 46.868523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411968, 29.757969, 46.723164>,  <36.619949, 29.675890, 46.635948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411968, 29.757969, 46.723164>,  <36.065331, 29.894766, 46.868523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411968, 29.757969, 46.723164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214015, -0.403153, 0.889756,
		-0.450799, -0.848827, -0.276176,
		0.866590, -0.341995, -0.363402,
		36.671947, 29.655371, 46.614143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133793, 29.188705, 47.017872>,  <36.065331, 29.894766, 46.868523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133793, 29.188705, 47.017872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494057, 29.362127, 47.006241>,  <36.710213, 29.466181, 46.999260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494057, 29.362127, 47.006241>,  <36.133793, 29.188705, 47.017872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494057, 29.362127, 47.006241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229649, -0.418113, 0.878887,
		0.368888, -0.798254, -0.476143,
		0.900657, 0.433557, -0.029081,
		36.764256, 29.492195, 46.997517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553551, 28.737806, 47.067749>,  <36.133793, 29.188705, 47.017872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553551, 28.737806, 47.067749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739231, 29.068649, 47.194496>,  <36.850639, 29.267155, 47.270546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739231, 29.068649, 47.194496>,  <36.553551, 28.737806, 47.067749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739231, 29.068649, 47.194496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134236, -0.419313, 0.897863,
		0.875497, -0.374256, -0.305674,
		0.464204, 0.827109, 0.316869,
		36.878490, 29.316782, 47.289558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071552, 28.440147, 47.417561>,  <36.553551, 28.737806, 47.067749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071552, 28.440147, 47.417561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069134, 28.820436, 47.541553>,  <37.067684, 29.048611, 47.615948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069134, 28.820436, 47.541553>,  <37.071552, 28.440147, 47.417561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069134, 28.820436, 47.541553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079942, -0.308536, 0.947847,
		0.996781, 0.030513, -0.074137,
		-0.006047, 0.950723, 0.309982,
		37.067318, 29.105654, 47.634548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730518, 28.525471, 47.741753>,  <37.071552, 28.440147, 47.417561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730518, 28.525471, 47.741753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459644, 28.789209, 47.872402>,  <37.297119, 28.947453, 47.950790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459644, 28.789209, 47.872402>,  <37.730518, 28.525471, 47.741753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459644, 28.789209, 47.872402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144448, -0.316135, 0.937653,
		0.721497, 0.682143, 0.118840,
		-0.677183, 0.659348, 0.326625,
		37.256489, 28.987013, 47.970390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053333, 28.945293, 48.249794>,  <37.730518, 28.525471, 47.741753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053333, 28.945293, 48.249794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660683, 28.958633, 48.324947>,  <37.425091, 28.966639, 48.370037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660683, 28.958633, 48.324947>,  <38.053333, 28.945293, 48.249794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660683, 28.958633, 48.324947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153794, -0.444545, 0.882455,
		0.112951, 0.895135, 0.431248,
		-0.981626, 0.033351, 0.187879,
		37.366196, 28.968639, 48.381310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046047, 28.901300, 48.991768>,  <38.053333, 28.945293, 48.249794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046047, 28.901300, 48.991768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672737, 28.813457, 48.878086>,  <37.448753, 28.760752, 48.809875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672737, 28.813457, 48.878086>,  <38.046047, 28.901300, 48.991768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672737, 28.813457, 48.878086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148278, -0.485134, 0.861776,
		-0.327132, 0.846414, 0.420199,
		-0.933273, -0.219609, -0.284208,
		37.392754, 28.747576, 48.792824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547897, 29.215563, 49.437695>,  <38.046047, 28.901300, 48.991768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547897, 29.215563, 49.437695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372200, 28.892879, 49.279564>,  <37.266781, 28.699268, 49.184685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372200, 28.892879, 49.279564>,  <37.547897, 29.215563, 49.437695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372200, 28.892879, 49.279564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228131, -0.325459, 0.917624,
		-0.868918, 0.493249, -0.041079,
		-0.439248, -0.806710, -0.395322,
		37.240425, 28.650866, 49.160969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826023, 29.266941, 49.497414>,  <37.547897, 29.215563, 49.437695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826023, 29.266941, 49.497414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005310, 28.909376, 49.495670>,  <37.112885, 28.694838, 49.494625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005310, 28.909376, 49.495670>,  <36.826023, 29.266941, 49.497414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005310, 28.909376, 49.495670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366162, -0.188042, 0.911354,
		-0.815490, -0.406891, -0.411601,
		0.448220, -0.893913, -0.004359,
		37.139774, 28.641203, 49.494362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743141, 29.893435, 49.756889>,  <36.826023, 29.266941, 49.497414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743141, 29.893435, 49.756889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485931, 30.190010, 49.833611>,  <36.331604, 30.367954, 49.879642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485931, 30.190010, 49.833611>,  <36.743141, 29.893435, 49.756889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485931, 30.190010, 49.833611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195945, 0.401385, -0.894704,
		-0.740353, -0.537736, -0.403382,
		-0.643026, 0.741438, 0.191800,
		36.293022, 30.412441, 49.891151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419369, 30.044798, 49.118336>,  <36.743141, 29.893435, 49.756889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419369, 30.044798, 49.118336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365219, 30.377054, 49.334377>,  <36.332729, 30.576408, 49.464001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365219, 30.377054, 49.334377>,  <36.419369, 30.044798, 49.118336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365219, 30.377054, 49.334377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214842, 0.556759, -0.802410,
		-0.967221, 0.007410, -0.253828,
		-0.135375, 0.830641, 0.540101,
		36.324608, 30.626247, 49.496407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096298, 30.509584, 48.683426>,  <36.419369, 30.044798, 49.118336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096298, 30.509584, 48.683426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233734, 30.754835, 48.967968>,  <36.316196, 30.901985, 49.138695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233734, 30.754835, 48.967968>,  <36.096298, 30.509584, 48.683426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233734, 30.754835, 48.967968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106851, 0.727028, -0.678243,
		-0.933023, 0.309044, 0.184283,
		0.343586, 0.613125, 0.711355,
		36.336811, 30.938772, 49.181374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773701, 31.020048, 48.487869>,  <36.096298, 30.509584, 48.683426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773701, 31.020048, 48.487869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051449, 31.172310, 48.732147>,  <36.218098, 31.263666, 48.878716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051449, 31.172310, 48.732147>,  <35.773701, 31.020048, 48.487869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051449, 31.172310, 48.732147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038794, 0.827607, -0.559965,
		-0.718571, 0.412515, 0.559899,
		0.694370, 0.380655, 0.610698,
		36.259762, 31.286507, 48.915356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552628, 31.777288, 48.590412>,  <35.773701, 31.020048, 48.487869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552628, 31.777288, 48.590412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940414, 31.720329, 48.670261>,  <36.173088, 31.686153, 48.718170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940414, 31.720329, 48.670261>,  <35.552628, 31.777288, 48.590412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940414, 31.720329, 48.670261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228793, 0.818171, -0.527494,
		-0.088214, 0.557062, 0.825772,
		0.969470, -0.142398, 0.199626,
		36.231255, 31.677610, 48.730148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817619, 32.419662, 48.892204>,  <35.552628, 31.777288, 48.590412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817619, 32.419662, 48.892204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141441, 32.214699, 48.777615>,  <36.335735, 32.091721, 48.708862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141441, 32.214699, 48.777615>,  <35.817619, 32.419662, 48.892204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141441, 32.214699, 48.777615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271560, 0.759506, -0.591106,
		0.520464, 0.400736, 0.754008,
		0.809551, -0.512407, -0.286471,
		36.384308, 32.060978, 48.691673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397121, 32.911831, 48.893471>,  <35.817619, 32.419662, 48.892204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397121, 32.911831, 48.893471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498077, 32.616817, 48.642921>,  <36.558651, 32.439812, 48.492592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498077, 32.616817, 48.642921>,  <36.397121, 32.911831, 48.893471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498077, 32.616817, 48.642921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267856, 0.675289, -0.687195,
		0.929813, 0.005664, 0.367989,
		0.252391, -0.737531, -0.626375,
		36.573795, 32.395557, 48.455009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019875, 33.141151, 48.546925>,  <36.397121, 32.911831, 48.893471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019875, 33.141151, 48.546925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901562, 32.840618, 48.310955>,  <36.830574, 32.660297, 48.169373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901562, 32.840618, 48.310955>,  <37.019875, 33.141151, 48.546925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901562, 32.840618, 48.310955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182571, 0.561709, -0.806939,
		0.937647, -0.346381, -0.028971,
		-0.295781, -0.751334, -0.589924,
		36.812828, 32.615219, 48.133976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568577, 33.038433, 48.194458>,  <37.019875, 33.141151, 48.546925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568577, 33.038433, 48.194458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262161, 32.891750, 47.983284>,  <37.078312, 32.803741, 47.856579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262161, 32.891750, 47.983284>,  <37.568577, 33.038433, 48.194458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262161, 32.891750, 47.983284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284582, 0.542954, -0.790072,
		0.576369, -0.755464, -0.311564,
		-0.766036, -0.366708, -0.527934,
		37.032349, 32.781738, 47.824905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788822, 32.890945, 47.609245>,  <37.568577, 33.038433, 48.194458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788822, 32.890945, 47.609245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.405735, 32.871124, 47.495884>,  <37.175884, 32.859234, 47.427868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.405735, 32.871124, 47.495884>,  <37.788822, 32.890945, 47.609245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405735, 32.871124, 47.495884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200437, 0.591754, -0.780802,
		0.206394, -0.804594, -0.556803,
		-0.957719, -0.049549, -0.283405,
		37.118420, 32.856258, 47.410862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921234, 32.913509, 46.821812>,  <37.788822, 32.890945, 47.609245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921234, 32.913509, 46.821812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.547470, 33.029552, 46.904476>,  <37.323212, 33.099178, 46.954075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.547470, 33.029552, 46.904476>,  <37.921234, 32.913509, 46.821812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547470, 33.029552, 46.904476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023077, 0.529666, -0.847893,
		-0.355441, -0.797052, -0.488232,
		-0.934414, 0.290108, 0.206658,
		37.267147, 33.116585, 46.966473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477787, 32.615269, 46.390461>,  <37.921234, 32.913509, 46.821812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477787, 32.615269, 46.390461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292580, 32.946754, 46.516224>,  <37.181458, 33.145645, 46.591682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292580, 32.946754, 46.516224>,  <37.477787, 32.615269, 46.390461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292580, 32.946754, 46.516224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026290, 0.341726, -0.939432,
		-0.885960, -0.443238, -0.136438,
		-0.463017, 0.828711, 0.314409,
		37.153675, 33.195370, 46.610546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073799, 32.724800, 45.865852>,  <37.477787, 32.615269, 46.390461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073799, 32.724800, 45.865852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035793, 33.070984, 46.062607>,  <37.012989, 33.278694, 46.180660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035793, 33.070984, 46.062607>,  <37.073799, 32.724800, 45.865852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035793, 33.070984, 46.062607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017542, 0.492588, -0.870086,
		-0.995321, -0.091298, -0.031620,
		-0.095013, 0.865460, 0.491885,
		37.007290, 33.330624, 46.210171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461758, 33.067879, 45.603172>,  <37.073799, 32.724800, 45.865852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461758, 33.067879, 45.603172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719982, 33.318798, 45.777412>,  <36.874916, 33.469349, 45.881954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719982, 33.318798, 45.777412>,  <36.461758, 33.067879, 45.603172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719982, 33.318798, 45.777412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084723, 0.625679, -0.775467,
		-0.758992, 0.463708, 0.457062,
		0.645564, 0.627297, 0.435599,
		36.913651, 33.506989, 45.908092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234825, 33.766525, 45.529430>,  <36.461758, 33.067879, 45.603172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234825, 33.766525, 45.529430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633148, 33.775818, 45.564831>,  <36.872143, 33.781391, 45.586071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633148, 33.775818, 45.564831>,  <36.234825, 33.766525, 45.529430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633148, 33.775818, 45.564831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065820, 0.490003, -0.869232,
		-0.063554, 0.871411, 0.486419,
		0.995806, 0.023227, 0.088498,
		36.931889, 33.782787, 45.591381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766800, 34.383518, 45.585499>,  <36.234825, 33.766525, 45.529430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766800, 34.383518, 45.585499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395985, 34.521282, 45.526199>,  <35.173496, 34.603939, 45.490620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395985, 34.521282, 45.526199>,  <35.766800, 34.383518, 45.585499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395985, 34.521282, 45.526199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269652, -0.337637, 0.901826,
		0.260541, 0.876005, 0.405873,
		-0.927042, 0.344407, -0.148248,
		35.117870, 34.624603, 45.481724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605320, 34.731300, 46.148251>,  <35.766800, 34.383518, 45.585499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605320, 34.731300, 46.148251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250477, 34.629860, 45.993988>,  <35.037571, 34.568996, 45.901432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250477, 34.629860, 45.993988>,  <35.605320, 34.731300, 46.148251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250477, 34.629860, 45.993988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308726, -0.295114, 0.904210,
		-0.343118, 0.921192, 0.183505,
		-0.887107, -0.253598, -0.385655,
		34.984344, 34.553780, 45.878292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228298, 35.022789, 46.630238>,  <35.605320, 34.731300, 46.148251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228298, 35.022789, 46.630238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996147, 34.750347, 46.451687>,  <34.856857, 34.586884, 46.344555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996147, 34.750347, 46.451687>,  <35.228298, 35.022789, 46.630238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996147, 34.750347, 46.451687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403080, -0.236019, 0.884207,
		-0.707592, 0.693103, -0.137560,
		-0.580379, -0.681105, -0.446381,
		34.822033, 34.546017, 46.317772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482338, 35.153629, 46.801670>,  <35.228298, 35.022789, 46.630238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482338, 35.153629, 46.801670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485714, 34.773643, 46.676769>,  <34.487740, 34.545654, 46.601830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485714, 34.773643, 46.676769>,  <34.482338, 35.153629, 46.801670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485714, 34.773643, 46.676769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584017, -0.258157, 0.769597,
		-0.811698, 0.175865, -0.556972,
		0.008441, -0.949961, -0.312253,
		34.488247, 34.488655, 46.583092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894409, 34.908310, 47.028381>,  <34.482338, 35.153629, 46.801670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894409, 34.908310, 47.028381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094116, 34.568283, 46.961308>,  <34.213943, 34.364269, 46.921062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094116, 34.568283, 46.961308>,  <33.894409, 34.908310, 47.028381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094116, 34.568283, 46.961308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446411, -0.418243, 0.791069,
		-0.742594, -0.320101, -0.588295,
		0.499272, -0.850063, -0.167688,
		34.243896, 34.313263, 46.910999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449238, 34.412163, 47.113132>,  <33.894409, 34.908310, 47.028381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449238, 34.412163, 47.113132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797913, 34.224751, 47.170589>,  <34.007118, 34.112301, 47.205063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797913, 34.224751, 47.170589>,  <33.449238, 34.412163, 47.113132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797913, 34.224751, 47.170589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428086, -0.585343, 0.688560,
		-0.238534, -0.661702, -0.710811,
		0.871690, -0.468534, 0.143641,
		34.059418, 34.084190, 47.213680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367241, 33.741684, 47.218273>,  <33.449238, 34.412163, 47.113132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367241, 33.741684, 47.218273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734623, 33.777107, 47.372467>,  <33.955051, 33.798363, 47.464985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734623, 33.777107, 47.372467>,  <33.367241, 33.741684, 47.218273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734623, 33.777107, 47.372467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251983, -0.620214, 0.742859,
		0.304871, -0.779418, -0.547322,
		0.918454, 0.088561, 0.385485,
		34.010159, 33.803677, 47.488113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200993, 33.166943, 46.895897>,  <33.367241, 33.741684, 47.218273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200993, 33.166943, 46.895897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102142, 32.810989, 46.742519>,  <33.042831, 32.597416, 46.650494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102142, 32.810989, 46.742519>,  <33.200993, 33.166943, 46.895897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102142, 32.810989, 46.742519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170142, 0.429420, -0.886933,
		0.953929, -0.153944, -0.257528,
		-0.247126, -0.889887, -0.383444,
		33.028004, 32.544022, 46.627487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544117, 33.208553, 46.367554>,  <33.200993, 33.166943, 46.895897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544117, 33.208553, 46.367554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249027, 32.942314, 46.322403>,  <33.071972, 32.782570, 46.295311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249027, 32.942314, 46.322403>,  <33.544117, 33.208553, 46.367554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249027, 32.942314, 46.322403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219288, 0.394392, -0.892394,
		0.638493, -0.633590, -0.436911,
		-0.737726, -0.665597, -0.112877,
		33.027710, 32.742634, 46.288540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632214, 32.753532, 45.755245>,  <33.544117, 33.208553, 46.367554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632214, 32.753532, 45.755245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238045, 32.739204, 45.821770>,  <33.001545, 32.730606, 45.861683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238045, 32.739204, 45.821770>,  <33.632214, 32.753532, 45.755245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238045, 32.739204, 45.821770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169475, 0.291973, -0.941292,
		-0.014843, -0.955756, -0.293787,
		-0.985423, -0.035818, 0.166311,
		32.942417, 32.728458, 45.871662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418972, 32.478363, 45.092113>,  <33.632214, 32.753532, 45.755245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418972, 32.478363, 45.092113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083138, 32.615993, 45.260254>,  <32.881638, 32.698574, 45.361137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083138, 32.615993, 45.260254>,  <33.418972, 32.478363, 45.092113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083138, 32.615993, 45.260254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326909, 0.297970, -0.896853,
		-0.433841, -0.890406, -0.137691,
		-0.839591, 0.344079, 0.420353,
		32.831261, 32.719215, 45.386360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814247, 32.258381, 44.634205>,  <33.418972, 32.478363, 45.092113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814247, 32.258381, 44.634205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701355, 32.573532, 44.853146>,  <32.633621, 32.762623, 44.984512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701355, 32.573532, 44.853146>,  <32.814247, 32.258381, 44.634205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701355, 32.573532, 44.853146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318778, 0.461112, -0.828104,
		-0.904835, -0.408202, 0.121017,
		-0.282232, 0.787875, 0.547356,
		32.616684, 32.809895, 45.017353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200348, 32.554352, 44.268394>,  <32.814247, 32.258381, 44.634205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200348, 32.554352, 44.268394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313438, 32.856232, 44.505207>,  <32.381294, 33.037357, 44.647293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313438, 32.856232, 44.505207>,  <32.200348, 32.554352, 44.268394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313438, 32.856232, 44.505207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201538, 0.650171, -0.732570,
		-0.937788, 0.087804, 0.335924,
		0.282730, 0.754697, 0.592027,
		32.398258, 33.082642, 44.682816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605566, 33.046383, 44.234856>,  <32.200348, 32.554352, 44.268394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605566, 33.046383, 44.234856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947433, 33.234379, 44.323082>,  <32.152554, 33.347176, 44.376019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947433, 33.234379, 44.323082>,  <31.605566, 33.046383, 44.234856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947433, 33.234379, 44.323082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114502, 0.585028, -0.802890,
		-0.506386, 0.660951, 0.553820,
		0.854671, 0.469986, 0.220570,
		32.203835, 33.375374, 44.389252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.917004, 25.831314, 46.954185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.050308, 26.167788, 47.124527>,  <36.130291, 26.369671, 47.226730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.050308, 26.167788, 47.124527>,  <35.917004, 25.831314, 46.954185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050308, 26.167788, 47.124527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190797, 0.382158, -0.904186,
		-0.923329, 0.382578, -0.033139,
		0.333257, 0.841184, 0.425852,
		36.150284, 26.420143, 47.252281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555573, 26.413219, 46.674618>,  <35.917004, 25.831314, 46.954185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555573, 26.413219, 46.674618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906639, 26.541712, 46.816891>,  <36.117279, 26.618807, 46.902256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906639, 26.541712, 46.816891>,  <35.555573, 26.413219, 46.674618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906639, 26.541712, 46.816891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143373, 0.532175, -0.834406,
		-0.457324, 0.783326, 0.421017,
		0.877667, 0.321231, 0.355684,
		36.169941, 26.638081, 46.923595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558601, 27.146704, 46.476215>,  <35.555573, 26.413219, 46.674618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558601, 27.146704, 46.476215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.939754, 27.057230, 46.558170>,  <36.168446, 27.003546, 46.607346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.939754, 27.057230, 46.558170>,  <35.558601, 27.146704, 46.476215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939754, 27.057230, 46.558170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281584, 0.401073, -0.871694,
		0.112808, 0.888316, 0.445161,
		0.952882, -0.223684, 0.204892,
		36.225620, 26.990126, 46.619637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952332, 27.762110, 46.290947>,  <35.558601, 27.146704, 46.476215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952332, 27.762110, 46.290947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.243225, 27.487705, 46.300091>,  <36.417759, 27.323063, 46.305576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.243225, 27.487705, 46.300091>,  <35.952332, 27.762110, 46.290947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243225, 27.487705, 46.300091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327914, 0.317979, -0.889585,
		0.602998, 0.654429, 0.456197,
		0.727232, -0.686011, 0.022856,
		36.461395, 27.281902, 46.306946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495358, 28.068085, 45.938461>,  <35.952332, 27.762110, 46.290947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495358, 28.068085, 45.938461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.551376, 27.675623, 45.885208>,  <36.584988, 27.440145, 45.853256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.551376, 27.675623, 45.885208>,  <36.495358, 28.068085, 45.938461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551376, 27.675623, 45.885208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039927, 0.128755, -0.990872,
		0.989340, 0.144080, -0.021144,
		0.140042, -0.981154, -0.133135,
		36.593388, 27.381277, 45.845268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079121, 28.042404, 45.513939>,  <36.495358, 28.068085, 45.938461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079121, 28.042404, 45.513939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.894871, 27.688852, 45.481476>,  <36.784321, 27.476721, 45.461998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.894871, 27.688852, 45.481476>,  <37.079121, 28.042404, 45.513939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894871, 27.688852, 45.481476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042272, 0.069487, -0.996687,
		0.886589, -0.462527, 0.005356,
		-0.460623, -0.883878, -0.081159,
		36.756683, 27.423689, 45.457127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345970, 27.790310, 44.876129>,  <37.079121, 28.042404, 45.513939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345970, 27.790310, 44.876129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.026245, 27.564457, 44.958382>,  <36.834408, 27.428946, 45.007732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.026245, 27.564457, 44.958382>,  <37.345970, 27.790310, 44.876129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026245, 27.564457, 44.958382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236290, -0.019296, -0.971491,
		0.552503, -0.825117, -0.117994,
		-0.799317, -0.564632, 0.205628,
		36.786449, 27.395067, 45.020069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330353, 27.309908, 44.313496>,  <37.345970, 27.790310, 44.876129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330353, 27.309908, 44.313496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.957943, 27.307934, 44.459465>,  <36.734497, 27.306749, 44.547047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.957943, 27.307934, 44.459465>,  <37.330353, 27.309908, 44.313496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957943, 27.307934, 44.459465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364479, 0.063504, -0.929044,
		-0.018593, -0.997969, -0.060921,
		-0.931026, -0.004931, 0.364920,
		36.678635, 27.306454, 44.568939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903725, 26.734966, 43.911900>,  <37.330353, 27.309908, 44.313496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903725, 26.734966, 43.911900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.701385, 27.037743, 44.077389>,  <36.579983, 27.219408, 44.176682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.701385, 27.037743, 44.077389>,  <36.903725, 26.734966, 43.911900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701385, 27.037743, 44.077389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371963, 0.241334, -0.896327,
		-0.778310, -0.607290, 0.159476,
		-0.505843, 0.756939, 0.413722,
		36.549633, 27.264824, 44.201504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108814, 26.614771, 43.702515>,  <36.903725, 26.734966, 43.911900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108814, 26.614771, 43.702515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.133308, 27.000496, 43.805550>,  <36.148006, 27.231932, 43.867371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.133308, 27.000496, 43.805550>,  <36.108814, 26.614771, 43.702515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133308, 27.000496, 43.805550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380515, 0.261133, -0.887140,
		-0.922745, -0.043690, 0.382926,
		0.061235, 0.964314, 0.257584,
		36.151680, 27.289789, 43.882824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541317, 26.820234, 43.349884>,  <36.108814, 26.614771, 43.702515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541317, 26.820234, 43.349884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742332, 27.153774, 43.441227>,  <35.862942, 27.353899, 43.496033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742332, 27.153774, 43.441227>,  <35.541317, 26.820234, 43.349884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742332, 27.153774, 43.441227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459810, 0.481462, -0.746169,
		-0.732141, 0.269976, 0.625366,
		0.502537, 0.833851, 0.228361,
		35.893093, 27.403929, 43.509735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122246, 27.328829, 43.474205>,  <35.541317, 26.820234, 43.349884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122246, 27.328829, 43.474205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.465599, 27.484097, 43.340038>,  <35.671612, 27.577257, 43.259537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.465599, 27.484097, 43.340038>,  <35.122246, 27.328829, 43.474205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465599, 27.484097, 43.340038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492762, 0.441993, -0.749552,
		-0.142700, 0.808683, 0.570674,
		0.858384, 0.388168, -0.335416,
		35.723114, 27.600548, 43.239414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765961, 27.869938, 43.893322>,  <35.122246, 27.328829, 43.474205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765961, 27.869938, 43.893322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.382366, 27.857582, 44.006035>,  <34.152210, 27.850168, 44.073662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.382366, 27.857582, 44.006035>,  <34.765961, 27.869938, 43.893322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382366, 27.857582, 44.006035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283379, -0.079669, 0.955693,
		-0.007071, 0.996343, 0.085155,
		-0.958982, -0.030889, 0.281779,
		34.094673, 27.848316, 44.090569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689533, 28.414927, 44.338169>,  <34.765961, 27.869938, 43.893322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689533, 28.414927, 44.338169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379547, 28.173212, 44.412212>,  <34.193554, 28.028183, 44.456638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379547, 28.173212, 44.412212>,  <34.689533, 28.414927, 44.338169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379547, 28.173212, 44.412212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153056, 0.104723, 0.982653,
		-0.613189, 0.789855, 0.011333,
		-0.774967, -0.604286, 0.185107,
		34.147057, 27.991926, 44.467743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361980, 28.739031, 44.972179>,  <34.689533, 28.414927, 44.338169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361980, 28.739031, 44.972179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.223171, 28.365747, 44.934875>,  <34.139885, 28.141777, 44.912491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.223171, 28.365747, 44.934875>,  <34.361980, 28.739031, 44.972179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223171, 28.365747, 44.934875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019969, -0.092069, 0.995552,
		-0.937644, 0.347342, 0.013315,
		-0.347023, -0.933208, -0.093264,
		34.119064, 28.085785, 44.906895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684483, 28.840872, 45.328358>,  <34.361980, 28.739031, 44.972179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684483, 28.840872, 45.328358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.796547, 28.457254, 45.311649>,  <33.863785, 28.227083, 45.301624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.796547, 28.457254, 45.311649>,  <33.684483, 28.840872, 45.328358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796547, 28.457254, 45.311649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025622, -0.036031, 0.999022,
		-0.959611, -0.280958, 0.014478,
		0.280161, -0.959043, -0.041774,
		33.880596, 28.169540, 45.299118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188145, 28.467411, 45.641010>,  <33.684483, 28.840872, 45.328358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188145, 28.467411, 45.641010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.528458, 28.259882, 45.674450>,  <33.732647, 28.135365, 45.694515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.528458, 28.259882, 45.674450>,  <33.188145, 28.467411, 45.641010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528458, 28.259882, 45.674450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023751, 0.120957, 0.992373,
		-0.524976, -0.846282, 0.090586,
		0.850785, -0.518821, 0.083600,
		33.783695, 28.104237, 45.699532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065525, 27.979429, 46.284561>,  <33.188145, 28.467411, 45.641010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065525, 27.979429, 46.284561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.462143, 27.958912, 46.236874>,  <33.700111, 27.946602, 46.208260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.462143, 27.958912, 46.236874>,  <33.065525, 27.979429, 46.284561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462143, 27.958912, 46.236874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118676, -0.013525, 0.992841,
		-0.052546, -0.998592, -0.007322,
		0.991542, -0.051301, -0.119219,
		33.759605, 27.943523, 46.201107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394638, 27.397728, 46.698952>,  <33.065525, 27.979429, 46.284561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394638, 27.397728, 46.698952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699524, 27.651371, 46.646904>,  <33.882458, 27.803556, 46.615677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699524, 27.651371, 46.646904>,  <33.394638, 27.397728, 46.698952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699524, 27.651371, 46.646904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151245, 0.020994, 0.988273,
		0.629402, -0.772961, -0.079903,
		0.762219, 0.634107, -0.130120,
		33.928188, 27.841602, 46.607868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878025, 27.274014, 47.287468>,  <33.394638, 27.397728, 46.698952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878025, 27.274014, 47.287468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963238, 27.632376, 47.131535>,  <34.014366, 27.847393, 47.037971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963238, 27.632376, 47.131535>,  <33.878025, 27.274014, 47.287468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963238, 27.632376, 47.131535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475545, 0.253472, 0.842383,
		0.853507, -0.364841, -0.372045,
		0.213032, 0.895904, -0.389838,
		34.027149, 27.901146, 47.014584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554562, 27.321465, 47.427433>,  <33.878025, 27.274014, 47.287468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554562, 27.321465, 47.427433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.468510, 27.708183, 47.372261>,  <34.416878, 27.940214, 47.339157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.468510, 27.708183, 47.372261>,  <34.554562, 27.321465, 47.427433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468510, 27.708183, 47.372261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381022, 0.213135, 0.899664,
		0.899189, 0.140993, -0.414223,
		-0.215132, 0.966796, -0.137927,
		34.403969, 27.998222, 47.330883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134274, 27.717058, 47.639427>,  <34.554562, 27.321465, 47.427433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134274, 27.717058, 47.639427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.837299, 27.985023, 47.638992>,  <34.659115, 28.145803, 47.638729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.837299, 27.985023, 47.638992>,  <35.134274, 27.717058, 47.639427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837299, 27.985023, 47.638992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310930, 0.346034, 0.885202,
		0.593386, 0.656869, -0.465205,
		-0.742439, 0.669913, -0.001091,
		34.614567, 28.185997, 47.638664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413635, 28.383213, 47.951927>,  <35.134274, 27.717058, 47.639427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413635, 28.383213, 47.951927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.016956, 28.431177, 47.970486>,  <34.778950, 28.459955, 47.981621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.016956, 28.431177, 47.970486>,  <35.413635, 28.383213, 47.951927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016956, 28.431177, 47.970486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087839, 0.368358, 0.925525,
		0.093890, 0.921919, -0.375833,
		-0.991700, 0.119910, 0.046395,
		34.719448, 28.467150, 47.984406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317684, 29.092268, 48.218819>,  <35.413635, 28.383213, 47.951927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317684, 29.092268, 48.218819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978256, 28.897631, 48.301918>,  <34.774601, 28.780848, 48.351776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978256, 28.897631, 48.301918>,  <35.317684, 29.092268, 48.218819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978256, 28.897631, 48.301918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029022, 0.434865, 0.900028,
		-0.528289, 0.757706, -0.383135,
		-0.848569, -0.486594, 0.207744,
		34.723686, 28.751652, 48.364243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837364, 29.610449, 48.364300>,  <35.317684, 29.092268, 48.218819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837364, 29.610449, 48.364300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.693054, 29.277975, 48.533524>,  <34.606468, 29.078491, 48.635056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.693054, 29.277975, 48.533524>,  <34.837364, 29.610449, 48.364300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693054, 29.277975, 48.533524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117702, 0.490555, 0.863424,
		-0.925195, 0.261708, -0.274813,
		-0.360776, -0.831183, 0.423056,
		34.584820, 29.028620, 48.660439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270344, 29.823799, 48.768230>,  <34.837364, 29.610449, 48.364300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270344, 29.823799, 48.768230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.339046, 29.456928, 48.912056>,  <34.380268, 29.236805, 48.998352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.339046, 29.456928, 48.912056>,  <34.270344, 29.823799, 48.768230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339046, 29.456928, 48.912056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250922, 0.312220, 0.916273,
		-0.952649, -0.247595, -0.176516,
		0.171753, -0.917178, 0.359563,
		34.390572, 29.181774, 49.019924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840878, 29.707808, 48.219704>,  <34.270344, 29.823799, 48.768230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840878, 29.707808, 48.219704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.760342, 30.072418, 48.363136>,  <33.712021, 30.291185, 48.449196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.760342, 30.072418, 48.363136>,  <33.840878, 29.707808, 48.219704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760342, 30.072418, 48.363136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030977, 0.359967, -0.932451,
		-0.979031, -0.198851, -0.044241,
		-0.201344, 0.911527, 0.358579,
		33.699940, 30.345877, 48.470711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620193, 30.074471, 47.642120>,  <33.840878, 29.707808, 48.219704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620193, 30.074471, 47.642120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.563988, 30.375069, 47.899963>,  <33.530266, 30.555428, 48.054668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.563988, 30.375069, 47.899963>,  <33.620193, 30.074471, 47.642120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563988, 30.375069, 47.899963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189250, 0.618671, -0.762516,
		-0.971823, -0.229136, 0.055288,
		-0.140514, 0.751494, 0.644603,
		33.521835, 30.600517, 48.093346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979111, 30.347397, 47.412903>,  <33.620193, 30.074471, 47.642120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979111, 30.347397, 47.412903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.137302, 30.640669, 47.634190>,  <33.232216, 30.816631, 47.766960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.137302, 30.640669, 47.634190>,  <32.979111, 30.347397, 47.412903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137302, 30.640669, 47.634190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408558, 0.679875, -0.608975,
		-0.822604, 0.014816, 0.568421,
		0.395478, 0.733178, 0.553215,
		33.255947, 30.860622, 47.800156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473225, 30.812878, 47.474514>,  <32.979111, 30.347397, 47.412903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473225, 30.812878, 47.474514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812485, 31.013664, 47.542240>,  <33.016041, 31.134136, 47.582874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812485, 31.013664, 47.542240>,  <32.473225, 30.812878, 47.474514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812485, 31.013664, 47.542240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337217, 0.758070, -0.558225,
		-0.408564, 0.416363, 0.812230,
		0.848151, 0.501969, 0.169315,
		33.066929, 31.164255, 47.593033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244747, 31.560894, 47.629425>,  <32.473225, 30.812878, 47.474514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244747, 31.560894, 47.629425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620583, 31.567526, 47.492657>,  <32.846085, 31.571505, 47.410595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620583, 31.567526, 47.492657>,  <32.244747, 31.560894, 47.629425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620583, 31.567526, 47.492657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181683, 0.870689, -0.457047,
		0.290126, 0.491555, 0.821097,
		0.939584, 0.016578, -0.341916,
		32.902458, 31.572500, 47.390083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407379, 32.230427, 47.658535>,  <32.244747, 31.560894, 47.629425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407379, 32.230427, 47.658535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688656, 32.054039, 47.435440>,  <32.857422, 31.948206, 47.301582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688656, 32.054039, 47.435440>,  <32.407379, 32.230427, 47.658535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688656, 32.054039, 47.435440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027633, 0.766894, -0.641179,
		0.710462, 0.466284, 0.527089,
		0.703193, -0.440968, -0.557734,
		32.899612, 31.921749, 47.268120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798119, 32.731422, 47.481823>,  <32.407379, 32.230427, 47.658535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798119, 32.731422, 47.481823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924381, 32.457218, 47.219391>,  <33.000137, 32.292694, 47.061932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924381, 32.457218, 47.219391>,  <32.798119, 32.731422, 47.481823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924381, 32.457218, 47.219391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000283, 0.691496, -0.722381,
		0.948875, 0.227836, 0.218466,
		0.315653, -0.685510, -0.656078,
		33.019077, 32.251564, 47.022568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443481, 33.153500, 47.620537>,  <32.798119, 32.731422, 47.481823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443481, 33.153500, 47.620537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.739208, 33.380688, 47.765217>,  <33.916645, 33.517002, 47.852024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.739208, 33.380688, 47.765217>,  <33.443481, 33.153500, 47.620537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739208, 33.380688, 47.765217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114148, -0.423664, 0.898598,
		0.663614, -0.705634, -0.248388,
		0.739314, 0.567970, 0.361696,
		33.961002, 33.551079, 47.873726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778606, 32.680325, 47.857708>,  <33.443481, 33.153500, 47.620537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778606, 32.680325, 47.857708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.889832, 33.006828, 48.060253>,  <33.956566, 33.202732, 48.181778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.889832, 33.006828, 48.060253>,  <33.778606, 32.680325, 47.857708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889832, 33.006828, 48.060253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013547, -0.523764, 0.851756,
		0.960467, -0.243703, -0.134582,
		0.278065, 0.816260, 0.506360,
		33.973251, 33.251705, 48.212162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331520, 32.464687, 48.260464>,  <33.778606, 32.680325, 47.857708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331520, 32.464687, 48.260464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.255699, 32.814735, 48.438553>,  <34.210205, 33.024765, 48.545406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.255699, 32.814735, 48.438553>,  <34.331520, 32.464687, 48.260464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255699, 32.814735, 48.438553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154542, -0.421203, 0.893703,
		0.969631, 0.238214, -0.055402,
		-0.189557, 0.875124, 0.445226,
		34.198833, 33.077274, 48.572121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850727, 32.473263, 48.824917>,  <34.331520, 32.464687, 48.260464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850727, 32.473263, 48.824917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.582973, 32.758644, 48.907768>,  <34.422321, 32.929874, 48.957478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.582973, 32.758644, 48.907768>,  <34.850727, 32.473263, 48.824917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582973, 32.758644, 48.907768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102801, -0.187170, 0.976934,
		0.735766, 0.675241, 0.051946,
		-0.669388, 0.713455, 0.207128,
		34.382156, 32.972679, 48.969906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122757, 32.871387, 49.382561>,  <34.850727, 32.473263, 48.824917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122757, 32.871387, 49.382561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.725204, 32.915207, 49.388123>,  <34.486671, 32.941498, 49.391460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.725204, 32.915207, 49.388123>,  <35.122757, 32.871387, 49.382561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725204, 32.915207, 49.388123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011732, -0.229974, 0.973126,
		0.109803, 0.967011, 0.229852,
		-0.993884, 0.109549, 0.013907,
		34.427040, 32.948071, 49.392296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002113, 33.242748, 50.082150>,  <35.122757, 32.871387, 49.382561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002113, 33.242748, 50.082150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.642952, 33.114304, 49.961716>,  <34.427456, 33.037235, 49.889454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.642952, 33.114304, 49.961716>,  <35.002113, 33.242748, 50.082150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642952, 33.114304, 49.961716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201175, -0.309024, 0.929533,
		-0.391528, 0.895204, 0.212875,
		-0.897906, -0.321113, -0.301085,
		34.373581, 33.017971, 49.871391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447277, 33.530571, 50.512199>,  <35.002113, 33.242748, 50.082150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447277, 33.530571, 50.512199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314926, 33.188274, 50.353092>,  <34.235516, 32.982895, 50.257626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314926, 33.188274, 50.353092>,  <34.447277, 33.530571, 50.512199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314926, 33.188274, 50.353092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228856, -0.336164, 0.913575,
		-0.915502, 0.393315, -0.084613,
		-0.330879, -0.855744, -0.397771,
		34.215664, 32.931553, 50.233761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808571, 33.297791, 50.885521>,  <34.447277, 33.530571, 50.512199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808571, 33.297791, 50.885521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929977, 32.963200, 50.703011>,  <34.002823, 32.762447, 50.593502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929977, 32.963200, 50.703011>,  <33.808571, 33.297791, 50.885521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929977, 32.963200, 50.703011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226811, -0.528530, 0.818055,
		-0.925438, -0.144803, -0.350138,
		0.303515, -0.836474, -0.456278,
		34.021030, 32.712257, 50.566128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310032, 32.791561, 51.069584>,  <33.808571, 33.297791, 50.885521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310032, 32.791561, 51.069584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.620697, 32.561806, 50.966141>,  <33.807095, 32.423954, 50.904076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.620697, 32.561806, 50.966141>,  <33.310032, 32.791561, 51.069584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620697, 32.561806, 50.966141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186392, -0.601712, 0.776660,
		-0.601712, -0.554998, -0.574387,
		-0.776660, 0.574387, 0.258610,
		33.853695, 32.389488, 50.888557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.540642, 37.180035, 35.768005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714275, 36.824368, 35.825909>,  <37.818455, 36.610966, 35.860649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714275, 36.824368, 35.825909>,  <37.540642, 37.180035, 35.768005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714275, 36.824368, 35.825909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596757, -0.163438, 0.785601,
		-0.674872, -0.427400, -0.601563,
		0.434084, -0.889167, 0.144754,
		37.844501, 36.557617, 35.869335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945019, 36.617470, 35.764263>,  <37.540642, 37.180035, 35.768005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945019, 36.617470, 35.764263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279282, 36.501595, 35.950920>,  <37.479839, 36.432072, 36.062912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279282, 36.501595, 35.950920>,  <36.945019, 36.617470, 35.764263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279282, 36.501595, 35.950920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541916, -0.296532, 0.786381,
		-0.089430, -0.910028, -0.404786,
		0.835661, -0.289686, 0.466640,
		37.529980, 36.414688, 36.090912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679199, 35.980923, 36.088001>,  <36.945019, 36.617470, 35.764263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679199, 35.980923, 36.088001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019379, 36.071384, 36.277988>,  <37.223484, 36.125660, 36.391983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019379, 36.071384, 36.277988>,  <36.679199, 35.980923, 36.088001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019379, 36.071384, 36.277988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402394, -0.301919, 0.864247,
		0.338855, -0.926121, -0.165763,
		0.850445, 0.226152, 0.474973,
		37.274513, 36.139229, 36.420479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871407, 35.522690, 36.725212>,  <36.679199, 35.980923, 36.088001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871407, 35.522690, 36.725212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091423, 35.842602, 36.821384>,  <37.223431, 36.034550, 36.879086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091423, 35.842602, 36.821384>,  <36.871407, 35.522690, 36.725212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091423, 35.842602, 36.821384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233367, -0.129229, 0.963763,
		0.801873, -0.586213, 0.115562,
		0.550037, 0.799784, 0.240428,
		37.256435, 36.082539, 36.893513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388489, 35.329948, 37.314110>,  <36.871407, 35.522690, 36.725212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388489, 35.329948, 37.314110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306480, 35.721420, 37.309128>,  <37.257275, 35.956303, 37.306137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306480, 35.721420, 37.309128>,  <37.388489, 35.329948, 37.314110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306480, 35.721420, 37.309128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307196, -0.052260, 0.950210,
		0.929299, 0.198641, 0.311360,
		-0.205022, 0.978678, -0.012456,
		37.244972, 36.015022, 37.305389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673302, 35.607533, 37.940903>,  <37.388489, 35.329948, 37.314110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673302, 35.607533, 37.940903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406757, 35.887608, 37.838375>,  <37.246830, 36.055653, 37.776859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406757, 35.887608, 37.838375>,  <37.673302, 35.607533, 37.940903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406757, 35.887608, 37.838375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265583, 0.098336, 0.959060,
		0.696725, 0.707157, 0.120430,
		-0.666363, 0.700185, -0.256321,
		37.206848, 36.097664, 37.761478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766899, 36.135948, 38.448704>,  <37.673302, 35.607533, 37.940903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766899, 36.135948, 38.448704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400032, 36.193287, 38.299969>,  <37.179913, 36.227688, 38.210728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400032, 36.193287, 38.299969>,  <37.766899, 36.135948, 38.448704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400032, 36.193287, 38.299969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371201, 0.032167, 0.927995,
		0.144982, 0.989150, 0.023707,
		-0.917164, 0.143343, -0.371838,
		37.124882, 36.236290, 38.188416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473888, 36.797466, 38.660629>,  <37.766899, 36.135948, 38.448704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473888, 36.797466, 38.660629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137424, 36.608414, 38.555508>,  <36.935547, 36.494984, 38.492435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137424, 36.608414, 38.555508>,  <37.473888, 36.797466, 38.660629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137424, 36.608414, 38.555508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436988, 0.307762, 0.845177,
		-0.318575, 0.825773, -0.465412,
		-0.841161, -0.472632, -0.262808,
		36.885075, 36.466625, 38.476665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887451, 37.133648, 38.996792>,  <37.473888, 36.797466, 38.660629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887451, 37.133648, 38.996792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735489, 36.774120, 38.909348>,  <36.644310, 36.558403, 38.856880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735489, 36.774120, 38.909348>,  <36.887451, 37.133648, 38.996792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735489, 36.774120, 38.909348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502306, 0.001999, 0.864687,
		-0.776761, 0.438314, -0.452242,
		-0.379909, -0.898820, -0.218615,
		36.621517, 36.504475, 38.843761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210030, 37.246006, 39.214352>,  <36.887451, 37.133648, 38.996792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210030, 37.246006, 39.214352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150822, 36.857651, 39.139019>,  <36.115299, 36.624638, 39.093819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150822, 36.857651, 39.139019>,  <36.210030, 37.246006, 39.214352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150822, 36.857651, 39.139019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308167, -0.135671, 0.941609,
		-0.939747, 0.197410, -0.279114,
		-0.148015, -0.970887, -0.188332,
		36.106419, 36.566383, 39.082520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614574, 37.273087, 39.449375>,  <36.210030, 37.246006, 39.214352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614574, 37.273087, 39.449375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751778, 36.897408, 39.442970>,  <35.834099, 36.672001, 39.439125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751778, 36.897408, 39.442970>,  <35.614574, 37.273087, 39.449375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751778, 36.897408, 39.442970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351640, -0.144195, 0.924963,
		-0.871031, -0.311638, -0.379719,
		0.343008, -0.939196, -0.016014,
		35.854679, 36.615650, 39.438168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045704, 36.751835, 39.624168>,  <35.614574, 37.273087, 39.449375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045704, 36.751835, 39.624168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398811, 36.601067, 39.736340>,  <35.610676, 36.510605, 39.803642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398811, 36.601067, 39.736340>,  <35.045704, 36.751835, 39.624168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398811, 36.601067, 39.736340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355638, -0.146117, 0.923132,
		-0.306976, -0.914646, -0.263037,
		0.882773, -0.376925, 0.280428,
		35.663643, 36.487991, 39.820469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839066, 36.036636, 39.389069>,  <35.045704, 36.751835, 39.624168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839066, 36.036636, 39.389069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534958, 35.795586, 39.292053>,  <34.352493, 35.650955, 39.233845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534958, 35.795586, 39.292053>,  <34.839066, 36.036636, 39.389069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534958, 35.795586, 39.292053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333544, -0.041740, -0.941810,
		0.557440, -0.796928, 0.232738,
		-0.760269, -0.602631, -0.242542,
		34.306877, 35.614796, 39.219292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099655, 35.674438, 38.739094>,  <34.839066, 36.036636, 39.389069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099655, 35.674438, 38.739094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706425, 35.601955, 38.749878>,  <34.470486, 35.558464, 38.756348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706425, 35.601955, 38.749878>,  <35.099655, 35.674438, 38.739094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706425, 35.601955, 38.749878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012617, -0.213771, -0.976802,
		0.182771, -0.959930, 0.212439,
		-0.983075, -0.181211, 0.026960,
		34.411503, 35.547592, 38.757965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922367, 34.993027, 38.362976>,  <35.099655, 35.674438, 38.739094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922367, 34.993027, 38.362976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569534, 35.181320, 38.355621>,  <34.357834, 35.294296, 38.351208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569534, 35.181320, 38.355621>,  <34.922367, 34.993027, 38.362976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569534, 35.181320, 38.355621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144911, -0.308256, -0.940202,
		-0.448255, -0.826671, 0.340122,
		-0.882082, 0.470737, -0.018383,
		34.304909, 35.322540, 38.350105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417862, 34.491234, 38.195148>,  <34.922367, 34.993027, 38.362976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417862, 34.491234, 38.195148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225266, 34.831024, 38.108833>,  <34.109707, 35.034897, 38.057045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225266, 34.831024, 38.108833>,  <34.417862, 34.491234, 38.195148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225266, 34.831024, 38.108833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388879, -0.427705, -0.815991,
		-0.785458, -0.308971, 0.536277,
		-0.481486, 0.849473, -0.215791,
		34.080818, 35.085865, 38.044094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770550, 34.272915, 37.952251>,  <34.417862, 34.491234, 38.195148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770550, 34.272915, 37.952251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782726, 34.648899, 37.816280>,  <33.790031, 34.874489, 37.734695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782726, 34.648899, 37.816280>,  <33.770550, 34.272915, 37.952251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782726, 34.648899, 37.816280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446501, -0.291483, -0.845975,
		-0.894265, 0.177529, 0.410820,
		0.030438, 0.939958, -0.339930,
		33.791859, 34.930885, 37.714302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198929, 34.296154, 37.590725>,  <33.770550, 34.272915, 37.952251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198929, 34.296154, 37.590725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395355, 34.625443, 37.476768>,  <33.513210, 34.823017, 37.408394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395355, 34.625443, 37.476768>,  <33.198929, 34.296154, 37.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395355, 34.625443, 37.476768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578176, 0.063389, -0.813446,
		-0.651586, 0.564173, 0.507094,
		0.491068, 0.823220, -0.284889,
		33.542675, 34.872410, 37.391300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712292, 34.857079, 37.430092>,  <33.198929, 34.296154, 37.590725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712292, 34.857079, 37.430092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056835, 34.921761, 37.237461>,  <33.263561, 34.960571, 37.121883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056835, 34.921761, 37.237461>,  <32.712292, 34.857079, 37.430092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056835, 34.921761, 37.237461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500360, 0.106224, -0.859276,
		-0.087798, 0.981105, 0.172409,
		0.861354, 0.161709, -0.481580,
		33.315243, 34.970272, 37.092987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566158, 35.255978, 36.776661>,  <32.712292, 34.857079, 37.430092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566158, 35.255978, 36.776661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931076, 35.097309, 36.735924>,  <33.150028, 35.002110, 36.711483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931076, 35.097309, 36.735924>,  <32.566158, 35.255978, 36.776661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931076, 35.097309, 36.735924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161363, -0.119614, -0.979619,
		0.376402, 0.910136, -0.173131,
		0.912296, -0.396668, -0.101840,
		33.204765, 34.978310, 36.705372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714874, 35.508560, 36.273495>,  <32.566158, 35.255978, 36.776661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714874, 35.508560, 36.273495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979507, 35.208614, 36.272205>,  <33.138287, 35.028648, 36.271431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979507, 35.208614, 36.272205>,  <32.714874, 35.508560, 36.273495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979507, 35.208614, 36.272205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167756, -0.143816, -0.975282,
		0.730866, 0.645771, -0.220941,
		0.661584, -0.749865, -0.003221,
		33.177982, 34.983654, 36.271240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088696, 35.680691, 35.695438>,  <32.714874, 35.508560, 36.273495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088696, 35.680691, 35.695438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167423, 35.295956, 35.771473>,  <33.214661, 35.065117, 35.817093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167423, 35.295956, 35.771473>,  <33.088696, 35.680691, 35.695438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167423, 35.295956, 35.771473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053752, -0.204174, -0.977458,
		0.978965, 0.182168, -0.091887,
		0.196822, -0.961835, 0.190088,
		33.226471, 35.007404, 35.828499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605083, 35.546894, 35.240620>,  <33.088696, 35.680691, 35.695438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605083, 35.546894, 35.240620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451099, 35.192139, 35.342777>,  <33.358707, 34.979286, 35.404072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451099, 35.192139, 35.342777>,  <33.605083, 35.546894, 35.240620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451099, 35.192139, 35.342777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098671, -0.235585, -0.966832,
		0.917642, -0.397396, 0.003181,
		-0.384964, -0.886891, 0.255394,
		33.335609, 34.926071, 35.419395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931091, 35.116253, 34.809879>,  <33.605083, 35.546894, 35.240620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931091, 35.116253, 34.809879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623131, 34.896717, 34.940121>,  <33.438354, 34.764996, 35.018265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623131, 34.896717, 34.940121>,  <33.931091, 35.116253, 34.809879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623131, 34.896717, 34.940121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095207, -0.405726, -0.909023,
		0.631017, -0.730860, 0.260116,
		-0.769904, -0.548844, 0.325603,
		33.392159, 34.732063, 35.037800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964050, 34.509911, 34.497746>,  <33.931091, 35.116253, 34.809879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964050, 34.509911, 34.497746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579815, 34.518654, 34.608589>,  <33.349274, 34.523899, 34.675095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579815, 34.518654, 34.608589>,  <33.964050, 34.509911, 34.497746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579815, 34.518654, 34.608589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247277, -0.522526, -0.815979,
		0.126963, -0.852344, 0.507337,
		-0.960590, 0.021854, 0.277107,
		33.291637, 34.525211, 34.691723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646320, 33.767078, 34.593426>,  <33.964050, 34.509911, 34.497746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646320, 33.767078, 34.593426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387947, 34.052013, 34.483627>,  <33.232925, 34.222973, 34.417747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387947, 34.052013, 34.483627>,  <33.646320, 33.767078, 34.593426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387947, 34.052013, 34.483627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129865, -0.456868, -0.880004,
		-0.752269, -0.532773, 0.387613,
		-0.645930, 0.712337, -0.274499,
		33.194168, 34.265713, 34.401279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092049, 33.485420, 34.231884>,  <33.646320, 33.767078, 34.593426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092049, 33.485420, 34.231884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129696, 33.864460, 34.109776>,  <33.152287, 34.091885, 34.036510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129696, 33.864460, 34.109776>,  <33.092049, 33.485420, 34.231884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129696, 33.864460, 34.109776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078559, -0.298606, -0.951138,
		-0.992456, 0.113504, 0.046337,
		0.094121, 0.947603, -0.305270,
		33.157932, 34.148743, 34.018196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073193, 33.183510, 34.965740>,  <33.092049, 33.485420, 34.231884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073193, 33.183510, 34.965740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253040, 32.855057, 34.825127>,  <33.360950, 32.657986, 34.740761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253040, 32.855057, 34.825127>,  <33.073193, 33.183510, 34.965740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253040, 32.855057, 34.825127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223703, -0.484532, 0.845687,
		-0.864752, -0.301602, -0.401547,
		0.449623, -0.821137, -0.351531,
		33.387928, 32.608715, 34.719666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757320, 32.690765, 35.325047>,  <33.073193, 33.183510, 34.965740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757320, 32.690765, 35.325047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053574, 32.469646, 35.172272>,  <33.231327, 32.336975, 35.080608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053574, 32.469646, 35.172272>,  <32.757320, 32.690765, 35.325047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053574, 32.469646, 35.172272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031142, -0.596067, 0.802331,
		-0.671185, -0.582341, -0.458683,
		0.740636, -0.552797, -0.381936,
		33.275764, 32.303806, 35.057690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540318, 31.948750, 35.130112>,  <32.757320, 32.690765, 35.325047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540318, 31.948750, 35.130112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917908, 31.988325, 35.256046>,  <33.144463, 32.012070, 35.331608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917908, 31.988325, 35.256046>,  <32.540318, 31.948750, 35.130112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917908, 31.988325, 35.256046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251313, -0.402827, 0.880098,
		0.213902, -0.909913, -0.355394,
		0.943974, 0.098940, 0.314839,
		33.201099, 32.018005, 35.350498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927071, 31.279039, 35.335278>,  <32.540318, 31.948750, 35.130112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927071, 31.279039, 35.335278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079533, 31.589264, 35.536564>,  <33.171009, 31.775398, 35.657337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079533, 31.589264, 35.536564>,  <32.927071, 31.279039, 35.335278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079533, 31.589264, 35.536564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017101, -0.538300, 0.842580,
		0.924354, -0.329757, -0.191911,
		0.381152, 0.775560, 0.503219,
		33.193878, 31.821932, 35.687531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338036, 30.997658, 35.841396>,  <32.927071, 31.279039, 35.335278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338036, 30.997658, 35.841396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301746, 31.378328, 35.958752>,  <33.279972, 31.606731, 36.029167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301746, 31.378328, 35.958752>,  <33.338036, 30.997658, 35.841396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301746, 31.378328, 35.958752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132764, -0.280419, 0.950652,
		0.986987, 0.125200, -0.100908,
		-0.090725, 0.951678, 0.293392,
		33.274529, 31.663832, 36.046768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839542, 31.165033, 36.218224>,  <33.338036, 30.997658, 35.841396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839542, 31.165033, 36.218224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566761, 31.428770, 36.344849>,  <33.403091, 31.587011, 36.420822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566761, 31.428770, 36.344849>,  <33.839542, 31.165033, 36.218224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566761, 31.428770, 36.344849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012663, -0.443397, 0.896236,
		0.731289, 0.607179, 0.310724,
		-0.681950, 0.659342, 0.316562,
		33.362175, 31.626574, 36.439816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100185, 31.305834, 36.844742>,  <33.839542, 31.165033, 36.218224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100185, 31.305834, 36.844742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727951, 31.452248, 36.846554>,  <33.504608, 31.540096, 36.847641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727951, 31.452248, 36.846554>,  <34.100185, 31.305834, 36.844742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727951, 31.452248, 36.846554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089072, -0.238409, 0.967072,
		0.355061, 0.899544, 0.254464,
		-0.930590, 0.366035, 0.004526,
		33.448772, 31.562057, 36.847912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075443, 31.803598, 37.417595>,  <34.100185, 31.305834, 36.844742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075443, 31.803598, 37.417595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695324, 31.701582, 37.346176>,  <33.467251, 31.640371, 37.303326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695324, 31.701582, 37.346176>,  <34.075443, 31.803598, 37.417595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695324, 31.701582, 37.346176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142717, -0.152806, 0.977897,
		-0.276688, 0.954779, 0.108813,
		-0.950303, -0.255043, -0.178543,
		33.410233, 31.625069, 37.292614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708588, 32.114189, 38.015495>,  <34.075443, 31.803598, 37.417595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708588, 32.114189, 38.015495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481133, 31.830700, 37.848473>,  <33.344658, 31.660606, 37.748257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481133, 31.830700, 37.848473>,  <33.708588, 32.114189, 38.015495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481133, 31.830700, 37.848473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276695, -0.313242, 0.908471,
		-0.774654, 0.632130, -0.017979,
		-0.568640, -0.708725, -0.417561,
		33.310539, 31.618082, 37.723206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128510, 32.037140, 38.397923>,  <33.708588, 32.114189, 38.015495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128510, 32.037140, 38.397923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139545, 31.685661, 38.207287>,  <33.146168, 31.474775, 38.092907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139545, 31.685661, 38.207287>,  <33.128510, 32.037140, 38.397923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139545, 31.685661, 38.207287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211383, -0.471115, 0.856369,
		-0.977014, 0.077119, -0.198737,
		0.027586, -0.878694, -0.476588,
		33.147820, 31.422052, 38.064312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458668, 31.679680, 38.543056>,  <33.128510, 32.037140, 38.397923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458668, 31.679680, 38.543056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719543, 31.400770, 38.424091>,  <32.876068, 31.233425, 38.352711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719543, 31.400770, 38.424091>,  <32.458668, 31.679680, 38.543056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719543, 31.400770, 38.424091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343651, -0.621663, 0.703874,
		-0.675685, -0.356853, -0.645062,
		0.652191, -0.697274, -0.297416,
		32.915199, 31.191587, 38.334866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139133, 31.018084, 38.695396>,  <32.458668, 31.679680, 38.543056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139133, 31.018084, 38.695396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510887, 30.889656, 38.622555>,  <32.733940, 30.812599, 38.578850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510887, 30.889656, 38.622555>,  <32.139133, 31.018084, 38.695396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510887, 30.889656, 38.622555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116387, -0.723082, 0.680887,
		-0.350288, -0.611610, -0.709388,
		0.929383, -0.321070, -0.182104,
		32.789703, 30.793335, 38.567924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163326, 30.259596, 38.728905>,  <32.139133, 31.018084, 38.695396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163326, 30.259596, 38.728905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550907, 30.333094, 38.795086>,  <32.783455, 30.377192, 38.834793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550907, 30.333094, 38.795086>,  <32.163326, 30.259596, 38.728905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550907, 30.333094, 38.795086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031972, -0.570415, 0.820734,
		0.245180, -0.800540, -0.546829,
		0.968950, 0.183745, 0.165449,
		32.841591, 30.388218, 38.844719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567322, 29.633394, 38.921188>,  <32.163326, 30.259596, 38.728905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567322, 29.633394, 38.921188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799171, 29.928326, 39.059971>,  <32.938282, 30.105284, 39.143242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799171, 29.928326, 39.059971>,  <32.567322, 29.633394, 38.921188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799171, 29.928326, 39.059971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046378, -0.454940, 0.889314,
		0.813561, -0.499379, -0.297891,
		0.579627, 0.737327, 0.346961,
		32.973061, 30.149523, 39.164059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082798, 29.207476, 39.148968>,  <32.567322, 29.633394, 38.921188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082798, 29.207476, 39.148968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137394, 29.563251, 39.323444>,  <33.170151, 29.776718, 39.428131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137394, 29.563251, 39.323444>,  <33.082798, 29.207476, 39.148968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137394, 29.563251, 39.323444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388724, -0.453088, 0.802250,
		0.911188, 0.060058, -0.407590,
		0.136492, 0.889441, 0.436194,
		33.178341, 29.830084, 39.454304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738461, 29.186363, 39.537556>,  <33.082798, 29.207476, 39.148968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738461, 29.186363, 39.537556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509357, 29.449322, 39.733425>,  <33.371895, 29.607098, 39.850948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509357, 29.449322, 39.733425>,  <33.738461, 29.186363, 39.537556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509357, 29.449322, 39.733425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182307, -0.480247, 0.857978,
		0.799196, 0.580684, 0.155217,
		-0.572756, 0.657396, 0.489674,
		33.337532, 29.646540, 39.880329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192173, 29.290455, 40.131107>,  <33.738461, 29.186363, 39.537556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192173, 29.290455, 40.131107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833065, 29.443192, 40.218933>,  <33.617599, 29.534834, 40.271629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833065, 29.443192, 40.218933>,  <34.192173, 29.290455, 40.131107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833065, 29.443192, 40.218933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012275, -0.519983, 0.854089,
		0.440299, 0.764078, 0.471511,
		-0.897767, 0.381842, 0.219568,
		33.563736, 29.557745, 40.284805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276176, 29.590237, 40.787815>,  <34.192173, 29.290455, 40.131107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276176, 29.590237, 40.787815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877464, 29.572086, 40.761402>,  <33.638237, 29.561195, 40.745552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877464, 29.572086, 40.761402>,  <34.276176, 29.590237, 40.787815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877464, 29.572086, 40.761402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042144, -0.404024, 0.913777,
		-0.068145, 0.913622, 0.400813,
		-0.996785, -0.045378, -0.066036,
		33.578430, 29.558474, 40.741592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999123, 29.837849, 41.433590>,  <34.276176, 29.590237, 40.787815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999123, 29.837849, 41.433590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705589, 29.615274, 41.277706>,  <33.529469, 29.481730, 41.184177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705589, 29.615274, 41.277706>,  <33.999123, 29.837849, 41.433590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705589, 29.615274, 41.277706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263317, -0.295828, 0.918232,
		-0.626224, 0.776443, 0.070569,
		-0.733831, -0.556437, -0.389706,
		33.485439, 29.448343, 41.160793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424839, 29.963066, 41.781166>,  <33.999123, 29.837849, 41.433590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424839, 29.963066, 41.781166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368130, 29.597336, 41.629425>,  <33.334103, 29.377897, 41.538380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368130, 29.597336, 41.629425>,  <33.424839, 29.963066, 41.781166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368130, 29.597336, 41.629425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329169, -0.317871, 0.889160,
		-0.933567, 0.250930, -0.255902,
		-0.141773, -0.914326, -0.379353,
		33.325600, 29.323038, 41.515617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647354, 29.714949, 41.766430>,  <33.424839, 29.963066, 41.781166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647354, 29.714949, 41.766430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897182, 29.402641, 41.759369>,  <33.047081, 29.215258, 41.755135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897182, 29.402641, 41.759369>,  <32.647354, 29.714949, 41.766430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897182, 29.402641, 41.759369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379006, -0.322788, 0.867273,
		-0.682836, -0.534985, -0.497520,
		0.624572, -0.780768, -0.017649,
		33.084553, 29.168411, 41.754074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336689, 29.098261, 42.230255>,  <32.647354, 29.714949, 41.766430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336689, 29.098261, 42.230255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696945, 28.943987, 42.150166>,  <32.913101, 28.851423, 42.102112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696945, 28.943987, 42.150166>,  <32.336689, 29.098261, 42.230255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696945, 28.943987, 42.150166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014230, -0.434327, 0.900643,
		-0.434327, -0.814007, -0.385685,
		-0.900643, 0.385685, 0.200224,
		32.967136, 28.828281, 42.090099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367985, 28.481400, 42.571045>,  <32.336689, 29.098261, 42.230255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367985, 28.481400, 42.571045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754135, 28.533628, 42.480721>,  <32.985825, 28.564966, 42.426525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754135, 28.533628, 42.480721>,  <32.367985, 28.481400, 42.571045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754135, 28.533628, 42.480721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260055, -0.414340, 0.872178,
		0.020321, -0.900707, -0.433952,
		0.965380, 0.130575, -0.225813,
		33.043751, 28.572802, 42.412975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597992, 27.876640, 42.568642>,  <32.367985, 28.481400, 42.571045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597992, 27.876640, 42.568642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899117, 28.123652, 42.659798>,  <33.079792, 28.271858, 42.714493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899117, 28.123652, 42.659798>,  <32.597992, 27.876640, 42.568642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899117, 28.123652, 42.659798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214549, -0.557504, 0.801971,
		0.622290, -0.554839, -0.552185,
		0.752810, 0.617530, 0.227889,
		33.124958, 28.308910, 42.728165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060356, 27.449911, 42.898010>,  <32.597992, 27.876640, 42.568642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060356, 27.449911, 42.898010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209732, 27.808149, 42.994717>,  <33.299358, 28.023092, 43.052738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209732, 27.808149, 42.994717>,  <33.060356, 27.449911, 42.898010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209732, 27.808149, 42.994717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393117, -0.388847, 0.833221,
		0.840238, -0.216118, -0.497286,
		0.373442, 0.895596, 0.241764,
		33.321766, 28.076828, 43.067245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740776, 27.362179, 43.028919>,  <33.060356, 27.449911, 42.898010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740776, 27.362179, 43.028919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640839, 27.694828, 43.227303>,  <33.580875, 27.894419, 43.346333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640839, 27.694828, 43.227303>,  <33.740776, 27.362179, 43.028919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640839, 27.694828, 43.227303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494840, -0.330607, 0.803637,
		0.832293, 0.446206, -0.328921,
		-0.249843, 0.831625, 0.495963,
		33.565887, 27.944315, 43.376091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333942, 27.445107, 43.394176>,  <33.740776, 27.362179, 43.028919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333942, 27.445107, 43.394176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071751, 27.680626, 43.583351>,  <33.914436, 27.821938, 43.696857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071751, 27.680626, 43.583351>,  <34.333942, 27.445107, 43.394176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071751, 27.680626, 43.583351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445467, -0.204246, 0.871689,
		0.609845, 0.782048, -0.128412,
		-0.655475, 0.588799, 0.472936,
		33.875107, 27.857265, 43.725231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905010, 27.783966, 42.925560>,  <34.333942, 27.445107, 43.394176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905010, 27.783966, 42.925560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301510, 27.806345, 42.877739>,  <35.539410, 27.819773, 42.849045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301510, 27.806345, 42.877739>,  <34.905010, 27.783966, 42.925560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301510, 27.806345, 42.877739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131983, 0.432299, -0.892019,
		0.001775, 0.899993, 0.435901,
		0.991250, 0.055949, -0.119551,
		35.598885, 27.823130, 42.841873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982338, 28.464930, 42.612675>,  <34.905010, 27.783966, 42.925560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982338, 28.464930, 42.612675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313606, 28.256781, 42.529392>,  <35.512367, 28.131891, 42.479424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313606, 28.256781, 42.529392>,  <34.982338, 28.464930, 42.612675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313606, 28.256781, 42.529392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024262, 0.404418, -0.914252,
		0.559953, 0.752104, 0.347552,
		0.828169, -0.520370, -0.208208,
		35.562057, 28.100670, 42.466930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543911, 28.929840, 42.516747>,  <34.982338, 28.464930, 42.612675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543911, 28.929840, 42.516747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659660, 28.604147, 42.315434>,  <35.729111, 28.408731, 42.194645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659660, 28.604147, 42.315434>,  <35.543911, 28.929840, 42.516747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659660, 28.604147, 42.315434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065200, 0.507788, -0.859011,
		0.954994, 0.281387, 0.093852,
		0.289371, -0.814231, -0.503281,
		35.746471, 28.359877, 42.164448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144020, 29.126986, 42.100628>,  <35.543911, 28.929840, 42.516747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144020, 29.126986, 42.100628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024391, 28.795300, 41.911755>,  <35.952614, 28.596287, 41.798431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024391, 28.795300, 41.911755>,  <36.144020, 29.126986, 42.100628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024391, 28.795300, 41.911755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428014, 0.325692, -0.843047,
		0.852855, -0.454231, 0.257512,
		-0.299068, -0.829216, -0.472185,
		35.934669, 28.546535, 41.770100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713379, 28.890362, 41.725899>,  <36.144020, 29.126986, 42.100628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713379, 28.890362, 41.725899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408463, 28.701544, 41.548771>,  <36.225513, 28.588253, 41.442493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408463, 28.701544, 41.548771>,  <36.713379, 28.890362, 41.725899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408463, 28.701544, 41.548771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329313, 0.306126, -0.893219,
		0.557200, -0.826716, -0.077905,
		-0.762287, -0.472046, -0.442822,
		36.179775, 28.559929, 41.415924>
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
