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
	<35.391697, 53.268116, 49.638870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495644, 53.597466, 49.437069>,  <35.558010, 53.795074, 49.315987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495644, 53.597466, 49.437069>,  <35.391697, 53.268116, 49.638870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495644, 53.597466, 49.437069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755790, 0.151760, 0.636985,
		0.601041, -0.546829, -0.582862,
		0.259867, 0.823376, -0.504502,
		35.573605, 53.844479, 49.285717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080032, 53.325867, 49.175369>,  <35.391697, 53.268116, 49.638870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080032, 53.325867, 49.175369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938114, 53.653496, 49.355698>,  <35.852962, 53.850071, 49.463894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938114, 53.653496, 49.355698>,  <36.080032, 53.325867, 49.175369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938114, 53.653496, 49.355698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901994, 0.172988, 0.395578,
		0.246019, 0.546992, -0.800171,
		-0.354798, 0.819069, 0.450825,
		35.831676, 53.899216, 49.490944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437691, 54.046192, 49.104240>,  <36.080032, 53.325867, 49.175369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437691, 54.046192, 49.104240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268375, 54.007946, 49.464615>,  <36.166786, 53.985001, 49.680840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268375, 54.007946, 49.464615>,  <36.437691, 54.046192, 49.104240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268375, 54.007946, 49.464615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878414, 0.200196, 0.433948,
		-0.221855, 0.975079, -0.000753,
		-0.423284, -0.095612, 0.900938,
		36.141392, 53.979263, 49.734898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846485, 54.449421, 49.621902>,  <36.437691, 54.046192, 49.104240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846485, 54.449421, 49.621902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628880, 54.214546, 49.861656>,  <36.498314, 54.073624, 50.005508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628880, 54.214546, 49.861656>,  <36.846485, 54.449421, 49.621902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628880, 54.214546, 49.861656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638943, 0.173122, 0.749520,
		-0.543872, 0.790724, 0.280996,
		-0.544017, -0.587184, 0.599383,
		36.465675, 54.038391, 50.041470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609608, 54.945766, 50.118031>,  <36.846485, 54.449421, 49.621902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609608, 54.945766, 50.118031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566898, 54.613541, 50.336666>,  <36.541271, 54.414204, 50.467846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566898, 54.613541, 50.336666>,  <36.609608, 54.945766, 50.118031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566898, 54.613541, 50.336666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223158, 0.515689, 0.827203,
		-0.968917, 0.210299, 0.130286,
		-0.106773, -0.830566, 0.546590,
		36.534866, 54.364372, 50.500645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961498, 54.977234, 50.437092>,  <36.609608, 54.945766, 50.118031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961498, 54.977234, 50.437092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204964, 54.730629, 50.636868>,  <36.351044, 54.582664, 50.756733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204964, 54.730629, 50.636868>,  <35.961498, 54.977234, 50.437092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204964, 54.730629, 50.636868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008236, 0.624530, 0.780957,
		-0.793388, -0.479451, 0.375049,
		0.608661, -0.616514, 0.499443,
		36.387562, 54.545673, 50.786701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768303, 54.932133, 51.137688>,  <35.961498, 54.977234, 50.437092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768303, 54.932133, 51.137688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150486, 54.814838, 51.150997>,  <36.379795, 54.744461, 51.158981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150486, 54.814838, 51.150997>,  <35.768303, 54.932133, 51.137688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150486, 54.814838, 51.150997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156970, 0.600426, 0.784123,
		-0.249910, -0.743976, 0.619713,
		0.955461, -0.293237, 0.033271,
		36.437126, 54.726868, 51.160980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016647, 54.747631, 51.809731>,  <35.768303, 54.932133, 51.137688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016647, 54.747631, 51.809731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334915, 54.876766, 51.604721>,  <36.525875, 54.954247, 51.481716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334915, 54.876766, 51.604721>,  <36.016647, 54.747631, 51.809731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334915, 54.876766, 51.604721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140491, 0.724702, 0.674588,
		0.589212, -0.608755, 0.531268,
		0.795670, 0.322838, -0.512528,
		36.573616, 54.973618, 51.450962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738327, 54.886425, 52.193096>,  <36.016647, 54.747631, 51.809731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738327, 54.886425, 52.193096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757423, 55.141335, 51.885433>,  <36.768883, 55.294281, 51.700836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757423, 55.141335, 51.885433>,  <36.738327, 54.886425, 52.193096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757423, 55.141335, 51.885433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084542, 0.764695, 0.638823,
		0.995276, -0.095524, -0.017369,
		0.047741, 0.637273, -0.769158,
		36.771744, 55.332516, 51.654686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342949, 55.301327, 52.126244>,  <36.738327, 54.886425, 52.193096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342949, 55.301327, 52.126244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019001, 55.496319, 51.995728>,  <36.824631, 55.613316, 51.917419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019001, 55.496319, 51.995728>,  <37.342949, 55.301327, 52.126244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019001, 55.496319, 51.995728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219504, 0.767664, 0.602088,
		0.543988, 0.415993, -0.728716,
		-0.809873, 0.487485, -0.326288,
		36.776039, 55.642563, 51.897842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500576, 56.007164, 51.733334>,  <37.342949, 55.301327, 52.126244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500576, 56.007164, 51.733334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144360, 55.980091, 51.913269>,  <36.930630, 55.963848, 52.021233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144360, 55.980091, 51.913269>,  <37.500576, 56.007164, 51.733334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144360, 55.980091, 51.913269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250187, 0.753010, 0.608590,
		-0.379927, 0.654518, -0.653652,
		-0.890540, -0.067684, 0.449841,
		36.877197, 55.959785, 52.048222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900787, 55.833317, 52.389103>,  <37.500576, 56.007164, 51.733334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900787, 55.833317, 52.389103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176052, 55.662811, 52.623959>,  <38.341213, 55.560509, 52.764874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176052, 55.662811, 52.623959>,  <37.900787, 55.833317, 52.389103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176052, 55.662811, 52.623959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422706, 0.893249, 0.153054,
		-0.589703, 0.142861, 0.794884,
		0.688164, -0.426259, 0.587140,
		38.382500, 55.534935, 52.800102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984619, 56.247986, 52.981590>,  <37.900787, 55.833317, 52.389103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984619, 56.247986, 52.981590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335182, 56.079903, 52.887497>,  <38.545521, 55.979053, 52.831039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335182, 56.079903, 52.887497>,  <37.984619, 56.247986, 52.981590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335182, 56.079903, 52.887497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446264, 0.892256, 0.068756,
		0.181000, -0.165236, 0.969503,
		0.876406, -0.420209, -0.235237,
		38.598103, 55.953838, 52.816925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630352, 56.373375, 53.504242>,  <37.984619, 56.247986, 52.981590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630352, 56.373375, 53.504242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756340, 56.293087, 53.133186>,  <38.831932, 56.244915, 52.910553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756340, 56.293087, 53.133186>,  <38.630352, 56.373375, 53.504242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756340, 56.293087, 53.133186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505282, 0.862821, -0.015127,
		0.803419, -0.463953, 0.373183,
		0.314972, -0.200716, -0.927634,
		38.850830, 56.232872, 52.854897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378487, 56.366970, 53.436619>,  <38.630352, 56.373375, 53.504242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378487, 56.366970, 53.436619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237602, 56.437611, 53.068977>,  <39.153072, 56.479996, 52.848392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237602, 56.437611, 53.068977>,  <39.378487, 56.366970, 53.436619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237602, 56.437611, 53.068977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658897, 0.744221, -0.109501,
		0.664681, -0.644164, -0.378486,
		-0.352214, 0.176601, -0.919107,
		39.131939, 56.490589, 52.793243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985771, 56.402901, 52.871532>,  <39.378487, 56.366970, 53.436619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985771, 56.402901, 52.871532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662479, 56.586239, 52.723648>,  <39.468506, 56.696243, 52.634918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662479, 56.586239, 52.723648>,  <39.985771, 56.402901, 52.871532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662479, 56.586239, 52.723648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578169, 0.736810, -0.350475,
		0.111771, -0.497020, -0.860510,
		-0.808225, 0.458347, -0.369715,
		39.420013, 56.723743, 52.612732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157146, 56.745995, 52.306698>,  <39.985771, 56.402901, 52.871532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157146, 56.745995, 52.306698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819359, 56.942108, 52.392952>,  <39.616688, 57.059776, 52.444702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819359, 56.942108, 52.392952>,  <40.157146, 56.745995, 52.306698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819359, 56.942108, 52.392952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411817, 0.851767, -0.323883,
		-0.342464, -0.184708, -0.921196,
		-0.844468, 0.490282, 0.215633,
		39.566017, 57.089191, 52.457642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366779, 56.881752, 51.599419>,  <40.157146, 56.745995, 52.306698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366779, 56.881752, 51.599419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327141, 56.512863, 51.449921>,  <40.303356, 56.291531, 51.360222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327141, 56.512863, 51.449921>,  <40.366779, 56.881752, 51.599419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327141, 56.512863, 51.449921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994123, -0.075309, -0.077763,
		0.043569, -0.379252, 0.924267,
		-0.099097, -0.922224, -0.373742,
		40.297413, 56.236195, 51.337799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757675, 56.358105, 52.009838>,  <40.366779, 56.881752, 51.599419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757675, 56.358105, 52.009838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712013, 56.170662, 51.659439>,  <40.684616, 56.058197, 51.449200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712013, 56.170662, 51.659439>,  <40.757675, 56.358105, 52.009838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712013, 56.170662, 51.659439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982726, -0.182553, -0.030413,
		-0.145665, -0.864341, 0.481349,
		-0.114158, -0.468604, -0.876001,
		40.677765, 56.030079, 51.396637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037292, 55.615097, 51.944347>,  <40.757675, 56.358105, 52.009838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037292, 55.615097, 51.944347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056480, 55.816994, 51.599571>,  <41.067993, 55.938133, 51.392708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056480, 55.816994, 51.599571>,  <41.037292, 55.615097, 51.944347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056480, 55.816994, 51.599571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998520, -0.046375, 0.028410,
		-0.025632, -0.862025, -0.506218,
		0.047966, 0.504741, -0.861937,
		41.070869, 55.968414, 51.340988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228867, 55.220722, 51.201366>,  <41.037292, 55.615097, 51.944347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228867, 55.220722, 51.201366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365883, 55.594791, 51.237419>,  <41.448093, 55.819233, 51.259048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365883, 55.594791, 51.237419>,  <41.228867, 55.220722, 51.201366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365883, 55.594791, 51.237419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937728, -0.346209, 0.028393,
		0.057756, 0.074790, -0.995525,
		0.342537, 0.935171, 0.090128,
		41.468643, 55.875343, 51.264458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889412, 55.177689, 50.903149>,  <41.228867, 55.220722, 51.201366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889412, 55.177689, 50.903149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905865, 55.539124, 51.073719>,  <41.915737, 55.755985, 51.176060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905865, 55.539124, 51.073719>,  <41.889412, 55.177689, 50.903149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905865, 55.539124, 51.073719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994037, -0.080143, 0.073944,
		0.100990, 0.420843, -0.901494,
		0.041129, 0.903586, 0.426427,
		41.918205, 55.810200, 51.201649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187244, 55.782303, 50.627258>,  <41.889412, 55.177689, 50.903149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187244, 55.782303, 50.627258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250317, 55.854893, 51.015526>,  <42.288162, 55.898445, 51.248486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250317, 55.854893, 51.015526>,  <42.187244, 55.782303, 50.627258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250317, 55.854893, 51.015526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945535, -0.311223, -0.095414,
		0.284780, 0.932849, -0.220666,
		0.157683, 0.181475, 0.970671,
		42.297623, 55.909336, 51.306728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727669, 56.281715, 50.808556>,  <42.187244, 55.782303, 50.627258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727669, 56.281715, 50.808556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677429, 55.996941, 51.084923>,  <42.647285, 55.826077, 51.250744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677429, 55.996941, 51.084923>,  <42.727669, 56.281715, 50.808556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677429, 55.996941, 51.084923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931193, -0.324824, -0.165435,
		0.342206, 0.622599, 0.703750,
		-0.125596, -0.711940, 0.690917,
		42.639751, 55.783360, 51.292198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260597, 56.248573, 51.419308>,  <42.727669, 56.281715, 50.808556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260597, 56.248573, 51.419308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090435, 55.894543, 51.343758>,  <42.988338, 55.682125, 51.298428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090435, 55.894543, 51.343758>,  <43.260597, 56.248573, 51.419308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090435, 55.894543, 51.343758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878059, -0.353112, -0.322992,
		0.219179, -0.303245, 0.927363,
		-0.425409, -0.885073, -0.188873,
		42.962811, 55.629021, 51.287094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400589, 55.643341, 51.816769>,  <43.260597, 56.248573, 51.419308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400589, 55.643341, 51.816769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333679, 55.567772, 51.429710>,  <43.293533, 55.522430, 51.197475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333679, 55.567772, 51.429710>,  <43.400589, 55.643341, 51.816769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333679, 55.567772, 51.429710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888480, -0.454304, -0.064891,
		-0.427344, -0.870585, 0.243843,
		-0.167272, -0.188919, -0.967641,
		43.283497, 55.511097, 51.139420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115360, 55.930595, 51.529968>,  <43.400589, 55.643341, 51.816769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115360, 55.930595, 51.529968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410816, 55.887070, 51.796074>,  <44.588089, 55.860954, 51.955738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410816, 55.887070, 51.796074>,  <44.115360, 55.930595, 51.529968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410816, 55.887070, 51.796074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458234, -0.642756, -0.613910,
		0.494402, 0.758303, -0.424903,
		0.738639, -0.108813, 0.665260,
		44.632408, 55.854427, 51.995651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644833, 55.735897, 51.094830>,  <44.115360, 55.930595, 51.529968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644833, 55.735897, 51.094830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741646, 55.640419, 51.471008>,  <44.799736, 55.583134, 51.696716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741646, 55.640419, 51.471008>,  <44.644833, 55.735897, 51.094830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741646, 55.640419, 51.471008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479781, -0.813032, -0.329831,
		0.843344, 0.531040, -0.082263,
		0.242036, -0.238693, 0.940449,
		44.814255, 55.568810, 51.753143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420185, 55.584797, 51.165833>,  <44.644833, 55.735897, 51.094830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420185, 55.584797, 51.165833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260925, 55.375153, 51.466972>,  <45.165371, 55.249367, 51.647659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260925, 55.375153, 51.466972>,  <45.420185, 55.584797, 51.165833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260925, 55.375153, 51.466972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454693, -0.825550, -0.334249,
		0.796701, 0.209237, 0.566999,
		-0.398149, -0.524107, 0.752855,
		45.141479, 55.217922, 51.692829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999794, 55.058975, 51.421326>,  <45.420185, 55.584797, 51.165833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999794, 55.058975, 51.421326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616989, 54.943066, 51.426445>,  <45.387306, 54.873520, 51.429516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616989, 54.943066, 51.426445>,  <45.999794, 55.058975, 51.421326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616989, 54.943066, 51.426445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278165, -0.929382, -0.242638,
		0.082204, -0.228647, 0.970033,
		-0.957009, -0.289775, 0.012798,
		45.329887, 54.856133, 51.430283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439854, 55.303257, 50.702499>,  <45.999794, 55.058975, 51.421326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439854, 55.303257, 50.702499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486740, 55.015503, 50.976360>,  <46.514874, 54.842850, 51.140675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486740, 55.015503, 50.976360>,  <46.439854, 55.303257, 50.702499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486740, 55.015503, 50.976360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940863, -0.140211, -0.308412,
		0.317862, 0.680315, 0.660406,
		0.117221, -0.719384, 0.684651,
		46.521908, 54.799686, 51.181755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051865, 55.403435, 50.971931>,  <46.439854, 55.303257, 50.702499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051865, 55.403435, 50.971931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982132, 55.016838, 51.047291>,  <46.940292, 54.784878, 51.092506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982132, 55.016838, 51.047291>,  <47.051865, 55.403435, 50.971931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.982132, 55.016838, 51.047291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965133, -0.205650, -0.161943,
		0.195262, 0.153599, 0.968649,
		-0.174329, -0.966496, 0.188399,
		46.929832, 54.726891, 51.103809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315659, 55.119476, 51.678604>,  <47.051865, 55.403435, 50.971931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315659, 55.119476, 51.678604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287525, 54.845177, 51.388832>,  <47.270645, 54.680595, 51.214970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287525, 54.845177, 51.388832>,  <47.315659, 55.119476, 51.678604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.287525, 54.845177, 51.388832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896768, -0.361526, 0.255158,
		-0.436875, -0.631697, 0.640389,
		-0.070335, -0.685753, -0.724428,
		47.266426, 54.639450, 51.171505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.237411, 54.410496, 51.844597>,  <47.315659, 55.119476, 51.678604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.237411, 54.410496, 51.844597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469933, 54.510788, 51.534958>,  <47.609444, 54.570965, 51.349174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469933, 54.510788, 51.534958>,  <47.237411, 54.410496, 51.844597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.469933, 54.510788, 51.534958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776856, -0.454002, 0.436322,
		-0.242038, -0.854993, -0.458698,
		0.581302, 0.250736, -0.774093,
		47.644321, 54.586010, 51.302731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.672890, 53.874111, 51.774338>,  <47.237411, 54.410496, 51.844597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.672890, 53.874111, 51.774338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851799, 54.176628, 51.583351>,  <47.959145, 54.358139, 51.468758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851799, 54.176628, 51.583351>,  <47.672890, 53.874111, 51.774338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.851799, 54.176628, 51.583351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892359, -0.341304, 0.295309,
		0.060377, -0.558156, -0.827536,
		0.447270, 0.756289, -0.477468,
		47.985981, 54.403515, 51.440109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.211502, 53.498337, 51.421974>,  <47.672890, 53.874111, 51.774338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.211502, 53.498337, 51.421974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.270477, 53.885735, 51.502251>,  <48.305862, 54.118176, 51.550415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.270477, 53.885735, 51.502251>,  <48.211502, 53.498337, 51.421974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.270477, 53.885735, 51.502251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914810, -0.210672, 0.344587,
		0.376011, 0.132788, -0.917051,
		0.147440, 0.968496, 0.200691,
		48.314709, 54.176285, 51.562458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.925549, 53.670116, 51.146664>,  <48.211502, 53.498337, 51.421974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.925549, 53.670116, 51.146664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.800632, 53.941608, 51.412537>,  <48.725685, 54.104504, 51.572060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.800632, 53.941608, 51.412537>,  <48.925549, 53.670116, 51.146664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.800632, 53.941608, 51.412537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917369, 0.033685, 0.396610,
		0.246801, 0.733617, -0.633164,
		-0.312288, 0.678728, 0.664684,
		48.706947, 54.145226, 51.611942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.340275, 54.208176, 51.012833>,  <48.925549, 53.670116, 51.146664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.340275, 54.208176, 51.012833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.193672, 54.166080, 51.382610>,  <49.105709, 54.140823, 51.604477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.193672, 54.166080, 51.382610>,  <49.340275, 54.208176, 51.012833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.193672, 54.166080, 51.382610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915229, 0.138005, 0.378565,
		-0.167419, 0.984824, 0.045741,
		-0.366507, -0.105242, 0.924444,
		49.083721, 54.134506, 51.659943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.728470, 54.673019, 51.506573>,  <49.340275, 54.208176, 51.012833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.728470, 54.673019, 51.506573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.593105, 54.345821, 51.692631>,  <49.511887, 54.149502, 51.804268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.593105, 54.345821, 51.692631>,  <49.728470, 54.673019, 51.506573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.593105, 54.345821, 51.692631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875521, -0.092540, 0.474235,
		-0.344876, 0.567736, 0.747487,
		-0.338413, -0.817993, 0.465150,
		49.491581, 54.100422, 51.832176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.664433, 54.739231, 52.297810>,  <49.728470, 54.673019, 51.506573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.664433, 54.739231, 52.297810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.742714, 54.372395, 52.158878>,  <49.789680, 54.152290, 52.075520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.742714, 54.372395, 52.158878>,  <49.664433, 54.739231, 52.297810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.742714, 54.372395, 52.158878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867210, -0.003524, 0.497931,
		-0.457873, -0.398655, 0.794624,
		0.195702, -0.917094, -0.347331,
		49.801426, 54.097267, 52.054680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.991772, 55.301929, 52.902954>,  <49.664433, 54.739231, 52.297810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.991772, 55.301929, 52.902954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.257156, 55.520367, 53.107540>,  <50.416386, 55.651428, 53.230293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.257156, 55.520367, 53.107540>,  <49.991772, 55.301929, 52.902954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.257156, 55.520367, 53.107540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730964, -0.619000, -0.287283,
		0.159714, 0.564465, -0.809858,
		0.663463, 0.546094, 0.511467,
		50.456196, 55.684196, 53.260979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.429001, 55.579380, 52.453423>,  <49.991772, 55.301929, 52.902954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.429001, 55.579380, 52.453423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.632118, 55.464321, 52.778236>,  <50.753990, 55.395287, 52.973125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.632118, 55.464321, 52.778236>,  <50.429001, 55.579380, 52.453423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.632118, 55.464321, 52.778236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336922, -0.801219, -0.494501,
		0.792861, 0.524698, -0.309940,
		0.507793, -0.287645, 0.812038,
		50.784454, 55.378029, 53.021847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.084263, 55.581253, 51.917377>,  <50.429001, 55.579380, 52.453423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.084263, 55.581253, 51.917377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.381290, 55.838722, 51.991432>,  <51.559505, 55.993202, 52.035866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.381290, 55.838722, 51.991432>,  <51.084263, 55.581253, 51.917377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.381290, 55.838722, 51.991432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034029, -0.239805, 0.970224,
		0.668906, -0.726758, -0.156168,
		0.742568, 0.643674, 0.185138,
		51.604061, 56.031826, 52.046974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.625759, 55.248344, 52.354958>,  <51.084263, 55.581253, 51.917377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.625759, 55.248344, 52.354958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.616806, 55.643055, 52.419178>,  <51.611435, 55.879879, 52.457710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.616806, 55.643055, 52.419178>,  <51.625759, 55.248344, 52.354958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.616806, 55.643055, 52.419178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109978, -0.162045, 0.980636,
		0.993682, 0.004291, 0.112150,
		-0.022382, 0.986774, 0.160549,
		51.610092, 55.939087, 52.467342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.830013, 55.183491, 52.985943>,  <51.625759, 55.248344, 52.354958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.830013, 55.183491, 52.985943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.689877, 55.554222, 52.931908>,  <51.605793, 55.776661, 52.899487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.689877, 55.554222, 52.931908>,  <51.830013, 55.183491, 52.985943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.689877, 55.554222, 52.931908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083083, 0.112906, 0.990126,
		0.932928, 0.358110, 0.037448,
		-0.350346, 0.926828, -0.135086,
		51.584774, 55.832272, 52.891380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.308208, 55.856331, 53.113064>,  <51.830013, 55.183491, 52.985943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.308208, 55.856331, 53.113064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.922794, 55.907909, 53.206844>,  <51.691544, 55.938858, 53.263111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.922794, 55.907909, 53.206844>,  <52.308208, 55.856331, 53.113064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.922794, 55.907909, 53.206844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256380, 0.194193, 0.946868,
		0.076571, 0.972451, -0.220173,
		-0.963538, 0.128951, 0.234448,
		51.633732, 55.946594, 53.277180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.219028, 56.451859, 53.468113>,  <52.308208, 55.856331, 53.113064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.219028, 56.451859, 53.468113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.948406, 56.193893, 53.610306>,  <51.786034, 56.039116, 53.695621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.948406, 56.193893, 53.610306>,  <52.219028, 56.451859, 53.468113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.948406, 56.193893, 53.610306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266054, 0.236063, 0.934606,
		-0.686653, 0.726888, 0.011872,
		-0.676552, -0.644909, 0.355485,
		51.745441, 56.000420, 53.716953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.702347, 56.785263, 53.813778>,  <52.219028, 56.451859, 53.468113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.702347, 56.785263, 53.813778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.766422, 56.414268, 53.948898>,  <51.804867, 56.191673, 54.029972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.766422, 56.414268, 53.948898>,  <51.702347, 56.785263, 53.813778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.766422, 56.414268, 53.948898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329164, 0.372826, 0.867556,
		-0.930586, -0.027785, 0.365019,
		0.160193, -0.927485, 0.337800,
		51.814480, 56.136024, 54.050240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.360970, 56.709839, 54.504478>,  <51.702347, 56.785263, 53.813778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.360970, 56.709839, 54.504478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.695812, 56.506088, 54.424690>,  <51.896717, 56.383839, 54.376816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.695812, 56.506088, 54.424690>,  <51.360970, 56.709839, 54.504478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.695812, 56.506088, 54.424690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367679, 0.253909, 0.894619,
		-0.405049, -0.822233, 0.399835,
		0.837107, -0.509375, -0.199473,
		51.946945, 56.353275, 54.364849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.624710, 56.390747, 55.091454>,  <51.360970, 56.709839, 54.504478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.624710, 56.390747, 55.091454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.917664, 56.476902, 54.833084>,  <52.093437, 56.528595, 54.678062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.917664, 56.476902, 54.833084>,  <51.624710, 56.390747, 55.091454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.917664, 56.476902, 54.833084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628843, 0.149797, 0.762966,
		0.261093, -0.964970, -0.025737,
		0.732384, 0.215390, -0.645926,
		52.137379, 56.541519, 54.639305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.133709, 55.924980, 55.071613>,  <51.624710, 56.390747, 55.091454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.133709, 55.924980, 55.071613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.267750, 56.295383, 55.002083>,  <52.348175, 56.517624, 54.960365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.267750, 56.295383, 55.002083>,  <52.133709, 55.924980, 55.071613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.267750, 56.295383, 55.002083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620693, -0.078171, 0.780147,
		0.708834, -0.369323, -0.600962,
		0.335104, 0.926008, -0.173825,
		52.368282, 56.573185, 54.949936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.805225, 55.905499, 55.104454>,  <52.133709, 55.924980, 55.071613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.805225, 55.905499, 55.104454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.722229, 56.293259, 55.156937>,  <52.672432, 56.525913, 55.188427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.722229, 56.293259, 55.156937>,  <52.805225, 55.905499, 55.104454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.722229, 56.293259, 55.156937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772146, 0.079949, 0.630396,
		0.600615, 0.232109, -0.765106,
		-0.207490, 0.969399, 0.131204,
		52.659981, 56.584080, 55.196297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.163609, 56.380875, 54.745941>,  <52.805225, 55.905499, 55.104454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.163609, 56.380875, 54.745941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.096718, 56.538094, 55.107613>,  <53.056583, 56.632427, 55.324615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.096718, 56.538094, 55.107613>,  <53.163609, 56.380875, 54.745941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.096718, 56.538094, 55.107613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985902, 0.061206, 0.155730,
		0.005868, 0.917477, -0.397745,
		-0.167223, 0.393052, 0.904183,
		53.046551, 56.656010, 55.378868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.425308, 57.111294, 54.834366>,  <53.163609, 56.380875, 54.745941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.425308, 57.111294, 54.834366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.420563, 56.898582, 55.173088>,  <53.417717, 56.770958, 55.376320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.420563, 56.898582, 55.173088>,  <53.425308, 57.111294, 54.834366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.420563, 56.898582, 55.173088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997049, 0.057941, 0.050354,
		-0.075842, 0.844901, 0.529520,
		-0.011863, -0.531776, 0.846802,
		53.417004, 56.739048, 55.427128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.888977, 57.441116, 55.349213>,  <53.425308, 57.111294, 54.834366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.888977, 57.441116, 55.349213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.833633, 57.052574, 55.426483>,  <53.800426, 56.819447, 55.472847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.833633, 57.052574, 55.426483>,  <53.888977, 57.441116, 55.349213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.833633, 57.052574, 55.426483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982963, -0.110853, 0.146616,
		-0.121002, 0.210172, 0.970148,
		-0.138358, -0.971360, 0.193178,
		53.792126, 56.761166, 55.484436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.932941, 57.212704, 56.105347>,  <53.888977, 57.441116, 55.349213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.932941, 57.212704, 56.105347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.068626, 56.965515, 55.821640>,  <54.150036, 56.817204, 55.651417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.068626, 56.965515, 55.821640>,  <53.932941, 57.212704, 56.105347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.068626, 56.965515, 55.821640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921128, 0.065151, 0.383770,
		-0.190947, -0.783500, 0.591326,
		0.339209, -0.617967, -0.709263,
		54.170387, 56.780125, 55.608860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.353634, 56.645496, 56.340649>,  <53.932941, 57.212704, 56.105347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.353634, 56.645496, 56.340649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.460823, 56.775646, 55.977921>,  <54.525135, 56.853737, 55.760284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.460823, 56.775646, 55.977921>,  <54.353634, 56.645496, 56.340649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.460823, 56.775646, 55.977921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925989, 0.172858, 0.335656,
		0.265965, -0.929652, -0.254972,
		0.267970, 0.325374, -0.906821,
		54.541214, 56.873257, 55.705875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.948994, 56.266876, 56.054539>,  <54.353634, 56.645496, 56.340649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.948994, 56.266876, 56.054539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.950081, 56.638699, 55.907074>,  <54.950733, 56.861794, 55.818596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.950081, 56.638699, 55.907074>,  <54.948994, 56.266876, 56.054539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.950081, 56.638699, 55.907074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930285, 0.132883, 0.341923,
		0.366826, -0.343892, -0.864394,
		0.002722, 0.929559, -0.368663,
		54.950897, 56.917568, 55.796474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.387241, 56.185631, 55.555573>,  <54.948994, 56.266876, 56.054539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.387241, 56.185631, 55.555573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.378677, 56.542374, 55.736298>,  <55.373539, 56.756420, 55.844734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.378677, 56.542374, 55.736298>,  <55.387241, 56.185631, 55.555573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.378677, 56.542374, 55.736298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955424, -0.114853, 0.271982,
		0.294461, 0.437498, -0.849640,
		-0.021408, 0.891854, 0.451816,
		55.372253, 56.809929, 55.871841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.065903, 56.544796, 55.384850>,  <55.387241, 56.185631, 55.555573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.065903, 56.544796, 55.384850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.920273, 56.707970, 55.719765>,  <55.832897, 56.805874, 55.920712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.920273, 56.707970, 55.719765>,  <56.065903, 56.544796, 55.384850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.920273, 56.707970, 55.719765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784072, -0.350954, 0.511921,
		0.502676, 0.842867, -0.192074,
		-0.364072, 0.407930, 0.837284,
		55.811050, 56.830349, 55.970951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.469856, 57.053642, 55.816879>,  <56.065903, 56.544796, 55.384850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.469856, 57.053642, 55.816879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.253151, 56.820194, 56.058830>,  <56.123127, 56.680126, 56.204002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.253151, 56.820194, 56.058830>,  <56.469856, 57.053642, 55.816879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.253151, 56.820194, 56.058830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834059, -0.284151, 0.472867,
		-0.104095, 0.760690, 0.640714,
		-0.541765, -0.583616, 0.604882,
		56.090622, 56.645111, 56.240295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.493801, 57.288639, 56.502125>,  <56.469856, 57.053642, 55.816879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.493801, 57.288639, 56.502125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.449715, 56.893921, 56.454651>,  <56.423264, 56.657089, 56.426167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.449715, 56.893921, 56.454651>,  <56.493801, 57.288639, 56.502125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.449715, 56.893921, 56.454651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875006, -0.152973, 0.459309,
		-0.471400, -0.053232, 0.880311,
		-0.110214, -0.986796, -0.118689,
		56.416649, 56.597881, 56.419044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.569984, 56.919292, 57.204945>,  <56.493801, 57.288639, 56.502125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.569984, 56.919292, 57.204945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.659767, 56.737576, 56.860100>,  <56.713638, 56.628548, 56.653194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.659767, 56.737576, 56.860100>,  <56.569984, 56.919292, 57.204945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.659767, 56.737576, 56.860100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947311, -0.105736, 0.302360,
		-0.228515, -0.884557, 0.406620,
		0.224460, -0.454290, -0.862113,
		56.727104, 56.601288, 56.601467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.806198, 56.241291, 57.397472>,  <56.569984, 56.919292, 57.204945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.806198, 56.241291, 57.397472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.958015, 56.423576, 57.075409>,  <57.049107, 56.532948, 56.882172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.958015, 56.423576, 57.075409>,  <56.806198, 56.241291, 57.397472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.958015, 56.423576, 57.075409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925078, -0.199587, 0.323103,
		-0.013455, -0.867461, -0.497324,
		0.379539, 0.455716, -0.805154,
		57.071877, 56.560291, 56.833862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.385059, 55.831749, 57.051311>,  <56.806198, 56.241291, 57.397472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.385059, 55.831749, 57.051311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.433372, 56.224323, 56.991714>,  <57.462360, 56.459869, 56.955956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.433372, 56.224323, 56.991714>,  <57.385059, 55.831749, 57.051311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.433372, 56.224323, 56.991714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899374, -0.044658, 0.434893,
		0.420166, -0.186526, -0.888070,
		0.120779, 0.981434, -0.148993,
		57.469604, 56.518753, 56.947018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.966515, 55.956177, 56.579483>,  <57.385059, 55.831749, 57.051311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.966515, 55.956177, 56.579483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.885590, 56.237587, 56.851990>,  <57.837036, 56.406433, 57.015495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.885590, 56.237587, 56.851990>,  <57.966515, 55.956177, 56.579483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.885590, 56.237587, 56.851990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908800, -0.124335, 0.398276,
		0.364902, 0.699709, -0.614210,
		-0.202310, 0.703526, 0.681265,
		57.824898, 56.448647, 57.056370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.408710, 56.548443, 56.428535>,  <57.966515, 55.956177, 56.579483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.408710, 56.548443, 56.428535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.317345, 56.514648, 56.816490>,  <58.262524, 56.494370, 57.049263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.317345, 56.514648, 56.816490>,  <58.408710, 56.548443, 56.428535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.317345, 56.514648, 56.816490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931209, -0.309606, 0.192339,
		0.284032, 0.947104, 0.149398,
		-0.228419, -0.084491, 0.969890,
		58.248817, 56.489300, 57.107456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.021149, 56.653572, 56.907719>,  <58.408710, 56.548443, 56.428535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.021149, 56.653572, 56.907719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.752640, 56.463020, 57.134857>,  <58.591534, 56.348690, 57.271141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.752640, 56.463020, 57.134857>,  <59.021149, 56.653572, 56.907719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.752640, 56.463020, 57.134857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739779, -0.478220, 0.473321,
		0.046075, 0.737811, 0.673433,
		-0.671271, -0.476384, 0.567851,
		58.551258, 56.320107, 57.305214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.610893, 56.378437, 57.403595>,  <59.021149, 56.653572, 56.907719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.610893, 56.378437, 57.403595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.890495, 56.661121, 57.447334>,  <60.058254, 56.830730, 57.473576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.890495, 56.661121, 57.447334>,  <59.610893, 56.378437, 57.403595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.890495, 56.661121, 57.447334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667518, -0.589943, -0.454297,
		-0.256549, 0.390544, -0.884114,
		0.699000, 0.706712, 0.109346,
		60.100197, 56.873135, 57.480137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.939022, 56.485191, 56.799263>,  <59.610893, 56.378437, 57.403595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.939022, 56.485191, 56.799263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.169693, 56.543198, 57.120865>,  <60.308094, 56.578003, 57.313824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.169693, 56.543198, 57.120865>,  <59.939022, 56.485191, 56.799263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.169693, 56.543198, 57.120865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670640, -0.646056, -0.364490,
		0.466572, 0.749388, -0.469817,
		0.576673, 0.145017, 0.804002,
		60.342693, 56.586704, 57.362064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.613289, 56.628666, 56.555256>,  <59.939022, 56.485191, 56.799263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.613289, 56.628666, 56.555256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.627495, 56.467167, 56.920929>,  <60.636021, 56.370270, 57.140331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.627495, 56.467167, 56.920929>,  <60.613289, 56.628666, 56.555256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.627495, 56.467167, 56.920929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555796, -0.752262, -0.353827,
		0.830560, 0.520665, 0.197682,
		0.035517, -0.403745, 0.914182,
		60.638149, 56.346043, 57.195183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.252884, 57.272160, 56.819279>,  <60.613289, 56.628666, 56.555256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.252884, 57.272160, 56.819279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.364532, 57.186844, 57.193787>,  <60.431522, 57.135654, 57.418491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.364532, 57.186844, 57.193787>,  <60.252884, 57.272160, 56.819279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.364532, 57.186844, 57.193787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608525, 0.793535, -0.000644,
		-0.742824, 0.569922, 0.351287,
		0.279125, -0.213288, 0.936268,
		60.448269, 57.122856, 57.474667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.235016, 57.847984, 57.278072>,  <60.252884, 57.272160, 56.819279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.235016, 57.847984, 57.278072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.550232, 57.621441, 57.374596>,  <60.739361, 57.485516, 57.432510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.550232, 57.621441, 57.374596>,  <60.235016, 57.847984, 57.278072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.550232, 57.621441, 57.374596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604996, 0.784981, -0.133357,
		-0.113896, 0.251082, 0.961241,
		0.788040, -0.566359, 0.241310,
		60.786644, 57.451534, 57.446987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.545681, 58.314407, 57.779800>,  <60.235016, 57.847984, 57.278072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.545681, 58.314407, 57.779800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.778984, 58.088737, 57.546043>,  <60.918964, 57.953335, 57.405788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.778984, 58.088737, 57.546043>,  <60.545681, 58.314407, 57.779800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.778984, 58.088737, 57.546043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467664, 0.821473, -0.326301,
		0.664156, -0.082982, 0.742974,
		0.583256, -0.564177, -0.584394,
		60.953960, 57.919483, 57.370724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.289543, 58.164341, 57.910870>,  <60.545681, 58.314407, 57.779800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.289543, 58.164341, 57.910870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.182808, 58.178085, 57.525620>,  <61.118767, 58.186333, 57.294468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.182808, 58.178085, 57.525620>,  <61.289543, 58.164341, 57.910870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.182808, 58.178085, 57.525620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352656, 0.933534, -0.064402,
		0.896901, -0.356838, -0.261218,
		-0.266837, 0.034358, -0.963129,
		61.102757, 58.188393, 57.236679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.997871, 58.339844, 57.448467>,  <61.289543, 58.164341, 57.910870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.997871, 58.339844, 57.448467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.915565, 58.009132, 57.239052>,  <61.866180, 57.810703, 57.113403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.915565, 58.009132, 57.239052>,  <61.997871, 58.339844, 57.448467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.915565, 58.009132, 57.239052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678653, 0.506000, -0.532347,
		0.705045, 0.245761, -0.665217,
		-0.205769, -0.826780, -0.523539,
		61.853836, 57.761097, 57.081989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.699947, 57.922237, 57.425579>,  <61.997871, 58.339844, 57.448467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.699947, 57.922237, 57.425579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.570908, 58.250191, 57.614777>,  <62.493484, 58.446960, 57.728294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.570908, 58.250191, 57.614777>,  <62.699947, 57.922237, 57.425579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.570908, 58.250191, 57.614777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706328, -0.124134, 0.696916,
		0.630102, 0.558917, -0.539058,
		-0.322603, 0.819880, 0.472995,
		62.474129, 58.496155, 57.756676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.275795, 58.270248, 57.737652>,  <62.699947, 57.922237, 57.425579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.275795, 58.270248, 57.737652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.968765, 58.424294, 57.942596>,  <62.784546, 58.516720, 58.065563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.968765, 58.424294, 57.942596>,  <63.275795, 58.270248, 57.737652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.968765, 58.424294, 57.942596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600078, 0.150875, 0.785584,
		0.225239, 0.910452, -0.346907,
		-0.767576, 0.385115, 0.512360,
		62.738491, 58.539829, 58.096306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.414005, 58.966206, 57.934319>,  <63.275795, 58.270248, 57.737652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.414005, 58.966206, 57.934319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.171623, 58.794327, 58.202103>,  <63.026192, 58.691200, 58.362774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.171623, 58.794327, 58.202103>,  <63.414005, 58.966206, 57.934319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.171623, 58.794327, 58.202103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648904, 0.219795, 0.728432,
		-0.460148, 0.875815, 0.145645,
		-0.605960, -0.429696, 0.669458,
		62.989834, 58.665417, 58.402939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.253548, 59.342033, 58.482697>,  <63.414005, 58.966206, 57.934319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.253548, 59.342033, 58.482697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.299362, 58.955627, 58.575386>,  <63.326851, 58.723785, 58.631001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.299362, 58.955627, 58.575386>,  <63.253548, 59.342033, 58.482697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.299362, 58.955627, 58.575386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715900, 0.241982, 0.654928,
		-0.688744, 0.090880, 0.719286,
		0.114535, -0.966015, 0.231725,
		63.333721, 58.665821, 58.644905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.224594, 59.268600, 59.197823>,  <63.253548, 59.342033, 58.482697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.224594, 59.268600, 59.197823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.411911, 58.952732, 59.039268>,  <63.524300, 58.763210, 58.944134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.411911, 58.952732, 59.039268>,  <63.224594, 59.268600, 59.197823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.411911, 58.952732, 59.039268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739442, 0.104680, 0.665032,
		-0.483663, -0.604534, 0.632937,
		0.468290, -0.789671, -0.396387,
		63.552399, 58.715832, 58.920353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.267563, 58.694462, 59.688492>,  <63.224594, 59.268600, 59.197823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.267563, 58.694462, 59.688492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.591919, 58.685497, 59.454582>,  <63.786533, 58.680119, 59.314236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.591919, 58.685497, 59.454582>,  <63.267563, 58.694462, 59.688492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.591919, 58.685497, 59.454582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585187, 0.037953, 0.810010,
		0.004044, -0.999028, 0.043888,
		0.810889, -0.022407, -0.584772,
		63.835186, 58.678772, 59.279152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.835312, 58.202980, 59.960869>,  <63.267563, 58.694462, 59.688492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.835312, 58.202980, 59.960869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.000191, 58.497559, 59.746300>,  <64.099121, 58.674305, 59.617558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.000191, 58.497559, 59.746300>,  <63.835312, 58.202980, 59.960869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.000191, 58.497559, 59.746300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699667, 0.121254, 0.704105,
		0.583577, -0.665543, -0.465285,
		0.412194, 0.736444, -0.536419,
		64.123848, 58.718491, 59.585373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.590233, 58.095097, 59.775978>,  <63.835312, 58.202980, 59.960869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.590233, 58.095097, 59.775978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.505348, 58.485382, 59.797714>,  <64.454414, 58.719551, 59.810757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.505348, 58.485382, 59.797714>,  <64.590233, 58.095097, 59.775978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.505348, 58.485382, 59.797714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569828, 0.078383, 0.818017,
		0.793889, 0.204561, -0.572621,
		-0.212219, 0.975710, 0.054337,
		64.441681, 58.778095, 59.814014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.215324, 58.610508, 59.621677>,  <64.590233, 58.095097, 59.775978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.215324, 58.610508, 59.621677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.954948, 58.761574, 59.885086>,  <64.798721, 58.852215, 60.043129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.954948, 58.761574, 59.885086>,  <65.215324, 58.610508, 59.621677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.954948, 58.761574, 59.885086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755638, 0.239238, 0.609735,
		0.072733, 0.894502, -0.441107,
		-0.650938, 0.377665, 0.658520,
		64.759666, 58.874874, 60.082642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.383186, 59.294899, 59.971977>,  <65.215324, 58.610508, 59.621677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.383186, 59.294899, 59.971977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.146721, 59.088028, 60.219543>,  <65.004845, 58.963905, 60.368084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.146721, 59.088028, 60.219543>,  <65.383186, 59.294899, 59.971977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.146721, 59.088028, 60.219543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595054, 0.238345, 0.767530,
		-0.544466, 0.822020, 0.166851,
		-0.591157, -0.517179, 0.618917,
		64.969376, 58.932873, 60.405220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.108528, 59.562527, 59.664127>,  <65.383186, 59.294899, 59.971977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.108528, 59.562527, 59.664127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.732315, 59.536552, 59.530746>,  <65.506592, 59.520969, 59.450718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.732315, 59.536552, 59.530746>,  <66.108528, 59.562527, 59.664127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.732315, 59.536552, 59.530746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333674, -0.360877, -0.870878,
		-0.063783, -0.930350, 0.361083,
		-0.940528, -0.064936, -0.333451,
		65.450157, 59.517071, 59.430710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.631264, 59.097401, 59.618813>,  <66.108528, 59.562527, 59.664127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.631264, 59.097401, 59.618813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.950012, 59.334961, 59.574501>,  <67.141258, 59.477497, 59.547916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.950012, 59.334961, 59.574501>,  <66.631264, 59.097401, 59.618813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.950012, 59.334961, 59.574501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576452, -0.692572, 0.433644,
		0.180823, -0.409416, -0.894249,
		0.796873, 0.593904, -0.110776,
		67.189072, 59.513134, 59.541267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.159714, 58.839439, 59.278316>,  <66.631264, 59.097401, 59.618813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.159714, 58.839439, 59.278316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.268120, 59.094116, 59.567085>,  <67.333160, 59.246922, 59.740345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.268120, 59.094116, 59.567085>,  <67.159714, 58.839439, 59.278316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.268120, 59.094116, 59.567085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538425, -0.721959, 0.434597,
		0.797902, 0.270916, -0.538476,
		0.271018, 0.636695, 0.721921,
		67.349426, 59.285126, 59.783661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.888809, 58.918427, 59.300220>,  <67.159714, 58.839439, 59.278316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.888809, 58.918427, 59.300220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.749275, 58.991928, 59.667816>,  <67.665558, 59.036030, 59.888374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.749275, 58.991928, 59.667816>,  <67.888809, 58.918427, 59.300220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.749275, 58.991928, 59.667816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576326, -0.731194, 0.364970,
		0.739029, 0.656953, 0.149162,
		-0.348835, 0.183758, 0.918993,
		67.644623, 59.047054, 59.943516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.416611, 59.098900, 59.805969>,  <67.888809, 58.918427, 59.300220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.416611, 59.098900, 59.805969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.103806, 58.907524, 59.965744>,  <67.916122, 58.792698, 60.061607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.103806, 58.907524, 59.965744>,  <68.416611, 59.098900, 59.805969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.103806, 58.907524, 59.965744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585993, -0.782703, 0.209734,
		0.212296, 0.398083, 0.892447,
		-0.782012, -0.478441, 0.399438,
		67.869202, 58.763992, 60.085575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.186790, 58.753948, 59.765217>,  <68.416611, 59.098900, 59.805969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.186790, 58.753948, 59.765217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.286530, 58.482845, 60.041901>,  <69.346375, 58.320183, 60.207912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.286530, 58.482845, 60.041901>,  <69.186790, 58.753948, 59.765217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.286530, 58.482845, 60.041901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868843, -0.158896, -0.468896,
		0.427710, 0.717907, 0.549248,
		0.249351, -0.677762, 0.691710,
		69.361336, 58.279518, 60.249413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.882576, 58.974987, 60.196552>,  <69.186790, 58.753948, 59.765217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.882576, 58.974987, 60.196552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797630, 58.596977, 60.097092>,  <69.746666, 58.370171, 60.037415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797630, 58.596977, 60.097092>,  <69.882576, 58.974987, 60.196552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.797630, 58.596977, 60.097092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872216, -0.068581, -0.484290,
		0.440614, -0.319721, 0.838831,
		-0.212366, -0.945027, -0.248648,
		69.733917, 58.313469, 60.022499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.440041, 58.540848, 60.432083>,  <69.882576, 58.974987, 60.196552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.440041, 58.540848, 60.432083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.262123, 58.410973, 60.098198>,  <70.155373, 58.333046, 59.897869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.262123, 58.410973, 60.098198>,  <70.440041, 58.540848, 60.432083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.262123, 58.410973, 60.098198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814627, 0.240656, -0.527701,
		0.372216, -0.914692, 0.157459,
		-0.444791, -0.324689, -0.834709,
		70.128685, 58.313564, 59.847786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.188644, 57.870644, 60.660179>,  <70.440041, 58.540848, 60.432083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.188644, 57.870644, 60.660179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.496254, 57.666615, 60.506081>,  <70.680824, 57.544197, 60.413620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.496254, 57.666615, 60.506081>,  <70.188644, 57.870644, 60.660179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.496254, 57.666615, 60.506081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625668, 0.477254, 0.617064,
		-0.130888, -0.715578, 0.686160,
		0.769030, -0.510075, -0.385247,
		70.726967, 57.513592, 60.390507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.454330, 57.613293, 61.224331>,  <70.188644, 57.870644, 60.660179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.454330, 57.613293, 61.224331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.749306, 57.632359, 60.954834>,  <70.926292, 57.643799, 60.793137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.749306, 57.632359, 60.954834>,  <70.454330, 57.613293, 61.224331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.749306, 57.632359, 60.954834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620911, 0.344755, 0.703998,
		0.265833, -0.937482, 0.224636,
		0.737429, 0.047667, -0.673740,
		70.970535, 57.646660, 60.752712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.012428, 57.371376, 61.578259>,  <70.454330, 57.613293, 61.224331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.012428, 57.371376, 61.578259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.169312, 57.576275, 61.272636>,  <71.263443, 57.699215, 61.089264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.169312, 57.576275, 61.272636>,  <71.012428, 57.371376, 61.578259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.169312, 57.576275, 61.272636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805165, 0.210496, 0.554437,
		0.444839, -0.832643, -0.329886,
		0.392209, 0.512248, -0.764051,
		71.286972, 57.729950, 61.043423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.720528, 57.427559, 61.824924>,  <71.012428, 57.371376, 61.578259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.720528, 57.427559, 61.824924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.754387, 57.691666, 61.526428>,  <71.774704, 57.850132, 61.347332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.754387, 57.691666, 61.526428>,  <71.720528, 57.427559, 61.824924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.754387, 57.691666, 61.526428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831193, 0.366230, 0.418323,
		0.549503, -0.655681, -0.517812,
		0.084648, 0.660271, -0.746242,
		71.779785, 57.889748, 61.302555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.299614, 57.315895, 61.289070>,  <71.720528, 57.427559, 61.824924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.299614, 57.315895, 61.289070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.218063, 57.699284, 61.368843>,  <72.169136, 57.929317, 61.416706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.218063, 57.699284, 61.368843>,  <72.299614, 57.315895, 61.289070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.218063, 57.699284, 61.368843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968749, 0.168105, 0.182389,
		0.141288, 0.230388, -0.962787,
		-0.203870, 0.958469, 0.199437,
		72.156906, 57.986824, 61.428673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.019814, 57.432514, 60.988705>,  <72.299614, 57.315895, 61.289070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.019814, 57.432514, 60.988705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.296410, 57.579819, 60.740112>,  <73.462364, 57.668201, 60.590958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.296410, 57.579819, 60.740112>,  <73.019814, 57.432514, 60.988705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.296410, 57.579819, 60.740112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670536, 0.007126, -0.741843,
		-0.268762, 0.929696, 0.251859,
		0.691483, 0.368259, -0.621479,
		73.503853, 57.690296, 60.553669>
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
