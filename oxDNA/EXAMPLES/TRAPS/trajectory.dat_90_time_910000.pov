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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<35.643406, 52.431610, 49.973267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898121, 52.598351, 50.232723>,  <36.050949, 52.698395, 50.388397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898121, 52.598351, 50.232723>,  <35.643406, 52.431610, 49.973267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898121, 52.598351, 50.232723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523090, 0.384493, -0.760619,
		-0.566463, 0.823652, 0.026790,
		0.636786, 0.416849, 0.648645,
		36.089157, 52.723404, 50.427319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806099, 53.159264, 49.828960>,  <35.643406, 52.431610, 49.973267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806099, 53.159264, 49.828960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115959, 52.969513, 49.996243>,  <36.301876, 52.855663, 50.096611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115959, 52.969513, 49.996243>,  <35.806099, 53.159264, 49.828960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115959, 52.969513, 49.996243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609305, 0.382801, -0.694414,
		0.169323, 0.792738, 0.585573,
		0.774646, -0.474373, 0.418203,
		36.348354, 52.827202, 50.121704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878674, 53.853168, 50.056652>,  <35.806099, 53.159264, 49.828960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878674, 53.853168, 50.056652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759029, 53.510960, 50.225708>,  <35.687244, 53.305634, 50.327141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759029, 53.510960, 50.225708>,  <35.878674, 53.853168, 50.056652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759029, 53.510960, 50.225708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565496, 0.197830, 0.800673,
		-0.768600, 0.478490, 0.424619,
		-0.299111, -0.855518, 0.422637,
		35.669296, 53.254303, 50.352497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623417, 53.892815, 50.693283>,  <35.878674, 53.853168, 50.056652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623417, 53.892815, 50.693283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779861, 53.525597, 50.667305>,  <35.873730, 53.305264, 50.651718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779861, 53.525597, 50.667305>,  <35.623417, 53.892815, 50.693283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779861, 53.525597, 50.667305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539991, 0.171765, 0.823958,
		-0.745278, -0.357329, 0.562917,
		0.391114, -0.918048, -0.064941,
		35.897194, 53.250183, 50.647823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434517, 53.401329, 51.140064>,  <35.623417, 53.892815, 50.693283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434517, 53.401329, 51.140064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813808, 53.364201, 51.018578>,  <36.041382, 53.341923, 50.945686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813808, 53.364201, 51.018578>,  <35.434517, 53.401329, 51.140064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813808, 53.364201, 51.018578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308540, 0.495861, 0.811742,
		0.075258, -0.863427, 0.498828,
		0.948229, -0.092818, -0.303719,
		36.098278, 53.336353, 50.927464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769608, 53.491970, 51.809170>,  <35.434517, 53.401329, 51.140064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769608, 53.491970, 51.809170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074852, 53.510536, 51.551331>,  <36.257999, 53.521675, 51.396629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074852, 53.510536, 51.551331>,  <35.769608, 53.491970, 51.809170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074852, 53.510536, 51.551331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506031, 0.577486, 0.640658,
		0.401981, -0.815080, 0.417200,
		0.763115, 0.046416, -0.644594,
		36.303787, 53.524460, 51.357952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294678, 53.503769, 52.265331>,  <35.769608, 53.491970, 51.809170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294678, 53.503769, 52.265331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433132, 53.612728, 51.906223>,  <36.516205, 53.678104, 51.690758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433132, 53.612728, 51.906223>,  <36.294678, 53.503769, 52.265331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433132, 53.612728, 51.906223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726709, 0.527370, 0.440198,
		0.593367, -0.804784, -0.015415,
		0.346135, 0.272401, -0.897768,
		36.536972, 53.694447, 51.636894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470661, 52.956997, 52.628208>,  <36.294678, 53.503769, 52.265331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470661, 52.956997, 52.628208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676979, 52.913811, 52.968163>,  <36.800770, 52.887897, 53.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676979, 52.913811, 52.968163>,  <36.470661, 52.956997, 52.628208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676979, 52.913811, 52.968163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786248, -0.334340, -0.519645,
		0.340255, 0.936248, -0.087560,
		0.515792, -0.107968, 0.849884,
		36.831715, 52.881420, 53.223129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124954, 53.280506, 52.492821>,  <36.470661, 52.956997, 52.628208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124954, 53.280506, 52.492821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176933, 52.959915, 52.726315>,  <37.208122, 52.767559, 52.866409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176933, 52.959915, 52.726315>,  <37.124954, 53.280506, 52.492821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176933, 52.959915, 52.726315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776915, -0.283477, -0.562178,
		0.616049, 0.526562, 0.585846,
		0.129948, -0.801482, 0.583730,
		37.215919, 52.719471, 52.901432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802654, 53.099743, 52.221802>,  <37.124954, 53.280506, 52.492821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802654, 53.099743, 52.221802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700062, 52.808254, 52.475788>,  <37.638508, 52.633362, 52.628178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700062, 52.808254, 52.475788>,  <37.802654, 53.099743, 52.221802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700062, 52.808254, 52.475788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507111, -0.660714, -0.553439,
		0.822834, 0.180051, 0.539005,
		-0.256481, -0.728724, 0.634964,
		37.623119, 52.589638, 52.666279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404305, 53.188797, 52.575809>,  <37.802654, 53.099743, 52.221802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404305, 53.188797, 52.575809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778759, 53.258072, 52.453392>,  <39.003429, 53.299637, 52.379944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778759, 53.258072, 52.453392>,  <38.404305, 53.188797, 52.575809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778759, 53.258072, 52.453392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221172, 0.386625, 0.895323,
		0.273383, -0.905829, 0.323628,
		0.936133, 0.173188, -0.306041,
		39.059597, 53.310028, 52.361580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988262, 52.758068, 53.048298>,  <38.404305, 53.188797, 52.575809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988262, 52.758068, 53.048298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128048, 53.099495, 52.893738>,  <39.211918, 53.304352, 52.801003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128048, 53.099495, 52.893738>,  <38.988262, 52.758068, 53.048298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128048, 53.099495, 52.893738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391880, 0.241446, 0.887769,
		0.851062, -0.461664, -0.250119,
		0.349461, 0.853563, -0.386402,
		39.232887, 53.355564, 52.777817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654320, 52.902569, 53.295956>,  <38.988262, 52.758068, 53.048298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654320, 52.902569, 53.295956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520203, 53.262245, 53.183502>,  <39.439732, 53.478050, 53.116032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520203, 53.262245, 53.183502>,  <39.654320, 52.902569, 53.295956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520203, 53.262245, 53.183502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448679, 0.414799, 0.791599,
		0.828411, 0.139282, -0.542527,
		-0.335295, 0.899190, -0.281131,
		39.419613, 53.532001, 53.099163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193211, 53.301613, 53.432793>,  <39.654320, 52.902569, 53.295956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193211, 53.301613, 53.432793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874249, 53.542831, 53.423954>,  <39.682873, 53.687561, 53.418652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874249, 53.542831, 53.423954>,  <40.193211, 53.301613, 53.432793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874249, 53.542831, 53.423954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357727, 0.501869, 0.787502,
		0.485986, 0.620052, -0.615916,
		-0.797401, 0.603045, -0.022092,
		39.635029, 53.723743, 53.417328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485554, 53.949249, 53.383663>,  <40.193211, 53.301613, 53.432793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485554, 53.949249, 53.383663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133999, 54.028244, 53.557354>,  <39.923065, 54.075642, 53.661568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133999, 54.028244, 53.557354>,  <40.485554, 53.949249, 53.383663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133999, 54.028244, 53.557354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442712, 0.676692, 0.588298,
		-0.177655, 0.709285, -0.682168,
		-0.878888, 0.197490, 0.434227,
		39.870331, 54.087490, 53.687622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525749, 54.251408, 53.990639>,  <40.485554, 53.949249, 53.383663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525749, 54.251408, 53.990639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303013, 54.020626, 54.229652>,  <40.169369, 53.882156, 54.373062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303013, 54.020626, 54.229652>,  <40.525749, 54.251408, 53.990639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303013, 54.020626, 54.229652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298743, 0.532138, 0.792201,
		-0.775033, 0.619643, -0.123959,
		-0.556845, -0.576950, 0.597538,
		40.135960, 53.847542, 54.408913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081745, 54.737995, 54.437359>,  <40.525749, 54.251408, 53.990639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081745, 54.737995, 54.437359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212589, 54.388359, 54.581009>,  <40.291096, 54.178577, 54.667198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212589, 54.388359, 54.581009>,  <40.081745, 54.737995, 54.437359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212589, 54.388359, 54.581009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793065, 0.460577, 0.398643,
		-0.513852, 0.154406, 0.843869,
		0.327114, -0.874087, 0.359123,
		40.310722, 54.126133, 54.688747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192287, 54.874432, 55.138222>,  <40.081745, 54.737995, 54.437359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192287, 54.874432, 55.138222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419998, 54.582798, 54.986244>,  <40.556625, 54.407818, 54.895058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419998, 54.582798, 54.986244>,  <40.192287, 54.874432, 55.138222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419998, 54.582798, 54.986244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793890, 0.367373, 0.484537,
		-0.213689, -0.577468, 0.787952,
		0.569277, -0.729087, -0.379942,
		40.590782, 54.364071, 54.872261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586754, 54.434971, 55.666473>,  <40.192287, 54.874432, 55.138222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586754, 54.434971, 55.666473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809879, 54.393356, 55.337105>,  <40.943756, 54.368389, 55.139484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809879, 54.393356, 55.337105>,  <40.586754, 54.434971, 55.666473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809879, 54.393356, 55.337105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806411, 0.302624, 0.508055,
		0.196332, -0.947415, 0.252703,
		0.557813, -0.104035, -0.823421,
		40.977222, 54.362144, 55.090080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107834, 53.888187, 55.759655>,  <40.586754, 54.434971, 55.666473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107834, 53.888187, 55.759655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249222, 54.159168, 55.501625>,  <41.334053, 54.321758, 55.346806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249222, 54.159168, 55.501625>,  <41.107834, 53.888187, 55.759655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249222, 54.159168, 55.501625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882230, -0.012142, 0.470663,
		0.311019, -0.735467, -0.601960,
		0.353466, 0.677452, -0.645074,
		41.355263, 54.362404, 55.308102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737411, 53.626278, 55.416271>,  <41.107834, 53.888187, 55.759655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737411, 53.626278, 55.416271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684681, 54.001419, 55.544685>,  <41.653042, 54.226501, 55.621735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684681, 54.001419, 55.544685>,  <41.737411, 53.626278, 55.416271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684681, 54.001419, 55.544685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639312, -0.167068, 0.750578,
		0.757563, 0.304185, -0.577554,
		-0.131824, 0.937848, 0.321034,
		41.645134, 54.282772, 55.640995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329231, 54.228531, 55.343010>,  <41.737411, 53.626278, 55.416271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329231, 54.228531, 55.343010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091190, 54.264343, 55.662468>,  <41.948364, 54.285831, 55.854141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091190, 54.264343, 55.662468>,  <42.329231, 54.228531, 55.343010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091190, 54.264343, 55.662468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791934, -0.103732, 0.601731,
		0.136721, 0.990567, -0.009174,
		-0.595104, 0.089534, 0.798646,
		41.912659, 54.291203, 55.902061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461296, 54.791523, 55.823612>,  <42.329231, 54.228531, 55.343010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461296, 54.791523, 55.823612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331409, 54.470810, 56.024292>,  <42.253479, 54.278381, 56.144699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331409, 54.470810, 56.024292>,  <42.461296, 54.791523, 55.823612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331409, 54.470810, 56.024292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863386, -0.034700, 0.503350,
		-0.386170, 0.596605, 0.703517,
		-0.324713, -0.801785, 0.501700,
		42.233997, 54.230274, 56.174801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920166, 54.834827, 56.283257>,  <42.461296, 54.791523, 55.823612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920166, 54.834827, 56.283257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810890, 54.452133, 56.323311>,  <42.745323, 54.222519, 56.347343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810890, 54.452133, 56.323311>,  <42.920166, 54.834827, 56.283257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810890, 54.452133, 56.323311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863855, -0.198199, 0.463111,
		-0.423226, 0.213024, 0.880625,
		-0.273193, -0.956733, 0.100138,
		42.728931, 54.165112, 56.353352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040527, 54.685219, 56.893982>,  <42.920166, 54.834827, 56.283257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040527, 54.685219, 56.893982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093163, 54.353241, 56.677139>,  <43.124744, 54.154053, 56.547035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093163, 54.353241, 56.677139>,  <43.040527, 54.685219, 56.893982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093163, 54.353241, 56.677139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946080, -0.058155, 0.318671,
		-0.296005, -0.554808, 0.777540,
		0.131584, -0.829943, -0.542107,
		43.132637, 54.104259, 56.514507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204582, 54.031223, 57.352562>,  <43.040527, 54.685219, 56.893982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204582, 54.031223, 57.352562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356194, 54.042366, 56.982574>,  <43.447159, 54.049053, 56.760582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356194, 54.042366, 56.982574>,  <43.204582, 54.031223, 57.352562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356194, 54.042366, 56.982574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913359, -0.171890, 0.369093,
		-0.148709, -0.984722, -0.090598,
		0.379027, 0.027861, -0.924966,
		43.469902, 54.050724, 56.705086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761364, 53.624535, 57.308357>,  <43.204582, 54.031223, 57.352562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761364, 53.624535, 57.308357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835587, 53.899673, 57.027664>,  <43.880119, 54.064758, 56.859249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835587, 53.899673, 57.027664>,  <43.761364, 53.624535, 57.308357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835587, 53.899673, 57.027664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952385, 0.049931, 0.300783,
		0.241931, -0.724136, -0.645830,
		0.185561, 0.687848, -0.701735,
		43.891254, 54.106030, 56.817142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130806, 53.465626, 56.751060>,  <43.761364, 53.624535, 57.308357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130806, 53.465626, 56.751060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186367, 53.858562, 56.801208>,  <44.219704, 54.094322, 56.831299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186367, 53.858562, 56.801208>,  <44.130806, 53.465626, 56.751060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186367, 53.858562, 56.801208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990004, -0.134611, -0.042088,
		-0.024468, 0.129965, -0.991217,
		0.138899, 0.982339, 0.125372,
		44.228035, 54.153263, 56.838821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569553, 53.863678, 56.204727>,  <44.130806, 53.465626, 56.751060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569553, 53.863678, 56.204727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582798, 54.013409, 56.575409>,  <44.590744, 54.103245, 56.797817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582798, 54.013409, 56.575409>,  <44.569553, 53.863678, 56.204727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582798, 54.013409, 56.575409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939628, -0.327634, 0.098765,
		0.340591, 0.867489, -0.362575,
		0.033114, 0.374324, 0.926706,
		44.592731, 54.125706, 56.853420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895336, 53.178288, 56.053215>,  <44.569553, 53.863678, 56.204727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895336, 53.178288, 56.053215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978344, 53.251923, 55.668915>,  <45.028149, 53.296104, 55.438335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978344, 53.251923, 55.668915>,  <44.895336, 53.178288, 56.053215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978344, 53.251923, 55.668915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921169, -0.367306, 0.128586,
		-0.329219, -0.911700, -0.245800,
		0.207516, 0.184090, -0.960754,
		45.040600, 53.307148, 55.380688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206158, 52.638271, 55.781021>,  <44.895336, 53.178288, 56.053215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206158, 52.638271, 55.781021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337032, 52.971909, 55.603378>,  <45.415558, 53.172092, 55.496792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337032, 52.971909, 55.603378>,  <45.206158, 52.638271, 55.781021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337032, 52.971909, 55.603378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944550, -0.302518, 0.127704,
		-0.027834, -0.461267, -0.886825,
		0.327186, 0.834096, -0.444110,
		45.435188, 53.222137, 55.470146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582630, 52.533348, 55.230713>,  <45.206158, 52.638271, 55.781021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582630, 52.533348, 55.230713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709160, 52.874023, 55.397835>,  <45.785080, 53.078430, 55.498108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709160, 52.874023, 55.397835>,  <45.582630, 52.533348, 55.230713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709160, 52.874023, 55.397835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813316, -0.470186, 0.342697,
		0.488317, 0.231401, -0.841427,
		0.316327, 0.851692, 0.417802,
		45.804058, 53.129532, 55.523174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223286, 52.864113, 54.862034>,  <45.582630, 52.533348, 55.230713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223286, 52.864113, 54.862034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189857, 52.950851, 55.251083>,  <46.169800, 53.002895, 55.484512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189857, 52.950851, 55.251083>,  <46.223286, 52.864113, 54.862034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189857, 52.950851, 55.251083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953459, -0.266363, 0.141307,
		0.289712, 0.939165, -0.184490,
		-0.083569, 0.216842, 0.972623,
		46.164787, 53.015903, 55.542870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666786, 53.343231, 55.036858>,  <46.223286, 52.864113, 54.862034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666786, 53.343231, 55.036858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577000, 53.115391, 55.353127>,  <46.523129, 52.978687, 55.542889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577000, 53.115391, 55.353127>,  <46.666786, 53.343231, 55.036858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577000, 53.115391, 55.353127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971697, -0.192126, 0.137451,
		0.073617, 0.799150, 0.596606,
		-0.224468, -0.569602, 0.790676,
		46.509659, 52.944511, 55.590328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.199009, 53.451408, 55.544315>,  <46.666786, 53.343231, 55.036858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.199009, 53.451408, 55.544315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030315, 53.100933, 55.637642>,  <46.929100, 52.890648, 55.693638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030315, 53.100933, 55.637642>,  <47.199009, 53.451408, 55.544315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030315, 53.100933, 55.637642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902953, -0.382404, 0.196072,
		-0.082574, 0.293365, 0.952428,
		-0.421732, -0.876187, 0.233318,
		46.903797, 52.838078, 55.707638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.295147, 53.274555, 56.334766>,  <47.199009, 53.451408, 55.544315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.295147, 53.274555, 56.334766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291973, 52.995415, 56.048286>,  <47.290070, 52.827930, 55.876400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291973, 52.995415, 56.048286>,  <47.295147, 53.274555, 56.334766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.291973, 52.995415, 56.048286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907599, -0.305675, 0.287796,
		-0.419763, -0.647737, 0.635795,
		-0.007930, -0.697854, -0.716197,
		47.289593, 52.786060, 55.833427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.549759, 52.747215, 56.641415>,  <47.295147, 53.274555, 56.334766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.549759, 52.747215, 56.641415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589115, 52.658508, 56.253365>,  <47.612728, 52.605286, 56.020535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589115, 52.658508, 56.253365>,  <47.549759, 52.747215, 56.641415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.589115, 52.658508, 56.253365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908787, -0.377200, 0.178401,
		-0.405493, -0.899189, 0.164424,
		0.098395, -0.221766, -0.970123,
		47.618633, 52.591980, 55.962326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.705357, 51.996490, 56.547626>,  <47.549759, 52.747215, 56.641415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.705357, 51.996490, 56.547626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843208, 52.190029, 56.225853>,  <47.925919, 52.306152, 56.032787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843208, 52.190029, 56.225853>,  <47.705357, 51.996490, 56.547626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.843208, 52.190029, 56.225853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876019, -0.473737, 0.090357,
		-0.337373, -0.735842, -0.587125,
		0.344631, 0.483848, -0.804438,
		47.946598, 52.335182, 55.984520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.268421, 51.502937, 56.325729>,  <47.705357, 51.996490, 56.547626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.268421, 51.502937, 56.325729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.288754, 51.869759, 56.167526>,  <48.300953, 52.089851, 56.072605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.288754, 51.869759, 56.167526>,  <48.268421, 51.502937, 56.325729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.288754, 51.869759, 56.167526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977276, -0.127277, -0.169504,
		-0.205784, -0.377902, -0.902687,
		0.050835, 0.917055, -0.395507,
		48.304005, 52.144875, 56.048874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.536236, 51.500340, 55.647671>,  <48.268421, 51.502937, 56.325729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.536236, 51.500340, 55.647671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.618217, 51.875778, 55.758690>,  <48.667408, 52.101040, 55.825302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.618217, 51.875778, 55.758690>,  <48.536236, 51.500340, 55.647671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.618217, 51.875778, 55.758690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936857, -0.106036, -0.333249,
		-0.283355, 0.328326, -0.901062,
		0.204959, 0.938594, 0.277549,
		48.679707, 52.157356, 55.841953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.728283, 51.989742, 55.130501>,  <48.536236, 51.500340, 55.647671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.728283, 51.989742, 55.130501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.934402, 52.030510, 55.470871>,  <49.058075, 52.054970, 55.675095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.934402, 52.030510, 55.470871>,  <48.728283, 51.989742, 55.130501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.934402, 52.030510, 55.470871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813712, -0.369794, -0.448470,
		0.268959, 0.923506, -0.273490,
		0.515300, 0.101923, 0.850928,
		49.088993, 52.061089, 55.726151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.330769, 52.461803, 55.261913>,  <48.728283, 51.989742, 55.130501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.330769, 52.461803, 55.261913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.362858, 52.108017, 55.445778>,  <49.382111, 51.895744, 55.556095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.362858, 52.108017, 55.445778>,  <49.330769, 52.461803, 55.261913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.362858, 52.108017, 55.445778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824800, -0.200042, -0.528856,
		0.559706, 0.421554, 0.713457,
		0.080220, -0.884463, 0.459662,
		49.386925, 51.842678, 55.583675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.007618, 52.454212, 55.429832>,  <49.330769, 52.461803, 55.261913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.007618, 52.454212, 55.429832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.845146, 52.088707, 55.426682>,  <49.747662, 51.869404, 55.424789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.845146, 52.088707, 55.426682>,  <50.007618, 52.454212, 55.429832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.845146, 52.088707, 55.426682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627445, -0.272622, -0.729377,
		0.664327, -0.301201, 0.684067,
		-0.406181, -0.913759, -0.007876,
		49.723293, 51.814579, 55.424320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.530602, 51.853527, 55.285580>,  <50.007618, 52.454212, 55.429832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.530602, 51.853527, 55.285580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.170486, 51.710327, 55.186531>,  <49.954418, 51.624409, 55.127102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.170486, 51.710327, 55.186531>,  <50.530602, 51.853527, 55.285580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.170486, 51.710327, 55.186531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362693, -0.302394, -0.881483,
		0.240691, -0.883400, 0.402085,
		-0.900290, -0.357998, -0.247619,
		49.900398, 51.602928, 55.112244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.899826, 52.209511, 55.874508>,  <50.530602, 51.853527, 55.285580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.899826, 52.209511, 55.874508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.218601, 52.342388, 55.672699>,  <51.409866, 52.422115, 55.551613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.218601, 52.342388, 55.672699>,  <50.899826, 52.209511, 55.874508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.218601, 52.342388, 55.672699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589695, -0.608925, 0.530538,
		-0.130970, -0.720316, -0.681169,
		0.796936, 0.332197, -0.504518,
		51.457684, 52.442047, 55.521343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.247635, 51.631935, 55.613045>,  <50.899826, 52.209511, 55.874508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.247635, 51.631935, 55.613045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.450871, 51.961967, 55.711906>,  <51.572811, 52.159988, 55.771221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.450871, 51.961967, 55.711906>,  <51.247635, 51.631935, 55.613045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.450871, 51.961967, 55.711906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469251, -0.505796, 0.723860,
		0.722253, -0.251809, -0.644160,
		0.508089, 0.825083, 0.247151,
		51.603298, 52.209492, 55.786053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.987690, 51.406403, 55.660454>,  <51.247635, 51.631935, 55.613045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.987690, 51.406403, 55.660454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.924381, 51.719566, 55.901123>,  <51.886398, 51.907463, 56.045525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.924381, 51.719566, 55.901123>,  <51.987690, 51.406403, 55.660454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.924381, 51.719566, 55.901123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318810, -0.536193, 0.781573,
		0.934511, 0.315517, -0.164736,
		-0.158270, 0.782908, 0.601669,
		51.876900, 51.954437, 56.081623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.528172, 50.941998, 55.127327>,  <51.987690, 51.406403, 55.660454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.528172, 50.941998, 55.127327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.913284, 51.044693, 55.161125>,  <52.144352, 51.106312, 55.181404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.913284, 51.044693, 55.161125>,  <51.528172, 50.941998, 55.127327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.913284, 51.044693, 55.161125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267502, -0.860286, -0.433995,
		-0.038731, 0.440445, -0.896944,
		0.962779, 0.256743, 0.084500,
		52.202118, 51.121716, 55.186474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.979118, 51.076748, 54.510300>,  <51.528172, 50.941998, 55.127327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.979118, 51.076748, 54.510300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.201275, 50.934460, 54.810966>,  <52.334568, 50.849087, 54.991367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.201275, 50.934460, 54.810966>,  <51.979118, 51.076748, 54.510300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.201275, 50.934460, 54.810966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385308, -0.690934, -0.611676,
		0.736939, 0.629343, -0.246676,
		0.555391, -0.355722, 0.751667,
		52.367893, 50.827744, 55.036465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.486073, 50.882259, 54.126488>,  <51.979118, 51.076748, 54.510300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.486073, 50.882259, 54.126488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.473396, 50.682945, 54.473061>,  <52.465790, 50.563358, 54.681004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.473396, 50.682945, 54.473061>,  <52.486073, 50.882259, 54.126488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.473396, 50.682945, 54.473061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410765, -0.796774, -0.443197,
		0.911191, 0.341857, 0.229925,
		-0.031688, -0.498282, 0.866436,
		52.463890, 50.533463, 54.732990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.210144, 50.854404, 54.469059>,  <52.486073, 50.882259, 54.126488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.210144, 50.854404, 54.469059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.977589, 50.537323, 54.542393>,  <52.838058, 50.347073, 54.586391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.977589, 50.537323, 54.542393>,  <53.210144, 50.854404, 54.469059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.977589, 50.537323, 54.542393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724877, -0.606981, -0.325773,
		0.369522, -0.056504, 0.927502,
		-0.581384, -0.792705, 0.183334,
		52.803173, 50.299511, 54.597393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.707447, 50.401001, 54.967045>,  <53.210144, 50.854404, 54.469059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.707447, 50.401001, 54.967045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.438423, 50.251762, 54.711399>,  <53.277008, 50.162220, 54.558014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.438423, 50.251762, 54.711399>,  <53.707447, 50.401001, 54.967045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.438423, 50.251762, 54.711399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723651, -0.512321, -0.462447,
		-0.154892, -0.773516, 0.614558,
		-0.672561, -0.373096, -0.639110,
		53.236656, 50.139835, 54.519665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.160717, 50.047588, 55.464985>,  <53.707447, 50.401001, 54.967045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.160717, 50.047588, 55.464985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.936375, 50.347763, 55.604858>,  <53.801769, 50.527870, 55.688782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.936375, 50.347763, 55.604858>,  <54.160717, 50.047588, 55.464985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.936375, 50.347763, 55.604858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163348, -0.313761, 0.935346,
		0.811639, 0.581715, 0.053392,
		-0.560857, 0.750441, 0.349683,
		53.768116, 50.572895, 55.709763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.490540, 50.462391, 56.008015>,  <54.160717, 50.047588, 55.464985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.490540, 50.462391, 56.008015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.090805, 50.467773, 56.021530>,  <53.850964, 50.471004, 56.029640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.090805, 50.467773, 56.021530>,  <54.490540, 50.462391, 56.008015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.090805, 50.467773, 56.021530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025419, -0.406023, 0.913509,
		0.026010, 0.913764, 0.405413,
		-0.999339, 0.013455, 0.033788,
		53.791004, 50.471809, 56.031666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.323353, 50.708706, 56.639530>,  <54.490540, 50.462391, 56.008015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.323353, 50.708706, 56.639530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.043747, 50.474140, 56.475822>,  <53.875984, 50.333401, 56.377598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.043747, 50.474140, 56.475822>,  <54.323353, 50.708706, 56.639530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.043747, 50.474140, 56.475822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073994, -0.509935, 0.857024,
		-0.711271, 0.629354, 0.313060,
		-0.699012, -0.586412, -0.409271,
		53.834042, 50.298218, 56.353043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.673069, 51.304405, 56.996632>,  <54.323353, 50.708706, 56.639530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.673069, 51.304405, 56.996632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.623299, 51.436195, 57.371002>,  <54.593437, 51.515270, 57.595627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.623299, 51.436195, 57.371002>,  <54.673069, 51.304405, 56.996632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.623299, 51.436195, 57.371002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784860, -0.544409, 0.295996,
		0.607052, 0.771403, -0.190853,
		-0.124430, 0.329478, 0.935928,
		54.585968, 51.535038, 57.651779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.292019, 51.563168, 57.282501>,  <54.673069, 51.304405, 56.996632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.292019, 51.563168, 57.282501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.143654, 51.446339, 57.635117>,  <55.054634, 51.376240, 57.846687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.143654, 51.446339, 57.635117>,  <55.292019, 51.563168, 57.282501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.143654, 51.446339, 57.635117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914185, -0.281821, 0.291276,
		0.163363, 0.913931, 0.371540,
		-0.370914, -0.292073, 0.881542,
		55.032379, 51.358715, 57.899578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.716961, 52.119057, 57.044331>,  <55.292019, 51.563168, 57.282501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.716961, 52.119057, 57.044331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.911354, 52.434837, 56.894356>,  <56.027992, 52.624306, 56.804371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.911354, 52.434837, 56.894356>,  <55.716961, 52.119057, 57.044331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.911354, 52.434837, 56.894356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669046, -0.060034, 0.740793,
		0.562313, -0.610866, -0.557357,
		0.485985, 0.789455, -0.374939,
		56.057148, 52.671673, 56.781876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.690907, 52.882980, 57.162830>,  <55.716961, 52.119057, 57.044331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.690907, 52.882980, 57.162830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.950081, 53.017239, 57.436333>,  <56.105587, 53.097794, 57.600433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.950081, 53.017239, 57.436333>,  <55.690907, 52.882980, 57.162830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.950081, 53.017239, 57.436333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111946, 0.845967, -0.521352,
		-0.753422, 0.414347, 0.510560,
		0.647937, 0.335643, 0.683755,
		56.144463, 53.117931, 57.641460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.578632, 53.563847, 57.428528>,  <55.690907, 52.882980, 57.162830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.578632, 53.563847, 57.428528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.971710, 53.502724, 57.470406>,  <56.207558, 53.466049, 57.495533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.971710, 53.502724, 57.470406>,  <55.578632, 53.563847, 57.428528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.971710, 53.502724, 57.470406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179703, 0.923518, -0.338852,
		-0.044905, 0.351802, 0.934997,
		0.982695, -0.152805, 0.104690,
		56.266518, 53.456882, 57.501812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.875164, 54.320198, 57.438873>,  <55.578632, 53.563847, 57.428528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.875164, 54.320198, 57.438873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.243141, 54.176498, 57.501671>,  <56.463928, 54.090279, 57.539349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.243141, 54.176498, 57.501671>,  <55.875164, 54.320198, 57.438873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.243141, 54.176498, 57.501671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358620, 0.932890, 0.033291,
		-0.158419, 0.025676, 0.987038,
		0.919943, -0.359246, 0.156996,
		56.519123, 54.068726, 57.548771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.103935, 54.495651, 58.098705>,  <55.875164, 54.320198, 57.438873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.103935, 54.495651, 58.098705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.407227, 54.473511, 57.838852>,  <56.589203, 54.460224, 57.682938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.407227, 54.473511, 57.838852>,  <56.103935, 54.495651, 58.098705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.407227, 54.473511, 57.838852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250455, 0.944671, 0.211824,
		0.601967, -0.323315, 0.730139,
		0.758227, -0.055356, -0.649636,
		56.634693, 54.456905, 57.643959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.678493, 54.625782, 58.471462>,  <56.103935, 54.495651, 58.098705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.678493, 54.625782, 58.471462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.726044, 54.699184, 58.081139>,  <56.754574, 54.743225, 57.846947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.726044, 54.699184, 58.081139>,  <56.678493, 54.625782, 58.471462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.726044, 54.699184, 58.081139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076741, 0.978136, 0.193288,
		0.989940, -0.097861, 0.102191,
		0.118872, 0.183502, -0.975806,
		56.761707, 54.754234, 57.788399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.288570, 54.974503, 58.304527>,  <56.678493, 54.625782, 58.471462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.288570, 54.974503, 58.304527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.043221, 55.115482, 58.021812>,  <56.896011, 55.200069, 57.852184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.043221, 55.115482, 58.021812>,  <57.288570, 54.974503, 58.304527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.043221, 55.115482, 58.021812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106459, 0.923636, 0.368189,
		0.782584, 0.150594, -0.604056,
		-0.613375, 0.352446, -0.706791,
		56.859207, 55.221214, 57.809776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.019016, 55.403801, 58.343975>,  <57.288570, 54.974503, 58.304527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.019016, 55.403801, 58.343975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.186996, 55.040794, 58.340942>,  <58.287785, 54.822990, 58.339123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.186996, 55.040794, 58.340942>,  <58.019016, 55.403801, 58.343975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.186996, 55.040794, 58.340942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825951, -0.385646, 0.411197,
		-0.376087, -0.166430, -0.911515,
		0.419957, -0.907512, -0.007573,
		58.312981, 54.768539, 58.338669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.450165, 55.324402, 57.734737>,  <58.019016, 55.403801, 58.343975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.450165, 55.324402, 57.734737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.332062, 54.968834, 57.874817>,  <58.261200, 54.755493, 57.958862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.332062, 54.968834, 57.874817>,  <58.450165, 55.324402, 57.734737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.332062, 54.968834, 57.874817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411956, 0.449166, 0.792807,
		-0.862040, 0.089819, -0.498818,
		-0.295261, -0.888922, 0.350197,
		58.243484, 54.702156, 57.979877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.855648, 55.159214, 57.166134>,  <58.450165, 55.324402, 57.734737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.855648, 55.159214, 57.166134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.153809, 55.225262, 56.907799>,  <59.332706, 55.264889, 56.752796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.153809, 55.225262, 56.907799>,  <58.855648, 55.159214, 57.166134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.153809, 55.225262, 56.907799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559190, 0.372513, 0.740635,
		0.362878, -0.913219, 0.185338,
		0.745403, 0.165121, -0.645840,
		59.377430, 55.274799, 56.714046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.510780, 54.785057, 57.295261>,  <58.855648, 55.159214, 57.166134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.510780, 54.785057, 57.295261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.572067, 55.141811, 57.125053>,  <59.608841, 55.355862, 57.022926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.572067, 55.141811, 57.125053>,  <59.510780, 54.785057, 57.295261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.572067, 55.141811, 57.125053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624919, 0.246121, 0.740878,
		0.765506, -0.379435, -0.519644,
		0.153220, 0.891882, -0.425523,
		59.618034, 55.409374, 56.997398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.178551, 54.987743, 57.518913>,  <59.510780, 54.785057, 57.295261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.178551, 54.987743, 57.518913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.132530, 55.271072, 57.240334>,  <60.104919, 55.441071, 57.073185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.132530, 55.271072, 57.240334>,  <60.178551, 54.987743, 57.518913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.132530, 55.271072, 57.240334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811176, 0.471674, 0.345710,
		0.573372, -0.525171, -0.628840,
		-0.115050, 0.708321, -0.696452,
		60.098015, 55.483570, 57.031399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.825615, 55.159580, 57.340855>,  <60.178551, 54.987743, 57.518913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.825615, 55.159580, 57.340855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.615555, 55.487747, 57.250412>,  <60.489517, 55.684647, 57.196144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.615555, 55.487747, 57.250412>,  <60.825615, 55.159580, 57.340855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.615555, 55.487747, 57.250412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845820, 0.532483, -0.032411,
		0.093809, -0.208268, -0.973563,
		-0.525155, 0.820419, -0.226109,
		60.458008, 55.733871, 57.182579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.953152, 55.251495, 56.642120>,  <60.825615, 55.159580, 57.340855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.953152, 55.251495, 56.642120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.877892, 55.559933, 56.885437>,  <60.832733, 55.744995, 57.031425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.877892, 55.559933, 56.885437>,  <60.953152, 55.251495, 56.642120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.877892, 55.559933, 56.885437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861520, 0.426959, -0.274753,
		-0.471574, 0.472357, -0.744645,
		-0.188152, 0.771093, 0.608288,
		60.821445, 55.791260, 57.067924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.182404, 55.881649, 56.310520>,  <60.953152, 55.251495, 56.642120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.182404, 55.881649, 56.310520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.193314, 55.924007, 56.708122>,  <61.199860, 55.949421, 56.946682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.193314, 55.924007, 56.708122>,  <61.182404, 55.881649, 56.310520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.193314, 55.924007, 56.708122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955574, 0.289182, -0.057028,
		-0.293487, 0.951399, -0.093303,
		0.027275, 0.105895, 0.994003,
		61.201496, 55.955776, 57.006325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.506779, 56.626270, 56.653122>,  <61.182404, 55.881649, 56.310520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.506779, 56.626270, 56.653122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.537094, 56.332596, 56.923004>,  <61.555283, 56.156391, 57.084934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.537094, 56.332596, 56.923004>,  <61.506779, 56.626270, 56.653122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.537094, 56.332596, 56.923004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990689, 0.132194, 0.032567,
		-0.113102, 0.665951, 0.737372,
		0.075788, -0.734189, 0.674702,
		61.559830, 56.112339, 57.125416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.904396, 56.899586, 57.211174>,  <61.506779, 56.626270, 56.653122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.904396, 56.899586, 57.211174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.948532, 56.505844, 57.156219>,  <61.975014, 56.269600, 57.123245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.948532, 56.505844, 57.156219>,  <61.904396, 56.899586, 57.211174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.948532, 56.505844, 57.156219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983490, 0.088190, 0.158022,
		-0.143433, -0.152558, 0.977831,
		0.110342, -0.984352, -0.137390,
		61.981636, 56.210537, 57.115002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.014320, 56.507084, 57.842754>,  <61.904396, 56.899586, 57.211174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.014320, 56.507084, 57.842754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.214142, 56.370243, 57.524406>,  <62.334034, 56.288139, 57.333397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.214142, 56.370243, 57.524406>,  <62.014320, 56.507084, 57.842754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.214142, 56.370243, 57.524406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864418, 0.257146, 0.432039,
		0.056852, -0.903792, 0.424180,
		0.499550, -0.342106, -0.795873,
		62.364006, 56.267612, 57.285645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.715286, 56.207710, 58.020824>,  <62.014320, 56.507084, 57.842754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.715286, 56.207710, 58.020824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.767403, 56.243179, 57.625824>,  <62.798672, 56.264462, 57.388824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.767403, 56.243179, 57.625824>,  <62.715286, 56.207710, 58.020824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.767403, 56.243179, 57.625824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981486, 0.129496, 0.141127,
		0.140391, -0.987607, -0.070156,
		0.130293, 0.088670, -0.987503,
		62.806492, 56.269779, 57.329575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.114754, 55.575710, 57.716278>,  <62.715286, 56.207710, 58.020824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.114754, 55.575710, 57.716278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.178604, 55.919891, 57.522728>,  <63.216915, 56.126400, 57.406597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.178604, 55.919891, 57.522728>,  <63.114754, 55.575710, 57.716278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.178604, 55.919891, 57.522728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985793, -0.164892, 0.031988,
		-0.052262, -0.482104, -0.874554,
		0.159628, 0.860457, -0.483872,
		63.226494, 56.178028, 57.377567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.531822, 55.430954, 57.147545>,  <63.114754, 55.575710, 57.716278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.531822, 55.430954, 57.147545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.567757, 55.821499, 57.226181>,  <63.589317, 56.055824, 57.273361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.567757, 55.821499, 57.226181>,  <63.531822, 55.430954, 57.147545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.567757, 55.821499, 57.226181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985650, -0.058834, -0.158220,
		-0.142913, 0.207984, -0.967636,
		0.089837, 0.976361, 0.196591,
		63.594707, 56.114407, 57.285160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.900764, 55.776241, 56.598476>,  <63.531822, 55.430954, 57.147545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.900764, 55.776241, 56.598476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.932899, 56.011574, 56.920326>,  <63.952183, 56.152771, 57.113434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.932899, 56.011574, 56.920326>,  <63.900764, 55.776241, 56.598476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.932899, 56.011574, 56.920326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994582, 0.006103, -0.103772,
		-0.065963, 0.808600, -0.584650,
		0.080342, 0.588327, 0.804622,
		63.957001, 56.188072, 57.161713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.539528, 56.005257, 56.642715>,  <63.900764, 55.776241, 56.598476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.539528, 56.005257, 56.642715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.458214, 56.131592, 57.013428>,  <64.409424, 56.207394, 57.235855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.458214, 56.131592, 57.013428>,  <64.539528, 56.005257, 56.642715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.458214, 56.131592, 57.013428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958125, -0.130800, 0.254730,
		0.201676, 0.939754, -0.276024,
		-0.203279, 0.315839, 0.926781,
		64.397232, 56.226345, 57.291462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.041237, 56.509327, 56.698925>,  <64.539528, 56.005257, 56.642715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.041237, 56.509327, 56.698925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.942871, 56.430542, 57.078552>,  <64.883850, 56.383270, 57.306328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.942871, 56.430542, 57.078552>,  <65.041237, 56.509327, 56.698925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.942871, 56.430542, 57.078552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959579, 0.088787, 0.267069,
		-0.136867, 0.976383, 0.167165,
		-0.245919, -0.196960, 0.949068,
		64.869095, 56.371452, 57.363274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.271622, 57.044147, 57.187603>,  <65.041237, 56.509327, 56.698925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.271622, 57.044147, 57.187603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.269028, 56.676216, 57.344513>,  <65.267471, 56.455460, 57.438660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.269028, 56.676216, 57.344513>,  <65.271622, 57.044147, 57.187603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.269028, 56.676216, 57.344513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942100, 0.125905, 0.310799,
		-0.335270, 0.371581, 0.865749,
		-0.006485, -0.919824, 0.392278,
		65.267082, 56.400269, 57.462196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.517578, 57.126209, 57.785084>,  <65.271622, 57.044147, 57.187603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.517578, 57.126209, 57.785084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.577568, 56.735577, 57.723389>,  <65.613564, 56.501198, 57.686371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.577568, 56.735577, 57.723389>,  <65.517578, 57.126209, 57.785084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.577568, 56.735577, 57.723389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970086, 0.115234, 0.213668,
		-0.190891, -0.181669, 0.964654,
		0.149978, -0.976585, -0.154238,
		65.622559, 56.442600, 57.677116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.805450, 56.877907, 58.419376>,  <65.517578, 57.126209, 57.785084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.805450, 56.877907, 58.419376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.945946, 56.660480, 58.114441>,  <66.030243, 56.530025, 57.931480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.945946, 56.660480, 58.114441>,  <65.805450, 56.877907, 58.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.945946, 56.660480, 58.114441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923025, 0.064476, 0.379298,
		-0.157022, -0.836884, 0.524375,
		0.351238, -0.543570, -0.762341,
		66.051315, 56.497410, 57.885738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.136948, 56.253983, 58.585289>,  <65.805450, 56.877907, 58.419376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.136948, 56.253983, 58.585289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.321327, 56.335869, 58.239891>,  <66.431953, 56.385002, 58.032654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.321327, 56.335869, 58.239891>,  <66.136948, 56.253983, 58.585289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.321327, 56.335869, 58.239891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882284, -0.210334, 0.421111,
		-0.095412, -0.955955, -0.277572,
		0.460946, 0.204718, -0.863492,
		66.459610, 56.397285, 57.980843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.719246, 55.947884, 58.669552>,  <66.136948, 56.253983, 58.585289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.719246, 55.947884, 58.669552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.822365, 56.134918, 58.331345>,  <66.884239, 56.247139, 58.128422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.822365, 56.134918, 58.331345>,  <66.719246, 55.947884, 58.669552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.822365, 56.134918, 58.331345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915280, 0.162144, 0.368744,
		0.309516, -0.868948, -0.386172,
		0.257804, 0.467588, -0.845517,
		66.899704, 56.275196, 58.077690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.346092, 55.751678, 58.331196>,  <66.719246, 55.947884, 58.669552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.346092, 55.751678, 58.331196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.287086, 56.134117, 58.229912>,  <67.251686, 56.363583, 58.169140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.287086, 56.134117, 58.229912>,  <67.346092, 55.751678, 58.331196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.287086, 56.134117, 58.229912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905886, 0.233362, 0.353430,
		0.397004, -0.177248, -0.900539,
		-0.147507, 0.956099, -0.253212,
		67.242836, 56.420948, 58.153950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.027924, 56.014698, 58.041897>,  <67.346092, 55.751678, 58.331196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.027924, 56.014698, 58.041897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.789665, 56.292301, 58.203667>,  <67.646706, 56.458862, 58.300728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.789665, 56.292301, 58.203667>,  <68.027924, 56.014698, 58.041897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.789665, 56.292301, 58.203667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796870, 0.447260, 0.406148,
		0.100986, 0.564196, -0.819442,
		-0.595650, 0.694004, 0.404424,
		67.610970, 56.500504, 58.324993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.196075, 56.615269, 57.743591>,  <68.027924, 56.014698, 58.041897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.196075, 56.615269, 57.743591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.037460, 56.671013, 58.106544>,  <67.942291, 56.704460, 58.324314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.037460, 56.671013, 58.106544>,  <68.196075, 56.615269, 57.743591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.037460, 56.671013, 58.106544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825888, 0.485723, 0.286324,
		-0.400834, 0.862932, -0.307702,
		-0.396536, 0.139360, 0.907380,
		67.918503, 56.712822, 58.378757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.369965, 57.346558, 57.902000>,  <68.196075, 56.615269, 57.743591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.369965, 57.346558, 57.902000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.337997, 57.091938, 58.208832>,  <68.318817, 56.939167, 58.392933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.337997, 57.091938, 58.208832>,  <68.369965, 57.346558, 57.902000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.337997, 57.091938, 58.208832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935654, 0.217477, 0.277948,
		-0.343751, 0.739935, 0.578214,
		-0.079916, -0.636553, 0.767081,
		68.314026, 56.900970, 58.438957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.529457, 57.615471, 58.605690>,  <68.369965, 57.346558, 57.902000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.529457, 57.615471, 58.605690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.616882, 57.225281, 58.595329>,  <68.669334, 56.991165, 58.589111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.616882, 57.225281, 58.595329>,  <68.529457, 57.615471, 58.605690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.616882, 57.225281, 58.595329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905929, 0.192974, 0.376900,
		-0.362660, -0.105841, 0.925892,
		0.218565, -0.975479, -0.025901,
		68.682449, 56.932636, 58.587559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.900871, 57.341335, 59.321564>,  <68.529457, 57.615471, 58.605690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.900871, 57.341335, 59.321564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.012314, 57.148529, 58.989288>,  <69.079178, 57.032845, 58.789925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.012314, 57.148529, 58.989288>,  <68.900871, 57.341335, 59.321564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.012314, 57.148529, 58.989288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950806, 0.016450, 0.309350,
		-0.135447, -0.876008, 0.462887,
		0.278608, -0.482016, -0.830686,
		69.095894, 57.003925, 58.740082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.435600, 57.197124, 59.686806>,  <68.900871, 57.341335, 59.321564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.435600, 57.197124, 59.686806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.483009, 57.096443, 59.302597>,  <69.511459, 57.036034, 59.072071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.483009, 57.096443, 59.302597>,  <69.435600, 57.197124, 59.686806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.483009, 57.096443, 59.302597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954179, 0.296546, 0.040038,
		0.274760, -0.921253, 0.275318,
		0.118530, -0.251701, -0.960519,
		69.518570, 57.020931, 59.014442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.017761, 56.744846, 59.669872>,  <69.435600, 57.197124, 59.686806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.017761, 56.744846, 59.669872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.926277, 56.953934, 59.341370>,  <69.871384, 57.079388, 59.144268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.926277, 56.953934, 59.341370>,  <70.017761, 56.744846, 59.669872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.926277, 56.953934, 59.341370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888137, 0.457482, 0.043851,
		0.398630, -0.719355, -0.568878,
		-0.228707, 0.522722, -0.821252,
		69.857666, 57.110752, 59.094994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.649139, 56.848282, 59.302860>,  <70.017761, 56.744846, 59.669872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.649139, 56.848282, 59.302860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.466850, 57.185863, 59.189682>,  <70.357475, 57.388412, 59.121773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.466850, 57.185863, 59.189682>,  <70.649139, 56.848282, 59.302860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.466850, 57.185863, 59.189682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861920, 0.497776, 0.096508,
		0.222294, -0.199900, -0.954267,
		-0.455719, 0.843955, -0.282950,
		70.330132, 57.439049, 59.104797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.288055, 56.874474, 58.824303>,  <70.649139, 56.848282, 59.302860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.288055, 56.874474, 58.824303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.635117, 56.695396, 58.737801>,  <71.843353, 56.587952, 58.685902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.635117, 56.695396, 58.737801>,  <71.288055, 56.874474, 58.824303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.635117, 56.695396, 58.737801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428450, 0.893929, -0.131613,
		0.252235, 0.021540, 0.967426,
		0.867645, -0.447691, -0.216251,
		71.895409, 56.561089, 58.672924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.902229, 57.048904, 59.414200>,  <71.288055, 56.874474, 58.824303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.902229, 57.048904, 59.414200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.956383, 56.991852, 59.022011>,  <71.988876, 56.957623, 58.786697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.956383, 56.991852, 59.022011>,  <71.902229, 57.048904, 59.414200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.956383, 56.991852, 59.022011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126775, 0.983944, -0.125626,
		0.982648, -0.107291, 0.151298,
		0.135390, -0.142627, -0.980473,
		71.997002, 56.949062, 58.727867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.595886, 57.279591, 59.120270>,  <71.902229, 57.048904, 59.414200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.595886, 57.279591, 59.120270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.331909, 57.296783, 58.820236>,  <72.173523, 57.307098, 58.640217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.331909, 57.296783, 58.820236>,  <72.595886, 57.279591, 59.120270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.331909, 57.296783, 58.820236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226305, 0.963368, -0.143900,
		0.716423, -0.264714, -0.645495,
		-0.659942, 0.042985, -0.750086,
		72.133926, 57.309677, 58.595211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.427719, 57.472210, 59.744122>,  <72.595886, 57.279591, 59.120270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.427719, 57.472210, 59.744122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.728394, 57.274590, 59.918877>,  <72.908798, 57.156017, 60.023731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.728394, 57.274590, 59.918877>,  <72.427719, 57.472210, 59.744122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.728394, 57.274590, 59.918877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632452, 0.352182, -0.689908,
		0.186989, 0.794908, 0.577198,
		0.751692, -0.494054, 0.436887,
		72.953903, 57.126373, 60.049942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.002174, 57.805214, 59.473862>,  <72.427719, 57.472210, 59.744122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.002174, 57.805214, 59.473862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.161842, 57.491196, 59.663330>,  <73.257645, 57.302784, 59.777012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.161842, 57.491196, 59.663330>,  <73.002174, 57.805214, 59.473862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.161842, 57.491196, 59.663330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825815, 0.083382, -0.557742,
		0.398356, 0.613804, 0.681585,
		0.399177, -0.785043, 0.473673,
		73.281593, 57.255684, 59.805431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
