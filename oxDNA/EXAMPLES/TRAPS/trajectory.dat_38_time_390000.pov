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
	<37.199013, 53.047466, 49.463604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828640, 52.896473, 49.468544>,  <36.606415, 52.805878, 49.471508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828640, 52.896473, 49.468544>,  <37.199013, 53.047466, 49.463604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828640, 52.896473, 49.468544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122513, 0.269257, -0.955244,
		0.357268, -0.886004, -0.295561,
		-0.925932, -0.377488, 0.012350,
		36.550861, 52.783226, 49.472248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105473, 52.710541, 48.801620>,  <37.199013, 53.047466, 49.463604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105473, 52.710541, 48.801620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731609, 52.716290, 48.943726>,  <36.507290, 52.719738, 49.028988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731609, 52.716290, 48.943726>,  <37.105473, 52.710541, 48.801620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731609, 52.716290, 48.943726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352324, 0.096881, -0.930850,
		-0.047799, -0.995192, -0.085486,
		-0.934657, 0.014375, 0.355261,
		36.451214, 52.720600, 49.050304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526592, 52.238552, 48.727356>,  <37.105473, 52.710541, 48.801620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526592, 52.238552, 48.727356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266582, 52.010704, 48.928551>,  <36.110577, 51.873997, 49.049267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266582, 52.010704, 48.928551>,  <36.526592, 52.238552, 48.727356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266582, 52.010704, 48.928551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459718, 0.232277, 0.857150,
		-0.605083, 0.788404, 0.110879,
		-0.650026, -0.569620, 0.502991,
		36.071575, 51.839817, 49.079449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932816, 52.466660, 49.316223>,  <36.526592, 52.238552, 48.727356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932816, 52.466660, 49.316223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077126, 52.106483, 49.413422>,  <36.163712, 51.890377, 49.471741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077126, 52.106483, 49.413422>,  <35.932816, 52.466660, 49.316223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077126, 52.106483, 49.413422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393321, 0.383134, 0.835767,
		-0.845659, -0.205949, 0.492387,
		0.360776, -0.900440, 0.242997,
		36.185360, 51.836349, 49.486320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795494, 52.297272, 50.077625>,  <35.932816, 52.466660, 49.316223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795494, 52.297272, 50.077625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128372, 52.145378, 49.916008>,  <36.328098, 52.054241, 49.819038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128372, 52.145378, 49.916008>,  <35.795494, 52.297272, 50.077625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128372, 52.145378, 49.916008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509429, 0.235900, 0.827546,
		-0.218930, -0.894514, 0.389761,
		0.832197, -0.379730, -0.404046,
		36.378033, 52.031460, 49.794792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210659, 51.748451, 50.518181>,  <35.795494, 52.297272, 50.077625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210659, 51.748451, 50.518181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482628, 51.929211, 50.287186>,  <36.645809, 52.037666, 50.148590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482628, 51.929211, 50.287186>,  <36.210659, 51.748451, 50.518181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482628, 51.929211, 50.287186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578534, 0.153307, 0.801121,
		0.450561, -0.878796, -0.157204,
		0.679921, 0.451902, -0.577487,
		36.686604, 52.064781, 50.113941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850403, 51.474506, 50.593323>,  <36.210659, 51.748451, 50.518181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850403, 51.474506, 50.593323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931316, 51.858898, 50.517853>,  <36.979866, 52.089535, 50.472572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931316, 51.858898, 50.517853>,  <36.850403, 51.474506, 50.593323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931316, 51.858898, 50.517853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720553, -0.015573, 0.693225,
		0.663238, -0.276177, -0.695588,
		0.202285, 0.960981, -0.188671,
		36.992001, 52.147194, 50.461250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594620, 51.602547, 50.357208>,  <36.850403, 51.474506, 50.593323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594620, 51.602547, 50.357208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471638, 51.912514, 50.578106>,  <37.397846, 52.098495, 50.710644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471638, 51.912514, 50.578106>,  <37.594620, 51.602547, 50.357208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471638, 51.912514, 50.578106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847971, -0.040200, 0.528515,
		0.431757, 0.630781, -0.644749,
		-0.307458, 0.774919, 0.552241,
		37.379398, 52.144989, 50.743778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247768, 52.034966, 50.685669>,  <37.594620, 51.602547, 50.357208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247768, 52.034966, 50.685669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921719, 52.113129, 50.903801>,  <37.726089, 52.160027, 51.034679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921719, 52.113129, 50.903801>,  <38.247768, 52.034966, 50.685669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921719, 52.113129, 50.903801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577092, 0.192087, 0.793768,
		0.050358, 0.961727, -0.269344,
		-0.815125, 0.195409, 0.545332,
		37.677181, 52.171753, 51.067402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288086, 52.523487, 51.151215>,  <38.247768, 52.034966, 50.685669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288086, 52.523487, 51.151215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997753, 52.314201, 51.329838>,  <37.823555, 52.188629, 51.437012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997753, 52.314201, 51.329838>,  <38.288086, 52.523487, 51.151215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997753, 52.314201, 51.329838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397052, 0.211443, 0.893108,
		-0.561708, 0.825554, 0.054271,
		-0.725833, -0.523214, 0.446556,
		37.780003, 52.157238, 51.463806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411140, 52.718342, 51.862232>,  <38.288086, 52.523487, 51.151215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411140, 52.718342, 51.862232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115746, 52.465790, 51.956894>,  <37.938511, 52.314259, 52.013691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115746, 52.465790, 51.956894>,  <38.411140, 52.718342, 51.862232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115746, 52.465790, 51.956894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102543, 0.241732, 0.964910,
		-0.666428, 0.736838, -0.113772,
		-0.738484, -0.631376, 0.236655,
		37.894199, 52.276379, 52.027889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825478, 52.907623, 52.453602>,  <38.411140, 52.718342, 51.862232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825478, 52.907623, 52.453602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849548, 52.654762, 52.144600>,  <38.863991, 52.503048, 51.959198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849548, 52.654762, 52.144600>,  <38.825478, 52.907623, 52.453602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849548, 52.654762, 52.144600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295149, 0.750572, -0.591209,
		0.953554, -0.192426, 0.231748,
		0.060179, -0.632150, -0.772506,
		38.867603, 52.465118, 51.912849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488838, 52.961433, 52.140240>,  <38.825478, 52.907623, 52.453602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488838, 52.961433, 52.140240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192162, 52.876553, 51.885723>,  <39.014156, 52.825623, 51.733013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192162, 52.876553, 51.885723>,  <39.488838, 52.961433, 52.140240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192162, 52.876553, 51.885723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228907, 0.811600, -0.537501,
		0.630472, -0.544311, -0.553381,
		-0.741692, -0.212207, -0.636288,
		38.969654, 52.812889, 51.694836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264191, 52.852943, 52.380444>,  <39.488838, 52.961433, 52.140240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264191, 52.852943, 52.380444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181065, 53.069839, 52.706093>,  <40.131191, 53.199978, 52.901482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181065, 53.069839, 52.706093>,  <40.264191, 52.852943, 52.380444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181065, 53.069839, 52.706093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960229, 0.271756, 0.064105,
		-0.186482, 0.795063, -0.577148,
		-0.207811, 0.542239, 0.814120,
		40.118721, 53.232510, 52.950329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637218, 53.331738, 52.354237>,  <40.264191, 52.852943, 52.380444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637218, 53.331738, 52.354237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557644, 53.388756, 52.742073>,  <40.509899, 53.422966, 52.974773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557644, 53.388756, 52.742073>,  <40.637218, 53.331738, 52.354237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557644, 53.388756, 52.742073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939131, 0.310503, 0.147042,
		-0.280101, 0.939824, -0.195637,
		-0.198940, 0.142542, 0.969590,
		40.497963, 53.431519, 53.032951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047554, 53.908993, 52.548004>,  <40.637218, 53.331738, 52.354237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047554, 53.908993, 52.548004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954437, 53.703602, 52.878372>,  <40.898567, 53.580368, 53.076595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954437, 53.703602, 52.878372>,  <41.047554, 53.908993, 52.548004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954437, 53.703602, 52.878372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832013, 0.334572, 0.442511,
		-0.503551, 0.790190, 0.349337,
		-0.232789, -0.513479, 0.825922,
		40.884602, 53.549557, 53.126148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214737, 54.552204, 53.048462>,  <41.047554, 53.908993, 52.548004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214737, 54.552204, 53.048462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238689, 54.644306, 53.436977>,  <41.253059, 54.699566, 53.670086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238689, 54.644306, 53.436977>,  <41.214737, 54.552204, 53.048462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238689, 54.644306, 53.436977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995199, 0.089237, 0.040200,
		-0.077419, -0.969031, 0.234490,
		0.059880, 0.230252, 0.971287,
		41.256653, 54.713383, 53.728363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931488, 54.694950, 53.233986>,  <41.214737, 54.552204, 53.048462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931488, 54.694950, 53.233986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083370, 54.438541, 52.967178>,  <42.174500, 54.284695, 52.807095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083370, 54.438541, 52.967178>,  <41.931488, 54.694950, 53.233986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083370, 54.438541, 52.967178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743264, -0.217899, 0.632517,
		-0.550800, -0.735942, 0.393711,
		0.379707, -0.641021, -0.667019,
		42.197281, 54.246235, 52.767075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032780, 54.060970, 53.453205>,  <41.931488, 54.694950, 53.233986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032780, 54.060970, 53.453205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338627, 54.065857, 53.195457>,  <42.522137, 54.068790, 53.040810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338627, 54.065857, 53.195457>,  <42.032780, 54.060970, 53.453205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338627, 54.065857, 53.195457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643948, 0.026266, 0.764618,
		0.026266, -0.999580, 0.012217,
		-0.764618, -0.012217, 0.644368,
		42.568012, 54.069523, 53.002148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510471, 53.622749, 53.723782>,  <42.032780, 54.060970, 53.453205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510471, 53.622749, 53.723782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690521, 53.882133, 53.478218>,  <42.798550, 54.037766, 53.330879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690521, 53.882133, 53.478218>,  <42.510471, 53.622749, 53.723782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690521, 53.882133, 53.478218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732833, 0.124577, 0.668907,
		0.510241, -0.750982, -0.419142,
		0.450122, 0.648465, -0.613909,
		42.825558, 54.076672, 53.294044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226040, 53.933479, 53.983288>,  <42.510471, 53.622749, 53.723782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226040, 53.933479, 53.983288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283588, 54.306900, 53.851967>,  <43.318115, 54.530952, 53.773174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283588, 54.306900, 53.851967>,  <43.226040, 53.933479, 53.983288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283588, 54.306900, 53.851967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762782, -0.315967, -0.564207,
		-0.630449, -0.169251, -0.757554,
		0.143869, 0.933552, -0.328303,
		43.326748, 54.586967, 53.753475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514229, 54.444351, 54.203106>,  <43.226040, 53.933479, 53.983288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514229, 54.444351, 54.203106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548424, 54.692081, 54.515293>,  <43.568943, 54.840717, 54.702606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548424, 54.692081, 54.515293>,  <43.514229, 54.444351, 54.203106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548424, 54.692081, 54.515293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797102, -0.512484, 0.319355,
		0.597762, 0.594812, -0.537475,
		0.085491, 0.619321, 0.780470,
		43.574070, 54.877876, 54.749435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166821, 54.281128, 54.398190>,  <43.514229, 54.444351, 54.203106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166821, 54.281128, 54.398190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027931, 54.493908, 54.707115>,  <43.944595, 54.621574, 54.892471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027931, 54.493908, 54.707115>,  <44.166821, 54.281128, 54.398190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027931, 54.493908, 54.707115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666961, -0.438858, 0.602135,
		0.659240, 0.724179, -0.202405,
		-0.347226, 0.531947, 0.772312,
		43.923763, 54.653492, 54.938808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691116, 54.573536, 54.789413>,  <44.166821, 54.281128, 54.398190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691116, 54.573536, 54.789413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384251, 54.477070, 55.027168>,  <44.200130, 54.419189, 55.169823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384251, 54.477070, 55.027168>,  <44.691116, 54.573536, 54.789413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384251, 54.477070, 55.027168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596511, -0.608955, 0.522828,
		0.235866, 0.755654, 0.611028,
		-0.767165, -0.241168, 0.594388,
		44.154102, 54.404720, 55.205486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943542, 53.938980, 55.162827>,  <44.691116, 54.573536, 54.789413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943542, 53.938980, 55.162827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220711, 53.651031, 55.146584>,  <45.387012, 53.478264, 55.136837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.220711, 53.651031, 55.146584>,  <44.943542, 53.938980, 55.162827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220711, 53.651031, 55.146584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461098, 0.399129, 0.792518,
		-0.554303, -0.567874, 0.608495,
		0.692919, -0.719872, -0.040607,
		45.428585, 53.435070, 55.134399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372864, 53.587421, 55.632359>,  <44.943542, 53.938980, 55.162827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372864, 53.587421, 55.632359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567417, 53.777988, 55.339386>,  <45.684151, 53.892330, 55.163605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567417, 53.777988, 55.339386>,  <45.372864, 53.587421, 55.632359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567417, 53.777988, 55.339386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834007, -0.003225, 0.551744,
		0.260500, -0.879211, -0.398907,
		0.486386, 0.476421, -0.732429,
		45.713333, 53.920914, 55.119656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957123, 53.162563, 55.344284>,  <45.372864, 53.587421, 55.632359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957123, 53.162563, 55.344284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007015, 53.557964, 55.310112>,  <46.036953, 53.795204, 55.289608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007015, 53.557964, 55.310112>,  <45.957123, 53.162563, 55.344284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007015, 53.557964, 55.310112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748564, -0.037244, 0.662015,
		0.651224, -0.146523, -0.744606,
		0.124733, 0.988506, -0.085428,
		46.044434, 53.854515, 55.284485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642326, 53.366604, 55.167114>,  <45.957123, 53.162563, 55.344284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642326, 53.366604, 55.167114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481735, 53.667862, 55.375572>,  <46.385380, 53.848618, 55.500648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481735, 53.667862, 55.375572>,  <46.642326, 53.366604, 55.167114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481735, 53.667862, 55.375572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791105, -0.001545, 0.611678,
		0.461488, 0.657853, -0.595196,
		-0.401475, 0.753145, 0.521144,
		46.361294, 53.893806, 55.531914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.182194, 53.855621, 55.242104>,  <46.642326, 53.366604, 55.167114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.182194, 53.855621, 55.242104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937492, 53.905281, 55.554604>,  <46.790672, 53.935078, 55.742104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937492, 53.905281, 55.554604>,  <47.182194, 53.855621, 55.242104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937492, 53.905281, 55.554604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787536, 0.188578, 0.586708,
		-0.074488, 0.974180, -0.213133,
		-0.611751, 0.124147, 0.781248,
		46.753967, 53.942524, 55.788979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.248520, 54.525829, 55.604713>,  <47.182194, 53.855621, 55.242104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.248520, 54.525829, 55.604713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159939, 54.196037, 55.813019>,  <47.106789, 53.998161, 55.938004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.159939, 54.196037, 55.813019>,  <47.248520, 54.525829, 55.604713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.159939, 54.196037, 55.813019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761693, 0.187211, 0.620303,
		-0.608919, 0.534028, 0.586542,
		-0.221452, -0.824479, 0.520762,
		47.093502, 53.948692, 55.969246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053730, 54.736244, 56.228981>,  <47.248520, 54.525829, 55.604713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053730, 54.736244, 56.228981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230881, 54.377747, 56.219139>,  <47.337173, 54.162647, 56.213234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230881, 54.377747, 56.219139>,  <47.053730, 54.736244, 56.228981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230881, 54.377747, 56.219139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763106, 0.362398, 0.535104,
		-0.470666, -0.255764, 0.844428,
		0.442880, -0.896243, -0.024607,
		47.363743, 54.108875, 56.211758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.309559, 54.489098, 56.933151>,  <47.053730, 54.736244, 56.228981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.309559, 54.489098, 56.933151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551357, 54.346809, 56.648041>,  <47.696434, 54.261436, 56.476974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551357, 54.346809, 56.648041>,  <47.309559, 54.489098, 56.933151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.551357, 54.346809, 56.648041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793033, 0.353435, 0.496168,
		0.075423, -0.865186, 0.495747,
		0.604492, -0.355722, -0.712778,
		47.732704, 54.240093, 56.434208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.791779, 54.034401, 57.332195>,  <47.309559, 54.489098, 56.933151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.791779, 54.034401, 57.332195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.907963, 54.208721, 56.991440>,  <47.977673, 54.313313, 56.786987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.907963, 54.208721, 56.991440>,  <47.791779, 54.034401, 57.332195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.907963, 54.208721, 56.991440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767689, 0.425321, 0.479328,
		0.571217, -0.793209, -0.211021,
		0.290456, 0.435799, -0.851889,
		47.995098, 54.339462, 56.735874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.920502, 54.618561, 57.824787>,  <47.791779, 54.034401, 57.332195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.920502, 54.618561, 57.824787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.206387, 54.357601, 57.723946>,  <48.377918, 54.201027, 57.663441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.206387, 54.357601, 57.723946>,  <47.920502, 54.618561, 57.824787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.206387, 54.357601, 57.723946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469297, 0.714588, -0.518773,
		0.518598, 0.252463, 0.816896,
		0.714715, -0.652401, -0.252103,
		48.420799, 54.161880, 57.648315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.614140, 54.745792, 58.040619>,  <47.920502, 54.618561, 57.824787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.614140, 54.745792, 58.040619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.664040, 54.524818, 57.710953>,  <48.693981, 54.392235, 57.513153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.664040, 54.524818, 57.710953>,  <48.614140, 54.745792, 58.040619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.664040, 54.524818, 57.710953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802475, 0.544682, -0.243630,
		0.583499, -0.630981, 0.511265,
		0.124751, -0.552435, -0.824168,
		48.701466, 54.359089, 57.463703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.316525, 54.535423, 58.069073>,  <48.614140, 54.745792, 58.040619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.316525, 54.535423, 58.069073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.206459, 54.539146, 57.684532>,  <49.140419, 54.541382, 57.453808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.206459, 54.539146, 57.684532>,  <49.316525, 54.535423, 58.069073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.206459, 54.539146, 57.684532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698450, 0.689076, -0.193239,
		0.660646, -0.724629, -0.196111,
		-0.275162, 0.009311, -0.961352,
		49.123909, 54.541939, 57.396126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.908993, 54.568050, 57.537647>,  <49.316525, 54.535423, 58.069073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.908993, 54.568050, 57.537647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.614807, 54.701099, 57.301529>,  <49.438293, 54.780930, 57.159859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.614807, 54.701099, 57.301529>,  <49.908993, 54.568050, 57.537647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.614807, 54.701099, 57.301529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675471, 0.428314, -0.600237,
		0.053180, -0.840183, -0.539688,
		-0.735466, 0.332623, -0.590298,
		49.394169, 54.800888, 57.124439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.001755, 54.283516, 56.863491>,  <49.908993, 54.568050, 57.537647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.001755, 54.283516, 56.863491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.842991, 54.646805, 56.916534>,  <49.747730, 54.864780, 56.948360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.842991, 54.646805, 56.916534>,  <50.001755, 54.283516, 56.863491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.842991, 54.646805, 56.916534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781659, 0.410200, -0.469835,
		-0.481111, -0.082832, -0.872738,
		-0.396914, 0.908226, 0.132606,
		49.723915, 54.919273, 56.956318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.960747, 54.672993, 56.194649>,  <50.001755, 54.283516, 56.863491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.960747, 54.672993, 56.194649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.996761, 54.903210, 56.519768>,  <50.018368, 55.041340, 56.714840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.996761, 54.903210, 56.519768>,  <49.960747, 54.672993, 56.194649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.996761, 54.903210, 56.519768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703824, 0.540648, -0.460794,
		-0.704645, 0.613556, -0.356404,
		0.090035, 0.575542, 0.812801,
		50.023773, 55.075871, 56.763607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.237976, 55.131405, 55.825230>,  <49.960747, 54.672993, 56.194649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.237976, 55.131405, 55.825230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.266060, 55.231049, 56.211601>,  <50.282909, 55.290836, 56.443424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.266060, 55.231049, 56.211601>,  <50.237976, 55.131405, 55.825230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.266060, 55.231049, 56.211601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597376, 0.764985, -0.240707,
		-0.798883, 0.593921, -0.095106,
		0.070206, 0.249110, 0.965927,
		50.287121, 55.305782, 56.501381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.048134, 55.816963, 55.783531>,  <50.237976, 55.131405, 55.825230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.048134, 55.816963, 55.783531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.285343, 55.725891, 56.092461>,  <50.427670, 55.671246, 56.277817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.285343, 55.725891, 56.092461>,  <50.048134, 55.816963, 55.783531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.285343, 55.725891, 56.092461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628938, 0.729894, -0.267753,
		-0.502749, 0.644526, 0.576046,
		0.593027, -0.227685, 0.772321,
		50.463253, 55.657585, 56.324158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.273479, 56.476933, 56.192451>,  <50.048134, 55.816963, 55.783531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.273479, 56.476933, 56.192451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.552063, 56.197845, 56.259544>,  <50.719215, 56.030396, 56.299801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.552063, 56.197845, 56.259544>,  <50.273479, 56.476933, 56.192451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.552063, 56.197845, 56.259544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713978, 0.650325, -0.259447,
		0.071939, 0.300453, 0.951080,
		0.696462, -0.697715, 0.167733,
		50.761002, 55.988529, 56.309864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.838688, 56.679970, 56.566975>,  <50.273479, 56.476933, 56.192451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.838688, 56.679970, 56.566975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.002396, 56.372276, 56.370697>,  <51.100620, 56.187660, 56.252930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.002396, 56.372276, 56.370697>,  <50.838688, 56.679970, 56.566975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.002396, 56.372276, 56.370697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842344, 0.525228, -0.120796,
		0.350644, -0.363891, 0.862920,
		0.409274, -0.769232, -0.490690,
		51.125179, 56.141506, 56.223492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.543053, 56.484329, 56.878384>,  <50.838688, 56.679970, 56.566975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.543053, 56.484329, 56.878384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.516941, 56.383793, 56.492104>,  <51.501274, 56.323471, 56.260338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.516941, 56.383793, 56.492104>,  <51.543053, 56.484329, 56.878384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.516941, 56.383793, 56.492104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804823, 0.558855, -0.199853,
		0.589914, -0.790260, 0.165801,
		-0.065277, -0.251337, -0.965696,
		51.497356, 56.308392, 56.202396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.213768, 56.445137, 56.594704>,  <51.543053, 56.484329, 56.878384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.213768, 56.445137, 56.594704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.968540, 56.484909, 56.281204>,  <51.821404, 56.508774, 56.093105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.968540, 56.484909, 56.281204>,  <52.213768, 56.445137, 56.594704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.968540, 56.484909, 56.281204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710183, 0.503960, -0.491593,
		0.346094, -0.857984, -0.379581,
		-0.613073, 0.099435, -0.783744,
		51.784618, 56.514740, 56.046082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.717484, 56.479282, 55.988819>,  <52.213768, 56.445137, 56.594704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.717484, 56.479282, 55.988819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.386356, 56.683510, 55.895836>,  <52.187679, 56.806046, 55.840046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.386356, 56.683510, 55.895836>,  <52.717484, 56.479282, 55.988819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.386356, 56.683510, 55.895836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556072, 0.691993, -0.460358,
		-0.074186, -0.510355, -0.856758,
		-0.827817, 0.510571, -0.232458,
		52.138012, 56.836681, 55.826099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.992287, 57.200047, 55.876259>,  <52.717484, 56.479282, 55.988819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.992287, 57.200047, 55.876259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.871090, 57.579597, 55.840889>,  <52.798370, 57.807327, 55.819668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.871090, 57.579597, 55.840889>,  <52.992287, 57.200047, 55.876259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.871090, 57.579597, 55.840889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580572, 0.257375, 0.772460,
		0.755731, 0.182713, -0.628877,
		-0.302996, 0.948880, -0.088428,
		52.780190, 57.864262, 55.814362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.528458, 57.636356, 55.903839>,  <52.992287, 57.200047, 55.876259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.528458, 57.636356, 55.903839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.223087, 57.857964, 56.036659>,  <53.039867, 57.990929, 56.116352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.223087, 57.857964, 56.036659>,  <53.528458, 57.636356, 55.903839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.223087, 57.857964, 56.036659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539191, 0.263594, 0.799869,
		0.355613, 0.789675, -0.499953,
		-0.763421, 0.554014, 0.332048,
		52.994061, 58.024166, 56.136272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.847092, 58.319691, 55.929039>,  <53.528458, 57.636356, 55.903839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.847092, 58.319691, 55.929039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.546005, 58.262466, 56.186081>,  <53.365353, 58.228130, 56.340305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.546005, 58.262466, 56.186081>,  <53.847092, 58.319691, 55.929039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.546005, 58.262466, 56.186081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604014, 0.238205, 0.760543,
		-0.261880, 0.960620, -0.092888,
		-0.752719, -0.143065, 0.642609,
		53.320190, 58.219547, 56.378864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.666260, 58.899197, 56.335629>,  <53.847092, 58.319691, 55.929039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.666260, 58.899197, 56.335629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.639858, 58.550976, 56.530678>,  <53.624016, 58.342045, 56.647709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.639858, 58.550976, 56.530678>,  <53.666260, 58.899197, 56.335629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.639858, 58.550976, 56.530678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709206, 0.302834, 0.636646,
		-0.701904, 0.387852, 0.597412,
		-0.066007, -0.870553, 0.487628,
		53.620056, 58.289810, 56.676968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.667545, 59.001965, 57.184750>,  <53.666260, 58.899197, 56.335629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.667545, 59.001965, 57.184750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.813480, 58.647804, 57.069534>,  <53.901043, 58.435310, 57.000404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.813480, 58.647804, 57.069534>,  <53.667545, 59.001965, 57.184750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.813480, 58.647804, 57.069534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748576, 0.094983, 0.656210,
		-0.553648, -0.455027, 0.697441,
		0.364839, -0.885398, -0.288035,
		53.922932, 58.382187, 56.983124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.041115, 58.784969, 57.815765>,  <53.667545, 59.001965, 57.184750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.041115, 58.784969, 57.815765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.208420, 58.599380, 57.503410>,  <54.308804, 58.488026, 57.315998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.208420, 58.599380, 57.503410>,  <54.041115, 58.784969, 57.815765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.208420, 58.599380, 57.503410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898890, 0.335034, 0.282400,
		0.130598, -0.820049, 0.557192,
		0.418260, -0.463974, -0.780888,
		54.333897, 58.460190, 57.269142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.672203, 58.328537, 57.926952>,  <54.041115, 58.784969, 57.815765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.672203, 58.328537, 57.926952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.772400, 58.450081, 57.559273>,  <54.832520, 58.523006, 57.338665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.772400, 58.450081, 57.559273>,  <54.672203, 58.328537, 57.926952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.772400, 58.450081, 57.559273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939075, 0.154555, 0.307004,
		0.235353, -0.940096, -0.246633,
		0.250495, 0.303861, -0.919196,
		54.847549, 58.541241, 57.283516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.322014, 58.060955, 57.690510>,  <54.672203, 58.328537, 57.926952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.322014, 58.060955, 57.690510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.253792, 58.385788, 57.467285>,  <55.212860, 58.580688, 57.333351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.253792, 58.385788, 57.467285>,  <55.322014, 58.060955, 57.690510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.253792, 58.385788, 57.467285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935964, 0.310570, 0.165887,
		0.308030, -0.494028, -0.813052,
		-0.170557, 0.812086, -0.558057,
		55.202625, 58.629414, 57.299870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.021297, 58.170200, 57.327908>,  <55.322014, 58.060955, 57.690510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.021297, 58.170200, 57.327908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.792671, 58.497158, 57.356697>,  <55.655495, 58.693333, 57.373970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.792671, 58.497158, 57.356697>,  <56.021297, 58.170200, 57.327908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.792671, 58.497158, 57.356697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812610, 0.551672, 0.187941,
		0.113917, 0.165906, -0.979540,
		-0.571566, 0.817394, 0.071972,
		55.621201, 58.742374, 57.378288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.173042, 58.796848, 56.839417>,  <56.021297, 58.170200, 57.327908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.173042, 58.796848, 56.839417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.040398, 58.870270, 57.209572>,  <55.960812, 58.914322, 57.431664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.040398, 58.870270, 57.209572>,  <56.173042, 58.796848, 56.839417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.040398, 58.870270, 57.209572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882540, 0.406999, 0.235530,
		-0.333400, 0.894796, -0.296958,
		-0.331613, 0.183552, 0.925387,
		55.940914, 58.925335, 57.487186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.308372, 59.560474, 57.154335>,  <56.173042, 58.796848, 56.839417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.308372, 59.560474, 57.154335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.309692, 59.302982, 57.460434>,  <56.310482, 59.148487, 57.644093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.309692, 59.302982, 57.460434>,  <56.308372, 59.560474, 57.154335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.309692, 59.302982, 57.460434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918730, 0.304128, 0.251877,
		-0.394874, 0.702224, 0.592416,
		0.003297, -0.643730, 0.765246,
		56.310680, 59.109863, 57.690006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.458431, 59.870407, 57.742531>,  <56.308372, 59.560474, 57.154335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.458431, 59.870407, 57.742531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.581047, 59.491356, 57.778374>,  <56.654617, 59.263924, 57.799881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.581047, 59.491356, 57.778374>,  <56.458431, 59.870407, 57.742531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.581047, 59.491356, 57.778374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920479, 0.319087, 0.225615,
		-0.242392, 0.013321, 0.970087,
		0.306537, -0.947632, 0.089606,
		56.673008, 59.207066, 57.805256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.929333, 59.785305, 58.222744>,  <56.458431, 59.870407, 57.742531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.929333, 59.785305, 58.222744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.003761, 59.443249, 58.029205>,  <57.048420, 59.238014, 57.913082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.003761, 59.443249, 58.029205>,  <56.929333, 59.785305, 58.222744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.003761, 59.443249, 58.029205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971876, 0.087843, 0.218498,
		-0.144344, -0.510895, 0.847438,
		0.186071, -0.855143, -0.483847,
		57.059582, 59.186707, 57.884052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.233269, 59.308422, 58.709003>,  <56.929333, 59.785305, 58.222744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.233269, 59.308422, 58.709003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.340660, 59.279709, 58.324760>,  <57.405094, 59.262482, 58.094215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.340660, 59.279709, 58.324760>,  <57.233269, 59.308422, 58.709003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.340660, 59.279709, 58.324760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951712, 0.173892, 0.252994,
		0.148880, -0.982145, 0.115005,
		0.268475, -0.071786, -0.960608,
		57.421204, 59.258175, 58.036579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.851337, 58.817764, 58.618740>,  <57.233269, 59.308422, 58.709003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.851337, 58.817764, 58.618740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.829575, 59.095795, 58.331993>,  <57.816517, 59.262615, 58.159943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.829575, 59.095795, 58.331993>,  <57.851337, 58.817764, 58.618740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.829575, 59.095795, 58.331993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902644, 0.341203, 0.262324,
		0.426934, -0.632807, -0.645974,
		-0.054408, 0.695080, -0.716871,
		57.813251, 59.304317, 58.116932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.545162, 58.842262, 59.072712>,  <57.851337, 58.817764, 58.618740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.545162, 58.842262, 59.072712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.295479, 58.531551, 59.039261>,  <58.145668, 58.345127, 59.019192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.295479, 58.531551, 59.039261>,  <58.545162, 58.842262, 59.072712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.295479, 58.531551, 59.039261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492588, -0.308219, -0.813854,
		0.606405, -0.549204, 0.575020,
		-0.624204, -0.776773, -0.083626,
		58.108219, 58.298519, 59.014172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.119473, 58.418499, 58.824436>,  <58.545162, 58.842262, 59.072712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.119473, 58.418499, 58.824436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.818367, 58.159294, 58.870781>,  <58.637703, 58.003773, 58.898586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.818367, 58.159294, 58.870781>,  <59.119473, 58.418499, 58.824436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.818367, 58.159294, 58.870781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525597, -0.697620, -0.486903,
		0.396347, -0.305627, 0.865737,
		-0.752766, -0.648011, 0.115863,
		58.592537, 57.964890, 58.905540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.915291, 58.271244, 58.006821>,  <59.119473, 58.418499, 58.824436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.915291, 58.271244, 58.006821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.206444, 58.509369, 57.870712>,  <59.381138, 58.652245, 57.789047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.206444, 58.509369, 57.870712>,  <58.915291, 58.271244, 58.006821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.206444, 58.509369, 57.870712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647870, -0.759623, 0.056898,
		-0.224607, -0.261867, -0.938604,
		0.727885, 0.595313, -0.340272,
		59.424809, 58.687962, 57.768631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.303322, 58.053581, 57.310661>,  <58.915291, 58.271244, 58.006821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.303322, 58.053581, 57.310661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.565170, 58.264118, 57.527710>,  <59.722279, 58.390438, 57.657940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.565170, 58.264118, 57.527710>,  <59.303322, 58.053581, 57.310661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.565170, 58.264118, 57.527710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592949, -0.802746, 0.063325,
		0.468919, 0.280294, -0.837586,
		0.654620, 0.526340, 0.542623,
		59.761555, 58.422020, 57.690498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.949455, 57.908329, 57.034245>,  <59.303322, 58.053581, 57.310661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.949455, 57.908329, 57.034245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.957161, 57.996326, 57.424370>,  <59.961784, 58.049126, 57.658443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.957161, 57.996326, 57.424370>,  <59.949455, 57.908329, 57.034245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.957161, 57.996326, 57.424370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425861, -0.884384, 0.191068,
		0.904583, 0.411666, -0.110725,
		0.019268, 0.219991, 0.975312,
		59.962940, 58.062325, 57.716965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.628277, 57.889633, 57.330719>,  <59.949455, 57.908329, 57.034245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.628277, 57.889633, 57.330719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.380043, 57.823452, 57.637314>,  <60.231102, 57.783745, 57.821270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.380043, 57.823452, 57.637314>,  <60.628277, 57.889633, 57.330719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.380043, 57.823452, 57.637314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507262, -0.830112, 0.231517,
		0.597963, 0.532485, 0.599083,
		-0.620585, -0.165453, 0.766485,
		60.193867, 57.773815, 57.867260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.058342, 57.749203, 57.950146>,  <60.628277, 57.889633, 57.330719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.058342, 57.749203, 57.950146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.696091, 57.579582, 57.952065>,  <60.478741, 57.477810, 57.953217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.696091, 57.579582, 57.952065>,  <61.058342, 57.749203, 57.950146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.696091, 57.579582, 57.952065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423899, -0.905517, -0.018679,
		0.012268, -0.014881, 0.999814,
		-0.905626, -0.424049, 0.004801,
		60.424404, 57.452366, 57.953506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.551895, 57.382065, 58.091751>,  <61.058342, 57.749203, 57.950146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.551895, 57.382065, 58.091751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.365601, 57.454590, 58.438210>,  <61.253822, 57.498104, 58.646084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.365601, 57.454590, 58.438210>,  <61.551895, 57.382065, 58.091751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.365601, 57.454590, 58.438210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883042, 0.158989, 0.441542,
		-0.057650, 0.970488, -0.234156,
		-0.465740, 0.181314, 0.866148,
		61.225880, 57.508984, 58.698055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.744759, 57.994740, 58.404278>,  <61.551895, 57.382065, 58.091751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.744759, 57.994740, 58.404278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650604, 57.715775, 58.675041>,  <61.594112, 57.548397, 58.837502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650604, 57.715775, 58.675041>,  <61.744759, 57.994740, 58.404278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.650604, 57.715775, 58.675041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888518, 0.127840, 0.440674,
		-0.393868, 0.705175, 0.589572,
		-0.235381, -0.697413, 0.676913,
		61.579990, 57.506550, 58.878117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.925144, 58.294830, 59.127007>,  <61.744759, 57.994740, 58.404278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.925144, 58.294830, 59.127007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.955963, 57.896973, 59.099472>,  <61.974453, 57.658257, 59.082951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.955963, 57.896973, 59.099472>,  <61.925144, 58.294830, 59.127007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.955963, 57.896973, 59.099472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921394, 0.044652, 0.386056,
		-0.380917, -0.093171, 0.919903,
		0.077045, -0.994648, -0.068839,
		61.979076, 57.598579, 59.078819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.143280, 57.906658, 59.756657>,  <61.925144, 58.294830, 59.127007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.143280, 57.906658, 59.756657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.263947, 57.636448, 59.487534>,  <62.336346, 57.474323, 59.326061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.263947, 57.636448, 59.487534>,  <62.143280, 57.906658, 59.756657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.263947, 57.636448, 59.487534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871383, -0.091023, 0.482086,
		-0.386901, -0.731698, 0.561182,
		0.301661, -0.675524, -0.672806,
		62.354446, 57.433792, 59.285690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.773872, 58.504314, 60.062119>,  <62.143280, 57.906658, 59.756657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.773872, 58.504314, 60.062119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.038918, 58.365753, 60.327736>,  <62.197945, 58.282616, 60.487106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.038918, 58.365753, 60.327736>,  <61.773872, 58.504314, 60.062119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.038918, 58.365753, 60.327736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615335, -0.253661, -0.746337,
		0.426978, 0.903138, 0.045077,
		0.662611, -0.346407, 0.664040,
		62.237701, 58.261829, 60.526947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.429062, 58.799591, 59.853252>,  <61.773872, 58.504314, 60.062119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.429062, 58.799591, 59.853252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.497269, 58.459469, 60.052414>,  <62.538193, 58.255398, 60.171913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.497269, 58.459469, 60.052414>,  <62.429062, 58.799591, 59.853252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.497269, 58.459469, 60.052414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734248, -0.227336, -0.639686,
		0.657119, 0.474663, 0.585568,
		0.170514, -0.850302, 0.497907,
		62.548424, 58.204380, 60.201786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.951630, 58.180351, 59.716827>,  <62.429062, 58.799591, 59.853252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.951630, 58.180351, 59.716827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.306946, 58.275345, 59.874069>,  <63.520138, 58.332340, 59.968414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.306946, 58.275345, 59.874069>,  <62.951630, 58.180351, 59.716827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.306946, 58.275345, 59.874069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306773, -0.943796, -0.123044,
		0.341793, 0.229895, -0.911223,
		0.888295, 0.237483, 0.393108,
		63.573433, 58.346588, 59.992001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.384987, 57.881001, 59.273758>,  <62.951630, 58.180351, 59.716827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.384987, 57.881001, 59.273758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.636597, 57.945320, 59.577988>,  <63.787563, 57.983913, 59.760525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.636597, 57.945320, 59.577988>,  <63.384987, 57.881001, 59.273758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.636597, 57.945320, 59.577988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501768, -0.831260, -0.239238,
		0.593765, 0.532118, -0.603567,
		0.629024, 0.160800, 0.760573,
		63.825302, 57.993561, 59.806160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.986877, 57.951458, 59.034428>,  <63.384987, 57.881001, 59.273758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.986877, 57.951458, 59.034428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.008530, 57.772812, 59.391663>,  <64.021523, 57.665623, 59.606003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.008530, 57.772812, 59.391663>,  <63.986877, 57.951458, 59.034428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.008530, 57.772812, 59.391663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622461, -0.684256, -0.379915,
		0.780776, 0.576477, 0.240962,
		0.054132, -0.446618, 0.893086,
		64.024773, 57.638828, 59.659588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.549263, 58.468960, 59.197292>,  <63.986877, 57.951458, 59.034428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.549263, 58.468960, 59.197292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.216843, 58.665535, 59.093117>,  <64.017387, 58.783478, 59.030609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.216843, 58.665535, 59.093117>,  <64.549263, 58.468960, 59.197292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.216843, 58.665535, 59.093117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539054, 0.827015, -0.159584,
		0.136964, -0.273016, -0.952209,
		-0.831060, 0.491435, -0.260442,
		63.967525, 58.812965, 59.014984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.181236, 58.259209, 59.622055>,  <64.549263, 58.468960, 59.197292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.181236, 58.259209, 59.622055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.256920, 58.011547, 59.317200>,  <65.302330, 57.862949, 59.134289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.256920, 58.011547, 59.317200>,  <65.181236, 58.259209, 59.622055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.256920, 58.011547, 59.317200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980635, 0.079172, 0.179130,
		-0.050568, -0.781269, 0.622143,
		0.189205, -0.619153, -0.762136,
		65.313683, 57.825802, 59.088558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.545334, 57.689548, 59.910774>,  <65.181236, 58.259209, 59.622055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.545334, 57.689548, 59.910774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.644279, 57.715221, 59.524055>,  <65.703644, 57.730625, 59.292027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.644279, 57.715221, 59.524055>,  <65.545334, 57.689548, 59.910774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.644279, 57.715221, 59.524055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966037, -0.093283, 0.240978,
		-0.074719, -0.993569, -0.085077,
		0.247364, 0.064183, -0.966794,
		65.718491, 57.734474, 59.234016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.023918, 57.191597, 59.771717>,  <65.545334, 57.689548, 59.910774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.023918, 57.191597, 59.771717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.080528, 57.491764, 59.513466>,  <66.114494, 57.671864, 59.358513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.080528, 57.491764, 59.513466>,  <66.023918, 57.191597, 59.771717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.080528, 57.491764, 59.513466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986847, -0.055482, 0.151840,
		0.078124, -0.658627, -0.748403,
		0.141529, 0.750422, -0.645629,
		66.122986, 57.716892, 59.319778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.626953, 56.992096, 59.288631>,  <66.023918, 57.191597, 59.771717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.626953, 56.992096, 59.288631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.590752, 57.388351, 59.329491>,  <66.569031, 57.626106, 59.354008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.590752, 57.388351, 59.329491>,  <66.626953, 56.992096, 59.288631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.590752, 57.388351, 59.329491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965437, 0.062101, 0.253132,
		0.244420, 0.121528, -0.962024,
		-0.090505, 0.990643, 0.102149,
		66.563599, 57.685543, 59.360134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.089668, 57.298649, 58.801037>,  <66.626953, 56.992096, 59.288631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.089668, 57.298649, 58.801037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.018433, 57.504322, 59.136635>,  <66.975693, 57.627724, 59.337994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.018433, 57.504322, 59.136635>,  <67.089668, 57.298649, 58.801037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.018433, 57.504322, 59.136635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983649, 0.116280, 0.137526,
		-0.026844, 0.849764, -0.526480,
		-0.178084, 0.514179, 0.838991,
		66.965004, 57.658577, 59.388332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.426369, 57.932335, 58.691334>,  <67.089668, 57.298649, 58.801037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.426369, 57.932335, 58.691334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.401482, 57.824486, 59.075714>,  <67.386551, 57.759777, 59.306343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.401482, 57.824486, 59.075714>,  <67.426369, 57.932335, 58.691334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.401482, 57.824486, 59.075714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987040, 0.126078, 0.099279,
		-0.147923, 0.954677, 0.258283,
		-0.062215, -0.269621, 0.960955,
		67.382820, 57.743599, 59.364002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.125137, 58.117245, 58.781101>,  <67.426369, 57.932335, 58.691334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.125137, 58.117245, 58.781101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.939529, 58.071823, 59.132507>,  <67.828163, 58.044571, 59.343349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.939529, 58.071823, 59.132507>,  <68.125137, 58.117245, 58.781101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.939529, 58.071823, 59.132507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799813, 0.372592, 0.470610,
		-0.380768, 0.921021, -0.082068,
		-0.464019, -0.113555, 0.878517,
		67.800323, 58.037758, 59.396061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.340378, 58.706802, 59.129601>,  <68.125137, 58.117245, 58.781101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.340378, 58.706802, 59.129601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.188202, 58.453941, 59.399605>,  <68.096893, 58.302223, 59.561607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.188202, 58.453941, 59.399605>,  <68.340378, 58.706802, 59.129601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.188202, 58.453941, 59.399605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672652, 0.311758, 0.671078,
		-0.634664, 0.709360, 0.306610,
		-0.380448, -0.632151, 0.675014,
		68.074066, 58.264297, 59.602108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.349419, 59.058514, 59.709278>,  <68.340378, 58.706802, 59.129601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.349419, 59.058514, 59.709278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.354347, 58.682983, 59.846947>,  <68.357307, 58.457664, 59.929546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.354347, 58.682983, 59.846947>,  <68.349419, 59.058514, 59.709278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.354347, 58.682983, 59.846947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638529, 0.272265, 0.719828,
		-0.769499, 0.210892, 0.602823,
		0.012322, -0.938827, 0.344168,
		68.358047, 58.401337, 59.950199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.058334, 59.085403, 60.370892>,  <68.349419, 59.058514, 59.709278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.058334, 59.085403, 60.370892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.325127, 58.801277, 60.280922>,  <68.485199, 58.630802, 60.226940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.325127, 58.801277, 60.280922>,  <68.058334, 59.085403, 60.370892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.325127, 58.801277, 60.280922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540382, 0.253332, 0.802378,
		-0.512961, -0.656714, 0.552808,
		0.666977, -0.710316, -0.224927,
		68.525223, 58.588181, 60.213444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.968742, 58.649437, 60.927341>,  <68.058334, 59.085403, 60.370892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.968742, 58.649437, 60.927341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.318092, 58.688034, 60.736389>,  <68.527702, 58.711193, 60.621819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.318092, 58.688034, 60.736389>,  <67.968742, 58.649437, 60.927341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.318092, 58.688034, 60.736389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423888, 0.332067, 0.842645,
		0.239830, -0.938307, 0.249119,
		0.873384, 0.096493, -0.477377,
		68.580109, 58.716984, 60.593178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.570999, 58.164822, 61.156002>,  <67.968742, 58.649437, 60.927341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.570999, 58.164822, 61.156002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.724289, 58.494637, 60.989502>,  <68.816261, 58.692528, 60.889603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.724289, 58.494637, 60.989502>,  <68.570999, 58.164822, 61.156002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.724289, 58.494637, 60.989502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573529, 0.140826, 0.806990,
		0.724016, -0.547996, -0.418930,
		0.383230, 0.824542, -0.416252,
		68.839256, 58.742001, 60.864628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.320244, 58.225761, 61.099850>,  <68.570999, 58.164822, 61.156002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.320244, 58.225761, 61.099850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.179672, 58.596283, 61.154190>,  <69.095329, 58.818596, 61.186794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.179672, 58.596283, 61.154190>,  <69.320244, 58.225761, 61.099850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.179672, 58.596283, 61.154190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510751, 0.068083, 0.857029,
		0.784624, 0.370564, -0.497038,
		-0.351424, 0.926308, 0.135846,
		69.074242, 58.874176, 61.194942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.897110, 58.607815, 61.343281>,  <69.320244, 58.225761, 61.099850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.897110, 58.607815, 61.343281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.567375, 58.794773, 61.471039>,  <69.369537, 58.906948, 61.547695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.567375, 58.794773, 61.471039>,  <69.897110, 58.607815, 61.343281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.567375, 58.794773, 61.471039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418447, 0.123072, 0.899864,
		0.381286, 0.875438, -0.297034,
		-0.824332, 0.467399, 0.319398,
		69.320076, 58.934994, 61.566860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.573685, 58.363304, 61.586876>,  <69.897110, 58.607815, 61.343281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.573685, 58.363304, 61.586876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.776566, 58.279346, 61.921227>,  <70.898293, 58.228973, 62.121838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.776566, 58.279346, 61.921227>,  <70.573685, 58.363304, 61.586876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.776566, 58.279346, 61.921227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860722, 0.074295, -0.503625,
		0.043607, 0.974897, 0.218344,
		0.507204, -0.209895, 0.835876,
		70.928726, 58.216377, 62.171989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.016396, 58.875828, 61.858231>,  <70.573685, 58.363304, 61.586876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.016396, 58.875828, 61.858231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.178993, 58.522903, 61.953125>,  <71.276550, 58.311150, 62.010059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.178993, 58.522903, 61.953125>,  <71.016396, 58.875828, 61.858231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.178993, 58.522903, 61.953125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784343, 0.203831, -0.585884,
		0.468579, 0.424232, 0.774894,
		0.406498, -0.882315, 0.237232,
		71.300941, 58.258209, 62.024296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.634583, 59.041382, 62.259193>,  <71.016396, 58.875828, 61.858231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.634583, 59.041382, 62.259193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.630577, 58.715961, 62.026627>,  <71.628174, 58.520710, 61.887089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.630577, 58.715961, 62.026627>,  <71.634583, 59.041382, 62.259193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.630577, 58.715961, 62.026627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705969, 0.406029, -0.580300,
		0.708172, -0.416271, 0.570273,
		-0.010015, -0.813547, -0.581413,
		71.627571, 58.471897, 61.852203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.225388, 58.622986, 62.325397>,  <71.634583, 59.041382, 62.259193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.225388, 58.622986, 62.325397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.050613, 58.640621, 61.966034>,  <71.945747, 58.651203, 61.750416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.050613, 58.640621, 61.966034>,  <72.225388, 58.622986, 62.325397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.050613, 58.640621, 61.966034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867326, 0.285360, -0.407819,
		0.238389, -0.957406, -0.162927,
		-0.436941, 0.044091, -0.898409,
		71.919533, 58.653847, 61.696510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.489548, 58.110512, 61.812542>,  <72.225388, 58.622986, 62.325397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.489548, 58.110512, 61.812542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.359596, 58.440201, 61.627022>,  <72.281624, 58.638012, 61.515709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.359596, 58.440201, 61.627022>,  <72.489548, 58.110512, 61.812542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.359596, 58.440201, 61.627022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942456, 0.241215, -0.231500,
		-0.078931, -0.512324, -0.855157,
		-0.324880, 0.824220, -0.463803,
		72.262131, 58.687466, 61.487881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.746811, 58.242626, 61.093334>,  <72.489548, 58.110512, 61.812542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.746811, 58.242626, 61.093334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.709099, 58.581383, 61.302673>,  <72.686470, 58.784637, 61.428276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.709099, 58.581383, 61.302673>,  <72.746811, 58.242626, 61.093334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.709099, 58.581383, 61.302673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952985, 0.228831, -0.198635,
		-0.287980, 0.480019, -0.828643,
		-0.094271, 0.846887, 0.523350,
		72.680817, 58.835449, 61.459679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.985123, 58.170464, 60.348934>,  <72.746811, 58.242626, 61.093334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.985123, 58.170464, 60.348934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.137817, 57.805298, 60.291168>,  <73.229439, 57.586197, 60.256508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.137817, 57.805298, 60.291168>,  <72.985123, 58.170464, 60.348934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.137817, 57.805298, 60.291168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818863, -0.261589, -0.510915,
		0.428646, 0.313294, -0.847414,
		0.381740, -0.912918, -0.144416,
		73.252342, 57.531422, 60.247845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.706406, 57.976013, 59.842545>,  <72.985123, 58.170464, 60.348934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.706406, 57.976013, 59.842545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.817032, 57.613171, 59.969460>,  <72.883408, 57.395466, 60.045609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.817032, 57.613171, 59.969460>,  <72.706406, 57.976013, 59.842545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.817032, 57.613171, 59.969460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819773, -0.394988, -0.414677,
		0.501482, -0.145422, -0.852859,
		0.276566, -0.907104, 0.317292,
		72.900002, 57.341038, 60.064648>
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
