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
	<35.489254, 53.197186, 49.906467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664188, 53.004089, 49.602966>,  <35.769150, 52.888233, 49.420868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664188, 53.004089, 49.602966>,  <35.489254, 53.197186, 49.906467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664188, 53.004089, 49.602966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884855, 0.381599, 0.267234,
		0.160534, -0.788254, 0.594041,
		0.437333, -0.482741, -0.758750,
		35.795387, 52.859268, 49.375340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091991, 52.879730, 50.172779>,  <35.489254, 53.197186, 49.906467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091991, 52.879730, 50.172779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141026, 52.992641, 49.792191>,  <36.170448, 53.060387, 49.563839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141026, 52.992641, 49.792191>,  <36.091991, 52.879730, 50.172779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141026, 52.992641, 49.792191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868351, 0.433708, 0.240550,
		0.480561, -0.855698, -0.191945,
		0.122590, 0.282275, -0.951469,
		36.177803, 53.077324, 49.506748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811180, 52.764179, 49.878677>,  <36.091991, 52.879730, 50.172779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811180, 52.764179, 49.878677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632347, 53.075027, 49.701500>,  <36.525047, 53.261536, 49.595192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632347, 53.075027, 49.701500>,  <36.811180, 52.764179, 49.878677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632347, 53.075027, 49.701500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809352, 0.562299, 0.169612,
		0.380875, -0.282666, -0.880360,
		-0.447083, 0.777122, -0.442942,
		36.498222, 53.308163, 49.568619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357643, 53.115265, 49.511154>,  <36.811180, 52.764179, 49.878677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357643, 53.115265, 49.511154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063725, 53.373268, 49.595104>,  <36.887375, 53.528069, 49.645473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063725, 53.373268, 49.595104>,  <37.357643, 53.115265, 49.511154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063725, 53.373268, 49.595104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675797, 0.669665, 0.307974,
		0.058102, 0.368127, -0.927958,
		-0.734794, 0.645005, 0.209871,
		36.843285, 53.566769, 49.658066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342163, 53.812614, 49.118229>,  <37.357643, 53.115265, 49.511154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342163, 53.812614, 49.118229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227917, 53.862335, 49.498329>,  <37.159367, 53.892170, 49.726387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227917, 53.862335, 49.498329>,  <37.342163, 53.812614, 49.118229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227917, 53.862335, 49.498329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858388, 0.474084, 0.195993,
		-0.426134, 0.871661, -0.242110,
		-0.285620, 0.124305, 0.950247,
		37.142231, 53.899628, 49.783401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990173, 53.436092, 49.094250>,  <37.342163, 53.812614, 49.118229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990173, 53.436092, 49.094250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926044, 53.738194, 49.348457>,  <37.887566, 53.919456, 49.500980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926044, 53.738194, 49.348457>,  <37.990173, 53.436092, 49.094250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926044, 53.738194, 49.348457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852858, 0.430129, -0.296010,
		-0.496918, 0.494550, -0.713086,
		-0.160327, 0.755254, 0.635520,
		37.877945, 53.964771, 49.539112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892529, 54.032082, 48.693024>,  <37.990173, 53.436092, 49.094250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892529, 54.032082, 48.693024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065445, 54.127712, 49.040810>,  <38.169193, 54.185093, 49.249481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065445, 54.127712, 49.040810>,  <37.892529, 54.032082, 48.693024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065445, 54.127712, 49.040810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682842, 0.542954, -0.488803,
		-0.588941, 0.805011, 0.071461,
		0.432292, 0.239080, 0.869462,
		38.195133, 54.199436, 49.301647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023304, 54.760857, 48.647625>,  <37.892529, 54.032082, 48.693024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023304, 54.760857, 48.647625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248077, 54.598778, 48.936081>,  <38.382942, 54.501530, 49.109154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248077, 54.598778, 48.936081>,  <38.023304, 54.760857, 48.647625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248077, 54.598778, 48.936081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797345, 0.497367, -0.341858,
		-0.220154, 0.767101, 0.602568,
		0.561937, -0.405193, 0.721141,
		38.416660, 54.477219, 49.152424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394962, 55.313057, 48.878063>,  <38.023304, 54.760857, 48.647625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394962, 55.313057, 48.878063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614464, 54.987118, 48.952789>,  <38.746166, 54.791553, 48.997623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614464, 54.987118, 48.952789>,  <38.394962, 55.313057, 48.878063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614464, 54.987118, 48.952789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750598, 0.381862, -0.539244,
		0.368063, 0.436133, 0.821169,
		0.548755, -0.814843, 0.186812,
		38.779091, 54.742664, 49.008831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202618, 55.580090, 48.894810>,  <38.394962, 55.313057, 48.878063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202618, 55.580090, 48.894810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144386, 55.198547, 48.789764>,  <39.109447, 54.969624, 48.726738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144386, 55.198547, 48.789764>,  <39.202618, 55.580090, 48.894810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144386, 55.198547, 48.789764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682306, 0.095421, -0.724813,
		0.716426, -0.284697, 0.636931,
		-0.145575, -0.953857, -0.262612,
		39.100712, 54.912392, 48.710979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816540, 55.170040, 48.972397>,  <39.202618, 55.580090, 48.894810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816540, 55.170040, 48.972397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578014, 55.033058, 48.681984>,  <39.434898, 54.950867, 48.507736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578014, 55.033058, 48.681984>,  <39.816540, 55.170040, 48.972397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578014, 55.033058, 48.681984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757400, 0.059663, -0.650220,
		0.265990, -0.937637, 0.223799,
		-0.596318, -0.342457, -0.726036,
		39.399120, 54.930321, 48.464172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049129, 54.592831, 48.497742>,  <39.816540, 55.170040, 48.972397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049129, 54.592831, 48.497742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845215, 54.863388, 48.285099>,  <39.722866, 55.025723, 48.157513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845215, 54.863388, 48.285099>,  <40.049129, 54.592831, 48.497742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845215, 54.863388, 48.285099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682948, -0.057586, -0.728193,
		-0.523160, -0.734283, -0.432587,
		-0.509789, 0.676396, -0.531604,
		39.692280, 55.066307, 48.125618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944717, 54.383827, 47.793095>,  <40.049129, 54.592831, 48.497742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944717, 54.383827, 47.793095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951984, 54.782547, 47.824226>,  <39.956345, 55.021778, 47.842903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951984, 54.782547, 47.824226>,  <39.944717, 54.383827, 47.793095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951984, 54.782547, 47.824226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761241, 0.036675, -0.647431,
		-0.648214, 0.071007, -0.758140,
		0.018168, 0.996801, 0.077827,
		39.957436, 55.081589, 47.847576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869133, 54.665512, 47.158112>,  <39.944717, 54.383827, 47.793095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869133, 54.665512, 47.158112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064301, 54.907455, 47.409851>,  <40.181400, 55.052620, 47.560894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064301, 54.907455, 47.409851>,  <39.869133, 54.665512, 47.158112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064301, 54.907455, 47.409851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712369, 0.140747, -0.687547,
		-0.504448, 0.783796, -0.362209,
		0.487917, 0.604859, 0.629351,
		40.210674, 55.088913, 47.598656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162521, 55.209526, 46.801998>,  <39.869133, 54.665512, 47.158112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162521, 55.209526, 46.801998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379719, 55.224007, 47.137581>,  <40.510036, 55.232697, 47.338928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379719, 55.224007, 47.137581>,  <40.162521, 55.209526, 46.801998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379719, 55.224007, 47.137581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793278, 0.305580, -0.526622,
		-0.275431, 0.951478, 0.137213,
		0.542998, 0.036200, 0.838953,
		40.542618, 55.234867, 47.389267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679390, 55.565712, 46.494732>,  <40.162521, 55.209526, 46.801998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679390, 55.565712, 46.494732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811062, 55.413841, 46.840561>,  <40.890064, 55.322720, 47.048058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811062, 55.413841, 46.840561>,  <40.679390, 55.565712, 46.494732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811062, 55.413841, 46.840561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942354, 0.190343, -0.275207,
		-0.060077, 0.905327, 0.420445,
		0.329181, -0.379675, 0.864573,
		40.909817, 55.299938, 47.099934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250378, 56.029224, 46.562836>,  <40.679390, 55.565712, 46.494732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250378, 56.029224, 46.562836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289520, 55.737484, 46.833679>,  <41.313004, 55.562439, 46.996185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289520, 55.737484, 46.833679>,  <41.250378, 56.029224, 46.562836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289520, 55.737484, 46.833679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994911, 0.055280, -0.084236,
		0.024007, 0.681904, 0.731047,
		0.097853, -0.729350, 0.677107,
		41.318874, 55.518681, 47.036812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677040, 56.296352, 47.042744>,  <41.250378, 56.029224, 46.562836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677040, 56.296352, 47.042744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708874, 55.898273, 47.065514>,  <41.727974, 55.659424, 47.079174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708874, 55.898273, 47.065514>,  <41.677040, 56.296352, 47.042744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708874, 55.898273, 47.065514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985023, 0.069748, -0.157689,
		0.152962, 0.068617, 0.985847,
		0.079581, -0.995202, 0.056921,
		41.732750, 55.599712, 47.082588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268372, 56.186058, 47.422089>,  <41.677040, 56.296352, 47.042744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268372, 56.186058, 47.422089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173435, 55.900082, 47.159019>,  <42.116474, 55.728497, 47.001179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173435, 55.900082, 47.159019>,  <42.268372, 56.186058, 47.422089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173435, 55.900082, 47.159019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943618, -0.008851, -0.330918,
		0.230765, -0.699129, 0.676732,
		-0.237344, -0.714940, -0.657669,
		42.102230, 55.685600, 46.961720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657543, 55.506618, 47.613815>,  <42.268372, 56.186058, 47.422089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657543, 55.506618, 47.613815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576214, 55.523682, 47.222542>,  <42.527416, 55.533920, 46.987778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576214, 55.523682, 47.222542>,  <42.657543, 55.506618, 47.613815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576214, 55.523682, 47.222542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967845, 0.159883, -0.194201,
		0.148110, -0.986213, -0.073797,
		-0.203323, 0.042661, -0.978182,
		42.515217, 55.536480, 46.929089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026047, 55.016476, 47.181297>,  <42.657543, 55.506618, 47.613815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026047, 55.016476, 47.181297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941704, 55.345818, 46.970535>,  <42.891098, 55.543423, 46.844078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941704, 55.345818, 46.970535>,  <43.026047, 55.016476, 47.181297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941704, 55.345818, 46.970535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974021, 0.222514, -0.042081,
		0.082597, -0.522091, -0.848881,
		-0.210858, 0.823352, -0.526907,
		42.878445, 55.592823, 46.812462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242241, 54.645519, 47.713547>,  <43.026047, 55.016476, 47.181297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242241, 54.645519, 47.713547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381847, 54.449764, 47.393875>,  <43.465611, 54.332314, 47.202072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381847, 54.449764, 47.393875>,  <43.242241, 54.645519, 47.713547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381847, 54.449764, 47.393875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880463, -0.120778, 0.458473,
		-0.320893, -0.863664, 0.388732,
		0.349016, -0.489385, -0.799181,
		43.486553, 54.302948, 47.154121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611279, 54.012871, 47.854687>,  <43.242241, 54.645519, 47.713547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611279, 54.012871, 47.854687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780300, 54.150055, 47.519112>,  <43.881714, 54.232365, 47.317764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780300, 54.150055, 47.519112>,  <43.611279, 54.012871, 47.854687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780300, 54.150055, 47.519112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874230, -0.398422, 0.277456,
		-0.239096, -0.850669, -0.468183,
		0.422558, 0.342961, -0.838942,
		43.907066, 54.252945, 47.267429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052792, 53.500168, 47.333027>,  <43.611279, 54.012871, 47.854687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052792, 53.500168, 47.333027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148800, 53.880318, 47.412201>,  <44.206406, 54.108406, 47.459705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148800, 53.880318, 47.412201>,  <44.052792, 53.500168, 47.333027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148800, 53.880318, 47.412201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852512, -0.303884, 0.425298,
		0.464340, 0.066656, -0.883145,
		0.240025, 0.950374, 0.197931,
		44.220806, 54.165428, 47.471581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726589, 53.725780, 47.010639>,  <44.052792, 53.500168, 47.333027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726589, 53.725780, 47.010639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680195, 53.947220, 47.340508>,  <44.652359, 54.080082, 47.538429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680195, 53.947220, 47.340508>,  <44.726589, 53.725780, 47.010639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680195, 53.947220, 47.340508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958901, -0.154056, 0.238277,
		0.258955, 0.818411, -0.512977,
		-0.115982, 0.553597, 0.824669,
		44.645401, 54.113300, 47.587910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366718, 53.924904, 47.072113>,  <44.726589, 53.725780, 47.010639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366718, 53.924904, 47.072113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222706, 53.992241, 47.439163>,  <45.136299, 54.032642, 47.659393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222706, 53.992241, 47.439163>,  <45.366718, 53.924904, 47.072113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222706, 53.992241, 47.439163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922658, -0.081381, 0.376934,
		0.138130, 0.982364, -0.126020,
		-0.360031, 0.168339, 0.917627,
		45.114697, 54.042744, 47.714451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628174, 54.566402, 47.493950>,  <45.366718, 53.924904, 47.072113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628174, 54.566402, 47.493950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544289, 54.246841, 47.719437>,  <45.493958, 54.055103, 47.854729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544289, 54.246841, 47.719437>,  <45.628174, 54.566402, 47.493950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544289, 54.246841, 47.719437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973005, -0.113711, 0.200828,
		-0.096342, 0.590614, 0.801183,
		-0.209715, -0.798903, 0.563715,
		45.481373, 54.007172, 47.888550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116299, 54.618423, 48.134041>,  <45.628174, 54.566402, 47.493950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116299, 54.618423, 48.134041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005791, 54.238899, 48.072803>,  <45.939484, 54.011185, 48.036060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005791, 54.238899, 48.072803>,  <46.116299, 54.618423, 48.134041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005791, 54.238899, 48.072803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904550, -0.310530, 0.292166,
		-0.324749, -0.057763, 0.944035,
		-0.276274, -0.948807, -0.153094,
		45.922909, 53.954258, 48.026875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994003, 54.129486, 48.695427>,  <46.116299, 54.618423, 48.134041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994003, 54.129486, 48.695427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105122, 53.896229, 48.390068>,  <46.171791, 53.756275, 48.206852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105122, 53.896229, 48.390068>,  <45.994003, 54.129486, 48.695427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105122, 53.896229, 48.390068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840704, -0.236930, 0.486908,
		-0.464808, -0.777054, 0.424430,
		0.277794, -0.583139, -0.763400,
		46.188461, 53.721287, 48.161049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121330, 53.366535, 48.826778>,  <45.994003, 54.129486, 48.695427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121330, 53.366535, 48.826778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368866, 53.522648, 48.554096>,  <46.517387, 53.616314, 48.390488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368866, 53.522648, 48.554096>,  <46.121330, 53.366535, 48.826778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368866, 53.522648, 48.554096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782791, -0.378691, 0.493793,
		-0.065440, -0.839211, -0.539854,
		0.618834, 0.390279, -0.681708,
		46.554516, 53.639732, 48.349583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628139, 52.762478, 48.673874>,  <46.121330, 53.366535, 48.826778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628139, 52.762478, 48.673874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744934, 53.140678, 48.616219>,  <46.815010, 53.367599, 48.581627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744934, 53.140678, 48.616219>,  <46.628139, 52.762478, 48.673874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744934, 53.140678, 48.616219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954548, -0.278652, 0.105785,
		0.059856, -0.168471, -0.983888,
		0.291984, 0.945500, -0.144135,
		46.832531, 53.424328, 48.572979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.126587, 52.841953, 48.090378>,  <46.628139, 52.762478, 48.673874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.126587, 52.841953, 48.090378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125656, 53.085785, 48.407467>,  <47.125095, 53.232082, 48.597721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125656, 53.085785, 48.407467>,  <47.126587, 52.841953, 48.090378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125656, 53.085785, 48.407467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999963, -0.005122, 0.006879,
		0.008254, 0.792711, -0.609541,
		-0.002331, 0.609576, 0.792724,
		47.124958, 53.268658, 48.645283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.658592, 52.306721, 48.100578>,  <47.126587, 52.841953, 48.090378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.658592, 52.306721, 48.100578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.034180, 52.303757, 47.963005>,  <48.259533, 52.301979, 47.880463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.034180, 52.303757, 47.963005>,  <47.658592, 52.306721, 48.100578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.034180, 52.303757, 47.963005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191323, 0.842132, 0.504191,
		0.285900, -0.539220, 0.792151,
		0.938966, -0.007409, -0.343931,
		48.315868, 52.301533, 47.859825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.157749, 52.280735, 48.728760>,  <47.658592, 52.306721, 48.100578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.157749, 52.280735, 48.728760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.269470, 52.460915, 48.389565>,  <48.336502, 52.569023, 48.186047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.269470, 52.460915, 48.389565>,  <48.157749, 52.280735, 48.728760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.269470, 52.460915, 48.389565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206114, 0.834423, 0.511131,
		0.937820, -0.317544, 0.140214,
		0.279305, 0.450449, -0.847989,
		48.353260, 52.596050, 48.135166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.915058, 52.407684, 48.771427>,  <48.157749, 52.280735, 48.728760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.915058, 52.407684, 48.771427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.720474, 52.694656, 48.571968>,  <48.603725, 52.866840, 48.452293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.720474, 52.694656, 48.571968>,  <48.915058, 52.407684, 48.771427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.720474, 52.694656, 48.571968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536937, 0.695718, 0.477153,
		0.689243, -0.035627, -0.723654,
		-0.486459, 0.717431, -0.498648,
		48.574535, 52.909885, 48.422375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.490852, 52.739487, 48.517151>,  <48.915058, 52.407684, 48.771427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.490852, 52.739487, 48.517151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.158344, 52.946686, 48.597816>,  <48.958839, 53.071007, 48.646217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.158344, 52.946686, 48.597816>,  <49.490852, 52.739487, 48.517151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.158344, 52.946686, 48.597816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514613, 0.579985, 0.631498,
		0.210152, 0.628725, -0.748693,
		-0.831270, 0.517998, 0.201665,
		48.908962, 53.102085, 48.658318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.721844, 53.431774, 48.449226>,  <49.490852, 52.739487, 48.517151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.721844, 53.431774, 48.449226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.400379, 53.414032, 48.686600>,  <49.207500, 53.403385, 48.829025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.400379, 53.414032, 48.686600>,  <49.721844, 53.431774, 48.449226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.400379, 53.414032, 48.686600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465793, 0.573739, 0.673691,
		-0.370359, 0.817836, -0.440430,
		-0.803661, -0.044358, 0.593432,
		49.159283, 53.400726, 48.864628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.327293, 53.125736, 47.979347>,  <49.721844, 53.431774, 48.449226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.327293, 53.125736, 47.979347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.661510, 52.906727, 47.997654>,  <50.862041, 52.775322, 48.008636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.661510, 52.906727, 47.997654>,  <50.327293, 53.125736, 47.979347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.661510, 52.906727, 47.997654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542220, 0.835162, 0.092203,
		-0.088703, -0.052226, 0.994688,
		0.835541, -0.547519, 0.045764,
		50.912174, 52.742470, 48.011383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.660744, 53.340420, 48.667671>,  <50.327293, 53.125736, 47.979347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.660744, 53.340420, 48.667671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.900631, 53.230103, 48.367199>,  <51.044563, 53.163914, 48.186916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.900631, 53.230103, 48.367199>,  <50.660744, 53.340420, 48.667671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.900631, 53.230103, 48.367199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443988, 0.895666, 0.025629,
		0.665742, -0.348886, 0.659596,
		0.599719, -0.275790, -0.751184,
		51.080547, 53.147366, 48.141846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.409531, 53.336704, 48.933453>,  <50.660744, 53.340420, 48.667671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.409531, 53.336704, 48.933453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.342731, 53.402893, 48.544662>,  <51.302650, 53.442608, 48.311390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.342731, 53.402893, 48.544662>,  <51.409531, 53.336704, 48.933453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.342731, 53.402893, 48.544662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405838, 0.909967, 0.085187,
		0.898559, -0.380237, -0.219118,
		-0.166998, 0.165472, -0.971973,
		51.292633, 53.452534, 48.253071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.067692, 53.478329, 48.522480>,  <51.409531, 53.336704, 48.933453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.067692, 53.478329, 48.522480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.775024, 53.656139, 48.315769>,  <51.599422, 53.762825, 48.191742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.775024, 53.656139, 48.315769>,  <52.067692, 53.478329, 48.522480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.775024, 53.656139, 48.315769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462836, 0.880541, 0.102126,
		0.500438, -0.164459, -0.850008,
		-0.731672, 0.444522, -0.516775,
		51.555523, 53.789497, 48.160736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.885437, 53.865440, 49.122189>,  <52.067692, 53.478329, 48.522480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.885437, 53.865440, 49.122189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.247341, 53.903873, 48.956215>,  <52.464485, 53.926933, 48.856628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.247341, 53.903873, 48.956215>,  <51.885437, 53.865440, 49.122189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.247341, 53.903873, 48.956215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373916, 0.645663, -0.665813,
		0.203939, 0.757554, 0.620097,
		0.904763, 0.096079, -0.414938,
		52.518768, 53.932697, 48.831734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.083271, 54.633850, 48.931568>,  <51.885437, 53.865440, 49.122189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.083271, 54.633850, 48.931568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.284519, 54.377663, 48.699471>,  <52.405266, 54.223949, 48.560211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.284519, 54.377663, 48.699471>,  <52.083271, 54.633850, 48.931568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.284519, 54.377663, 48.699471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046561, 0.650342, -0.758213,
		0.862964, 0.408486, 0.297377,
		0.503116, -0.640464, -0.580241,
		52.435455, 54.185524, 48.525398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.691490, 54.951580, 48.521030>,  <52.083271, 54.633850, 48.931568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.691490, 54.951580, 48.521030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.539753, 54.656811, 48.297230>,  <52.448711, 54.479950, 48.162949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.539753, 54.656811, 48.297230>,  <52.691490, 54.951580, 48.521030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.539753, 54.656811, 48.297230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205662, 0.656731, -0.725540,
		0.902108, -0.160162, -0.400685,
		-0.379346, -0.736921, -0.559503,
		52.425949, 54.435734, 48.129379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.168125, 54.530540, 48.974915>,  <52.691490, 54.951580, 48.521030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.168125, 54.530540, 48.974915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.384953, 54.813824, 49.155849>,  <53.515049, 54.983795, 49.264408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.384953, 54.813824, 49.155849>,  <53.168125, 54.530540, 48.974915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.384953, 54.813824, 49.155849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832845, -0.381045, -0.401464,
		-0.111961, 0.594344, -0.796379,
		0.542064, 0.708209, 0.452335,
		53.547573, 55.026287, 49.291550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.574543, 54.976231, 48.469845>,  <53.168125, 54.530540, 48.974915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.574543, 54.976231, 48.469845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.757366, 54.942921, 48.824059>,  <53.867062, 54.922935, 49.036587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.757366, 54.942921, 48.824059>,  <53.574543, 54.976231, 48.469845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.757366, 54.942921, 48.824059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843732, -0.274453, -0.461294,
		0.281450, 0.957988, -0.055180,
		0.457059, -0.083274, 0.885530,
		53.894485, 54.917938, 49.089718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.168232, 55.213268, 48.336040>,  <53.574543, 54.976231, 48.469845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.168232, 55.213268, 48.336040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.226143, 54.983177, 48.658073>,  <54.260891, 54.845123, 48.851292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.226143, 54.983177, 48.658073>,  <54.168232, 55.213268, 48.336040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.226143, 54.983177, 48.658073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788516, -0.424447, -0.445069,
		0.597729, 0.699256, 0.392124,
		0.144781, -0.575227, 0.805079,
		54.269577, 54.810608, 48.899597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.793877, 55.284119, 48.654964>,  <54.168232, 55.213268, 48.336040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.793877, 55.284119, 48.654964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.679695, 54.902115, 48.687149>,  <54.611187, 54.672913, 48.706459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.679695, 54.902115, 48.687149>,  <54.793877, 55.284119, 48.654964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.679695, 54.902115, 48.687149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884246, -0.294816, -0.362205,
		0.369629, -0.032248, 0.928620,
		-0.285453, -0.955010, 0.080458,
		54.594059, 54.615612, 48.711285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.218597, 54.833141, 49.124615>,  <54.793877, 55.284119, 48.654964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.218597, 54.833141, 49.124615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.059891, 54.636772, 48.814369>,  <54.964664, 54.518951, 48.628223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.059891, 54.636772, 48.814369>,  <55.218597, 54.833141, 49.124615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.059891, 54.636772, 48.814369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917170, -0.246134, -0.313396,
		-0.037051, -0.835712, 0.547917,
		-0.396770, -0.490922, -0.775609,
		54.940861, 54.489494, 48.581688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.293224, 54.160480, 49.330700>,  <55.218597, 54.833141, 49.124615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.293224, 54.160480, 49.330700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.324982, 54.300793, 48.957466>,  <55.344036, 54.384979, 48.733524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.324982, 54.300793, 48.957466>,  <55.293224, 54.160480, 49.330700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.324982, 54.300793, 48.957466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920019, -0.386124, -0.066879,
		-0.383747, -0.853149, -0.353377,
		0.079389, 0.350778, -0.933087,
		55.348797, 54.406025, 48.677540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.308327, 53.665112, 48.770412>,  <55.293224, 54.160480, 49.330700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.308327, 53.665112, 48.770412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.536423, 53.984947, 48.695068>,  <55.673279, 54.176849, 48.649860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.536423, 53.984947, 48.695068>,  <55.308327, 53.665112, 48.770412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.536423, 53.984947, 48.695068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819643, -0.538476, 0.195525,
		0.054913, -0.265883, -0.962440,
		0.570238, 0.799594, -0.188360,
		55.707493, 54.224827, 48.638561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.974213, 53.525032, 48.266335>,  <55.308327, 53.665112, 48.770412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.974213, 53.525032, 48.266335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.051483, 53.840126, 48.500313>,  <56.097847, 54.029182, 48.640697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.051483, 53.840126, 48.500313>,  <55.974213, 53.525032, 48.266335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.051483, 53.840126, 48.500313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819372, -0.457471, 0.345470,
		0.539733, 0.412549, -0.733820,
		0.193177, 0.787733, 0.584944,
		56.109436, 54.076447, 48.675797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.638157, 53.826195, 48.079720>,  <55.974213, 53.525032, 48.266335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.638157, 53.826195, 48.079720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.542473, 53.868896, 48.465752>,  <56.485062, 53.894516, 48.697372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.542473, 53.868896, 48.465752>,  <56.638157, 53.826195, 48.079720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.542473, 53.868896, 48.465752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771472, -0.582637, 0.255668,
		0.589585, 0.805691, 0.057016,
		-0.239209, 0.106752, 0.965082,
		56.470711, 53.900921, 48.755276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.241039, 54.092686, 48.484669>,  <56.638157, 53.826195, 48.079720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.241039, 54.092686, 48.484669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.974792, 53.833946, 48.633556>,  <56.815044, 53.678703, 48.722889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.974792, 53.833946, 48.633556>,  <57.241039, 54.092686, 48.484669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.974792, 53.833946, 48.633556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740891, -0.632659, 0.225441,
		0.089664, 0.425833, 0.900348,
		-0.665614, -0.646845, 0.372223,
		56.775108, 53.639893, 48.745224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.473076, 53.819721, 49.090336>,  <57.241039, 54.092686, 48.484669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.473076, 53.819721, 49.090336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.220116, 53.539898, 48.957253>,  <57.068340, 53.372005, 48.877403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.220116, 53.539898, 48.957253>,  <57.473076, 53.819721, 49.090336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.220116, 53.539898, 48.957253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620785, -0.714573, 0.322509,
		-0.463358, -0.002588, 0.886167,
		-0.632396, -0.699556, -0.332709,
		57.030396, 53.330032, 48.857441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.067974, 53.400597, 49.651333>,  <57.473076, 53.819721, 49.090336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.067974, 53.400597, 49.651333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.120293, 53.212730, 49.302090>,  <57.151684, 53.100010, 49.092545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.120293, 53.212730, 49.302090>,  <57.067974, 53.400597, 49.651333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.120293, 53.212730, 49.302090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432960, -0.765192, 0.476472,
		-0.891874, -0.440339, 0.103262,
		0.130794, -0.469661, -0.873104,
		57.159531, 53.071831, 49.040157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.587723, 53.374989, 50.241508>,  <57.067974, 53.400597, 49.651333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.587723, 53.374989, 50.241508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.806084, 53.710121, 50.243599>,  <57.937099, 53.911201, 50.244854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.806084, 53.710121, 50.243599>,  <57.587723, 53.374989, 50.241508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.806084, 53.710121, 50.243599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028997, -0.025123, 0.999264,
		0.837346, -0.545351, -0.038009,
		0.545904, 0.837831, 0.005223,
		57.969856, 53.961472, 50.245167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.111439, 53.327602, 50.703499>,  <57.587723, 53.374989, 50.241508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.111439, 53.327602, 50.703499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.023735, 53.717617, 50.689434>,  <57.971111, 53.951626, 50.680996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.023735, 53.717617, 50.689434>,  <58.111439, 53.327602, 50.703499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.023735, 53.717617, 50.689434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078169, 0.018368, 0.996771,
		0.972530, 0.221301, 0.072190,
		-0.219260, 0.975033, -0.035162,
		57.957958, 54.010128, 50.678886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.305210, 53.695621, 51.310589>,  <58.111439, 53.327602, 50.703499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.305210, 53.695621, 51.310589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.019318, 53.937870, 51.170658>,  <57.847782, 54.083218, 51.086700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.019318, 53.937870, 51.170658>,  <58.305210, 53.695621, 51.310589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.019318, 53.937870, 51.170658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334854, 0.142815, 0.931384,
		0.614026, 0.782833, 0.100719,
		-0.714734, 0.605621, -0.349827,
		57.804897, 54.119556, 51.065708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.671925, 53.880150, 51.998993>,  <58.305210, 53.695621, 51.310589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.671925, 53.880150, 51.998993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.882881, 53.563858, 51.874668>,  <59.009457, 53.374084, 51.800072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.882881, 53.563858, 51.874668>,  <58.671925, 53.880150, 51.998993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.882881, 53.563858, 51.874668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643898, 0.133319, 0.753407,
		-0.554305, -0.597471, 0.579461,
		0.527391, -0.790731, -0.310811,
		59.041100, 53.326637, 51.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.930771, 53.241428, 52.514122>,  <58.671925, 53.880150, 51.998993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.930771, 53.241428, 52.514122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.181786, 53.294773, 52.207291>,  <59.332394, 53.326782, 52.023190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.181786, 53.294773, 52.207291>,  <58.930771, 53.241428, 52.514122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.181786, 53.294773, 52.207291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748499, 0.167912, 0.641526,
		0.214359, -0.976739, 0.005547,
		0.627535, 0.133366, -0.767081,
		59.370045, 53.334782, 51.977165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.440392, 52.661209, 52.503914>,  <58.930771, 53.241428, 52.514122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.440392, 52.661209, 52.503914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.509666, 53.039337, 52.393364>,  <59.551231, 53.266212, 52.327034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.509666, 53.039337, 52.393364>,  <59.440392, 52.661209, 52.503914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.509666, 53.039337, 52.393364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752271, 0.054156, 0.656624,
		0.635686, -0.321626, -0.701756,
		0.173183, 0.945317, -0.276376,
		59.561623, 53.322933, 52.310452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.223320, 52.759449, 52.309151>,  <59.440392, 52.661209, 52.503914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.223320, 52.759449, 52.309151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.047249, 53.083401, 52.464249>,  <59.941608, 53.277771, 52.557308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.047249, 53.083401, 52.464249>,  <60.223320, 52.759449, 52.309151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.047249, 53.083401, 52.464249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765477, 0.112739, 0.633510,
		0.469352, 0.575662, -0.669568,
		-0.440174, 0.809878, 0.387742,
		59.915195, 53.326363, 52.580570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.273224, 52.888317, 52.978645>,  <60.223320, 52.759449, 52.309151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.273224, 52.888317, 52.978645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.103424, 52.533054, 53.049049>,  <60.001545, 52.319897, 53.091293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.103424, 52.533054, 53.049049>,  <60.273224, 52.888317, 52.978645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.103424, 52.533054, 53.049049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901331, -0.432989, -0.011056,
		0.086030, 0.153950, 0.984326,
		-0.424501, -0.888155, 0.176010,
		59.976074, 52.266609, 53.101852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.644833, 52.572964, 53.521481>,  <60.273224, 52.888317, 52.978645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.644833, 52.572964, 53.521481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.459816, 52.272846, 53.332542>,  <60.348808, 52.092773, 53.219177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.459816, 52.272846, 53.332542>,  <60.644833, 52.572964, 53.521481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.459816, 52.272846, 53.332542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833621, -0.549444, 0.056454,
		-0.301885, -0.367647, 0.879603,
		-0.462537, -0.750298, -0.472347,
		60.321056, 52.047756, 53.190838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.191269, 51.949512, 53.427204>,  <60.644833, 52.572964, 53.521481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.191269, 51.949512, 53.427204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.387909, 51.951115, 53.078880>,  <61.505894, 51.952076, 52.869884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.387909, 51.951115, 53.078880>,  <61.191269, 51.949512, 53.427204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.387909, 51.951115, 53.078880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870779, 0.007626, 0.491615,
		0.008613, -0.999963, 0.000255,
		0.491598, 0.004012, -0.870813,
		61.535389, 51.952316, 52.817635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.789429, 51.708519, 53.758125>,  <61.191269, 51.949512, 53.427204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.789429, 51.708519, 53.758125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.881775, 51.819313, 53.385033>,  <61.937183, 51.885792, 53.161179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.881775, 51.819313, 53.385033>,  <61.789429, 51.708519, 53.758125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.881775, 51.819313, 53.385033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968159, 0.029982, 0.248536,
		0.096806, -0.960406, -0.261246,
		0.230863, 0.276987, -0.932727,
		61.951035, 51.902409, 53.105213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.226810, 51.166466, 53.428879>,  <61.789429, 51.708519, 53.758125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.226810, 51.166466, 53.428879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.295456, 51.512604, 53.240524>,  <62.336643, 51.720287, 53.127514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.295456, 51.512604, 53.240524>,  <62.226810, 51.166466, 53.428879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.295456, 51.512604, 53.240524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970352, -0.065901, 0.232537,
		0.170193, -0.496827, -0.850998,
		0.171612, 0.865344, -0.470881,
		62.346939, 51.772205, 53.099258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.806637, 51.232986, 53.003571>,  <62.226810, 51.166466, 53.428879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.806637, 51.232986, 53.003571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.766472, 51.605129, 53.144623>,  <62.742371, 51.828415, 53.229256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.766472, 51.605129, 53.144623>,  <62.806637, 51.232986, 53.003571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.766472, 51.605129, 53.144623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817397, -0.124930, 0.562366,
		0.567256, 0.344710, -0.747927,
		-0.100415, 0.930359, 0.352632,
		62.736347, 51.884235, 53.250412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.474464, 51.595921, 53.028881>,  <62.806637, 51.232986, 53.003571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.474464, 51.595921, 53.028881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.246246, 51.734806, 53.326584>,  <63.109318, 51.818138, 53.505207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.246246, 51.734806, 53.326584>,  <63.474464, 51.595921, 53.028881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.246246, 51.734806, 53.326584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770206, -0.088346, 0.631646,
		0.285071, 0.933614, -0.217023,
		-0.570541, 0.347217, 0.744261,
		63.075085, 51.838970, 53.549862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.649929, 52.207718, 53.326107>,  <63.474464, 51.595921, 53.028881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.649929, 52.207718, 53.326107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.497803, 51.988033, 53.623756>,  <63.406528, 51.856224, 53.802345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.497803, 51.988033, 53.623756>,  <63.649929, 52.207718, 53.326107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.497803, 51.988033, 53.623756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907947, -0.068562, 0.413438,
		-0.176047, 0.832865, 0.524731,
		-0.380315, -0.549213, 0.744128,
		63.383709, 51.823269, 53.846996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.987778, 52.299862, 54.023273>,  <63.649929, 52.207718, 53.326107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.987778, 52.299862, 54.023273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.903809, 51.908787, 54.020397>,  <63.853428, 51.674141, 54.018669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.903809, 51.908787, 54.020397>,  <63.987778, 52.299862, 54.023273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.903809, 51.908787, 54.020397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977049, -0.210042, 0.035461,
		-0.036180, 0.000416, 0.999345,
		-0.209919, -0.977692, -0.007193,
		63.840832, 51.615479, 54.018238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.302895, 52.037285, 54.598717>,  <63.987778, 52.299862, 54.023273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.302895, 52.037285, 54.598717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.254601, 51.781815, 54.294739>,  <64.225624, 51.628532, 54.112354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.254601, 51.781815, 54.294739>,  <64.302895, 52.037285, 54.598717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.254601, 51.781815, 54.294739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990375, -0.129686, -0.048349,
		-0.067675, -0.758466, 0.648190,
		-0.120732, -0.638680, -0.759942,
		64.218384, 51.590210, 54.066757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.988472, 51.991535, 54.907902>,  <64.302895, 52.037285, 54.598717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.988472, 51.991535, 54.907902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.106888, 52.371174, 54.864849>,  <65.177940, 52.598957, 54.839016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.106888, 52.371174, 54.864849>,  <64.988472, 51.991535, 54.907902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.106888, 52.371174, 54.864849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631909, -0.110099, 0.767183,
		0.716277, -0.295131, -0.632333,
		0.296038, 0.949092, -0.107635,
		65.195702, 52.655903, 54.832558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.777298, 52.144688, 54.784962>,  <64.988472, 51.991535, 54.907902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.777298, 52.144688, 54.784962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.601387, 52.459263, 54.958450>,  <65.495842, 52.648006, 55.062542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.601387, 52.459263, 54.958450>,  <65.777298, 52.144688, 54.784962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.601387, 52.459263, 54.958450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472281, -0.208250, 0.856494,
		0.763900, 0.581506, -0.279835,
		-0.439781, 0.786437, 0.433717,
		65.469452, 52.695194, 55.088566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.293419, 52.325344, 55.220596>,  <65.777298, 52.144688, 54.784962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.293419, 52.325344, 55.220596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.957085, 52.514946, 55.325142>,  <65.755287, 52.628708, 55.387867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.957085, 52.514946, 55.325142>,  <66.293419, 52.325344, 55.220596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.957085, 52.514946, 55.325142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449664, 0.342898, 0.824757,
		0.301321, 0.811010, -0.501466,
		-0.840838, 0.474007, 0.261359,
		65.704834, 52.657146, 55.403549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.463318, 53.013924, 55.371128>,  <66.293419, 52.325344, 55.220596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.463318, 53.013924, 55.371128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.136490, 52.935650, 55.588051>,  <65.940392, 52.888687, 55.718204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.136490, 52.935650, 55.588051>,  <66.463318, 53.013924, 55.371128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.136490, 52.935650, 55.588051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472881, 0.310625, 0.824558,
		-0.329806, 0.930172, -0.161269,
		-0.817075, -0.195683, 0.542307,
		65.891365, 52.876945, 55.750744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.210785, 53.631798, 55.868431>,  <66.463318, 53.013924, 55.371128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.210785, 53.631798, 55.868431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.110077, 53.263351, 55.987198>,  <66.049652, 53.042286, 56.058460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.110077, 53.263351, 55.987198>,  <66.210785, 53.631798, 55.868431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.110077, 53.263351, 55.987198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527127, 0.126779, 0.840276,
		-0.811633, 0.368073, 0.453624,
		-0.251772, -0.921113, 0.296919,
		66.034546, 52.987019, 56.076275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.943703, 53.772083, 56.585041>,  <66.210785, 53.631798, 55.868431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.943703, 53.772083, 56.585041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.096611, 53.408180, 56.520279>,  <66.188354, 53.189838, 56.481422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.096611, 53.408180, 56.520279>,  <65.943703, 53.772083, 56.585041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.096611, 53.408180, 56.520279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540924, 0.078263, 0.837422,
		-0.749177, -0.407703, 0.522027,
		0.382275, -0.909754, -0.161904,
		66.211296, 53.135254, 56.471706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.600548, 54.138508, 56.857048>,  <65.943703, 53.772083, 56.585041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.600548, 54.138508, 56.857048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.850395, 54.094727, 57.166336>,  <67.000305, 54.068459, 57.351910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.850395, 54.094727, 57.166336>,  <66.600548, 54.138508, 56.857048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.850395, 54.094727, 57.166336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389735, 0.814319, 0.430106,
		-0.676726, -0.570003, 0.465981,
		0.624619, -0.109455, 0.773221,
		67.037781, 54.061890, 57.398304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.337471, 53.934216, 57.529541>,  <66.600548, 54.138508, 56.857048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.337471, 53.934216, 57.529541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.633926, 54.202415, 57.543037>,  <66.811798, 54.363335, 57.551136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.633926, 54.202415, 57.543037>,  <66.337471, 53.934216, 57.529541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.633926, 54.202415, 57.543037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648445, 0.701929, 0.294645,
		0.173877, -0.240251, 0.955011,
		0.741139, 0.670504, 0.033740,
		66.856270, 54.403568, 57.553158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.091721, 54.565361, 57.886333>,  <66.337471, 53.934216, 57.529541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.091721, 54.565361, 57.886333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.469597, 54.667408, 57.803894>,  <66.696320, 54.728638, 57.754433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.469597, 54.667408, 57.803894>,  <66.091721, 54.565361, 57.886333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.469597, 54.667408, 57.803894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202637, 0.948149, 0.244849,
		0.257874, -0.189544, 0.947404,
		0.944690, 0.255119, -0.206094,
		66.753006, 54.743942, 57.742065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.277061, 54.993187, 58.475174>,  <66.091721, 54.565361, 57.886333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.277061, 54.993187, 58.475174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.478500, 55.081036, 58.140953>,  <66.599365, 55.133747, 57.940418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.478500, 55.081036, 58.140953>,  <66.277061, 54.993187, 58.475174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.478500, 55.081036, 58.140953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328496, 0.943185, 0.049926,
		0.799048, 0.249334, 0.547133,
		0.503599, 0.219625, -0.835555,
		66.629578, 55.146923, 57.890285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.902725, 55.465195, 58.553520>,  <66.277061, 54.993187, 58.475174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.902725, 55.465195, 58.553520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.729935, 55.553566, 58.203758>,  <66.626259, 55.606590, 57.993900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.729935, 55.553566, 58.203758>,  <66.902725, 55.465195, 58.553520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.729935, 55.553566, 58.203758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084182, 0.955422, 0.282988,
		0.897951, 0.195852, -0.394116,
		-0.431970, 0.220932, -0.874409,
		66.600342, 55.619846, 57.941437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.719666, 56.199451, 58.798622>,  <66.902725, 55.465195, 58.553520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.719666, 56.199451, 58.798622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.824608, 56.253819, 59.180763>,  <66.887573, 56.286438, 59.410046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.824608, 56.253819, 59.180763>,  <66.719666, 56.199451, 58.798622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.824608, 56.253819, 59.180763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863936, -0.474111, -0.169803,
		0.429862, 0.869910, -0.241816,
		0.262361, 0.135922, 0.955349,
		66.903313, 56.294594, 59.467369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.427391, 56.470196, 58.917377>,  <66.719666, 56.199451, 58.798622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.427391, 56.470196, 58.917377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.359451, 56.254829, 59.247528>,  <67.318687, 56.125610, 59.445618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.359451, 56.254829, 59.247528>,  <67.427391, 56.470196, 58.917377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.359451, 56.254829, 59.247528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895581, -0.433814, -0.098689,
		0.411198, 0.722433, 0.555884,
		-0.169855, -0.538420, 0.825381,
		67.308495, 56.093304, 59.495144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.982368, 56.554497, 59.392586>,  <67.427391, 56.470196, 58.917377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.982368, 56.554497, 59.392586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.813431, 56.204426, 59.486984>,  <67.712067, 55.994385, 59.543625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.813431, 56.204426, 59.486984>,  <67.982368, 56.554497, 59.392586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.813431, 56.204426, 59.486984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902353, -0.430625, 0.017910,
		0.085953, 0.220520, 0.971588,
		-0.422340, -0.875176, 0.236000,
		67.686729, 55.941872, 59.557785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.502518, 57.005466, 59.043568>,  <67.982368, 56.554497, 59.392586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.502518, 57.005466, 59.043568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.499870, 56.845589, 58.676918>,  <68.498283, 56.749660, 58.456928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.499870, 56.845589, 58.676918>,  <68.502518, 57.005466, 59.043568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.499870, 56.845589, 58.676918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935077, 0.327323, -0.135978,
		0.354382, 0.856215, -0.375912,
		-0.006618, -0.399695, -0.916624,
		68.497887, 56.725681, 58.401932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.829910, 57.584480, 59.411221>,  <68.502518, 57.005466, 59.043568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.829910, 57.584480, 59.411221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.992630, 57.239399, 59.291039>,  <69.090263, 57.032352, 59.218929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.992630, 57.239399, 59.291039>,  <68.829910, 57.584480, 59.411221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.992630, 57.239399, 59.291039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913439, 0.388537, 0.121116,
		0.012250, -0.323713, 0.946076,
		0.406792, -0.862699, -0.300451,
		69.114670, 56.980591, 59.200905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.324097, 57.146732, 59.935242>,  <68.829910, 57.584480, 59.411221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.324097, 57.146732, 59.935242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.414162, 57.118786, 59.546516>,  <69.468201, 57.102016, 59.313282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.414162, 57.118786, 59.546516>,  <69.324097, 57.146732, 59.935242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.414162, 57.118786, 59.546516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885964, 0.429719, 0.174381,
		0.405423, -0.900255, 0.158658,
		0.225166, -0.069867, -0.971812,
		69.481712, 57.097824, 59.254974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.097145, 56.832523, 59.821552>,  <69.324097, 57.146732, 59.935242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.097145, 56.832523, 59.821552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.994102, 57.080734, 59.525284>,  <69.932281, 57.229660, 59.347523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.994102, 57.080734, 59.525284>,  <70.097145, 56.832523, 59.821552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.994102, 57.080734, 59.525284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937822, 0.345138, -0.037017,
		0.232663, -0.704151, -0.670850,
		-0.257601, 0.620525, -0.740669,
		69.916824, 57.266891, 59.303082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.554893, 56.813873, 60.381882>,  <70.097145, 56.832523, 59.821552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.554893, 56.813873, 60.381882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.568871, 56.425259, 60.288155>,  <70.577255, 56.192089, 60.231918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.568871, 56.425259, 60.288155>,  <70.554893, 56.813873, 60.381882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.568871, 56.425259, 60.288155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213295, -0.236308, 0.947979,
		-0.976363, 0.016854, -0.215480,
		0.034942, -0.971532, -0.234318,
		70.579353, 56.133801, 60.217861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.188347, 56.784698, 59.933334>,  <70.554893, 56.813873, 60.381882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.188347, 56.784698, 59.933334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.442894, 56.559769, 59.722115>,  <71.595619, 56.424812, 59.595383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.442894, 56.559769, 59.722115>,  <71.188347, 56.784698, 59.933334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.442894, 56.559769, 59.722115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769952, 0.421268, 0.479278,
		-0.047062, -0.711564, 0.701043,
		0.636364, -0.562326, -0.528045,
		71.633804, 56.391071, 59.563702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.668449, 56.534473, 60.385750>,  <71.188347, 56.784698, 59.933334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.668449, 56.534473, 60.385750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.821800, 56.548412, 60.016579>,  <71.913811, 56.556774, 59.795074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.821800, 56.548412, 60.016579>,  <71.668449, 56.534473, 60.385750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.821800, 56.548412, 60.016579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847155, 0.384779, 0.366434,
		0.367892, -0.922351, 0.118000,
		0.383385, 0.034844, -0.922931,
		71.936813, 56.558865, 59.739700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.409508, 56.291969, 60.469437>,  <71.668449, 56.534473, 60.385750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.409508, 56.291969, 60.469437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.408096, 56.489883, 60.121834>,  <72.407249, 56.608631, 59.913273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.408096, 56.489883, 60.121834>,  <72.409508, 56.291969, 60.469437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.408096, 56.489883, 60.121834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864263, 0.438654, 0.246237,
		0.503028, -0.750181, -0.429175,
		-0.003537, 0.494784, -0.869009,
		72.407036, 56.638317, 59.861130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.089554, 56.239254, 60.066322>,  <72.409508, 56.291969, 60.469437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.089554, 56.239254, 60.066322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.904320, 56.589043, 60.008575>,  <72.793175, 56.798916, 59.973927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.904320, 56.589043, 60.008575>,  <73.089554, 56.239254, 60.066322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.904320, 56.589043, 60.008575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841561, 0.484940, 0.237927,
		0.278071, -0.011313, -0.960494,
		-0.463090, 0.874474, -0.144368,
		72.765396, 56.851383, 59.965263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.606216, 56.825199, 59.755535>,  <73.089554, 56.239254, 60.066322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.606216, 56.825199, 59.755535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.284126, 56.987061, 59.928909>,  <73.090874, 57.084175, 60.032936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.284126, 56.987061, 59.928909>,  <73.606216, 56.825199, 59.755535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.284126, 56.987061, 59.928909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588970, 0.630538, 0.505506,
		-0.068747, 0.662329, -0.746052,
		-0.805226, 0.404650, 0.433440,
		73.042557, 57.108456, 60.058941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.475029, 57.529945, 59.583340>,  <73.606216, 56.825199, 59.755535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.475029, 57.529945, 59.583340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.301498, 57.464535, 59.937752>,  <73.197380, 57.425289, 60.150398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.301498, 57.464535, 59.937752>,  <73.475029, 57.529945, 59.583340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.301498, 57.464535, 59.937752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594280, 0.687214, 0.417814,
		-0.677218, 0.707810, -0.200950,
		-0.433829, -0.163530, 0.886031,
		73.171349, 57.415474, 60.203560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.120392, 58.114674, 59.896954>,  <73.475029, 57.529945, 59.583340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.120392, 58.114674, 59.896954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.258537, 57.876297, 60.186943>,  <73.341423, 57.733273, 60.360935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.258537, 57.876297, 60.186943>,  <73.120392, 58.114674, 59.896954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.258537, 57.876297, 60.186943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468859, 0.778753, 0.416790,
		-0.812954, 0.195964, 0.548365,
		0.345365, -0.595937, 0.724970,
		73.362144, 57.697517, 60.404434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.955864, 58.420494, 60.468040>,  <73.120392, 58.114674, 59.896954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.955864, 58.420494, 60.468040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.279022, 58.187698, 60.505104>,  <73.472916, 58.048023, 60.527340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.279022, 58.187698, 60.505104>,  <72.955864, 58.420494, 60.468040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.279022, 58.187698, 60.505104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543735, 0.796776, 0.263628,
		-0.227255, -0.162605, 0.960164,
		0.807903, -0.581986, 0.092657,
		73.521393, 58.013103, 60.532902>
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
