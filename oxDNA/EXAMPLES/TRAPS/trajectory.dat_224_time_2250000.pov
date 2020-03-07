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
	<35.853531, 52.978878, 49.580826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646606, 52.743683, 49.829552>,  <35.522453, 52.602566, 49.978786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646606, 52.743683, 49.829552>,  <35.853531, 52.978878, 49.580826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646606, 52.743683, 49.829552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541649, 0.337588, 0.769839,
		-0.662576, 0.735051, 0.143847,
		-0.517310, -0.587991, 0.621817,
		35.491413, 52.567284, 50.016098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806854, 53.381008, 50.189915>,  <35.853531, 52.978878, 49.580826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806854, 53.381008, 50.189915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773045, 52.994724, 50.288109>,  <35.752758, 52.762955, 50.347023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773045, 52.994724, 50.288109>,  <35.806854, 53.381008, 50.189915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773045, 52.994724, 50.288109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689093, 0.121296, 0.714449,
		-0.719726, 0.229551, 0.655211,
		-0.084528, -0.965709, 0.245482,
		35.747684, 52.705013, 50.361755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870777, 53.287727, 50.922401>,  <35.806854, 53.381008, 50.189915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870777, 53.287727, 50.922401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000843, 52.942043, 50.768822>,  <36.078880, 52.734634, 50.676674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000843, 52.942043, 50.768822>,  <35.870777, 53.287727, 50.922401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000843, 52.942043, 50.768822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804652, 0.039549, 0.592428,
		-0.496795, -0.501581, 0.708245,
		0.325161, -0.864206, -0.383950,
		36.098392, 52.682781, 50.653637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877037, 52.852497, 51.512852>,  <35.870777, 53.287727, 50.922401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877037, 52.852497, 51.512852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143341, 52.737942, 51.237244>,  <36.303123, 52.669209, 51.071880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143341, 52.737942, 51.237244>,  <35.877037, 52.852497, 51.512852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143341, 52.737942, 51.237244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726654, 0.039049, 0.685893,
		-0.169526, -0.957317, 0.234103,
		0.665759, -0.286388, -0.689019,
		36.343067, 52.652023, 51.030537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083012, 52.091896, 51.675873>,  <35.877037, 52.852497, 51.512852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083012, 52.091896, 51.675873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334568, 52.339813, 51.488106>,  <36.485504, 52.488564, 51.375446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334568, 52.339813, 51.488106>,  <36.083012, 52.091896, 51.675873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334568, 52.339813, 51.488106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665413, -0.116786, 0.737283,
		0.402140, -0.776029, -0.485863,
		0.628895, 0.619790, -0.469415,
		36.523235, 52.525749, 51.347282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623123, 51.661781, 51.508774>,  <36.083012, 52.091896, 51.675873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623123, 51.661781, 51.508774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726749, 52.043709, 51.567017>,  <36.788925, 52.272865, 51.601963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726749, 52.043709, 51.567017>,  <36.623123, 51.661781, 51.508774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726749, 52.043709, 51.567017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755756, -0.294268, 0.585012,
		0.601429, -0.041516, -0.797847,
		0.259068, 0.954821, 0.145605,
		36.804470, 52.330154, 51.610699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338940, 51.608505, 51.564457>,  <36.623123, 51.661781, 51.508774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338940, 51.608505, 51.564457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248749, 51.974400, 51.698578>,  <37.194633, 52.193935, 51.779049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248749, 51.974400, 51.698578>,  <37.338940, 51.608505, 51.564457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248749, 51.974400, 51.698578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771289, -0.042666, 0.635053,
		0.595209, 0.401804, -0.695902,
		-0.225476, 0.914731, 0.335302,
		37.181107, 52.248817, 51.799168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852100, 52.020607, 51.325531>,  <37.338940, 51.608505, 51.564457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852100, 52.020607, 51.325531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696766, 52.165298, 51.664551>,  <37.603565, 52.252113, 51.867962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696766, 52.165298, 51.664551>,  <37.852100, 52.020607, 51.325531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696766, 52.165298, 51.664551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868446, -0.163955, 0.467889,
		0.308210, 0.917753, -0.250474,
		-0.388340, 0.361731, 0.847551,
		37.580265, 52.273819, 51.918816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159397, 52.604378, 51.589474>,  <37.852100, 52.020607, 51.325531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159397, 52.604378, 51.589474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999451, 52.433418, 51.913803>,  <37.903481, 52.330845, 52.108402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999451, 52.433418, 51.913803>,  <38.159397, 52.604378, 51.589474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999451, 52.433418, 51.913803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913785, -0.254830, 0.316321,
		0.071429, 0.867407, 0.492446,
		-0.399869, -0.427395, 0.810826,
		37.879490, 52.305199, 52.157051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431911, 52.919025, 52.086624>,  <38.159397, 52.604378, 51.589474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431911, 52.919025, 52.086624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327503, 52.564621, 52.239906>,  <38.264858, 52.351978, 52.331875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327503, 52.564621, 52.239906>,  <38.431911, 52.919025, 52.086624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327503, 52.564621, 52.239906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956596, -0.290694, -0.020533,
		0.129589, 0.361216, 0.923434,
		-0.261020, -0.886013, 0.383209,
		38.249199, 52.298817, 52.354870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982407, 52.659466, 52.646332>,  <38.431911, 52.919025, 52.086624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982407, 52.659466, 52.646332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791431, 52.379230, 52.434208>,  <38.676846, 52.211090, 52.306934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791431, 52.379230, 52.434208>,  <38.982407, 52.659466, 52.646332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791431, 52.379230, 52.434208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853558, -0.513048, -0.090664,
		-0.208556, -0.495936, 0.842942,
		-0.477433, -0.700592, -0.530309,
		38.648201, 52.169052, 52.275116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216259, 52.063023, 52.906502>,  <38.982407, 52.659466, 52.646332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216259, 52.063023, 52.906502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072632, 51.987434, 52.540909>,  <38.986458, 51.942081, 52.321552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072632, 51.987434, 52.540909>,  <39.216259, 52.063023, 52.906502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072632, 51.987434, 52.540909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826822, -0.518672, -0.217587,
		-0.432941, -0.833829, 0.342478,
		-0.359064, -0.188966, -0.913983,
		38.964912, 51.930744, 52.266712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143562, 51.304230, 52.664555>,  <39.216259, 52.063023, 52.906502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143562, 51.304230, 52.664555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245171, 51.580284, 52.393501>,  <39.306133, 51.745918, 52.230869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245171, 51.580284, 52.393501>,  <39.143562, 51.304230, 52.664555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245171, 51.580284, 52.393501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892303, -0.437546, -0.111129,
		-0.373190, -0.576425, -0.726955,
		0.254019, 0.690136, -0.677633,
		39.321377, 51.787323, 52.190212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435272, 50.998657, 52.095287>,  <39.143562, 51.304230, 52.664555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435272, 50.998657, 52.095287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595146, 51.363426, 52.132484>,  <39.691071, 51.582287, 52.154804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595146, 51.363426, 52.132484>,  <39.435272, 50.998657, 52.095287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595146, 51.363426, 52.132484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915676, -0.401880, 0.005445,
		0.042339, 0.082979, -0.995651,
		0.399681, 0.911925, 0.092997,
		39.715050, 51.637005, 52.160385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126415, 50.970901, 51.765945>,  <39.435272, 50.998657, 52.095287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126415, 50.970901, 51.765945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180103, 51.322483, 51.948997>,  <40.212315, 51.533432, 52.058830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180103, 51.322483, 51.948997>,  <40.126415, 50.970901, 51.765945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180103, 51.322483, 51.948997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953799, -0.239854, 0.180937,
		0.268800, 0.412200, -0.870539,
		0.134219, 0.878954, 0.457629,
		40.220367, 51.586170, 52.086285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582531, 51.447979, 51.306393>,  <40.126415, 50.970901, 51.765945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582531, 51.447979, 51.306393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603020, 51.474758, 51.704967>,  <40.615311, 51.490826, 51.944115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603020, 51.474758, 51.704967>,  <40.582531, 51.447979, 51.306393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603020, 51.474758, 51.704967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908684, -0.417067, -0.018687,
		0.414331, 0.906407, -0.082199,
		0.051220, 0.066951, 0.996441,
		40.618385, 51.494843, 52.003899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230663, 51.713425, 51.590046>,  <40.582531, 51.447979, 51.306393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230663, 51.713425, 51.590046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097595, 51.506950, 51.905739>,  <41.017754, 51.383064, 52.095154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097595, 51.506950, 51.905739>,  <41.230663, 51.713425, 51.590046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097595, 51.506950, 51.905739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895052, -0.436400, 0.091853,
		0.297007, 0.736958, 0.607190,
		-0.332670, -0.516185, 0.789230,
		40.997795, 51.352097, 52.142509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010414, 51.842014, 51.697147>,  <41.230663, 51.713425, 51.590046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010414, 51.842014, 51.697147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284615, 51.952873, 51.427841>,  <42.449135, 52.019386, 51.266258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284615, 51.952873, 51.427841>,  <42.010414, 51.842014, 51.697147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284615, 51.952873, 51.427841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122632, 0.867556, 0.481984,
		0.717672, -0.412963, 0.560722,
		0.685499, 0.277144, -0.673263,
		42.490265, 52.036015, 51.225861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717934, 51.988197, 51.980949>,  <42.010414, 51.842014, 51.697147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717934, 51.988197, 51.980949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628071, 52.197472, 51.652119>,  <42.574154, 52.323036, 51.454823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628071, 52.197472, 51.652119>,  <42.717934, 51.988197, 51.980949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628071, 52.197472, 51.652119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271060, 0.843894, 0.463001,
		0.935980, -0.118817, -0.331398,
		-0.224653, 0.523189, -0.822074,
		42.560677, 52.354427, 51.405495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307861, 52.388775, 51.686100>,  <42.717934, 51.988197, 51.980949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307861, 52.388775, 51.686100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961048, 52.579666, 51.628822>,  <42.752960, 52.694202, 51.594456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961048, 52.579666, 51.628822>,  <43.307861, 52.388775, 51.686100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961048, 52.579666, 51.628822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370610, 0.809802, 0.454828,
		0.333018, 0.341281, -0.878992,
		-0.867033, 0.477230, -0.143196,
		42.700939, 52.722836, 51.585865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436626, 52.974159, 51.429325>,  <43.307861, 52.388775, 51.686100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436626, 52.974159, 51.429325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098263, 53.012650, 51.639156>,  <42.895245, 53.035744, 51.765057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098263, 53.012650, 51.639156>,  <43.436626, 52.974159, 51.429325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098263, 53.012650, 51.639156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377354, 0.803066, 0.461182,
		-0.376891, 0.588069, -0.715631,
		-0.845906, 0.096231, 0.524579,
		42.844490, 53.041519, 51.796532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084229, 53.547520, 51.277760>,  <43.436626, 52.974159, 51.429325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084229, 53.547520, 51.277760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029812, 53.467663, 51.665913>,  <42.997162, 53.419750, 51.898804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029812, 53.467663, 51.665913>,  <43.084229, 53.547520, 51.277760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029812, 53.467663, 51.665913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336191, 0.912062, 0.234772,
		-0.931917, 0.358171, -0.056961,
		-0.136041, -0.199638, 0.970380,
		42.988998, 53.407772, 51.957027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715611, 54.117245, 51.705887>,  <43.084229, 53.547520, 51.277760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715611, 54.117245, 51.705887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945511, 53.912434, 51.961227>,  <43.083450, 53.789547, 52.114429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945511, 53.912434, 51.961227>,  <42.715611, 54.117245, 51.705887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945511, 53.912434, 51.961227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559996, 0.814906, 0.149440,
		-0.596710, 0.271581, 0.755103,
		0.574753, -0.512028, 0.638347,
		43.117935, 53.758823, 52.152733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805149, 54.470234, 52.292164>,  <42.715611, 54.117245, 51.705887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805149, 54.470234, 52.292164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132778, 54.241291, 52.276596>,  <43.329357, 54.103924, 52.267254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132778, 54.241291, 52.276596>,  <42.805149, 54.470234, 52.292164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132778, 54.241291, 52.276596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553928, 0.771400, 0.313219,
		-0.149251, -0.278110, 0.948883,
		0.819077, -0.572361, -0.038921,
		43.378502, 54.069584, 52.264919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169369, 54.495674, 52.934292>,  <42.805149, 54.470234, 52.292164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169369, 54.495674, 52.934292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432369, 54.408428, 52.645813>,  <43.590168, 54.356079, 52.472725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432369, 54.408428, 52.645813>,  <43.169369, 54.495674, 52.934292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432369, 54.408428, 52.645813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638351, 0.669738, 0.379420,
		0.400255, -0.709844, 0.579584,
		0.657498, -0.218113, -0.721195,
		43.629620, 54.342995, 52.429455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845776, 54.514366, 53.231140>,  <43.169369, 54.495674, 52.934292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845776, 54.514366, 53.231140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915031, 54.535717, 52.837761>,  <43.956585, 54.548527, 52.601734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915031, 54.535717, 52.837761>,  <43.845776, 54.514366, 53.231140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915031, 54.535717, 52.837761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647933, 0.745853, 0.154553,
		0.741759, -0.663969, 0.094549,
		0.173138, 0.053380, -0.983450,
		43.966972, 54.551731, 52.542725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553356, 54.586121, 53.197327>,  <43.845776, 54.514366, 53.231140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553356, 54.586121, 53.197327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434868, 54.671375, 52.824913>,  <44.363777, 54.722530, 52.601463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434868, 54.671375, 52.824913>,  <44.553356, 54.586121, 53.197327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434868, 54.671375, 52.824913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626335, 0.779275, -0.020876,
		0.721083, -0.589324, -0.364332,
		-0.296217, 0.213140, -0.931035,
		44.346004, 54.735317, 52.545601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145912, 54.952148, 52.978310>,  <44.553356, 54.586121, 53.197327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145912, 54.952148, 52.978310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833244, 55.059910, 52.753304>,  <44.645645, 55.124565, 52.618301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833244, 55.059910, 52.753304>,  <45.145912, 54.952148, 52.978310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833244, 55.059910, 52.753304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405024, 0.905111, -0.129342,
		0.474291, -0.328933, -0.816609,
		-0.781667, 0.269400, -0.562512,
		44.598743, 55.140728, 52.584549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374065, 55.381199, 52.443527>,  <45.145912, 54.952148, 52.978310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374065, 55.381199, 52.443527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710419, 55.542496, 52.299133>,  <45.912231, 55.639275, 52.212498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710419, 55.542496, 52.299133>,  <45.374065, 55.381199, 52.443527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710419, 55.542496, 52.299133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226672, 0.343278, 0.911471,
		0.491460, -0.848267, 0.197255,
		0.840885, 0.403239, -0.360986,
		45.962685, 55.663467, 52.190838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861671, 55.364658, 52.936878>,  <45.374065, 55.381199, 52.443527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861671, 55.364658, 52.936878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993378, 55.655663, 52.696106>,  <46.072399, 55.830265, 52.551643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993378, 55.655663, 52.696106>,  <45.861671, 55.364658, 52.936878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993378, 55.655663, 52.696106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595767, 0.334505, 0.730184,
		0.732563, -0.599031, -0.323285,
		0.329262, 0.727508, -0.601929,
		46.092155, 55.873917, 52.515526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580357, 55.405964, 53.022808>,  <45.861671, 55.364658, 52.936878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580357, 55.405964, 53.022808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464085, 55.752869, 52.861134>,  <46.394321, 55.961010, 52.764130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464085, 55.752869, 52.861134>,  <46.580357, 55.405964, 53.022808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464085, 55.752869, 52.861134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403330, 0.494124, 0.770172,
		0.867657, 0.060856, -0.493425,
		-0.290683, 0.867259, -0.404185,
		46.376881, 56.013046, 52.739880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.131161, 55.811264, 52.929771>,  <46.580357, 55.405964, 53.022808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.131161, 55.811264, 52.929771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828690, 56.071346, 52.959244>,  <46.647205, 56.227394, 52.976925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828690, 56.071346, 52.959244>,  <47.131161, 55.811264, 52.929771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828690, 56.071346, 52.959244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565439, 0.592593, 0.573683,
		0.329349, 0.475468, -0.815757,
		-0.756180, 0.650203, 0.073678,
		46.601837, 56.266407, 52.981346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.302288, 56.531406, 52.857796>,  <47.131161, 55.811264, 52.929771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.302288, 56.531406, 52.857796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.398811, 56.887032, 53.013401>,  <47.456726, 57.100407, 53.106766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.398811, 56.887032, 53.013401>,  <47.302288, 56.531406, 52.857796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.398811, 56.887032, 53.013401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934620, -0.104992, -0.339796,
		-0.261257, 0.445579, -0.856273,
		0.241308, 0.889065, 0.389017,
		47.471203, 57.153751, 53.130108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501644, 57.118916, 52.319359>,  <47.302288, 56.531406, 52.857796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501644, 57.118916, 52.319359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669292, 57.123924, 52.682495>,  <47.769882, 57.126930, 52.900379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669292, 57.123924, 52.682495>,  <47.501644, 57.118916, 52.319359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669292, 57.123924, 52.682495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902137, -0.118513, -0.414855,
		0.102398, 0.992874, -0.060965,
		0.419123, 0.012519, 0.907843,
		47.795029, 57.127682, 52.954849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.094692, 57.542591, 52.395172>,  <47.501644, 57.118916, 52.319359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.094692, 57.542591, 52.395172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.185909, 57.288445, 52.690281>,  <48.240639, 57.135956, 52.867344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.185909, 57.288445, 52.690281>,  <48.094692, 57.542591, 52.395172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.185909, 57.288445, 52.690281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948969, -0.024495, -0.314418,
		0.217843, 0.771821, 0.597359,
		0.228042, -0.635368, 0.737770,
		48.254322, 57.097836, 52.911613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.666008, 57.769394, 52.915573>,  <48.094692, 57.542591, 52.395172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.666008, 57.769394, 52.915573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.679260, 57.369621, 52.917862>,  <48.687210, 57.129757, 52.919235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.679260, 57.369621, 52.917862>,  <48.666008, 57.769394, 52.915573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.679260, 57.369621, 52.917862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998495, 0.032847, -0.043919,
		0.043706, 0.007172, 0.999019,
		0.033129, -0.999435, 0.005725,
		48.689198, 57.069790, 52.919579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.021030, 57.437271, 53.544537>,  <48.666008, 57.769394, 52.915573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.021030, 57.437271, 53.544537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.061127, 57.297615, 53.171860>,  <49.085186, 57.213821, 52.948254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.061127, 57.297615, 53.171860>,  <49.021030, 57.437271, 53.544537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.061127, 57.297615, 53.171860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989364, 0.134175, 0.056170,
		0.105399, -0.927413, 0.358881,
		0.100245, -0.349144, -0.931692,
		49.091202, 57.192871, 52.892353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.603615, 57.124542, 53.449837>,  <49.021030, 57.437271, 53.544537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.603615, 57.124542, 53.449837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.595661, 57.182125, 53.054085>,  <49.590889, 57.216675, 52.816631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.595661, 57.182125, 53.054085>,  <49.603615, 57.124542, 53.449837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.595661, 57.182125, 53.054085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996280, 0.085850, -0.007533,
		0.083854, -0.985853, -0.145128,
		-0.019886, 0.143956, -0.989384,
		49.589695, 57.225311, 52.757271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.090652, 57.410061, 52.913235>,  <49.603615, 57.124542, 53.449837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.090652, 57.410061, 52.913235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.131645, 57.044922, 52.755138>,  <50.156242, 56.825840, 52.660282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.131645, 57.044922, 52.755138>,  <50.090652, 57.410061, 52.913235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.131645, 57.044922, 52.755138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328914, -0.343884, 0.879522,
		-0.938782, -0.220137, 0.265004,
		0.102485, -0.912844, -0.395238,
		50.162392, 56.771069, 52.636566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.799385, 57.483299, 52.852875>,  <50.090652, 57.410061, 52.913235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.799385, 57.483299, 52.852875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.189121, 57.443584, 52.933678>,  <51.422962, 57.419754, 52.982159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.189121, 57.443584, 52.933678>,  <50.799385, 57.483299, 52.852875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.189121, 57.443584, 52.933678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117923, -0.989599, 0.082386,
		0.191723, -0.104093, -0.975913,
		0.974339, -0.099288, 0.202004,
		51.481422, 57.413799, 52.994278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.055962, 56.958195, 52.399570>,  <50.799385, 57.483299, 52.852875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.055962, 56.958195, 52.399570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.300068, 56.961582, 52.716431>,  <51.446533, 56.963615, 52.906548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.300068, 56.961582, 52.716431>,  <51.055962, 56.958195, 52.399570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.300068, 56.961582, 52.716431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039012, -0.998408, 0.040725,
		0.791235, -0.055756, -0.608965,
		0.610266, 0.008466, 0.792151,
		51.483147, 56.964123, 52.954075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.514809, 56.449772, 52.282444>,  <51.055962, 56.958195, 52.399570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.514809, 56.449772, 52.282444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.525215, 56.530148, 52.674149>,  <51.531460, 56.578373, 52.909172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.525215, 56.530148, 52.674149>,  <51.514809, 56.449772, 52.282444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.525215, 56.530148, 52.674149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064155, -0.977235, 0.202227,
		0.997601, -0.068086, -0.012535,
		0.026019, 0.200937, 0.979259,
		51.533020, 56.590427, 52.967926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.079781, 55.979744, 52.664734>,  <51.514809, 56.449772, 52.282444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.079781, 55.979744, 52.664734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.803295, 56.082600, 52.934875>,  <51.637405, 56.144314, 53.096962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.803295, 56.082600, 52.934875>,  <52.079781, 55.979744, 52.664734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.803295, 56.082600, 52.934875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170992, -0.966209, 0.192879,
		0.702134, 0.017839, 0.711821,
		-0.691209, 0.257142, 0.675358,
		51.595932, 56.159744, 53.137482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.228764, 55.586525, 53.332428>,  <52.079781, 55.979744, 52.664734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.228764, 55.586525, 53.332428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.848946, 55.685478, 53.255318>,  <51.621056, 55.744850, 53.209049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.848946, 55.685478, 53.255318>,  <52.228764, 55.586525, 53.332428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.848946, 55.685478, 53.255318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282855, -0.941029, 0.185626,
		-0.135488, 0.230788, 0.963525,
		-0.949545, 0.247387, -0.192778,
		51.564083, 55.759693, 53.197483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.044418, 54.926563, 53.095531>,  <52.228764, 55.586525, 53.332428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.044418, 54.926563, 53.095531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.417072, 54.857658, 52.967545>,  <52.640663, 54.816315, 52.890751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.417072, 54.857658, 52.967545>,  <52.044418, 54.926563, 53.095531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.417072, 54.857658, 52.967545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290092, -0.177771, 0.940343,
		-0.218865, -0.968878, -0.115646,
		0.931636, -0.172261, -0.319971,
		52.696564, 54.805981, 52.871552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.418312, 54.280754, 53.267048>,  <52.044418, 54.926563, 53.095531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.418312, 54.280754, 53.267048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.664116, 54.596043, 53.280151>,  <52.811600, 54.785217, 53.288013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.664116, 54.596043, 53.280151>,  <52.418312, 54.280754, 53.267048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.664116, 54.596043, 53.280151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254312, -0.237234, 0.937574,
		0.746792, -0.567821, -0.346239,
		0.614514, 0.788225, 0.032761,
		52.848469, 54.832512, 53.289978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.005905, 54.006886, 53.723095>,  <52.418312, 54.280754, 53.267048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.005905, 54.006886, 53.723095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.958225, 54.399685, 53.781708>,  <52.929615, 54.635365, 53.816875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.958225, 54.399685, 53.781708>,  <53.005905, 54.006886, 53.723095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.958225, 54.399685, 53.781708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400372, -0.087508, 0.912165,
		0.908567, 0.167398, -0.382733,
		-0.119202, 0.981998, 0.146528,
		52.922466, 54.694283, 53.825665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.665993, 54.149994, 54.090870>,  <53.005905, 54.006886, 53.723095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.665993, 54.149994, 54.090870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.384880, 54.425735, 54.161179>,  <53.216213, 54.591179, 54.203365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.384880, 54.425735, 54.161179>,  <53.665993, 54.149994, 54.090870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.384880, 54.425735, 54.161179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229793, -0.013862, 0.973141,
		0.673274, 0.724293, -0.148667,
		-0.702778, 0.689353, 0.175770,
		53.174046, 54.632542, 54.213909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.842789, 54.449333, 54.838806>,  <53.665993, 54.149994, 54.090870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.842789, 54.449333, 54.838806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.889118, 54.357468, 55.225349>,  <53.916916, 54.302349, 55.457275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.889118, 54.357468, 55.225349>,  <53.842789, 54.449333, 54.838806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.889118, 54.357468, 55.225349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992381, 0.067909, -0.102805,
		-0.042014, 0.970899, 0.235776,
		0.115825, -0.229660, 0.966354,
		53.923866, 54.288570, 55.515255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.292759, 54.976982, 55.072453>,  <53.842789, 54.449333, 54.838806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.292759, 54.976982, 55.072453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.340775, 54.645607, 55.291275>,  <54.369583, 54.446781, 55.422569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.340775, 54.645607, 55.291275>,  <54.292759, 54.976982, 55.072453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.340775, 54.645607, 55.291275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992455, 0.086266, -0.087131,
		0.024990, 0.553392, 0.832546,
		0.120038, -0.828442, 0.547060,
		54.376785, 54.397076, 55.455395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.697666, 55.099422, 55.646473>,  <54.292759, 54.976982, 55.072453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.697666, 55.099422, 55.646473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.765503, 54.720352, 55.538284>,  <54.806206, 54.492912, 55.473370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.765503, 54.720352, 55.538284>,  <54.697666, 55.099422, 55.646473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.765503, 54.720352, 55.538284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927802, 0.246066, -0.280419,
		0.332299, -0.203389, 0.920983,
		0.169589, -0.947673, -0.270472,
		54.816380, 54.436050, 55.457142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.383842, 54.801186, 55.917553>,  <54.697666, 55.099422, 55.646473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.383842, 54.801186, 55.917553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.268951, 54.625511, 55.577057>,  <55.200016, 54.520107, 55.372761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.268951, 54.625511, 55.577057>,  <55.383842, 54.801186, 55.917553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.268951, 54.625511, 55.577057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830934, 0.327838, -0.449523,
		0.476495, -0.836442, 0.270772,
		-0.287230, -0.439189, -0.851241,
		55.182781, 54.493755, 55.321686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.982227, 54.439789, 55.631771>,  <55.383842, 54.801186, 55.917553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.982227, 54.439789, 55.631771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.733116, 54.554012, 55.340401>,  <55.583649, 54.622547, 55.165577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.733116, 54.554012, 55.340401>,  <55.982227, 54.439789, 55.631771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.733116, 54.554012, 55.340401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770148, 0.387858, -0.506398,
		0.137923, -0.876370, -0.461468,
		-0.622776, 0.285555, -0.728429,
		55.546284, 54.639679, 55.121872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.120041, 54.220005, 55.005314>,  <55.982227, 54.439789, 55.631771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.120041, 54.220005, 55.005314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.915977, 54.557320, 54.937660>,  <55.793537, 54.759708, 54.897068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.915977, 54.557320, 54.937660>,  <56.120041, 54.220005, 55.005314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.915977, 54.557320, 54.937660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769600, 0.359785, -0.527513,
		-0.383993, -0.399279, -0.832541,
		-0.510161, 0.843286, -0.169130,
		55.762928, 54.810307, 54.886921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.086617, 54.270535, 54.341888>,  <56.120041, 54.220005, 55.005314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.086617, 54.270535, 54.341888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.063515, 54.620975, 54.533352>,  <56.049656, 54.831238, 54.648232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.063515, 54.620975, 54.533352>,  <56.086617, 54.270535, 54.341888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.063515, 54.620975, 54.533352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751981, 0.353539, -0.556358,
		-0.656650, 0.327812, -0.679227,
		-0.057752, 0.876099, 0.478660,
		56.046188, 54.883804, 54.676949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.336056, 54.712765, 53.855614>,  <56.086617, 54.270535, 54.341888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.336056, 54.712765, 53.855614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.322182, 54.954155, 54.174263>,  <56.313858, 55.098988, 54.365452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.322182, 54.954155, 54.174263>,  <56.336056, 54.712765, 53.855614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.322182, 54.954155, 54.174263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852586, 0.433755, -0.291467,
		-0.521434, 0.669085, -0.529557,
		-0.034682, 0.603474, 0.796628,
		56.311779, 55.135197, 54.413250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.464687, 55.279778, 53.541645>,  <56.336056, 54.712765, 53.855614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.464687, 55.279778, 53.541645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.541618, 55.315765, 53.932526>,  <56.587776, 55.337357, 54.167053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.541618, 55.315765, 53.932526>,  <56.464687, 55.279778, 53.541645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.541618, 55.315765, 53.932526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932384, 0.293815, -0.210555,
		-0.306058, 0.951619, -0.027376,
		0.192325, 0.089967, 0.977199,
		56.599316, 55.342754, 54.225685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.632874, 55.981709, 53.847031>,  <56.464687, 55.279778, 53.541645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.632874, 55.981709, 53.847031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.819672, 55.687046, 54.042686>,  <56.931751, 55.510250, 54.160080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.819672, 55.687046, 54.042686>,  <56.632874, 55.981709, 53.847031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.819672, 55.687046, 54.042686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883864, 0.372308, -0.283145,
		0.026469, 0.564561, 0.824967,
		0.466994, -0.736653, 0.489141,
		56.959770, 55.466049, 54.189430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.364155, 56.259579, 54.124588>,  <56.632874, 55.981709, 53.847031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.364155, 56.259579, 54.124588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.377174, 55.862850, 54.075233>,  <57.384987, 55.624813, 54.045620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.377174, 55.862850, 54.075233>,  <57.364155, 56.259579, 54.124588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.377174, 55.862850, 54.075233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959710, 0.065487, -0.273256,
		0.279102, -0.109518, 0.953996,
		0.032548, -0.991825, -0.123383,
		57.386940, 55.565304, 54.038219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.761177, 55.838146, 54.710133>,  <57.364155, 56.259579, 54.124588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.761177, 55.838146, 54.710133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.762573, 55.728981, 54.325317>,  <57.763412, 55.663483, 54.094429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.762573, 55.728981, 54.325317>,  <57.761177, 55.838146, 54.710133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.762573, 55.728981, 54.325317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973181, 0.222211, -0.059501,
		0.230012, -0.936025, 0.266366,
		0.003495, -0.272909, -0.962034,
		57.763622, 55.647110, 54.036709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.922264, 55.423504, 55.266518>,  <57.761177, 55.838146, 54.710133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.922264, 55.423504, 55.266518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.139923, 55.736908, 55.146507>,  <58.270519, 55.924950, 55.074501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.139923, 55.736908, 55.146507>,  <57.922264, 55.423504, 55.266518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.139923, 55.736908, 55.146507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727634, -0.262697, 0.633672,
		0.417674, -0.563118, -0.713055,
		0.544149, 0.783511, -0.300022,
		58.303169, 55.971962, 55.056499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.582569, 54.996761, 55.256523>,  <57.922264, 55.423504, 55.266518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.582569, 54.996761, 55.256523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.449371, 55.345337, 55.400589>,  <58.369453, 55.554482, 55.487030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.449371, 55.345337, 55.400589>,  <58.582569, 54.996761, 55.256523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.449371, 55.345337, 55.400589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796408, 0.055427, 0.602214,
		0.504827, 0.487371, -0.712474,
		-0.332992, 0.871434, 0.360165,
		58.349472, 55.606766, 55.508640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.153706, 55.363453, 55.414639>,  <58.582569, 54.996761, 55.256523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.153706, 55.363453, 55.414639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.883369, 55.593597, 55.598900>,  <58.721169, 55.731682, 55.709457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.883369, 55.593597, 55.598900>,  <59.153706, 55.363453, 55.414639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.883369, 55.593597, 55.598900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718108, 0.373245, 0.587375,
		0.166015, 0.727771, -0.665424,
		-0.675840, 0.575359, 0.460653,
		58.680618, 55.766205, 55.737095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.309467, 56.102299, 55.364784>,  <59.153706, 55.363453, 55.414639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.309467, 56.102299, 55.364784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.111488, 56.028156, 55.704353>,  <58.992702, 55.983669, 55.908096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.111488, 56.028156, 55.704353>,  <59.309467, 56.102299, 55.364784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.111488, 56.028156, 55.704353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723060, 0.453955, 0.520682,
		-0.481887, 0.871531, -0.090657,
		-0.494944, -0.185360, 0.848924,
		58.963005, 55.972549, 55.959030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.238365, 56.774139, 55.695652>,  <59.309467, 56.102299, 55.364784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.238365, 56.774139, 55.695652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.264412, 56.429260, 55.896599>,  <59.280041, 56.222332, 56.017166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.264412, 56.429260, 55.896599>,  <59.238365, 56.774139, 55.695652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.264412, 56.429260, 55.896599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839519, 0.319469, 0.439485,
		-0.539414, 0.393128, 0.744636,
		0.065114, -0.862201, 0.502365,
		59.283947, 56.170601, 56.047310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.153286, 56.793442, 56.347355>,  <59.238365, 56.774139, 55.695652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.153286, 56.793442, 56.347355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.410652, 56.500175, 56.259277>,  <59.565071, 56.324215, 56.206429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.410652, 56.500175, 56.259277>,  <59.153286, 56.793442, 56.347355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.410652, 56.500175, 56.259277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755875, 0.562935, 0.334301,
		-0.121141, -0.381535, 0.916382,
		0.643411, -0.733168, -0.220198,
		59.603676, 56.280224, 56.193218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.453537, 56.613079, 56.938217>,  <59.153286, 56.793442, 56.347355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.453537, 56.613079, 56.938217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.682304, 56.550407, 56.616135>,  <59.819565, 56.512802, 56.422886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.682304, 56.550407, 56.616135>,  <59.453537, 56.613079, 56.938217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.682304, 56.550407, 56.616135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734027, 0.535962, 0.417072,
		0.366212, -0.829575, 0.421537,
		0.571921, -0.156682, -0.805206,
		59.853882, 56.503403, 56.374573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.113621, 56.481487, 57.159164>,  <59.453537, 56.613079, 56.938217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.113621, 56.481487, 57.159164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.186325, 56.651749, 56.804588>,  <60.229950, 56.753906, 56.591843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.186325, 56.651749, 56.804588>,  <60.113621, 56.481487, 57.159164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.186325, 56.651749, 56.804588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723335, 0.552800, 0.413760,
		0.666144, -0.716403, -0.207409,
		0.181763, 0.425651, -0.886444,
		60.240852, 56.779446, 56.538654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.489788, 56.029186, 56.714359>,  <60.113621, 56.481487, 57.159164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.489788, 56.029186, 56.714359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.846016, 56.158371, 56.586243>,  <61.059753, 56.235882, 56.509373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.846016, 56.158371, 56.586243>,  <60.489788, 56.029186, 56.714359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.846016, 56.158371, 56.586243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229426, 0.289075, 0.929408,
		0.392754, -0.901182, 0.183344,
		0.890566, 0.322965, -0.320290,
		61.113186, 56.255260, 56.490154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.039543, 55.676525, 57.043201>,  <60.489788, 56.029186, 56.714359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.039543, 55.676525, 57.043201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.157349, 56.039116, 56.922165>,  <61.228031, 56.256672, 56.849545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.157349, 56.039116, 56.922165>,  <61.039543, 55.676525, 57.043201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.157349, 56.039116, 56.922165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350223, 0.192229, 0.916729,
		0.889161, -0.375961, -0.260856,
		0.294510, 0.906477, -0.302592,
		61.245701, 56.311058, 56.831387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.822094, 55.829472, 57.150677>,  <61.039543, 55.676525, 57.043201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.822094, 55.829472, 57.150677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.606186, 56.166180, 57.147232>,  <61.476643, 56.368206, 57.145164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.606186, 56.166180, 57.147232>,  <61.822094, 55.829472, 57.150677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.606186, 56.166180, 57.147232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334582, 0.223908, 0.915380,
		0.772467, 0.491212, -0.402500,
		-0.539768, 0.841770, -0.008610,
		61.444256, 56.418709, 57.144650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.243423, 56.383209, 57.353424>,  <61.822094, 55.829472, 57.150677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.243423, 56.383209, 57.353424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.861008, 56.483498, 57.414261>,  <61.631557, 56.543671, 57.450764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.861008, 56.483498, 57.414261>,  <62.243423, 56.383209, 57.353424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.861008, 56.483498, 57.414261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251406, 0.433755, 0.865247,
		0.150965, 0.865445, -0.477719,
		-0.956036, 0.250723, 0.152096,
		61.574196, 56.558716, 57.459888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.321316, 57.083607, 57.582687>,  <62.243423, 56.383209, 57.353424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.321316, 57.083607, 57.582687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.002441, 56.879181, 57.711250>,  <61.811115, 56.756527, 57.788387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.002441, 56.879181, 57.711250>,  <62.321316, 57.083607, 57.582687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.002441, 56.879181, 57.711250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155408, 0.340712, 0.927234,
		-0.583384, 0.789130, -0.192189,
		-0.797190, -0.511066, 0.321403,
		61.763283, 56.725861, 57.807671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.709351, 57.396198, 58.113033>,  <62.321316, 57.083607, 57.582687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.709351, 57.396198, 58.113033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.754105, 57.169640, 58.439636>,  <62.780956, 57.033707, 58.635597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.754105, 57.169640, 58.439636>,  <62.709351, 57.396198, 58.113033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.754105, 57.169640, 58.439636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957914, -0.157104, -0.240246,
		0.264350, 0.809023, 0.524977,
		0.111889, -0.566392, 0.816505,
		62.787670, 56.999722, 58.684589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.384296, 57.517677, 58.374382>,  <62.709351, 57.396198, 58.113033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.384296, 57.517677, 58.374382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.265121, 57.167267, 58.526077>,  <63.193619, 56.957020, 58.617096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.265121, 57.167267, 58.526077>,  <63.384296, 57.517677, 58.374382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.265121, 57.167267, 58.526077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940617, -0.337130, -0.039794,
		0.162713, 0.344862, 0.924443,
		-0.297934, -0.876021, 0.379239,
		63.175743, 56.904461, 58.639851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.849857, 57.467575, 58.854252>,  <63.384296, 57.517677, 58.374382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.849857, 57.467575, 58.854252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.709709, 57.112133, 58.735847>,  <63.625622, 56.898869, 58.664806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.709709, 57.112133, 58.735847>,  <63.849857, 57.467575, 58.854252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.709709, 57.112133, 58.735847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934358, -0.353524, -0.044679,
		-0.064944, -0.292232, 0.954140,
		-0.350368, -0.888606, -0.296009,
		63.604599, 56.845551, 58.647045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.034294, 56.900452, 59.352066>,  <63.849857, 57.467575, 58.854252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.034294, 56.900452, 59.352066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.000725, 56.802120, 58.965797>,  <63.980583, 56.743122, 58.734035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.000725, 56.802120, 58.965797>,  <64.034294, 56.900452, 59.352066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.000725, 56.802120, 58.965797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971227, -0.236935, -0.024091,
		-0.222880, -0.939910, 0.258637,
		-0.083923, -0.245826, -0.965674,
		63.975548, 56.728371, 58.676094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.132339, 56.097340, 59.224216>,  <64.034294, 56.900452, 59.352066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.132339, 56.097340, 59.224216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.242233, 56.351551, 58.935600>,  <64.308174, 56.504078, 58.762428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.242233, 56.351551, 58.935600>,  <64.132339, 56.097340, 59.224216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.242233, 56.351551, 58.935600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955111, -0.266872, 0.128618,
		-0.110820, -0.724491, -0.680318,
		0.274740, 0.635526, -0.721544,
		64.324654, 56.542210, 58.719139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.715668, 55.831242, 58.861073>,  <64.132339, 56.097340, 59.224216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.715668, 55.831242, 58.861073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.760704, 56.221207, 58.784264>,  <64.787727, 56.455185, 58.738178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.760704, 56.221207, 58.784264>,  <64.715668, 55.831242, 58.861073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.760704, 56.221207, 58.784264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988817, -0.128956, -0.074906,
		-0.097789, -0.181438, -0.978528,
		0.112597, 0.974910, -0.192019,
		64.794479, 56.513680, 58.726658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.214378, 55.329708, 58.881256>,  <64.715668, 55.831242, 58.861073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.214378, 55.329708, 58.881256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.402512, 55.281883, 58.531517>,  <65.515396, 55.253189, 58.321674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.402512, 55.281883, 58.531517>,  <65.214378, 55.329708, 58.881256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.402512, 55.281883, 58.531517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010590, 0.991473, -0.129882,
		0.882424, 0.051829, 0.467592,
		0.470337, -0.119563, -0.874350,
		65.543610, 55.246014, 58.269211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.847847, 55.239326, 58.900120>,  <65.214378, 55.329708, 58.881256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.847847, 55.239326, 58.900120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.988274, 54.886242, 59.025070>,  <66.072525, 54.674393, 59.100040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.988274, 54.886242, 59.025070>,  <65.847847, 55.239326, 58.900120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.988274, 54.886242, 59.025070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923360, 0.270968, -0.271997,
		0.155449, 0.383926, 0.910185,
		0.351058, -0.882710, 0.312381,
		66.093590, 54.621429, 59.118786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.278770, 55.364788, 59.474339>,  <65.847847, 55.239326, 58.900120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.278770, 55.364788, 59.474339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.352806, 55.037613, 59.256454>,  <66.397232, 54.841309, 59.125725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.352806, 55.037613, 59.256454>,  <66.278770, 55.364788, 59.474339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.352806, 55.037613, 59.256454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941508, 0.306436, -0.140215,
		0.281607, -0.486896, 0.826820,
		0.185097, -0.817943, -0.544710,
		66.408333, 54.792229, 59.093040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.935898, 55.079292, 59.760063>,  <66.278770, 55.364788, 59.474339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.935898, 55.079292, 59.760063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.859154, 54.960445, 59.385918>,  <66.813103, 54.889137, 59.161430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.859154, 54.960445, 59.385918>,  <66.935898, 55.079292, 59.760063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.859154, 54.960445, 59.385918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873455, 0.382886, -0.300791,
		0.447509, -0.874711, 0.186056,
		-0.191867, -0.297118, -0.935365,
		66.801590, 54.871311, 59.105309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.346840, 54.561008, 59.619484>,  <66.935898, 55.079292, 59.760063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.346840, 54.561008, 59.619484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.315498, 54.760262, 59.274063>,  <67.296692, 54.879814, 59.066811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.315498, 54.760262, 59.274063>,  <67.346840, 54.561008, 59.619484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.315498, 54.760262, 59.274063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979645, 0.199055, 0.025933,
		0.184812, -0.843944, -0.503590,
		-0.078356, 0.498132, -0.863553,
		67.291992, 54.909702, 59.014996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.758247, 54.252338, 59.120361>,  <67.346840, 54.561008, 59.619484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.758247, 54.252338, 59.120361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.716377, 54.647804, 59.077301>,  <67.691254, 54.885082, 59.051464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.716377, 54.647804, 59.077301>,  <67.758247, 54.252338, 59.120361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.716377, 54.647804, 59.077301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987720, 0.115977, 0.104679,
		0.115977, -0.095368, -0.988663,
		-0.104679, 0.988663, -0.107647,
		67.684975, 54.944405, 59.045006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.102150, 54.552792, 58.479031>,  <67.758247, 54.252338, 59.120361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.102150, 54.552792, 58.479031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.074356, 54.827415, 58.768532>,  <68.057678, 54.992188, 58.942230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.074356, 54.827415, 58.768532>,  <68.102150, 54.552792, 58.479031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.074356, 54.827415, 58.768532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996823, 0.076093, 0.023520,
		-0.038925, 0.723084, -0.689663,
		-0.069486, 0.686556, 0.723749,
		68.053513, 55.033382, 58.985657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.382362, 55.265457, 58.276703>,  <68.102150, 54.552792, 58.479031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.382362, 55.265457, 58.276703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.423592, 55.149506, 58.657303>,  <68.448326, 55.079933, 58.885662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.423592, 55.149506, 58.657303>,  <68.382362, 55.265457, 58.276703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.423592, 55.149506, 58.657303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993546, 0.075537, -0.084616,
		-0.047345, 0.954077, 0.295795,
		0.103074, -0.289880, 0.951496,
		68.454514, 55.062542, 58.942753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.837975, 55.737598, 58.717838>,  <68.382362, 55.265457, 58.276703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.837975, 55.737598, 58.717838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.867569, 55.398567, 58.928032>,  <68.885323, 55.195148, 59.054150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.867569, 55.398567, 58.928032>,  <68.837975, 55.737598, 58.717838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.867569, 55.398567, 58.928032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992380, 0.114632, 0.045174,
		-0.098526, 0.518137, 0.849604,
		0.073986, -0.847581, 0.525484,
		68.889763, 55.144295, 59.085678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.735573, 56.056282, 59.389240>,  <68.837975, 55.737598, 58.717838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.735573, 56.056282, 59.389240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.731339, 56.382160, 59.621155>,  <68.728798, 56.577686, 59.760303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.731339, 56.382160, 59.621155>,  <68.735573, 56.056282, 59.389240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.731339, 56.382160, 59.621155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986026, -0.087898, 0.141512,
		0.166252, 0.573183, -0.802385,
		-0.010585, 0.814699, 0.579787,
		68.728165, 56.626572, 59.795090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.266853, 56.483318, 59.280647>,  <68.735573, 56.056282, 59.389240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.266853, 56.483318, 59.280647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.158516, 56.578140, 59.653839>,  <69.093513, 56.635033, 59.877754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.158516, 56.578140, 59.653839>,  <69.266853, 56.483318, 59.280647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.158516, 56.578140, 59.653839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962327, 0.042721, 0.268518,
		0.023797, 0.970555, -0.239699,
		-0.270852, 0.237059, 0.932975,
		69.077263, 56.649258, 59.933731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.518944, 57.197582, 59.503094>,  <69.266853, 56.483318, 59.280647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.518944, 57.197582, 59.503094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.475990, 56.905720, 59.773224>,  <69.450218, 56.730602, 59.935303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.475990, 56.905720, 59.773224>,  <69.518944, 57.197582, 59.503094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.475990, 56.905720, 59.773224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994150, -0.086747, 0.064344,
		0.011633, 0.678285, 0.734707,
		-0.107377, -0.729660, 0.675327,
		69.443779, 56.686821, 59.975822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.952553, 57.316502, 60.161587>,  <69.518944, 57.197582, 59.503094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.952553, 57.316502, 60.161587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.927986, 56.929810, 60.062263>,  <69.913246, 56.697792, 60.002670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.927986, 56.929810, 60.062263>,  <69.952553, 57.316502, 60.161587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.927986, 56.929810, 60.062263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997053, -0.047953, -0.059885,
		0.045986, -0.251257, 0.966828,
		-0.061409, -0.966732, -0.248311,
		69.909561, 56.639790, 59.987770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.438400, 56.862267, 60.578163>,  <69.952553, 57.316502, 60.161587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.438400, 56.862267, 60.578163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.337265, 56.678318, 60.237671>,  <70.276581, 56.567947, 60.033375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.337265, 56.678318, 60.237671>,  <70.438400, 56.862267, 60.578163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.337265, 56.678318, 60.237671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962326, -0.210463, -0.172145,
		-0.099987, -0.862684, 0.495761,
		-0.252846, -0.459872, -0.851227,
		70.261414, 56.540356, 59.982304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.083000, 56.759705, 60.154076>,  <70.438400, 56.862267, 60.578163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.083000, 56.759705, 60.154076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.930145, 57.024952, 60.411522>,  <70.838432, 57.184101, 60.565990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.930145, 57.024952, 60.411522>,  <71.083000, 56.759705, 60.154076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.930145, 57.024952, 60.411522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913924, 0.374293, 0.156996,
		-0.136795, 0.648213, -0.749071,
		-0.382139, 0.663118, 0.643619,
		70.815506, 57.223888, 60.604607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.088036, 57.465034, 60.009480>,  <71.083000, 56.759705, 60.154076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.088036, 57.465034, 60.009480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.135017, 57.415794, 60.403648>,  <71.163208, 57.386250, 60.640148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.135017, 57.415794, 60.403648>,  <71.088036, 57.465034, 60.009480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.135017, 57.415794, 60.403648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868148, 0.494550, -0.041691,
		-0.482207, 0.860387, 0.164957,
		0.117450, -0.123103, 0.985419,
		71.170250, 57.378864, 60.699276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.337120, 58.125530, 60.199642>,  <71.088036, 57.465034, 60.009480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.337120, 58.125530, 60.199642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.512444, 57.889137, 60.470528>,  <71.617638, 57.747303, 60.633060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.512444, 57.889137, 60.470528>,  <71.337120, 58.125530, 60.199642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.512444, 57.889137, 60.470528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891960, 0.378918, -0.246633,
		-0.110853, 0.712152, 0.693218,
		0.438313, -0.590983, 0.677215,
		71.643936, 57.711842, 60.673691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.684654, 58.568043, 60.564838>,  <71.337120, 58.125530, 60.199642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.684654, 58.568043, 60.564838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.831009, 58.197563, 60.528412>,  <71.918823, 57.975277, 60.506554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.831009, 58.197563, 60.528412>,  <71.684654, 58.568043, 60.564838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.831009, 58.197563, 60.528412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866464, 0.374723, -0.329882,
		0.339661, 0.041789, 0.939619,
		0.365883, -0.926194, -0.091070,
		71.940773, 57.919704, 60.501091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.362854, 58.560654, 60.904369>,  <71.684654, 58.568043, 60.564838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.362854, 58.560654, 60.904369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.377960, 58.258316, 60.642906>,  <72.387024, 58.076912, 60.486027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.377960, 58.258316, 60.642906>,  <72.362854, 58.560654, 60.904369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.377960, 58.258316, 60.642906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788510, 0.424375, -0.445150,
		0.613861, -0.498604, 0.612020,
		0.037772, -0.755844, -0.653661,
		72.389290, 58.031563, 60.446808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.955971, 58.120354, 60.997066>,  <72.362854, 58.560654, 60.904369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.955971, 58.120354, 60.997066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.809227, 58.161270, 60.627213>,  <72.721184, 58.185822, 60.405300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.809227, 58.161270, 60.627213>,  <72.955971, 58.120354, 60.997066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.809227, 58.161270, 60.627213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860436, 0.415153, -0.295460,
		0.353643, -0.903983, -0.240316,
		-0.366859, 0.102289, -0.924636,
		72.699173, 58.191956, 60.349823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.394867, 57.798733, 60.563992>,  <72.955971, 58.120354, 60.997066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.394867, 57.798733, 60.563992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.203094, 58.092896, 60.372444>,  <73.088028, 58.269394, 60.257515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.203094, 58.092896, 60.372444>,  <73.394867, 57.798733, 60.563992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.203094, 58.092896, 60.372444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872740, 0.342350, -0.348025,
		-0.092002, -0.584780, -0.805957,
		-0.479438, 0.735411, -0.478864,
		73.059265, 58.313519, 60.228786>
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
