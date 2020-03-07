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
	<36.471970, 52.748650, 50.334106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632664, 52.775421, 49.968784>,  <36.729080, 52.791485, 49.749592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632664, 52.775421, 49.968784>,  <36.471970, 52.748650, 50.334106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632664, 52.775421, 49.968784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674028, 0.653524, 0.344374,
		0.619914, -0.753942, 0.217436,
		0.401737, 0.066924, -0.913306,
		36.753185, 52.795498, 49.694794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092159, 52.620720, 50.468632>,  <36.471970, 52.748650, 50.334106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092159, 52.620720, 50.468632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111916, 52.826099, 50.125954>,  <37.123768, 52.949326, 49.920345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111916, 52.826099, 50.125954>,  <37.092159, 52.620720, 50.468632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111916, 52.826099, 50.125954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507091, 0.726081, 0.464398,
		0.860476, -0.457360, -0.224504,
		0.049389, 0.513447, -0.856699,
		37.126732, 52.980133, 49.868942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813473, 52.772434, 50.156090>,  <37.092159, 52.620720, 50.468632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813473, 52.772434, 50.156090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549240, 53.051418, 50.044968>,  <37.390701, 53.218811, 49.978294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549240, 53.051418, 50.044968>,  <37.813473, 52.772434, 50.156090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549240, 53.051418, 50.044968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584171, 0.709950, 0.393338,
		0.471566, 0.097547, -0.876419,
		-0.660583, 0.697464, -0.277804,
		37.351067, 53.260658, 49.961628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159817, 53.295635, 49.754116>,  <37.813473, 52.772434, 50.156090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159817, 53.295635, 49.754116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833652, 53.408558, 49.956268>,  <37.637955, 53.476311, 50.077560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833652, 53.408558, 49.956268>,  <38.159817, 53.295635, 49.754116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833652, 53.408558, 49.956268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491002, 0.799718, 0.345498,
		-0.306624, 0.529864, -0.790712,
		-0.815413, 0.282303, 0.505377,
		37.589027, 53.493248, 50.107880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929554, 53.910141, 49.541534>,  <38.159817, 53.295635, 49.754116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929554, 53.910141, 49.541534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906895, 53.794395, 49.923752>,  <37.893299, 53.724949, 50.153084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906895, 53.794395, 49.923752>,  <37.929554, 53.910141, 49.541534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906895, 53.794395, 49.923752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788975, 0.573517, 0.220447,
		-0.611809, 0.766387, 0.195809,
		-0.056648, -0.289360, 0.955543,
		37.889900, 53.707588, 50.210415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113125, 54.507797, 49.943703>,  <37.929554, 53.910141, 49.541534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113125, 54.507797, 49.943703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155228, 54.209709, 50.207088>,  <38.180489, 54.030857, 50.365120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155228, 54.209709, 50.207088>,  <38.113125, 54.507797, 49.943703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155228, 54.209709, 50.207088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752467, 0.492587, 0.437208,
		-0.650165, 0.449451, 0.612600,
		0.105255, -0.745219, 0.658460,
		38.186806, 53.986145, 50.404625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152977, 54.871521, 50.637772>,  <38.113125, 54.507797, 49.943703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152977, 54.871521, 50.637772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397938, 54.555378, 50.630821>,  <38.544914, 54.365692, 50.626652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397938, 54.555378, 50.630821>,  <38.152977, 54.871521, 50.637772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397938, 54.555378, 50.630821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680383, 0.515746, 0.520658,
		-0.402545, -0.330673, 0.853589,
		0.612402, -0.790355, -0.017374,
		38.581657, 54.318272, 50.625610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714462, 55.208214, 50.970551>,  <38.152977, 54.871521, 50.637772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714462, 55.208214, 50.970551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814869, 54.821106, 50.962418>,  <38.875114, 54.588840, 50.957539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814869, 54.821106, 50.962418>,  <38.714462, 55.208214, 50.970551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814869, 54.821106, 50.962418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816504, 0.200406, 0.541442,
		-0.519916, -0.152514, 0.840492,
		0.251017, -0.967769, -0.020334,
		38.890175, 54.530777, 50.956318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613514, 55.010788, 51.655338>,  <38.714462, 55.208214, 50.970551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613514, 55.010788, 51.655338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915714, 54.839226, 51.457241>,  <39.097034, 54.736290, 51.338383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915714, 54.839226, 51.457241>,  <38.613514, 55.010788, 51.655338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915714, 54.839226, 51.457241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652137, 0.419929, 0.631171,
		-0.062745, -0.799815, 0.596959,
		0.755500, -0.428901, -0.495241,
		39.142365, 54.710556, 51.308670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057922, 54.546001, 52.096596>,  <38.613514, 55.010788, 51.655338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057922, 54.546001, 52.096596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281696, 54.676834, 51.791954>,  <39.415962, 54.755333, 51.609169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281696, 54.676834, 51.791954>,  <39.057922, 54.546001, 52.096596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281696, 54.676834, 51.791954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679434, 0.345340, 0.647387,
		0.474765, -0.879633, -0.029039,
		0.559435, 0.327086, -0.761608,
		39.449528, 54.774960, 51.563473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802372, 54.381817, 52.261341>,  <39.057922, 54.546001, 52.096596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802372, 54.381817, 52.261341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785549, 54.682877, 51.998512>,  <39.775455, 54.863514, 51.840813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785549, 54.682877, 51.998512>,  <39.802372, 54.381817, 52.261341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785549, 54.682877, 51.998512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707227, 0.486968, 0.512535,
		0.705735, -0.443149, -0.552773,
		-0.042054, 0.752650, -0.657077,
		39.772934, 54.908672, 51.801388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543694, 54.449211, 52.049683>,  <39.802372, 54.381817, 52.261341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543694, 54.449211, 52.049683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289127, 54.756329, 52.020111>,  <40.136387, 54.940601, 52.002369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289127, 54.756329, 52.020111>,  <40.543694, 54.449211, 52.049683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289127, 54.756329, 52.020111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636734, 0.577030, 0.511474,
		0.435370, 0.278433, -0.856112,
		-0.636414, 0.767796, -0.073933,
		40.098202, 54.986668, 51.997932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883823, 55.093651, 51.750084>,  <40.543694, 54.449211, 52.049683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883823, 55.093651, 51.750084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597534, 55.153820, 52.022881>,  <40.425762, 55.189922, 52.186558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597534, 55.153820, 52.022881>,  <40.883823, 55.093651, 51.750084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597534, 55.153820, 52.022881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600841, 0.630402, 0.491511,
		-0.355996, 0.761555, -0.541573,
		-0.715721, 0.150423, 0.681994,
		40.382816, 55.198948, 52.227478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702049, 55.897289, 51.913975>,  <40.883823, 55.093651, 51.750084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702049, 55.897289, 51.913975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666012, 55.614204, 52.194267>,  <40.644390, 55.444355, 52.362442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666012, 55.614204, 52.194267>,  <40.702049, 55.897289, 51.913975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666012, 55.614204, 52.194267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633858, 0.501952, 0.588446,
		-0.768185, 0.497181, 0.403365,
		-0.090094, -0.707711, 0.700734,
		40.638985, 55.401890, 52.404488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698967, 56.226044, 52.553001>,  <40.702049, 55.897289, 51.913975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698967, 56.226044, 52.553001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878693, 55.870399, 52.587898>,  <40.986526, 55.657013, 52.608837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878693, 55.870399, 52.587898>,  <40.698967, 56.226044, 52.553001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878693, 55.870399, 52.587898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711474, 0.415174, 0.566952,
		-0.540301, -0.192667, 0.819118,
		0.449309, -0.889106, 0.087241,
		41.013485, 55.603668, 52.614071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816292, 56.110054, 53.247215>,  <40.698967, 56.226044, 52.553001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816292, 56.110054, 53.247215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076420, 55.918907, 53.011002>,  <41.232494, 55.804218, 52.869274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076420, 55.918907, 53.011002>,  <40.816292, 56.110054, 53.247215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076420, 55.918907, 53.011002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723240, 0.627287, 0.288853,
		0.232404, -0.614946, 0.753545,
		0.650317, -0.477863, -0.590537,
		41.271515, 55.775547, 52.833839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447994, 56.138569, 53.622673>,  <40.816292, 56.110054, 53.247215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447994, 56.138569, 53.622673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539452, 56.056770, 53.241959>,  <41.594326, 56.007690, 53.013531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539452, 56.056770, 53.241959>,  <41.447994, 56.138569, 53.622673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539452, 56.056770, 53.241959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869354, 0.482887, 0.105087,
		0.438117, -0.851470, 0.288190,
		0.228641, -0.204499, -0.951789,
		41.608044, 55.995422, 52.956421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069332, 55.809879, 53.565746>,  <41.447994, 56.138569, 53.622673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069332, 55.809879, 53.565746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010189, 56.026588, 53.234779>,  <41.974705, 56.156612, 53.036198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010189, 56.026588, 53.234779>,  <42.069332, 55.809879, 53.565746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010189, 56.026588, 53.234779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809236, 0.547235, 0.213707,
		0.568574, -0.637981, -0.519330,
		-0.147855, 0.541769, -0.827421,
		41.965832, 56.189117, 52.986553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754219, 55.944984, 53.318691>,  <42.069332, 55.809879, 53.565746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754219, 55.944984, 53.318691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506519, 56.199127, 53.134148>,  <42.357899, 56.351612, 53.023422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506519, 56.199127, 53.134148>,  <42.754219, 55.944984, 53.318691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506519, 56.199127, 53.134148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726021, 0.687092, -0.028270,
		0.299035, -0.352463, -0.886763,
		-0.619251, 0.635354, -0.461360,
		42.320744, 56.389732, 52.995739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888863, 56.155106, 52.558369>,  <42.754219, 55.944984, 53.318691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888863, 56.155106, 52.558369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692238, 56.459793, 52.727200>,  <42.574261, 56.642605, 52.828499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692238, 56.459793, 52.727200>,  <42.888863, 56.155106, 52.558369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692238, 56.459793, 52.727200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745417, 0.618630, -0.248296,
		-0.450241, 0.192568, -0.871895,
		-0.491566, 0.761718, 0.422076,
		42.544769, 56.688309, 52.853821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883518, 56.710995, 52.057919>,  <42.888863, 56.155106, 52.558369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883518, 56.710995, 52.057919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839760, 56.848824, 52.430862>,  <42.813503, 56.931522, 52.654629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839760, 56.848824, 52.430862>,  <42.883518, 56.710995, 52.057919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839760, 56.848824, 52.430862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684389, 0.706358, -0.180747,
		-0.720863, 0.618326, -0.313096,
		-0.109397, 0.344573, 0.932363,
		42.806942, 56.952194, 52.710571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978100, 57.411449, 52.052845>,  <42.883518, 56.710995, 52.057919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978100, 57.411449, 52.052845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056149, 57.312111, 52.432369>,  <43.102978, 57.252506, 52.660084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056149, 57.312111, 52.432369>,  <42.978100, 57.411449, 52.052845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056149, 57.312111, 52.432369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854565, 0.517785, -0.040212,
		-0.481296, 0.818670, 0.313262,
		0.195123, -0.248349, 0.948815,
		43.114685, 57.237606, 52.717014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414024, 58.023819, 52.376701>,  <42.978100, 57.411449, 52.052845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414024, 58.023819, 52.376701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511356, 57.677345, 52.551292>,  <43.569756, 57.469460, 52.656048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511356, 57.677345, 52.551292>,  <43.414024, 58.023819, 52.376701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511356, 57.677345, 52.551292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895630, 0.373398, 0.241703,
		-0.372339, 0.332108, 0.866642,
		0.243331, -0.866186, 0.436476,
		43.584354, 57.417488, 52.682236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767529, 58.172699, 53.018616>,  <43.414024, 58.023819, 52.376701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767529, 58.172699, 53.018616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883995, 57.827881, 52.852676>,  <43.953873, 57.620991, 52.753113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883995, 57.827881, 52.852676>,  <43.767529, 58.172699, 53.018616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883995, 57.827881, 52.852676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947809, 0.318827, 0.002707,
		0.129932, -0.393989, 0.909885,
		0.291162, -0.862045, -0.414852,
		43.971344, 57.569267, 52.728222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290756, 57.796986, 53.400558>,  <43.767529, 58.172699, 53.018616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290756, 57.796986, 53.400558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344891, 57.680073, 53.021873>,  <44.377369, 57.609924, 52.794662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344891, 57.680073, 53.021873>,  <44.290756, 57.796986, 53.400558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344891, 57.680073, 53.021873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990646, 0.056763, 0.124088,
		0.017470, -0.954647, 0.297228,
		0.135332, -0.292280, -0.946709,
		44.385490, 57.592388, 52.737862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751453, 57.247524, 53.296303>,  <44.290756, 57.796986, 53.400558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751453, 57.247524, 53.296303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762566, 57.433594, 52.942390>,  <44.769234, 57.545235, 52.730042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762566, 57.433594, 52.942390>,  <44.751453, 57.247524, 53.296303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762566, 57.433594, 52.942390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996632, -0.081203, -0.011403,
		-0.077152, -0.881487, -0.465863,
		0.027778, 0.465174, -0.884783,
		44.770901, 57.573147, 52.676956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890644, 56.861073, 52.666588>,  <44.751453, 57.247524, 53.296303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890644, 56.861073, 52.666588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045200, 57.229912, 52.658211>,  <45.137936, 57.451214, 52.653183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045200, 57.229912, 52.658211>,  <44.890644, 56.861073, 52.666588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045200, 57.229912, 52.658211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875779, -0.359673, 0.321941,
		0.289327, -0.142738, -0.946528,
		0.386394, 0.922096, -0.020944,
		45.161118, 57.506542, 52.651928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557926, 56.732914, 52.417797>,  <44.890644, 56.861073, 52.666588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557926, 56.732914, 52.417797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.528652, 57.077984, 52.617973>,  <45.511086, 57.285027, 52.738079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.528652, 57.077984, 52.617973>,  <45.557926, 56.732914, 52.417797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.528652, 57.077984, 52.617973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877090, -0.183171, 0.444029,
		0.474717, 0.471429, -0.743235,
		-0.073189, 0.862672, 0.500440,
		45.506695, 57.336784, 52.768105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198982, 56.975002, 52.172127>,  <45.557926, 56.732914, 52.417797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198982, 56.975002, 52.172127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.059757, 57.071358, 52.534523>,  <45.976223, 57.129169, 52.751961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.059757, 57.071358, 52.534523>,  <46.198982, 56.975002, 52.172127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059757, 57.071358, 52.534523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891861, -0.212682, 0.399186,
		0.288848, 0.946963, -0.140811,
		-0.348067, 0.240888, 0.905993,
		45.955338, 57.143623, 52.806320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.765579, 57.479866, 52.619560>,  <46.198982, 56.975002, 52.172127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.765579, 57.479866, 52.619560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521038, 57.256691, 52.844044>,  <46.374313, 57.122787, 52.978733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521038, 57.256691, 52.844044>,  <46.765579, 57.479866, 52.619560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521038, 57.256691, 52.844044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718566, -0.094287, 0.689038,
		-0.331522, 0.824513, 0.458554,
		-0.611356, -0.557933, 0.561208,
		46.337631, 57.089310, 53.012405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464897, 57.860989, 53.169159>,  <46.765579, 57.479866, 52.619560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464897, 57.860989, 53.169159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632782, 58.137787, 52.934219>,  <46.733513, 58.303867, 52.793255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632782, 58.137787, 52.934219>,  <46.464897, 57.860989, 53.169159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632782, 58.137787, 52.934219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133790, -0.592872, -0.794105,
		-0.897744, 0.411875, -0.156251,
		0.419709, 0.691998, -0.587352,
		46.758694, 58.345387, 52.758015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879387, 57.829109, 53.730152>,  <46.464897, 57.860989, 53.169159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879387, 57.829109, 53.730152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016483, 58.081741, 53.451977>,  <46.098740, 58.233318, 53.285072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016483, 58.081741, 53.451977>,  <45.879387, 57.829109, 53.730152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016483, 58.081741, 53.451977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924935, -0.097324, 0.367456,
		0.164393, -0.769180, -0.617525,
		0.342740, 0.631578, -0.695442,
		46.119305, 58.271214, 53.243343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025349, 57.771122, 54.409134>,  <45.879387, 57.829109, 53.730152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025349, 57.771122, 54.409134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892433, 57.496853, 54.668190>,  <45.812683, 57.332291, 54.823624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892433, 57.496853, 54.668190>,  <46.025349, 57.771122, 54.409134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892433, 57.496853, 54.668190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886857, -0.460871, -0.032915,
		0.321047, 0.563426, 0.761235,
		-0.332286, -0.685674, 0.647640,
		45.792747, 57.291149, 54.862480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537731, 57.703999, 54.932587>,  <46.025349, 57.771122, 54.409134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537731, 57.703999, 54.932587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304531, 57.406841, 54.800999>,  <46.164612, 57.228546, 54.722046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304531, 57.406841, 54.800999>,  <46.537731, 57.703999, 54.932587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304531, 57.406841, 54.800999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805827, -0.477043, -0.350818,
		0.103688, -0.469619, 0.876759,
		-0.583002, -0.742892, -0.328968,
		46.129631, 57.183975, 54.702309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290134, 57.588142, 55.082619>,  <46.537731, 57.703999, 54.932587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290134, 57.588142, 55.082619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327660, 57.895168, 55.336243>,  <47.350174, 58.079384, 55.488419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.327660, 57.895168, 55.336243>,  <47.290134, 57.588142, 55.082619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.327660, 57.895168, 55.336243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994892, -0.096110, -0.030859,
		0.037253, 0.633719, -0.772666,
		0.093817, 0.767569, 0.634063,
		47.355804, 58.125439, 55.526463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.695267, 58.101078, 54.776302>,  <47.290134, 57.588142, 55.082619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.695267, 58.101078, 54.776302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719757, 58.060818, 55.173515>,  <47.734451, 58.036659, 55.411842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719757, 58.060818, 55.173515>,  <47.695267, 58.101078, 54.776302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.719757, 58.060818, 55.173515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994624, -0.077083, -0.069141,
		0.083505, 0.991931, 0.095392,
		0.061230, -0.100653, 0.993036,
		47.738125, 58.030621, 55.471428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.049690, 58.738129, 55.060802>,  <47.695267, 58.101078, 54.776302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.049690, 58.738129, 55.060802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.085831, 58.384338, 55.243904>,  <48.107513, 58.172062, 55.353764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.085831, 58.384338, 55.243904>,  <48.049690, 58.738129, 55.060802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.085831, 58.384338, 55.243904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974169, -0.017026, -0.225178,
		0.206958, 0.466271, 0.860093,
		0.090350, -0.884478, 0.457750,
		48.112934, 58.118996, 55.381229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.371082, 58.842251, 54.428616>,  <48.049690, 58.738129, 55.060802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.371082, 58.842251, 54.428616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.469658, 58.727303, 54.798843>,  <48.528801, 58.658333, 55.020981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.469658, 58.727303, 54.798843>,  <48.371082, 58.842251, 54.428616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.469658, 58.727303, 54.798843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103980, -0.941676, -0.320054,
		0.963565, 0.175115, -0.202183,
		0.246437, -0.287370, 0.925574,
		48.543591, 58.641090, 55.076515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.023308, 58.478619, 54.388336>,  <48.371082, 58.842251, 54.428616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.023308, 58.478619, 54.388336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.842865, 58.353424, 54.722652>,  <48.734600, 58.278309, 54.923241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.842865, 58.353424, 54.722652>,  <49.023308, 58.478619, 54.388336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.842865, 58.353424, 54.722652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069551, -0.945970, -0.316706,
		0.889754, -0.084740, 0.448506,
		-0.451111, -0.312985, 0.835787,
		48.707531, 58.259529, 54.973389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.401463, 57.970783, 54.419098>,  <49.023308, 58.478619, 54.388336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.401463, 57.970783, 54.419098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.545235, 57.971703, 54.792366>,  <49.631500, 57.972252, 55.016327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.545235, 57.971703, 54.792366>,  <49.401463, 57.970783, 54.419098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.545235, 57.971703, 54.792366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660739, -0.706779, -0.252761,
		0.658963, 0.707431, -0.255557,
		0.359433, 0.002296, 0.933168,
		49.653065, 57.972393, 55.072315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.133755, 58.157883, 54.393238>,  <49.401463, 57.970783, 54.419098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.133755, 58.157883, 54.393238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.076775, 57.876923, 54.672188>,  <50.042587, 57.708347, 54.839558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.076775, 57.876923, 54.672188>,  <50.133755, 58.157883, 54.393238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.076775, 57.876923, 54.672188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667785, -0.588257, -0.456089,
		0.730596, 0.400726, 0.552855,
		-0.142454, -0.702405, 0.697377,
		50.034039, 57.666203, 54.881401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.758064, 57.957092, 54.794468>,  <50.133755, 58.157883, 54.393238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.758064, 57.957092, 54.794468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.494530, 57.657074, 54.771263>,  <50.336407, 57.477062, 54.757339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.494530, 57.657074, 54.771263>,  <50.758064, 57.957092, 54.794468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.494530, 57.657074, 54.771263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683837, -0.564974, -0.461706,
		0.313527, -0.343858, 0.885134,
		-0.658839, -0.750045, -0.058008,
		50.296879, 57.432060, 54.753860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.094273, 57.426617, 54.832390>,  <50.758064, 57.957092, 54.794468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.094273, 57.426617, 54.832390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.762375, 57.300869, 54.647911>,  <50.563236, 57.225422, 54.537224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.762375, 57.300869, 54.647911>,  <51.094273, 57.426617, 54.832390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.762375, 57.300869, 54.647911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528829, -0.707068, -0.469462,
		-0.178512, -0.633425, 0.752931,
		-0.829743, -0.314368, -0.461195,
		50.513451, 57.206558, 54.509552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.991821, 56.747177, 54.966965>,  <51.094273, 57.426617, 54.832390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.991821, 56.747177, 54.966965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.833935, 56.818497, 54.606430>,  <50.739201, 56.861290, 54.390110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.833935, 56.818497, 54.606430>,  <50.991821, 56.747177, 54.966965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.833935, 56.818497, 54.606430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553075, -0.737243, -0.388048,
		-0.733695, -0.651675, 0.192384,
		-0.394715, 0.178307, -0.901336,
		50.715519, 56.871986, 54.336029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.169445, 56.565506, 55.777363>,  <50.991821, 56.747177, 54.966965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.169445, 56.565506, 55.777363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.203114, 56.511688, 56.172295>,  <51.223316, 56.479397, 56.409252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.203114, 56.511688, 56.172295>,  <51.169445, 56.565506, 55.777363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.203114, 56.511688, 56.172295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176290, -0.973201, -0.147653,
		0.980733, 0.186484, -0.058197,
		0.084172, -0.134548, 0.987326,
		51.228367, 56.471325, 56.468491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.863831, 56.312378, 56.014633>,  <51.169445, 56.565506, 55.777363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.863831, 56.312378, 56.014633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.545834, 56.177464, 56.216316>,  <51.355038, 56.096516, 56.337326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.545834, 56.177464, 56.216316>,  <51.863831, 56.312378, 56.014633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.545834, 56.177464, 56.216316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296264, -0.941186, -0.162472,
		0.529356, 0.020216, 0.848159,
		-0.794991, -0.337284, 0.504211,
		51.307335, 56.076279, 56.367580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.466721, 56.540924, 55.693325>,  <51.863831, 56.312378, 56.014633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.466721, 56.540924, 55.693325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.480774, 56.476784, 55.298752>,  <52.489204, 56.438297, 55.062008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.480774, 56.476784, 55.298752>,  <52.466721, 56.540924, 55.693325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.480774, 56.476784, 55.298752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988370, -0.140552, 0.058049,
		-0.147954, -0.977001, 0.153552,
		0.035132, -0.160355, -0.986434,
		52.491314, 56.428677, 55.002823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.694118, 55.851810, 55.473740>,  <52.466721, 56.540924, 55.693325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.694118, 55.851810, 55.473740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.784500, 56.122509, 55.193466>,  <52.838730, 56.284927, 55.025303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.784500, 56.122509, 55.193466>,  <52.694118, 55.851810, 55.473740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.784500, 56.122509, 55.193466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971600, -0.208447, 0.111996,
		-0.070261, -0.706087, -0.704631,
		0.225957, 0.676750, -0.700680,
		52.852287, 56.325535, 54.983261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.063786, 55.544987, 54.991489>,  <52.694118, 55.851810, 55.473740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.063786, 55.544987, 54.991489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.166786, 55.931480, 54.994949>,  <53.228588, 56.163376, 54.997025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.166786, 55.931480, 54.994949>,  <53.063786, 55.544987, 54.991489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.166786, 55.931480, 54.994949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956947, -0.256248, 0.136346,
		0.133960, -0.026830, -0.990624,
		0.257503, 0.966239, 0.008652,
		53.244038, 56.221352, 54.997543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.422901, 55.803181, 54.411777>,  <53.063786, 55.544987, 54.991489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.422901, 55.803181, 54.411777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.534870, 56.023663, 54.726181>,  <53.602051, 56.155952, 54.914825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.534870, 56.023663, 54.726181>,  <53.422901, 55.803181, 54.411777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.534870, 56.023663, 54.726181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951676, -0.267054, -0.151641,
		0.126323, 0.790477, -0.599323,
		0.279920, 0.551206, 0.786014,
		53.618847, 56.189026, 54.961987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.091663, 56.064178, 54.294277>,  <53.422901, 55.803181, 54.411777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.091663, 56.064178, 54.294277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.086746, 56.076157, 54.694069>,  <54.083797, 56.083344, 54.933945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.086746, 56.076157, 54.694069>,  <54.091663, 56.064178, 54.294277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.086746, 56.076157, 54.694069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952163, -0.304878, 0.020845,
		0.305343, 0.951920, -0.024765,
		-0.012293, 0.029945, 0.999476,
		54.083057, 56.085140, 54.993912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.681778, 56.550320, 54.427044>,  <54.091663, 56.064178, 54.294277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.681778, 56.550320, 54.427044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.610001, 56.285152, 54.717793>,  <54.566933, 56.126053, 54.892242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.610001, 56.285152, 54.717793>,  <54.681778, 56.550320, 54.427044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.610001, 56.285152, 54.717793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952133, -0.302896, -0.041190,
		0.247472, 0.684688, 0.685536,
		-0.179444, -0.662915, 0.726873,
		54.556168, 56.086277, 54.935856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.212223, 56.559315, 55.041138>,  <54.681778, 56.550320, 54.427044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.212223, 56.559315, 55.041138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.052986, 56.198486, 54.974457>,  <54.957443, 55.981987, 54.934448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.052986, 56.198486, 54.974457>,  <55.212223, 56.559315, 55.041138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.052986, 56.198486, 54.974457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904853, -0.416018, 0.090384,
		-0.150885, -0.114861, 0.981856,
		-0.398088, -0.902073, -0.166703,
		54.933559, 55.927864, 54.924446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.528656, 56.133869, 55.453358>,  <55.212223, 56.559315, 55.041138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.528656, 56.133869, 55.453358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.384109, 55.881172, 55.179039>,  <55.297382, 55.729553, 55.014446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.384109, 55.881172, 55.179039>,  <55.528656, 56.133869, 55.453358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.384109, 55.881172, 55.179039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783774, -0.604216, 0.143600,
		-0.505087, -0.485617, 0.713486,
		-0.361365, -0.631742, -0.685796,
		55.275700, 55.691650, 54.973301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.279133, 55.468784, 55.674698>,  <55.528656, 56.133869, 55.453358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.279133, 55.468784, 55.674698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.430382, 55.451462, 55.304802>,  <55.521130, 55.441071, 55.082863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.430382, 55.451462, 55.304802>,  <55.279133, 55.468784, 55.674698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.430382, 55.451462, 55.304802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766356, -0.545745, 0.338911,
		-0.519350, -0.836831, -0.173173,
		0.378120, -0.043302, -0.924744,
		55.543816, 55.438473, 55.027378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.435505, 54.765381, 55.635532>,  <55.279133, 55.468784, 55.674698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.435505, 54.765381, 55.635532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.657845, 54.962788, 55.367958>,  <55.791248, 55.081230, 55.207413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.657845, 54.962788, 55.367958>,  <55.435505, 54.765381, 55.635532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.657845, 54.962788, 55.367958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824504, -0.429877, 0.367964,
		-0.105964, -0.756073, -0.645853,
		0.555845, 0.493518, -0.668937,
		55.824596, 55.110844, 55.167278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.806023, 54.283993, 55.275997>,  <55.435505, 54.765381, 55.635532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.806023, 54.283993, 55.275997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.000008, 54.630749, 55.322159>,  <56.116398, 54.838802, 55.349854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.000008, 54.630749, 55.322159>,  <55.806023, 54.283993, 55.275997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.000008, 54.630749, 55.322159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790038, -0.490861, 0.367282,
		0.375038, -0.086946, -0.922923,
		0.484960, 0.866889, 0.115400,
		56.145496, 54.890816, 55.356777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.426968, 54.284687, 54.905029>,  <55.806023, 54.283993, 55.275997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.426968, 54.284687, 54.905029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.448776, 54.523663, 55.225052>,  <56.461861, 54.667046, 55.417065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.448776, 54.523663, 55.225052>,  <56.426968, 54.284687, 54.905029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.448776, 54.523663, 55.225052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900552, -0.375529, 0.219053,
		0.431316, 0.708553, -0.558498,
		0.054522, 0.597437, 0.800060,
		56.465134, 54.702892, 55.465069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.063396, 54.798103, 54.840664>,  <56.426968, 54.284687, 54.905029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.063396, 54.798103, 54.840664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.923126, 54.633797, 55.177307>,  <56.838963, 54.535213, 55.379292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.923126, 54.633797, 55.177307>,  <57.063396, 54.798103, 54.840664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.923126, 54.633797, 55.177307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896874, -0.405943, 0.175576,
		0.269523, 0.816384, 0.510759,
		-0.350677, -0.410765, 0.841604,
		56.817924, 54.510567, 55.429787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.169407, 55.134537, 55.584038>,  <57.063396, 54.798103, 54.840664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.169407, 55.134537, 55.584038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.171822, 54.734715, 55.595757>,  <57.173271, 54.494823, 55.602787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.171822, 54.734715, 55.595757>,  <57.169407, 55.134537, 55.584038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.171822, 54.734715, 55.595757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998310, 0.007717, 0.057596,
		-0.057796, 0.028899, 0.997910,
		0.006037, -0.999553, 0.029296,
		57.173634, 54.434849, 55.604546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.605621, 54.921879, 56.123360>,  <57.169407, 55.134537, 55.584038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.605621, 54.921879, 56.123360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.598221, 54.656185, 55.824440>,  <57.593781, 54.496769, 55.645088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.598221, 54.656185, 55.824440>,  <57.605621, 54.921879, 56.123360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.598221, 54.656185, 55.824440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999685, -0.024962, -0.002559,
		-0.016954, -0.747107, 0.664487,
		-0.018499, -0.664235, -0.747295,
		57.592670, 54.456913, 55.600250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.134014, 54.206944, 56.227348>,  <57.605621, 54.921879, 56.123360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.134014, 54.206944, 56.227348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.095932, 54.347492, 55.854797>,  <58.073082, 54.431824, 55.631268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.095932, 54.347492, 55.854797>,  <58.134014, 54.206944, 56.227348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.095932, 54.347492, 55.854797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995279, 0.051327, -0.082373,
		0.018861, -0.934826, -0.354604,
		-0.095205, 0.351376, -0.931381,
		58.067371, 54.452904, 55.575382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.603397, 53.872581, 55.672176>,  <58.134014, 54.206944, 56.227348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.603397, 53.872581, 55.672176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.537331, 54.261417, 55.605537>,  <58.497692, 54.494720, 55.565556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.537331, 54.261417, 55.605537>,  <58.603397, 53.872581, 55.672176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.537331, 54.261417, 55.605537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983639, 0.150038, -0.099717,
		-0.071938, -0.180342, -0.980970,
		-0.165166, 0.972093, -0.166598,
		58.487782, 54.553047, 55.555557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.132545, 54.276291, 56.107273>,  <58.603397, 53.872581, 55.672176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.132545, 54.276291, 56.107273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.345551, 54.419235, 56.414185>,  <59.473354, 54.505001, 56.598331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.345551, 54.419235, 56.414185>,  <59.132545, 54.276291, 56.107273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.345551, 54.419235, 56.414185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289646, 0.928709, -0.231528,
		-0.795323, -0.098949, 0.598056,
		0.532510, 0.357364, 0.767283,
		59.505302, 54.526443, 56.644371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.902512, 54.303410, 56.200077>,  <59.132545, 54.276291, 56.107273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.902512, 54.303410, 56.200077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.745804, 53.935394, 56.197395>,  <59.651779, 53.714584, 56.195786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.745804, 53.935394, 56.197395>,  <59.902512, 54.303410, 56.200077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.745804, 53.935394, 56.197395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321260, -0.129961, -0.938031,
		0.862154, -0.369646, 0.346486,
		-0.391769, -0.920039, -0.006706,
		59.628273, 53.659382, 56.195385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.215305, 53.789692, 56.004868>,  <59.902512, 54.303410, 56.200077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.215305, 53.789692, 56.004868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.534561, 53.821114, 55.765938>,  <60.726116, 53.839966, 55.622578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.534561, 53.821114, 55.765938>,  <60.215305, 53.789692, 56.004868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.534561, 53.821114, 55.765938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525392, 0.394459, 0.753900,
		0.294846, -0.915550, 0.273560,
		0.798141, 0.078558, -0.597327,
		60.774002, 53.844681, 55.586739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.642509, 53.376453, 56.348541>,  <60.215305, 53.789692, 56.004868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.642509, 53.376453, 56.348541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.879814, 53.594597, 56.111687>,  <61.022198, 53.725483, 55.969574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.879814, 53.594597, 56.111687>,  <60.642509, 53.376453, 56.348541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.879814, 53.594597, 56.111687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624455, 0.152443, 0.766039,
		0.508034, -0.824224, -0.250114,
		0.593260, 0.545359, -0.592137,
		61.057793, 53.758205, 55.934044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.336937, 53.089314, 56.423641>,  <60.642509, 53.376453, 56.348541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.336937, 53.089314, 56.423641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.354439, 53.468945, 56.298843>,  <61.364941, 53.696724, 56.223965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.354439, 53.468945, 56.298843>,  <61.336937, 53.089314, 56.423641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.354439, 53.468945, 56.298843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704028, 0.192282, 0.683646,
		0.708823, -0.249563, -0.659764,
		0.043752, 0.949076, -0.311993,
		61.367565, 53.753666, 56.205246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.050938, 53.328007, 56.246658>,  <61.336937, 53.089314, 56.423641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.050938, 53.328007, 56.246658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.835304, 53.653419, 56.333885>,  <61.705925, 53.848667, 56.386223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.835304, 53.653419, 56.333885>,  <62.050938, 53.328007, 56.246658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.835304, 53.653419, 56.333885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645893, 0.233134, 0.726960,
		0.540566, 0.532741, -0.651134,
		-0.539083, 0.813533, 0.218069,
		61.673580, 53.897480, 56.399307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.632202, 53.145016, 56.554863>,  <62.050938, 53.328007, 56.246658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.632202, 53.145016, 56.554863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.617813, 53.540333, 56.614166>,  <62.609180, 53.777523, 56.649750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.617813, 53.540333, 56.614166>,  <62.632202, 53.145016, 56.554863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.617813, 53.540333, 56.614166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647386, -0.136062, 0.749919,
		0.761313, -0.069002, 0.644703,
		-0.035973, 0.988294, 0.148257,
		62.607021, 53.836823, 56.658642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.932842, 53.421581, 57.198563>,  <62.632202, 53.145016, 56.554863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.932842, 53.421581, 57.198563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.646729, 53.675854, 57.082436>,  <62.475060, 53.828419, 57.012760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.646729, 53.675854, 57.082436>,  <62.932842, 53.421581, 57.198563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.646729, 53.675854, 57.082436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403200, -0.036085, 0.914400,
		0.570791, 0.771108, 0.282117,
		-0.715282, 0.635681, -0.290314,
		62.432144, 53.866558, 56.995342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.745174, 53.708481, 57.831886>,  <62.932842, 53.421581, 57.198563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.745174, 53.708481, 57.831886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.444313, 53.796127, 57.583290>,  <62.263798, 53.848717, 57.434132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.444313, 53.796127, 57.583290>,  <62.745174, 53.708481, 57.831886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.444313, 53.796127, 57.583290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616966, 0.097253, 0.780958,
		0.231563, 0.970840, 0.062039,
		-0.752151, 0.219117, -0.621495,
		62.218666, 53.861862, 57.396843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.576336, 54.508305, 57.729603>,  <62.745174, 53.708481, 57.831886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.576336, 54.508305, 57.729603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.235703, 54.301353, 57.695816>,  <62.031322, 54.177181, 57.675545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.235703, 54.301353, 57.695816>,  <62.576336, 54.508305, 57.729603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.235703, 54.301353, 57.695816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357738, 0.455751, 0.815055,
		-0.383193, 0.724302, -0.573193,
		-0.851579, -0.517376, -0.084470,
		61.980228, 54.146141, 57.670475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.339539, 54.533920, 58.098595>,  <62.576336, 54.508305, 57.729603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.339539, 54.533920, 58.098595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.422829, 54.892021, 58.256157>,  <63.472805, 55.106884, 58.350693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.422829, 54.892021, 58.256157>,  <63.339539, 54.533920, 58.098595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.422829, 54.892021, 58.256157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976528, -0.212972, -0.032180,
		0.055081, 0.391359, -0.918588,
		0.208227, 0.895255, 0.393903,
		63.485298, 55.160599, 58.374329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.948238, 54.791466, 57.800190>,  <63.339539, 54.533920, 58.098595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.948238, 54.791466, 57.800190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.940308, 54.984879, 58.150230>,  <63.935547, 55.100925, 58.360256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.940308, 54.984879, 58.150230>,  <63.948238, 54.791466, 57.800190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.940308, 54.984879, 58.150230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997413, 0.070063, -0.016112,
		-0.069102, 0.872519, -0.483668,
		-0.019829, 0.483530, 0.875103,
		63.934361, 55.129936, 58.412762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.505974, 55.228107, 57.830635>,  <63.948238, 54.791466, 57.800190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.505974, 55.228107, 57.830635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.401138, 55.179775, 58.213615>,  <64.338234, 55.150776, 58.443405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.401138, 55.179775, 58.213615>,  <64.505974, 55.228107, 57.830635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.401138, 55.179775, 58.213615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963935, 0.014775, 0.265728,
		-0.046253, 0.992564, 0.112597,
		-0.262088, -0.120827, 0.957450,
		64.322510, 55.143528, 58.500851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.712975, 55.865303, 58.221226>,  <64.505974, 55.228107, 57.830635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.712975, 55.865303, 58.221226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.709900, 55.537663, 58.450668>,  <64.708054, 55.341080, 58.588333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.709900, 55.537663, 58.450668>,  <64.712975, 55.865303, 58.221226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.709900, 55.537663, 58.450668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952590, 0.168483, 0.253348,
		-0.304159, 0.548355, 0.778970,
		-0.007682, -0.819097, 0.573603,
		64.707596, 55.291935, 58.622749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.943092, 55.967102, 58.937363>,  <64.712975, 55.865303, 58.221226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.943092, 55.967102, 58.937363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.000359, 55.574085, 58.889854>,  <65.034721, 55.338276, 58.861347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.000359, 55.574085, 58.889854>,  <64.943092, 55.967102, 58.937363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.000359, 55.574085, 58.889854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949091, 0.102284, 0.297933,
		-0.280584, -0.155382, 0.947169,
		0.143174, -0.982545, -0.118772,
		65.043312, 55.279324, 58.854221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.321609, 55.552700, 59.494915>,  <64.943092, 55.967102, 58.937363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.321609, 55.552700, 59.494915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.448502, 55.433052, 59.134941>,  <65.524635, 55.361263, 58.918957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.448502, 55.433052, 59.134941>,  <65.321609, 55.552700, 59.494915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.448502, 55.433052, 59.134941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948296, 0.109846, 0.297773,
		0.009785, -0.947872, 0.318500,
		0.317237, -0.299118, -0.899938,
		65.543671, 55.343315, 58.864960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.942299, 55.126015, 59.696777>,  <65.321609, 55.552700, 59.494915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.942299, 55.126015, 59.696777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.965500, 55.215355, 59.307571>,  <65.979424, 55.268959, 59.074047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.965500, 55.215355, 59.307571>,  <65.942299, 55.126015, 59.696777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.965500, 55.215355, 59.307571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998271, -0.022245, 0.054402,
		-0.009494, -0.974485, -0.224253,
		0.058003, 0.223349, -0.973011,
		65.982903, 55.282360, 59.015667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.337257, 54.681976, 59.263588>,  <65.942299, 55.126015, 59.696777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.337257, 54.681976, 59.263588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.349701, 55.046146, 59.098587>,  <66.357170, 55.264648, 58.999588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.349701, 55.046146, 59.098587>,  <66.337257, 54.681976, 59.263588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.349701, 55.046146, 59.098587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993110, 0.018490, 0.115718,
		0.112979, -0.413260, -0.903577,
		0.031114, 0.910425, -0.412501,
		66.359032, 55.319275, 58.974838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.773193, 54.709454, 58.716866>,  <66.337257, 54.681976, 59.263588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.773193, 54.709454, 58.716866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.764885, 55.085785, 58.852165>,  <66.759903, 55.311584, 58.933346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.764885, 55.085785, 58.852165>,  <66.773193, 54.709454, 58.716866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.764885, 55.085785, 58.852165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997019, -0.005658, 0.076946,
		0.074307, 0.338838, -0.937906,
		-0.020765, 0.940828, 0.338249,
		66.758652, 55.368034, 58.953640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.090485, 55.173668, 58.211735>,  <66.773193, 54.709454, 58.716866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.090485, 55.173668, 58.211735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.100052, 55.349106, 58.571083>,  <67.105789, 55.454369, 58.786690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.100052, 55.349106, 58.571083>,  <67.090485, 55.173668, 58.211735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.100052, 55.349106, 58.571083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969874, 0.207737, -0.127242,
		-0.242432, 0.874345, -0.420413,
		0.023918, 0.438595, 0.898366,
		67.107231, 55.480686, 58.840591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.172729, 55.922421, 58.176674>,  <67.090485, 55.173668, 58.211735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.172729, 55.922421, 58.176674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.347458, 55.740517, 58.487129>,  <67.452293, 55.631374, 58.673401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.347458, 55.740517, 58.487129>,  <67.172729, 55.922421, 58.176674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.347458, 55.740517, 58.487129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857876, 0.470173, -0.207331,
		-0.270632, 0.756393, 0.595506,
		0.436815, -0.454760, 0.776136,
		67.478500, 55.604088, 58.719971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.505112, 56.470730, 58.651833>,  <67.172729, 55.922421, 58.176674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.505112, 56.470730, 58.651833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.685448, 56.120125, 58.719330>,  <67.793648, 55.909763, 58.759827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.685448, 56.120125, 58.719330>,  <67.505112, 56.470730, 58.651833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.685448, 56.120125, 58.719330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877699, 0.469718, 0.094921,
		-0.162460, 0.105310, 0.981079,
		0.450834, -0.876513, 0.168741,
		67.820702, 55.857170, 58.769951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.739403, 56.361565, 59.403706>,  <67.505112, 56.470730, 58.651833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.739403, 56.361565, 59.403706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.972298, 56.198231, 59.122490>,  <68.112030, 56.100231, 58.953762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.972298, 56.198231, 59.122490>,  <67.739403, 56.361565, 59.403706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.972298, 56.198231, 59.122490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736648, 0.630859, 0.243651,
		0.344027, -0.659754, 0.668109,
		0.582232, -0.408339, -0.703039,
		68.146965, 56.075729, 58.911579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.417160, 56.315292, 59.651390>,  <67.739403, 56.361565, 59.403706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.417160, 56.315292, 59.651390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.436913, 56.308807, 59.251930>,  <68.448769, 56.304916, 59.012253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.436913, 56.308807, 59.251930>,  <68.417160, 56.315292, 59.651390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.436913, 56.308807, 59.251930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810611, 0.584786, 0.030592,
		0.583499, -0.811026, 0.042022,
		0.049385, -0.016214, -0.998648,
		68.451729, 56.303944, 58.952335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.808502, 56.662346, 59.047298>,  <68.417160, 56.315292, 59.651390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.808502, 56.662346, 59.047298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.746513, 56.953224, 58.779816>,  <68.709320, 57.127750, 58.619328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.746513, 56.953224, 58.779816>,  <68.808502, 56.662346, 59.047298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.746513, 56.953224, 58.779816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957038, -0.057407, -0.284221,
		-0.245074, -0.684022, -0.687061,
		-0.154972, 0.727199, -0.668705,
		68.700020, 57.171383, 58.579205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.909805, 56.907516, 59.854725>,  <68.808502, 56.662346, 59.047298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.909805, 56.907516, 59.854725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.293365, 57.013931, 59.815231>,  <69.523499, 57.077782, 59.791534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.293365, 57.013931, 59.815231>,  <68.909805, 56.907516, 59.854725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.293365, 57.013931, 59.815231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233819, 0.937885, 0.256323,
		0.160797, -0.222699, 0.961535,
		0.958891, 0.266041, -0.098738,
		69.581032, 57.093742, 59.785610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.048485, 57.400322, 60.344582>,  <68.909805, 56.907516, 59.854725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.048485, 57.400322, 60.344582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.368019, 57.432423, 60.106117>,  <69.559738, 57.451683, 59.963039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.368019, 57.432423, 60.106117>,  <69.048485, 57.400322, 60.344582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.368019, 57.432423, 60.106117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073631, 0.970564, 0.229310,
		0.597019, -0.227078, 0.769418,
		0.798841, 0.080250, -0.596165,
		69.607674, 57.456497, 59.927269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.619240, 57.685463, 60.680004>,  <69.048485, 57.400322, 60.344582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.619240, 57.685463, 60.680004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.642563, 57.796635, 60.296471>,  <69.656555, 57.863338, 60.066353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.642563, 57.796635, 60.296471>,  <69.619240, 57.685463, 60.680004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.642563, 57.796635, 60.296471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010751, 0.960584, 0.277784,
		0.998241, -0.005888, 0.058995,
		0.058306, 0.277930, -0.958830,
		69.660057, 57.880013, 60.008823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.187149, 58.236015, 60.611408>,  <69.619240, 57.685463, 60.680004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.187149, 58.236015, 60.611408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.906448, 58.262787, 60.327698>,  <69.738029, 58.278851, 60.157471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.906448, 58.262787, 60.327698>,  <70.187149, 58.236015, 60.611408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.906448, 58.262787, 60.327698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071874, 0.983846, 0.163952,
		0.708791, 0.166031, -0.685601,
		-0.701748, 0.066931, -0.709275,
		69.695923, 58.282867, 60.114914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.493149, 57.537693, 60.690136>,  <70.187149, 58.236015, 60.611408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.493149, 57.537693, 60.690136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.586327, 57.494034, 61.076675>,  <70.642235, 57.467838, 61.308598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.586327, 57.494034, 61.076675>,  <70.493149, 57.537693, 60.690136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.586327, 57.494034, 61.076675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941046, 0.275947, -0.195668,
		-0.245303, 0.954956, 0.166991,
		0.232935, -0.109149, 0.966348,
		70.656204, 57.461288, 61.366581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.798889, 58.143600, 61.074226>,  <70.493149, 57.537693, 60.690136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.798889, 58.143600, 61.074226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.924500, 57.778793, 61.179764>,  <70.999863, 57.559910, 61.243088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.924500, 57.778793, 61.179764>,  <70.798889, 58.143600, 61.074226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.924500, 57.778793, 61.179764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942694, 0.266506, -0.200754,
		0.112773, 0.311769, 0.943442,
		0.314022, -0.912017, 0.263848,
		71.018707, 57.505188, 61.258919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.314461, 58.059750, 61.665577>,  <70.798889, 58.143600, 61.074226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.314461, 58.059750, 61.665577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.363739, 57.729210, 61.445770>,  <71.393303, 57.530884, 61.313889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.363739, 57.729210, 61.445770>,  <71.314461, 58.059750, 61.665577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.363739, 57.729210, 61.445770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838401, 0.382926, -0.387881,
		0.530950, -0.412928, 0.739988,
		0.123194, -0.826352, -0.549514,
		71.400696, 57.481304, 61.280914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.008133, 57.841805, 61.687798>,  <71.314461, 58.059750, 61.665577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.008133, 57.841805, 61.687798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.899315, 57.638760, 61.360794>,  <71.834023, 57.516933, 61.164593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.899315, 57.638760, 61.360794>,  <72.008133, 57.841805, 61.687798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.899315, 57.638760, 61.360794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910473, 0.139217, -0.389433,
		0.311493, -0.850262, 0.424296,
		-0.272050, -0.507615, -0.817506,
		71.817703, 57.486477, 61.115543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.393143, 57.221920, 61.561180>,  <72.008133, 57.841805, 61.687798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.393143, 57.221920, 61.561180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.271370, 57.386566, 61.217575>,  <72.198311, 57.485355, 61.011414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.271370, 57.386566, 61.217575>,  <72.393143, 57.221920, 61.561180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.271370, 57.386566, 61.217575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938829, 0.282099, -0.197535,
		0.161017, -0.866597, -0.472317,
		-0.304423, 0.411618, -0.859009,
		72.180046, 57.510052, 60.959873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.727234, 56.932274, 60.933338>,  <72.393143, 57.221920, 61.561180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.727234, 56.932274, 60.933338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.654144, 57.325535, 60.931244>,  <72.610291, 57.561489, 60.929985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.654144, 57.325535, 60.931244>,  <72.727234, 56.932274, 60.933338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.654144, 57.325535, 60.931244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912745, 0.167661, -0.372541,
		-0.365385, -0.072856, -0.928001,
		-0.182731, 0.983149, -0.005239,
		72.599327, 57.620480, 60.929672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.679878, 57.191700, 60.381592>,  <72.727234, 56.932274, 60.933338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.679878, 57.191700, 60.381592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.823280, 57.500099, 60.592125>,  <72.909325, 57.685139, 60.718445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.823280, 57.500099, 60.592125>,  <72.679878, 57.191700, 60.381592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.823280, 57.500099, 60.592125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857308, -0.048786, -0.512487,
		-0.369449, 0.634966, -0.678473,
		0.358512, 0.770998, 0.526338,
		72.930832, 57.731400, 60.750027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.104904, 57.506462, 59.910542>,  <72.679878, 57.191700, 60.381592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.104904, 57.506462, 59.910542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.199928, 57.573788, 60.293213>,  <73.256943, 57.614182, 60.522816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.199928, 57.573788, 60.293213>,  <73.104904, 57.506462, 59.910542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.199928, 57.573788, 60.293213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953717, -0.227345, -0.196821,
		0.184370, 0.959159, -0.214527,
		0.237554, 0.168310, 0.956682,
		73.271194, 57.624279, 60.580215>
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
