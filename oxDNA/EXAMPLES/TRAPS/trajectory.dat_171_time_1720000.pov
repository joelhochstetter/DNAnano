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
	<36.844559, 53.800869, 49.812202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753296, 53.417831, 49.882591>,  <36.698540, 53.188011, 49.924824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753296, 53.417831, 49.882591>,  <36.844559, 53.800869, 49.812202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753296, 53.417831, 49.882591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200911, 0.223154, 0.953854,
		-0.952669, 0.182275, -0.243304,
		-0.228158, -0.957590, 0.175971,
		36.684849, 53.130554, 49.935383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260174, 53.852196, 50.229069>,  <36.844559, 53.800869, 49.812202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260174, 53.852196, 50.229069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442238, 53.499718, 50.280174>,  <36.551476, 53.288231, 50.310837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442238, 53.499718, 50.280174>,  <36.260174, 53.852196, 50.229069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442238, 53.499718, 50.280174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059675, 0.112978, 0.991804,
		-0.888407, -0.459055, -0.001162,
		0.455162, -0.881195, 0.127765,
		36.578785, 53.235359, 50.318504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912983, 53.382095, 50.722561>,  <36.260174, 53.852196, 50.229069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912983, 53.382095, 50.722561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304192, 53.300140, 50.738029>,  <36.538918, 53.250965, 50.747311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304192, 53.300140, 50.738029>,  <35.912983, 53.382095, 50.722561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304192, 53.300140, 50.738029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035173, 0.020689, 0.999167,
		-0.205522, -0.978566, 0.013027,
		0.978020, -0.204893, 0.038672,
		36.597599, 53.238674, 50.749630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101551, 52.620697, 51.053307>,  <35.912983, 53.382095, 50.722561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101551, 52.620697, 51.053307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394314, 52.889530, 51.098232>,  <36.569973, 53.050831, 51.125187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394314, 52.889530, 51.098232>,  <36.101551, 52.620697, 51.053307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394314, 52.889530, 51.098232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027526, -0.135530, 0.990391,
		0.680850, -0.727964, -0.080695,
		0.731906, 0.672086, 0.112314,
		36.613884, 53.091156, 51.131927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460125, 52.495861, 51.556534>,  <36.101551, 52.620697, 51.053307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460125, 52.495861, 51.556534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541210, 52.884609, 51.604500>,  <36.589863, 53.117859, 51.633278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541210, 52.884609, 51.604500>,  <36.460125, 52.495861, 51.556534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541210, 52.884609, 51.604500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235436, -0.070495, 0.969330,
		0.950514, -0.224732, 0.214522,
		0.202717, 0.971867, 0.119916,
		36.602024, 53.176170, 51.640476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210014, 52.668140, 51.563652>,  <36.460125, 52.495861, 51.556534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210014, 52.668140, 51.563652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289398, 52.390335, 51.840279>,  <37.337029, 52.223652, 52.006256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289398, 52.390335, 51.840279>,  <37.210014, 52.668140, 51.563652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289398, 52.390335, 51.840279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979458, 0.166255, -0.114108,
		-0.035728, 0.700009, 0.713240,
		0.198457, -0.694511, 0.691570,
		37.348934, 52.181980, 52.047749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513676, 52.982349, 52.260769>,  <37.210014, 52.668140, 51.563652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513676, 52.982349, 52.260769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659096, 52.614212, 52.203079>,  <37.746349, 52.393330, 52.168465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659096, 52.614212, 52.203079>,  <37.513676, 52.982349, 52.260769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659096, 52.614212, 52.203079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930923, 0.364705, 0.019308,
		0.034828, -0.141277, 0.989357,
		0.363551, -0.920343, -0.144220,
		37.768162, 52.338108, 52.159813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967281, 52.637154, 52.817570>,  <37.513676, 52.982349, 52.260769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967281, 52.637154, 52.817570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085423, 52.519890, 52.453850>,  <38.156307, 52.449532, 52.235619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085423, 52.519890, 52.453850>,  <37.967281, 52.637154, 52.817570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085423, 52.519890, 52.453850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917869, 0.351173, 0.184917,
		0.265112, -0.889234, 0.372799,
		0.295352, -0.293157, -0.909300,
		38.174026, 52.431942, 52.181061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728817, 52.437195, 52.742954>,  <37.967281, 52.637154, 52.817570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728817, 52.437195, 52.742954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007397, 52.222496, 52.552437>,  <39.174545, 52.093678, 52.438126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007397, 52.222496, 52.552437>,  <38.728817, 52.437195, 52.742954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007397, 52.222496, 52.552437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479318, -0.841906, 0.247888,
		-0.534048, 0.055654, -0.843620,
		0.696453, -0.536746, -0.476295,
		39.216331, 52.061474, 52.409550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924683, 53.002872, 53.104614>,  <38.728817, 52.437195, 52.742954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924683, 53.002872, 53.104614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920933, 53.083534, 53.496380>,  <38.918682, 53.131931, 53.731438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920933, 53.083534, 53.496380>,  <38.924683, 53.002872, 53.104614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920933, 53.083534, 53.496380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844825, -0.522396, 0.115644,
		0.534961, 0.828515, -0.165466,
		-0.009374, 0.201655, 0.979412,
		38.918121, 53.144032, 53.790203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614151, 53.140759, 53.079525>,  <38.924683, 53.002872, 53.104614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614151, 53.140759, 53.079525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913986, 53.280163, 53.304619>,  <40.093887, 53.363804, 53.439674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913986, 53.280163, 53.304619>,  <39.614151, 53.140759, 53.079525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913986, 53.280163, 53.304619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112211, -0.770948, 0.626935,
		0.652329, -0.533085, -0.538783,
		0.749583, 0.348511, 0.562730,
		40.138863, 53.384716, 53.473438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203789, 52.670582, 53.178146>,  <39.614151, 53.140759, 53.079525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203789, 52.670582, 53.178146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187901, 52.921600, 53.489174>,  <40.178368, 53.072212, 53.675789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187901, 52.921600, 53.489174>,  <40.203789, 52.670582, 53.178146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187901, 52.921600, 53.489174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107912, -0.770934, 0.627707,
		0.993367, 0.108842, -0.037096,
		-0.039722, 0.627546, 0.777565,
		40.175983, 53.109863, 53.722443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905106, 52.401020, 53.018845>,  <40.203789, 52.670582, 53.178146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905106, 52.401020, 53.018845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008224, 52.128838, 53.293221>,  <41.070095, 51.965527, 53.457848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008224, 52.128838, 53.293221>,  <40.905106, 52.401020, 53.018845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008224, 52.128838, 53.293221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918431, 0.393043, 0.044734,
		-0.300044, 0.618458, 0.726280,
		0.257793, -0.680461, 0.685942,
		41.085564, 51.924698, 53.499004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970108, 52.599739, 53.763741>,  <40.905106, 52.401020, 53.018845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970108, 52.599739, 53.763741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233574, 52.316727, 53.661316>,  <41.391655, 52.146919, 53.599861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233574, 52.316727, 53.661316>,  <40.970108, 52.599739, 53.763741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233574, 52.316727, 53.661316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751051, 0.638859, 0.166679,
		0.045658, -0.302101, 0.952182,
		0.658664, -0.707527, -0.256062,
		41.431171, 52.104469, 53.584496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578911, 52.953236, 54.056015>,  <40.970108, 52.599739, 53.763741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578911, 52.953236, 54.056015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958237, 52.905529, 53.938393>,  <42.185833, 52.876904, 53.867821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958237, 52.905529, 53.938393>,  <41.578911, 52.953236, 54.056015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958237, 52.905529, 53.938393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186912, 0.958809, 0.213889,
		0.256434, -0.257797, 0.931549,
		0.948317, -0.119269, -0.294056,
		42.242733, 52.869747, 53.850174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996975, 53.323940, 54.563171>,  <41.578911, 52.953236, 54.056015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996975, 53.323940, 54.563171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205544, 53.262699, 54.227390>,  <42.330685, 53.225952, 54.025921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205544, 53.262699, 54.227390>,  <41.996975, 53.323940, 54.563171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205544, 53.262699, 54.227390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369092, 0.927447, 0.060103,
		0.769347, -0.341174, 0.540098,
		0.521418, -0.153105, -0.839453,
		42.361969, 53.216766, 53.975555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746178, 53.462334, 54.605286>,  <41.996975, 53.323940, 54.563171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746178, 53.462334, 54.605286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685081, 53.516766, 54.213745>,  <42.648422, 53.549423, 53.978821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685081, 53.516766, 54.213745>,  <42.746178, 53.462334, 54.605286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685081, 53.516766, 54.213745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614080, 0.789122, 0.013879,
		0.774322, -0.598974, -0.204095,
		-0.152742, 0.136078, -0.978853,
		42.639259, 53.557590, 53.920090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998810, 53.995552, 55.156437>,  <42.746178, 53.462334, 54.605286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998810, 53.995552, 55.156437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772610, 53.703278, 55.309441>,  <42.636890, 53.527912, 55.401241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772610, 53.703278, 55.309441>,  <42.998810, 53.995552, 55.156437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772610, 53.703278, 55.309441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786517, -0.338203, 0.516730,
		-0.248200, 0.593061, 0.765948,
		-0.565498, -0.730683, 0.382510,
		42.602959, 53.484074, 55.424194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299854, 53.887516, 55.729168>,  <42.998810, 53.995552, 55.156437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299854, 53.887516, 55.729168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051514, 53.573963, 55.725929>,  <42.902508, 53.385830, 55.723988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051514, 53.573963, 55.725929>,  <43.299854, 53.887516, 55.729168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051514, 53.573963, 55.725929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717590, -0.572447, 0.396697,
		-0.315599, 0.240482, 0.917914,
		-0.620856, -0.783883, -0.008096,
		42.865257, 53.338799, 55.723499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290379, 53.553761, 56.376881>,  <43.299854, 53.887516, 55.729168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290379, 53.553761, 56.376881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192474, 53.274002, 56.108276>,  <43.133732, 53.106148, 55.947113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192474, 53.274002, 56.108276>,  <43.290379, 53.553761, 56.376881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192474, 53.274002, 56.108276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724479, -0.592209, 0.352731,
		-0.644376, -0.400162, 0.651652,
		-0.244764, -0.699399, -0.671514,
		43.119045, 53.064182, 55.906822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316833, 52.921154, 56.673904>,  <43.290379, 53.553761, 56.376881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316833, 52.921154, 56.673904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347496, 52.817753, 56.288719>,  <43.365894, 52.755711, 56.057610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347496, 52.817753, 56.288719>,  <43.316833, 52.921154, 56.673904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347496, 52.817753, 56.288719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780971, -0.584848, 0.219172,
		-0.619844, -0.768848, 0.157052,
		0.076659, -0.258506, -0.962963,
		43.370495, 52.740200, 55.999828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266243, 52.184906, 56.644669>,  <43.316833, 52.921154, 56.673904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266243, 52.184906, 56.644669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489365, 52.353409, 56.358620>,  <43.623238, 52.454510, 56.186989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489365, 52.353409, 56.358620>,  <43.266243, 52.184906, 56.644669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489365, 52.353409, 56.358620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810458, -0.462212, 0.359888,
		-0.178932, -0.780321, -0.599234,
		0.557801, 0.421259, -0.715122,
		43.656704, 52.479786, 56.144085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674911, 51.672249, 56.192314>,  <43.266243, 52.184906, 56.644669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674911, 51.672249, 56.192314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849045, 52.024178, 56.268631>,  <43.953526, 52.235332, 56.314423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849045, 52.024178, 56.268631>,  <43.674911, 51.672249, 56.192314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849045, 52.024178, 56.268631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689572, -0.462122, 0.557614,
		0.578769, -0.111185, -0.807877,
		0.435336, 0.879819, 0.190792,
		43.979645, 52.288124, 56.325867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435600, 51.672020, 56.089603>,  <43.674911, 51.672249, 56.192314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435600, 51.672020, 56.089603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372471, 51.946762, 56.373383>,  <44.334595, 52.111607, 56.543652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372471, 51.946762, 56.373383>,  <44.435600, 51.672020, 56.089603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372471, 51.946762, 56.373383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645480, -0.471951, 0.600515,
		0.747294, 0.552709, -0.368869,
		-0.157823, 0.686859, 0.709449,
		44.325123, 52.152821, 56.586216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071342, 51.822250, 56.407372>,  <44.435600, 51.672020, 56.089603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071342, 51.822250, 56.407372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792633, 51.913754, 56.679306>,  <44.625408, 51.968655, 56.842464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792633, 51.913754, 56.679306>,  <45.071342, 51.822250, 56.407372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792633, 51.913754, 56.679306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492583, -0.536352, 0.685338,
		0.521406, 0.812402, 0.261035,
		-0.696776, 0.228759, 0.679832,
		44.583599, 51.982380, 56.883255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484600, 52.401981, 56.559296>,  <45.071342, 51.822250, 56.407372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484600, 52.401981, 56.559296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513992, 52.629723, 56.886818>,  <45.531628, 52.766369, 57.083332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513992, 52.629723, 56.886818>,  <45.484600, 52.401981, 56.559296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513992, 52.629723, 56.886818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993701, -0.111451, -0.011678,
		0.084608, 0.814502, -0.573959,
		0.073480, 0.569355, 0.818801,
		45.536037, 52.800529, 57.132458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826321, 53.155792, 56.424793>,  <45.484600, 52.401981, 56.559296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826321, 53.155792, 56.424793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870937, 52.911591, 56.738441>,  <45.897709, 52.765072, 56.926632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870937, 52.911591, 56.738441>,  <45.826321, 53.155792, 56.424793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870937, 52.911591, 56.738441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953287, -0.157155, -0.257966,
		0.280717, 0.776266, 0.564454,
		0.111543, -0.610503, 0.784121,
		45.904400, 52.728439, 56.973679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288269, 53.431244, 56.851612>,  <45.826321, 53.155792, 56.424793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288269, 53.431244, 56.851612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273003, 53.031681, 56.862358>,  <46.263844, 52.791943, 56.868805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273003, 53.031681, 56.862358>,  <46.288269, 53.431244, 56.851612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273003, 53.031681, 56.862358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984812, -0.042161, -0.168426,
		0.169375, 0.020033, 0.985348,
		-0.038169, -0.998910, 0.026870,
		46.261551, 52.732010, 56.870419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978836, 53.797482, 56.973129>,  <46.288269, 53.431244, 56.851612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978836, 53.797482, 56.973129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835464, 53.424484, 56.990921>,  <46.749443, 53.200684, 57.001595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835464, 53.424484, 56.990921>,  <46.978836, 53.797482, 56.973129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835464, 53.424484, 56.990921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309673, 0.073813, -0.947974,
		0.880699, -0.353556, -0.315225,
		-0.358429, -0.932497, 0.044479,
		46.727936, 53.144733, 57.004265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.218071, 53.440895, 56.370262>,  <46.978836, 53.797482, 56.973129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.218071, 53.440895, 56.370262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.913902, 53.220478, 56.507729>,  <46.731400, 53.088226, 56.590210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.913902, 53.220478, 56.507729>,  <47.218071, 53.440895, 56.370262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.913902, 53.220478, 56.507729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349470, -0.098824, -0.931721,
		0.547381, -0.828604, -0.117425,
		-0.760423, -0.551043, 0.343667,
		46.685776, 53.055164, 56.610828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211712, 53.942432, 55.690742>,  <47.218071, 53.440895, 56.370262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211712, 53.942432, 55.690742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426609, 53.903805, 55.355591>,  <47.555546, 53.880627, 55.154499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426609, 53.903805, 55.355591>,  <47.211712, 53.942432, 55.690742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426609, 53.903805, 55.355591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609069, 0.731624, 0.306205,
		0.583444, -0.674834, 0.451876,
		0.537241, -0.096570, -0.837882,
		47.587780, 53.874832, 55.104225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902729, 53.713509, 55.894772>,  <47.211712, 53.942432, 55.690742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902729, 53.713509, 55.894772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.871815, 53.922039, 55.554832>,  <47.853268, 54.047157, 55.350868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.871815, 53.922039, 55.554832>,  <47.902729, 53.713509, 55.894772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.871815, 53.922039, 55.554832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611486, 0.698040, 0.372592,
		0.787472, -0.490877, -0.372730,
		-0.077284, 0.521325, -0.849851,
		47.848629, 54.078438, 55.299877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.620686, 53.891754, 55.645687>,  <47.902729, 53.713509, 55.894772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.620686, 53.891754, 55.645687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.350945, 54.161190, 55.524673>,  <48.189098, 54.322853, 55.452065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.350945, 54.161190, 55.524673>,  <48.620686, 53.891754, 55.645687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.350945, 54.161190, 55.524673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467185, 0.706481, 0.531622,
		0.571828, 0.217162, -0.791109,
		-0.674352, 0.673591, -0.302531,
		48.148640, 54.363266, 55.433914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.010548, 54.486473, 55.320171>,  <48.620686, 53.891754, 55.645687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.010548, 54.486473, 55.320171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.650009, 54.585049, 55.462631>,  <48.433685, 54.644192, 55.548107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.650009, 54.585049, 55.462631>,  <49.010548, 54.486473, 55.320171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.650009, 54.585049, 55.462631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431896, 0.572648, 0.696807,
		-0.032231, 0.781885, -0.622589,
		-0.901347, 0.246435, 0.356150,
		48.379604, 54.658978, 55.569477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.940800, 55.270615, 55.428623>,  <49.010548, 54.486473, 55.320171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.940800, 55.270615, 55.428623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.698689, 55.090435, 55.691147>,  <48.553421, 54.982327, 55.848660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.698689, 55.090435, 55.691147>,  <48.940800, 55.270615, 55.428623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.698689, 55.090435, 55.691147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448486, 0.488198, 0.748681,
		-0.657648, 0.747503, -0.093475,
		-0.605276, -0.450446, 0.656307,
		48.517105, 54.955299, 55.888039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.867565, 55.792713, 55.902855>,  <48.940800, 55.270615, 55.428623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.867565, 55.792713, 55.902855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.737995, 55.454243, 56.072113>,  <48.660252, 55.251160, 56.173668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.737995, 55.454243, 56.072113>,  <48.867565, 55.792713, 55.902855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.737995, 55.454243, 56.072113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214520, 0.369914, 0.903961,
		-0.921440, 0.383592, 0.061697,
		-0.323929, -0.846180, 0.423141,
		48.640816, 55.200390, 56.199055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.561939, 55.467411, 55.915527>,  <48.867565, 55.792713, 55.902855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.561939, 55.467411, 55.915527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.620110, 55.254547, 56.249153>,  <49.655010, 55.126827, 56.449329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.620110, 55.254547, 56.249153>,  <49.561939, 55.467411, 55.915527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.620110, 55.254547, 56.249153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939799, -0.189198, -0.284573,
		0.309241, 0.825233, 0.472610,
		0.145423, -0.532160, 0.834061,
		49.663738, 55.094898, 56.499371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.021381, 55.737816, 56.415878>,  <49.561939, 55.467411, 55.915527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.021381, 55.737816, 56.415878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.975212, 55.345184, 56.354980>,  <49.947510, 55.109604, 56.318443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.975212, 55.345184, 56.354980>,  <50.021381, 55.737816, 56.415878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.975212, 55.345184, 56.354980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977148, -0.084661, -0.194974,
		0.178493, -0.171269, 0.968920,
		-0.115423, -0.981580, -0.152244,
		49.940586, 55.050709, 56.309307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.459137, 55.482609, 56.963692>,  <50.021381, 55.737816, 56.415878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.459137, 55.482609, 56.963692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.400532, 55.224957, 56.663391>,  <50.365368, 55.070366, 56.483212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.400532, 55.224957, 56.663391>,  <50.459137, 55.482609, 56.963692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.400532, 55.224957, 56.663391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989198, -0.098941, -0.108156,
		-0.004613, -0.758487, 0.651672,
		-0.146512, -0.644134, -0.750750,
		50.356579, 55.031715, 56.438168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.529102, 54.762447, 57.119896>,  <50.459137, 55.482609, 56.963692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.529102, 54.762447, 57.119896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.763245, 54.751556, 56.795769>,  <50.903728, 54.745022, 56.601292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.763245, 54.751556, 56.795769>,  <50.529102, 54.762447, 57.119896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.763245, 54.751556, 56.795769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806126, 0.126438, 0.578079,
		0.086712, -0.991601, 0.095966,
		0.585357, -0.027234, -0.810318,
		50.938850, 54.743389, 56.552673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.016136, 54.329388, 57.306812>,  <50.529102, 54.762447, 57.119896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.016136, 54.329388, 57.306812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.165855, 54.575573, 57.029366>,  <51.255688, 54.723286, 56.862896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.165855, 54.575573, 57.029366>,  <51.016136, 54.329388, 57.306812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.165855, 54.575573, 57.029366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678245, 0.328376, 0.657383,
		0.632362, -0.716501, -0.294524,
		0.374301, 0.615463, -0.693616,
		51.278145, 54.760212, 56.821281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.744690, 54.409519, 57.398273>,  <51.016136, 54.329388, 57.306812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.744690, 54.409519, 57.398273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.604145, 54.750523, 57.243469>,  <51.519817, 54.955124, 57.150585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.604145, 54.750523, 57.243469>,  <51.744690, 54.409519, 57.398273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.604145, 54.750523, 57.243469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506830, 0.520757, 0.686975,
		0.787191, 0.045225, -0.615049,
		-0.351360, 0.852506, -0.387014,
		51.498737, 55.006275, 57.127365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.277767, 54.968517, 57.377739>,  <51.744690, 54.409519, 57.398273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.277767, 54.968517, 57.377739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.933064, 55.171021, 57.364616>,  <51.726242, 55.292522, 57.356743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.933064, 55.171021, 57.364616>,  <52.277767, 54.968517, 57.377739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.933064, 55.171021, 57.364616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345247, 0.632598, 0.693271,
		0.371728, 0.586105, -0.719930,
		-0.861756, 0.506262, -0.032803,
		51.674538, 55.322899, 57.354774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.967049, 55.054768, 57.592522>,  <52.277767, 54.968517, 57.377739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.967049, 55.054768, 57.592522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.894844, 55.341927, 57.861458>,  <52.851521, 55.514221, 58.022820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.894844, 55.341927, 57.861458>,  <52.967049, 55.054768, 57.592522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.894844, 55.341927, 57.861458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703050, -0.572217, 0.422242,
		0.687850, -0.396470, 0.608008,
		-0.180507, 0.717899, 0.672338,
		52.840691, 55.557297, 58.063160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.723862, 55.363186, 57.541847>,  <52.967049, 55.054768, 57.592522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.723862, 55.363186, 57.541847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.658970, 55.018692, 57.349197>,  <53.620033, 54.811996, 57.233608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.658970, 55.018692, 57.349197>,  <53.723862, 55.363186, 57.541847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.658970, 55.018692, 57.349197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866222, 0.109462, -0.487521,
		0.472588, -0.496283, 0.728260,
		-0.162232, -0.861232, -0.481622,
		53.610302, 54.760323, 57.204712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.303345, 54.958107, 57.610550>,  <53.723862, 55.363186, 57.541847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.303345, 54.958107, 57.610550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.123177, 54.811054, 57.285103>,  <54.015076, 54.722820, 57.089836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.123177, 54.811054, 57.285103>,  <54.303345, 54.958107, 57.610550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.123177, 54.811054, 57.285103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892557, -0.163347, -0.420310,
		0.021620, -0.915512, 0.401711,
		-0.450417, -0.367636, -0.813614,
		53.988052, 54.700764, 57.041019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.861801, 54.429691, 57.268810>,  <54.303345, 54.958107, 57.610550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.861801, 54.429691, 57.268810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.603546, 54.507431, 56.973412>,  <54.448593, 54.554073, 56.796173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.603546, 54.507431, 56.973412>,  <54.861801, 54.429691, 57.268810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.603546, 54.507431, 56.973412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756308, 0.029036, -0.653571,
		-0.105576, -0.980503, -0.165733,
		-0.645641, 0.194347, -0.738497,
		54.409855, 54.565735, 56.751862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.442024, 54.441113, 56.767944>,  <54.861801, 54.429691, 57.268810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.442024, 54.441113, 56.767944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.095711, 54.485424, 56.572746>,  <54.887924, 54.512012, 56.455627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.095711, 54.485424, 56.572746>,  <55.442024, 54.441113, 56.767944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.095711, 54.485424, 56.572746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499816, 0.143688, -0.854130,
		-0.024503, -0.983403, -0.179773,
		-0.865785, 0.110783, -0.487999,
		54.835976, 54.518658, 56.426346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.865055, 53.918884, 57.068108>,  <55.442024, 54.441113, 56.767944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.865055, 53.918884, 57.068108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.506310, 53.899864, 56.892212>,  <55.291061, 53.888451, 56.786674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.506310, 53.899864, 56.892212>,  <55.865055, 53.918884, 57.068108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.506310, 53.899864, 56.892212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171883, 0.878592, -0.445570,
		0.407538, -0.475200, -0.779806,
		-0.896866, -0.047552, -0.439738,
		55.237251, 53.885597, 56.760292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.012138, 53.552605, 57.824486>,  <55.865055, 53.918884, 57.068108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.012138, 53.552605, 57.824486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.349480, 53.487873, 58.029449>,  <56.551884, 53.449036, 58.152428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.349480, 53.487873, 58.029449>,  <56.012138, 53.552605, 57.824486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.349480, 53.487873, 58.029449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424264, 0.785734, -0.450135,
		-0.329776, 0.597021, 0.731310,
		0.843355, -0.161825, 0.512411,
		56.602486, 53.439327, 58.183174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.258209, 54.225559, 58.048458>,  <56.012138, 53.552605, 57.824486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.258209, 54.225559, 58.048458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.527069, 53.961014, 57.915306>,  <56.688385, 53.802284, 57.835415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.527069, 53.961014, 57.915306>,  <56.258209, 54.225559, 58.048458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.527069, 53.961014, 57.915306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596944, 0.750026, -0.284812,
		0.438038, -0.007278, 0.898927,
		0.672146, -0.661368, -0.332884,
		56.728714, 53.762604, 57.815441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.851395, 54.270489, 58.499321>,  <56.258209, 54.225559, 58.048458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.851395, 54.270489, 58.499321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.952553, 54.145233, 58.133156>,  <57.013248, 54.070080, 57.913456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.952553, 54.145233, 58.133156>,  <56.851395, 54.270489, 58.499321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.952553, 54.145233, 58.133156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483104, 0.860644, -0.160944,
		0.838246, -0.401540, 0.368931,
		0.252893, -0.313143, -0.915416,
		57.028419, 54.051289, 57.858532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.546040, 54.276966, 58.498566>,  <56.851395, 54.270489, 58.499321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.546040, 54.276966, 58.498566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.431610, 54.289150, 58.115479>,  <57.362953, 54.296459, 57.885624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.431610, 54.289150, 58.115479>,  <57.546040, 54.276966, 58.498566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.431610, 54.289150, 58.115479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438644, 0.892781, -0.102634,
		0.851911, -0.449461, -0.268763,
		-0.286077, 0.030457, -0.957722,
		57.345787, 54.298286, 57.828163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.017193, 54.576195, 58.047794>,  <57.546040, 54.276966, 58.498566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.017193, 54.576195, 58.047794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.128021, 54.287910, 57.793610>,  <58.194519, 54.114941, 57.641098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.128021, 54.287910, 57.793610>,  <58.017193, 54.576195, 58.047794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.128021, 54.287910, 57.793610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815525, -0.173324, 0.552158,
		-0.508085, -0.671222, 0.539732,
		0.277072, -0.720708, -0.635462,
		58.211143, 54.071697, 57.602970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.190464, 53.954823, 58.438656>,  <58.017193, 54.576195, 58.047794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.190464, 53.954823, 58.438656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.395485, 53.944405, 58.095352>,  <58.518497, 53.938152, 57.889370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.395485, 53.944405, 58.095352>,  <58.190464, 53.954823, 58.438656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.395485, 53.944405, 58.095352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854443, -0.083417, 0.512804,
		-0.084979, -0.996172, -0.020452,
		0.512548, -0.026102, -0.858262,
		58.549252, 53.936592, 57.837875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.592937, 53.371426, 58.420753>,  <58.190464, 53.954823, 58.438656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.592937, 53.371426, 58.420753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.755234, 53.632629, 58.164955>,  <58.852612, 53.789352, 58.011478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.755234, 53.632629, 58.164955>,  <58.592937, 53.371426, 58.420753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.755234, 53.632629, 58.164955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853954, -0.021452, 0.519906,
		0.325786, -0.757045, -0.566345,
		0.405742, 0.653011, -0.639493,
		58.876957, 53.828533, 57.973106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.177956, 53.077087, 58.204815>,  <58.592937, 53.371426, 58.420753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.177956, 53.077087, 58.204815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.181381, 53.477074, 58.204208>,  <59.183437, 53.717064, 58.203846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.181381, 53.477074, 58.204208>,  <59.177956, 53.077087, 58.204815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.181381, 53.477074, 58.204208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755186, -0.005471, 0.655488,
		0.655455, -0.006756, -0.755204,
		0.008560, 0.999962, -0.001516,
		59.183949, 53.777061, 58.203754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.804386, 53.340202, 57.983917>,  <59.177956, 53.077087, 58.204815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.804386, 53.340202, 57.983917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.561348, 53.502857, 58.256821>,  <59.415524, 53.600449, 58.420563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.561348, 53.502857, 58.256821>,  <59.804386, 53.340202, 57.983917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.561348, 53.502857, 58.256821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598555, -0.330206, 0.729860,
		0.522074, 0.851828, -0.042764,
		-0.607594, 0.406638, 0.682258,
		59.379070, 53.624847, 58.461498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.168575, 53.776024, 58.503155>,  <59.804386, 53.340202, 57.983917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.168575, 53.776024, 58.503155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.839607, 53.660431, 58.699165>,  <59.642227, 53.591076, 58.816772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.839607, 53.660431, 58.699165>,  <60.168575, 53.776024, 58.503155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.839607, 53.660431, 58.699165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560414, -0.263444, 0.785196,
		-0.097813, 0.920373, 0.378610,
		-0.822416, -0.288981, 0.490022,
		59.592884, 53.573738, 58.846172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.155712, 54.106762, 59.138969>,  <60.168575, 53.776024, 58.503155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.155712, 54.106762, 59.138969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.940613, 53.769753, 59.151466>,  <59.811554, 53.567547, 59.158962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.940613, 53.769753, 59.151466>,  <60.155712, 54.106762, 59.138969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.940613, 53.769753, 59.151466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527075, -0.307029, 0.792417,
		-0.658040, 0.442587, 0.609179,
		-0.537750, -0.842526, 0.031239,
		59.779289, 53.516994, 59.160839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.840527, 54.098083, 59.796490>,  <60.155712, 54.106762, 59.138969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.840527, 54.098083, 59.796490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.859154, 53.711136, 59.696869>,  <59.870331, 53.478966, 59.637096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.859154, 53.711136, 59.696869>,  <59.840527, 54.098083, 59.796490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.859154, 53.711136, 59.696869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425872, -0.206305, 0.880949,
		-0.903584, -0.147088, 0.402369,
		0.046566, -0.967369, -0.249055,
		59.873123, 53.420925, 59.622154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.450974, 53.393982, 60.125355>,  <59.840527, 54.098083, 59.796490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.450974, 53.393982, 60.125355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.810623, 53.335487, 59.960335>,  <60.026413, 53.300392, 59.861324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.810623, 53.335487, 59.960335>,  <59.450974, 53.393982, 60.125355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.810623, 53.335487, 59.960335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406256, -0.071988, 0.910919,
		-0.162907, -0.986627, -0.005317,
		0.899120, -0.146235, -0.412551,
		60.080360, 53.291618, 59.836571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.678844, 52.784256, 60.315857>,  <59.450974, 53.393982, 60.125355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.678844, 52.784256, 60.315857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.994499, 53.020855, 60.249649>,  <60.183891, 53.162815, 60.209923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.994499, 53.020855, 60.249649>,  <59.678844, 52.784256, 60.315857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.994499, 53.020855, 60.249649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255518, -0.071084, 0.964187,
		0.558550, -0.803166, -0.207233,
		0.789134, 0.591499, -0.165519,
		60.231239, 53.198303, 60.199993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.281540, 52.404999, 60.778984>,  <59.678844, 52.784256, 60.315857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.281540, 52.404999, 60.778984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.386238, 52.788689, 60.736320>,  <60.449059, 53.018902, 60.710724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.386238, 52.788689, 60.736320>,  <60.281540, 52.404999, 60.778984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.386238, 52.788689, 60.736320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087448, 0.086485, 0.992408,
		0.961167, -0.269085, -0.061245,
		0.261746, 0.959225, -0.106657,
		60.464764, 53.076458, 60.704323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.903019, 52.504616, 61.051788>,  <60.281540, 52.404999, 60.778984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.903019, 52.504616, 61.051788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.703033, 52.849709, 61.082077>,  <60.583042, 53.056763, 61.100250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.703033, 52.849709, 61.082077>,  <60.903019, 52.504616, 61.051788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.703033, 52.849709, 61.082077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263158, 0.068038, 0.962351,
		0.825098, 0.501065, -0.261051,
		-0.499962, 0.862731, 0.075721,
		60.553043, 53.108528, 61.104794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.341843, 53.056923, 61.243553>,  <60.903019, 52.504616, 61.051788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.341843, 53.056923, 61.243553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.979767, 53.147469, 61.387436>,  <60.762520, 53.201794, 61.473766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.979767, 53.147469, 61.387436>,  <61.341843, 53.056923, 61.243553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.979767, 53.147469, 61.387436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367370, -0.008810, 0.930033,
		0.213692, 0.974004, -0.075184,
		-0.905193, 0.226361, 0.359703,
		60.708210, 53.215378, 61.495346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.925888, 53.385708, 60.933777>,  <61.341843, 53.056923, 61.243553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.925888, 53.385708, 60.933777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.099388, 53.025330, 60.938637>,  <62.203487, 52.809101, 60.941551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.099388, 53.025330, 60.938637>,  <61.925888, 53.385708, 60.933777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.099388, 53.025330, 60.938637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871821, -0.423058, -0.246881,
		0.227566, 0.096494, -0.968970,
		0.433753, -0.900950, 0.012148,
		62.229515, 52.755043, 60.942280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.500134, 53.583118, 61.516926>,  <61.925888, 53.385708, 60.933777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.500134, 53.583118, 61.516926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.483337, 53.184975, 61.551552>,  <62.473259, 52.946087, 61.572327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.483337, 53.184975, 61.551552>,  <62.500134, 53.583118, 61.516926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.483337, 53.184975, 61.551552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968286, -0.061904, -0.242052,
		0.246288, 0.073657, 0.966394,
		-0.041995, -0.995361, 0.086567,
		62.470737, 52.886368, 61.577522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.009441, 53.232288, 62.065838>,  <62.500134, 53.583118, 61.516926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.009441, 53.232288, 62.065838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.910652, 53.029671, 61.735405>,  <62.851379, 52.908100, 61.537144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.910652, 53.029671, 61.735405>,  <63.009441, 53.232288, 62.065838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.910652, 53.029671, 61.735405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966790, -0.070963, -0.245524,
		0.065748, -0.859287, 0.507250,
		-0.246971, -0.506547, -0.826084,
		62.836559, 52.877708, 61.487579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.272114, 53.302361, 61.440723>,  <63.009441, 53.232288, 62.065838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.272114, 53.302361, 61.440723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.249908, 53.581776, 61.155357>,  <63.236584, 53.749424, 60.984138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.249908, 53.581776, 61.155357>,  <63.272114, 53.302361, 61.440723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.249908, 53.581776, 61.155357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961022, -0.156435, -0.227959,
		-0.270841, -0.698263, -0.662627,
		-0.055517, 0.698539, -0.713415,
		63.233253, 53.791336, 60.941334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.667049, 52.984276, 60.921757>,  <63.272114, 53.302361, 61.440723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.667049, 52.984276, 60.921757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.637413, 53.382896, 60.936707>,  <63.619633, 53.622070, 60.945675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.637413, 53.382896, 60.936707>,  <63.667049, 52.984276, 60.921757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.637413, 53.382896, 60.936707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997228, 0.073777, 0.009686,
		0.006896, 0.037990, -0.999254,
		-0.074090, 0.996551, 0.037376,
		63.615185, 53.681862, 60.947918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.252937, 53.304420, 60.596996>,  <63.667049, 52.984276, 60.921757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.252937, 53.304420, 60.596996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.134666, 53.610832, 60.825302>,  <64.063705, 53.794682, 60.962284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.134666, 53.610832, 60.825302>,  <64.252937, 53.304420, 60.596996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.134666, 53.610832, 60.825302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954643, 0.258902, 0.147060,
		-0.035119, 0.588356, -0.807839,
		-0.295675, 0.766033, 0.570762,
		64.045967, 53.840641, 60.996532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.643837, 53.907597, 60.471752>,  <64.252937, 53.304420, 60.596996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.643837, 53.907597, 60.471752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.500168, 53.972519, 60.839371>,  <64.413963, 54.011475, 61.059940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.500168, 53.972519, 60.839371>,  <64.643837, 53.907597, 60.471752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.500168, 53.972519, 60.839371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923108, 0.206699, 0.324265,
		-0.137335, 0.964848, -0.224070,
		-0.359182, 0.162308, 0.919046,
		64.392410, 54.021210, 61.115086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.667160, 54.593201, 60.851524>,  <64.643837, 53.907597, 60.471752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.667160, 54.593201, 60.851524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.699524, 54.263107, 61.075111>,  <64.718941, 54.065052, 61.209263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.699524, 54.263107, 61.075111>,  <64.667160, 54.593201, 60.851524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.699524, 54.263107, 61.075111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875379, 0.327009, 0.356058,
		-0.476617, 0.460497, 0.748852,
		0.080918, -0.825232, 0.558967,
		64.723801, 54.015537, 61.242802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.837349, 54.841312, 61.593960>,  <64.667160, 54.593201, 60.851524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.837349, 54.841312, 61.593960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.968819, 54.472225, 61.513397>,  <65.047699, 54.250774, 61.465061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.968819, 54.472225, 61.513397>,  <64.837349, 54.841312, 61.593960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.968819, 54.472225, 61.513397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864234, 0.207837, 0.458152,
		-0.380885, -0.324645, 0.865755,
		0.328673, -0.922718, -0.201407,
		65.067421, 54.195408, 61.452976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.271347, 54.709953, 62.134048>,  <64.837349, 54.841312, 61.593960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.271347, 54.709953, 62.134048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.381897, 54.442169, 61.858238>,  <65.448227, 54.281498, 61.692753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.381897, 54.442169, 61.858238>,  <65.271347, 54.709953, 62.134048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.381897, 54.442169, 61.858238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959284, 0.235636, 0.155724,
		0.058227, -0.704489, 0.707322,
		0.276377, -0.669456, -0.689525,
		65.464813, 54.241333, 61.651382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.814987, 54.351212, 62.405926>,  <65.271347, 54.709953, 62.134048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.814987, 54.351212, 62.405926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.842850, 54.281948, 62.012955>,  <65.859566, 54.240391, 61.777172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.842850, 54.281948, 62.012955>,  <65.814987, 54.351212, 62.405926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.842850, 54.281948, 62.012955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965808, 0.258240, 0.022955,
		0.249727, -0.950437, 0.185220,
		0.069648, -0.173154, -0.982429,
		65.863747, 54.230003, 61.718227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.392609, 53.835064, 62.324760>,  <65.814987, 54.351212, 62.405926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.392609, 53.835064, 62.324760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.355209, 54.103870, 62.030914>,  <66.332771, 54.265152, 61.854607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.355209, 54.103870, 62.030914>,  <66.392609, 53.835064, 62.324760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.355209, 54.103870, 62.030914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942946, 0.296585, 0.151292,
		0.319545, -0.678553, -0.661405,
		-0.093503, 0.672014, -0.734612,
		66.327156, 54.305473, 61.810532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.116264, 53.860077, 62.127876>,  <66.392609, 53.835064, 62.324760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.116264, 53.860077, 62.127876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.920570, 54.196785, 62.036606>,  <66.803154, 54.398811, 61.981842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.920570, 54.196785, 62.036606>,  <67.116264, 53.860077, 62.127876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.920570, 54.196785, 62.036606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803327, 0.536799, 0.257901,
		0.339579, -0.057127, -0.938841,
		-0.489236, 0.841774, -0.228177,
		66.773796, 54.449318, 61.968151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.446663, 54.259068, 61.546833>,  <67.116264, 53.860077, 62.127876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.446663, 54.259068, 61.546833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.253242, 54.505905, 61.795143>,  <67.137192, 54.654007, 61.944130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.253242, 54.505905, 61.795143>,  <67.446663, 54.259068, 61.546833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.253242, 54.505905, 61.795143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847820, 0.506554, 0.156855,
		-0.217663, 0.602157, -0.768133,
		-0.483553, 0.617098, 0.620780,
		67.108177, 54.691036, 61.981377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.147751, 53.698689, 61.044682>,  <67.446663, 54.259068, 61.546833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.147751, 53.698689, 61.044682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.036301, 53.327858, 61.145004>,  <66.969429, 53.105362, 61.205200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.036301, 53.327858, 61.145004>,  <67.147751, 53.698689, 61.044682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.036301, 53.327858, 61.145004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603212, 0.034290, 0.796843,
		-0.747333, 0.373306, 0.549669,
		-0.278618, -0.927074, 0.250809,
		66.952713, 53.049736, 61.220245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.781143, 53.856647, 60.605316>,  <67.147751, 53.698689, 61.044682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.781143, 53.856647, 60.605316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.640129, 53.958683, 60.245171>,  <67.555519, 54.019905, 60.029083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.640129, 53.958683, 60.245171>,  <67.781143, 53.856647, 60.605316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.640129, 53.958683, 60.245171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823214, 0.542075, -0.168742,
		0.445018, -0.800676, -0.401094,
		-0.352530, 0.255093, -0.900361,
		67.534370, 54.035210, 59.975063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.237274, 53.514225, 60.166080>,  <67.781143, 53.856647, 60.605316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.237274, 53.514225, 60.166080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.047630, 53.839237, 60.030418>,  <67.933846, 54.034245, 59.949020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.047630, 53.839237, 60.030418>,  <68.237274, 53.514225, 60.166080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.047630, 53.839237, 60.030418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879094, 0.458359, -0.130770,
		0.049201, -0.360150, -0.931596,
		-0.474102, 0.812526, -0.339157,
		67.905403, 54.082996, 59.928673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.395065, 53.671059, 59.418156>,  <68.237274, 53.514225, 60.166080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.395065, 53.671059, 59.418156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.319954, 53.991142, 59.645981>,  <68.274887, 54.183193, 59.782677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.319954, 53.991142, 59.645981>,  <68.395065, 53.671059, 59.418156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.319954, 53.991142, 59.645981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967181, 0.251697, -0.034769,
		-0.171181, 0.544345, -0.821210,
		-0.187769, 0.800211, 0.569566,
		68.263626, 54.231205, 59.816849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.509804, 54.379360, 59.064323>,  <68.395065, 53.671059, 59.418156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.509804, 54.379360, 59.064323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.590256, 54.272640, 59.441338>,  <68.638527, 54.208611, 59.667545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.590256, 54.272640, 59.441338>,  <68.509804, 54.379360, 59.064323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.590256, 54.272640, 59.441338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958396, 0.252549, -0.133027,
		-0.202544, 0.930074, 0.306494,
		0.201130, -0.266798, 0.942531,
		68.650597, 54.192600, 59.724098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.718140, 54.998112, 59.507652>,  <68.509804, 54.379360, 59.064323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.718140, 54.998112, 59.507652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.882866, 54.635494, 59.544716>,  <68.981697, 54.417923, 59.566952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.882866, 54.635494, 59.544716>,  <68.718140, 54.998112, 59.507652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.882866, 54.635494, 59.544716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907866, 0.416926, 0.044170,
		-0.078673, 0.065930, 0.994718,
		0.411812, -0.906546, 0.092656,
		69.006409, 54.363529, 59.572514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.212379, 54.994637, 60.000828>,  <68.718140, 54.998112, 59.507652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.212379, 54.994637, 60.000828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.344498, 54.683445, 59.787041>,  <69.423767, 54.496731, 59.658768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.344498, 54.683445, 59.787041>,  <69.212379, 54.994637, 60.000828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.344498, 54.683445, 59.787041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924741, 0.380166, 0.018112,
		0.189095, -0.500224, 0.844996,
		0.330299, -0.777978, -0.534465,
		69.443588, 54.450050, 59.626701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.795128, 54.626175, 60.264370>,  <69.212379, 54.994637, 60.000828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.795128, 54.626175, 60.264370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.812889, 54.575706, 59.867966>,  <69.823547, 54.545425, 59.630123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.812889, 54.575706, 59.867966>,  <69.795128, 54.626175, 60.264370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.812889, 54.575706, 59.867966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983825, 0.177844, 0.021438,
		0.173541, -0.975937, 0.132026,
		0.044403, -0.126171, -0.991014,
		69.826210, 54.537857, 59.570660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.396957, 54.745728, 59.915302>,  <69.795128, 54.626175, 60.264370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.396957, 54.745728, 59.915302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.280853, 54.948463, 59.590622>,  <70.211189, 55.070103, 59.395813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.280853, 54.948463, 59.590622>,  <70.396957, 54.745728, 59.915302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.280853, 54.948463, 59.590622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930457, 0.347673, -0.115640,
		0.223596, -0.788821, -0.572508,
		-0.290265, 0.506838, -0.811703,
		70.193771, 55.100513, 59.347111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.671463, 54.608852, 59.218842>,  <70.396957, 54.745728, 59.915302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.671463, 54.608852, 59.218842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.591583, 55.000790, 59.220871>,  <70.543655, 55.235950, 59.222088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.591583, 55.000790, 59.220871>,  <70.671463, 54.608852, 59.218842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.591583, 55.000790, 59.220871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977032, 0.199523, -0.074831,
		-0.074334, -0.009991, -0.997183,
		-0.199709, 0.979842, 0.005070,
		70.531670, 55.294743, 59.222393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.010529, 55.046963, 58.674576>,  <70.671463, 54.608852, 59.218842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.010529, 55.046963, 58.674576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.903114, 55.329601, 58.936447>,  <70.838661, 55.499184, 59.093571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.903114, 55.329601, 58.936447>,  <71.010529, 55.046963, 58.674576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.903114, 55.329601, 58.936447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943379, 0.330315, 0.030453,
		-0.194731, 0.625787, -0.755295,
		-0.268543, 0.706600, 0.654677,
		70.822548, 55.541580, 59.132851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.593506, 55.284042, 58.860046>,  <71.010529, 55.046963, 58.674576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.593506, 55.284042, 58.860046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.403214, 55.577896, 59.053535>,  <71.289040, 55.754208, 59.169628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.403214, 55.577896, 59.053535>,  <71.593506, 55.284042, 58.860046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.403214, 55.577896, 59.053535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870811, 0.470872, 0.141305,
		-0.123965, 0.488458, -0.863737,
		-0.475732, 0.734635, 0.483726,
		71.260490, 55.798286, 59.198654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.844315, 55.872765, 58.533600>,  <71.593506, 55.284042, 58.860046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.844315, 55.872765, 58.533600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.740295, 55.918930, 58.917068>,  <71.677879, 55.946629, 59.147148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.740295, 55.918930, 58.917068>,  <71.844315, 55.872765, 58.533600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.740295, 55.918930, 58.917068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873300, 0.451702, 0.182516,
		-0.411969, 0.884672, -0.218258,
		-0.260054, 0.115414, 0.958672,
		71.662277, 55.953556, 59.204670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.728271, 56.523014, 58.695812>,  <71.844315, 55.872765, 58.533600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.728271, 56.523014, 58.695812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.870453, 56.315865, 59.007057>,  <71.955765, 56.191574, 59.193802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.870453, 56.315865, 59.007057>,  <71.728271, 56.523014, 58.695812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.870453, 56.315865, 59.007057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896640, 0.424041, -0.127376,
		-0.263986, 0.742962, 0.615077,
		0.355453, -0.517877, 0.778111,
		71.977089, 56.160500, 59.240490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.117706, 57.183872, 58.937828>,  <71.728271, 56.523014, 58.695812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.117706, 57.183872, 58.937828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.193985, 56.824245, 58.780190>,  <72.239754, 56.608467, 58.685608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.193985, 56.824245, 58.780190>,  <72.117706, 57.183872, 58.937828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.193985, 56.824245, 58.780190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707067, 0.152684, -0.690466,
		0.680949, 0.410319, -0.606586,
		0.190696, -0.899069, -0.394093,
		72.251190, 56.554523, 58.661961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.017746, 57.370342, 58.289818>,  <72.117706, 57.183872, 58.937828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.017746, 57.370342, 58.289818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.012924, 56.973675, 58.238525>,  <72.010033, 56.735672, 58.207752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.012924, 56.973675, 58.238525>,  <72.017746, 57.370342, 58.289818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.012924, 56.973675, 58.238525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438534, 0.120494, -0.890600,
		0.898633, 0.045491, -0.436335,
		-0.012061, -0.991671, -0.128229,
		72.009308, 56.676174, 58.200058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.721619, 57.058270, 58.509155>,  <72.017746, 57.370342, 58.289818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.721619, 57.058270, 58.509155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630150, 57.446259, 58.476006>,  <72.575272, 57.679050, 58.456116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630150, 57.446259, 58.476006>,  <72.721619, 57.058270, 58.509155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.630150, 57.446259, 58.476006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853959, -0.158991, 0.495456,
		0.467400, 0.184072, 0.864671,
		-0.228674, 0.969969, -0.082878,
		72.561546, 57.737247, 58.451141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.753708, 57.500648, 59.195011>,  <72.721619, 57.058270, 58.509155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.753708, 57.500648, 59.195011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.496040, 57.696308, 58.959801>,  <72.341438, 57.813705, 58.818676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.496040, 57.696308, 58.959801>,  <72.753708, 57.500648, 59.195011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.496040, 57.696308, 58.959801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616572, 0.122864, 0.777653,
		0.452635, 0.863503, 0.222449,
		-0.644175, 0.489148, -0.588024,
		72.302788, 57.843052, 58.783394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.265762, 57.735302, 59.815224>,  <72.753708, 57.500648, 59.195011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.265762, 57.735302, 59.815224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.250946, 58.100899, 59.976837>,  <73.242058, 58.320259, 60.073807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.250946, 58.100899, 59.976837>,  <73.265762, 57.735302, 59.815224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.250946, 58.100899, 59.976837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413811, -0.382046, 0.826318,
		0.909609, -0.136585, 0.392372,
		-0.037041, 0.913994, 0.404032,
		73.239830, 58.375095, 60.098045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.350525, 57.616428, 60.551933>,  <73.265762, 57.735302, 59.815224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.350525, 57.616428, 60.551933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.172783, 57.962563, 60.459206>,  <73.066139, 58.170242, 60.403568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.172783, 57.962563, 60.459206>,  <73.350525, 57.616428, 60.551933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.172783, 57.962563, 60.459206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686510, -0.162665, 0.708692,
		0.575549, 0.474057, 0.666344,
		-0.444351, 0.865338, -0.231823,
		73.039474, 58.222164, 60.389660>
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
