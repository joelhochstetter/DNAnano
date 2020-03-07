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
	<36.126308, 53.237179, 49.541977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381210, 52.939941, 49.623672>,  <36.534153, 52.761600, 49.672691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381210, 52.939941, 49.623672>,  <36.126308, 53.237179, 49.541977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381210, 52.939941, 49.623672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402503, 0.546936, 0.734065,
		-0.657188, -0.385579, 0.647637,
		0.637256, -0.743094, 0.204243,
		36.572388, 52.717014, 49.684944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245068, 53.276436, 50.247707>,  <36.126308, 53.237179, 49.541977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245068, 53.276436, 50.247707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546085, 53.059319, 50.098549>,  <36.726696, 52.929050, 50.009052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546085, 53.059319, 50.098549>,  <36.245068, 53.276436, 50.247707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546085, 53.059319, 50.098549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654413, 0.553098, 0.515583,
		-0.073604, -0.632030, 0.771441,
		0.752546, -0.542790, -0.372898,
		36.771851, 52.896481, 49.986679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670055, 53.106827, 50.793888>,  <36.245068, 53.276436, 50.247707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670055, 53.106827, 50.793888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903061, 53.064514, 50.471523>,  <37.042866, 53.039127, 50.278107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903061, 53.064514, 50.471523>,  <36.670055, 53.106827, 50.793888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903061, 53.064514, 50.471523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668717, 0.625993, 0.401186,
		0.462056, -0.772622, 0.435386,
		0.582513, -0.105780, -0.805909,
		37.077816, 53.032780, 50.229752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323044, 52.722286, 50.906738>,  <36.670055, 53.106827, 50.793888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323044, 52.722286, 50.906738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332748, 53.005939, 50.624878>,  <37.338573, 53.176132, 50.455761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332748, 53.005939, 50.624878>,  <37.323044, 52.722286, 50.906738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332748, 53.005939, 50.624878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740208, 0.461020, 0.489440,
		0.671940, -0.533468, -0.513720,
		0.024265, 0.709134, -0.704656,
		37.340027, 53.218681, 50.413483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023739, 52.848557, 50.634171>,  <37.323044, 52.722286, 50.906738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023739, 52.848557, 50.634171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807461, 53.185005, 50.629143>,  <37.677692, 53.386875, 50.626125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807461, 53.185005, 50.629143>,  <38.023739, 52.848557, 50.634171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807461, 53.185005, 50.629143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779113, 0.506357, 0.369574,
		0.317224, 0.190031, -0.929116,
		-0.540695, 0.841125, -0.012573,
		37.645252, 53.437344, 50.625370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389996, 53.485821, 50.382702>,  <38.023739, 52.848557, 50.634171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389996, 53.485821, 50.382702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114128, 53.614876, 50.642014>,  <37.948608, 53.692307, 50.797600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114128, 53.614876, 50.642014>,  <38.389996, 53.485821, 50.382702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114128, 53.614876, 50.642014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716136, 0.436539, 0.544595,
		-0.107295, 0.839846, -0.532115,
		-0.689664, 0.322635, 0.648282,
		37.907230, 53.711666, 50.836498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800117, 53.941544, 50.946049>,  <38.389996, 53.485821, 50.382702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800117, 53.941544, 50.946049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428574, 53.961124, 51.092926>,  <38.205647, 53.972874, 51.181053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428574, 53.961124, 51.092926>,  <38.800117, 53.941544, 50.946049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428574, 53.961124, 51.092926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335326, 0.532363, 0.777268,
		-0.157431, 0.845100, -0.510903,
		-0.928855, 0.048953, 0.367195,
		38.149918, 53.975811, 51.203083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660812, 54.620632, 51.059772>,  <38.800117, 53.941544, 50.946049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660812, 54.620632, 51.059772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470078, 54.387573, 51.323029>,  <38.355637, 54.247738, 51.480984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470078, 54.387573, 51.323029>,  <38.660812, 54.620632, 51.059772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470078, 54.387573, 51.323029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340662, 0.567727, 0.749424,
		-0.810295, 0.581554, -0.072226,
		-0.476835, -0.582650, 0.658140,
		38.327026, 54.212780, 51.520470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194820, 54.995354, 51.437763>,  <38.660812, 54.620632, 51.059772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194820, 54.995354, 51.437763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355263, 54.690609, 51.641205>,  <38.451530, 54.507763, 51.763271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355263, 54.690609, 51.641205>,  <38.194820, 54.995354, 51.437763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355263, 54.690609, 51.641205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183601, 0.610824, 0.770185,
		-0.897443, -0.215547, 0.384885,
		0.401108, -0.761862, 0.508605,
		38.475594, 54.462051, 51.793785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851032, 54.924576, 52.134209>,  <38.194820, 54.995354, 51.437763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851032, 54.924576, 52.134209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215740, 54.760319, 52.131439>,  <38.434563, 54.661762, 52.129776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215740, 54.760319, 52.131439>,  <37.851032, 54.924576, 52.134209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215740, 54.760319, 52.131439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254254, 0.551127, 0.794741,
		-0.322544, -0.726380, 0.606909,
		0.911768, -0.410648, -0.006922,
		38.489269, 54.637123, 52.129364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008404, 54.564381, 52.794674>,  <37.851032, 54.924576, 52.134209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008404, 54.564381, 52.794674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348778, 54.690025, 52.626274>,  <38.553001, 54.765411, 52.525234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348778, 54.690025, 52.626274>,  <38.008404, 54.564381, 52.794674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348778, 54.690025, 52.626274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233008, 0.492582, 0.838493,
		0.470761, -0.811599, 0.345964,
		0.850936, 0.314118, -0.420997,
		38.604057, 54.784260, 52.499977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277363, 54.442841, 53.430061>,  <38.008404, 54.564381, 52.794674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277363, 54.442841, 53.430061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267380, 54.200954, 53.111641>,  <38.261391, 54.055824, 52.920589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267380, 54.200954, 53.111641>,  <38.277363, 54.442841, 53.430061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267380, 54.200954, 53.111641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911155, -0.341389, 0.230760,
		-0.411308, -0.719567, 0.559508,
		-0.024962, -0.604712, -0.796053,
		38.259892, 54.019543, 52.872826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737549, 53.870171, 53.579727>,  <38.277363, 54.442841, 53.430061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737549, 53.870171, 53.579727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656162, 53.847237, 53.188766>,  <38.607330, 53.833477, 52.954189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656162, 53.847237, 53.188766>,  <38.737549, 53.870171, 53.579727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656162, 53.847237, 53.188766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845208, -0.514170, -0.145784,
		-0.494193, -0.855770, 0.153074,
		-0.203464, -0.057334, -0.977402,
		38.595123, 53.830036, 52.895546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280880, 53.462132, 53.854134>,  <38.737549, 53.870171, 53.579727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280880, 53.462132, 53.854134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178978, 53.495159, 54.239521>,  <39.117836, 53.514977, 54.470753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178978, 53.495159, 54.239521>,  <39.280880, 53.462132, 53.854134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178978, 53.495159, 54.239521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959548, -0.101909, 0.262455,
		0.119858, 0.991361, -0.053270,
		-0.254759, 0.082572, 0.963473,
		39.102551, 53.519932, 54.528564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724369, 54.005810, 54.134502>,  <39.280880, 53.462132, 53.854134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724369, 54.005810, 54.134502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618153, 53.747810, 54.421127>,  <39.554424, 53.593010, 54.593102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618153, 53.747810, 54.421127>,  <39.724369, 54.005810, 54.134502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618153, 53.747810, 54.421127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962168, -0.224317, 0.154642,
		0.060995, 0.730521, 0.680161,
		-0.265541, -0.644996, 0.716567,
		39.538490, 53.554310, 54.636097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169456, 54.093140, 54.696072>,  <39.724369, 54.005810, 54.134502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169456, 54.093140, 54.696072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025799, 53.719940, 54.705208>,  <39.939602, 53.496021, 54.710690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025799, 53.719940, 54.705208>,  <40.169456, 54.093140, 54.696072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025799, 53.719940, 54.705208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901643, -0.340548, 0.266583,
		-0.240943, 0.116340, 0.963541,
		-0.359146, -0.933002, 0.022844,
		39.918056, 53.440041, 54.712063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483711, 53.709652, 55.181160>,  <40.169456, 54.093140, 54.696072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483711, 53.709652, 55.181160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382969, 53.423012, 54.920990>,  <40.322525, 53.251026, 54.764889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382969, 53.423012, 54.920990>,  <40.483711, 53.709652, 55.181160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382969, 53.423012, 54.920990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807793, -0.525787, 0.266494,
		-0.532955, -0.458293, 0.711285,
		-0.251852, -0.716600, -0.650427,
		40.307415, 53.208031, 54.725861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220089, 53.984058, 55.047798>,  <40.483711, 53.709652, 55.181160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220089, 53.984058, 55.047798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305660, 53.756069, 54.730469>,  <41.357002, 53.619274, 54.540070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305660, 53.756069, 54.730469>,  <41.220089, 53.984058, 55.047798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305660, 53.756069, 54.730469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184027, -0.774069, 0.605764,
		-0.959358, -0.275584, -0.060706,
		0.213930, -0.569973, -0.793325,
		41.369839, 53.585075, 54.492470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705330, 54.134308, 55.474277>,  <41.220089, 53.984058, 55.047798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705330, 54.134308, 55.474277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949276, 54.451294, 55.477547>,  <42.095646, 54.641483, 55.479507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949276, 54.451294, 55.477547>,  <41.705330, 54.134308, 55.474277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949276, 54.451294, 55.477547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674491, 0.524441, -0.519638,
		-0.416079, 0.311397, 0.854348,
		0.609868, 0.792461, 0.008174,
		42.132236, 54.689034, 55.480000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282761, 54.716114, 55.741966>,  <41.705330, 54.134308, 55.474277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282761, 54.716114, 55.741966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582813, 54.811005, 55.495056>,  <41.762844, 54.867939, 55.346909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582813, 54.811005, 55.495056>,  <41.282761, 54.716114, 55.741966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582813, 54.811005, 55.495056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613497, 0.598059, -0.515699,
		0.246829, 0.765538, 0.594160,
		0.750131, 0.237226, -0.617274,
		41.807854, 54.882172, 55.309875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348465, 55.476288, 55.513302>,  <41.282761, 54.716114, 55.741966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348465, 55.476288, 55.513302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505814, 55.249847, 55.223534>,  <41.600224, 55.113983, 55.049675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505814, 55.249847, 55.223534>,  <41.348465, 55.476288, 55.513302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505814, 55.249847, 55.223534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479397, 0.546043, -0.687034,
		0.784496, 0.617546, -0.056589,
		0.393375, -0.566104, -0.724418,
		41.623825, 55.080017, 55.006207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805588, 55.901890, 55.012962>,  <41.348465, 55.476288, 55.513302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805588, 55.901890, 55.012962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597908, 55.588493, 54.876385>,  <41.473301, 55.400455, 54.794437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597908, 55.588493, 54.876385>,  <41.805588, 55.901890, 55.012962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597908, 55.588493, 54.876385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373688, 0.567403, -0.733765,
		0.768631, -0.253375, -0.587373,
		-0.519195, -0.783489, -0.341441,
		41.442150, 55.353447, 54.773952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572803, 55.994801, 55.234375>,  <41.805588, 55.901890, 55.012962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572803, 55.994801, 55.234375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741840, 56.140827, 54.902557>,  <42.843262, 56.228443, 54.703468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741840, 56.140827, 54.902557>,  <42.572803, 55.994801, 55.234375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741840, 56.140827, 54.902557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859113, -0.452901, 0.238338,
		-0.288692, -0.813392, -0.505026,
		0.422589, 0.365068, -0.829544,
		42.868618, 56.250347, 54.653694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177654, 55.662296, 55.147682>,  <42.572803, 55.994801, 55.234375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177654, 55.662296, 55.147682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222713, 55.843124, 54.793747>,  <43.249748, 55.951622, 54.581387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222713, 55.843124, 54.793747>,  <43.177654, 55.662296, 55.147682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222713, 55.843124, 54.793747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911641, -0.401248, -0.088944,
		-0.395250, -0.796639, -0.457322,
		0.112643, 0.452068, -0.884842,
		43.256508, 55.978745, 54.528294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398350, 55.176556, 54.711700>,  <43.177654, 55.662296, 55.147682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398350, 55.176556, 54.711700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536076, 55.535164, 54.600204>,  <43.618710, 55.750328, 54.533306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536076, 55.535164, 54.600204>,  <43.398350, 55.176556, 54.711700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536076, 55.535164, 54.600204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936847, -0.308669, 0.164443,
		0.061390, -0.317752, -0.946184,
		0.344310, 0.896525, -0.278736,
		43.639370, 55.804123, 54.516582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910828, 55.199226, 54.209846>,  <43.398350, 55.176556, 54.711700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910828, 55.199226, 54.209846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000145, 55.524776, 54.424416>,  <44.053734, 55.720108, 54.553158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000145, 55.524776, 54.424416>,  <43.910828, 55.199226, 54.209846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000145, 55.524776, 54.424416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973141, -0.217748, -0.074710,
		0.056000, 0.538695, -0.840638,
		0.223292, 0.813876, 0.536420,
		44.067131, 55.768940, 54.585342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546570, 55.056870, 53.983208>,  <43.910828, 55.199226, 54.209846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546570, 55.056870, 53.983208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534477, 55.359833, 54.244106>,  <44.527222, 55.541611, 54.400646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534477, 55.359833, 54.244106>,  <44.546570, 55.056870, 53.983208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534477, 55.359833, 54.244106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998915, -0.000220, 0.046560,
		0.035408, 0.652942, -0.756580,
		-0.030235, 0.757408, 0.652242,
		44.525406, 55.587055, 54.439777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216934, 55.153992, 54.001202>,  <44.546570, 55.056870, 53.983208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216934, 55.153992, 54.001202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057808, 55.399952, 54.273563>,  <44.962330, 55.547527, 54.436981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057808, 55.399952, 54.273563>,  <45.216934, 55.153992, 54.001202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057808, 55.399952, 54.273563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917443, 0.261709, 0.299677,
		0.006072, 0.743912, -0.668251,
		-0.397820, 0.614902, 0.680908,
		44.938461, 55.584423, 54.477837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581581, 55.725643, 53.904121>,  <45.216934, 55.153992, 54.001202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.581581, 55.725643, 53.904121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422977, 55.696438, 54.270172>,  <45.327816, 55.678917, 54.489803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422977, 55.696438, 54.270172>,  <45.581581, 55.725643, 53.904121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422977, 55.696438, 54.270172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914153, 0.060137, 0.400884,
		-0.084302, 0.995516, 0.042898,
		-0.396507, -0.073010, 0.915124,
		45.304024, 55.674534, 54.544708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912273, 56.307667, 54.337177>,  <45.581581, 55.725643, 53.904121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912273, 56.307667, 54.337177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792542, 56.001846, 54.565517>,  <45.720703, 55.818356, 54.702522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792542, 56.001846, 54.565517>,  <45.912273, 56.307667, 54.337177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792542, 56.001846, 54.565517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882421, 0.005760, 0.470426,
		-0.362951, 0.644540, 0.672929,
		-0.299333, -0.764548, 0.570846,
		45.702744, 55.772480, 54.736771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894043, 56.486729, 55.046314>,  <45.912273, 56.307667, 54.337177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894043, 56.486729, 55.046314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968899, 56.093830, 55.051605>,  <46.013813, 55.858093, 55.054779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968899, 56.093830, 55.051605>,  <45.894043, 56.486729, 55.046314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968899, 56.093830, 55.051605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770463, 0.155117, 0.618324,
		-0.609397, -0.105522, 0.785812,
		0.187140, -0.982244, 0.013227,
		46.025040, 55.799156, 55.055573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979019, 56.341770, 55.701244>,  <45.894043, 56.486729, 55.046314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979019, 56.341770, 55.701244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171051, 56.082535, 55.464767>,  <46.286270, 55.926994, 55.322884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171051, 56.082535, 55.464767>,  <45.979019, 56.341770, 55.701244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171051, 56.082535, 55.464767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863494, 0.230346, 0.448684,
		-0.154610, -0.725891, 0.670207,
		0.480076, -0.648091, -0.591189,
		46.315075, 55.888107, 55.287411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426785, 55.837879, 56.056213>,  <45.979019, 56.341770, 55.701244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426785, 55.837879, 56.056213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595688, 55.864288, 55.694588>,  <46.697029, 55.880135, 55.477612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595688, 55.864288, 55.694588>,  <46.426785, 55.837879, 56.056213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595688, 55.864288, 55.694588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865835, 0.265902, 0.423823,
		0.268374, -0.961737, 0.055118,
		0.422262, 0.066020, -0.904066,
		46.722366, 55.884098, 55.423367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988079, 55.350975, 55.925716>,  <46.426785, 55.837879, 56.056213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988079, 55.350975, 55.925716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.062416, 55.688622, 55.724548>,  <47.107018, 55.891209, 55.603848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.062416, 55.688622, 55.724548>,  <46.988079, 55.350975, 55.925716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.062416, 55.688622, 55.724548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875084, 0.090584, 0.475418,
		0.446865, -0.528448, -0.721841,
		0.185846, 0.844119, -0.502915,
		47.118172, 55.941856, 55.573673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631824, 55.382816, 55.455105>,  <46.988079, 55.350975, 55.925716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631824, 55.382816, 55.455105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540333, 55.750259, 55.584000>,  <47.485435, 55.970726, 55.661339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540333, 55.750259, 55.584000>,  <47.631824, 55.382816, 55.455105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.540333, 55.750259, 55.584000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962625, 0.164115, 0.215449,
		0.145029, 0.359477, -0.921815,
		-0.228733, 0.918609, 0.322240,
		47.471714, 56.025841, 55.680672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.948395, 55.882225, 55.022694>,  <47.631824, 55.382816, 55.455105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.948395, 55.882225, 55.022694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.885773, 56.036701, 55.386307>,  <47.848198, 56.129387, 55.604477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.885773, 56.036701, 55.386307>,  <47.948395, 55.882225, 55.022694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.885773, 56.036701, 55.386307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977480, 0.192449, 0.086584,
		-0.141505, 0.902119, -0.407624,
		-0.156556, 0.386192, 0.909036,
		47.838806, 56.152557, 55.659016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.248825, 56.610336, 55.052612>,  <47.948395, 55.882225, 55.022694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.248825, 56.610336, 55.052612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.238811, 56.429314, 55.409164>,  <48.232803, 56.320698, 55.623096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.238811, 56.429314, 55.409164>,  <48.248825, 56.610336, 55.052612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.238811, 56.429314, 55.409164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953543, 0.256963, 0.157242,
		-0.300214, 0.853908, 0.425103,
		-0.025035, -0.452561, 0.891382,
		48.231300, 56.293545, 55.676579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.772907, 56.772129, 55.560825>,  <48.248825, 56.610336, 55.052612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.772907, 56.772129, 55.560825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.693707, 56.434010, 55.759331>,  <48.646187, 56.231140, 55.878433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.693707, 56.434010, 55.759331>,  <48.772907, 56.772129, 55.560825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.693707, 56.434010, 55.759331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975167, -0.118621, 0.187024,
		-0.099223, 0.520967, 0.847790,
		-0.197999, -0.845294, 0.496260,
		48.634308, 56.180420, 55.908207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.297939, 56.711670, 56.067024>,  <48.772907, 56.772129, 55.560825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.297939, 56.711670, 56.067024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.177208, 56.338535, 55.988319>,  <49.104767, 56.114655, 55.941097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.177208, 56.338535, 55.988319>,  <49.297939, 56.711670, 56.067024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.177208, 56.338535, 55.988319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952825, -0.302086, -0.029460,
		-0.031959, -0.196374, 0.980008,
		-0.301832, -0.932835, -0.196764,
		49.086658, 56.058685, 55.929291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.692474, 56.418865, 56.461594>,  <49.297939, 56.711670, 56.067024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.692474, 56.418865, 56.461594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.597210, 56.184334, 56.151886>,  <49.540051, 56.043617, 55.966061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.597210, 56.184334, 56.151886>,  <49.692474, 56.418865, 56.461594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.597210, 56.184334, 56.151886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965061, -0.232544, -0.120755,
		-0.109251, -0.775980, 0.621224,
		-0.238165, -0.586326, -0.774273,
		49.525761, 56.008434, 55.919605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.106670, 55.737427, 56.422661>,  <49.692474, 56.418865, 56.461594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.106670, 55.737427, 56.422661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.018299, 55.844620, 56.047562>,  <49.965275, 55.908936, 55.822502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.018299, 55.844620, 56.047562>,  <50.106670, 55.737427, 56.422661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.018299, 55.844620, 56.047562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966890, -0.065743, -0.246580,
		-0.127730, -0.961178, -0.244583,
		-0.220927, 0.267980, -0.937751,
		49.952023, 55.925014, 55.766235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.439739, 55.330093, 55.966122>,  <50.106670, 55.737427, 56.422661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.439739, 55.330093, 55.966122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.373158, 55.681770, 55.787544>,  <50.333210, 55.892776, 55.680397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.373158, 55.681770, 55.787544>,  <50.439739, 55.330093, 55.966122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.373158, 55.681770, 55.787544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969955, 0.064526, -0.234572,
		-0.177427, -0.472077, -0.863518,
		-0.166456, 0.879193, -0.446444,
		50.323219, 55.945530, 55.653610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.615353, 55.298439, 55.188702>,  <50.439739, 55.330093, 55.966122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.615353, 55.298439, 55.188702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.676788, 55.661667, 55.344559>,  <50.713650, 55.879604, 55.438072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.676788, 55.661667, 55.344559>,  <50.615353, 55.298439, 55.188702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.676788, 55.661667, 55.344559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912897, 0.020528, -0.407674,
		-0.378194, 0.418320, -0.825819,
		0.153586, 0.908068, 0.389647,
		50.722862, 55.934086, 55.461452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.770546, 55.862240, 54.651344>,  <50.615353, 55.298439, 55.188702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.770546, 55.862240, 54.651344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.944298, 55.946053, 55.001755>,  <51.048550, 55.996342, 55.212002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.944298, 55.946053, 55.001755>,  <50.770546, 55.862240, 54.651344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.944298, 55.946053, 55.001755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852813, 0.217324, -0.474847,
		-0.289876, 0.953345, -0.084291,
		0.434375, 0.209531, 0.876022,
		51.074612, 56.008911, 55.264561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.237427, 56.542675, 54.619915>,  <50.770546, 55.862240, 54.651344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.237427, 56.542675, 54.619915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.366463, 56.328743, 54.932297>,  <51.443886, 56.200382, 55.119724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.366463, 56.328743, 54.932297>,  <51.237427, 56.542675, 54.619915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.366463, 56.328743, 54.932297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946226, 0.203428, -0.251544,
		-0.024334, 0.820104, 0.571697,
		0.322591, -0.534833, 0.780954,
		51.463242, 56.168293, 55.166584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.715363, 57.031403, 55.003044>,  <51.237427, 56.542675, 54.619915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.715363, 57.031403, 55.003044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.806717, 56.643848, 55.041206>,  <51.861530, 56.411316, 55.064106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.806717, 56.643848, 55.041206>,  <51.715363, 57.031403, 55.003044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.806717, 56.643848, 55.041206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854370, 0.152468, -0.496796,
		0.466792, 0.194973, 0.862607,
		0.228382, -0.968886, 0.095408,
		51.875233, 56.353184, 55.069828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.340874, 57.123764, 55.035915>,  <51.715363, 57.031403, 55.003044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.340874, 57.123764, 55.035915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.296165, 56.743080, 54.921539>,  <52.269341, 56.514671, 54.852913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.296165, 56.743080, 54.921539>,  <52.340874, 57.123764, 55.035915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.296165, 56.743080, 54.921539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908281, 0.018893, -0.417935,
		0.403154, -0.306426, 0.862305,
		-0.111774, -0.951707, -0.285938,
		52.262634, 56.457569, 54.835758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.869579, 56.614624, 55.346912>,  <52.340874, 57.123764, 55.035915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.869579, 56.614624, 55.346912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.748692, 56.556423, 54.970085>,  <52.676159, 56.521503, 54.743988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.748692, 56.556423, 54.970085>,  <52.869579, 56.614624, 55.346912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.748692, 56.556423, 54.970085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922647, 0.203715, -0.327448,
		0.239557, -0.968158, 0.072680,
		-0.302215, -0.145501, -0.942070,
		52.658028, 56.512772, 54.687466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.309921, 56.143970, 54.966316>,  <52.869579, 56.614624, 55.346912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.309921, 56.143970, 54.966316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.190292, 56.416492, 54.699070>,  <53.118515, 56.580006, 54.538723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.190292, 56.416492, 54.699070>,  <53.309921, 56.143970, 54.966316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.190292, 56.416492, 54.699070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954178, 0.206166, -0.216886,
		-0.010025, -0.702363, -0.711749,
		-0.299071, 0.681309, -0.668112,
		53.100571, 56.620884, 54.498638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.456825, 56.083260, 54.156151>,  <53.309921, 56.143970, 54.966316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.456825, 56.083260, 54.156151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.467083, 56.456047, 54.300804>,  <53.473236, 56.679718, 54.387596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.467083, 56.456047, 54.300804>,  <53.456825, 56.083260, 54.156151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.467083, 56.456047, 54.300804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939268, 0.101383, -0.327868,
		-0.342225, 0.348082, -0.872766,
		0.025641, 0.931966, 0.361638,
		53.474773, 56.735638, 54.409294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.991417, 56.560909, 53.741066>,  <53.456825, 56.083260, 54.156151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.991417, 56.560909, 53.741066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.935104, 56.722183, 54.102757>,  <53.901318, 56.818947, 54.319771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.935104, 56.722183, 54.102757>,  <53.991417, 56.560909, 53.741066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.935104, 56.722183, 54.102757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977225, 0.203071, 0.061597,
		-0.158788, 0.892304, -0.422588,
		-0.140779, 0.403183, 0.904226,
		53.892872, 56.843140, 54.374023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.432037, 57.178886, 53.724606>,  <53.991417, 56.560909, 53.741066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.432037, 57.178886, 53.724606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.351418, 57.023270, 54.084167>,  <54.303047, 56.929897, 54.299904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.351418, 57.023270, 54.084167>,  <54.432037, 57.178886, 53.724606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.351418, 57.023270, 54.084167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974572, 0.012095, 0.223749,
		-0.097921, 0.921139, 0.376715,
		-0.201548, -0.389046, 0.898900,
		54.290955, 56.906555, 54.353836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.480259, 57.674629, 54.336498>,  <54.432037, 57.178886, 53.724606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.480259, 57.674629, 54.336498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.568848, 57.288219, 54.389782>,  <54.622002, 57.056374, 54.421753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.568848, 57.288219, 54.389782>,  <54.480259, 57.674629, 54.336498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.568848, 57.288219, 54.389782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972967, 0.228068, 0.036327,
		-0.065474, 0.121566, 0.990422,
		0.221468, -0.966026, 0.133212,
		54.635288, 56.998413, 54.429745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.041660, 57.699909, 54.779530>,  <54.480259, 57.674629, 54.336498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.041660, 57.699909, 54.779530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.100380, 57.329311, 54.640930>,  <55.135612, 57.106953, 54.557770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.100380, 57.329311, 54.640930>,  <55.041660, 57.699909, 54.779530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.100380, 57.329311, 54.640930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988834, 0.146542, 0.027086,
		0.025681, -0.346606, 0.937659,
		0.146795, -0.926493, -0.346499,
		55.144417, 57.051365, 54.536980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.737183, 57.431259, 55.199013>,  <55.041660, 57.699909, 54.779530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.737183, 57.431259, 55.199013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.688049, 57.283291, 54.830650>,  <55.658569, 57.194511, 54.609634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.688049, 57.283291, 54.830650>,  <55.737183, 57.431259, 55.199013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.688049, 57.283291, 54.830650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976553, 0.120247, -0.178562,
		0.176790, -0.921250, 0.346475,
		-0.122838, -0.369919, -0.920908,
		55.651199, 57.172314, 54.554379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.315430, 56.975540, 55.184818>,  <55.737183, 57.431259, 55.199013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.315430, 56.975540, 55.184818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.183853, 57.053730, 54.815258>,  <56.104908, 57.100643, 54.593521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.183853, 57.053730, 54.815258>,  <56.315430, 56.975540, 55.184818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.183853, 57.053730, 54.815258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943772, 0.102305, -0.314371,
		0.033068, -0.975358, -0.218136,
		-0.328940, 0.195475, -0.923898,
		56.085171, 57.112373, 54.538090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.621460, 56.600937, 54.536037>,  <56.315430, 56.975540, 55.184818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.621460, 56.600937, 54.536037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.515068, 56.976570, 54.448975>,  <56.451233, 57.201950, 54.396736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.515068, 56.976570, 54.448975>,  <56.621460, 56.600937, 54.536037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.515068, 56.976570, 54.448975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959023, 0.234906, -0.158411,
		-0.097634, -0.250868, -0.963085,
		-0.265975, 0.939087, -0.217653,
		56.435276, 57.258297, 54.383678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.079617, 56.702255, 54.116627>,  <56.621460, 56.600937, 54.536037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.079617, 56.702255, 54.116627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.964218, 57.039391, 54.298347>,  <56.894978, 57.241673, 54.407379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.964218, 57.039391, 54.298347>,  <57.079617, 56.702255, 54.116627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.964218, 57.039391, 54.298347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955375, 0.221956, 0.194919,
		0.063452, 0.490259, -0.869264,
		-0.288499, 0.842842, 0.454297,
		56.877666, 57.292244, 54.434635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.564804, 57.148880, 53.800728>,  <57.079617, 56.702255, 54.116627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.564804, 57.148880, 53.800728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.415359, 57.271252, 54.151001>,  <57.325691, 57.344673, 54.361164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.415359, 57.271252, 54.151001>,  <57.564804, 57.148880, 53.800728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.415359, 57.271252, 54.151001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919371, 0.247477, 0.305797,
		-0.123159, 0.919327, -0.373724,
		-0.373615, 0.305930, 0.875682,
		57.303276, 57.363029, 54.413704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.705650, 57.948120, 54.056343>,  <57.564804, 57.148880, 53.800728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.705650, 57.948120, 54.056343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.677338, 57.688217, 54.359081>,  <57.660351, 57.532276, 54.540722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.677338, 57.688217, 54.359081>,  <57.705650, 57.948120, 54.056343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.677338, 57.688217, 54.359081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888806, 0.303333, 0.343531,
		-0.452786, 0.697001, 0.556034,
		-0.070779, -0.649753, 0.756843,
		57.656105, 57.493290, 54.586136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.839771, 58.387459, 54.662365>,  <57.705650, 57.948120, 54.056343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.839771, 58.387459, 54.662365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.951942, 58.003517, 54.664639>,  <58.019245, 57.773151, 54.666000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.951942, 58.003517, 54.664639>,  <57.839771, 58.387459, 54.662365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.951942, 58.003517, 54.664639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897586, 0.264321, 0.352810,
		-0.340149, -0.093837, 0.935678,
		0.280426, -0.959859, 0.005681,
		58.036072, 57.715561, 54.666344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.101433, 58.178806, 55.335896>,  <57.839771, 58.387459, 54.662365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.101433, 58.178806, 55.335896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.280815, 57.992809, 55.030563>,  <58.388443, 57.881210, 54.847366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.280815, 57.992809, 55.030563>,  <58.101433, 58.178806, 55.335896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.280815, 57.992809, 55.030563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884865, 0.351463, 0.305757,
		0.126106, -0.812560, 0.569072,
		0.448454, -0.464994, -0.763328,
		58.415352, 57.853310, 54.801563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.724194, 57.906300, 55.511593>,  <58.101433, 58.178806, 55.335896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.724194, 57.906300, 55.511593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.773834, 58.005909, 55.127388>,  <58.803619, 58.065674, 54.896866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.773834, 58.005909, 55.127388>,  <58.724194, 57.906300, 55.511593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.773834, 58.005909, 55.127388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885621, 0.408777, 0.220403,
		0.447522, -0.878002, -0.169816,
		0.124097, 0.249028, -0.960513,
		58.811062, 58.080616, 54.839233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.855465, 57.142086, 55.456055>,  <58.724194, 57.906300, 55.511593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.855465, 57.142086, 55.456055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.166519, 57.001434, 55.664528>,  <59.353153, 56.917042, 55.789612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.166519, 57.001434, 55.664528>,  <58.855465, 57.142086, 55.456055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.166519, 57.001434, 55.664528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198843, 0.923974, 0.326701,
		-0.596439, -0.150422, 0.788438,
		0.777639, -0.351633, 0.521183,
		59.399811, 56.895943, 55.820885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.849941, 57.315582, 56.156025>,  <58.855465, 57.142086, 55.456055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.849941, 57.315582, 56.156025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.218658, 57.305607, 56.001274>,  <59.439888, 57.299622, 55.908424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.218658, 57.305607, 56.001274>,  <58.849941, 57.315582, 56.156025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.218658, 57.305607, 56.001274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177722, 0.914079, 0.364520,
		0.344549, -0.404770, 0.847023,
		0.921792, -0.024940, -0.386882,
		59.495197, 57.298126, 55.885208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.655884, 57.178219, 56.359348>,  <58.849941, 57.315582, 56.156025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.655884, 57.178219, 56.359348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.588852, 57.470428, 56.624153>,  <59.548634, 57.645752, 56.783035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.588852, 57.470428, 56.624153>,  <59.655884, 57.178219, 56.359348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.588852, 57.470428, 56.624153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158100, 0.642899, -0.749457,
		-0.973098, -0.230260, 0.007756,
		-0.167584, 0.730521, 0.662007,
		59.538578, 57.689587, 56.822754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.169613, 56.674633, 56.104790>,  <59.655884, 57.178219, 56.359348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.169613, 56.674633, 56.104790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.484245, 56.632347, 55.861443>,  <60.673027, 56.606976, 55.715435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.484245, 56.632347, 55.861443>,  <60.169613, 56.674633, 56.104790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.484245, 56.632347, 55.861443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186619, -0.898461, 0.397418,
		-0.588607, -0.426136, -0.686986,
		0.786584, -0.105719, -0.608365,
		60.720222, 56.600632, 55.678932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.150242, 56.005325, 55.768280>,  <60.169613, 56.674633, 56.104790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.150242, 56.005325, 55.768280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.534088, 56.117531, 55.776733>,  <60.764397, 56.184856, 55.781807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.534088, 56.117531, 55.776733>,  <60.150242, 56.005325, 55.768280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.534088, 56.117531, 55.776733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232592, -0.833436, 0.501283,
		0.158231, -0.476124, -0.865025,
		0.959616, 0.280517, 0.021133,
		60.821972, 56.201687, 55.783073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.573235, 55.422169, 55.401825>,  <60.150242, 56.005325, 55.768280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.573235, 55.422169, 55.401825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.744507, 55.624832, 55.701149>,  <60.847271, 55.746429, 55.880741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.744507, 55.624832, 55.701149>,  <60.573235, 55.422169, 55.401825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.744507, 55.624832, 55.701149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212476, -0.861283, 0.461568,
		0.878361, -0.038635, -0.476434,
		0.428178, 0.506654, 0.748308,
		60.872959, 55.776829, 55.925640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.294254, 55.239578, 55.440647>,  <60.573235, 55.422169, 55.401825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.294254, 55.239578, 55.440647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.160385, 55.326996, 55.807304>,  <61.080063, 55.379448, 56.027298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.160385, 55.326996, 55.807304>,  <61.294254, 55.239578, 55.440647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.160385, 55.326996, 55.807304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448843, -0.818335, 0.358982,
		0.828574, 0.531569, 0.175781,
		-0.334672, 0.218546, 0.916642,
		61.059982, 55.392559, 56.082298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.923206, 55.195450, 55.905952>,  <61.294254, 55.239578, 55.440647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.923206, 55.195450, 55.905952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.567856, 55.124168, 56.075203>,  <61.354645, 55.081398, 56.176754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.567856, 55.124168, 56.075203>,  <61.923206, 55.195450, 55.905952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.567856, 55.124168, 56.075203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336481, -0.879728, 0.335946,
		0.312367, 0.440819, 0.841490,
		-0.888373, -0.178207, 0.423126,
		61.301342, 55.070705, 56.202141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.890217, 55.099827, 56.685074>,  <61.923206, 55.195450, 55.905952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.890217, 55.099827, 56.685074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.621346, 54.885601, 56.480583>,  <61.460022, 54.757065, 56.357887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.621346, 54.885601, 56.480583>,  <61.890217, 55.099827, 56.685074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.621346, 54.885601, 56.480583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342689, -0.837112, 0.426390,
		-0.656313, 0.111417, 0.746217,
		-0.672174, -0.535565, -0.511226,
		61.419693, 54.724930, 56.327217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.232227, 55.152153, 57.447662>,  <61.890217, 55.099827, 56.685074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.232227, 55.152153, 57.447662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.511002, 54.952812, 57.653938>,  <62.678265, 54.833206, 57.777702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.511002, 54.952812, 57.653938>,  <62.232227, 55.152153, 57.447662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.511002, 54.952812, 57.653938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651583, 0.740397, -0.165082,
		-0.299545, 0.451064, 0.840723,
		0.696931, -0.498351, 0.515687,
		62.720081, 54.803307, 57.808643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.394207, 55.616573, 58.009785>,  <62.232227, 55.152153, 57.447662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.394207, 55.616573, 58.009785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.658737, 55.360901, 57.852768>,  <62.817455, 55.207497, 57.758556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.658737, 55.360901, 57.852768>,  <62.394207, 55.616573, 58.009785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.658737, 55.360901, 57.852768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546341, 0.769039, -0.331798,
		0.513960, 0.004965, 0.857799,
		0.661329, -0.639182, -0.392543,
		62.857136, 55.169147, 57.735004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.148006, 55.863094, 58.201633>,  <62.394207, 55.616573, 58.009785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.148006, 55.863094, 58.201633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.125816, 55.654285, 57.861183>,  <63.112503, 55.528999, 57.656914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.125816, 55.654285, 57.861183>,  <63.148006, 55.863094, 58.201633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.125816, 55.654285, 57.861183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432483, 0.755756, -0.491722,
		0.899934, -0.395374, 0.183844,
		-0.055473, -0.522027, -0.851123,
		63.109173, 55.497677, 57.605846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.706120, 56.069740, 57.878414>,  <63.148006, 55.863094, 58.201633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.706120, 56.069740, 57.878414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.538574, 55.927330, 57.544273>,  <63.438049, 55.841885, 57.343788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.538574, 55.927330, 57.544273>,  <63.706120, 56.069740, 57.878414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.538574, 55.927330, 57.544273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410107, 0.746600, -0.523833,
		0.810166, -0.561994, -0.166714,
		-0.418860, -0.356021, -0.835348,
		63.412918, 55.820522, 57.293671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.465561, 55.960869, 57.672604>,  <63.706120, 56.069740, 57.878414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.465561, 55.960869, 57.672604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.797966, 56.011574, 57.889252>,  <64.997406, 56.041996, 58.019241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.797966, 56.011574, 57.889252>,  <64.465561, 55.960869, 57.672604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.797966, 56.011574, 57.889252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555856, 0.226317, 0.799878,
		-0.021188, -0.965771, 0.258530,
		0.831009, 0.126758, 0.541625,
		65.047272, 56.049603, 58.051739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.076599, 55.947575, 57.299347>,  <64.465561, 55.960869, 57.672604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.076599, 55.947575, 57.299347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.394432, 55.760284, 57.144730>,  <65.585129, 55.647911, 57.051960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.394432, 55.760284, 57.144730>,  <65.076599, 55.947575, 57.299347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.394432, 55.760284, 57.144730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519049, 0.193508, 0.832552,
		-0.315020, -0.862161, 0.396788,
		0.794576, -0.468223, -0.386545,
		65.632805, 55.619816, 57.028767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.336693, 55.455467, 57.805317>,  <65.076599, 55.947575, 57.299347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.336693, 55.455467, 57.805317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.625160, 55.563763, 57.550255>,  <65.798241, 55.628738, 57.397217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.625160, 55.563763, 57.550255>,  <65.336693, 55.455467, 57.805317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.625160, 55.563763, 57.550255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553029, 0.329359, 0.765299,
		0.417216, -0.904556, 0.087798,
		0.721173, 0.270740, -0.637660,
		65.841515, 55.644985, 57.358955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.933472, 55.098976, 57.994190>,  <65.336693, 55.455467, 57.805317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.933472, 55.098976, 57.994190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.995468, 55.455734, 57.824249>,  <66.032669, 55.669788, 57.722286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.995468, 55.455734, 57.824249>,  <65.933472, 55.098976, 57.994190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.995468, 55.455734, 57.824249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641010, 0.236436, 0.730209,
		0.751720, -0.385515, -0.535067,
		0.154997, 0.891895, -0.424852,
		66.041969, 55.723301, 57.696793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.538414, 55.437191, 58.114307>,  <65.933472, 55.098976, 57.994190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.538414, 55.437191, 58.114307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.386818, 55.792393, 58.010139>,  <66.295860, 56.005512, 57.947639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.386818, 55.792393, 58.010139>,  <66.538414, 55.437191, 58.114307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.386818, 55.792393, 58.010139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602307, 0.450351, 0.659098,
		0.702562, 0.092936, -0.705528,
		-0.378989, 0.888002, -0.260424,
		66.273125, 56.058792, 57.932011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.092155, 55.927574, 57.905384>,  <66.538414, 55.437191, 58.114307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.092155, 55.927574, 57.905384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.769409, 56.093834, 58.073288>,  <66.575760, 56.193588, 58.174030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.769409, 56.093834, 58.073288>,  <67.092155, 55.927574, 57.905384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.769409, 56.093834, 58.073288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587457, 0.489883, 0.644135,
		0.062099, 0.766324, -0.639446,
		-0.806870, 0.415647, 0.419761,
		66.527351, 56.218529, 58.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.180374, 56.669559, 57.866688>,  <67.092155, 55.927574, 57.905384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.180374, 56.669559, 57.866688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.918076, 56.567177, 58.150795>,  <66.760696, 56.505745, 58.321259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.918076, 56.567177, 58.150795>,  <67.180374, 56.669559, 57.866688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.918076, 56.567177, 58.150795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492626, 0.567849, 0.659444,
		-0.572118, 0.782324, -0.246271,
		-0.655744, -0.255961, 0.710270,
		66.721352, 56.490387, 58.363876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.813187, 57.303776, 58.032616>,  <67.180374, 56.669559, 57.866688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.813187, 57.303776, 58.032616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.857063, 57.024467, 58.315567>,  <66.883392, 56.856884, 58.485336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.857063, 57.024467, 58.315567>,  <66.813187, 57.303776, 58.032616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.857063, 57.024467, 58.315567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418561, 0.677949, 0.604312,
		-0.901539, 0.229788, 0.366640,
		0.109699, -0.698272, 0.707377,
		66.889977, 56.814987, 58.527779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.511497, 57.594990, 58.782619>,  <66.813187, 57.303776, 58.032616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.511497, 57.594990, 58.782619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.793602, 57.311417, 58.780594>,  <66.962868, 57.141273, 58.779381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.793602, 57.311417, 58.780594>,  <66.511497, 57.594990, 58.782619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.793602, 57.311417, 58.780594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562439, 0.555157, 0.612750,
		-0.431587, -0.434995, 0.790260,
		0.705263, -0.708928, -0.005059,
		67.005180, 57.098740, 58.779076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.020187, 57.739594, 59.322956>,  <66.511497, 57.594990, 58.782619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.020187, 57.739594, 59.322956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.216866, 57.438934, 59.147110>,  <67.334869, 57.258537, 59.041603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.216866, 57.438934, 59.147110>,  <67.020187, 57.739594, 59.322956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.216866, 57.438934, 59.147110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848183, 0.299172, 0.437130,
		-0.197046, -0.587810, 0.784635,
		0.491690, -0.751649, -0.439619,
		67.364372, 57.213440, 59.015224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.445824, 57.605930, 59.832050>,  <67.020187, 57.739594, 59.322956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.445824, 57.605930, 59.832050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.584488, 57.478970, 59.478989>,  <67.667686, 57.402794, 59.267151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.584488, 57.478970, 59.478989>,  <67.445824, 57.605930, 59.832050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.584488, 57.478970, 59.478989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903529, 0.365728, 0.223335,
		0.251924, -0.874927, 0.413566,
		0.346654, -0.317405, -0.882658,
		67.688484, 57.383747, 59.214191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.996170, 57.144947, 59.825729>,  <67.445824, 57.605930, 59.832050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.996170, 57.144947, 59.825729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.997749, 57.401829, 59.519119>,  <67.998695, 57.555958, 59.335152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.997749, 57.401829, 59.519119>,  <67.996170, 57.144947, 59.825729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.997749, 57.401829, 59.519119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918450, 0.300847, 0.256791,
		0.395518, -0.705029, -0.588642,
		0.003954, 0.642203, -0.766524,
		67.998932, 57.594490, 59.289162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.664131, 57.088879, 59.416115>,  <67.996170, 57.144947, 59.825729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.664131, 57.088879, 59.416115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.529259, 57.464069, 59.383835>,  <68.448334, 57.689182, 59.364468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.529259, 57.464069, 59.383835>,  <68.664131, 57.088879, 59.416115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.529259, 57.464069, 59.383835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857197, 0.341323, 0.385631,
		0.389258, 0.060849, -0.919117,
		-0.337180, 0.937975, -0.080704,
		68.428108, 57.745461, 59.359623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.055031, 57.364639, 58.872463>,  <68.664131, 57.088879, 59.416115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.055031, 57.364639, 58.872463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.898239, 57.600029, 59.155319>,  <68.804161, 57.741264, 59.325031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.898239, 57.600029, 59.155319>,  <69.055031, 57.364639, 58.872463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.898239, 57.600029, 59.155319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918268, 0.297046, 0.261817,
		-0.055979, 0.751970, -0.656817,
		-0.391983, 0.588477, 0.707138,
		68.780647, 57.776573, 59.367462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.251213, 58.071678, 58.729961>,  <69.055031, 57.364639, 58.872463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.251213, 58.071678, 58.729961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.206841, 57.908646, 59.092522>,  <69.180214, 57.810825, 59.310059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.206841, 57.908646, 59.092522>,  <69.251213, 58.071678, 58.729961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.206841, 57.908646, 59.092522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963409, 0.179813, 0.198772,
		-0.243999, 0.895291, 0.372718,
		-0.110939, -0.407581, 0.906405,
		69.173561, 57.786373, 59.364445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.722412, 58.441315, 59.339115>,  <69.251213, 58.071678, 58.729961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.722412, 58.441315, 59.339115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.650299, 58.065155, 59.454460>,  <69.607033, 57.839458, 59.523666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.650299, 58.065155, 59.454460>,  <69.722412, 58.441315, 59.339115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.650299, 58.065155, 59.454460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928560, -0.066017, 0.365265,
		-0.324457, 0.333613, 0.885116,
		-0.180290, -0.940396, 0.288360,
		69.596214, 57.783035, 59.540970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.950424, 58.408741, 59.979218>,  <69.722412, 58.441315, 59.339115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.950424, 58.408741, 59.979218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.969429, 58.049366, 59.804604>,  <69.980827, 57.833740, 59.699837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.969429, 58.049366, 59.804604>,  <69.950424, 58.408741, 59.979218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.969429, 58.049366, 59.804604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992921, -0.005154, 0.118666,
		-0.108864, -0.439078, 0.891829,
		0.047507, -0.898434, -0.436530,
		69.983681, 57.779835, 59.673645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.373100, 57.922314, 60.404076>,  <69.950424, 58.408741, 59.979218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.373100, 57.922314, 60.404076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.407188, 57.828495, 60.016731>,  <70.427643, 57.772202, 59.784325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.407188, 57.828495, 60.016731>,  <70.373100, 57.922314, 60.404076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.407188, 57.828495, 60.016731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991099, -0.079799, 0.106556,
		-0.102267, -0.968823, 0.225661,
		0.085226, -0.234549, -0.968361,
		70.432755, 57.758129, 59.726223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.069595, 58.286427, 60.433231>,  <70.373100, 57.922314, 60.404076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.069595, 58.286427, 60.433231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.714256, 58.465370, 60.474648>,  <70.501053, 58.572735, 60.499496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.714256, 58.465370, 60.474648>,  <71.069595, 58.286427, 60.433231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.714256, 58.465370, 60.474648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105420, 0.020777, -0.994211,
		-0.446921, -0.894113, 0.028704,
		-0.888340, 0.447359, 0.103543,
		70.447754, 58.599579, 60.505711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.222717, 57.610596, 60.507076>,  <71.069595, 58.286427, 60.433231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.222717, 57.610596, 60.507076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.366043, 57.556160, 60.137627>,  <71.452042, 57.523499, 59.915955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.366043, 57.556160, 60.137627>,  <71.222717, 57.610596, 60.507076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.366043, 57.556160, 60.137627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584467, 0.804164, 0.108255,
		0.728017, -0.578620, 0.367683,
		0.358316, -0.136087, -0.923629,
		71.473541, 57.515335, 59.860538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.989944, 57.524261, 60.509212>,  <71.222717, 57.610596, 60.507076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.989944, 57.524261, 60.509212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.862663, 57.697563, 60.171921>,  <71.786293, 57.801544, 59.969547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.862663, 57.697563, 60.171921>,  <71.989944, 57.524261, 60.509212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.862663, 57.697563, 60.171921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609233, 0.774936, 0.168256,
		0.726344, -0.460181, -0.510547,
		-0.318213, 0.433253, -0.843227,
		71.767197, 57.827538, 59.918953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.621872, 57.656372, 60.235073>,  <71.989944, 57.524261, 60.509212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.621872, 57.656372, 60.235073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.322647, 57.869415, 60.076721>,  <72.143112, 57.997242, 59.981709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.322647, 57.869415, 60.076721>,  <72.621872, 57.656372, 60.235073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.322647, 57.869415, 60.076721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595794, 0.801751, -0.047167,
		0.292275, -0.271147, -0.917090,
		-0.748067, 0.532612, -0.395879,
		72.098228, 58.029198, 59.957958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.137886, 57.579220, 59.814907>,  <72.621872, 57.656372, 60.235073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.137886, 57.579220, 59.814907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.260841, 57.959816, 59.809616>,  <73.334610, 58.188175, 59.806442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.260841, 57.959816, 59.809616>,  <73.137886, 57.579220, 59.814907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.260841, 57.959816, 59.809616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488482, 0.169705, 0.855912,
		0.816640, -0.256631, 0.516952,
		0.307383, 0.951494, -0.013228,
		73.353058, 58.245266, 59.805649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.547333, 57.868607, 60.387424>,  <73.137886, 57.579220, 59.814907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.547333, 57.868607, 60.387424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.323563, 58.156883, 60.223648>,  <73.189301, 58.329849, 60.125381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.323563, 58.156883, 60.223648>,  <73.547333, 57.868607, 60.387424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.323563, 58.156883, 60.223648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379506, 0.216442, 0.899516,
		0.736895, 0.658598, 0.152424,
		-0.559429, 0.720695, -0.409437,
		73.155731, 58.373093, 60.100819>
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
