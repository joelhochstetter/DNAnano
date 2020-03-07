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
	<1.230252, 5.437283, 2.319870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.589920, 5.423189, 2.494341>,  <1.805721, 5.414733, 2.599024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.589920, 5.423189, 2.494341>,  <1.230252, 5.437283, 2.319870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.589920, 5.423189, 2.494341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368055, -0.478264, -0.797370,
		0.236704, 0.877509, -0.417072,
		0.899170, -0.035235, 0.436178,
		1.859671, 5.412619, 2.625194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.827946, 5.713270, 1.807095>,  <1.230252, 5.437283, 2.319870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.827946, 5.713270, 1.807095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.963646, 5.472849, 2.096548>,  <2.045066, 5.328596, 2.270220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.963646, 5.472849, 2.096548>,  <1.827946, 5.713270, 1.807095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.963646, 5.472849, 2.096548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568413, -0.481960, -0.666799,
		0.749544, 0.637534, 0.178141,
		0.339250, -0.601053, 0.723633,
		2.065421, 5.292533, 2.313638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.532623, 5.579553, 1.637741>,  <1.827946, 5.713270, 1.807095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.532623, 5.579553, 1.637741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.432007, 5.293859, 1.898998>,  <2.371637, 5.122443, 2.055753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.432007, 5.293859, 1.898998>,  <2.532623, 5.579553, 1.637741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.432007, 5.293859, 1.898998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558267, -0.658334, -0.504910,
		0.790611, 0.237623, 0.564331,
		-0.251540, -0.714235, 0.653143,
		2.356545, 5.079589, 2.094941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.130791, 5.202063, 1.808667>,  <2.532623, 5.579553, 1.637741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.130791, 5.202063, 1.808667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.820366, 4.950798, 1.831078>,  <2.634111, 4.800039, 1.844524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.820366, 4.950798, 1.831078>,  <3.130791, 5.202063, 1.808667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.820366, 4.950798, 1.831078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502387, -0.669476, -0.547184,
		0.381229, -0.396501, 0.835136,
		-0.776062, -0.628163, 0.056026,
		2.587547, 4.762349, 1.847885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.488380, 4.622143, 1.720196>,  <3.130791, 5.202063, 1.808667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.488380, 4.622143, 1.720196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.102448, 4.552185, 1.641701>,  <2.870888, 4.510210, 1.594604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.102448, 4.552185, 1.641701>,  <3.488380, 4.622143, 1.720196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.102448, 4.552185, 1.641701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261808, -0.706259, -0.657766,
		-0.023555, -0.686010, 0.727211,
		-0.964832, -0.174896, -0.196238,
		2.812998, 4.499716, 1.582829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.432700, 3.876686, 1.674447>,  <3.488380, 4.622143, 1.720196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.432700, 3.876686, 1.674447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.111946, 4.014790, 1.479397>,  <2.919494, 4.097651, 1.362367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.111946, 4.014790, 1.479397>,  <3.432700, 3.876686, 1.674447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.111946, 4.014790, 1.479397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125928, -0.700142, -0.702811,
		-0.584056, -0.624980, 0.517956,
		-0.801885, 0.345256, -0.487625,
		2.871381, 4.118367, 1.333109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.037166, 3.298050, 1.493914>,  <3.432700, 3.876686, 1.674447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.037166, 3.298050, 1.493914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922897, 3.585730, 1.240570>,  <2.854336, 3.758337, 1.088563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922897, 3.585730, 1.240570>,  <3.037166, 3.298050, 1.493914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.922897, 3.585730, 1.240570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036173, -0.652339, -0.757064,
		-0.957645, -0.239181, 0.160338,
		-0.285670, 0.719199, -0.633361,
		2.837196, 3.801489, 1.050562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.617295, 2.961711, 0.964964>,  <3.037166, 3.298050, 1.493914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.617295, 2.961711, 0.964964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.753815, 3.302404, 0.805935>,  <2.835727, 3.506820, 0.710517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.753815, 3.302404, 0.805935>,  <2.617295, 2.961711, 0.964964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.753815, 3.302404, 0.805935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233398, -0.486517, -0.841918,
		-0.910516, 0.194554, -0.364841,
		0.341300, 0.851733, -0.397574,
		2.856205, 3.557924, 0.686663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.761434, 2.883503, -0.200091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.428940, 3.039738, -0.358326>,  <3.229444, 3.133479, -0.453267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.428940, 3.039738, -0.358326>,  <3.761434, 2.883503, -0.200091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.428940, 3.039738, -0.358326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023986, 0.685730, 0.727461,
		0.555404, 0.614179, -0.560634,
		-0.831235, 0.390587, -0.395588,
		3.179569, 3.156914, -0.477002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.802554, 3.693159, -0.253792>,  <3.761434, 2.883503, -0.200091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.802554, 3.693159, -0.253792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.421066, 3.573307, -0.243641>,  <3.192174, 3.501396, -0.237550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.421066, 3.573307, -0.243641>,  <3.802554, 3.693159, -0.253792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.421066, 3.573307, -0.243641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206551, 0.714107, 0.668871,
		-0.218536, 0.632672, -0.742945,
		-0.953718, -0.299629, 0.025379,
		3.134951, 3.483418, -0.236027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.452200, 4.312573, -0.140171>,  <3.802554, 3.693159, -0.253792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.452200, 4.312573, -0.140171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.203995, 4.028580, -0.006973>,  <3.055072, 3.858183, 0.072945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.203995, 4.028580, -0.006973>,  <3.452200, 4.312573, -0.140171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.203995, 4.028580, -0.006973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215420, 0.562621, 0.798155,
		-0.754027, 0.423533, -0.502059,
		-0.620513, -0.709985, 0.332994,
		3.017841, 3.815584, 0.092925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.972308, 4.661308, 0.126277>,  <3.452200, 4.312573, -0.140171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.972308, 4.661308, 0.126277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.924728, 4.305370, 0.302471>,  <2.896181, 4.091808, 0.408188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.924728, 4.305370, 0.302471>,  <2.972308, 4.661308, 0.126277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.924728, 4.305370, 0.302471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389744, 0.449874, 0.803563,
		-0.913209, -0.076094, -0.400323,
		-0.118948, -0.889845, 0.440486,
		2.889044, 4.038417, 0.434617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.225962, 4.606285, 0.207197>,  <2.972308, 4.661308, 0.126277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.225962, 4.606285, 0.207197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.424194, 4.382420, 0.472881>,  <2.543134, 4.248100, 0.632292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.424194, 4.382420, 0.472881>,  <2.225962, 4.606285, 0.207197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.424194, 4.382420, 0.472881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610027, 0.320081, 0.724855,
		-0.618276, -0.764411, -0.182784,
		0.495582, -0.559664, 0.664210,
		2.572869, 4.214520, 0.672144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.733285, 4.345830, 0.705843>,  <2.225962, 4.606285, 0.207197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.733285, 4.345830, 0.705843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.086258, 4.324776, 0.892838>,  <2.298042, 4.312143, 1.005034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.086258, 4.324776, 0.892838>,  <1.733285, 4.345830, 0.705843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.086258, 4.324776, 0.892838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444346, 0.233100, 0.864998,
		-0.154501, -0.971027, 0.182306,
		0.882432, -0.052636, 0.467486,
		2.350988, 4.308985, 1.033083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.618110, 4.148460, 1.305460>,  <1.733285, 4.345830, 0.705843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.618110, 4.148460, 1.305460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.986069, 4.276535, 1.396030>,  <2.206844, 4.353380, 1.450372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.986069, 4.276535, 1.396030>,  <1.618110, 4.148460, 1.305460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.986069, 4.276535, 1.396030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300205, 0.203464, 0.931923,
		0.252324, -0.925246, 0.283288,
		0.919896, 0.320191, 0.226424,
		2.262038, 4.372591, 1.463958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.656201, 3.863705, 1.968066>,  <1.618110, 4.148460, 1.305460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.656201, 3.863705, 1.968066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.928131, 4.150372, 1.905807>,  <2.091289, 4.322371, 1.868452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.928131, 4.150372, 1.905807>,  <1.656201, 3.863705, 1.968066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.928131, 4.150372, 1.905807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074122, 0.278292, 0.957632,
		0.729619, -0.639485, 0.242310,
		0.679825, 0.716667, -0.155647,
		2.132079, 4.365372, 1.859113>
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
