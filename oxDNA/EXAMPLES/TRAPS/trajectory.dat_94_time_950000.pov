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
	<36.861671, 53.023014, 50.004978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700474, 53.014629, 49.638992>,  <36.603756, 53.009598, 49.419399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700474, 53.014629, 49.638992>,  <36.861671, 53.023014, 50.004978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700474, 53.014629, 49.638992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726871, -0.614806, -0.306060,
		-0.556109, -0.788400, 0.262999,
		-0.402991, -0.020964, -0.914964,
		36.579575, 53.008339, 49.364502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628433, 53.265652, 50.006542>,  <36.861671, 53.023014, 50.004978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628433, 53.265652, 50.006542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288631, 53.400082, 49.843864>,  <37.084751, 53.480740, 49.746258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288631, 53.400082, 49.843864>,  <37.628433, 53.265652, 50.006542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288631, 53.400082, 49.843864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461238, -0.847327, 0.263241,
		-0.256136, 0.411208, 0.874816,
		-0.849502, 0.336073, -0.406695,
		37.033779, 53.500904, 49.721855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464607, 53.597031, 50.570347>,  <37.628433, 53.265652, 50.006542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464607, 53.597031, 50.570347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170315, 53.596855, 50.841255>,  <36.993740, 53.596748, 51.003799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170315, 53.596855, 50.841255>,  <37.464607, 53.597031, 50.570347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170315, 53.596855, 50.841255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062252, -0.995723, -0.068270,
		0.674405, -0.092390, 0.732558,
		-0.735732, -0.000439, 0.677272,
		36.949596, 53.596725, 51.044437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622326, 53.076164, 51.160378>,  <37.464607, 53.597031, 50.570347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622326, 53.076164, 51.160378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231354, 53.129971, 51.095230>,  <36.996769, 53.162254, 51.056141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231354, 53.129971, 51.095230>,  <37.622326, 53.076164, 51.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231354, 53.129971, 51.095230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140544, -0.989733, 0.025992,
		-0.157700, 0.048296, 0.986306,
		-0.977435, 0.134520, -0.162869,
		36.938122, 53.170326, 51.046368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381809, 52.588249, 51.549416>,  <37.622326, 53.076164, 51.160378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381809, 52.588249, 51.549416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052013, 52.707413, 51.356968>,  <36.854137, 52.778912, 51.241501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052013, 52.707413, 51.356968>,  <37.381809, 52.588249, 51.549416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052013, 52.707413, 51.356968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431852, -0.880666, 0.194759,
		-0.365685, 0.368349, 0.854748,
		-0.824487, 0.297904, -0.481119,
		36.804668, 52.796783, 51.212631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780994, 52.619423, 52.066319>,  <37.381809, 52.588249, 51.549416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780994, 52.619423, 52.066319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679352, 52.557564, 51.684425>,  <36.618366, 52.520451, 51.455288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679352, 52.557564, 51.684425>,  <36.780994, 52.619423, 52.066319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679352, 52.557564, 51.684425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351408, -0.904910, 0.240104,
		-0.901079, 0.396513, 0.175600,
		-0.254106, -0.154645, -0.954733,
		36.603119, 52.511169, 51.398006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431725, 52.416992, 52.798779>,  <36.780994, 52.619423, 52.066319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431725, 52.416992, 52.798779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148827, 52.223278, 53.004799>,  <35.979088, 52.107048, 53.128410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148827, 52.223278, 53.004799>,  <36.431725, 52.416992, 52.798779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148827, 52.223278, 53.004799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380686, -0.353012, -0.854670,
		0.595721, -0.800532, 0.065305,
		-0.707244, -0.484284, 0.515048,
		35.936653, 52.077991, 53.159313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134346, 52.418522, 53.018700>,  <36.431725, 52.416992, 52.798779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134346, 52.418522, 53.018700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156273, 52.817879, 53.012978>,  <37.169430, 53.057495, 53.009544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156273, 52.817879, 53.012978>,  <37.134346, 52.418522, 53.018700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156273, 52.817879, 53.012978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277998, -0.001502, 0.960581,
		0.959016, -0.056632, -0.277634,
		0.054817, 0.998394, -0.014303,
		37.172718, 53.117397, 53.008686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295284, 51.673611, 52.912941>,  <37.134346, 52.418522, 53.018700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295284, 51.673611, 52.912941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354492, 51.649109, 52.518108>,  <37.390015, 51.634407, 52.281208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354492, 51.649109, 52.518108>,  <37.295284, 51.673611, 52.912941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354492, 51.649109, 52.518108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927715, 0.354441, 0.117118,
		0.342690, -0.933070, 0.109290,
		0.148016, -0.061254, -0.987086,
		37.398895, 51.630733, 52.221981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861191, 51.226711, 52.802902>,  <37.295284, 51.673611, 52.912941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861191, 51.226711, 52.802902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804085, 51.520775, 52.537827>,  <37.769821, 51.697212, 52.378780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804085, 51.520775, 52.537827>,  <37.861191, 51.226711, 52.802902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804085, 51.520775, 52.537827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888760, 0.389874, 0.241048,
		0.435574, -0.554556, -0.709044,
		-0.142763, 0.735164, -0.662686,
		37.761257, 51.741325, 52.339020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530781, 51.284397, 53.093548>,  <37.861191, 51.226711, 52.802902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530781, 51.284397, 53.093548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637676, 51.660324, 53.008392>,  <38.701813, 51.885880, 52.957298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637676, 51.660324, 53.008392>,  <38.530781, 51.284397, 53.093548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637676, 51.660324, 53.008392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957555, -0.234219, 0.168018,
		0.108044, -0.248753, -0.962522,
		0.267236, 0.939821, -0.212888,
		38.717846, 51.942272, 52.944527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040352, 51.452866, 52.441334>,  <38.530781, 51.284397, 53.093548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040352, 51.452866, 52.441334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076111, 51.700436, 52.753471>,  <39.097565, 51.848976, 52.940754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076111, 51.700436, 52.753471>,  <39.040352, 51.452866, 52.441334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076111, 51.700436, 52.753471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991487, -0.129773, -0.010653,
		0.094674, 0.774656, -0.625256,
		0.089394, 0.618925, 0.780347,
		39.102928, 51.886112, 52.987576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361084, 52.014717, 52.229351>,  <39.040352, 51.452866, 52.441334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361084, 52.014717, 52.229351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421288, 52.003597, 52.624638>,  <39.457409, 51.996925, 52.861809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421288, 52.003597, 52.624638>,  <39.361084, 52.014717, 52.229351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421288, 52.003597, 52.624638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988570, -0.004615, -0.150694,
		0.008749, 0.999603, 0.026786,
		0.150511, -0.027798, 0.988217,
		39.466442, 51.995258, 52.921104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553726, 52.634853, 52.567986>,  <39.361084, 52.014717, 52.229351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553726, 52.634853, 52.567986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750011, 52.310463, 52.695435>,  <39.867783, 52.115829, 52.771904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750011, 52.310463, 52.695435>,  <39.553726, 52.634853, 52.567986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750011, 52.310463, 52.695435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835841, 0.334839, -0.435032,
		0.246113, 0.479793, 0.842156,
		0.490712, -0.810976, 0.318622,
		39.897224, 52.067169, 52.791019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173271, 52.729362, 52.942242>,  <39.553726, 52.634853, 52.567986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173271, 52.729362, 52.942242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218426, 52.364029, 52.785744>,  <40.245518, 52.144829, 52.691845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218426, 52.364029, 52.785744>,  <40.173271, 52.729362, 52.942242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218426, 52.364029, 52.785744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922327, 0.242778, -0.300620,
		0.369553, -0.326922, 0.869800,
		0.112889, -0.913335, -0.391248,
		40.252293, 52.090027, 52.668369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709408, 52.424282, 53.250114>,  <40.173271, 52.729362, 52.942242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709408, 52.424282, 53.250114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703606, 52.304756, 52.868435>,  <40.700127, 52.233040, 52.639427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703606, 52.304756, 52.868435>,  <40.709408, 52.424282, 53.250114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703606, 52.304756, 52.868435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983463, 0.168030, -0.067568,
		0.180525, -0.939401, 0.291440,
		-0.014503, -0.298818, -0.954200,
		40.699253, 52.215111, 52.582176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182007, 51.924458, 53.097103>,  <40.709408, 52.424282, 53.250114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182007, 51.924458, 53.097103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146660, 52.164848, 52.779358>,  <41.125450, 52.309082, 52.588711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146660, 52.164848, 52.779358>,  <41.182007, 51.924458, 53.097103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146660, 52.164848, 52.779358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993428, 0.111410, -0.026227,
		0.072738, -0.791461, -0.606876,
		-0.088369, 0.600981, -0.794363,
		41.120148, 52.345142, 52.541050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586926, 51.633930, 52.548836>,  <41.182007, 51.924458, 53.097103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586926, 51.633930, 52.548836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551346, 52.031868, 52.568291>,  <41.529999, 52.270630, 52.579964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551346, 52.031868, 52.568291>,  <41.586926, 51.633930, 52.548836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551346, 52.031868, 52.568291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990043, 0.082964, 0.113715,
		0.109094, 0.058272, -0.992322,
		-0.088954, 0.994847, 0.048641,
		41.524658, 52.330322, 52.582882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018883, 52.007835, 52.031639>,  <41.586926, 51.633930, 52.548836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018883, 52.007835, 52.031639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939857, 52.221127, 52.360672>,  <41.892441, 52.349102, 52.558090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939857, 52.221127, 52.360672>,  <42.018883, 52.007835, 52.031639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939857, 52.221127, 52.360672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980177, 0.094686, 0.174033,
		0.014911, 0.840659, -0.541360,
		-0.197562, 0.533223, 0.822583,
		41.880589, 52.381092, 52.607449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303867, 52.745628, 52.106792>,  <42.018883, 52.007835, 52.031639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303867, 52.745628, 52.106792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296146, 52.584679, 52.472900>,  <42.291512, 52.488110, 52.692566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296146, 52.584679, 52.472900>,  <42.303867, 52.745628, 52.106792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296146, 52.584679, 52.472900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982915, 0.159961, 0.091055,
		-0.183046, 0.901392, 0.392412,
		-0.019305, -0.402375, 0.915271,
		42.290356, 52.463966, 52.747482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667019, 53.149769, 52.451569>,  <42.303867, 52.745628, 52.106792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667019, 53.149769, 52.451569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681221, 52.814949, 52.669960>,  <42.689743, 52.614056, 52.800995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681221, 52.814949, 52.669960>,  <42.667019, 53.149769, 52.451569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681221, 52.814949, 52.669960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975148, 0.148571, 0.164357,
		-0.218690, 0.526570, 0.821522,
		0.035509, -0.837049, 0.545974,
		42.691875, 52.563835, 52.833752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863960, 53.253357, 53.206429>,  <42.667019, 53.149769, 52.451569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863960, 53.253357, 53.206429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998436, 52.913807, 53.043266>,  <43.079121, 52.710075, 52.945370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998436, 52.913807, 53.043266>,  <42.863960, 53.253357, 53.206429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998436, 52.913807, 53.043266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922359, 0.209236, 0.324769,
		-0.190341, -0.485415, 0.853312,
		0.336191, -0.848877, -0.407901,
		43.099293, 52.659145, 52.920895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151363, 52.610397, 53.669128>,  <42.863960, 53.253357, 53.206429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151363, 52.610397, 53.669128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301163, 52.733597, 53.319298>,  <43.391045, 52.807518, 53.109398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301163, 52.733597, 53.319298>,  <43.151363, 52.610397, 53.669128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301163, 52.733597, 53.319298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842773, 0.280230, 0.459571,
		0.386630, -0.909179, -0.154629,
		0.374501, 0.308001, -0.874577,
		43.413513, 52.825996, 53.056923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716309, 52.321938, 53.588974>,  <43.151363, 52.610397, 53.669128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716309, 52.321938, 53.588974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789066, 52.649429, 53.371132>,  <43.832722, 52.845924, 53.240429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789066, 52.649429, 53.371132>,  <43.716309, 52.321938, 53.588974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789066, 52.649429, 53.371132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875969, 0.116715, 0.468034,
		0.446758, -0.562188, -0.695954,
		0.181895, 0.818732, -0.544602,
		43.843636, 52.895050, 53.207752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384426, 52.370029, 53.243385>,  <43.716309, 52.321938, 53.588974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384426, 52.370029, 53.243385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252617, 52.738701, 53.325287>,  <44.173531, 52.959904, 53.374428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252617, 52.738701, 53.325287>,  <44.384426, 52.370029, 53.243385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252617, 52.738701, 53.325287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732243, 0.112582, 0.671673,
		0.596014, 0.371264, -0.711991,
		-0.329525, 0.921677, 0.204755,
		44.153759, 53.015205, 53.386715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968021, 52.955116, 53.120037>,  <44.384426, 52.370029, 53.243385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968021, 52.955116, 53.120037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677120, 53.075970, 53.366554>,  <44.502579, 53.148483, 53.514465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677120, 53.075970, 53.366554>,  <44.968021, 52.955116, 53.120037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677120, 53.075970, 53.366554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675795, 0.472236, 0.565946,
		-0.120044, 0.828074, -0.547616,
		-0.727248, 0.302138, 0.616297,
		44.458946, 53.166611, 53.551445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890888, 53.630024, 53.226151>,  <44.968021, 52.955116, 53.120037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890888, 53.630024, 53.226151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794228, 53.458267, 53.574226>,  <44.736233, 53.355213, 53.783073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794228, 53.458267, 53.574226>,  <44.890888, 53.630024, 53.226151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794228, 53.458267, 53.574226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681738, 0.563035, 0.467147,
		-0.690535, 0.706127, 0.156674,
		-0.241652, -0.429392, 0.870188,
		44.721733, 53.329449, 53.835281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748802, 54.091293, 53.727734>,  <44.890888, 53.630024, 53.226151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748802, 54.091293, 53.727734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908894, 53.763180, 53.891174>,  <45.004948, 53.566311, 53.989239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908894, 53.763180, 53.891174>,  <44.748802, 54.091293, 53.727734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908894, 53.763180, 53.891174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782839, 0.537825, 0.312900,
		-0.476421, 0.194634, 0.857403,
		0.400232, -0.820281, 0.408599,
		45.028965, 53.517094, 54.013756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922337, 54.049763, 54.510502>,  <44.748802, 54.091293, 53.727734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922337, 54.049763, 54.510502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182648, 53.831848, 54.298958>,  <45.338837, 53.701099, 54.172031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182648, 53.831848, 54.298958>,  <44.922337, 54.049763, 54.510502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182648, 53.831848, 54.298958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748332, 0.578002, 0.325442,
		0.128384, -0.607553, 0.783835,
		0.650782, -0.544787, -0.528858,
		45.377884, 53.668411, 54.140301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479881, 53.724098, 54.889568>,  <44.922337, 54.049763, 54.510502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479881, 53.724098, 54.889568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639919, 53.772404, 54.526176>,  <45.735943, 53.801388, 54.308140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639919, 53.772404, 54.526176>,  <45.479881, 53.724098, 54.889568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639919, 53.772404, 54.526176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871137, 0.257804, 0.417921,
		0.284681, -0.958620, -0.002059,
		0.400097, 0.120768, -0.908481,
		45.759949, 53.808632, 54.253632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979626, 53.331234, 54.845871>,  <45.479881, 53.724098, 54.889568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979626, 53.331234, 54.845871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084339, 53.604092, 54.572769>,  <46.147167, 53.767807, 54.408909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084339, 53.604092, 54.572769>,  <45.979626, 53.331234, 54.845871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084339, 53.604092, 54.572769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889205, 0.104550, 0.445403,
		0.375210, -0.723706, -0.579196,
		0.261786, 0.682143, -0.682751,
		46.162876, 53.808735, 54.367943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634277, 53.196671, 54.557835>,  <45.979626, 53.331234, 54.845871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634277, 53.196671, 54.557835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.613411, 53.580673, 54.447807>,  <46.600891, 53.811073, 54.381790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.613411, 53.580673, 54.447807>,  <46.634277, 53.196671, 54.557835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613411, 53.580673, 54.447807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943466, 0.137664, 0.301531,
		0.327339, -0.243789, -0.912916,
		-0.052166, 0.960008, -0.275069,
		46.597759, 53.868675, 54.365288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.082485, 53.416134, 53.928829>,  <46.634277, 53.196671, 54.557835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.082485, 53.416134, 53.928829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006386, 53.669613, 54.228760>,  <46.960724, 53.821701, 54.408718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006386, 53.669613, 54.228760>,  <47.082485, 53.416134, 53.928829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.006386, 53.669613, 54.228760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974480, 0.029213, 0.222566,
		0.119135, 0.773030, -0.623082,
		-0.190252, 0.633697, 0.749822,
		46.949310, 53.859722, 54.453705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.215836, 54.200783, 53.888416>,  <47.082485, 53.416134, 53.928829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.215836, 54.200783, 53.888416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.259727, 54.008118, 54.236198>,  <47.286060, 53.892517, 54.444870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.259727, 54.008118, 54.236198>,  <47.215836, 54.200783, 53.888416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.259727, 54.008118, 54.236198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990102, 0.129983, -0.052943,
		-0.087514, 0.866661, 0.491161,
		0.109727, -0.481667, 0.869458,
		47.292645, 53.863617, 54.497036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374683, 54.698246, 54.391270>,  <47.215836, 54.200783, 53.888416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374683, 54.698246, 54.391270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516613, 54.339851, 54.498085>,  <47.601768, 54.124813, 54.562172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516613, 54.339851, 54.498085>,  <47.374683, 54.698246, 54.391270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.516613, 54.339851, 54.498085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915149, 0.391293, 0.096914,
		-0.191323, 0.209990, 0.958801,
		0.354821, -0.895988, 0.267036,
		47.623058, 54.071056, 54.578197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.014835, 54.974262, 54.558815>,  <47.374683, 54.698246, 54.391270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.014835, 54.974262, 54.558815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.196285, 55.315857, 54.456886>,  <48.305157, 55.520813, 54.395729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.196285, 55.315857, 54.456886>,  <48.014835, 54.974262, 54.558815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.196285, 55.315857, 54.456886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844996, -0.503020, -0.181527,
		-0.283200, -0.132975, -0.949797,
		0.453629, 0.853984, -0.254819,
		48.332375, 55.572052, 54.380440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.298687, 54.921886, 53.862389>,  <48.014835, 54.974262, 54.558815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.298687, 54.921886, 53.862389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.489567, 55.171425, 54.109970>,  <48.604095, 55.321148, 54.258518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.489567, 55.171425, 54.109970>,  <48.298687, 54.921886, 53.862389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.489567, 55.171425, 54.109970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849650, -0.507407, -0.143641,
		0.224453, 0.594440, -0.772180,
		0.477195, 0.623842, 0.618955,
		48.632725, 55.358578, 54.295658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.979790, 54.926193, 53.552162>,  <48.298687, 54.921886, 53.862389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.979790, 54.926193, 53.552162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.001724, 55.113403, 53.904968>,  <49.014885, 55.225731, 54.116650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.001724, 55.113403, 53.904968>,  <48.979790, 54.926193, 53.552162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.001724, 55.113403, 53.904968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965166, -0.251167, 0.073275,
		0.255827, 0.847272, -0.465493,
		0.054832, 0.468024, 0.882013,
		49.018173, 55.253811, 54.169571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.213722, 54.489349, 54.081188>,  <48.979790, 54.926193, 53.552162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.213722, 54.489349, 54.081188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.450184, 54.166737, 54.083939>,  <49.592060, 53.973167, 54.085590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.450184, 54.166737, 54.083939>,  <49.213722, 54.489349, 54.081188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.450184, 54.166737, 54.083939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783391, 0.576179, 0.233059,
		-0.191932, -0.132384, 0.972438,
		0.591151, -0.806531, 0.006878,
		49.627529, 53.924778, 54.086002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.826935, 54.549240, 54.502651>,  <49.213722, 54.489349, 54.081188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.826935, 54.549240, 54.502651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.921722, 54.251511, 54.252907>,  <49.978596, 54.072872, 54.103062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.921722, 54.251511, 54.252907>,  <49.826935, 54.549240, 54.502651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.921722, 54.251511, 54.252907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949651, 0.313049, -0.012767,
		0.204958, -0.589898, 0.781033,
		0.236970, -0.744325, -0.624360,
		49.992813, 54.028214, 54.065598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.411514, 54.268875, 54.731243>,  <49.826935, 54.549240, 54.502651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.411514, 54.268875, 54.731243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.415958, 54.198170, 54.337566>,  <50.418625, 54.155746, 54.101360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.415958, 54.198170, 54.337566>,  <50.411514, 54.268875, 54.731243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.415958, 54.198170, 54.337566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942311, 0.331158, -0.048839,
		0.334556, -0.926871, 0.170245,
		0.011110, -0.176763, -0.984191,
		50.419292, 54.145142, 54.042309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.991772, 53.921444, 54.464863>,  <50.411514, 54.268875, 54.731243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.991772, 53.921444, 54.464863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.893700, 54.163322, 54.161751>,  <50.834858, 54.308449, 53.979885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.893700, 54.163322, 54.161751>,  <50.991772, 53.921444, 54.464863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.893700, 54.163322, 54.161751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945031, 0.323495, -0.047617,
		0.216342, -0.727797, -0.650775,
		-0.245177, 0.604701, -0.757776,
		50.820145, 54.344734, 53.934418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.525002, 53.831551, 53.983959>,  <50.991772, 53.921444, 54.464863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.525002, 53.831551, 53.983959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.363628, 54.197220, 53.968319>,  <51.266804, 54.416622, 53.958935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.363628, 54.197220, 53.968319>,  <51.525002, 53.831551, 53.983959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.363628, 54.197220, 53.968319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914194, 0.400902, -0.059384,
		-0.038610, -0.059707, -0.997469,
		-0.403433, 0.914173, -0.039104,
		51.242599, 54.471474, 53.956589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.833630, 54.138351, 53.513664>,  <51.525002, 53.831551, 53.983959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.833630, 54.138351, 53.513664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.694061, 54.404076, 53.778069>,  <51.610321, 54.563511, 53.936710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.694061, 54.404076, 53.778069>,  <51.833630, 54.138351, 53.513664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.694061, 54.404076, 53.778069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900970, 0.431888, 0.041540,
		-0.257889, 0.610048, -0.749222,
		-0.348921, 0.664314, 0.661014,
		51.589386, 54.603371, 53.976372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.560898, 54.278881, 53.644218>,  <51.833630, 54.138351, 53.513664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.560898, 54.278881, 53.644218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.576351, 54.335381, 53.248531>,  <52.585625, 54.369278, 53.011120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.576351, 54.335381, 53.248531>,  <52.560898, 54.278881, 53.644218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.576351, 54.335381, 53.248531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363908, 0.923966, 0.117716,
		0.930633, 0.355438, 0.087099,
		0.038636, 0.141246, -0.989220,
		52.587940, 54.377754, 52.951767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.103878, 54.609901, 53.348846>,  <52.560898, 54.278881, 53.644218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.103878, 54.609901, 53.348846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.492847, 54.684944, 53.404270>,  <53.726231, 54.729969, 53.437527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.492847, 54.684944, 53.404270>,  <53.103878, 54.609901, 53.348846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.492847, 54.684944, 53.404270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111894, -0.145995, 0.982937,
		0.204634, -0.971334, -0.120976,
		0.972422, 0.187606, 0.138562,
		53.784573, 54.741226, 53.445839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.626247, 54.034962, 53.588585>,  <53.103878, 54.609901, 53.348846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.626247, 54.034962, 53.588585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.717796, 54.400745, 53.722076>,  <53.772724, 54.620216, 53.802174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.717796, 54.400745, 53.722076>,  <53.626247, 54.034962, 53.588585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.717796, 54.400745, 53.722076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152628, -0.304883, 0.940080,
		0.961418, -0.266091, 0.069794,
		0.228868, 0.914462, 0.333733,
		53.786457, 54.675083, 53.822197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.240616, 54.096863, 54.145618>,  <53.626247, 54.034962, 53.588585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.240616, 54.096863, 54.145618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.977646, 54.390999, 54.211426>,  <53.819862, 54.567478, 54.250912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.977646, 54.390999, 54.211426>,  <54.240616, 54.096863, 54.145618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.977646, 54.390999, 54.211426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011078, -0.227745, 0.973658,
		0.753435, 0.638289, 0.157872,
		-0.657429, 0.735337, 0.164520,
		53.780418, 54.611599, 54.260780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.474995, 53.428123, 54.515541>,  <54.240616, 54.096863, 54.145618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.474995, 53.428123, 54.515541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.837120, 53.323242, 54.381878>,  <55.054394, 53.260315, 54.301682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.837120, 53.323242, 54.381878>,  <54.474995, 53.428123, 54.515541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.837120, 53.323242, 54.381878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414737, 0.375894, 0.828672,
		-0.091675, -0.888793, 0.449047,
		0.905312, -0.262205, -0.334155,
		55.108715, 53.244579, 54.281631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.892956, 52.777069, 54.771122>,  <54.474995, 53.428123, 54.515541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.892956, 52.777069, 54.771122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.074394, 53.118416, 54.668350>,  <55.183258, 53.323223, 54.606686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.074394, 53.118416, 54.668350>,  <54.892956, 52.777069, 54.771122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.074394, 53.118416, 54.668350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240093, 0.160623, 0.957369,
		0.858256, -0.495949, -0.132029,
		0.453600, 0.853366, -0.256930,
		55.210476, 53.374424, 54.591270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.599789, 52.684116, 54.840195>,  <54.892956, 52.777069, 54.771122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.599789, 52.684116, 54.840195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.504417, 53.064980, 54.916664>,  <55.447193, 53.293499, 54.962547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.504417, 53.064980, 54.916664>,  <55.599789, 52.684116, 54.840195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.504417, 53.064980, 54.916664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653589, 0.011724, 0.756759,
		0.718313, 0.305382, -0.625115,
		-0.238430, 0.952158, 0.191173,
		55.432888, 53.350628, 54.974014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.175716, 53.050488, 54.780277>,  <55.599789, 52.684116, 54.840195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.175716, 53.050488, 54.780277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.927818, 53.254314, 55.019028>,  <55.779079, 53.376610, 55.162277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.927818, 53.254314, 55.019028>,  <56.175716, 53.050488, 54.780277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.927818, 53.254314, 55.019028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625489, -0.138636, 0.767817,
		0.474003, 0.849188, -0.232811,
		-0.619745, 0.509568, 0.596872,
		55.741894, 53.407185, 55.198090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.414654, 52.376514, 55.003384>,  <56.175716, 53.050488, 54.780277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.414654, 52.376514, 55.003384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.773247, 52.471272, 54.853611>,  <56.988403, 52.528126, 54.763748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.773247, 52.471272, 54.853611>,  <56.414654, 52.376514, 55.003384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.773247, 52.471272, 54.853611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433075, -0.289956, 0.853447,
		0.093609, -0.927257, -0.362535,
		0.896484, 0.236896, -0.374429,
		57.042191, 52.542339, 54.741283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.956249, 51.865360, 54.829205>,  <56.414654, 52.376514, 55.003384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.956249, 51.865360, 54.829205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.145950, 52.206085, 54.918198>,  <57.259769, 52.410519, 54.971596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.145950, 52.206085, 54.918198>,  <56.956249, 51.865360, 54.829205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.145950, 52.206085, 54.918198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431990, -0.445353, 0.784248,
		0.767117, -0.275820, -0.579185,
		0.474254, 0.851812, 0.222486,
		57.288227, 52.461628, 54.984943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.759342, 51.826115, 54.967403>,  <56.956249, 51.865360, 54.829205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.759342, 51.826115, 54.967403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.566879, 52.096024, 55.191246>,  <57.451401, 52.257969, 55.325550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.566879, 52.096024, 55.191246>,  <57.759342, 51.826115, 54.967403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.566879, 52.096024, 55.191246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338399, -0.445911, 0.828643,
		0.808684, 0.588082, -0.013788,
		-0.481161, 0.674776, 0.559608,
		57.422531, 52.298458, 55.359127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.148365, 51.935116, 55.676468>,  <57.759342, 51.826115, 54.967403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.148365, 51.935116, 55.676468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.457047, 51.683762, 55.637268>,  <58.642254, 51.532948, 55.613747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.457047, 51.683762, 55.637268>,  <58.148365, 51.935116, 55.676468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.457047, 51.683762, 55.637268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491373, 0.491281, 0.719163,
		-0.403767, -0.603135, 0.687896,
		0.771702, -0.628387, -0.098002,
		58.688557, 51.495247, 55.607868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.659866, 52.185093, 56.180244>,  <58.148365, 51.935116, 55.676468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.659866, 52.185093, 56.180244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.846558, 51.890800, 55.983932>,  <58.958572, 51.714226, 55.866146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.846558, 51.890800, 55.983932>,  <58.659866, 52.185093, 56.180244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.846558, 51.890800, 55.983932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855922, 0.236066, 0.460076,
		-0.222634, -0.634801, 0.739906,
		0.466724, -0.735731, -0.490784,
		58.986576, 51.670082, 55.836697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.144424, 51.766201, 56.679066>,  <58.659866, 52.185093, 56.180244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.144424, 51.766201, 56.679066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.266876, 51.768536, 56.298279>,  <59.340347, 51.769936, 56.069805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.266876, 51.768536, 56.298279>,  <59.144424, 51.766201, 56.679066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.266876, 51.768536, 56.298279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845977, 0.456928, 0.274845,
		0.436586, -0.889485, 0.134945,
		0.306131, 0.005833, -0.951972,
		59.358715, 51.770287, 56.012688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.789680, 51.415325, 56.484592>,  <59.144424, 51.766201, 56.679066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.789680, 51.415325, 56.484592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.686340, 51.739952, 56.274979>,  <59.624336, 51.934727, 56.149212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.686340, 51.739952, 56.274979>,  <59.789680, 51.415325, 56.484592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.686340, 51.739952, 56.274979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835549, 0.459988, 0.300448,
		0.484884, -0.360236, -0.796943,
		-0.258352, 0.811567, -0.524036,
		59.608833, 51.983421, 56.117767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.289154, 51.674240, 55.935295>,  <59.789680, 51.415325, 56.484592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.289154, 51.674240, 55.935295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.081841, 51.985115, 56.078049>,  <59.957451, 52.171638, 56.163700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.081841, 51.985115, 56.078049>,  <60.289154, 51.674240, 55.935295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.081841, 51.985115, 56.078049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855083, 0.478075, 0.200692,
		-0.014640, 0.409178, -0.912337,
		-0.518284, 0.777186, 0.356880,
		59.926353, 52.218269, 56.185112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.632896, 52.312061, 55.718975>,  <60.289154, 51.674240, 55.935295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.632896, 52.312061, 55.718975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.472176, 52.328594, 56.084892>,  <60.375744, 52.338516, 56.304443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.472176, 52.328594, 56.084892>,  <60.632896, 52.312061, 55.718975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.472176, 52.328594, 56.084892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783713, 0.532243, 0.320175,
		-0.473658, 0.845582, -0.246251,
		-0.401799, 0.041337, 0.914794,
		60.351635, 52.340996, 56.359329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.168957, 52.627365, 56.036259>,  <60.632896, 52.312061, 55.718975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.168957, 52.627365, 56.036259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.850304, 52.713688, 56.262108>,  <60.659111, 52.765480, 56.397617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.850304, 52.713688, 56.262108>,  <61.168957, 52.627365, 56.036259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.850304, 52.713688, 56.262108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597264, 0.424762, 0.680333,
		-0.093011, 0.879207, -0.467273,
		-0.796633, 0.215807, 0.564626,
		60.611313, 52.778431, 56.431496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.335934, 53.255543, 56.266426>,  <61.168957, 52.627365, 56.036259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.335934, 53.255543, 56.266426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.097435, 53.061829, 56.522537>,  <60.954334, 52.945602, 56.676205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.097435, 53.061829, 56.522537>,  <61.335934, 53.255543, 56.266426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.097435, 53.061829, 56.522537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627619, 0.216123, 0.747921,
		-0.500584, 0.847798, 0.175081,
		-0.596247, -0.484282, 0.640282,
		60.918560, 52.916546, 56.714622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.263264, 53.685143, 56.973373>,  <61.335934, 53.255543, 56.266426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.263264, 53.685143, 56.973373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.161758, 53.302780, 57.032501>,  <61.100857, 53.073364, 57.067978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.161758, 53.302780, 57.032501>,  <61.263264, 53.685143, 56.973373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.161758, 53.302780, 57.032501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396516, 0.036591, 0.917298,
		-0.882259, 0.291388, 0.369746,
		-0.253761, -0.955905, 0.147822,
		61.085629, 53.016010, 57.076847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.123234, 54.459587, 56.839558>,  <61.263264, 53.685143, 56.973373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.123234, 54.459587, 56.839558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.025360, 54.845650, 56.876671>,  <60.966637, 55.077286, 56.898941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.025360, 54.845650, 56.876671>,  <61.123234, 54.459587, 56.839558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.025360, 54.845650, 56.876671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360582, 0.001747, 0.932726,
		0.900061, 0.261681, -0.348444,
		-0.244686, 0.965153, 0.092785,
		60.951954, 55.135197, 56.904507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.707657, 54.810604, 56.966274>,  <61.123234, 54.459587, 56.839558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.707657, 54.810604, 56.966274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.382698, 54.984306, 57.121933>,  <61.187721, 55.088528, 57.215328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.382698, 54.984306, 57.121933>,  <61.707657, 54.810604, 56.966274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.382698, 54.984306, 57.121933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418303, -0.030925, 0.907781,
		0.406242, 0.900259, -0.156527,
		-0.812398, 0.434255, 0.389144,
		61.138977, 55.114582, 57.238678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.996510, 54.005989, 56.836243>,  <61.707657, 54.810604, 56.966274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.996510, 54.005989, 56.836243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.721214, 54.004318, 57.126434>,  <61.556038, 54.003315, 57.300549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.721214, 54.004318, 57.126434>,  <61.996510, 54.005989, 56.836243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.721214, 54.004318, 57.126434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663055, -0.402211, -0.631335,
		0.294435, -0.915537, 0.274043,
		-0.688234, -0.004181, 0.725477,
		61.514744, 54.003063, 57.344078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.096561, 53.636787, 57.617809>,  <61.996510, 54.005989, 56.836243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.096561, 53.636787, 57.617809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.142426, 53.240269, 57.591919>,  <62.169945, 53.002357, 57.576385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.142426, 53.240269, 57.591919>,  <62.096561, 53.636787, 57.617809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.142426, 53.240269, 57.591919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963443, 0.095080, 0.250474,
		-0.242139, -0.091081, 0.965957,
		0.114657, -0.991294, -0.064729,
		62.176823, 52.942879, 57.572502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.489586, 53.379456, 58.088367>,  <62.096561, 53.636787, 57.617809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.489586, 53.379456, 58.088367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.540680, 53.100006, 57.806770>,  <62.571339, 52.932335, 57.637810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.540680, 53.100006, 57.806770>,  <62.489586, 53.379456, 58.088367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.540680, 53.100006, 57.806770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982302, -0.008922, 0.187093,
		-0.136988, -0.715434, 0.685119,
		0.127740, -0.698623, -0.703995,
		62.579002, 52.890419, 57.595573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.923283, 52.917953, 58.341175>,  <62.489586, 53.379456, 58.088367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.923283, 52.917953, 58.341175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.953789, 52.944561, 57.943230>,  <62.972092, 52.960526, 57.704460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.953789, 52.944561, 57.943230>,  <62.923283, 52.917953, 58.341175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.953789, 52.944561, 57.943230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995553, 0.050244, 0.079678,
		0.055287, -0.996519, -0.062387,
		0.076266, 0.066515, -0.994867,
		62.976669, 52.964516, 57.644772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.332207, 52.417217, 58.089745>,  <62.923283, 52.917953, 58.341175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.332207, 52.417217, 58.089745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.334816, 52.708557, 57.815674>,  <63.336384, 52.883362, 57.651230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.334816, 52.708557, 57.815674>,  <63.332207, 52.417217, 58.089745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.334816, 52.708557, 57.815674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999864, -0.015102, -0.006528,
		-0.015102, -0.685040, -0.728349,
		0.006528, 0.728349, -0.685175,
		63.336773, 52.927063, 57.610123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.891979, 52.211269, 57.534576>,  <63.332207, 52.417217, 58.089745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.891979, 52.211269, 57.534576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.857216, 52.603275, 57.606155>,  <63.836357, 52.838478, 57.649101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.857216, 52.603275, 57.606155>,  <63.891979, 52.211269, 57.534576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.857216, 52.603275, 57.606155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995406, 0.092670, -0.024082,
		-0.040184, 0.176031, -0.983564,
		-0.086908, 0.980013, 0.178946,
		63.831142, 52.897278, 57.659840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.429054, 52.560368, 57.117802>,  <63.891979, 52.211269, 57.534576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.429054, 52.560368, 57.117802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.317436, 52.826424, 57.394852>,  <64.250465, 52.986057, 57.561081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.317436, 52.826424, 57.394852>,  <64.429054, 52.560368, 57.117802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.317436, 52.826424, 57.394852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956917, 0.252897, 0.142665,
		-0.080270, 0.702592, -0.707051,
		-0.279047, 0.665137, 0.692622,
		64.233719, 53.025967, 57.602638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.624886, 53.346329, 57.030060>,  <64.429054, 52.560368, 57.117802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.624886, 53.346329, 57.030060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.592766, 53.263557, 57.420082>,  <64.573494, 53.213894, 57.654095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.592766, 53.263557, 57.420082>,  <64.624886, 53.346329, 57.030060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.592766, 53.263557, 57.420082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923879, 0.351751, 0.150727,
		-0.374166, 0.912936, 0.162936,
		-0.080291, -0.206930, 0.975055,
		64.568680, 53.201477, 57.712597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.804703, 53.949493, 57.322929>,  <64.624886, 53.346329, 57.030060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.804703, 53.949493, 57.322929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.859116, 53.670364, 57.604225>,  <64.891762, 53.502888, 57.773003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.859116, 53.670364, 57.604225>,  <64.804703, 53.949493, 57.322929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.859116, 53.670364, 57.604225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966861, 0.248304, 0.059366,
		-0.216043, 0.671858, 0.708472,
		0.136031, -0.697820, 0.703238,
		64.899925, 53.461018, 57.815197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.150070, 54.283169, 57.974293>,  <64.804703, 53.949493, 57.322929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.150070, 54.283169, 57.974293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.219154, 53.889668, 57.954674>,  <65.260605, 53.653568, 57.942902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.219154, 53.889668, 57.954674>,  <65.150070, 54.283169, 57.974293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.219154, 53.889668, 57.954674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984882, 0.171815, 0.022060,
		-0.013274, -0.052119, 0.998553,
		0.172716, -0.983750, -0.049050,
		65.270966, 53.594543, 57.939960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.585205, 54.138222, 58.520752>,  <65.150070, 54.283169, 57.974293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.585205, 54.138222, 58.520752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.627510, 53.850494, 58.246117>,  <65.652893, 53.677860, 58.081337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.627510, 53.850494, 58.246117>,  <65.585205, 54.138222, 58.520752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.627510, 53.850494, 58.246117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992081, 0.123373, 0.023568,
		0.067753, -0.683640, 0.726667,
		0.105763, -0.719316, -0.686585,
		65.659241, 53.634701, 58.040142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.124565, 53.631119, 58.821781>,  <65.585205, 54.138222, 58.520752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.124565, 53.631119, 58.821781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.082054, 53.636219, 58.424080>,  <66.056549, 53.639278, 58.185459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.082054, 53.636219, 58.424080>,  <66.124565, 53.631119, 58.821781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.082054, 53.636219, 58.424080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993408, 0.044581, -0.105608,
		0.042978, -0.998924, -0.017403,
		-0.106270, 0.012750, -0.994255,
		66.050171, 53.640045, 58.125805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.683090, 53.119461, 58.540356>,  <66.124565, 53.631119, 58.821781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.683090, 53.119461, 58.540356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.580711, 53.406960, 58.281776>,  <66.519287, 53.579460, 58.126629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.580711, 53.406960, 58.281776>,  <66.683090, 53.119461, 58.540356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.580711, 53.406960, 58.281776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965582, 0.222096, -0.135370,
		0.046277, -0.658846, -0.750853,
		-0.255949, 0.718745, -0.646448,
		66.503929, 53.622581, 58.087841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.125771, 53.088726, 57.821613>,  <66.683090, 53.119461, 58.540356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.125771, 53.088726, 57.821613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.989075, 53.459488, 57.883652>,  <66.907059, 53.681946, 57.920876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.989075, 53.459488, 57.883652>,  <67.125771, 53.088726, 57.821613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.989075, 53.459488, 57.883652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877734, 0.373773, -0.299794,
		-0.335852, 0.033680, -0.941312,
		-0.341740, 0.926909, 0.155095,
		66.886551, 53.737560, 57.930180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.184471, 53.578156, 57.220200>,  <67.125771, 53.088726, 57.821613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.184471, 53.578156, 57.220200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.177200, 53.794659, 57.556465>,  <67.172836, 53.924561, 57.758224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.177200, 53.794659, 57.556465>,  <67.184471, 53.578156, 57.220200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.177200, 53.794659, 57.556465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854262, 0.445292, -0.268236,
		-0.519524, 0.713272, -0.470465,
		-0.018169, 0.541256, 0.840661,
		67.171753, 53.957035, 57.808662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.258965, 54.232269, 56.938457>,  <67.184471, 53.578156, 57.220200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.258965, 54.232269, 56.938457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.383713, 54.183285, 57.315338>,  <67.458557, 54.153893, 57.541466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.383713, 54.183285, 57.315338>,  <67.258965, 54.232269, 56.938457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.383713, 54.183285, 57.315338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774329, 0.607421, -0.177351,
		-0.550594, 0.784884, 0.284261,
		0.311866, -0.122463, 0.942201,
		67.477272, 54.146545, 57.598000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.491463, 54.831551, 57.334137>,  <67.258965, 54.232269, 56.938457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.491463, 54.831551, 57.334137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.717117, 54.543304, 57.495361>,  <67.852509, 54.370358, 57.592098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.717117, 54.543304, 57.495361>,  <67.491463, 54.831551, 57.334137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.717117, 54.543304, 57.495361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709563, 0.672738, 0.209629,
		-0.422220, 0.167740, 0.890839,
		0.564138, -0.720616, 0.403065,
		67.886360, 54.327118, 57.616280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.741295, 55.042038, 58.117374>,  <67.491463, 54.831551, 57.334137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.741295, 55.042038, 58.117374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.972610, 54.786026, 57.915009>,  <68.111397, 54.632420, 57.793591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.972610, 54.786026, 57.915009>,  <67.741295, 55.042038, 58.117374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.972610, 54.786026, 57.915009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785401, 0.604538, 0.132962,
		0.220743, -0.474233, 0.852277,
		0.578289, -0.640029, -0.505910,
		68.146095, 54.594017, 57.763237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.377609, 55.084335, 58.462070>,  <67.741295, 55.042038, 58.117374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.377609, 55.084335, 58.462070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.460144, 54.886505, 58.124359>,  <68.509666, 54.767807, 57.921730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.460144, 54.886505, 58.124359>,  <68.377609, 55.084335, 58.462070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.460144, 54.886505, 58.124359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911616, 0.410659, -0.017761,
		0.355496, -0.765997, 0.535604,
		0.206345, -0.494579, -0.844283,
		68.522049, 54.738132, 57.871075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.102982, 54.866047, 58.512009>,  <68.377609, 55.084335, 58.462070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.102982, 54.866047, 58.512009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.006714, 54.912079, 58.126503>,  <68.948952, 54.939697, 57.895199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.006714, 54.912079, 58.126503>,  <69.102982, 54.866047, 58.512009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.006714, 54.912079, 58.126503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867433, 0.471001, -0.160367,
		0.435479, -0.874595, -0.213172,
		-0.240660, 0.115076, -0.963764,
		68.934517, 54.946602, 57.837376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.569893, 54.457668, 58.907066>,  <69.102982, 54.866047, 58.512009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.569893, 54.457668, 58.907066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.948540, 54.340462, 58.853294>,  <70.175728, 54.270138, 58.821030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.948540, 54.340462, 58.853294>,  <69.569893, 54.457668, 58.907066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.948540, 54.340462, 58.853294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320797, 0.897460, 0.302745,
		0.031935, -0.329706, 0.943543,
		0.946609, -0.293018, -0.134430,
		70.232521, 54.252556, 58.812965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.033119, 54.465710, 59.613567>,  <69.569893, 54.457668, 58.907066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.033119, 54.465710, 59.613567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.242943, 54.508278, 59.275688>,  <70.368835, 54.533817, 59.072960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.242943, 54.508278, 59.275688>,  <70.033119, 54.465710, 59.613567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.242943, 54.508278, 59.275688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499810, 0.764703, 0.406718,
		0.689229, -0.635535, 0.347935,
		0.524550, 0.106420, -0.844702,
		70.400307, 54.540203, 59.022278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.747566, 54.404552, 59.735733>,  <70.033119, 54.465710, 59.613567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.747566, 54.404552, 59.735733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.689590, 54.617001, 59.401810>,  <70.654808, 54.744469, 59.201454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.689590, 54.617001, 59.401810>,  <70.747566, 54.404552, 59.735733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.689590, 54.617001, 59.401810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361148, 0.813905, 0.455116,
		0.921176, -0.235528, -0.309775,
		-0.144935, 0.531117, -0.834811,
		70.646111, 54.776337, 59.151367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.396362, 54.683765, 59.444824>,  <70.747566, 54.404552, 59.735733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.396362, 54.683765, 59.444824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.047310, 54.877239, 59.417793>,  <70.837875, 54.993324, 59.401573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.047310, 54.877239, 59.417793>,  <71.396362, 54.683765, 59.444824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.047310, 54.877239, 59.417793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327814, 0.682665, 0.653074,
		0.362014, 0.547740, -0.754273,
		-0.872631, 0.483683, -0.067577,
		70.785522, 55.022343, 59.397522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.501274, 55.371277, 59.096325>,  <71.396362, 54.683765, 59.444824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.501274, 55.371277, 59.096325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.167107, 55.365868, 59.316101>,  <70.966606, 55.362621, 59.447968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.167107, 55.365868, 59.316101>,  <71.501274, 55.371277, 59.096325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.167107, 55.365868, 59.316101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358914, 0.743673, 0.564031,
		-0.416236, 0.668407, -0.616425,
		-0.835421, -0.013527, 0.549444,
		70.916481, 55.361809, 59.480934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.313637, 56.113903, 59.231468>,  <71.501274, 55.371277, 59.096325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.313637, 56.113903, 59.231468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.147141, 55.894722, 59.521706>,  <71.047241, 55.763214, 59.695850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.147141, 55.894722, 59.521706>,  <71.313637, 56.113903, 59.231468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.147141, 55.894722, 59.521706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353144, 0.637939, 0.684341,
		-0.837872, 0.541093, -0.072033,
		-0.416245, -0.547952, 0.725595,
		71.022270, 55.730335, 59.739384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.857231, 56.470425, 59.828297>,  <71.313637, 56.113903, 59.231468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.857231, 56.470425, 59.828297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.093582, 56.175911, 59.960197>,  <71.235397, 55.999203, 60.039337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.093582, 56.175911, 59.960197>,  <70.857231, 56.470425, 59.828297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.093582, 56.175911, 59.960197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393256, 0.619757, 0.679155,
		-0.704418, -0.271627, 0.655755,
		0.590885, -0.736288, 0.329748,
		71.270851, 55.955025, 60.059120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.856392, 56.400116, 60.606358>,  <70.857231, 56.470425, 59.828297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.856392, 56.400116, 60.606358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.214996, 56.296040, 60.462921>,  <71.430161, 56.233593, 60.376862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.214996, 56.296040, 60.462921>,  <70.856392, 56.400116, 60.606358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.214996, 56.296040, 60.462921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438562, 0.635925, 0.635030,
		0.062808, -0.726569, 0.684217,
		0.896504, -0.260187, -0.358586,
		71.483948, 56.217983, 60.355347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.278885, 56.460869, 61.277164>,  <70.856392, 56.400116, 60.606358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.278885, 56.460869, 61.277164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.467354, 56.496452, 60.926147>,  <71.580437, 56.517803, 60.715538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.467354, 56.496452, 60.926147>,  <71.278885, 56.460869, 61.277164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.467354, 56.496452, 60.926147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557778, 0.740664, 0.374567,
		0.683284, -0.665961, 0.299364,
		0.471176, 0.088957, -0.877542,
		71.608704, 56.523140, 60.662884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.980202, 56.513206, 61.477772>,  <71.278885, 56.460869, 61.277164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.980202, 56.513206, 61.477772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.871895, 56.697498, 61.139679>,  <71.806908, 56.808075, 60.936825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.871895, 56.697498, 61.139679>,  <71.980202, 56.513206, 61.477772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.871895, 56.697498, 61.139679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317917, 0.871563, 0.373238,
		0.908631, -0.167650, -0.382469,
		-0.270773, 0.460729, -0.845228,
		71.790665, 56.835716, 60.886112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.438454, 57.105564, 61.352398>,  <71.980202, 56.513206, 61.477772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.438454, 57.105564, 61.352398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.083435, 57.149857, 61.173515>,  <71.870422, 57.176434, 61.066185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.083435, 57.149857, 61.173515>,  <72.438454, 57.105564, 61.352398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.083435, 57.149857, 61.173515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058745, 0.989964, 0.128533,
		0.456949, 0.087809, -0.885148,
		-0.887551, 0.110731, -0.447205,
		71.817169, 57.183075, 61.039352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.616280, 57.664604, 60.880280>,  <72.438454, 57.105564, 61.352398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.616280, 57.664604, 60.880280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.230072, 57.665405, 60.984398>,  <71.998344, 57.665886, 61.046867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.230072, 57.665405, 60.984398>,  <72.616280, 57.664604, 60.880280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.230072, 57.665405, 60.984398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065330, 0.969830, 0.234866,
		-0.251968, 0.243775, -0.936529,
		-0.965528, 0.002004, 0.260292,
		71.940414, 57.666008, 61.062485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.695801, 58.372166, 60.980125>,  <72.616280, 57.664604, 60.880280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.695801, 58.372166, 60.980125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.944313, 58.196152, 61.239471>,  <73.093422, 58.090542, 61.395081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.944313, 58.196152, 61.239471>,  <72.695801, 58.372166, 60.980125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.944313, 58.196152, 61.239471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342757, 0.591463, 0.729856,
		-0.704649, -0.675676, 0.216638,
		0.621280, -0.440038, 0.648366,
		73.130699, 58.064140, 61.433983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.763580, 58.138790, 60.311245>,  <72.695801, 58.372166, 60.980125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.763580, 58.138790, 60.311245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.997818, 57.822838, 60.384087>,  <73.138359, 57.633266, 60.427792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.997818, 57.822838, 60.384087>,  <72.763580, 58.138790, 60.311245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.997818, 57.822838, 60.384087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787799, -0.501672, 0.357349,
		-0.190907, -0.352724, -0.916046,
		0.585600, -0.789880, 0.182103,
		73.173500, 57.585873, 60.438717>
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
