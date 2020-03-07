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
	<36.266563, 52.541889, 49.858116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336788, 52.387230, 50.220261>,  <36.378922, 52.294434, 50.437550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336788, 52.387230, 50.220261>,  <36.266563, 52.541889, 49.858116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336788, 52.387230, 50.220261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644100, 0.740612, 0.191388,
		-0.744522, 0.549544, 0.379063,
		0.175562, -0.386647, 0.905363,
		36.389458, 52.271236, 50.491871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537308, 53.155888, 50.256542>,  <36.266563, 52.541889, 49.858116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537308, 53.155888, 50.256542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646130, 52.801235, 50.406136>,  <36.711422, 52.588444, 50.495892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646130, 52.801235, 50.406136>,  <36.537308, 53.155888, 50.256542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646130, 52.801235, 50.406136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937038, 0.332529, 0.106699,
		-0.218964, 0.321411, 0.921276,
		0.272057, -0.886633, 0.373987,
		36.727745, 52.535244, 50.518330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861404, 53.108410, 50.965385>,  <36.537308, 53.155888, 50.256542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861404, 53.108410, 50.965385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988144, 52.814259, 50.725777>,  <37.064190, 52.637768, 50.582012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988144, 52.814259, 50.725777>,  <36.861404, 53.108410, 50.965385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988144, 52.814259, 50.725777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943761, 0.307330, 0.121911,
		0.094445, -0.603957, 0.791401,
		0.316851, -0.735380, -0.599017,
		37.083199, 52.593643, 50.546070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211735, 52.478512, 51.225704>,  <36.861404, 53.108410, 50.965385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211735, 52.478512, 51.225704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348030, 52.624577, 50.879166>,  <37.429806, 52.712215, 50.671242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348030, 52.624577, 50.879166>,  <37.211735, 52.478512, 51.225704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348030, 52.624577, 50.879166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874967, 0.213996, 0.434325,
		0.343995, -0.906013, -0.246591,
		0.340734, 0.365165, -0.866346,
		37.450249, 52.734127, 50.619263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680958, 51.984745, 50.995399>,  <37.211735, 52.478512, 51.225704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680958, 51.984745, 50.995399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743408, 52.374519, 50.930771>,  <37.780880, 52.608383, 50.891994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743408, 52.374519, 50.930771>,  <37.680958, 51.984745, 50.995399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743408, 52.374519, 50.930771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912070, -0.079433, 0.402267,
		0.379148, -0.210172, -0.901152,
		0.156126, 0.974432, -0.161574,
		37.790245, 52.666847, 50.882298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300434, 52.170044, 50.522739>,  <37.680958, 51.984745, 50.995399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300434, 52.170044, 50.522739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230206, 52.453194, 50.796406>,  <38.188068, 52.623085, 50.960606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230206, 52.453194, 50.796406>,  <38.300434, 52.170044, 50.522739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230206, 52.453194, 50.796406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926709, -0.115697, 0.357524,
		0.332240, 0.696795, -0.635684,
		-0.175574, 0.707878, 0.684165,
		38.177532, 52.665558, 51.001656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776272, 52.762394, 50.462051>,  <38.300434, 52.170044, 50.522739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776272, 52.762394, 50.462051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663197, 52.698055, 50.840302>,  <38.595352, 52.659451, 51.067253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663197, 52.698055, 50.840302>,  <38.776272, 52.762394, 50.462051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663197, 52.698055, 50.840302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944038, -0.221315, 0.244566,
		0.169944, 0.961846, 0.214411,
		-0.282688, -0.160850, 0.945629,
		38.578392, 52.649799, 51.123989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153385, 53.265640, 51.004784>,  <38.776272, 52.762394, 50.462051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153385, 53.265640, 51.004784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076305, 52.901768, 51.151939>,  <39.030056, 52.683445, 51.240234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076305, 52.901768, 51.151939>,  <39.153385, 53.265640, 51.004784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076305, 52.901768, 51.151939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937766, -0.060346, 0.341985,
		-0.288897, 0.410895, 0.864699,
		-0.192700, -0.909683, 0.367889,
		39.018494, 52.628864, 51.262306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360989, 53.258274, 51.745773>,  <39.153385, 53.265640, 51.004784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360989, 53.258274, 51.745773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399376, 52.918171, 51.538757>,  <39.422409, 52.714108, 51.414547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399376, 52.918171, 51.538757>,  <39.360989, 53.258274, 51.745773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399376, 52.918171, 51.538757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940500, -0.092807, 0.326873,
		-0.325959, -0.518115, 0.790764,
		0.095969, -0.850261, -0.517539,
		39.428165, 52.663094, 51.383495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826107, 52.856594, 52.226318>,  <39.360989, 53.258274, 51.745773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826107, 52.856594, 52.226318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828255, 52.689133, 51.863068>,  <39.829544, 52.588657, 51.645115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828255, 52.689133, 51.863068>,  <39.826107, 52.856594, 52.226318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828255, 52.689133, 51.863068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980386, -0.176716, 0.087261,
		-0.197013, -0.890788, 0.409492,
		0.005367, -0.418651, -0.908131,
		39.829865, 52.563538, 51.590630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231815, 52.215599, 52.213703>,  <39.826107, 52.856594, 52.226318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231815, 52.215599, 52.213703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260078, 52.383888, 51.851929>,  <40.277035, 52.484863, 51.634865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260078, 52.383888, 51.851929>,  <40.231815, 52.215599, 52.213703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260078, 52.383888, 51.851929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942101, -0.326108, -0.078100,
		-0.327802, -0.846548, -0.419408,
		0.070657, 0.420726, -0.904432,
		40.281277, 52.510105, 51.580601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562634, 51.718800, 51.766445>,  <40.231815, 52.215599, 52.213703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562634, 51.718800, 51.766445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648758, 52.073700, 51.603268>,  <40.700432, 52.286640, 51.505360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648758, 52.073700, 51.603268>,  <40.562634, 51.718800, 51.766445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648758, 52.073700, 51.603268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943105, -0.297310, -0.148860,
		-0.253363, -0.352686, -0.900788,
		0.215313, 0.887254, -0.407947,
		40.713352, 52.339874, 51.480885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826138, 51.621208, 51.031651>,  <40.562634, 51.718800, 51.766445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826138, 51.621208, 51.031651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991219, 51.934849, 51.217064>,  <41.090267, 52.123032, 51.328312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991219, 51.934849, 51.217064>,  <40.826138, 51.621208, 51.031651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991219, 51.934849, 51.217064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910612, -0.367172, -0.189656,
		0.021487, 0.500370, -0.865545,
		0.412703, 0.784101, 0.463533,
		41.115028, 52.170078, 51.356125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393848, 51.934597, 50.534214>,  <40.826138, 51.621208, 51.031651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393848, 51.934597, 50.534214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441887, 51.978447, 50.928890>,  <41.470711, 52.004757, 51.165695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441887, 51.978447, 50.928890>,  <41.393848, 51.934597, 50.534214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441887, 51.978447, 50.928890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846440, -0.530658, -0.044064,
		0.518765, 0.840466, -0.156523,
		0.120094, 0.109628, 0.986691,
		41.477917, 52.011337, 51.224899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025749, 52.266441, 50.612873>,  <41.393848, 51.934597, 50.534214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025749, 52.266441, 50.612873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881962, 51.988541, 50.862064>,  <41.795689, 51.821800, 51.011581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881962, 51.988541, 50.862064>,  <42.025749, 52.266441, 50.612873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881962, 51.988541, 50.862064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659077, -0.661638, -0.357565,
		0.660606, 0.282059, 0.695732,
		-0.359468, -0.694750, 0.622981,
		41.774120, 51.780117, 51.048958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601322, 51.935257, 50.748657>,  <42.025749, 52.266441, 50.612873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601322, 51.935257, 50.748657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298630, 51.678722, 50.799343>,  <42.117016, 51.524803, 50.829754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298630, 51.678722, 50.799343>,  <42.601322, 51.935257, 50.748657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298630, 51.678722, 50.799343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590680, -0.753826, -0.287826,
		0.280112, -0.142959, 0.949263,
		-0.756726, -0.641334, 0.126712,
		42.071613, 51.486320, 50.837357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919044, 51.492496, 51.125980>,  <42.601322, 51.935257, 50.748657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919044, 51.492496, 51.125980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609699, 51.368233, 50.904926>,  <42.424091, 51.293674, 50.772293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609699, 51.368233, 50.904926>,  <42.919044, 51.492496, 51.125980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609699, 51.368233, 50.904926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525440, -0.801834, -0.284561,
		-0.354725, -0.510446, 0.783336,
		-0.773359, -0.310655, -0.552639,
		42.377693, 51.275036, 50.739136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676792, 51.417274, 51.256058>,  <42.919044, 51.492496, 51.125980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676792, 51.417274, 51.256058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719421, 51.042873, 51.390247>,  <43.744999, 50.818233, 51.470760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719421, 51.042873, 51.390247>,  <43.676792, 51.417274, 51.256058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719421, 51.042873, 51.390247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044237, -0.341526, -0.938831,
		0.993320, 0.085213, -0.077803,
		0.106573, -0.936001, 0.335475,
		43.751392, 50.762074, 51.490891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413586, 51.318150, 50.954418>,  <43.676792, 51.417274, 51.256058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413586, 51.318150, 50.954418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716446, 51.465275, 50.738480>,  <44.898163, 51.553551, 50.608917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716446, 51.465275, 50.738480>,  <44.413586, 51.318150, 50.954418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716446, 51.465275, 50.738480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343220, 0.479157, 0.807842,
		0.555807, -0.796946, 0.236553,
		0.757152, 0.367814, -0.539846,
		44.943592, 51.575619, 50.576527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028774, 51.210686, 51.276669>,  <44.413586, 51.318150, 50.954418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028774, 51.210686, 51.276669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045029, 51.555023, 51.073769>,  <45.054783, 51.761623, 50.952030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045029, 51.555023, 51.073769>,  <45.028774, 51.210686, 51.276669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045029, 51.555023, 51.073769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337703, 0.465962, 0.817824,
		0.940375, -0.204533, -0.271773,
		0.040636, 0.860840, -0.507251,
		45.057220, 51.813274, 50.921593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647091, 51.652042, 51.492661>,  <45.028774, 51.210686, 51.276669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647091, 51.652042, 51.492661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365417, 51.911682, 51.377563>,  <45.196411, 52.067467, 51.308506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365417, 51.911682, 51.377563>,  <45.647091, 51.652042, 51.492661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.365417, 51.911682, 51.377563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241801, 0.600279, 0.762363,
		0.667573, 0.467268, -0.579661,
		-0.704186, 0.649095, -0.287744,
		45.154163, 52.106411, 51.291241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.956528, 52.334560, 51.465111>,  <45.647091, 51.652042, 51.492661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.956528, 52.334560, 51.465111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566765, 52.390366, 51.535606>,  <45.332905, 52.423847, 51.577904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566765, 52.390366, 51.535606>,  <45.956528, 52.334560, 51.465111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566765, 52.390366, 51.535606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224546, 0.569086, 0.791025,
		0.010064, 0.810356, -0.585851,
		-0.974412, 0.139511, 0.176235,
		45.274441, 52.432220, 51.588478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721806, 53.147953, 51.581039>,  <45.956528, 52.334560, 51.465111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721806, 53.147953, 51.581039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493355, 52.867565, 51.751900>,  <45.356285, 52.699333, 51.854416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493355, 52.867565, 51.751900>,  <45.721806, 53.147953, 51.581039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493355, 52.867565, 51.751900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057167, 0.485143, 0.872564,
		-0.818869, 0.522764, -0.237006,
		-0.571127, -0.700966, 0.427154,
		45.322018, 52.657276, 51.880047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158363, 53.441547, 51.943600>,  <45.721806, 53.147953, 51.581039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158363, 53.441547, 51.943600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280716, 53.093887, 52.099041>,  <45.354126, 52.885292, 52.192307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280716, 53.093887, 52.099041>,  <45.158363, 53.441547, 51.943600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280716, 53.093887, 52.099041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076958, 0.384257, 0.920013,
		-0.948955, -0.311318, 0.050647,
		0.305878, -0.869153, 0.388602,
		45.372478, 52.833141, 52.215622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677097, 53.081852, 52.369324>,  <45.158363, 53.441547, 51.943600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677097, 53.081852, 52.369324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053215, 53.032269, 52.496124>,  <45.278885, 53.002518, 52.572205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053215, 53.032269, 52.496124>,  <44.677097, 53.081852, 52.369324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053215, 53.032269, 52.496124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261405, 0.333493, 0.905787,
		-0.217996, -0.934568, 0.281178,
		0.940290, -0.123956, 0.317001,
		45.335300, 52.995083, 52.591225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636669, 53.078861, 53.032780>,  <44.677097, 53.081852, 52.369324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636669, 53.078861, 53.032780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028858, 53.152008, 53.003864>,  <45.264172, 53.195896, 52.986515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028858, 53.152008, 53.003864>,  <44.636669, 53.078861, 53.032780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028858, 53.152008, 53.003864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009138, 0.324853, 0.945720,
		0.196420, -0.927918, 0.316840,
		0.980477, 0.182863, -0.072287,
		45.323002, 53.206867, 52.982178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921513, 52.662842, 53.490337>,  <44.636669, 53.078861, 53.032780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921513, 52.662842, 53.490337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144592, 52.983910, 53.405769>,  <45.278439, 53.176552, 53.355030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144592, 52.983910, 53.405769>,  <44.921513, 52.662842, 53.490337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144592, 52.983910, 53.405769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070944, 0.299869, 0.951339,
		0.827007, -0.515560, 0.224181,
		0.557697, 0.802668, -0.211418,
		45.311901, 53.224709, 53.342342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678375, 52.721256, 53.728569>,  <44.921513, 52.662842, 53.490337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678375, 52.721256, 53.728569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456924, 53.054108, 53.715500>,  <45.324055, 53.253819, 53.707661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456924, 53.054108, 53.715500>,  <45.678375, 52.721256, 53.728569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456924, 53.054108, 53.715500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199826, 0.170828, 0.964825,
		0.808436, 0.527623, -0.260854,
		-0.553625, 0.832125, -0.032671,
		45.290836, 53.303745, 53.705700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007793, 53.165829, 54.100407>,  <45.678375, 52.721256, 53.728569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007793, 53.165829, 54.100407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644268, 53.332596, 54.094162>,  <45.426155, 53.432655, 54.090416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644268, 53.332596, 54.094162>,  <46.007793, 53.165829, 54.100407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644268, 53.332596, 54.094162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155268, 0.372708, 0.914867,
		0.387239, 0.829018, -0.403455,
		-0.908811, 0.416916, -0.015607,
		45.371624, 53.457672, 54.089481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010136, 53.962811, 54.095703>,  <46.007793, 53.165829, 54.100407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010136, 53.962811, 54.095703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709568, 53.774960, 54.281097>,  <45.529228, 53.662251, 54.392334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709568, 53.774960, 54.281097>,  <46.010136, 53.962811, 54.095703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709568, 53.774960, 54.281097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320262, 0.354550, 0.878480,
		-0.576886, 0.808544, -0.116012,
		-0.751421, -0.469629, 0.463481,
		45.484142, 53.634071, 54.420143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521713, 54.336868, 54.475277>,  <46.010136, 53.962811, 54.095703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521713, 54.336868, 54.475277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605457, 53.970779, 54.612995>,  <45.655704, 53.751125, 54.695625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605457, 53.970779, 54.612995>,  <45.521713, 54.336868, 54.475277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605457, 53.970779, 54.612995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681313, 0.389094, 0.620014,
		-0.701413, 0.104766, 0.705013,
		0.209360, -0.915221, 0.344294,
		45.668266, 53.696213, 54.716282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062088, 54.933159, 54.766949>,  <45.521713, 54.336868, 54.475277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062088, 54.933159, 54.766949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985233, 54.540615, 54.768265>,  <45.939121, 54.305088, 54.769054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985233, 54.540615, 54.768265>,  <46.062088, 54.933159, 54.766949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985233, 54.540615, 54.768265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795015, 0.157612, 0.585756,
		-0.575358, 0.109930, -0.810481,
		-0.192133, -0.981363, 0.003287,
		45.927593, 54.246204, 54.769253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719158, 55.339596, 55.261780>,  <46.062088, 54.933159, 54.766949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719158, 55.339596, 55.261780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784019, 55.721535, 55.361351>,  <45.822937, 55.950699, 55.421093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784019, 55.721535, 55.361351>,  <45.719158, 55.339596, 55.261780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784019, 55.721535, 55.361351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982285, -0.132187, -0.132827,
		-0.093925, 0.266059, -0.959370,
		0.162156, 0.954850, 0.248930,
		45.832664, 56.007988, 55.436031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018475, 55.753021, 54.645027>,  <45.719158, 55.339596, 55.261780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018475, 55.753021, 54.645027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081059, 55.967815, 54.976608>,  <46.118607, 56.096691, 55.175556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081059, 55.967815, 54.976608>,  <46.018475, 55.753021, 54.645027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081059, 55.967815, 54.976608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970347, 0.073000, -0.230431,
		-0.184252, 0.840428, -0.509638,
		0.156458, 0.536983, 0.828957,
		46.127995, 56.128910, 55.225296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.608791, 56.232548, 54.449814>,  <46.018475, 55.753021, 54.645027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.608791, 56.232548, 54.449814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594025, 56.163166, 54.843475>,  <46.585167, 56.121536, 55.079670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594025, 56.163166, 54.843475>,  <46.608791, 56.232548, 54.449814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594025, 56.163166, 54.843475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982841, 0.171803, 0.067143,
		-0.180726, 0.969741, 0.164133,
		-0.036913, -0.173451, 0.984150,
		46.582951, 56.111130, 55.138721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.877659, 56.806625, 54.828384>,  <46.608791, 56.232548, 54.449814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.877659, 56.806625, 54.828384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.945877, 56.451279, 54.998901>,  <46.986809, 56.238071, 55.101212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.945877, 56.451279, 54.998901>,  <46.877659, 56.806625, 54.828384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.945877, 56.451279, 54.998901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985175, 0.145603, -0.090713,
		0.018517, 0.435440, 0.900027,
		0.170547, -0.888365, 0.426289,
		46.997040, 56.184769, 55.126789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212936, 56.773773, 55.526329>,  <46.877659, 56.806625, 54.828384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212936, 56.773773, 55.526329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287094, 56.494843, 55.249382>,  <47.331589, 56.327484, 55.083214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287094, 56.494843, 55.249382>,  <47.212936, 56.773773, 55.526329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.287094, 56.494843, 55.249382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923945, 0.363608, -0.118805,
		0.334595, -0.617679, 0.711701,
		0.185397, -0.697324, -0.692363,
		47.342712, 56.285645, 55.041672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.805138, 56.344536, 55.771679>,  <47.212936, 56.773773, 55.526329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.805138, 56.344536, 55.771679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762058, 56.360336, 55.374321>,  <47.736210, 56.369816, 55.135906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762058, 56.360336, 55.374321>,  <47.805138, 56.344536, 55.771679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762058, 56.360336, 55.374321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952619, 0.289999, -0.091746,
		0.284460, -0.956212, -0.068862,
		-0.107698, 0.039501, -0.993399,
		47.729748, 56.372189, 55.076302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.315037, 55.889423, 55.350887>,  <47.805138, 56.344536, 55.771679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.315037, 55.889423, 55.350887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.194740, 56.212795, 55.148499>,  <48.122562, 56.406818, 55.027065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.194740, 56.212795, 55.148499>,  <48.315037, 55.889423, 55.350887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.194740, 56.212795, 55.148499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933499, 0.358156, 0.017399,
		0.195281, -0.467090, -0.862376,
		-0.300739, 0.808425, -0.505969,
		48.104519, 56.455322, 54.996708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.516537, 55.848732, 54.691921>,  <48.315037, 55.889423, 55.350887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.516537, 55.848732, 54.691921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.482262, 56.199844, 54.880459>,  <48.461697, 56.410511, 54.993580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.482262, 56.199844, 54.880459>,  <48.516537, 55.848732, 54.691921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.482262, 56.199844, 54.880459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989953, 0.021601, 0.139739,
		0.112479, 0.478578, -0.870811,
		-0.085686, 0.877779, 0.471340,
		48.456554, 56.463177, 55.021862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.034389, 56.286633, 54.333694>,  <48.516537, 55.848732, 54.691921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.034389, 56.286633, 54.333694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.948250, 56.326283, 54.722290>,  <48.896564, 56.350075, 54.955448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.948250, 56.326283, 54.722290>,  <49.034389, 56.286633, 54.333694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.948250, 56.326283, 54.722290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970573, -0.088050, 0.224132,
		0.107757, 0.991171, -0.077250,
		-0.215352, 0.099128, 0.971492,
		48.883644, 56.356022, 55.013737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.548298, 56.730927, 54.550869>,  <49.034389, 56.286633, 54.333694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.548298, 56.730927, 54.550869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.452469, 56.484966, 54.851402>,  <49.394974, 56.337391, 55.031723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.452469, 56.484966, 54.851402>,  <49.548298, 56.730927, 54.550869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.452469, 56.484966, 54.851402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929813, 0.077378, 0.359807,
		-0.279382, 0.784800, 0.553204,
		-0.239570, -0.614899, 0.751335,
		49.380596, 56.300495, 55.076801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.906727, 56.923378, 55.149303>,  <49.548298, 56.730927, 54.550869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.906727, 56.923378, 55.149303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.821697, 56.540283, 55.226807>,  <49.770679, 56.310425, 55.273308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.821697, 56.540283, 55.226807>,  <49.906727, 56.923378, 55.149303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.821697, 56.540283, 55.226807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927637, -0.135485, 0.348042,
		-0.307082, 0.253723, 0.917238,
		-0.212579, -0.957741, 0.193758,
		49.757923, 56.252960, 55.284935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.116116, 56.771790, 55.789833>,  <49.906727, 56.923378, 55.149303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.116116, 56.771790, 55.789833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.083511, 56.413036, 55.615952>,  <50.063950, 56.197784, 55.511623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.083511, 56.413036, 55.615952>,  <50.116116, 56.771790, 55.789833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.083511, 56.413036, 55.615952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875078, -0.273167, 0.399523,
		-0.477069, -0.347832, 0.807104,
		-0.081507, -0.896879, -0.434700,
		50.059059, 56.143974, 55.485542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.173683, 56.287270, 56.321735>,  <50.116116, 56.771790, 55.789833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.173683, 56.287270, 56.321735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.274582, 56.113533, 55.975853>,  <50.335121, 56.009289, 55.768322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.274582, 56.113533, 55.975853>,  <50.173683, 56.287270, 56.321735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.274582, 56.113533, 55.975853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862722, -0.303785, 0.404259,
		-0.438273, -0.847973, 0.298091,
		0.252245, -0.434345, -0.864706,
		50.350254, 55.983231, 55.716442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.836266, 56.531998, 56.463768>,  <50.173683, 56.287270, 56.321735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.836266, 56.531998, 56.463768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750179, 56.248459, 56.195076>,  <50.698528, 56.078335, 56.033859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750179, 56.248459, 56.195076>,  <50.836266, 56.531998, 56.463768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.750179, 56.248459, 56.195076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868786, 0.175154, -0.463177,
		0.445976, -0.683273, 0.578137,
		-0.215213, -0.708843, -0.671733,
		50.685616, 56.035805, 55.993557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.374157, 55.945221, 56.532295>,  <50.836266, 56.531998, 56.463768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.374157, 55.945221, 56.532295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.192535, 56.040272, 56.188812>,  <51.083565, 56.097301, 55.982723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.192535, 56.040272, 56.188812>,  <51.374157, 55.945221, 56.532295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.192535, 56.040272, 56.188812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887009, 0.211408, -0.410514,
		0.083987, -0.948071, -0.306768,
		-0.454049, 0.237628, -0.858704,
		51.056320, 56.111561, 55.931202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.721478, 55.477921, 55.973286>,  <51.374157, 55.945221, 56.532295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.721478, 55.477921, 55.973286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.575123, 55.838959, 55.882561>,  <51.487312, 56.055584, 55.828125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.575123, 55.838959, 55.882561>,  <51.721478, 55.477921, 55.973286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.575123, 55.838959, 55.882561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872017, 0.247350, -0.422380,
		-0.325139, -0.352323, -0.877584,
		-0.365884, 0.902600, -0.226809,
		51.465359, 56.109737, 55.814518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.733498, 55.477669, 55.241852>,  <51.721478, 55.477921, 55.973286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.733498, 55.477669, 55.241852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.852390, 55.790867, 55.460419>,  <51.923725, 55.978786, 55.591560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.852390, 55.790867, 55.460419>,  <51.733498, 55.477669, 55.241852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.852390, 55.790867, 55.460419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946889, -0.168177, -0.274074,
		-0.122704, 0.598862, -0.791396,
		0.297227, 0.782995, 0.546420,
		51.941559, 56.025764, 55.624344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.252800, 55.772938, 54.782192>,  <51.733498, 55.477669, 55.241852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.252800, 55.772938, 54.782192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.304531, 55.855549, 55.170135>,  <52.335571, 55.905113, 55.402901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.304531, 55.855549, 55.170135>,  <52.252800, 55.772938, 54.782192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.304531, 55.855549, 55.170135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990372, 0.021778, -0.136704,
		-0.049354, 0.978199, -0.201721,
		0.129331, 0.206526, 0.969856,
		52.343330, 55.917507, 55.461094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.665249, 56.490829, 54.893776>,  <52.252800, 55.772938, 54.782192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.665249, 56.490829, 54.893776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.717182, 56.221260, 55.184700>,  <52.748341, 56.059521, 55.359253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.717182, 56.221260, 55.184700>,  <52.665249, 56.490829, 54.893776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.717182, 56.221260, 55.184700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989735, 0.132269, -0.054117,
		-0.059730, 0.726866, 0.684177,
		0.129831, -0.673922, 0.727306,
		52.756130, 56.019085, 55.402893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.133934, 56.829472, 55.313259>,  <52.665249, 56.490829, 54.893776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.133934, 56.829472, 55.313259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.133305, 56.430893, 55.346931>,  <53.132927, 56.191746, 55.367134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.133305, 56.430893, 55.346931>,  <53.133934, 56.829472, 55.313259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.133305, 56.430893, 55.346931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999561, 0.000928, 0.029611,
		-0.029584, 0.084191, 0.996010,
		-0.001569, -0.996449, 0.084182,
		53.132835, 56.131958, 55.372185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.481651, 56.565197, 55.994606>,  <53.133934, 56.829472, 55.313259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.481651, 56.565197, 55.994606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.520992, 56.316772, 55.683578>,  <53.544598, 56.167717, 55.496964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.520992, 56.316772, 55.683578>,  <53.481651, 56.565197, 55.994606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.520992, 56.316772, 55.683578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993910, 0.022277, 0.107922,
		-0.049704, -0.783449, 0.619465,
		0.098351, -0.621057, -0.777570,
		53.550499, 56.130455, 55.450306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.960526, 56.961624, 56.520279>,  <53.481651, 56.565197, 55.994606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.960526, 56.961624, 56.520279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.196030, 56.948002, 56.843315>,  <54.337330, 56.939827, 57.037136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.196030, 56.948002, 56.843315>,  <53.960526, 56.961624, 56.520279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.196030, 56.948002, 56.843315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808161, 0.005550, -0.588936,
		0.015574, 0.999404, 0.030789,
		0.588756, -0.034054, 0.807593,
		54.372658, 56.937786, 57.085594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.555534, 57.164173, 56.316502>,  <53.960526, 56.961624, 56.520279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.555534, 57.164173, 56.316502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.655106, 56.981606, 56.658195>,  <54.714848, 56.872066, 56.863213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.655106, 56.981606, 56.658195>,  <54.555534, 57.164173, 56.316502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.655106, 56.981606, 56.658195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898918, -0.219446, -0.379196,
		0.360530, 0.862281, 0.355653,
		0.248927, -0.456415, 0.854237,
		54.729782, 56.844681, 56.914467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.123253, 57.492165, 56.761734>,  <54.555534, 57.164173, 56.316502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.123253, 57.492165, 56.761734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.121414, 57.092224, 56.768379>,  <55.120312, 56.852261, 56.772366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.121414, 57.092224, 56.768379>,  <55.123253, 57.492165, 56.761734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.121414, 57.092224, 56.768379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933536, -0.010243, -0.358337,
		0.358454, 0.013858, 0.933445,
		-0.004595, -0.999852, 0.016609,
		55.120037, 56.792267, 56.773361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.764275, 57.273293, 57.212242>,  <55.123253, 57.492165, 56.761734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.764275, 57.273293, 57.212242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.597389, 57.029728, 56.942383>,  <55.497257, 56.883587, 56.780468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.597389, 57.029728, 56.942383>,  <55.764275, 57.273293, 57.212242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.597389, 57.029728, 56.942383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862449, -0.031219, -0.505180,
		0.286550, -0.792620, 0.538185,
		-0.417217, -0.608917, -0.674649,
		55.472225, 56.847054, 56.739986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.050114, 56.566669, 57.162674>,  <55.764275, 57.273293, 57.212242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.050114, 56.566669, 57.162674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893730, 56.691967, 56.816490>,  <55.799900, 56.767147, 56.608780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893730, 56.691967, 56.816490>,  <56.050114, 56.566669, 57.162674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.893730, 56.691967, 56.816490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907924, -0.023095, -0.418498,
		-0.151081, -0.949391, -0.275376,
		-0.390959, 0.313248, -0.865464,
		55.776443, 56.785942, 56.556850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.047794, 55.993057, 56.565216>,  <56.050114, 56.566669, 57.162674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.047794, 55.993057, 56.565216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.108002, 56.386337, 56.523918>,  <56.144127, 56.622307, 56.499142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.108002, 56.386337, 56.523918>,  <56.047794, 55.993057, 56.565216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.108002, 56.386337, 56.523918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957028, -0.171102, -0.234141,
		-0.247872, -0.063561, -0.966705,
		0.150523, 0.983201, -0.103241,
		56.153160, 56.681297, 56.492947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.468216, 56.174793, 55.919147>,  <56.047794, 55.993057, 56.565216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.468216, 56.174793, 55.919147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.528099, 56.441830, 56.210876>,  <56.564030, 56.602051, 56.385914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.528099, 56.441830, 56.210876>,  <56.468216, 56.174793, 55.919147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.528099, 56.441830, 56.210876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988640, -0.110997, -0.101341,
		0.013298, 0.736209, -0.676624,
		0.149711, 0.667590, 0.729322,
		56.573013, 56.642105, 56.429672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.918846, 56.589031, 55.669624>,  <56.468216, 56.174793, 55.919147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.918846, 56.589031, 55.669624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.969482, 56.653069, 56.061203>,  <56.999863, 56.691490, 56.296150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.969482, 56.653069, 56.061203>,  <56.918846, 56.589031, 55.669624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.969482, 56.653069, 56.061203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988151, 0.065989, -0.138571,
		-0.086784, 0.984894, -0.149841,
		0.126590, 0.160091, 0.978951,
		57.007458, 56.701096, 56.354889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.608459, 56.901573, 55.767487>,  <56.918846, 56.589031, 55.669624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.608459, 56.901573, 55.767487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.514679, 56.765968, 56.131927>,  <57.458408, 56.684605, 56.350590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.514679, 56.765968, 56.131927>,  <57.608459, 56.901573, 55.767487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.514679, 56.765968, 56.131927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971766, -0.056176, 0.229162,
		-0.026507, 0.939103, 0.342612,
		-0.234453, -0.339013, 0.911099,
		57.444344, 56.664265, 56.405258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.865089, 57.305035, 56.394951>,  <57.608459, 56.901573, 55.767487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.865089, 57.305035, 56.394951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.846558, 56.919983, 56.501678>,  <57.835438, 56.688950, 56.565716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.846558, 56.919983, 56.501678>,  <57.865089, 57.305035, 56.394951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.846558, 56.919983, 56.501678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885187, 0.084218, 0.457549,
		-0.462922, 0.257388, 0.848207,
		-0.046334, -0.962631, 0.266823,
		57.832657, 56.631195, 56.581726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.301441, 57.329163, 56.918373>,  <57.865089, 57.305035, 56.394951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.301441, 57.329163, 56.918373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.270462, 56.939991, 56.831276>,  <58.251873, 56.706490, 56.779018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.270462, 56.939991, 56.831276>,  <58.301441, 57.329163, 56.918373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.270462, 56.939991, 56.831276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929282, -0.149561, 0.337737,
		-0.361160, -0.176190, 0.915708,
		-0.077448, -0.972928, -0.217746,
		58.247227, 56.648113, 56.765953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.584953, 56.970985, 57.507027>,  <58.301441, 57.329163, 56.918373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.584953, 56.970985, 57.507027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.607552, 56.727489, 57.190483>,  <58.621109, 56.581390, 57.000557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.607552, 56.727489, 57.190483>,  <58.584953, 56.970985, 57.507027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.607552, 56.727489, 57.190483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908571, -0.297239, 0.293510,
		-0.413893, -0.735584, 0.536291,
		0.056496, -0.608740, -0.791356,
		58.624500, 56.544868, 56.953075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.220722, 57.088776, 58.222767>,  <58.584953, 56.970985, 57.507027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.220722, 57.088776, 58.222767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.860809, 57.225960, 58.114861>,  <57.644863, 57.308270, 58.050117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.860809, 57.225960, 58.114861>,  <58.220722, 57.088776, 58.222767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.860809, 57.225960, 58.114861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396451, 0.384301, -0.833750,
		-0.182270, -0.857142, -0.481753,
		-0.899780, 0.342959, -0.269768,
		57.590874, 57.328846, 58.033932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.920387, 57.000458, 58.357510>,  <58.220722, 57.088776, 58.222767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.920387, 57.000458, 58.357510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.964333, 56.741199, 58.658928>,  <58.990700, 56.585644, 58.839779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.964333, 56.741199, 58.658928>,  <58.920387, 57.000458, 58.357510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.964333, 56.741199, 58.658928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821974, -0.367006, -0.435506,
		0.558829, 0.667242, 0.492441,
		0.109859, -0.648147, 0.753549,
		58.997292, 56.546757, 58.884995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.196148, 57.561043, 58.694141>,  <58.920387, 57.000458, 58.357510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.196148, 57.561043, 58.694141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.498085, 57.394112, 58.491737>,  <59.679249, 57.293953, 58.370296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.498085, 57.394112, 58.491737>,  <59.196148, 57.561043, 58.694141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.498085, 57.394112, 58.491737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074276, 0.820894, -0.566230,
		0.651682, 0.389832, 0.650647,
		0.754847, -0.417329, -0.506007,
		59.724541, 57.268913, 58.339935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.728775, 57.579975, 59.392570>,  <59.196148, 57.561043, 58.694141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.728775, 57.579975, 59.392570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.853806, 57.915871, 59.570168>,  <59.928825, 58.117409, 59.676727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.853806, 57.915871, 59.570168>,  <59.728775, 57.579975, 59.392570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.853806, 57.915871, 59.570168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818859, -0.475104, 0.322097,
		0.481420, 0.262886, -0.836137,
		0.312577, 0.839742, 0.443991,
		59.947578, 58.167793, 59.703365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.480804, 57.567844, 59.306026>,  <59.728775, 57.579975, 59.392570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.480804, 57.567844, 59.306026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.376480, 57.782650, 59.626923>,  <60.313885, 57.911533, 59.819462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.376480, 57.782650, 59.626923>,  <60.480804, 57.567844, 59.306026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.376480, 57.782650, 59.626923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823186, -0.310412, 0.475404,
		0.504325, 0.784385, -0.361105,
		-0.260808, 0.537015, 0.802243,
		60.298237, 57.943756, 59.867596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.893929, 58.098675, 59.465874>,  <60.480804, 57.567844, 59.306026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.893929, 58.098675, 59.465874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.742554, 57.963295, 59.810486>,  <60.651730, 57.882069, 60.017254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.742554, 57.963295, 59.810486>,  <60.893929, 58.098675, 59.465874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.742554, 57.963295, 59.810486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925603, -0.145344, 0.349478,
		0.006938, 0.929692, 0.368273,
		-0.378433, -0.338449, 0.861534,
		60.629025, 57.861759, 60.068947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.850006, 58.586159, 60.054783>,  <60.893929, 58.098675, 59.465874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.850006, 58.586159, 60.054783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.924515, 58.200485, 60.130310>,  <60.969219, 57.969082, 60.175625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.924515, 58.200485, 60.130310>,  <60.850006, 58.586159, 60.054783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.924515, 58.200485, 60.130310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871094, 0.250959, 0.422156,
		-0.454421, 0.085839, 0.886642,
		0.186273, -0.964184, 0.188815,
		60.980396, 57.911228, 60.186954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.208008, 59.199684, 59.973171>,  <60.850006, 58.586159, 60.054783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.208008, 59.199684, 59.973171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.526093, 59.325535, 59.765846>,  <61.716942, 59.401047, 59.641453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.526093, 59.325535, 59.765846>,  <61.208008, 59.199684, 59.973171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.526093, 59.325535, 59.765846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604362, -0.342408, 0.719377,
		0.048863, -0.885305, -0.462437,
		0.795210, 0.314630, -0.518313,
		61.764656, 59.419922, 59.610352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.699619, 58.737305, 59.974201>,  <61.208008, 59.199684, 59.973171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.699619, 58.737305, 59.974201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.891174, 59.088367, 59.966331>,  <62.006107, 59.299004, 59.961609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.891174, 59.088367, 59.966331>,  <61.699619, 58.737305, 59.974201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.891174, 59.088367, 59.966331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583807, -0.301654, 0.753773,
		0.655616, -0.372462, -0.656840,
		0.478890, 0.877654, -0.019677,
		62.034840, 59.351665, 59.960430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.443901, 58.750004, 59.826118>,  <61.699619, 58.737305, 59.974201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.443901, 58.750004, 59.826118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.356308, 59.065777, 60.055496>,  <62.303753, 59.255241, 60.193123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.356308, 59.065777, 60.055496>,  <62.443901, 58.750004, 59.826118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.356308, 59.065777, 60.055496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345712, -0.486804, 0.802188,
		0.912430, 0.373913, -0.166315,
		-0.218986, 0.789437, 0.573441,
		62.290611, 59.302608, 60.227528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.028210, 58.933613, 60.290928>,  <62.443901, 58.750004, 59.826118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.028210, 58.933613, 60.290928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.671631, 59.038750, 60.438568>,  <62.457684, 59.101833, 60.527153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.671631, 59.038750, 60.438568>,  <63.028210, 58.933613, 60.290928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.671631, 59.038750, 60.438568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207315, -0.487717, 0.848029,
		0.402913, 0.832494, 0.380283,
		-0.891449, 0.262843, 0.369096,
		62.404198, 59.117603, 60.549297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.200333, 59.337780, 59.742424>,  <63.028210, 58.933613, 60.290928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.200333, 59.337780, 59.742424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.166595, 59.421196, 59.352676>,  <63.146351, 59.471245, 59.118828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.166595, 59.421196, 59.352676>,  <63.200333, 59.337780, 59.742424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.166595, 59.421196, 59.352676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139096, 0.970744, 0.195724,
		0.986680, -0.119022, -0.110887,
		-0.084347, 0.208541, -0.974370,
		63.141293, 59.483757, 59.060364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.817543, 59.828575, 59.589050>,  <63.200333, 59.337780, 59.742424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.817543, 59.828575, 59.589050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.027214, 60.162178, 59.657951>,  <64.153015, 60.362339, 59.699291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.027214, 60.162178, 59.657951>,  <63.817543, 59.828575, 59.589050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.027214, 60.162178, 59.657951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706066, -0.538702, 0.459642,
		0.476139, -0.119310, -0.871239,
		0.524178, 0.834006, 0.172256,
		64.184471, 60.412380, 59.709629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.504280, 59.571209, 59.493099>,  <63.817543, 59.828575, 59.589050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.504280, 59.571209, 59.493099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.475868, 59.891224, 59.731392>,  <64.458817, 60.083233, 59.874367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.475868, 59.891224, 59.731392>,  <64.504280, 59.571209, 59.493099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.475868, 59.891224, 59.731392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662953, -0.408377, 0.627472,
		0.745283, 0.439516, -0.501377,
		-0.071034, 0.800034, 0.595735,
		64.454559, 60.131233, 59.910110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.238670, 59.837425, 59.617531>,  <64.504280, 59.571209, 59.493099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.238670, 59.837425, 59.617531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.978607, 59.903877, 59.914101>,  <64.822571, 59.943748, 60.092041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.978607, 59.903877, 59.914101>,  <65.238670, 59.837425, 59.617531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.978607, 59.903877, 59.914101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619926, -0.448223, 0.644041,
		0.439316, 0.878349, 0.188424,
		-0.650149, 0.166129, 0.741423,
		64.783562, 59.953716, 60.136528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.540558, 60.258259, 60.141548>,  <65.238670, 59.837425, 59.617531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.540558, 60.258259, 60.141548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.258980, 60.037495, 60.320374>,  <65.090034, 59.905037, 60.427670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.258980, 60.037495, 60.320374>,  <65.540558, 60.258259, 60.141548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.258980, 60.037495, 60.320374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665689, -0.293220, 0.686207,
		-0.247637, 0.780653, 0.573810,
		-0.703942, -0.551909, 0.447060,
		65.047798, 59.871922, 60.454491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.373940, 60.359200, 60.916950>,  <65.540558, 60.258259, 60.141548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.373940, 60.359200, 60.916950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.277260, 59.978073, 60.843498>,  <65.219254, 59.749397, 60.799427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.277260, 59.978073, 60.843498>,  <65.373940, 60.359200, 60.916950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.277260, 59.978073, 60.843498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726587, -0.303145, 0.616583,
		-0.643158, 0.015604, 0.765575,
		-0.241701, -0.952817, -0.183633,
		65.204750, 59.692226, 60.788410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.365379, 59.956299, 61.558941>,  <65.373940, 60.359200, 60.916950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.365379, 59.956299, 61.558941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.474510, 59.740227, 61.240501>,  <65.539986, 59.610584, 61.049438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.474510, 59.740227, 61.240501>,  <65.365379, 59.956299, 61.558941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.474510, 59.740227, 61.240501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917325, -0.103348, 0.384492,
		-0.289971, -0.835178, 0.467328,
		0.272822, -0.540183, -0.796097,
		65.556358, 59.578171, 61.001671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.608681, 59.323860, 61.792915>,  <65.365379, 59.956299, 61.558941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.608681, 59.323860, 61.792915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.778351, 59.418545, 61.443275>,  <65.880150, 59.475353, 61.233494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.778351, 59.418545, 61.443275>,  <65.608681, 59.323860, 61.792915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.778351, 59.418545, 61.443275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895486, -0.253348, 0.365949,
		-0.134828, -0.937968, -0.319434,
		0.424177, 0.236709, -0.874096,
		65.905602, 59.489559, 61.181046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.827347, 58.677773, 61.567726>,  <65.608681, 59.323860, 61.792915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.827347, 58.677773, 61.567726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.033791, 59.004456, 61.464485>,  <66.157654, 59.200466, 61.402538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.033791, 59.004456, 61.464485>,  <65.827347, 58.677773, 61.567726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.033791, 59.004456, 61.464485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794959, -0.344570, 0.499311,
		0.318856, -0.462882, -0.827086,
		0.516112, 0.816707, -0.258104,
		66.188622, 59.249466, 61.387054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.534851, 58.554413, 61.593086>,  <65.827347, 58.677773, 61.567726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.534851, 58.554413, 61.593086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.527794, 58.953667, 61.616463>,  <66.523560, 59.193218, 61.630489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.527794, 58.953667, 61.616463>,  <66.534851, 58.554413, 61.593086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.527794, 58.953667, 61.616463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956673, -0.000131, 0.291165,
		0.290630, 0.061052, -0.954886,
		-0.017651, 0.998135, 0.058445,
		66.522499, 59.253105, 61.633995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.052483, 59.004696, 61.277889>,  <66.534851, 58.554413, 61.593086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.052483, 59.004696, 61.277889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.942390, 59.256367, 61.568649>,  <66.876335, 59.407368, 61.743103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.942390, 59.256367, 61.568649>,  <67.052483, 59.004696, 61.277889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.942390, 59.256367, 61.568649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954029, 0.272053, 0.125758,
		-0.118631, 0.728095, -0.675132,
		-0.275236, 0.629177, 0.726898,
		66.859818, 59.445122, 61.786720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.272209, 59.693165, 61.049946>,  <67.052483, 59.004696, 61.277889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.272209, 59.693165, 61.049946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.252373, 59.696373, 61.449440>,  <67.240471, 59.698299, 61.689137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.252373, 59.696373, 61.449440>,  <67.272209, 59.693165, 61.049946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.252373, 59.696373, 61.449440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981440, 0.185859, 0.047236,
		-0.185245, 0.982544, -0.017089,
		-0.049587, 0.008022, 0.998738,
		67.237495, 59.698780, 61.749062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.626923, 60.225590, 61.384464>,  <67.272209, 59.693165, 61.049946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.626923, 60.225590, 61.384464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.619362, 59.883583, 61.591766>,  <67.614822, 59.678379, 61.716148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.619362, 59.883583, 61.591766>,  <67.626923, 60.225590, 61.384464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.619362, 59.883583, 61.591766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999240, -0.033831, -0.019374,
		0.034098, 0.517494, 0.855007,
		-0.018900, -0.855018, 0.518255,
		67.613693, 59.627079, 61.747242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.392220, 60.240379, 61.309155>,  <67.626923, 60.225590, 61.384464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.392220, 60.240379, 61.309155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.301575, 59.912327, 61.519310>,  <68.247185, 59.715496, 61.645401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.301575, 59.912327, 61.519310>,  <68.392220, 60.240379, 61.309155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.301575, 59.912327, 61.519310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932174, -0.026280, 0.361056,
		-0.282306, 0.571572, 0.770460,
		-0.226617, -0.820131, 0.525386,
		68.233589, 59.666286, 61.676926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.313805, 60.204082, 62.122231>,  <68.392220, 60.240379, 61.309155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.313805, 60.204082, 62.122231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.441132, 59.859924, 61.963036>,  <68.517525, 59.653427, 61.867519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.441132, 59.859924, 61.963036>,  <68.313805, 60.204082, 62.122231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.441132, 59.859924, 61.963036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912497, 0.164295, 0.374641,
		-0.256955, -0.482412, 0.837409,
		0.318313, -0.860399, -0.397983,
		68.536629, 59.601803, 61.843639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.537140, 59.735199, 62.543133>,  <68.313805, 60.204082, 62.122231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.537140, 59.735199, 62.543133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.747520, 59.726109, 62.203049>,  <68.873749, 59.720654, 61.998997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.747520, 59.726109, 62.203049>,  <68.537140, 59.735199, 62.543133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.747520, 59.726109, 62.203049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829733, 0.233349, 0.507042,
		0.186872, -0.972127, 0.141589,
		0.525949, -0.022729, -0.850213,
		68.905304, 59.719292, 61.947987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.182983, 59.577385, 62.703594>,  <68.537140, 59.735199, 62.543133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.182983, 59.577385, 62.703594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.226593, 59.746712, 62.343834>,  <69.252762, 59.848309, 62.127979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.226593, 59.746712, 62.343834>,  <69.182983, 59.577385, 62.703594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.226593, 59.746712, 62.343834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902502, 0.337091, 0.268066,
		0.416656, -0.840934, -0.345293,
		0.109031, 0.423319, -0.899396,
		69.259300, 59.873707, 62.074017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.875298, 59.732887, 62.687840>,  <69.182983, 59.577385, 62.703594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.875298, 59.732887, 62.687840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.793694, 59.882446, 62.325935>,  <69.744736, 59.972183, 62.108795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.793694, 59.882446, 62.325935>,  <69.875298, 59.732887, 62.687840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.793694, 59.882446, 62.325935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941833, 0.327097, -0.077192,
		0.267081, -0.867876, -0.418878,
		-0.204007, 0.373896, -0.904756,
		69.732491, 59.994614, 62.054508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.165878, 59.387394, 62.195576>,  <69.875298, 59.732887, 62.687840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.165878, 59.387394, 62.195576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.132050, 59.758934, 62.051308>,  <70.111755, 59.981857, 61.964745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.132050, 59.758934, 62.051308>,  <70.165878, 59.387394, 62.195576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.132050, 59.758934, 62.051308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991710, 0.113611, 0.060044,
		0.096748, -0.352606, -0.930757,
		-0.084573, 0.928850, -0.360674,
		70.106674, 60.037590, 61.943104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.738647, 58.857655, 62.238232>,  <70.165878, 59.387394, 62.195576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.738647, 58.857655, 62.238232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.931343, 59.146969, 62.040329>,  <71.046959, 59.320557, 61.921589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.931343, 59.146969, 62.040329>,  <70.738647, 58.857655, 62.238232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.931343, 59.146969, 62.040329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832872, -0.202355, 0.515148,
		0.272482, -0.660238, -0.699886,
		0.481745, 0.723283, -0.494756,
		71.075867, 59.363953, 61.891903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.243736, 58.593212, 61.938431>,  <70.738647, 58.857655, 62.238232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.243736, 58.593212, 61.938431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.337578, 58.981430, 61.960365>,  <71.393883, 59.214359, 61.973526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.337578, 58.981430, 61.960365>,  <71.243736, 58.593212, 61.938431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.337578, 58.981430, 61.960365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889754, -0.237117, 0.390018,
		0.391533, -0.042707, -0.919173,
		0.234608, 0.970542, 0.054841,
		71.407959, 59.272594, 61.976818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.854370, 58.545238, 61.621414>,  <71.243736, 58.593212, 61.938431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.854370, 58.545238, 61.621414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.827927, 58.850990, 61.877960>,  <71.812065, 59.034443, 62.031887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.827927, 58.850990, 61.877960>,  <71.854370, 58.545238, 61.621414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.827927, 58.850990, 61.877960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855095, -0.287872, 0.431211,
		0.514241, 0.576934, -0.634589,
		-0.066100, 0.764380, 0.641368,
		71.808098, 59.080303, 62.070370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.269516, 57.950886, 61.281979>,  <71.854370, 58.545238, 61.621414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.269516, 57.950886, 61.281979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.565437, 57.779442, 61.074524>,  <72.742989, 57.676575, 60.950050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.565437, 57.779442, 61.074524>,  <72.269516, 57.950886, 61.281979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.565437, 57.779442, 61.074524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389651, 0.901344, -0.189080,
		0.548509, -0.062204, 0.833827,
		0.739804, -0.428614, -0.518633,
		72.787376, 57.650856, 60.918934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.914375, 58.225132, 61.387035>,  <72.269516, 57.950886, 61.281979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.914375, 58.225132, 61.387035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.952087, 58.063843, 61.022942>,  <72.974716, 57.967072, 60.804485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.952087, 58.063843, 61.022942>,  <72.914375, 58.225132, 61.387035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.952087, 58.063843, 61.022942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220689, 0.900023, -0.375839,
		0.970777, -0.165446, 0.173837,
		0.094276, -0.403220, -0.910234,
		72.980370, 57.942879, 60.749870>
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
