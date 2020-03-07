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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<37.702286, 44.777302, 55.723083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911919, 45.067421, 55.901646>,  <38.037697, 45.241493, 56.008781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911919, 45.067421, 55.901646>,  <37.702286, 44.777302, 55.723083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911919, 45.067421, 55.901646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684543, -0.046900, -0.727463,
		-0.506693, 0.686832, -0.521080,
		0.524083, 0.725302, 0.446402,
		38.069145, 45.285011, 56.035564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915016, 45.205040, 55.193195>,  <37.702286, 44.777302, 55.723083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915016, 45.205040, 55.193195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156754, 45.295212, 55.498859>,  <38.301796, 45.349316, 55.682259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156754, 45.295212, 55.498859>,  <37.915016, 45.205040, 55.193195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156754, 45.295212, 55.498859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779155, 0.033067, -0.625958,
		-0.166379, 0.973698, -0.155662,
		0.604347, 0.225431, 0.764163,
		38.338058, 45.362843, 55.728107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259079, 45.823387, 54.941765>,  <37.915016, 45.205040, 55.193195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259079, 45.823387, 54.941765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497185, 45.673046, 55.225845>,  <38.640049, 45.582840, 55.396294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497185, 45.673046, 55.225845>,  <38.259079, 45.823387, 54.941765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497185, 45.673046, 55.225845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791028, 0.118822, -0.600130,
		0.141174, 0.919029, 0.368043,
		0.595269, -0.375855, 0.710203,
		38.675766, 45.560291, 55.438908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984756, 46.193157, 54.994354>,  <38.259079, 45.823387, 54.941765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984756, 46.193157, 54.994354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058380, 45.838165, 55.163353>,  <39.102554, 45.625172, 55.264751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058380, 45.838165, 55.163353>,  <38.984756, 46.193157, 54.994354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058380, 45.838165, 55.163353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766027, -0.139818, -0.627418,
		0.615893, 0.439125, 0.654099,
		0.184060, -0.887480, 0.422494,
		39.113598, 45.571922, 55.290100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711269, 46.198219, 55.140850>,  <38.984756, 46.193157, 54.994354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711269, 46.198219, 55.140850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604340, 45.813389, 55.162567>,  <39.540180, 45.582489, 55.175598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604340, 45.813389, 55.162567>,  <39.711269, 46.198219, 55.140850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604340, 45.813389, 55.162567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809555, -0.254790, -0.528870,
		0.522647, -0.097426, 0.846964,
		-0.267323, -0.962076, 0.054293,
		39.524143, 45.524765, 55.178856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297760, 45.918716, 55.069435>,  <39.711269, 46.198219, 55.140850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297760, 45.918716, 55.069435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039680, 45.616070, 55.027004>,  <39.884834, 45.434483, 55.001545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039680, 45.616070, 55.027004>,  <40.297760, 45.918716, 55.069435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039680, 45.616070, 55.027004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575168, -0.389624, -0.719288,
		0.502893, -0.525096, 0.686566,
		-0.645198, -0.756616, -0.106080,
		39.846123, 45.389084, 54.995182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718395, 45.338036, 55.145153>,  <40.297760, 45.918716, 55.069435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718395, 45.338036, 55.145153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390938, 45.201244, 54.960598>,  <40.194466, 45.119171, 54.849865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390938, 45.201244, 54.960598>,  <40.718395, 45.338036, 55.145153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390938, 45.201244, 54.960598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574301, -0.483699, -0.660465,
		0.002690, -0.805659, 0.592373,
		-0.818640, -0.341977, -0.461389,
		40.145348, 45.098652, 54.822182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913368, 44.645912, 54.953575>,  <40.718395, 45.338036, 55.145153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913368, 44.645912, 54.953575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619652, 44.760967, 54.707619>,  <40.443424, 44.829998, 54.560047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619652, 44.760967, 54.707619>,  <40.913368, 44.645912, 54.953575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619652, 44.760967, 54.707619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523660, -0.336388, -0.782702,
		-0.431973, -0.896721, 0.096384,
		-0.734288, 0.287634, -0.614888,
		40.399364, 44.847256, 54.523151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853203, 44.078693, 54.450859>,  <40.913368, 44.645912, 54.953575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853203, 44.078693, 54.450859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698753, 44.412941, 54.294579>,  <40.606083, 44.613491, 54.200809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698753, 44.412941, 54.294579>,  <40.853203, 44.078693, 54.450859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698753, 44.412941, 54.294579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392456, -0.234492, -0.889377,
		-0.834798, -0.496742, -0.237402,
		-0.386123, 0.835620, -0.390703,
		40.582916, 44.663628, 54.177368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571320, 43.799824, 53.768417>,  <40.853203, 44.078693, 54.450859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571320, 43.799824, 53.768417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560905, 44.198441, 53.736855>,  <40.554657, 44.437611, 53.717915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560905, 44.198441, 53.736855>,  <40.571320, 43.799824, 53.768417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560905, 44.198441, 53.736855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394448, -0.062290, -0.916805,
		-0.918550, -0.054994, -0.391462,
		-0.026035, 0.996542, -0.078909,
		40.553097, 44.497402, 53.713181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221886, 44.072342, 53.006062>,  <40.571320, 43.799824, 53.768417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221886, 44.072342, 53.006062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434967, 44.376774, 53.154110>,  <40.562817, 44.559433, 53.242939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434967, 44.376774, 53.154110>,  <40.221886, 44.072342, 53.006062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434967, 44.376774, 53.154110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528977, 0.041952, -0.847599,
		-0.660614, 0.647306, -0.380243,
		0.532704, 0.761075, 0.370124,
		40.594780, 44.605095, 53.265148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112766, 44.740681, 52.571892>,  <40.221886, 44.072342, 53.006062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112766, 44.740681, 52.571892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458199, 44.769672, 52.771484>,  <40.665459, 44.787067, 52.891239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458199, 44.769672, 52.771484>,  <40.112766, 44.740681, 52.571892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458199, 44.769672, 52.771484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492738, 0.088646, -0.865651,
		-0.106971, 0.993423, 0.040841,
		0.863578, 0.072476, 0.498979,
		40.717274, 44.791416, 52.921177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419235, 45.407330, 52.397636>,  <40.112766, 44.740681, 52.571892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419235, 45.407330, 52.397636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735519, 45.196545, 52.522278>,  <40.925289, 45.070076, 52.597061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735519, 45.196545, 52.522278>,  <40.419235, 45.407330, 52.397636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735519, 45.196545, 52.522278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503449, 0.270121, -0.820715,
		0.348313, 0.805822, 0.478884,
		0.790707, -0.526959, 0.311604,
		40.972733, 45.038456, 52.615761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010124, 45.785900, 52.243309>,  <40.419235, 45.407330, 52.397636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010124, 45.785900, 52.243309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155159, 45.416931, 52.296478>,  <41.242180, 45.195549, 52.328381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155159, 45.416931, 52.296478>,  <41.010124, 45.785900, 52.243309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155159, 45.416931, 52.296478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651817, 0.149062, -0.743582,
		0.666083, 0.356255, 0.655298,
		0.362585, -0.922422, 0.132925,
		41.263935, 45.140205, 52.336357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700062, 45.874603, 52.018810>,  <41.010124, 45.785900, 52.243309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700062, 45.874603, 52.018810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613228, 45.484791, 51.996326>,  <41.561127, 45.250904, 51.982838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613228, 45.484791, 51.996326>,  <41.700062, 45.874603, 52.018810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613228, 45.484791, 51.996326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468686, -0.053551, -0.881740,
		0.856275, -0.217757, 0.468376,
		-0.217087, -0.974533, -0.056205,
		41.548103, 45.192432, 51.979465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220772, 45.586239, 51.523258>,  <41.700062, 45.874603, 52.018810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220772, 45.586239, 51.523258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950775, 45.294525, 51.568024>,  <41.788776, 45.119495, 51.594883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950775, 45.294525, 51.568024>,  <42.220772, 45.586239, 51.523258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950775, 45.294525, 51.568024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262699, -0.379289, -0.887203,
		0.689472, -0.569458, 0.447600,
		-0.674995, -0.729285, 0.111914,
		41.748276, 45.075741, 51.601597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568981, 45.051075, 51.124451>,  <42.220772, 45.586239, 51.523258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568981, 45.051075, 51.124451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187164, 44.942421, 51.173542>,  <41.958073, 44.877228, 51.202995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187164, 44.942421, 51.173542>,  <42.568981, 45.051075, 51.124451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187164, 44.942421, 51.173542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017858, -0.463117, -0.886117,
		0.297535, -0.843646, 0.446917,
		-0.954544, -0.271632, 0.122727,
		41.900803, 44.860931, 51.210361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463200, 44.271446, 50.870159>,  <42.568981, 45.051075, 51.124451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463200, 44.271446, 50.870159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119606, 44.474846, 50.894096>,  <41.913452, 44.596886, 50.908459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119606, 44.474846, 50.894096>,  <42.463200, 44.271446, 50.870159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119606, 44.474846, 50.894096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246483, -0.308240, -0.918822,
		-0.448775, -0.804000, 0.390109,
		-0.858980, 0.508500, 0.059841,
		41.861912, 44.627396, 50.912048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904408, 43.817616, 50.657600>,  <42.463200, 44.271446, 50.870159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904408, 43.817616, 50.657600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790337, 44.191940, 50.574715>,  <41.721893, 44.416534, 50.524982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790337, 44.191940, 50.574715>,  <41.904408, 43.817616, 50.657600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790337, 44.191940, 50.574715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176291, -0.263716, -0.948354,
		-0.942123, -0.233918, 0.240180,
		-0.285177, 0.935808, -0.207215,
		41.704784, 44.472683, 50.512550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376720, 43.661015, 50.076988>,  <41.904408, 43.817616, 50.657600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376720, 43.661015, 50.076988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478706, 44.046974, 50.051785>,  <41.539898, 44.278549, 50.036663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478706, 44.046974, 50.051785>,  <41.376720, 43.661015, 50.076988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478706, 44.046974, 50.051785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165122, -0.107651, -0.980381,
		-0.952747, 0.239559, -0.186773,
		0.254965, 0.964895, -0.063007,
		41.555195, 44.336441, 50.032883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012566, 43.813183, 49.541252>,  <41.376720, 43.661015, 50.076988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012566, 43.813183, 49.541252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298584, 44.090340, 49.578358>,  <41.470196, 44.256634, 49.600620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298584, 44.090340, 49.578358>,  <41.012566, 43.813183, 49.541252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298584, 44.090340, 49.578358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149626, -0.022069, -0.988496,
		-0.682876, 0.720702, -0.119455,
		0.715047, 0.692894, 0.092765,
		41.513100, 44.298206, 49.606186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856110, 44.434311, 49.141685>,  <41.012566, 43.813183, 49.541252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856110, 44.434311, 49.141685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247780, 44.484001, 49.205902>,  <41.482784, 44.513817, 49.244434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247780, 44.484001, 49.205902>,  <40.856110, 44.434311, 49.141685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247780, 44.484001, 49.205902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099582, 0.395204, -0.913180,
		-0.176892, 0.910154, 0.374604,
		0.979180, 0.124230, 0.160544,
		41.541534, 44.521271, 49.254066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998470, 45.069637, 48.814068>,  <40.856110, 44.434311, 49.141685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998470, 45.069637, 48.814068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360519, 44.903801, 48.851730>,  <41.577751, 44.804298, 48.874329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360519, 44.903801, 48.851730>,  <40.998470, 45.069637, 48.814068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360519, 44.903801, 48.851730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275037, 0.402134, -0.873295,
		0.324195, 0.816337, 0.478008,
		0.905126, -0.414587, 0.094153,
		41.632057, 44.779427, 48.879974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585564, 45.613312, 48.649399>,  <40.998470, 45.069637, 48.814068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585564, 45.613312, 48.649399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800957, 45.276634, 48.633450>,  <41.930191, 45.074627, 48.623882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800957, 45.276634, 48.633450>,  <41.585564, 45.613312, 48.649399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800957, 45.276634, 48.633450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352394, 0.267924, -0.896680,
		0.765411, 0.468797, 0.440880,
		0.538483, -0.841693, -0.039870,
		41.962502, 45.024128, 48.621487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294430, 45.826584, 48.453098>,  <41.585564, 45.613312, 48.649399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294430, 45.826584, 48.453098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268501, 45.437840, 48.362518>,  <42.252945, 45.204594, 48.308170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268501, 45.437840, 48.362518>,  <42.294430, 45.826584, 48.453098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268501, 45.437840, 48.362518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299848, 0.197474, -0.933325,
		0.951782, -0.128400, 0.278611,
		-0.064820, -0.971863, -0.226453,
		42.249054, 45.146282, 48.294582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941830, 45.592686, 48.106548>,  <42.294430, 45.826584, 48.453098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941830, 45.592686, 48.106548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683975, 45.300671, 48.015785>,  <42.529263, 45.125462, 47.961327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683975, 45.300671, 48.015785>,  <42.941830, 45.592686, 48.106548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683975, 45.300671, 48.015785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089641, 0.222587, -0.970783,
		0.759215, -0.646144, -0.078047,
		-0.644637, -0.730037, -0.226912,
		42.490585, 45.081661, 47.947712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198677, 45.229477, 47.550301>,  <42.941830, 45.592686, 48.106548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198677, 45.229477, 47.550301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822105, 45.098969, 47.516235>,  <42.596161, 45.020664, 47.495796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822105, 45.098969, 47.516235>,  <43.198677, 45.229477, 47.550301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822105, 45.098969, 47.516235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074573, 0.044853, -0.996206,
		0.328851, -0.944212, -0.017895,
		-0.941433, -0.326269, -0.085162,
		42.539677, 45.001087, 47.490688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184452, 44.718239, 46.999489>,  <43.198677, 45.229477, 47.550301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184452, 44.718239, 46.999489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815964, 44.868896, 47.038452>,  <42.594872, 44.959290, 47.061829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815964, 44.868896, 47.038452>,  <43.184452, 44.718239, 46.999489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815964, 44.868896, 47.038452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120766, -0.038848, -0.991921,
		-0.369814, -0.925545, 0.081273,
		-0.921224, 0.376641, 0.097408,
		42.539597, 44.981888, 47.067677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712872, 44.377907, 46.647324>,  <43.184452, 44.718239, 46.999489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712872, 44.377907, 46.647324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497459, 44.713848, 46.674557>,  <42.368214, 44.915413, 46.690899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497459, 44.713848, 46.674557>,  <42.712872, 44.377907, 46.647324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497459, 44.713848, 46.674557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214157, -0.058274, -0.975059,
		-0.814936, -0.539681, 0.211242,
		-0.538531, 0.839850, 0.068087,
		42.335899, 44.965805, 46.694984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317451, 44.213676, 46.148144>,  <42.712872, 44.377907, 46.647324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317451, 44.213676, 46.148144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248535, 44.605316, 46.191372>,  <42.207188, 44.840302, 46.217308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248535, 44.605316, 46.191372>,  <42.317451, 44.213676, 46.148144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248535, 44.605316, 46.191372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004026, 0.110412, -0.993878,
		-0.985038, -0.170798, -0.022965,
		-0.172288, 0.979100, 0.108072,
		42.196850, 44.899048, 46.223793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708195, 44.373539, 45.864956>,  <42.317451, 44.213676, 46.148144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708195, 44.373539, 45.864956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884125, 44.732529, 45.878193>,  <41.989681, 44.947922, 45.886135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884125, 44.732529, 45.878193>,  <41.708195, 44.373539, 45.864956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884125, 44.732529, 45.878193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180666, 0.124517, -0.975631,
		-0.879724, 0.423127, 0.216908,
		0.439824, 0.897474, 0.033096,
		42.016071, 45.001770, 45.888123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264431, 44.839966, 45.509514>,  <41.708195, 44.373539, 45.864956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264431, 44.839966, 45.509514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625214, 45.012691, 45.508617>,  <41.841682, 45.116325, 45.508080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625214, 45.012691, 45.508617>,  <41.264431, 44.839966, 45.509514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625214, 45.012691, 45.508617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160350, 0.330098, -0.930227,
		-0.400945, 0.839387, 0.366977,
		0.901960, 0.431815, -0.002245,
		41.895802, 45.142235, 45.507942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198055, 45.492325, 45.207081>,  <41.264431, 44.839966, 45.509514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198055, 45.492325, 45.207081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562820, 45.336365, 45.155861>,  <41.781681, 45.242790, 45.125130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562820, 45.336365, 45.155861>,  <41.198055, 45.492325, 45.207081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562820, 45.336365, 45.155861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111180, 0.065625, -0.991631,
		0.395040, 0.918516, 0.016495,
		0.911911, -0.389900, -0.128045,
		41.836395, 45.219395, 45.117447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618546, 45.991821, 44.832870>,  <41.198055, 45.492325, 45.207081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618546, 45.991821, 44.832870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741669, 45.614628, 44.782215>,  <41.815544, 45.388313, 44.751820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741669, 45.614628, 44.782215>,  <41.618546, 45.991821, 44.832870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741669, 45.614628, 44.782215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097598, 0.101107, -0.990077,
		0.946429, 0.317114, -0.060912,
		0.307808, -0.942983, -0.126640,
		41.834011, 45.331734, 44.744225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925747, 45.937428, 44.122349>,  <41.618546, 45.991821, 44.832870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925747, 45.937428, 44.122349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879761, 45.551605, 44.217354>,  <41.852169, 45.320110, 44.274357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879761, 45.551605, 44.217354>,  <41.925747, 45.937428, 44.122349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879761, 45.551605, 44.217354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197153, -0.212183, -0.957136,
		0.973608, -0.156866, -0.165771,
		-0.114969, -0.964558, 0.237510,
		41.845268, 45.262238, 44.288609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373230, 45.607346, 43.653496>,  <41.925747, 45.937428, 44.122349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373230, 45.607346, 43.653496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091042, 45.353855, 43.780434>,  <41.921730, 45.201759, 43.856594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091042, 45.353855, 43.780434>,  <42.373230, 45.607346, 43.653496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091042, 45.353855, 43.780434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118993, -0.335491, -0.934498,
		0.698682, -0.697019, 0.161269,
		-0.705467, -0.633727, 0.317342,
		41.879402, 45.163738, 43.875637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548595, 44.937061, 43.472836>,  <42.373230, 45.607346, 43.653496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548595, 44.937061, 43.472836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151352, 44.962471, 43.512215>,  <41.913006, 44.977718, 43.535843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151352, 44.962471, 43.512215>,  <42.548595, 44.937061, 43.472836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151352, 44.962471, 43.512215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113043, -0.298617, -0.947654,
		-0.030799, -0.952256, 0.303742,
		-0.993113, 0.063523, 0.098449,
		41.853416, 44.981529, 43.541748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320744, 44.421974, 43.068188>,  <42.548595, 44.937061, 43.472836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320744, 44.421974, 43.068188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991188, 44.643635, 43.115711>,  <41.793453, 44.776630, 43.144226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991188, 44.643635, 43.115711>,  <42.320744, 44.421974, 43.068188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991188, 44.643635, 43.115711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265423, -0.192050, -0.944811,
		-0.500756, -0.809955, 0.305314,
		-0.823889, 0.554157, 0.118810,
		41.744022, 44.809883, 43.151356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821049, 44.144676, 42.620258>,  <42.320744, 44.421974, 43.068188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821049, 44.144676, 42.620258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650330, 44.498959, 42.693329>,  <41.547897, 44.711529, 42.737171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650330, 44.498959, 42.693329>,  <41.821049, 44.144676, 42.620258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650330, 44.498959, 42.693329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337258, 0.031540, -0.940884,
		-0.839106, -0.463177, 0.285250,
		-0.426799, 0.885704, 0.182675,
		41.522289, 44.764671, 42.748131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193253, 44.044594, 42.309189>,  <41.821049, 44.144676, 42.620258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193253, 44.044594, 42.309189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251778, 44.438568, 42.346073>,  <41.286892, 44.674953, 42.368206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251778, 44.438568, 42.346073>,  <41.193253, 44.044594, 42.309189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251778, 44.438568, 42.346073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296206, 0.132558, -0.945881,
		-0.943851, 0.111077, 0.311137,
		0.146309, 0.984932, 0.092213,
		41.295670, 44.734047, 42.373737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613720, 44.327847, 42.082989>,  <41.193253, 44.044594, 42.309189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613720, 44.327847, 42.082989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911583, 44.593060, 42.052364>,  <41.090302, 44.752190, 42.033989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911583, 44.593060, 42.052364>,  <40.613720, 44.327847, 42.082989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911583, 44.593060, 42.052364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193566, 0.104750, -0.975479,
		-0.638758, 0.741222, 0.206345,
		0.744661, 0.663037, -0.076566,
		41.134983, 44.791969, 42.029396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378738, 44.750999, 41.554272>,  <40.613720, 44.327847, 42.082989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378738, 44.750999, 41.554272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764198, 44.857777, 41.558800>,  <40.995472, 44.921844, 41.561516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764198, 44.857777, 41.558800>,  <40.378738, 44.750999, 41.554272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764198, 44.857777, 41.558800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031842, 0.156791, -0.987118,
		-0.265279, 0.950872, 0.159591,
		0.963646, 0.266943, 0.011316,
		41.053291, 44.937859, 41.562195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428547, 45.277924, 41.031925>,  <40.378738, 44.750999, 41.554272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428547, 45.277924, 41.031925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810928, 45.167282, 41.071201>,  <41.040359, 45.100899, 41.094769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810928, 45.167282, 41.071201>,  <40.428547, 45.277924, 41.031925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810928, 45.167282, 41.071201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162655, 0.220761, -0.961669,
		0.244320, 0.935284, 0.256028,
		0.955956, -0.276599, 0.098192,
		41.097713, 45.084301, 41.100658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722206, 45.638325, 40.549248>,  <40.428547, 45.277924, 41.031925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722206, 45.638325, 40.549248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015625, 45.381748, 40.639095>,  <41.191677, 45.227802, 40.693005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015625, 45.381748, 40.639095>,  <40.722206, 45.638325, 40.549248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015625, 45.381748, 40.639095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305024, 0.015380, -0.952220,
		0.607343, 0.767014, 0.206938,
		0.733549, -0.641445, 0.224617,
		41.235691, 45.189316, 40.706482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407211, 45.858150, 40.157978>,  <40.722206, 45.638325, 40.549248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407211, 45.858150, 40.157978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439468, 45.472427, 40.258865>,  <41.458824, 45.240993, 40.319397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439468, 45.472427, 40.258865>,  <41.407211, 45.858150, 40.157978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439468, 45.472427, 40.258865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313740, -0.215618, -0.924703,
		0.946078, 0.153704, 0.285152,
		0.080646, -0.964305, 0.252215,
		41.463661, 45.183136, 40.334530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080288, 45.708176, 39.801807>,  <41.407211, 45.858150, 40.157978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080288, 45.708176, 39.801807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863564, 45.379047, 39.870403>,  <41.733528, 45.181572, 39.911560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863564, 45.379047, 39.870403>,  <42.080288, 45.708176, 39.801807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863564, 45.379047, 39.870403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181962, -0.314026, -0.931814,
		0.820565, -0.473666, 0.319865,
		-0.541815, -0.822817, 0.171490,
		41.701019, 45.132202, 39.921848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645763, 45.067253, 39.723091>,  <42.080288, 45.708176, 39.801807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645763, 45.067253, 39.723091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263893, 44.966721, 39.659309>,  <42.034771, 44.906403, 39.621040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263893, 44.966721, 39.659309>,  <42.645763, 45.067253, 39.723091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263893, 44.966721, 39.659309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236923, -0.317386, -0.918223,
		0.180168, -0.914385, 0.362547,
		-0.954677, -0.251331, -0.159456,
		41.977489, 44.891323, 39.611473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594788, 44.346004, 39.568497>,  <42.645763, 45.067253, 39.723091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594788, 44.346004, 39.568497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284332, 44.544762, 39.413212>,  <42.098061, 44.664017, 39.320042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284332, 44.544762, 39.413212>,  <42.594788, 44.346004, 39.568497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284332, 44.544762, 39.413212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199970, -0.389919, -0.898874,
		-0.598020, -0.775278, 0.203265,
		-0.776135, 0.496897, -0.388212,
		42.051491, 44.693832, 39.296749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350822, 43.891834, 39.065331>,  <42.594788, 44.346004, 39.568497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350822, 43.891834, 39.065331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171013, 44.237312, 38.974159>,  <42.063126, 44.444599, 38.919456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171013, 44.237312, 38.974159>,  <42.350822, 43.891834, 39.065331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171013, 44.237312, 38.974159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005486, -0.252493, -0.967583,
		-0.893251, -0.436204, 0.108764,
		-0.449526, 0.863698, -0.227932,
		42.036156, 44.496422, 38.905781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722294, 43.726490, 38.638313>,  <42.350822, 43.891834, 39.065331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722294, 43.726490, 38.638313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747093, 44.115135, 38.546989>,  <41.761974, 44.348324, 38.492195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747093, 44.115135, 38.546989>,  <41.722294, 43.726490, 38.638313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747093, 44.115135, 38.546989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072375, -0.232522, -0.969894,
		-0.995448, 0.043611, -0.084737,
		0.062002, 0.971613, -0.228307,
		41.765694, 44.406620, 38.478497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294353, 43.854317, 38.073402>,  <41.722294, 43.726490, 38.638313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294353, 43.854317, 38.073402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542183, 44.166992, 38.044846>,  <41.690880, 44.354599, 38.027714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542183, 44.166992, 38.044846>,  <41.294353, 43.854317, 38.073402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542183, 44.166992, 38.044846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175583, -0.226659, -0.958017,
		-0.765052, 0.581024, -0.277683,
		0.619570, 0.781689, -0.071388,
		41.728054, 44.401501, 38.023430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207382, 44.051861, 37.501385>,  <41.294353, 43.854317, 38.073402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207382, 44.051861, 37.501385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545189, 44.261837, 37.543766>,  <41.747875, 44.387821, 37.569195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545189, 44.261837, 37.543766>,  <41.207382, 44.051861, 37.501385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545189, 44.261837, 37.543766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111929, 0.020461, -0.993505,
		-0.523695, 0.850896, -0.041476,
		0.844521, 0.524936, 0.105955,
		41.798546, 44.419319, 37.575554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211296, 44.349224, 36.939182>,  <41.207382, 44.051861, 37.501385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211296, 44.349224, 36.939182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589752, 44.393753, 37.060791>,  <41.816826, 44.420471, 37.133755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589752, 44.393753, 37.060791>,  <41.211296, 44.349224, 36.939182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589752, 44.393753, 37.060791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297254, 0.073415, -0.951972,
		-0.128299, 0.991068, 0.036369,
		0.946139, 0.111326, 0.304019,
		41.873592, 44.427151, 37.151997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346027, 44.924004, 36.576576>,  <41.211296, 44.349224, 36.939182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346027, 44.924004, 36.576576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680702, 44.728916, 36.676247>,  <41.881508, 44.611862, 36.736050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680702, 44.728916, 36.676247>,  <41.346027, 44.924004, 36.576576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680702, 44.728916, 36.676247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362348, 0.151776, -0.919602,
		0.410688, 0.859706, 0.303712,
		0.836683, -0.487719, 0.249180,
		41.931705, 44.582600, 36.750999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962852, 45.320091, 36.219551>,  <41.346027, 44.924004, 36.576576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962852, 45.320091, 36.219551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105537, 44.957539, 36.310093>,  <42.191147, 44.740009, 36.364418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105537, 44.957539, 36.310093>,  <41.962852, 45.320091, 36.219551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105537, 44.957539, 36.310093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665688, 0.076612, -0.742287,
		0.655452, 0.415461, 0.630694,
		0.356710, -0.906379, 0.226352,
		42.212551, 44.685623, 36.377998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666809, 45.379147, 36.314240>,  <41.962852, 45.320091, 36.219551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666809, 45.379147, 36.314240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596886, 44.992039, 36.241730>,  <42.554932, 44.759773, 36.198223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596886, 44.992039, 36.241730>,  <42.666809, 45.379147, 36.314240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596886, 44.992039, 36.241730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770572, -0.019861, -0.637044,
		0.612912, -0.251049, 0.749208,
		-0.174809, -0.967771, -0.181278,
		42.544441, 44.701706, 36.187347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358204, 45.036972, 36.494225>,  <42.666809, 45.379147, 36.314240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358204, 45.036972, 36.494225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119881, 44.852936, 36.230911>,  <42.976887, 44.742516, 36.072922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119881, 44.852936, 36.230911>,  <43.358204, 45.036972, 36.494225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119881, 44.852936, 36.230911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724908, 0.044763, -0.687390,
		0.345726, -0.886745, 0.306850,
		-0.595804, -0.460087, -0.658284,
		42.941139, 44.714909, 36.033424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815647, 44.690838, 36.086945>,  <43.358204, 45.036972, 36.494225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815647, 44.690838, 36.086945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487785, 44.657555, 35.860229>,  <43.291069, 44.637585, 35.724201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487785, 44.657555, 35.860229>,  <43.815647, 44.690838, 36.086945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487785, 44.657555, 35.860229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572087, -0.067490, -0.817412,
		0.029766, -0.994244, 0.102923,
		-0.819653, -0.083212, -0.566785,
		43.241890, 44.632591, 35.690193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962440, 44.087612, 35.632256>,  <43.815647, 44.690838, 36.086945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962440, 44.087612, 35.632256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690331, 44.331985, 35.470276>,  <43.527065, 44.478611, 35.373089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690331, 44.331985, 35.470276>,  <43.962440, 44.087612, 35.632256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690331, 44.331985, 35.470276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534307, 0.035150, -0.844559,
		-0.501736, -0.790900, -0.350339,
		-0.680276, 0.610935, -0.404948,
		43.486248, 44.515266, 35.348793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070206, 43.982220, 34.873276>,  <43.962440, 44.087612, 35.632256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070206, 43.982220, 34.873276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852211, 44.316456, 34.900921>,  <43.721413, 44.516998, 34.917507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852211, 44.316456, 34.900921>,  <44.070206, 43.982220, 34.873276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852211, 44.316456, 34.900921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281346, 0.259904, -0.923739,
		-0.789829, -0.483985, -0.376734,
		-0.544991, 0.835589, 0.069113,
		43.688713, 44.567131, 34.921654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521866, 43.937843, 34.277824>,  <44.070206, 43.982220, 34.873276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521866, 43.937843, 34.277824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594025, 44.318520, 34.377220>,  <43.637321, 44.546925, 34.436855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594025, 44.318520, 34.377220>,  <43.521866, 43.937843, 34.277824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594025, 44.318520, 34.377220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351145, 0.173670, -0.920074,
		-0.918778, 0.253237, -0.302850,
		0.180401, 0.951688, 0.248487,
		43.648144, 44.604027, 34.451767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424557, 44.236423, 33.650017>,  <43.521866, 43.937843, 34.277824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424557, 44.236423, 33.650017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588501, 44.538326, 33.854904>,  <43.686867, 44.719467, 33.977837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588501, 44.538326, 33.854904>,  <43.424557, 44.236423, 33.650017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588501, 44.538326, 33.854904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453900, 0.318328, -0.832251,
		-0.791197, 0.573599, -0.212113,
		0.409857, 0.754753, 0.512217,
		43.711456, 44.764751, 34.008568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218925, 44.807777, 33.261345>,  <43.424557, 44.236423, 33.650017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218925, 44.807777, 33.261345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538147, 44.912556, 33.478413>,  <43.729679, 44.975422, 33.608654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538147, 44.912556, 33.478413>,  <43.218925, 44.807777, 33.261345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538147, 44.912556, 33.478413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399028, 0.445095, -0.801665,
		-0.451533, 0.856314, 0.250687,
		0.798056, 0.261947, 0.542669,
		43.777565, 44.991138, 33.641212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385307, 45.539558, 33.112526>,  <43.218925, 44.807777, 33.261345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385307, 45.539558, 33.112526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718285, 45.359543, 33.241837>,  <43.918072, 45.251534, 33.319424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718285, 45.359543, 33.241837>,  <43.385307, 45.539558, 33.112526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718285, 45.359543, 33.241837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484572, 0.308264, -0.818635,
		0.268767, 0.838114, 0.474689,
		0.832439, -0.450043, 0.323275,
		43.968018, 45.224529, 33.338818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<46.931690, 43.961559, 32.992092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.574303, 44.140732, 33.005219>,  <46.359871, 44.248234, 33.013096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.574303, 44.140732, 33.005219>,  <46.931690, 43.961559, 32.992092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574303, 44.140732, 33.005219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018249, -0.036807, 0.999156,
		0.448759, 0.893311, 0.024711,
		-0.893466, 0.447930, 0.032819,
		46.306263, 44.275112, 33.015064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.124905, 44.397640, 33.510811>,  <46.931690, 43.961559, 32.992092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.124905, 44.397640, 33.510811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.728714, 44.362679, 33.468254>,  <46.491001, 44.341702, 33.442719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.728714, 44.362679, 33.468254>,  <47.124905, 44.397640, 33.510811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728714, 44.362679, 33.468254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120675, 0.178944, 0.976431,
		-0.066308, 0.979969, -0.187787,
		-0.990475, -0.087406, -0.106393,
		46.431572, 44.336456, 33.436337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778507, 44.930729, 33.908760>,  <47.124905, 44.397640, 33.510811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778507, 44.930729, 33.908760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.496407, 44.649460, 33.872601>,  <46.327145, 44.480698, 33.850903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.496407, 44.649460, 33.872601>,  <46.778507, 44.930729, 33.908760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496407, 44.649460, 33.872601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198147, 0.073071, 0.977445,
		-0.680703, 0.707259, -0.190864,
		-0.705253, -0.703168, -0.090401,
		46.284832, 44.438511, 33.845482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176994, 45.190247, 34.181301>,  <46.778507, 44.930729, 33.908760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176994, 45.190247, 34.181301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.159546, 44.791107, 34.200874>,  <46.149078, 44.551624, 34.212620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.159546, 44.791107, 34.200874>,  <46.176994, 45.190247, 34.181301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159546, 44.791107, 34.200874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158982, 0.055289, 0.985732,
		-0.986317, 0.035218, -0.161052,
		-0.043620, -0.997849, 0.048934,
		46.146461, 44.491753, 34.215553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726875, 45.091030, 34.659458>,  <46.176994, 45.190247, 34.181301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726875, 45.091030, 34.659458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.885719, 44.724239, 34.644184>,  <45.981026, 44.504166, 34.635017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.885719, 44.724239, 34.644184>,  <45.726875, 45.091030, 34.659458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885719, 44.724239, 34.644184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067951, -0.070871, 0.995168,
		-0.915254, -0.392592, -0.090453,
		0.397106, -0.916978, -0.038188,
		46.004852, 44.449146, 34.632729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146435, 44.609821, 34.911575>,  <45.726875, 45.091030, 34.659458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146435, 44.609821, 34.911575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.497398, 44.430367, 34.979538>,  <45.707977, 44.322693, 35.020313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.497398, 44.430367, 34.979538>,  <45.146435, 44.609821, 34.911575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497398, 44.430367, 34.979538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208496, -0.037645, 0.977298,
		-0.432060, -0.892919, -0.126570,
		0.877413, -0.448641, 0.169905,
		45.760624, 44.295776, 35.030510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930981, 44.200577, 35.422810>,  <45.146435, 44.609821, 34.911575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930981, 44.200577, 35.422810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.326828, 44.145779, 35.440239>,  <45.564335, 44.112900, 35.450695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.326828, 44.145779, 35.440239>,  <44.930981, 44.200577, 35.422810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326828, 44.145779, 35.440239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079725, -0.270825, 0.959321,
		-0.119618, -0.952831, -0.278934,
		0.989614, -0.136990, 0.043569,
		45.623711, 44.104683, 35.453308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190048, 43.454819, 35.572910>,  <44.930981, 44.200577, 35.422810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190048, 43.454819, 35.572910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.518448, 43.662399, 35.668114>,  <45.715488, 43.786949, 35.725235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.518448, 43.662399, 35.668114>,  <45.190048, 43.454819, 35.572910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518448, 43.662399, 35.668114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042062, -0.360769, 0.931706,
		0.569381, -0.774939, -0.274362,
		0.820997, 0.518956, 0.238010,
		45.764748, 43.818085, 35.739517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761848, 42.964203, 35.937981>,  <45.190048, 43.454819, 35.572910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761848, 42.964203, 35.937981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.787529, 43.352188, 36.031822>,  <45.802937, 43.584980, 36.088127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.787529, 43.352188, 36.031822>,  <45.761848, 42.964203, 35.937981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787529, 43.352188, 36.031822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048075, -0.237826, 0.970117,
		0.996778, -0.051009, -0.061901,
		0.064206, 0.969967, 0.234608,
		45.806789, 43.643177, 36.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174530, 42.999168, 36.515144>,  <45.761848, 42.964203, 35.937981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174530, 42.999168, 36.515144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.021278, 43.367863, 36.539211>,  <45.929325, 43.589077, 36.553654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.021278, 43.367863, 36.539211>,  <46.174530, 42.999168, 36.515144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021278, 43.367863, 36.539211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037043, -0.049756, 0.998074,
		0.922950, 0.384625, -0.015081,
		-0.383134, 0.921731, 0.060170,
		45.906338, 43.644382, 36.557262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.544289, 43.337669, 37.115643>,  <46.174530, 42.999168, 36.515144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.544289, 43.337669, 37.115643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.209801, 43.548542, 37.055214>,  <46.009109, 43.675064, 37.018955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.209801, 43.548542, 37.055214>,  <46.544289, 43.337669, 37.115643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209801, 43.548542, 37.055214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158362, 0.031612, 0.986875,
		0.525036, 0.849166, 0.057051,
		-0.836217, 0.527179, -0.151073,
		45.958935, 43.706696, 37.009892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.568230, 43.849094, 37.673077>,  <46.544289, 43.337669, 37.115643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.568230, 43.849094, 37.673077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.195732, 43.817726, 37.530731>,  <45.972233, 43.798904, 37.445324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.195732, 43.817726, 37.530731>,  <46.568230, 43.849094, 37.673077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195732, 43.817726, 37.530731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360712, 0.059667, 0.930767,
		-0.051758, 0.995133, -0.083852,
		-0.931240, -0.078421, -0.355868,
		45.916359, 43.794201, 37.423969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260201, 44.355923, 38.049049>,  <46.568230, 43.849094, 37.673077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260201, 44.355923, 38.049049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.973335, 44.114407, 37.909843>,  <45.801216, 43.969498, 37.826321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.973335, 44.114407, 37.909843>,  <46.260201, 44.355923, 38.049049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973335, 44.114407, 37.909843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508644, 0.112128, 0.853644,
		-0.476396, 0.789221, -0.387526,
		-0.717167, -0.603786, -0.348016,
		45.758186, 43.933270, 37.805439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630939, 44.745781, 38.106937>,  <46.260201, 44.355923, 38.049049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630939, 44.745781, 38.106937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.536522, 44.357418, 38.123074>,  <45.479870, 44.124401, 38.132755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.536522, 44.357418, 38.123074>,  <45.630939, 44.745781, 38.106937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536522, 44.357418, 38.123074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485164, 0.153721, 0.860805,
		-0.841961, 0.183615, -0.507333,
		-0.236045, -0.970904, 0.040343,
		45.465710, 44.066147, 38.135178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995152, 44.657799, 38.406445>,  <45.630939, 44.745781, 38.106937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995152, 44.657799, 38.406445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.160103, 44.297741, 38.462563>,  <45.259075, 44.081707, 38.496235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.160103, 44.297741, 38.462563>,  <44.995152, 44.657799, 38.406445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160103, 44.297741, 38.462563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350731, -0.014741, 0.936360,
		-0.840792, -0.435342, -0.321787,
		0.412380, -0.900145, 0.140294,
		45.283817, 44.027699, 38.504650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643761, 44.423809, 38.976509>,  <44.995152, 44.657799, 38.406445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643761, 44.423809, 38.976509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.920357, 44.135784, 38.953320>,  <45.086315, 43.962971, 38.939407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.920357, 44.135784, 38.953320>,  <44.643761, 44.423809, 38.976509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920357, 44.135784, 38.953320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043090, -0.121223, 0.991690,
		-0.721104, -0.683241, -0.114851,
		0.691485, -0.720060, -0.057973,
		45.127804, 43.919765, 38.935928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350491, 43.878361, 39.307487>,  <44.643761, 44.423809, 38.976509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350491, 43.878361, 39.307487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.745560, 43.816029, 39.313305>,  <44.982601, 43.778629, 39.316795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.745560, 43.816029, 39.313305>,  <44.350491, 43.878361, 39.307487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745560, 43.816029, 39.313305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050997, -0.232602, 0.971234,
		-0.147961, -0.960008, -0.237682,
		0.987677, -0.155826, 0.014541,
		45.041862, 43.769279, 39.317669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506676, 43.156563, 39.577038>,  <44.350491, 43.878361, 39.307487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506676, 43.156563, 39.577038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.840866, 43.370846, 39.626007>,  <45.041382, 43.499416, 39.655388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.840866, 43.370846, 39.626007>,  <44.506676, 43.156563, 39.577038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840866, 43.370846, 39.626007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043842, -0.287050, 0.956912,
		0.547771, -0.794113, -0.263311,
		0.835479, 0.535712, 0.122422,
		45.091511, 43.531559, 39.662735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887165, 42.763721, 40.074070>,  <44.506676, 43.156563, 39.577038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887165, 42.763721, 40.074070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.016808, 43.141197, 40.100616>,  <45.094593, 43.367683, 40.116547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.016808, 43.141197, 40.100616>,  <44.887165, 42.763721, 40.074070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016808, 43.141197, 40.100616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104317, -0.034077, 0.993960,
		0.940252, -0.329070, 0.087398,
		0.324104, 0.943690, 0.066368,
		45.114040, 43.424305, 40.120525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447144, 42.728672, 40.493607>,  <44.887165, 42.763721, 40.074070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447144, 42.728672, 40.493607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.369942, 43.121113, 40.499027>,  <45.323620, 43.356579, 40.502277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.369942, 43.121113, 40.499027>,  <45.447144, 42.728672, 40.493607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369942, 43.121113, 40.499027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025803, -0.018879, 0.999489,
		0.980858, 0.192559, 0.028959,
		-0.193007, 0.981104, 0.013549,
		45.312038, 43.415443, 40.503094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856770, 43.001789, 40.999405>,  <45.447144, 42.728672, 40.493607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856770, 43.001789, 40.999405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.558250, 43.263893, 40.952637>,  <45.379139, 43.421158, 40.924576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.558250, 43.263893, 40.952637>,  <45.856770, 43.001789, 40.999405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558250, 43.263893, 40.952637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110292, 0.051487, 0.992565,
		0.656410, 0.753645, 0.033846,
		-0.746298, 0.655263, -0.116917,
		45.334362, 43.460472, 40.917561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042374, 43.553864, 41.374100>,  <45.856770, 43.001789, 40.999405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042374, 43.553864, 41.374100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.644119, 43.586960, 41.356804>,  <45.405167, 43.606819, 41.346428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.644119, 43.586960, 41.356804>,  <46.042374, 43.553864, 41.374100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644119, 43.586960, 41.356804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033664, 0.113775, 0.992936,
		0.087075, 0.990055, -0.110493,
		-0.995633, 0.082741, -0.043236,
		45.345428, 43.611782, 41.343834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827148, 44.205761, 41.785152>,  <46.042374, 43.553864, 41.374100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827148, 44.205761, 41.785152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.473091, 44.022720, 41.751381>,  <45.260658, 43.912895, 41.731117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.473091, 44.022720, 41.751381>,  <45.827148, 44.205761, 41.785152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473091, 44.022720, 41.751381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193489, 0.196939, 0.961133,
		-0.423189, 0.867073, -0.262859,
		-0.885140, -0.457602, -0.084427,
		45.207550, 43.885441, 41.726051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461140, 44.645817, 42.098152>,  <45.827148, 44.205761, 41.785152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461140, 44.645817, 42.098152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.262177, 44.298916, 42.089500>,  <45.142799, 44.090775, 42.084309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.262177, 44.298916, 42.089500>,  <45.461140, 44.645817, 42.098152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262177, 44.298916, 42.089500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385985, 0.198913, 0.900805,
		-0.776920, 0.456412, -0.433685,
		-0.497404, -0.867249, -0.021629,
		45.112957, 44.038742, 42.083012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797058, 44.814312, 42.226727>,  <45.461140, 44.645817, 42.098152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797058, 44.814312, 42.226727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.833084, 44.428154, 42.324623>,  <44.854702, 44.196457, 42.383362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.833084, 44.428154, 42.324623>,  <44.797058, 44.814312, 42.226727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833084, 44.428154, 42.324623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375435, 0.194697, 0.906168,
		-0.922462, -0.173499, -0.344908,
		0.090067, -0.965397, 0.244738,
		44.860104, 44.138535, 42.398045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161808, 44.603233, 42.442371>,  <44.797058, 44.814312, 42.226727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161808, 44.603233, 42.442371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.414619, 44.336185, 42.599762>,  <44.566307, 44.175957, 42.694199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.414619, 44.336185, 42.599762>,  <44.161808, 44.603233, 42.442371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414619, 44.336185, 42.599762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357470, 0.199339, 0.912403,
		-0.687576, -0.717318, -0.112668,
		0.632024, -0.667621, 0.393480,
		44.604225, 44.135899, 42.717808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710384, 44.277618, 42.854637>,  <44.161808, 44.603233, 42.442371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710384, 44.277618, 42.854637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.076210, 44.192276, 42.992073>,  <44.295704, 44.141071, 43.074535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.076210, 44.192276, 42.992073>,  <43.710384, 44.277618, 42.854637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076210, 44.192276, 42.992073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331967, 0.089285, 0.939056,
		-0.231034, -0.972885, 0.010828,
		0.914561, -0.213359, 0.343594,
		44.350578, 44.128269, 43.095150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589748, 43.824867, 43.456715>,  <43.710384, 44.277618, 42.854637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589748, 43.824867, 43.456715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.964928, 43.948807, 43.519005>,  <44.190033, 44.023170, 43.556377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.964928, 43.948807, 43.519005>,  <43.589748, 43.824867, 43.456715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964928, 43.948807, 43.519005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221765, 0.190705, 0.956270,
		0.266606, -0.931463, 0.247586,
		0.937945, 0.309853, 0.155723,
		44.246311, 44.041763, 43.565723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790794, 43.534584, 44.131199>,  <43.589748, 43.824867, 43.456715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790794, 43.534584, 44.131199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.024422, 43.850914, 44.058037>,  <44.164597, 44.040714, 44.014141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.024422, 43.850914, 44.058037>,  <43.790794, 43.534584, 44.131199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024422, 43.850914, 44.058037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169208, 0.339005, 0.925443,
		0.793872, -0.509573, 0.331816,
		0.584068, 0.790829, -0.182902,
		44.199642, 44.088161, 44.003166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315361, 43.489445, 44.544071>,  <43.790794, 43.534584, 44.131199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315361, 43.489445, 44.544071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.306084, 43.875210, 44.438721>,  <44.300518, 44.106670, 44.375511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.306084, 43.875210, 44.438721>,  <44.315361, 43.489445, 44.544071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306084, 43.875210, 44.438721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224336, 0.251708, 0.941444,
		0.974236, 0.080923, 0.210514,
		-0.023196, 0.964414, -0.263377,
		44.299126, 44.164536, 44.359707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521420, 43.838436, 45.161472>,  <44.315361, 43.489445, 44.544071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521420, 43.838436, 45.161472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.387138, 44.135036, 44.929104>,  <44.306568, 44.312996, 44.789680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.387138, 44.135036, 44.929104>,  <44.521420, 43.838436, 45.161472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387138, 44.135036, 44.929104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061708, 0.632702, 0.771933,
		0.939944, 0.223293, -0.258158,
		-0.335704, 0.741504, -0.580926,
		44.286427, 44.357487, 44.754826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089993, 44.385895, 45.120354>,  <44.521420, 43.838436, 45.161472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089993, 44.385895, 45.120354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.732056, 44.551838, 45.054443>,  <44.517292, 44.651402, 45.014896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.732056, 44.551838, 45.054443>,  <45.089993, 44.385895, 45.120354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732056, 44.551838, 45.054443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128600, 0.593075, 0.794811,
		0.427452, 0.690042, -0.584060,
		-0.894845, 0.414853, -0.164771,
		44.463604, 44.676292, 45.005013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250801, 45.016739, 45.130886>,  <45.089993, 44.385895, 45.120354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250801, 45.016739, 45.130886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.857658, 45.002663, 45.203278>,  <44.621773, 44.994217, 45.246712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.857658, 45.002663, 45.203278>,  <45.250801, 45.016739, 45.130886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.857658, 45.002663, 45.203278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131026, 0.557287, 0.819917,
		-0.129712, 0.829574, -0.543123,
		-0.982857, -0.035190, 0.180983,
		44.562801, 44.992107, 45.257572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099121, 45.753574, 45.147064>,  <45.250801, 45.016739, 45.130886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099121, 45.753574, 45.147064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.791428, 45.580208, 45.334862>,  <44.606812, 45.476189, 45.447540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.791428, 45.580208, 45.334862>,  <45.099121, 45.753574, 45.147064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791428, 45.580208, 45.334862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190956, 0.545251, 0.816233,
		-0.609761, 0.717530, -0.336665,
		-0.769238, -0.433419, 0.469489,
		44.560658, 45.450184, 45.475708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722408, 46.210712, 45.469666>,  <45.099121, 45.753574, 45.147064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722408, 46.210712, 45.469666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.631210, 45.868618, 45.655823>,  <44.576492, 45.663361, 45.767517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.631210, 45.868618, 45.655823>,  <44.722408, 46.210712, 45.469666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631210, 45.868618, 45.655823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216428, 0.421509, 0.880619,
		-0.949304, 0.301498, 0.088996,
		-0.227992, -0.855236, 0.465393,
		44.562813, 45.612045, 45.795441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661869, 46.427322, 46.265610>,  <44.722408, 46.210712, 45.469666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661869, 46.427322, 46.265610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.635254, 46.029625, 46.299183>,  <44.619286, 45.791004, 46.319324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.635254, 46.029625, 46.299183>,  <44.661869, 46.427322, 46.265610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635254, 46.029625, 46.299183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166682, 0.071856, 0.983389,
		-0.983763, 0.079426, 0.160941,
		-0.066542, -0.994247, 0.083929,
		44.615292, 45.731350, 46.324360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097317, 46.202721, 46.730350>,  <44.661869, 46.427322, 46.265610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097317, 46.202721, 46.730350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.397186, 45.938137, 46.721767>,  <44.577110, 45.779388, 46.716618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.397186, 45.938137, 46.721767>,  <44.097317, 46.202721, 46.730350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397186, 45.938137, 46.721767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149486, 0.137663, 0.979133,
		-0.644699, -0.737242, 0.202081,
		0.749678, -0.661455, -0.021456,
		44.622089, 45.739700, 46.715332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909843, 45.778831, 47.326836>,  <44.097317, 46.202721, 46.730350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909843, 45.778831, 47.326836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.293221, 45.700130, 47.244209>,  <44.523247, 45.652912, 47.194633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.293221, 45.700130, 47.244209>,  <43.909843, 45.778831, 47.326836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293221, 45.700130, 47.244209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165477, -0.206385, 0.964377,
		-0.232375, -0.958485, -0.165251,
		0.958446, -0.196752, -0.206566,
		44.580753, 45.641106, 47.182240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028065, 45.228226, 47.693783>,  <43.909843, 45.778831, 47.326836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028065, 45.228226, 47.693783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.389359, 45.385834, 47.625767>,  <44.606136, 45.480400, 47.584957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.389359, 45.385834, 47.625767>,  <44.028065, 45.228226, 47.693783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389359, 45.385834, 47.625767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299736, -0.295647, 0.907056,
		0.307130, -0.870251, -0.385141,
		0.903233, 0.394025, -0.170043,
		44.660328, 45.504040, 47.574753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529922, 44.742653, 47.890163>,  <44.028065, 45.228226, 47.693783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529922, 44.742653, 47.890163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.703636, 45.102562, 47.907150>,  <44.807865, 45.318508, 47.917343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.703636, 45.102562, 47.907150>,  <44.529922, 44.742653, 47.890163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703636, 45.102562, 47.907150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250055, -0.165712, 0.953946,
		0.865373, -0.403664, -0.296959,
		0.434283, 0.899775, 0.042464,
		44.833920, 45.372494, 47.919891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090408, 44.642857, 48.258862>,  <44.529922, 44.742653, 47.890163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090408, 44.642857, 48.258862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.073509, 45.042080, 48.277161>,  <45.063370, 45.281612, 48.288139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.073509, 45.042080, 48.277161>,  <45.090408, 44.642857, 48.258862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073509, 45.042080, 48.277161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352173, -0.027974, 0.935517,
		0.934981, 0.055633, -0.350308,
		-0.042246, 0.998060, 0.045747,
		45.060837, 45.341499, 48.290886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.707436, 44.836845, 48.566521>,  <45.090408, 44.642857, 48.258862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.707436, 44.836845, 48.566521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.454636, 45.136112, 48.647343>,  <45.302956, 45.315670, 48.695835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.454636, 45.136112, 48.647343>,  <45.707436, 44.836845, 48.566521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454636, 45.136112, 48.647343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315943, 0.010666, 0.948718,
		0.707642, 0.663428, -0.243118,
		-0.631999, 0.748164, 0.202057,
		45.265038, 45.360561, 48.707958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.090405, 45.349659, 49.058472>,  <45.707436, 44.836845, 48.566521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.090405, 45.349659, 49.058472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.707031, 45.459438, 49.089653>,  <45.477005, 45.525307, 49.108360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.707031, 45.459438, 49.089653>,  <46.090405, 45.349659, 49.058472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707031, 45.459438, 49.089653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097248, 0.057401, 0.993604,
		0.268216, 0.959888, -0.081705,
		-0.958438, 0.274446, 0.077951,
		45.419498, 45.541771, 49.113037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046894, 45.968067, 49.487221>,  <46.090405, 45.349659, 49.058472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046894, 45.968067, 49.487221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.681946, 45.804867, 49.500584>,  <45.462978, 45.706947, 49.508602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.681946, 45.804867, 49.500584>,  <46.046894, 45.968067, 49.487221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681946, 45.804867, 49.500584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013735, 0.051050, 0.998602,
		-0.409133, 0.911554, -0.040972,
		-0.912371, -0.407998, 0.033407,
		45.408234, 45.682468, 49.510605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776711, 46.366299, 49.944031>,  <46.046894, 45.968067, 49.487221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776711, 46.366299, 49.944031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.526222, 46.054718, 49.930878>,  <45.375931, 45.867767, 49.922985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.526222, 46.054718, 49.930878>,  <45.776711, 46.366299, 49.944031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526222, 46.054718, 49.930878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054224, 0.001435, 0.998528,
		-0.777761, 0.627078, -0.043136,
		-0.626217, -0.778955, -0.032887,
		45.338356, 45.821030, 49.921013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169167, 46.646118, 50.169666>,  <45.776711, 46.366299, 49.944031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169167, 46.646118, 50.169666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.184090, 46.251991, 50.236305>,  <45.193043, 46.015514, 50.276287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.184090, 46.251991, 50.236305>,  <45.169167, 46.646118, 50.169666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184090, 46.251991, 50.236305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021867, 0.165864, 0.985906,
		-0.999065, -0.040422, -0.015358,
		0.037305, -0.985320, 0.166593,
		45.195282, 45.956394, 50.286282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728565, 46.581802, 50.733261>,  <45.169167, 46.646118, 50.169666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728565, 46.581802, 50.733261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.948669, 46.248161, 50.748634>,  <45.080734, 46.047977, 50.757858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.948669, 46.248161, 50.748634>,  <44.728565, 46.581802, 50.733261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948669, 46.248161, 50.748634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131944, 0.132315, 0.982387,
		-0.824500, -0.535501, 0.182863,
		0.550265, -0.834105, 0.038438,
		45.113750, 45.997929, 50.760166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470802, 46.190792, 51.214527>,  <44.728565, 46.581802, 50.733261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470802, 46.190792, 51.214527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.839088, 46.034763, 51.219112>,  <45.060059, 45.941147, 51.221863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.839088, 46.034763, 51.219112>,  <44.470802, 46.190792, 51.214527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839088, 46.034763, 51.219112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024446, 0.086966, 0.995911,
		-0.389474, -0.916668, 0.089606,
		0.920713, -0.390072, 0.011462,
		45.115303, 45.917744, 51.222549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414089, 45.756901, 51.793770>,  <44.470802, 46.190792, 51.214527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414089, 45.756901, 51.793770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.803215, 45.792576, 51.708271>,  <45.036690, 45.813980, 51.656971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.803215, 45.792576, 51.708271>,  <44.414089, 45.756901, 51.793770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803215, 45.792576, 51.708271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163710, 0.388006, 0.907001,
		0.163828, -0.917331, 0.362855,
		0.972810, 0.089189, -0.213743,
		45.095058, 45.819332, 51.644150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717659, 45.620193, 52.467464>,  <44.414089, 45.756901, 51.793770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717659, 45.620193, 52.467464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.024971, 45.765854, 52.256889>,  <45.209358, 45.853249, 52.130543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.024971, 45.765854, 52.256889>,  <44.717659, 45.620193, 52.467464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024971, 45.765854, 52.256889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462849, 0.252077, 0.849840,
		0.442174, -0.896578, 0.025119,
		0.768280, 0.364151, -0.526442,
		45.255455, 45.875099, 52.098957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416069, 45.353783, 52.679420>,  <44.717659, 45.620193, 52.467464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416069, 45.353783, 52.679420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.498436, 45.703407, 52.503418>,  <45.547855, 45.913181, 52.397816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.498436, 45.703407, 52.503418>,  <45.416069, 45.353783, 52.679420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498436, 45.703407, 52.503418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605227, 0.239577, 0.759146,
		0.768959, -0.422626, -0.479676,
		0.205916, 0.874065, -0.440009,
		45.560211, 45.965626, 52.371414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120975, 45.421135, 52.832188>,  <45.416069, 45.353783, 52.679420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120975, 45.421135, 52.832188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.016541, 45.793118, 52.728634>,  <45.953880, 46.016308, 52.666500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.016541, 45.793118, 52.728634>,  <46.120975, 45.421135, 52.832188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016541, 45.793118, 52.728634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439763, 0.353322, 0.825695,
		0.859327, 0.101728, -0.501206,
		-0.261083, 0.929954, -0.258883,
		45.938217, 46.072105, 52.650970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700272, 45.822002, 52.892845>,  <46.120975, 45.421135, 52.832188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700272, 45.822002, 52.892845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.414520, 46.101631, 52.905296>,  <46.243069, 46.269409, 52.912766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.414520, 46.101631, 52.905296>,  <46.700272, 45.822002, 52.892845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414520, 46.101631, 52.905296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369040, 0.338581, 0.865548,
		0.594538, 0.629815, -0.499858,
		-0.714377, 0.699068, 0.031128,
		46.200207, 46.311352, 52.914635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.111122, 46.353661, 53.102364>,  <46.700272, 45.822002, 52.892845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.111122, 46.353661, 53.102364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.738533, 46.481842, 53.171265>,  <46.514980, 46.558750, 53.212605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.738533, 46.481842, 53.171265>,  <47.111122, 46.353661, 53.102364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.738533, 46.481842, 53.171265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324681, 0.518579, 0.790986,
		0.164143, 0.792709, -0.587085,
		-0.931472, 0.320450, 0.172257,
		46.459091, 46.577976, 53.222942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.189884, 47.057682, 53.229904>,  <47.111122, 46.353661, 53.102364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.189884, 47.057682, 53.229904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.842079, 46.964088, 53.403893>,  <46.633396, 46.907932, 53.508286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.842079, 46.964088, 53.403893>,  <47.189884, 47.057682, 53.229904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.842079, 46.964088, 53.403893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272399, 0.507429, 0.817505,
		-0.412001, 0.829316, -0.377478,
		-0.869514, -0.233988, 0.434966,
		46.581226, 46.893890, 53.534382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003368, 47.665497, 53.693539>,  <47.189884, 47.057682, 53.229904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003368, 47.665497, 53.693539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.806931, 47.347191, 53.835289>,  <46.689068, 47.156208, 53.920338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.806931, 47.347191, 53.835289>,  <47.003368, 47.665497, 53.693539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.806931, 47.347191, 53.835289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086408, 0.360305, 0.928824,
		-0.866811, 0.486760, -0.108183,
		-0.491093, -0.795767, 0.354376,
		46.659603, 47.108459, 53.941601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612587, 47.983833, 54.200203>,  <47.003368, 47.665497, 53.693539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612587, 47.983833, 54.200203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.622536, 47.589684, 54.267632>,  <46.628506, 47.353195, 54.308090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.622536, 47.589684, 54.267632>,  <46.612587, 47.983833, 54.200203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622536, 47.589684, 54.267632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142583, 0.170397, 0.975005,
		-0.989470, -0.000213, 0.144736,
		0.024870, -0.985375, 0.168572,
		46.629997, 47.294071, 54.318203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227261, 47.828644, 54.783451>,  <46.612587, 47.983833, 54.200203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227261, 47.828644, 54.783451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.457581, 47.502190, 54.763973>,  <46.595772, 47.306316, 54.752285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.457581, 47.502190, 54.763973>,  <46.227261, 47.828644, 54.783451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457581, 47.502190, 54.763973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283212, 0.143229, 0.948302,
		-0.766972, -0.559823, 0.313612,
		0.575799, -0.816140, -0.048696,
		46.630322, 47.257347, 54.749363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092072, 47.526543, 55.462513>,  <46.227261, 47.828644, 54.783451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092072, 47.526543, 55.462513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.443573, 47.369743, 55.353607>,  <46.654476, 47.275665, 55.288261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.443573, 47.369743, 55.353607>,  <46.092072, 47.526543, 55.462513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443573, 47.369743, 55.353607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291284, -0.011417, 0.956569,
		-0.378078, -0.919897, 0.104149,
		0.878755, -0.391994, -0.272267,
		46.707199, 47.252144, 55.271927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190529, 47.007210, 55.994881>,  <46.092072, 47.526543, 55.462513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190529, 47.007210, 55.994881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.550720, 47.055946, 55.827888>,  <46.766834, 47.085190, 55.727692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.550720, 47.055946, 55.827888>,  <46.190529, 47.007210, 55.994881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.550720, 47.055946, 55.827888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433821, -0.184141, 0.881982,
		0.030590, -0.975318, -0.218674,
		0.900480, 0.121845, -0.417481,
		46.820866, 47.092499, 55.702644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.653141, 46.496902, 56.320011>,  <46.190529, 47.007210, 55.994881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.653141, 46.496902, 56.320011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.896408, 46.783241, 56.182785>,  <47.042370, 46.955044, 56.100449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.896408, 46.783241, 56.182785>,  <46.653141, 46.496902, 56.320011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.896408, 46.783241, 56.182785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558096, -0.078252, 0.826078,
		0.564501, -0.693857, -0.447103,
		0.608167, 0.715849, -0.343066,
		47.078857, 46.997997, 56.079865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.224499, 46.239670, 56.567238>,  <46.653141, 46.496902, 56.320011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.224499, 46.239670, 56.567238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.290504, 46.626236, 56.488441>,  <47.330109, 46.858177, 56.441162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.290504, 46.626236, 56.488441>,  <47.224499, 46.239670, 56.567238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.290504, 46.626236, 56.488441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507141, 0.088166, 0.857342,
		0.845918, -0.241379, -0.475561,
		0.165016, 0.966418, -0.196994,
		47.340008, 46.916161, 56.429344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.931782, 46.384571, 56.716503>,  <47.224499, 46.239670, 56.567238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.931782, 46.384571, 56.716503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.779549, 46.753784, 56.739033>,  <47.688210, 46.975311, 56.752552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.779549, 46.753784, 56.739033>,  <47.931782, 46.384571, 56.716503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.779549, 46.753784, 56.739033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471936, 0.141484, 0.870206,
		0.795257, 0.357769, -0.489457,
		-0.380583, 0.923030, 0.056328,
		47.665375, 47.030693, 56.755932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.498520, 46.908928, 56.939339>,  <47.931782, 46.384571, 56.716503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.498520, 46.908928, 56.939339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.161232, 47.090263, 57.054897>,  <47.958858, 47.199066, 57.124233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.161232, 47.090263, 57.054897>,  <48.498520, 46.908928, 56.939339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.161232, 47.090263, 57.054897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411149, 0.197670, 0.889878,
		0.346310, 0.869144, -0.353070,
		-0.843223, 0.453338, 0.288893,
		47.908264, 47.226265, 57.141563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<46.713154, 47.807011, 57.250000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.090889, 47.680016, 57.215530>,  <47.317532, 47.603817, 57.194851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.090889, 47.680016, 57.215530>,  <46.713154, 47.807011, 57.250000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.090889, 47.680016, 57.215530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148176, -0.176626, -0.973061,
		0.293719, 0.931666, -0.213839,
		0.944337, -0.317492, -0.086172,
		47.374191, 47.584766, 57.189678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.087845, 48.188843, 56.798492>,  <46.713154, 47.807011, 57.250000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.087845, 48.188843, 56.798492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.280609, 47.838356, 56.799744>,  <47.396267, 47.628063, 56.800495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.280609, 47.838356, 56.799744>,  <47.087845, 48.188843, 56.798492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280609, 47.838356, 56.799744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172211, -0.098213, -0.980152,
		0.859128, 0.471812, -0.198224,
		0.481915, -0.876212, 0.003127,
		47.425182, 47.575493, 56.800682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.566730, 48.215340, 56.227825>,  <47.087845, 48.188843, 56.798492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.566730, 48.215340, 56.227825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.498489, 47.827538, 56.298187>,  <47.457542, 47.594856, 56.340405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.498489, 47.827538, 56.298187>,  <47.566730, 48.215340, 56.227825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498489, 47.827538, 56.298187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134933, -0.153857, -0.978837,
		0.976057, -0.190731, -0.104570,
		-0.170605, -0.969510, 0.175909,
		47.447308, 47.536686, 56.350960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.964325, 47.876049, 55.776642>,  <47.566730, 48.215340, 56.227825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.964325, 47.876049, 55.776642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.672104, 47.617065, 55.863449>,  <47.496773, 47.461678, 55.915535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.672104, 47.617065, 55.863449>,  <47.964325, 47.876049, 55.776642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.672104, 47.617065, 55.863449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114636, -0.197013, -0.973676,
		0.673168, -0.736197, 0.069706,
		-0.730550, -0.647457, 0.217017,
		47.452938, 47.422829, 55.928555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.967476, 47.384693, 55.187626>,  <47.964325, 47.876049, 55.776642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.967476, 47.384693, 55.187626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.613205, 47.294975, 55.350243>,  <47.400642, 47.241146, 55.447811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.613205, 47.294975, 55.350243>,  <47.967476, 47.384693, 55.187626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.613205, 47.294975, 55.350243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345683, -0.266020, -0.899854,
		0.309978, -0.937511, 0.158073,
		-0.885673, -0.224291, 0.406542,
		47.347504, 47.227688, 55.472206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.796593, 46.718910, 54.874126>,  <47.967476, 47.384693, 55.187626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.796593, 46.718910, 54.874126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.448807, 46.878525, 54.990604>,  <47.240135, 46.974293, 55.060490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.448807, 46.878525, 54.990604>,  <47.796593, 46.718910, 54.874126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.448807, 46.878525, 54.990604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428442, -0.315729, -0.846613,
		-0.245890, -0.860864, 0.445479,
		-0.869469, 0.399035, 0.291196,
		47.187965, 46.998238, 55.077961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290390, 46.180943, 54.749855>,  <47.796593, 46.718910, 54.874126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290390, 46.180943, 54.749855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.082436, 46.522270, 54.734016>,  <46.957664, 46.727066, 54.724514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.082436, 46.522270, 54.734016>,  <47.290390, 46.180943, 54.749855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.082436, 46.522270, 54.734016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386019, -0.276025, -0.880227,
		-0.762042, -0.442334, 0.472899,
		-0.519886, 0.853317, -0.039594,
		46.926468, 46.778267, 54.722137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.595589, 45.963470, 54.535831>,  <47.290390, 46.180943, 54.749855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.595589, 45.963470, 54.535831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.593666, 46.359291, 54.478203>,  <46.592510, 46.596783, 54.443626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.593666, 46.359291, 54.478203>,  <46.595589, 45.963470, 54.535831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593666, 46.359291, 54.478203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594539, -0.118676, -0.795260,
		-0.804052, 0.081834, 0.588900,
		-0.004809, 0.989555, -0.144075,
		46.592224, 46.656158, 54.434978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939865, 46.239143, 54.491165>,  <46.595589, 45.963470, 54.535831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939865, 46.239143, 54.491165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.177269, 46.494263, 54.294815>,  <46.319710, 46.647335, 54.177006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.177269, 46.494263, 54.294815>,  <45.939865, 46.239143, 54.491165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177269, 46.494263, 54.294815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620910, -0.025207, -0.783476,
		-0.512074, 0.769791, 0.381055,
		0.593508, 0.637798, -0.490879,
		46.355320, 46.685600, 54.147552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466301, 46.698387, 54.141651>,  <45.939865, 46.239143, 54.491165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466301, 46.698387, 54.141651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.812004, 46.748116, 53.946671>,  <46.019424, 46.777950, 53.829681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.812004, 46.748116, 53.946671>,  <45.466301, 46.698387, 54.141651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812004, 46.748116, 53.946671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468914, -0.151781, -0.870105,
		-0.182155, 0.980565, -0.072883,
		0.864257, 0.124318, -0.487448,
		46.071281, 46.785412, 53.800438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262272, 47.130852, 53.624409>,  <45.466301, 46.698387, 54.141651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262272, 47.130852, 53.624409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.607895, 46.963066, 53.513084>,  <45.815269, 46.862396, 53.446289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.607895, 46.963066, 53.513084>,  <45.262272, 47.130852, 53.624409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607895, 46.963066, 53.513084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383090, -0.189256, -0.904115,
		0.326569, 0.887825, -0.324220,
		0.864057, -0.419462, -0.278312,
		45.867111, 46.837227, 53.429592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221264, 47.126492, 52.981735>,  <45.262272, 47.130852, 53.624409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221264, 47.126492, 52.981735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.536919, 46.880875, 52.975880>,  <45.726311, 46.733505, 52.972366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.536919, 46.880875, 52.975880>,  <45.221264, 47.126492, 52.981735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536919, 46.880875, 52.975880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249532, -0.298724, -0.921139,
		0.561242, 0.730561, -0.388958,
		0.789140, -0.614039, -0.014642,
		45.773659, 46.696663, 52.971489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674812, 47.342155, 52.404690>,  <45.221264, 47.126492, 52.981735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674812, 47.342155, 52.404690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.738823, 46.951637, 52.462975>,  <45.777229, 46.717327, 52.497944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.738823, 46.951637, 52.462975>,  <45.674812, 47.342155, 52.404690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738823, 46.951637, 52.462975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302362, -0.189002, -0.934268,
		0.939664, 0.105452, -0.325441,
		0.160029, -0.976298, 0.145713,
		45.786831, 46.658749, 52.506687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768169, 47.070370, 51.729744>,  <45.674812, 47.342155, 52.404690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768169, 47.070370, 51.729744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.727356, 46.731567, 51.938423>,  <45.702869, 46.528286, 52.063633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.727356, 46.731567, 51.938423>,  <45.768169, 47.070370, 51.729744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727356, 46.731567, 51.938423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291485, -0.475964, -0.829756,
		0.951118, -0.236729, -0.198326,
		-0.102031, -0.847005, 0.521701,
		45.696747, 46.477467, 52.094933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038979, 46.551083, 51.321827>,  <45.768169, 47.070370, 51.729744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038979, 46.551083, 51.321827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.806473, 46.348000, 51.576187>,  <45.666969, 46.226151, 51.728802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.806473, 46.348000, 51.576187>,  <46.038979, 46.551083, 51.321827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806473, 46.348000, 51.576187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282711, -0.606792, -0.742885,
		0.763025, -0.611588, 0.209172,
		-0.581264, -0.507704, 0.635900,
		45.632095, 46.195686, 51.766956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358501, 45.943211, 51.381706>,  <46.038979, 46.551083, 51.321827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358501, 45.943211, 51.381706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.968796, 45.914242, 51.467094>,  <45.734974, 45.896862, 51.518330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.968796, 45.914242, 51.467094>,  <46.358501, 45.943211, 51.381706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968796, 45.914242, 51.467094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144501, -0.526199, -0.837994,
		0.173020, -0.847272, 0.502190,
		-0.974261, -0.072423, 0.213474,
		45.676517, 45.892513, 51.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176334, 45.153202, 51.222046>,  <46.358501, 45.943211, 51.381706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176334, 45.153202, 51.222046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.863853, 45.401787, 51.198364>,  <45.676365, 45.550938, 51.184155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.863853, 45.401787, 51.198364>,  <46.176334, 45.153202, 51.222046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863853, 45.401787, 51.198364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347328, -0.511474, -0.785976,
		-0.518748, -0.593435, 0.615415,
		-0.781194, 0.621474, -0.059209,
		45.629494, 45.588226, 51.180603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683128, 44.840706, 50.887329>,  <46.176334, 45.153202, 51.222046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683128, 44.840706, 50.887329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.503586, 45.195934, 50.847618>,  <45.395863, 45.409073, 50.823792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.503586, 45.195934, 50.847618>,  <45.683128, 44.840706, 50.887329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503586, 45.195934, 50.847618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267032, -0.239315, -0.933500,
		-0.852776, -0.392493, 0.344561,
		-0.448851, 0.888075, -0.099274,
		45.368931, 45.462357, 50.817837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142822, 44.685337, 50.477951>,  <45.683128, 44.840706, 50.887329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142822, 44.685337, 50.477951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.192589, 45.079945, 50.435425>,  <45.222446, 45.316708, 50.409908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.192589, 45.079945, 50.435425>,  <45.142822, 44.685337, 50.477951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192589, 45.079945, 50.435425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165945, -0.084953, -0.982469,
		-0.978255, 0.139876, 0.153138,
		0.124414, 0.986518, -0.106317,
		45.229912, 45.375900, 50.403530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568569, 44.791325, 50.066681>,  <45.142822, 44.685337, 50.477951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568569, 44.791325, 50.066681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.805077, 45.109135, 50.011356>,  <44.946980, 45.299820, 49.978161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.805077, 45.109135, 50.011356>,  <44.568569, 44.791325, 50.066681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805077, 45.109135, 50.011356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197234, -0.023828, -0.980067,
		-0.781986, 0.606760, 0.142619,
		0.591267, 0.794528, -0.138307,
		44.982456, 45.347492, 49.969864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186298, 45.203232, 49.606842>,  <44.568569, 44.791325, 50.066681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186298, 45.203232, 49.606842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.564171, 45.331158, 49.577744>,  <44.790894, 45.407913, 49.560284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.564171, 45.331158, 49.577744>,  <44.186298, 45.203232, 49.606842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564171, 45.331158, 49.577744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119520, 0.129118, -0.984400,
		-0.305437, 0.938639, 0.160200,
		0.944682, 0.319819, -0.072748,
		44.847576, 45.427105, 49.555920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160534, 45.891563, 49.276802>,  <44.186298, 45.203232, 49.606842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160534, 45.891563, 49.276802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.536316, 45.765095, 49.223946>,  <44.761784, 45.689213, 49.192230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.536316, 45.765095, 49.223946>,  <44.160534, 45.891563, 49.276802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536316, 45.765095, 49.223946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031183, 0.305151, -0.951793,
		0.341250, 0.898288, 0.276817,
		0.939455, -0.316167, -0.132144,
		44.818153, 45.670246, 49.184303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419720, 46.390087, 48.852684>,  <44.160534, 45.891563, 49.276802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419720, 46.390087, 48.852684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.719482, 46.129318, 48.806393>,  <44.899342, 45.972858, 48.778618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.719482, 46.129318, 48.806393>,  <44.419720, 46.390087, 48.852684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719482, 46.129318, 48.806393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065352, 0.246759, -0.966871,
		0.658877, 0.717016, 0.227527,
		0.749406, -0.651918, -0.115726,
		44.944305, 45.933743, 48.771675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989483, 46.641457, 48.355465>,  <44.419720, 46.390087, 48.852684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989483, 46.641457, 48.355465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.018181, 46.242538, 48.349163>,  <45.035400, 46.003185, 48.345383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.018181, 46.242538, 48.349163>,  <44.989483, 46.641457, 48.355465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018181, 46.242538, 48.349163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303670, 0.036881, -0.952063,
		0.950073, 0.063519, 0.305495,
		0.071741, -0.997299, -0.015751,
		45.039703, 45.943348, 48.344437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512321, 46.528927, 47.851791>,  <44.989483, 46.641457, 48.355465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512321, 46.528927, 47.851791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.323593, 46.179337, 47.898342>,  <45.210354, 45.969582, 47.926273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.323593, 46.179337, 47.898342>,  <45.512321, 46.528927, 47.851791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323593, 46.179337, 47.898342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021586, -0.120506, -0.992478,
		0.881428, -0.470787, 0.037992,
		-0.471824, -0.873978, 0.116380,
		45.182045, 45.917145, 47.933254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865070, 46.014591, 47.373360>,  <45.512321, 46.528927, 47.851791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865070, 46.014591, 47.373360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.504395, 45.849400, 47.424576>,  <45.287987, 45.750282, 47.455307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.504395, 45.849400, 47.424576>,  <45.865070, 46.014591, 47.373360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504395, 45.849400, 47.424576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130218, -0.023010, -0.991218,
		0.412301, -0.910449, -0.033030,
		-0.901694, -0.412982, 0.128044,
		45.233887, 45.725506, 47.462990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847149, 45.329727, 47.049072>,  <45.865070, 46.014591, 47.373360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847149, 45.329727, 47.049072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.456711, 45.410362, 47.081543>,  <45.222446, 45.458744, 47.101025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.456711, 45.410362, 47.081543>,  <45.847149, 45.329727, 47.049072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456711, 45.410362, 47.081543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115488, -0.164740, -0.979553,
		-0.184098, -0.965516, 0.184084,
		-0.976100, 0.201593, 0.081177,
		45.163879, 45.470840, 47.105896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513802, 44.758980, 46.709724>,  <45.847149, 45.329727, 47.049072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513802, 44.758980, 46.709724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.248322, 45.058178, 46.708565>,  <45.089035, 45.237698, 46.707867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.248322, 45.058178, 46.708565>,  <45.513802, 44.758980, 46.709724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248322, 45.058178, 46.708565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302006, -0.271517, -0.913822,
		-0.684324, -0.605623, 0.406105,
		-0.663696, 0.747997, -0.002904,
		45.049213, 45.282578, 46.707695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881710, 44.495461, 46.370327>,  <45.513802, 44.758980, 46.709724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881710, 44.495461, 46.370327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.802994, 44.886990, 46.347786>,  <44.755764, 45.121906, 46.334259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.802994, 44.886990, 46.347786>,  <44.881710, 44.495461, 46.370327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802994, 44.886990, 46.347786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474268, -0.145343, -0.868300,
		-0.858105, -0.144145, 0.492827,
		-0.196790, 0.978825, -0.056356,
		44.743958, 45.180637, 46.330879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.300152, 43.582836, 33.778389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604675, 43.841629, 33.795475>,  <45.787388, 43.996906, 33.805729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604675, 43.841629, 33.795475>,  <45.300152, 43.582836, 33.778389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604675, 43.841629, 33.795475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068304, 0.145544, -0.986991,
		-0.644783, 0.748486, 0.154995,
		0.761308, 0.646982, 0.042720,
		45.833069, 44.035725, 33.808292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115143, 44.145210, 33.327633>,  <45.300152, 43.582836, 33.778389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115143, 44.145210, 33.327633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509369, 44.192436, 33.376175>,  <45.745903, 44.220772, 33.405300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509369, 44.192436, 33.376175>,  <45.115143, 44.145210, 33.327633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509369, 44.192436, 33.376175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080599, 0.303163, -0.949524,
		-0.148892, 0.945597, 0.289270,
		0.985563, 0.118062, 0.121353,
		45.805038, 44.227856, 33.412582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207130, 44.863716, 33.214626>,  <45.115143, 44.145210, 33.327633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207130, 44.863716, 33.214626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549797, 44.669640, 33.144539>,  <45.755398, 44.553192, 33.102486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549797, 44.669640, 33.144539>,  <45.207130, 44.863716, 33.214626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549797, 44.669640, 33.144539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088304, 0.196718, -0.976476,
		0.508250, 0.851991, 0.125678,
		0.856671, -0.485195, -0.175216,
		45.806797, 44.524082, 33.091972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972404, 44.656078, 33.883137>,  <45.207130, 44.863716, 33.214626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972404, 44.656078, 33.883137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688057, 44.890869, 33.728153>,  <44.517448, 45.031742, 33.635162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688057, 44.890869, 33.728153>,  <44.972404, 44.656078, 33.883137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688057, 44.890869, 33.728153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423207, 0.083015, 0.902222,
		0.561744, 0.805340, 0.189398,
		-0.710872, 0.586972, -0.387458,
		44.474796, 45.066959, 33.611916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818542, 45.207169, 34.364323>,  <44.972404, 44.656078, 33.883137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818542, 45.207169, 34.364323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493309, 45.155102, 34.137363>,  <44.298168, 45.123859, 34.001186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493309, 45.155102, 34.137363>,  <44.818542, 45.207169, 34.364323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493309, 45.155102, 34.137363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549371, -0.150826, 0.821853,
		-0.192559, 0.979953, 0.051123,
		-0.813088, -0.130170, -0.567400,
		44.249382, 45.116051, 33.967144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366215, 45.636024, 34.627075>,  <44.818542, 45.207169, 34.364323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366215, 45.636024, 34.627075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126610, 45.395370, 34.415707>,  <43.982849, 45.250980, 34.288887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126610, 45.395370, 34.415707>,  <44.366215, 45.636024, 34.627075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126610, 45.395370, 34.415707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566438, -0.148068, 0.810694,
		-0.565981, 0.784929, -0.252094,
		-0.599010, -0.601633, -0.528417,
		43.946907, 45.214882, 34.257183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713512, 45.824883, 34.886089>,  <44.366215, 45.636024, 34.627075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713512, 45.824883, 34.886089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.702484, 45.457066, 34.729286>,  <43.695866, 45.236374, 34.635204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.702484, 45.457066, 34.729286>,  <43.713512, 45.824883, 34.886089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702484, 45.457066, 34.729286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699021, -0.262595, 0.665142,
		-0.714569, 0.292366, -0.635542,
		-0.027575, -0.919546, -0.392012,
		43.694210, 45.181202, 34.611683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031326, 45.666019, 34.800407>,  <43.713512, 45.824883, 34.886089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031326, 45.666019, 34.800407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222214, 45.315811, 34.830666>,  <43.336746, 45.105686, 34.848820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222214, 45.315811, 34.830666>,  <43.031326, 45.666019, 34.800407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222214, 45.315811, 34.830666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675955, -0.310706, 0.668242,
		-0.561559, -0.370028, -0.740088,
		0.477218, -0.875524, 0.075643,
		43.365379, 45.053154, 34.853359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512173, 45.127666, 34.733654>,  <43.031326, 45.666019, 34.800407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512173, 45.127666, 34.733654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811424, 44.927204, 34.907619>,  <42.990974, 44.806927, 35.011997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811424, 44.927204, 34.907619>,  <42.512173, 45.127666, 34.733654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811424, 44.927204, 34.907619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625424, -0.313581, 0.714501,
		-0.221692, -0.806545, -0.548031,
		0.748129, -0.501151, 0.434915,
		43.035862, 44.776859, 35.038094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217979, 44.496243, 34.920719>,  <42.512173, 45.127666, 34.733654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217979, 44.496243, 34.920719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527901, 44.538109, 35.170113>,  <42.713852, 44.563229, 35.319748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527901, 44.538109, 35.170113>,  <42.217979, 44.496243, 34.920719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527901, 44.538109, 35.170113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588031, -0.242876, 0.771513,
		0.232180, -0.964394, -0.126633,
		0.774798, 0.104665, 0.623484,
		42.760342, 44.569508, 35.357159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162548, 43.919186, 35.405914>,  <42.217979, 44.496243, 34.920719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162548, 43.919186, 35.405914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414879, 44.161396, 35.599983>,  <42.566277, 44.306721, 35.716427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414879, 44.161396, 35.599983>,  <42.162548, 43.919186, 35.405914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414879, 44.161396, 35.599983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375900, -0.308515, 0.873795,
		0.678788, -0.733592, 0.032997,
		0.630829, 0.605526, 0.485174,
		42.604126, 44.343052, 35.745537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168781, 43.530403, 36.006714>,  <42.162548, 43.919186, 35.405914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168781, 43.530403, 36.006714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352249, 43.879860, 36.071682>,  <42.462330, 44.089535, 36.110664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352249, 43.879860, 36.071682>,  <42.168781, 43.530403, 36.006714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352249, 43.879860, 36.071682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345548, 0.006958, 0.938375,
		0.818671, -0.486526, 0.305075,
		0.458667, 0.873638, 0.162422,
		42.489849, 44.141953, 36.120407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622337, 43.470554, 36.550606>,  <42.168781, 43.530403, 36.006714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622337, 43.470554, 36.550606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489296, 43.846287, 36.517059>,  <42.409473, 44.071728, 36.496933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489296, 43.846287, 36.517059>,  <42.622337, 43.470554, 36.550606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489296, 43.846287, 36.517059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341148, -0.036931, 0.939284,
		0.879202, 0.341016, 0.332735,
		-0.332599, 0.939332, -0.083867,
		42.389515, 44.128086, 36.491898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922215, 43.752064, 37.099400>,  <42.622337, 43.470554, 36.550606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922215, 43.752064, 37.099400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623955, 43.992218, 36.983784>,  <42.445000, 44.136311, 36.914413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623955, 43.992218, 36.983784>,  <42.922215, 43.752064, 37.099400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623955, 43.992218, 36.983784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228748, 0.176778, 0.957300,
		0.625841, 0.779931, 0.005521,
		-0.745652, 0.600381, -0.289042,
		42.400261, 44.172333, 36.897072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098297, 44.441795, 37.259678>,  <42.922215, 43.752064, 37.099400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098297, 44.441795, 37.259678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698662, 44.453304, 37.247089>,  <42.458881, 44.460209, 37.239536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698662, 44.453304, 37.247089>,  <43.098297, 44.441795, 37.259678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698662, 44.453304, 37.247089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020396, 0.325688, 0.945257,
		0.037451, 0.945039, -0.324805,
		-0.999090, 0.028776, -0.031473,
		42.398933, 44.461937, 37.237648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949924, 44.924911, 37.769131>,  <43.098297, 44.441795, 37.259678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949924, 44.924911, 37.769131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583862, 44.778706, 37.701138>,  <42.364227, 44.690983, 37.660343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583862, 44.778706, 37.701138>,  <42.949924, 44.924911, 37.769131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583862, 44.778706, 37.701138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320363, 0.403535, 0.857046,
		-0.244670, 0.838784, -0.486393,
		-0.915153, -0.365515, -0.169982,
		42.309315, 44.669052, 37.650143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503994, 45.456860, 37.876522>,  <42.949924, 44.924911, 37.769131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503994, 45.456860, 37.876522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290237, 45.124195, 37.936874>,  <42.161983, 44.924595, 37.973083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290237, 45.124195, 37.936874>,  <42.503994, 45.456860, 37.876522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290237, 45.124195, 37.936874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454262, 0.433121, 0.778493,
		-0.712793, 0.347480, -0.609248,
		-0.534389, -0.831663, 0.150879,
		42.129921, 44.874695, 37.982140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789616, 45.625854, 38.075848>,  <42.503994, 45.456860, 37.876522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789616, 45.625854, 38.075848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824936, 45.253445, 38.217491>,  <41.846127, 45.029999, 38.302479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824936, 45.253445, 38.217491>,  <41.789616, 45.625854, 38.075848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824936, 45.253445, 38.217491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382834, 0.296478, 0.874951,
		-0.919588, -0.212821, -0.330250,
		0.088296, -0.931026, 0.354112,
		41.851425, 44.974136, 38.323727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336967, 45.547302, 38.621876>,  <41.789616, 45.625854, 38.075848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336967, 45.547302, 38.621876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544899, 45.214855, 38.700882>,  <41.669659, 45.015385, 38.748287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544899, 45.214855, 38.700882>,  <41.336967, 45.547302, 38.621876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544899, 45.214855, 38.700882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238589, 0.080761, 0.967757,
		-0.820274, -0.550197, -0.156314,
		0.519833, -0.831120, 0.197518,
		41.700848, 44.965519, 38.760136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852100, 45.092957, 38.979248>,  <41.336967, 45.547302, 38.621876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852100, 45.092957, 38.979248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229385, 44.994011, 39.067936>,  <41.455757, 44.934643, 39.121151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229385, 44.994011, 39.067936>,  <40.852100, 45.092957, 38.979248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229385, 44.994011, 39.067936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197955, 0.117458, 0.973148,
		-0.266765, -0.961777, 0.061820,
		0.943213, -0.247364, 0.221723,
		41.512348, 44.919804, 39.134453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716393, 44.522240, 39.520630>,  <40.852100, 45.092957, 38.979248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716393, 44.522240, 39.520630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.098450, 44.638546, 39.543091>,  <41.327686, 44.708328, 39.556568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.098450, 44.638546, 39.543091>,  <40.716393, 44.522240, 39.520630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098450, 44.638546, 39.543091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091749, 0.110276, 0.989657,
		0.281565, -0.950418, 0.132007,
		0.955146, 0.290764, 0.056150,
		41.384995, 44.725777, 39.559937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946796, 44.065464, 40.041645>,  <40.716393, 44.522240, 39.520630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946796, 44.065464, 40.041645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171173, 44.395439, 40.013859>,  <41.305798, 44.593426, 39.997189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171173, 44.395439, 40.013859>,  <40.946796, 44.065464, 40.041645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171173, 44.395439, 40.013859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047292, 0.051842, 0.997535,
		0.826504, -0.562843, -0.009933,
		0.560940, 0.824937, -0.069465,
		41.339455, 44.642921, 39.993019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414555, 43.870052, 40.569904>,  <40.946796, 44.065464, 40.041645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414555, 43.870052, 40.569904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421974, 44.264194, 40.502113>,  <41.426426, 44.500679, 40.461437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421974, 44.264194, 40.502113>,  <41.414555, 43.870052, 40.569904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421974, 44.264194, 40.502113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113641, 0.166331, 0.979500,
		0.993349, -0.037432, -0.108891,
		0.018553, 0.985359, -0.169478,
		41.427540, 44.559803, 40.451271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093712, 44.179600, 40.882183>,  <41.414555, 43.870052, 40.569904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093712, 44.179600, 40.882183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.851311, 44.492668, 40.825356>,  <41.705872, 44.680511, 40.791260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.851311, 44.492668, 40.825356>,  <42.093712, 44.179600, 40.882183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851311, 44.492668, 40.825356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024724, 0.159985, 0.986810,
		0.795081, 0.601519, -0.077600,
		-0.606000, 0.782675, -0.142072,
		41.669510, 44.727470, 40.782734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334866, 44.844231, 41.271828>,  <42.093712, 44.179600, 40.882183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334866, 44.844231, 41.271828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.944809, 44.923077, 41.231331>,  <41.710777, 44.970387, 41.207035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.944809, 44.923077, 41.231331>,  <42.334866, 44.844231, 41.271828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944809, 44.923077, 41.231331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090293, 0.063775, 0.993871,
		0.202365, 0.978303, -0.044391,
		-0.975139, 0.197117, -0.101240,
		41.652267, 44.982212, 41.200958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278870, 45.276211, 41.726395>,  <42.334866, 44.844231, 41.271828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278870, 45.276211, 41.726395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895164, 45.184212, 41.660763>,  <41.664944, 45.129013, 41.621384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895164, 45.184212, 41.660763>,  <42.278870, 45.276211, 41.726395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895164, 45.184212, 41.660763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199017, 0.137864, 0.970250,
		-0.200531, 0.963378, -0.178020,
		-0.959260, -0.229994, -0.164083,
		41.607388, 45.115215, 41.611538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845787, 45.887428, 41.913292>,  <42.278870, 45.276211, 41.726395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845787, 45.887428, 41.913292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.627892, 45.553696, 41.947109>,  <41.497154, 45.353455, 41.967400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.627892, 45.553696, 41.947109>,  <41.845787, 45.887428, 41.913292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627892, 45.553696, 41.947109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236621, 0.249641, 0.938983,
		-0.804529, 0.491498, -0.333410,
		-0.544741, -0.834332, 0.084545,
		41.464470, 45.303394, 41.972473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401463, 46.052204, 42.456131>,  <41.845787, 45.887428, 41.913292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401463, 46.052204, 42.456131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.366264, 45.653896, 42.445564>,  <41.345146, 45.414913, 42.439224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.366264, 45.653896, 42.445564>,  <41.401463, 46.052204, 42.456131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366264, 45.653896, 42.445564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027037, -0.024120, 0.999343,
		-0.995753, 0.088656, -0.024800,
		-0.088000, -0.995770, -0.026414,
		41.339863, 45.355164, 42.437641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824650, 45.858814, 42.981697>,  <41.401463, 46.052204, 42.456131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824650, 45.858814, 42.981697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.051605, 45.539299, 42.901695>,  <41.187778, 45.347591, 42.853695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.051605, 45.539299, 42.901695>,  <40.824650, 45.858814, 42.981697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051605, 45.539299, 42.901695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126564, -0.155405, 0.979710,
		-0.813664, -0.581192, 0.012922,
		0.567392, -0.798789, -0.200005,
		41.221825, 45.299664, 42.841694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680584, 45.518013, 43.529697>,  <40.824650, 45.858814, 42.981697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680584, 45.518013, 43.529697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.991531, 45.302578, 43.399704>,  <41.178101, 45.173317, 43.321709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.991531, 45.302578, 43.399704>,  <40.680584, 45.518013, 43.529697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991531, 45.302578, 43.399704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217003, -0.255306, 0.942194,
		-0.590428, -0.802955, -0.081592,
		0.777370, -0.538592, -0.324983,
		41.224743, 45.140999, 43.302208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617535, 44.900055, 43.854256>,  <40.680584, 45.518013, 43.529697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617535, 44.900055, 43.854256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003944, 44.905373, 43.751007>,  <41.235790, 44.908562, 43.689060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003944, 44.905373, 43.751007>,  <40.617535, 44.900055, 43.854256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003944, 44.905373, 43.751007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253436, -0.244638, 0.935907,
		-0.050707, -0.969523, -0.239693,
		0.966022, 0.013290, -0.258117,
		41.293751, 44.909359, 43.673573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922981, 44.269207, 44.162563>,  <40.617535, 44.900055, 43.854256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922981, 44.269207, 44.162563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.206985, 44.546032, 44.110516>,  <41.377388, 44.712128, 44.079285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.206985, 44.546032, 44.110516>,  <40.922981, 44.269207, 44.162563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206985, 44.546032, 44.110516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286148, -0.114704, 0.951295,
		0.643430, -0.712666, -0.279473,
		0.710012, 0.692062, -0.130124,
		41.419991, 44.753651, 44.071480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.755791, 43.973263, 44.437298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788910, 44.368942, 44.388924>,  <41.808781, 44.606350, 44.359898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788910, 44.368942, 44.388924>,  <41.755791, 43.973263, 44.437298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788910, 44.368942, 44.388924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481665, 0.066515, 0.873828,
		0.872435, -0.130601, -0.470957,
		0.082797, 0.989201, -0.120936,
		41.813747, 44.665703, 44.352642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434444, 44.158455, 44.696762>,  <41.755791, 43.973263, 44.437298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434444, 44.158455, 44.696762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262047, 44.519272, 44.687313>,  <42.158607, 44.735764, 44.681644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262047, 44.519272, 44.687313>,  <42.434444, 44.158455, 44.696762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262047, 44.519272, 44.687313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352121, 0.192234, 0.916000,
		0.830816, 0.386470, -0.400481,
		-0.430993, 0.902046, -0.023627,
		42.132748, 44.789886, 44.680225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958179, 44.647182, 44.929398>,  <42.434444, 44.158455, 44.696762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958179, 44.647182, 44.929398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604263, 44.820576, 44.997803>,  <42.391914, 44.924610, 45.038845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604263, 44.820576, 44.997803>,  <42.958179, 44.647182, 44.929398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604263, 44.820576, 44.997803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278722, 0.198190, 0.939699,
		0.373447, 0.879100, -0.296176,
		-0.884789, 0.433479, 0.171011,
		42.338825, 44.950619, 45.049107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356091, 45.238541, 44.758030>,  <42.958179, 44.647182, 44.929398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356091, 45.238541, 44.758030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693069, 45.038410, 44.837982>,  <43.895256, 44.918331, 44.885956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693069, 45.038410, 44.837982>,  <43.356091, 45.238541, 44.758030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693069, 45.038410, 44.837982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037659, -0.424770, -0.904518,
		0.537457, 0.754483, -0.376689,
		0.842450, -0.500326, 0.199882,
		43.945805, 44.888313, 44.897945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705257, 45.369347, 44.117737>,  <43.356091, 45.238541, 44.758030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705257, 45.369347, 44.117737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873146, 45.062508, 44.311806>,  <43.973877, 44.878403, 44.428246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873146, 45.062508, 44.311806>,  <43.705257, 45.369347, 44.117737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873146, 45.062508, 44.311806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172970, -0.457140, -0.872413,
		0.891020, 0.450089, -0.059186,
		0.419720, -0.767100, 0.485173,
		43.999062, 44.832378, 44.457359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391514, 45.377693, 43.920055>,  <43.705257, 45.369347, 44.117737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391514, 45.377693, 43.920055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324905, 45.004551, 44.047832>,  <44.284939, 44.780663, 44.124496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324905, 45.004551, 44.047832>,  <44.391514, 45.377693, 43.920055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324905, 45.004551, 44.047832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397540, -0.359983, -0.844023,
		0.902348, -0.013561, 0.430795,
		-0.166525, -0.932860, 0.319439,
		44.274948, 44.724693, 44.143665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064011, 45.040825, 43.806835>,  <44.391514, 45.377693, 43.920055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064011, 45.040825, 43.806835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788162, 44.755913, 43.859108>,  <44.622654, 44.584965, 43.890472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788162, 44.755913, 43.859108>,  <45.064011, 45.040825, 43.806835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788162, 44.755913, 43.859108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330684, -0.470280, -0.818221,
		0.644257, -0.521052, 0.559856,
		-0.689624, -0.712279, 0.130678,
		44.581276, 44.542229, 43.898312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437649, 44.445824, 43.785957>,  <45.064011, 45.040825, 43.806835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437649, 44.445824, 43.785957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065506, 44.318642, 43.712921>,  <44.842220, 44.242332, 43.669098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065506, 44.318642, 43.712921>,  <45.437649, 44.445824, 43.785957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065506, 44.318642, 43.712921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319329, -0.457921, -0.829661,
		0.180185, -0.830187, 0.527562,
		-0.930356, -0.317958, -0.182592,
		44.786400, 44.223255, 43.658142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569664, 43.839069, 43.472775>,  <45.437649, 44.445824, 43.785957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569664, 43.839069, 43.472775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185402, 43.906624, 43.384575>,  <44.954845, 43.947155, 43.331654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185402, 43.906624, 43.384575>,  <45.569664, 43.839069, 43.472775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185402, 43.906624, 43.384575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104782, -0.514860, -0.850847,
		-0.257222, -0.840474, 0.476906,
		-0.960655, 0.168886, -0.220500,
		44.897205, 43.957291, 43.318424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376785, 43.199966, 43.182667>,  <45.569664, 43.839069, 43.472775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376785, 43.199966, 43.182667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116478, 43.479340, 43.063541>,  <44.960293, 43.646965, 42.992065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116478, 43.479340, 43.063541>,  <45.376785, 43.199966, 43.182667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116478, 43.479340, 43.063541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070107, -0.335289, -0.939503,
		-0.756035, -0.632276, 0.169229,
		-0.650766, 0.698433, -0.297817,
		44.921249, 43.688869, 42.974197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956097, 42.878036, 42.714756>,  <45.376785, 43.199966, 43.182667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956097, 42.878036, 42.714756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911324, 43.261589, 42.610432>,  <44.884460, 43.491718, 42.547836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911324, 43.261589, 42.610432>,  <44.956097, 42.878036, 42.714756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911324, 43.261589, 42.610432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097806, -0.250552, -0.963150,
		-0.988891, -0.133318, -0.065739,
		-0.111934, 0.958879, -0.260808,
		44.877743, 43.549252, 42.532188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435017, 42.957058, 42.232018>,  <44.956097, 42.878036, 42.714756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435017, 42.957058, 42.232018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642830, 43.294720, 42.179100>,  <44.767517, 43.497314, 42.147350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642830, 43.294720, 42.179100>,  <44.435017, 42.957058, 42.232018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642830, 43.294720, 42.179100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117533, -0.223954, -0.967487,
		-0.846331, 0.487089, -0.215566,
		0.519529, 0.844150, -0.132290,
		44.798687, 43.547966, 42.139412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137272, 43.288502, 41.607224>,  <44.435017, 42.957058, 42.232018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137272, 43.288502, 41.607224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499352, 43.456009, 41.636204>,  <44.716599, 43.556515, 41.653591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499352, 43.456009, 41.636204>,  <44.137272, 43.288502, 41.607224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499352, 43.456009, 41.636204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063675, 0.034911, -0.997360,
		-0.420193, 0.907421, 0.004936,
		0.905198, 0.418769, 0.072449,
		44.770912, 43.581638, 41.657940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094803, 43.744835, 41.117931>,  <44.137272, 43.288502, 41.607224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094803, 43.744835, 41.117931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484932, 43.753712, 41.205795>,  <44.719009, 43.759037, 41.258514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484932, 43.753712, 41.205795>,  <44.094803, 43.744835, 41.117931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484932, 43.753712, 41.205795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213865, 0.152141, -0.964943,
		-0.054830, 0.988110, 0.143641,
		0.975323, 0.022188, 0.219664,
		44.777531, 43.760368, 41.271694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402161, 44.355751, 40.744259>,  <44.094803, 43.744835, 41.117931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402161, 44.355751, 40.744259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704781, 44.101265, 40.804737>,  <44.886353, 43.948574, 40.841026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704781, 44.101265, 40.804737>,  <44.402161, 44.355751, 40.744259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704781, 44.101265, 40.804737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216864, 0.025969, -0.975856,
		0.616927, 0.771075, 0.157619,
		0.756552, -0.636214, 0.151197,
		44.931747, 43.910400, 40.850098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997303, 44.692047, 40.452732>,  <44.402161, 44.355751, 40.744259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997303, 44.692047, 40.452732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105240, 44.307529, 40.474979>,  <45.170002, 44.076817, 40.488327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105240, 44.307529, 40.474979>,  <44.997303, 44.692047, 40.452732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105240, 44.307529, 40.474979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202639, 0.000227, -0.979254,
		0.941341, 0.275513, 0.194857,
		0.269841, -0.961297, 0.055616,
		45.186192, 44.019142, 40.491665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683685, 44.641052, 40.165680>,  <44.997303, 44.692047, 40.452732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683685, 44.641052, 40.165680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515945, 44.278595, 40.143589>,  <45.415302, 44.061119, 40.130333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515945, 44.278595, 40.143589>,  <45.683685, 44.641052, 40.165680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515945, 44.278595, 40.143589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226624, -0.045580, -0.972915,
		0.879084, -0.420507, 0.224468,
		-0.419349, -0.906144, -0.055228,
		45.390141, 44.006752, 40.127022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195999, 44.192425, 39.781971>,  <45.683685, 44.641052, 40.165680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195999, 44.192425, 39.781971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848404, 43.996086, 39.756893>,  <45.639847, 43.878281, 39.741848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848404, 43.996086, 39.756893>,  <46.195999, 44.192425, 39.781971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848404, 43.996086, 39.756893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236701, -0.301064, -0.923760,
		0.434553, -0.817574, 0.377806,
		-0.868986, -0.490850, -0.062692,
		45.587708, 43.848831, 39.738087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336063, 43.526722, 39.345463>,  <46.195999, 44.192425, 39.781971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336063, 43.526722, 39.345463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942337, 43.592407, 39.319656>,  <45.706100, 43.631821, 39.304173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942337, 43.592407, 39.319656>,  <46.336063, 43.526722, 39.345463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942337, 43.592407, 39.319656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022115, -0.247946, -0.968521,
		-0.175040, -0.954755, 0.240425,
		-0.984313, 0.164213, -0.064514,
		45.647045, 43.641674, 39.300301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068222, 43.035107, 38.876663>,  <46.336063, 43.526722, 39.345463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068222, 43.035107, 38.876663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781410, 43.312943, 38.900021>,  <45.609322, 43.479645, 38.914036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781410, 43.312943, 38.900021>,  <46.068222, 43.035107, 38.876663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781410, 43.312943, 38.900021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119699, -0.040176, -0.991997,
		-0.686685, -0.718283, 0.111949,
		-0.717033, 0.694589, 0.058389,
		45.566299, 43.521320, 38.917538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558151, 42.778172, 38.612045>,  <46.068222, 43.035107, 38.876663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558151, 42.778172, 38.612045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523178, 43.175465, 38.581482>,  <45.502193, 43.413841, 38.563145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523178, 43.175465, 38.581482>,  <45.558151, 42.778172, 38.612045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523178, 43.175465, 38.581482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028141, -0.079138, -0.996466,
		-0.995773, -0.084974, 0.034870,
		-0.087433, 0.993235, -0.076412,
		45.496948, 43.473434, 38.558559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225487, 42.779881, 38.011520>,  <45.558151, 42.778172, 38.612045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225487, 42.779881, 38.011520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288048, 43.173340, 38.047234>,  <45.325584, 43.409416, 38.068661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288048, 43.173340, 38.047234>,  <45.225487, 42.779881, 38.011520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288048, 43.173340, 38.047234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130875, 0.110239, -0.985251,
		-0.978983, 0.142416, 0.145977,
		0.156407, 0.983649, 0.089283,
		45.334969, 43.468433, 38.074020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724228, 43.183876, 37.636700>,  <45.225487, 42.779881, 38.011520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724228, 43.183876, 37.636700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060745, 43.397747, 37.668556>,  <45.262657, 43.526070, 37.687672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060745, 43.397747, 37.668556>,  <44.724228, 43.183876, 37.636700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060745, 43.397747, 37.668556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027419, 0.104933, -0.994101,
		-0.539878, 0.838518, 0.073620,
		0.841297, 0.534674, 0.079642,
		45.313133, 43.558151, 37.692448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683475, 43.464012, 37.082081>,  <44.724228, 43.183876, 37.636700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683475, 43.464012, 37.082081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055351, 43.579346, 37.173767>,  <45.278477, 43.648548, 37.228779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055351, 43.579346, 37.173767>,  <44.683475, 43.464012, 37.082081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055351, 43.579346, 37.173767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120315, 0.350438, -0.928826,
		-0.348140, 0.891098, 0.291107,
		0.929690, 0.288337, 0.229214,
		45.334259, 43.665848, 37.242531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792297, 44.232651, 36.886845>,  <44.683475, 43.464012, 37.082081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792297, 44.232651, 36.886845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165596, 44.093266, 36.921761>,  <45.389576, 44.009636, 36.942711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165596, 44.093266, 36.921761>,  <44.792297, 44.232651, 36.886845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165596, 44.093266, 36.921761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210765, 0.334365, -0.918574,
		0.290902, 0.875656, 0.385490,
		0.933249, -0.348463, 0.087291,
		45.445572, 43.988728, 36.947948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277233, 44.740902, 36.690434>,  <44.792297, 44.232651, 36.886845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277233, 44.740902, 36.690434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468315, 44.393330, 36.638660>,  <45.582966, 44.184784, 36.607597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468315, 44.393330, 36.638660>,  <45.277233, 44.740902, 36.690434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468315, 44.393330, 36.638660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341603, 0.319464, -0.883884,
		0.809386, 0.378018, 0.449439,
		0.477704, -0.868933, -0.129437,
		45.611626, 44.132648, 36.599831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959599, 44.879383, 36.431580>,  <45.277233, 44.740902, 36.690434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959599, 44.879383, 36.431580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919357, 44.496433, 36.323277>,  <45.895210, 44.266663, 36.258297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919357, 44.496433, 36.323277>,  <45.959599, 44.879383, 36.431580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919357, 44.496433, 36.323277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453578, 0.198074, -0.868927,
		0.885520, -0.210226, 0.414318,
		-0.100606, -0.957377, -0.270753,
		45.889175, 44.209221, 36.242050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697456, 44.638367, 36.143055>,  <45.959599, 44.879383, 36.431580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697456, 44.638367, 36.143055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392914, 44.402924, 36.034340>,  <46.210190, 44.261658, 35.969109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392914, 44.402924, 36.034340>,  <46.697456, 44.638367, 36.143055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392914, 44.402924, 36.034340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234926, 0.140256, -0.961841,
		0.604272, -0.796155, 0.031495,
		-0.761357, -0.588612, -0.271791,
		46.164505, 44.226341, 35.952801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977680, 44.183090, 35.564030>,  <46.697456, 44.638367, 36.143055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977680, 44.183090, 35.564030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582611, 44.141155, 35.517525>,  <46.345570, 44.115993, 35.489620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582611, 44.141155, 35.517525>,  <46.977680, 44.183090, 35.564030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.582611, 44.141155, 35.517525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119339, -0.023525, -0.992575,
		0.101321, -0.994212, 0.035745,
		-0.987670, -0.104834, -0.116264,
		46.286308, 44.109703, 35.482647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902203, 43.651356, 35.054020>,  <46.977680, 44.183090, 35.564030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902203, 43.651356, 35.054020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548714, 43.838558, 35.052788>,  <46.336620, 43.950878, 35.052048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548714, 43.838558, 35.052788>,  <46.902203, 43.651356, 35.054020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548714, 43.838558, 35.052788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009557, 0.011461, -0.999889,
		-0.467921, -0.883650, -0.014601,
		-0.883719, 0.468008, -0.003083,
		46.283600, 43.978962, 35.051865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468204, 43.258091, 34.772354>,  <46.902203, 43.651356, 35.054020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468204, 43.258091, 34.772354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326057, 43.627605, 34.715309>,  <46.240768, 43.849316, 34.681084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326057, 43.627605, 34.715309>,  <46.468204, 43.258091, 34.772354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326057, 43.627605, 34.715309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030087, -0.141184, -0.989526,
		-0.934244, -0.355932, 0.022378,
		-0.355364, 0.923785, -0.142610,
		46.219448, 43.904739, 34.672527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062862, 43.208866, 34.208454>,  <46.468204, 43.258091, 34.772354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062862, 43.208866, 34.208454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093834, 43.606831, 34.234253>,  <46.112415, 43.845608, 34.249733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093834, 43.606831, 34.234253>,  <46.062862, 43.208866, 34.208454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093834, 43.606831, 34.234253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082944, 0.058038, -0.994863,
		-0.993542, 0.082380, -0.078028,
		0.077428, 0.994910, 0.064496,
		46.117062, 43.905304, 34.253601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.106987, 44.557255, 46.406582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.237083, 44.889423, 46.225643>,  <44.315140, 45.088726, 46.117081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.237083, 44.889423, 46.225643>,  <44.106987, 44.557255, 46.406582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237083, 44.889423, 46.225643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331155, -0.348040, -0.877043,
		-0.885751, 0.435046, 0.161803,
		0.325240, 0.830424, -0.452344,
		44.334656, 45.138550, 46.089939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570221, 44.760426, 46.060699>,  <44.106987, 44.557255, 46.406582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570221, 44.760426, 46.060699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.851234, 44.981464, 45.881332>,  <44.019844, 45.114090, 45.773712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.851234, 44.981464, 45.881332>,  <43.570221, 44.760426, 46.060699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851234, 44.981464, 45.881332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194416, -0.457109, -0.867902,
		-0.684577, 0.696912, -0.213701,
		0.702536, 0.552599, -0.448417,
		44.061996, 45.147243, 45.746807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285149, 45.074230, 45.509666>,  <43.570221, 44.760426, 46.060699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285149, 45.074230, 45.509666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.678841, 45.047676, 45.444073>,  <43.915054, 45.031746, 45.404716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.678841, 45.047676, 45.444073>,  <43.285149, 45.074230, 45.509666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678841, 45.047676, 45.444073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176028, -0.275012, -0.945189,
		0.017647, 0.959146, -0.282360,
		0.984227, -0.066383, -0.163983,
		43.974110, 45.027760, 45.394878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987984, 45.818073, 45.533047>,  <43.285149, 45.074230, 45.509666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987984, 45.818073, 45.533047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.633049, 45.633629, 45.533134>,  <42.420086, 45.522961, 45.533188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.633049, 45.633629, 45.533134>,  <42.987984, 45.818073, 45.533047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633049, 45.633629, 45.533134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047858, -0.091625, 0.994643,
		-0.458624, 0.882598, 0.103370,
		-0.887341, -0.461115, 0.000218,
		42.366848, 45.495293, 45.533199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562164, 46.158192, 45.943604>,  <42.987984, 45.818073, 45.533047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562164, 46.158192, 45.943604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.374435, 45.806347, 45.912567>,  <42.261799, 45.595242, 45.893944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.374435, 45.806347, 45.912567>,  <42.562164, 46.158192, 45.943604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374435, 45.806347, 45.912567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045686, -0.063563, 0.996932,
		-0.881845, 0.471425, -0.010355,
		-0.469321, -0.879612, -0.077590,
		42.233639, 45.542461, 45.889290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899746, 46.209057, 46.303444>,  <42.562164, 46.158192, 45.943604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899746, 46.209057, 46.303444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.017479, 45.826927, 46.292679>,  <42.088120, 45.597649, 46.286221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.017479, 45.826927, 46.292679>,  <41.899746, 46.209057, 46.303444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017479, 45.826927, 46.292679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061485, -0.047033, 0.996999,
		-0.953722, -0.291798, -0.072581,
		0.294336, -0.955323, -0.026915,
		42.105782, 45.540329, 46.284603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666321, 46.027309, 46.883396>,  <41.899746, 46.209057, 46.303444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666321, 46.027309, 46.883396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.847588, 45.678146, 46.811085>,  <41.956348, 45.468651, 46.767696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.847588, 45.678146, 46.811085>,  <41.666321, 46.027309, 46.883396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847588, 45.678146, 46.811085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079747, -0.241680, 0.967074,
		-0.887854, -0.423825, -0.179132,
		0.453162, -0.872905, -0.180778,
		41.983536, 45.416275, 46.756851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293797, 45.413578, 47.211224>,  <41.666321, 46.027309, 46.883396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293797, 45.413578, 47.211224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.664612, 45.271885, 47.162037>,  <41.887100, 45.186871, 47.132523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.664612, 45.271885, 47.162037>,  <41.293797, 45.413578, 47.211224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664612, 45.271885, 47.162037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031680, -0.400771, 0.915631,
		-0.373617, -0.844932, -0.382753,
		0.927042, -0.354221, -0.122968,
		41.942722, 45.165615, 47.125145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214870, 44.734947, 47.384460>,  <41.293797, 45.413578, 47.211224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214870, 44.734947, 47.384460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.605858, 44.799519, 47.438858>,  <41.840450, 44.838261, 47.471497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.605858, 44.799519, 47.438858>,  <41.214870, 44.734947, 47.384460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605858, 44.799519, 47.438858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052089, -0.439861, 0.896554,
		0.204547, -0.883438, -0.421543,
		0.977470, 0.161430, 0.135989,
		41.899097, 44.847946, 47.479656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520504, 44.179260, 47.767555>,  <41.214870, 44.734947, 47.384460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520504, 44.179260, 47.767555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.808311, 44.454353, 47.806171>,  <41.980995, 44.619411, 47.829342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.808311, 44.454353, 47.806171>,  <41.520504, 44.179260, 47.767555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808311, 44.454353, 47.806171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098524, -0.238684, 0.966086,
		0.687453, -0.685602, -0.239495,
		0.719514, 0.687736, 0.096536,
		42.024166, 44.660675, 47.835133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104191, 43.897240, 47.963005>,  <41.520504, 44.179260, 47.767555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104191, 43.897240, 47.963005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.164154, 44.278080, 48.069611>,  <42.200130, 44.506584, 48.133572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.164154, 44.278080, 48.069611>,  <42.104191, 43.897240, 47.963005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164154, 44.278080, 48.069611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105891, -0.283469, 0.953117,
		0.983013, -0.114659, -0.143313,
		0.149908, 0.952102, 0.266512,
		42.209126, 44.563709, 48.149563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593292, 43.871117, 48.435715>,  <42.104191, 43.897240, 47.963005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593292, 43.871117, 48.435715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.422958, 44.226837, 48.502419>,  <42.320759, 44.440269, 48.542439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.422958, 44.226837, 48.502419>,  <42.593292, 43.871117, 48.435715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422958, 44.226837, 48.502419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169475, -0.259434, 0.950774,
		0.888788, 0.376610, 0.261190,
		-0.425833, 0.889302, 0.166756,
		42.295208, 44.493629, 48.552444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792564, 44.153069, 49.121689>,  <42.593292, 43.871117, 48.435715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792564, 44.153069, 49.121689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.458168, 44.359882, 49.048149>,  <42.257530, 44.483971, 49.004025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.458168, 44.359882, 49.048149>,  <42.792564, 44.153069, 49.121689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458168, 44.359882, 49.048149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257913, -0.074488, 0.963292,
		0.484363, 0.852716, 0.195622,
		-0.835986, 0.517036, -0.183847,
		42.207371, 44.514992, 48.992996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781399, 44.588943, 49.686111>,  <42.792564, 44.153069, 49.121689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781399, 44.588943, 49.686111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.406555, 44.557728, 49.550034>,  <42.181648, 44.538998, 49.468384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.406555, 44.557728, 49.550034>,  <42.781399, 44.588943, 49.686111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406555, 44.557728, 49.550034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339804, -0.018703, 0.940310,
		-0.079742, 0.996775, -0.008990,
		-0.937110, -0.078037, -0.340200,
		42.125423, 44.534317, 49.447975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437614, 45.137981, 49.979485>,  <42.781399, 44.588943, 49.686111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437614, 45.137981, 49.979485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.169571, 44.867180, 49.857750>,  <42.008743, 44.704700, 49.784710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.169571, 44.867180, 49.857750>,  <42.437614, 45.137981, 49.979485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169571, 44.867180, 49.857750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550987, 0.178965, 0.815098,
		-0.497360, 0.713889, -0.492946,
		-0.670110, -0.677004, -0.304333,
		41.968536, 44.664078, 49.766449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862617, 45.544460, 49.923138>,  <42.437614, 45.137981, 49.979485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862617, 45.544460, 49.923138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.742508, 45.163651, 49.946762>,  <41.670441, 44.935165, 49.960938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.742508, 45.163651, 49.946762>,  <41.862617, 45.544460, 49.923138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742508, 45.163651, 49.946762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547212, 0.222645, 0.806839,
		-0.781278, 0.209954, -0.587813,
		-0.300273, -0.952023, 0.059058,
		41.652428, 44.878044, 49.964481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094227, 45.576572, 50.172695>,  <41.862617, 45.544460, 49.923138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094227, 45.576572, 50.172695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.290321, 45.251732, 50.299282>,  <41.407978, 45.056828, 50.375237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.290321, 45.251732, 50.299282>,  <41.094227, 45.576572, 50.172695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290321, 45.251732, 50.299282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218635, 0.236903, 0.946613,
		-0.843721, -0.533256, -0.061416,
		0.490237, -0.812105, 0.316469,
		41.437393, 45.008099, 50.394222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793697, 45.382744, 50.817924>,  <41.094227, 45.576572, 50.172695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793697, 45.382744, 50.817924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.130768, 45.167377, 50.819042>,  <41.333008, 45.038158, 50.819714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.130768, 45.167377, 50.819042>,  <40.793697, 45.382744, 50.817924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130768, 45.167377, 50.819042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021772, 0.039251, 0.998992,
		-0.537985, -0.841763, 0.044799,
		0.842674, -0.538418, 0.002790,
		41.383572, 45.005852, 50.819878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656204, 44.680016, 51.143375>,  <40.793697, 45.382744, 50.817924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656204, 44.680016, 51.143375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.042641, 44.768360, 51.196869>,  <41.274502, 44.821365, 51.228966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.042641, 44.768360, 51.196869>,  <40.656204, 44.680016, 51.143375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042641, 44.768360, 51.196869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111606, -0.109866, 0.987661,
		0.232829, -0.969097, -0.081491,
		0.966092, 0.220861, 0.133737,
		41.332470, 44.834618, 51.236992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801170, 44.284569, 51.675121>,  <40.656204, 44.680016, 51.143375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801170, 44.284569, 51.675121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.128815, 44.514015, 51.673065>,  <41.325401, 44.651684, 51.671833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.128815, 44.514015, 51.673065>,  <40.801170, 44.284569, 51.675121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128815, 44.514015, 51.673065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027891, 0.048776, 0.998420,
		0.572959, -0.817672, 0.055952,
		0.819110, 0.573614, -0.005142,
		41.374546, 44.686100, 51.671524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281563, 43.902679, 52.077206>,  <40.801170, 44.284569, 51.675121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281563, 43.902679, 52.077206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.356468, 44.293991, 52.041656>,  <41.401413, 44.528778, 52.020329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.356468, 44.293991, 52.041656>,  <41.281563, 43.902679, 52.077206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356468, 44.293991, 52.041656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290431, 0.141567, 0.946366,
		0.938393, -0.151411, 0.310634,
		0.187266, 0.978281, -0.088872,
		41.412647, 44.587475, 52.014996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711849, 43.990002, 52.636105>,  <41.281563, 43.902679, 52.077206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711849, 43.990002, 52.636105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.586906, 44.356308, 52.535061>,  <41.511940, 44.576092, 52.474434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.586906, 44.356308, 52.535061>,  <41.711849, 43.990002, 52.636105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586906, 44.356308, 52.535061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238918, 0.181636, 0.953901,
		0.919430, 0.358311, 0.162057,
		-0.312358, 0.915763, -0.252608,
		41.493198, 44.631039, 52.459278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027496, 44.502377, 53.130894>,  <41.711849, 43.990002, 52.636105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027496, 44.502377, 53.130894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.703285, 44.671684, 52.968964>,  <41.508759, 44.773270, 52.871807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.703285, 44.671684, 52.968964>,  <42.027496, 44.502377, 53.130894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703285, 44.671684, 52.968964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353734, 0.197121, 0.914339,
		0.466812, 0.884300, -0.010048,
		-0.810530, 0.423270, -0.404825,
		41.460125, 44.798664, 52.847515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831509, 45.062408, 53.451214>,  <42.027496, 44.502377, 53.130894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831509, 45.062408, 53.451214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.481117, 44.968166, 53.282856>,  <41.270882, 44.911621, 53.181843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.481117, 44.968166, 53.282856>,  <41.831509, 45.062408, 53.451214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481117, 44.968166, 53.282856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476260, 0.284225, 0.832101,
		-0.076421, 0.929357, -0.361185,
		-0.875977, -0.235608, -0.420895,
		41.218323, 44.897484, 53.156586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380398, 45.546398, 53.672508>,  <41.831509, 45.062408, 53.451214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380398, 45.546398, 53.672508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.134804, 45.254532, 53.552097>,  <40.987446, 45.079414, 53.479851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.134804, 45.254532, 53.552097>,  <41.380398, 45.546398, 53.672508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134804, 45.254532, 53.552097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641057, 0.238465, 0.729507,
		-0.460508, 0.640882, -0.614168,
		-0.613985, -0.729661, -0.301027,
		40.950607, 45.035633, 53.461788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620144, 45.795296, 53.699852>,  <41.380398, 45.546398, 53.672508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620144, 45.795296, 53.699852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.588081, 45.396732, 53.688961>,  <40.568844, 45.157593, 53.682426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.588081, 45.396732, 53.688961>,  <40.620144, 45.795296, 53.699852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588081, 45.396732, 53.688961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767376, 0.044258, 0.639668,
		-0.636167, 0.072167, -0.768169,
		-0.080160, -0.996410, -0.027224,
		40.564034, 45.097809, 53.680794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978367, 45.612103, 53.563717>,  <40.620144, 45.795296, 53.699852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978367, 45.612103, 53.563717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.160225, 45.321629, 53.770004>,  <40.269341, 45.147346, 53.893776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.160225, 45.321629, 53.770004>,  <39.978367, 45.612103, 53.563717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160225, 45.321629, 53.770004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687975, 0.081422, 0.721153,
		-0.565678, -0.682665, -0.462577,
		0.454642, -0.726181, 0.515715,
		40.296616, 45.103775, 53.924717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412926, 45.147594, 53.755127>,  <39.978367, 45.612103, 53.563717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412926, 45.147594, 53.755127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.707016, 45.045818, 54.006428>,  <39.883469, 44.984753, 54.157207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.707016, 45.045818, 54.006428>,  <39.412926, 45.147594, 53.755127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707016, 45.045818, 54.006428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602800, 0.178409, 0.777691,
		-0.309960, -0.950490, -0.022204,
		0.735226, -0.254437, 0.628255,
		39.927586, 44.969486, 54.194904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119015, 44.638336, 54.187016>,  <39.412926, 45.147594, 53.755127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119015, 44.638336, 54.187016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.431206, 44.790245, 54.385658>,  <39.618523, 44.881390, 54.504845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.431206, 44.790245, 54.385658>,  <39.119015, 44.638336, 54.187016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431206, 44.790245, 54.385658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577841, 0.135001, 0.804907,
		0.238639, -0.915177, 0.324813,
		0.780482, 0.379772, 0.496610,
		39.665352, 44.904179, 54.534641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014130, 44.367706, 54.808586>,  <39.119015, 44.638336, 54.187016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014130, 44.367706, 54.808586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.282860, 44.659218, 54.861542>,  <39.444099, 44.834126, 54.893314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.282860, 44.659218, 54.861542>,  <39.014130, 44.367706, 54.808586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282860, 44.659218, 54.861542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570346, 0.394943, 0.720227,
		0.472602, -0.559374, 0.680990,
		0.671828, 0.728781, 0.132386,
		39.484409, 44.877850, 54.901257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337845, 44.276596, 55.484417>,  <39.014130, 44.367706, 54.808586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337845, 44.276596, 55.484417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374420, 44.656315, 55.364105>,  <39.396366, 44.884148, 55.291920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374420, 44.656315, 55.364105>,  <39.337845, 44.276596, 55.484417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374420, 44.656315, 55.364105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484522, 0.306291, 0.819405,
		0.869986, 0.070806, 0.487965,
		0.091440, 0.949301, -0.300776,
		39.401852, 44.941105, 55.273872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516510, 44.531715, 56.032677>,  <39.337845, 44.276596, 55.484417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516510, 44.531715, 56.032677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374794, 44.839882, 55.820667>,  <39.289764, 45.024784, 55.693462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374794, 44.839882, 55.820667>,  <39.516510, 44.531715, 56.032677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374794, 44.839882, 55.820667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517389, 0.310642, 0.797377,
		0.778964, 0.556737, 0.288548,
		-0.354294, 0.770419, -0.530028,
		39.268505, 45.071007, 55.661659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312660, 44.960091, 56.515858>,  <39.516510, 44.531715, 56.032677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312660, 44.960091, 56.515858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.139565, 45.130497, 56.198055>,  <39.035706, 45.232742, 56.007374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.139565, 45.130497, 56.198055>,  <39.312660, 44.960091, 56.515858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139565, 45.130497, 56.198055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786160, 0.253014, 0.563858,
		0.441236, 0.868615, 0.225431,
		-0.432739, 0.426019, -0.794509,
		39.009743, 45.258305, 55.959702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131920, 45.620667, 56.682072>,  <39.312660, 44.960091, 56.515858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131920, 45.620667, 56.682072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901443, 45.513142, 56.373337>,  <38.763157, 45.448624, 56.188095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901443, 45.513142, 56.373337>,  <39.131920, 45.620667, 56.682072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901443, 45.513142, 56.373337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808947, 0.322350, 0.491625,
		0.116647, 0.907650, -0.403195,
		-0.576193, -0.268817, -0.771842,
		38.728584, 45.432495, 56.141785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735081, 46.246761, 56.407066>,  <39.131920, 45.620667, 56.682072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735081, 46.246761, 56.407066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541832, 45.900932, 56.351761>,  <38.425884, 45.693436, 56.318577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541832, 45.900932, 56.351761>,  <38.735081, 46.246761, 56.407066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541832, 45.900932, 56.351761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801580, 0.373221, 0.467092,
		-0.352229, 0.336492, -0.873331,
		-0.483119, -0.864568, -0.138266,
		38.396896, 45.641563, 56.310280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
