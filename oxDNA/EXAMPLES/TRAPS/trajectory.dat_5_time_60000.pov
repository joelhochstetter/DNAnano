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
	<36.192963, 53.133347, 49.196281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311039, 53.363281, 49.501549>,  <36.381886, 53.501240, 49.684711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311039, 53.363281, 49.501549>,  <36.192963, 53.133347, 49.196281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311039, 53.363281, 49.501549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433437, 0.631275, -0.643137,
		-0.851468, 0.520632, -0.062811,
		0.295186, 0.574835, 0.763171,
		36.399593, 53.535732, 49.730499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064381, 53.850082, 49.075531>,  <36.192963, 53.133347, 49.196281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064381, 53.850082, 49.075531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404472, 53.794308, 49.278572>,  <36.608528, 53.760845, 49.400398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404472, 53.794308, 49.278572>,  <36.064381, 53.850082, 49.075531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404472, 53.794308, 49.278572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499315, 0.518974, -0.693795,
		-0.166695, 0.843341, 0.510870,
		0.850234, -0.139433, 0.507603,
		36.659542, 53.752480, 49.430855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386356, 54.550884, 49.201214>,  <36.064381, 53.850082, 49.075531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386356, 54.550884, 49.201214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672371, 54.271263, 49.203922>,  <36.843979, 54.103489, 49.205547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672371, 54.271263, 49.203922>,  <36.386356, 54.550884, 49.201214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672371, 54.271263, 49.203922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558212, 0.565096, -0.607509,
		0.420856, 0.438170, 0.794284,
		0.715039, -0.699052, 0.006768,
		36.886883, 54.061546, 49.205952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012054, 54.838287, 48.901649>,  <36.386356, 54.550884, 49.201214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012054, 54.838287, 48.901649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156277, 54.466152, 48.928402>,  <37.242809, 54.242870, 48.944454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156277, 54.466152, 48.928402>,  <37.012054, 54.838287, 48.901649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156277, 54.466152, 48.928402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506509, 0.135077, -0.851588,
		0.783228, 0.340926, 0.519926,
		0.360559, -0.930335, 0.066886,
		37.264442, 54.187050, 48.948467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734314, 54.821011, 49.032875>,  <37.012054, 54.838287, 48.901649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734314, 54.821011, 49.032875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593410, 54.516109, 48.815662>,  <37.508869, 54.333168, 48.685333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593410, 54.516109, 48.815662>,  <37.734314, 54.821011, 49.032875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593410, 54.516109, 48.815662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449835, 0.370909, -0.812450,
		0.820709, -0.530465, 0.212234,
		-0.352257, -0.762255, -0.543031,
		37.487732, 54.287434, 48.652752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337696, 54.460964, 48.665546>,  <37.734314, 54.821011, 49.032875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337696, 54.460964, 48.665546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981731, 54.454258, 48.483215>,  <37.768154, 54.450233, 48.373817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981731, 54.454258, 48.483215>,  <38.337696, 54.460964, 48.665546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981731, 54.454258, 48.483215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390204, 0.489560, -0.779790,
		0.236227, -0.871808, -0.429123,
		-0.889909, -0.016762, -0.455831,
		37.714760, 54.449230, 48.346466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257263, 54.164272, 47.980930>,  <38.337696, 54.460964, 48.665546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257263, 54.164272, 47.980930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013691, 54.473549, 48.051788>,  <37.867546, 54.659115, 48.094303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013691, 54.473549, 48.051788>,  <38.257263, 54.164272, 47.980930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013691, 54.473549, 48.051788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454117, 0.522914, -0.721345,
		-0.650367, -0.358806, -0.669537,
		-0.608933, 0.773188, 0.177146,
		37.831013, 54.705505, 48.104931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797024, 54.310947, 47.440029>,  <38.257263, 54.164272, 47.980930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797024, 54.310947, 47.440029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906086, 54.633698, 47.649643>,  <37.971523, 54.827347, 47.775410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906086, 54.633698, 47.649643>,  <37.797024, 54.310947, 47.440029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906086, 54.633698, 47.649643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625523, 0.265175, -0.733760,
		-0.731013, 0.527860, -0.432417,
		0.272656, 0.806875, 0.524035,
		37.987885, 54.875759, 47.806854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797489, 54.954704, 47.000381>,  <37.797024, 54.310947, 47.440029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797489, 54.954704, 47.000381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064037, 54.969021, 47.298286>,  <38.223969, 54.977612, 47.477028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064037, 54.969021, 47.298286>,  <37.797489, 54.954704, 47.000381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064037, 54.969021, 47.298286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735567, 0.131902, -0.664487,
		-0.122019, 0.990616, 0.061569,
		0.666373, 0.035792, 0.744759,
		38.263950, 54.979759, 47.521713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377804, 55.109184, 46.598522>,  <37.797489, 54.954704, 47.000381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377804, 55.109184, 46.598522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530441, 55.044529, 46.962555>,  <38.622025, 55.005733, 47.180977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530441, 55.044529, 46.962555>,  <38.377804, 55.109184, 46.598522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530441, 55.044529, 46.962555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924062, 0.090387, -0.371401,
		-0.022227, 0.982702, 0.183857,
		0.381595, -0.161640, 0.910087,
		38.644920, 54.996037, 47.235580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010483, 55.369488, 46.577171>,  <38.377804, 55.109184, 46.598522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010483, 55.369488, 46.577171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051064, 55.154167, 46.911819>,  <39.075413, 55.024975, 47.112610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051064, 55.154167, 46.911819>,  <39.010483, 55.369488, 46.577171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051064, 55.154167, 46.911819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993888, 0.018042, -0.108911,
		0.043533, 0.842557, 0.536845,
		0.101449, -0.538305, 0.836622,
		39.081497, 54.992676, 47.162807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511810, 55.627247, 47.116173>,  <39.010483, 55.369488, 46.577171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511810, 55.627247, 47.116173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508335, 55.241074, 47.220375>,  <39.506248, 55.009369, 47.282894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508335, 55.241074, 47.220375>,  <39.511810, 55.627247, 47.116173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508335, 55.241074, 47.220375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962494, 0.062566, 0.263989,
		-0.271162, 0.253026, 0.928681,
		-0.008692, -0.965434, 0.260502,
		39.505726, 54.951443, 47.298527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645794, 55.488468, 47.865356>,  <39.511810, 55.627247, 47.116173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645794, 55.488468, 47.865356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741169, 55.135670, 47.702766>,  <39.798393, 54.923988, 47.605213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741169, 55.135670, 47.702766>,  <39.645794, 55.488468, 47.865356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741169, 55.135670, 47.702766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831468, -0.030869, 0.554714,
		-0.501805, -0.470238, 0.725994,
		0.238437, -0.882000, -0.406478,
		39.812698, 54.871071, 47.580822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598469, 54.803802, 48.252827>,  <39.645794, 55.488468, 47.865356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598469, 54.803802, 48.252827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894386, 54.828548, 47.984833>,  <40.071938, 54.843395, 47.824036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894386, 54.828548, 47.984833>,  <39.598469, 54.803802, 48.252827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894386, 54.828548, 47.984833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671661, -0.009109, 0.740802,
		0.039728, -0.998043, -0.048292,
		0.739792, 0.061866, -0.669985,
		40.116325, 54.847107, 47.783836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133667, 54.355343, 48.571373>,  <39.598469, 54.803802, 48.252827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133667, 54.355343, 48.571373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250488, 54.624359, 48.299377>,  <40.320583, 54.785770, 48.136181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250488, 54.624359, 48.299377>,  <40.133667, 54.355343, 48.571373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250488, 54.624359, 48.299377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809245, 0.205158, 0.550483,
		0.509730, -0.711051, -0.484336,
		0.292056, 0.672545, -0.679990,
		40.338104, 54.826122, 48.095379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975475, 54.334167, 48.436398>,  <40.133667, 54.355343, 48.571373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975475, 54.334167, 48.436398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651810, 54.137115, 48.308289>,  <40.457611, 54.018887, 48.231422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651810, 54.137115, 48.308289>,  <40.975475, 54.334167, 48.436398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651810, 54.137115, 48.308289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077845, 0.630133, -0.772575,
		0.582401, -0.600210, -0.548231,
		-0.809166, -0.492626, -0.320267,
		40.409061, 53.989326, 48.212208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348175, 54.057430, 48.900143>,  <40.975475, 54.334167, 48.436398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348175, 54.057430, 48.900143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659988, 53.819931, 48.820351>,  <41.847076, 53.677429, 48.772476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659988, 53.819931, 48.820351>,  <41.348175, 54.057430, 48.900143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659988, 53.819931, 48.820351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528156, 0.451871, 0.718933,
		-0.336728, -0.665787, 0.665840,
		0.779529, -0.593752, -0.199482,
		41.893848, 53.641804, 48.760506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595520, 53.645660, 49.487232>,  <41.348175, 54.057430, 48.900143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595520, 53.645660, 49.487232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907665, 53.669537, 49.238243>,  <42.094952, 53.683865, 49.088848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907665, 53.669537, 49.238243>,  <41.595520, 53.645660, 49.487232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907665, 53.669537, 49.238243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570129, 0.341005, 0.747441,
		0.256884, -0.938164, 0.232074,
		0.780361, 0.059693, -0.622474,
		42.141773, 53.687447, 49.051502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228302, 53.453503, 49.863438>,  <41.595520, 53.645660, 49.487232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228302, 53.453503, 49.863438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309116, 53.723549, 49.579632>,  <42.357605, 53.885574, 49.409348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309116, 53.723549, 49.579632>,  <42.228302, 53.453503, 49.863438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309116, 53.723549, 49.579632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653414, 0.446728, 0.611133,
		0.729542, -0.587075, -0.350873,
		0.202036, 0.675113, -0.709510,
		42.369728, 53.926083, 49.366779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320343, 54.026268, 50.255283>,  <42.228302, 53.453503, 49.863438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320343, 54.026268, 50.255283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056259, 53.914547, 50.534172>,  <41.897808, 53.847515, 50.701504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056259, 53.914547, 50.534172>,  <42.320343, 54.026268, 50.255283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056259, 53.914547, 50.534172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702412, 0.099130, 0.704834,
		-0.265975, 0.955073, 0.130737,
		-0.660208, -0.279300, 0.697221,
		41.858196, 53.830757, 50.743340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182415, 54.542332, 50.810089>,  <42.320343, 54.026268, 50.255283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182415, 54.542332, 50.810089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161633, 54.155071, 50.908051>,  <42.149162, 53.922714, 50.966827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161633, 54.155071, 50.908051>,  <42.182415, 54.542332, 50.810089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161633, 54.155071, 50.908051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725654, 0.131881, 0.675302,
		-0.686095, 0.212797, 0.695694,
		-0.051953, -0.968155, 0.244900,
		42.146046, 53.864624, 50.981522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786724, 54.438499, 51.416367>,  <42.182415, 54.542332, 50.810089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786724, 54.438499, 51.416367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126911, 54.240459, 51.345295>,  <42.331024, 54.121635, 51.302650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126911, 54.240459, 51.345295>,  <41.786724, 54.438499, 51.416367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126911, 54.240459, 51.345295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413879, 0.421348, 0.806951,
		-0.324656, -0.759829, 0.563257,
		0.850472, -0.495102, -0.177683,
		42.382053, 54.091930, 51.291988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987625, 54.025455, 52.018929>,  <41.786724, 54.438499, 51.416367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987625, 54.025455, 52.018929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318996, 54.105328, 51.809608>,  <42.517818, 54.153252, 51.684017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318996, 54.105328, 51.809608>,  <41.987625, 54.025455, 52.018929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318996, 54.105328, 51.809608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398123, 0.447238, 0.800922,
		0.393967, -0.871840, 0.291006,
		0.828425, 0.199681, -0.523298,
		42.567524, 54.165230, 51.652618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608242, 54.039516, 52.438496>,  <41.987625, 54.025455, 52.018929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608242, 54.039516, 52.438496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735767, 54.295189, 52.158554>,  <42.812283, 54.448593, 51.990589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735767, 54.295189, 52.158554>,  <42.608242, 54.039516, 52.438496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735767, 54.295189, 52.158554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659025, 0.381197, 0.648364,
		0.681206, -0.667934, -0.299704,
		0.318818, 0.639182, -0.699858,
		42.831413, 54.486942, 51.948597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223343, 53.951511, 52.278461>,  <42.608242, 54.039516, 52.438496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223343, 53.951511, 52.278461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180920, 54.337696, 52.183273>,  <43.155468, 54.569408, 52.126160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180920, 54.337696, 52.183273>,  <43.223343, 53.951511, 52.278461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180920, 54.337696, 52.183273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724578, 0.238929, 0.646451,
		0.680984, -0.103866, -0.724895,
		-0.106054, 0.965466, -0.237966,
		43.149105, 54.627335, 52.111885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916870, 54.201599, 52.022614>,  <43.223343, 53.951511, 52.278461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916870, 54.201599, 52.022614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703201, 54.513847, 52.152405>,  <43.575001, 54.701195, 52.230282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703201, 54.513847, 52.152405>,  <43.916870, 54.201599, 52.022614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703201, 54.513847, 52.152405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762118, 0.278581, 0.584439,
		0.365831, 0.559486, -0.743736,
		-0.534175, 0.780621, 0.324481,
		43.542950, 54.748035, 52.249748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333652, 54.695961, 51.746338>,  <43.916870, 54.201599, 52.022614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333652, 54.695961, 51.746338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120789, 54.768032, 52.077236>,  <43.993069, 54.811275, 52.275776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120789, 54.768032, 52.077236>,  <44.333652, 54.695961, 51.746338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120789, 54.768032, 52.077236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845191, 0.170268, 0.506618,
		-0.049575, 0.968786, -0.242891,
		-0.532161, 0.180174, 0.827250,
		43.961140, 54.822083, 52.325413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498043, 55.386559, 51.908287>,  <44.333652, 54.695961, 51.746338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498043, 55.386559, 51.908287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417645, 55.164398, 52.231060>,  <44.369404, 55.031101, 52.424725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417645, 55.164398, 52.231060>,  <44.498043, 55.386559, 51.908287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417645, 55.164398, 52.231060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922512, 0.169761, 0.346632,
		-0.329504, 0.814072, 0.478241,
		-0.200996, -0.555399, 0.806928,
		44.357346, 54.997780, 52.473137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975357, 55.657894, 52.416435>,  <44.498043, 55.386559, 51.908287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975357, 55.657894, 52.416435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861828, 55.298969, 52.551659>,  <44.793709, 55.083614, 52.632793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861828, 55.298969, 52.551659>,  <44.975357, 55.657894, 52.416435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861828, 55.298969, 52.551659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921598, -0.157924, 0.354565,
		-0.264767, 0.412187, 0.871780,
		-0.283822, -0.897308, 0.338058,
		44.776680, 55.029778, 52.653076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114082, 55.628361, 53.168243>,  <44.975357, 55.657894, 52.416435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114082, 55.628361, 53.168243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132523, 55.280323, 52.971954>,  <45.143585, 55.071499, 52.854179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132523, 55.280323, 52.971954>,  <45.114082, 55.628361, 53.168243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132523, 55.280323, 52.971954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984066, -0.044891, 0.172042,
		-0.171722, -0.490835, 0.854162,
		0.046100, -0.870095, -0.490723,
		45.146351, 55.019295, 52.824738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377640, 55.111530, 53.521957>,  <45.114082, 55.628361, 53.168243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377640, 55.111530, 53.521957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455963, 54.990498, 53.148842>,  <45.502956, 54.917877, 52.924973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455963, 54.990498, 53.148842>,  <45.377640, 55.111530, 53.521957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455963, 54.990498, 53.148842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957619, -0.145909, 0.248348,
		-0.211250, -0.941887, 0.261193,
		0.195805, -0.302587, -0.932792,
		45.514706, 54.899723, 52.869003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785709, 54.480690, 53.427902>,  <45.377640, 55.111530, 53.521957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785709, 54.480690, 53.427902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857109, 54.716801, 53.113014>,  <45.899948, 54.858467, 52.924080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857109, 54.716801, 53.113014>,  <45.785709, 54.480690, 53.427902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857109, 54.716801, 53.113014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971326, 0.021995, 0.236734,
		0.157053, -0.806903, -0.569423,
		0.178497, 0.590275, -0.787220,
		45.910660, 54.893883, 52.876850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279442, 54.166538, 53.089207>,  <45.785709, 54.480690, 53.427902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279442, 54.166538, 53.089207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295086, 54.562607, 53.035496>,  <46.304474, 54.800247, 53.003269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295086, 54.562607, 53.035496>,  <46.279442, 54.166538, 53.089207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295086, 54.562607, 53.035496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892588, 0.025787, 0.450135,
		0.449174, -0.137456, -0.882807,
		0.039109, 0.990172, -0.134275,
		46.306820, 54.859657, 52.995213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879414, 54.479698, 52.802002>,  <46.279442, 54.166538, 53.089207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879414, 54.479698, 52.802002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780296, 54.786507, 53.038742>,  <46.720825, 54.970592, 53.180786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.780296, 54.786507, 53.038742>,  <46.879414, 54.479698, 52.802002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.780296, 54.786507, 53.038742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856253, -0.112415, 0.504176,
		0.453244, 0.631702, -0.628906,
		-0.247791, 0.767018, 0.591848,
		46.705959, 55.016613, 53.216297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.387810, 54.927025, 52.857239>,  <46.879414, 54.479698, 52.802002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.387810, 54.927025, 52.857239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177822, 54.976204, 53.194118>,  <47.051830, 55.005711, 53.396244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177822, 54.976204, 53.194118>,  <47.387810, 54.927025, 52.857239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177822, 54.976204, 53.194118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838065, -0.097989, 0.536698,
		0.148512, 0.987563, -0.051598,
		-0.524968, 0.122949, 0.842195,
		47.020332, 55.013088, 53.446777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.751686, 55.304291, 53.235012>,  <47.387810, 54.927025, 52.857239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.751686, 55.304291, 53.235012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523552, 55.152382, 53.526352>,  <47.386673, 55.061237, 53.701157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523552, 55.152382, 53.526352>,  <47.751686, 55.304291, 53.235012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.523552, 55.152382, 53.526352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804117, -0.077138, 0.589445,
		-0.167672, 0.921858, 0.349376,
		-0.570335, -0.379772, 0.728348,
		47.352451, 55.038452, 53.744858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.765926, 55.755066, 53.891766>,  <47.751686, 55.304291, 53.235012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.765926, 55.755066, 53.891766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721733, 55.361046, 53.944633>,  <47.695217, 55.124634, 53.976353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721733, 55.361046, 53.944633>,  <47.765926, 55.755066, 53.891766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.721733, 55.361046, 53.944633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825869, -0.017004, 0.563605,
		-0.552933, 0.171421, 0.815402,
		-0.110479, -0.985051, 0.132170,
		47.688591, 55.065529, 53.984283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652176, 55.582699, 54.632626>,  <47.765926, 55.755066, 53.891766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652176, 55.582699, 54.632626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844196, 55.302338, 54.421616>,  <47.959408, 55.134121, 54.295010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844196, 55.302338, 54.421616>,  <47.652176, 55.582699, 54.632626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.844196, 55.302338, 54.421616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793251, 0.090058, 0.602198,
		-0.374577, -0.707544, 0.599227,
		0.480047, -0.700907, -0.527526,
		47.988209, 55.092064, 54.263359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.134575, 55.112274, 55.041290>,  <47.652176, 55.582699, 54.632626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.134575, 55.112274, 55.041290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.275589, 55.149052, 54.668781>,  <48.360199, 55.171120, 54.445278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.275589, 55.149052, 54.668781>,  <48.134575, 55.112274, 55.041290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.275589, 55.149052, 54.668781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916625, 0.166490, 0.363428,
		0.188464, -0.981747, -0.025589,
		0.352534, 0.091949, -0.931271,
		48.381348, 55.176636, 54.389400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.567272, 54.543907, 55.084015>,  <48.134575, 55.112274, 55.041290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.567272, 54.543907, 55.084015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.709370, 54.791664, 54.803970>,  <48.794628, 54.940319, 54.635944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.709370, 54.791664, 54.803970>,  <48.567272, 54.543907, 55.084015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.709370, 54.791664, 54.803970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866306, 0.063211, 0.495499,
		0.351161, -0.782536, -0.514125,
		0.355247, 0.619389, -0.700112,
		48.815945, 54.977482, 54.593937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.221893, 54.257195, 54.810524>,  <48.567272, 54.543907, 55.084015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.221893, 54.257195, 54.810524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.209034, 54.648605, 54.729080>,  <49.201317, 54.883450, 54.680214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.209034, 54.648605, 54.729080>,  <49.221893, 54.257195, 54.810524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.209034, 54.648605, 54.729080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976336, 0.074337, 0.203083,
		0.213857, -0.192258, -0.957759,
		-0.032153, 0.978525, -0.203606,
		49.199387, 54.942162, 54.667999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.835960, 54.435802, 54.353317>,  <49.221893, 54.257195, 54.810524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.835960, 54.435802, 54.353317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.716797, 54.727009, 54.600296>,  <49.645298, 54.901733, 54.748482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.716797, 54.727009, 54.600296>,  <49.835960, 54.435802, 54.353317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.716797, 54.727009, 54.600296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944048, 0.128801, 0.303617,
		0.141511, 0.673349, -0.725656,
		-0.297905, 0.728019, 0.617447,
		49.627426, 54.945415, 54.785530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.708260, 54.440563, 54.331211>,  <49.835960, 54.435802, 54.353317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.708260, 54.440563, 54.331211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.995201, 54.626099, 54.539158>,  <51.167366, 54.737419, 54.663925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.995201, 54.626099, 54.539158>,  <50.708260, 54.440563, 54.331211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.995201, 54.626099, 54.539158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653759, -0.706081, -0.272119,
		0.240845, 0.535070, -0.809749,
		0.717351, 0.463843, 0.519863,
		51.210407, 54.765251, 54.695118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.307579, 54.203972, 54.123573>,  <50.708260, 54.440563, 54.331211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.307579, 54.203972, 54.123573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.509289, 54.390385, 54.414368>,  <51.630314, 54.502232, 54.588844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.509289, 54.390385, 54.414368>,  <51.307579, 54.203972, 54.123573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.509289, 54.390385, 54.414368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815649, -0.533523, -0.223762,
		0.283584, 0.705806, -0.649167,
		0.504278, 0.466036, 0.726989,
		51.660572, 54.530197, 54.632465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.876663, 54.610527, 53.767685>,  <51.307579, 54.203972, 54.123573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.876663, 54.610527, 53.767685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.954456, 54.537716, 54.153233>,  <52.001133, 54.494030, 54.384560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.954456, 54.537716, 54.153233>,  <51.876663, 54.610527, 53.767685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.954456, 54.537716, 54.153233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948429, -0.215862, -0.232132,
		0.250318, 0.959306, 0.130663,
		0.194480, -0.182032, 0.963868,
		52.012802, 54.483105, 54.442394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.450359, 54.977329, 54.023064>,  <51.876663, 54.610527, 53.767685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.450359, 54.977329, 54.023064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.449577, 54.643684, 54.243698>,  <52.449108, 54.443497, 54.376080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.449577, 54.643684, 54.243698>,  <52.450359, 54.977329, 54.023064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.449577, 54.643684, 54.243698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908814, -0.231605, -0.347009,
		0.417196, 0.500610, 0.758510,
		-0.001959, -0.834116, 0.551586,
		52.448990, 54.393448, 54.409176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.078053, 55.030037, 54.313251>,  <52.450359, 54.977329, 54.023064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.078053, 55.030037, 54.313251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.977840, 54.643661, 54.339161>,  <52.917713, 54.411835, 54.354706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.977840, 54.643661, 54.339161>,  <53.078053, 55.030037, 54.313251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.977840, 54.643661, 54.339161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926604, -0.258629, -0.272979,
		0.280433, -0.008370, 0.959837,
		-0.250526, -0.965941, 0.064772,
		52.902683, 54.353878, 54.358593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.679077, 54.714436, 54.247803>,  <53.078053, 55.030037, 54.313251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.679077, 54.714436, 54.247803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.456486, 54.387177, 54.305721>,  <53.322933, 54.190819, 54.340473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.456486, 54.387177, 54.305721>,  <53.679077, 54.714436, 54.247803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.456486, 54.387177, 54.305721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818803, -0.569591, -0.071604,
		0.141057, 0.078713, 0.986868,
		-0.556475, -0.818151, 0.144795,
		53.289543, 54.141731, 54.349159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.896725, 55.305996, 54.632984>,  <53.679077, 54.714436, 54.247803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.896725, 55.305996, 54.632984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.054459, 55.652443, 54.755852>,  <54.149097, 55.860310, 54.829571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.054459, 55.652443, 54.755852>,  <53.896725, 55.305996, 54.632984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.054459, 55.652443, 54.755852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878144, -0.256620, -0.403744,
		-0.270863, 0.428944, -0.861766,
		0.394330, 0.866114, 0.307166,
		54.172756, 55.912277, 54.848000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.103703, 55.785973, 54.045521>,  <53.896725, 55.305996, 54.632984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.103703, 55.785973, 54.045521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.314835, 55.783409, 54.385254>,  <54.441513, 55.781872, 54.589092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.314835, 55.783409, 54.385254>,  <54.103703, 55.785973, 54.045521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.314835, 55.783409, 54.385254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849226, 0.021234, -0.527602,
		-0.014652, 0.999754, 0.016651,
		0.527826, -0.006410, 0.849329,
		54.473183, 55.781487, 54.640053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.701283, 56.380798, 54.007988>,  <54.103703, 55.785973, 54.045521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.701283, 56.380798, 54.007988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.778267, 56.066208, 54.242737>,  <54.824455, 55.877453, 54.383587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.778267, 56.066208, 54.242737>,  <54.701283, 56.380798, 54.007988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.778267, 56.066208, 54.242737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968331, 0.055279, -0.243474,
		0.159046, 0.615141, 0.772208,
		0.192458, -0.786477, 0.586869,
		54.836006, 55.830265, 54.418797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.223156, 56.606941, 54.407227>,  <54.701283, 56.380798, 54.007988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.223156, 56.606941, 54.407227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.243042, 56.207832, 54.389442>,  <55.254974, 55.968369, 54.378773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.243042, 56.207832, 54.389442>,  <55.223156, 56.606941, 54.407227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.243042, 56.207832, 54.389442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976575, 0.057895, -0.207241,
		0.209354, -0.033117, 0.977279,
		0.049716, -0.997773, -0.044462,
		55.257957, 55.908501, 54.376102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.982418, 56.449696, 54.584858>,  <55.223156, 56.606941, 54.407227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.982418, 56.449696, 54.584858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.830544, 56.199535, 54.312180>,  <55.739418, 56.049438, 54.148571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.830544, 56.199535, 54.312180>,  <55.982418, 56.449696, 54.584858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.830544, 56.199535, 54.312180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859749, 0.033531, -0.509614,
		0.341572, -0.779581, 0.524959,
		-0.379683, -0.625403, -0.681697,
		55.716637, 56.011913, 54.107670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.387558, 55.836937, 54.487679>,  <55.982418, 56.449696, 54.584858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.387558, 55.836937, 54.487679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.201965, 55.934006, 54.146896>,  <56.090611, 55.992249, 53.942429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.201965, 55.934006, 54.146896>,  <56.387558, 55.836937, 54.487679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.201965, 55.934006, 54.146896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847983, -0.156485, -0.506396,
		-0.256207, -0.957403, -0.133178,
		-0.463985, 0.242675, -0.851955,
		56.062771, 56.006809, 53.891312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.662045, 55.356667, 55.011120>,  <56.387558, 55.836937, 54.487679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.662045, 55.356667, 55.011120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.926086, 55.617085, 54.861240>,  <57.084511, 55.773335, 54.771313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.926086, 55.617085, 54.861240>,  <56.662045, 55.356667, 55.011120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.926086, 55.617085, 54.861240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746509, -0.624068, 0.230790,
		-0.083583, -0.432062, -0.897962,
		0.660105, 0.651047, -0.374699,
		57.124119, 55.812397, 54.748829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.106613, 55.027740, 54.467628>,  <56.662045, 55.356667, 55.011120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.106613, 55.027740, 54.467628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.307068, 55.300964, 54.680153>,  <57.427341, 55.464897, 54.807667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.307068, 55.300964, 54.680153>,  <57.106613, 55.027740, 54.467628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.307068, 55.300964, 54.680153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635713, -0.707158, 0.309511,
		0.587136, 0.182655, -0.788612,
		0.501140, 0.683056, 0.531314,
		57.457409, 55.505882, 54.839546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.803005, 55.183800, 54.305412>,  <57.106613, 55.027740, 54.467628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.803005, 55.183800, 54.305412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.803070, 55.253876, 54.699226>,  <57.803108, 55.295921, 54.935516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.803070, 55.253876, 54.699226>,  <57.803005, 55.183800, 54.305412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.803070, 55.253876, 54.699226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738892, -0.663424, 0.117932,
		0.673824, 0.727446, -0.129550,
		0.000158, 0.175189, 0.984535,
		57.803116, 55.306431, 54.994587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.519566, 54.961433, 54.595150>,  <57.803005, 55.183800, 54.305412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.519566, 54.961433, 54.595150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.364243, 55.105515, 54.934437>,  <58.271049, 55.191963, 55.138008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.364243, 55.105515, 54.934437>,  <58.519566, 54.961433, 54.595150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.364243, 55.105515, 54.934437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758055, -0.398525, 0.516265,
		0.523995, 0.843466, -0.118300,
		-0.388307, 0.360198, 0.848219,
		58.247749, 55.213573, 55.188904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.917915, 55.609184, 54.894897>,  <58.519566, 54.961433, 54.595150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.917915, 55.609184, 54.894897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.759262, 55.308815, 55.106102>,  <58.664070, 55.128593, 55.232822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.759262, 55.308815, 55.106102>,  <58.917915, 55.609184, 54.894897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.759262, 55.308815, 55.106102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917619, -0.308274, 0.250884,
		-0.025624, 0.584020, 0.811335,
		-0.396634, -0.750925, 0.528009,
		58.640270, 55.083538, 55.264503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.191811, 55.627346, 55.476349>,  <58.917915, 55.609184, 54.894897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.191811, 55.627346, 55.476349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.066399, 55.248180, 55.453865>,  <58.991150, 55.020679, 55.440376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.066399, 55.248180, 55.453865>,  <59.191811, 55.627346, 55.476349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.066399, 55.248180, 55.453865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927258, -0.318384, 0.197036,
		-0.204669, 0.009659, 0.978784,
		-0.313532, -0.947913, -0.056207,
		58.972340, 54.963806, 55.437004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.465324, 55.250965, 56.013840>,  <59.191811, 55.627346, 55.476349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.465324, 55.250965, 56.013840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.425751, 55.075485, 55.656570>,  <59.402004, 54.970196, 55.442211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.425751, 55.075485, 55.656570>,  <59.465324, 55.250965, 56.013840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.425751, 55.075485, 55.656570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993072, -0.100713, -0.060535,
		-0.063397, -0.892972, 0.445625,
		-0.098936, -0.438700, -0.893171,
		59.396069, 54.943874, 55.388618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.933830, 54.627937, 55.922539>,  <59.465324, 55.250965, 56.013840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.933830, 54.627937, 55.922539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.879295, 54.800529, 55.565834>,  <59.846573, 54.904083, 55.351810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.879295, 54.800529, 55.565834>,  <59.933830, 54.627937, 55.922539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.879295, 54.800529, 55.565834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984395, -0.042086, -0.170868,
		-0.111256, -0.901140, -0.419008,
		-0.136342, 0.431480, -0.891760,
		59.838394, 54.929974, 55.298306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.289146, 54.226471, 55.325325>,  <59.933830, 54.627937, 55.922539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.289146, 54.226471, 55.325325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.268730, 54.621544, 55.266159>,  <60.256481, 54.858589, 55.230659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.268730, 54.621544, 55.266159>,  <60.289146, 54.226471, 55.325325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.268730, 54.621544, 55.266159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998197, 0.055136, 0.023729,
		0.031592, -0.146432, -0.988716,
		-0.051040, 0.987683, -0.147910,
		60.253418, 54.917850, 55.221786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.711769, 54.433308, 54.792294>,  <60.289146, 54.226471, 55.325325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.711769, 54.433308, 54.792294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.666931, 54.745289, 55.038582>,  <60.640026, 54.932476, 55.186356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.666931, 54.745289, 55.038582>,  <60.711769, 54.433308, 54.792294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.666931, 54.745289, 55.038582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985888, 0.009766, 0.167121,
		0.124334, 0.625762, -0.770041,
		-0.112098, 0.779953, 0.615717,
		60.633301, 54.979275, 55.223297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.180878, 55.048241, 54.572166>,  <60.711769, 54.433308, 54.792294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.180878, 55.048241, 54.572166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.096703, 55.042805, 54.963173>,  <61.046200, 55.039543, 55.197777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.096703, 55.042805, 54.963173>,  <61.180878, 55.048241, 54.572166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.096703, 55.042805, 54.963173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977408, -0.023164, 0.210090,
		0.019788, 0.999639, 0.018156,
		-0.210435, -0.013588, 0.977513,
		61.033573, 55.038727, 55.256428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.605309, 55.573517, 54.984936>,  <61.180878, 55.048241, 54.572166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.605309, 55.573517, 54.984936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.482399, 55.248165, 55.182518>,  <61.408653, 55.052952, 55.301067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.482399, 55.248165, 55.182518>,  <61.605309, 55.573517, 54.984936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.482399, 55.248165, 55.182518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947706, -0.214513, 0.236300,
		-0.086242, 0.540734, 0.836761,
		-0.307271, -0.813382, 0.493957,
		61.390217, 55.004150, 55.330704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.718170, 55.516510, 55.649635>,  <61.605309, 55.573517, 54.984936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.718170, 55.516510, 55.649635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.737289, 55.131252, 55.543747>,  <61.748760, 54.900097, 55.480213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.737289, 55.131252, 55.543747>,  <61.718170, 55.516510, 55.649635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.737289, 55.131252, 55.543747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957055, -0.031705, 0.288167,
		-0.285938, -0.267125, 0.920263,
		0.047799, -0.963140, -0.264720,
		61.751629, 54.842312, 55.464333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.822319, 55.024529, 56.257633>,  <61.718170, 55.516510, 55.649635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.822319, 55.024529, 56.257633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.010323, 54.909420, 55.923859>,  <62.123123, 54.840355, 55.723595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.010323, 54.909420, 55.923859>,  <61.822319, 55.024529, 56.257633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.010323, 54.909420, 55.923859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871868, 0.003974, 0.489725,
		-0.137611, -0.957692, 0.252762,
		0.470010, -0.287767, -0.834435,
		62.151325, 54.823090, 55.673527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.928665, 55.460327, 56.883049>,  <61.822319, 55.024529, 56.257633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.928665, 55.460327, 56.883049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.996651, 55.143139, 57.117081>,  <62.037441, 54.952827, 57.257500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.996651, 55.143139, 57.117081>,  <61.928665, 55.460327, 56.883049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.996651, 55.143139, 57.117081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514279, 0.577826, 0.633746,
		-0.840613, 0.193180, 0.506015,
		0.169961, -0.792968, 0.585077,
		62.047638, 54.905247, 57.292603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.666801, 55.505638, 57.587883>,  <61.928665, 55.460327, 56.883049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.666801, 55.505638, 57.587883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.998680, 55.284252, 57.558792>,  <62.197807, 55.151421, 57.541340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.998680, 55.284252, 57.558792>,  <61.666801, 55.505638, 57.587883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.998680, 55.284252, 57.558792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452738, 0.590969, 0.667670,
		-0.326552, -0.586886, 0.740897,
		0.829694, -0.553462, -0.072724,
		62.247589, 55.118214, 57.536976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.860447, 55.279293, 58.359886>,  <61.666801, 55.505638, 57.587883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.860447, 55.279293, 58.359886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.170677, 55.256855, 58.108383>,  <62.356815, 55.243393, 57.957481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.170677, 55.256855, 58.108383>,  <61.860447, 55.279293, 58.359886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.170677, 55.256855, 58.108383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595154, 0.396996, 0.698703,
		0.210423, -0.916105, 0.341284,
		0.775574, -0.056093, -0.628761,
		62.403351, 55.240028, 57.919754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.446175, 54.862946, 58.668507>,  <61.860447, 55.279293, 58.359886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.446175, 54.862946, 58.668507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.539337, 55.142574, 58.398087>,  <62.595234, 55.310352, 58.235832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.539337, 55.142574, 58.398087>,  <62.446175, 54.862946, 58.668507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.539337, 55.142574, 58.398087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537374, 0.486889, 0.688598,
		0.810546, -0.523672, -0.262266,
		0.232905, 0.699075, -0.676054,
		62.609207, 55.352299, 58.195271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.202148, 54.986816, 58.579128>,  <62.446175, 54.862946, 58.668507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.202148, 54.986816, 58.579128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.003960, 55.329792, 58.523560>,  <62.885048, 55.535580, 58.490219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.003960, 55.329792, 58.523560>,  <63.202148, 54.986816, 58.579128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.003960, 55.329792, 58.523560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676702, 0.481303, 0.557155,
		0.544594, 0.182043, -0.818705,
		-0.495471, 0.857443, -0.138925,
		62.855320, 55.587025, 58.481880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.592812, 55.521923, 58.240818>,  <63.202148, 54.986816, 58.579128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.592812, 55.521923, 58.240818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.308838, 55.646805, 58.493332>,  <63.138454, 55.721733, 58.644840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.308838, 55.646805, 58.493332>,  <63.592812, 55.521923, 58.240818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.308838, 55.646805, 58.493332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655384, 0.621009, 0.429906,
		-0.257814, 0.718939, -0.645491,
		-0.709932, 0.312208, 0.631286,
		63.095860, 55.740467, 58.682716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.519485, 56.215530, 58.286724>,  <63.592812, 55.521923, 58.240818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.519485, 56.215530, 58.286724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.461823, 56.035427, 58.639198>,  <63.427223, 55.927364, 58.850681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.461823, 56.035427, 58.639198>,  <63.519485, 56.215530, 58.286724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.461823, 56.035427, 58.639198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738110, 0.544190, 0.398812,
		-0.659100, 0.707904, 0.253889,
		-0.144157, -0.450255, 0.881186,
		63.418575, 55.900352, 58.903553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.389935, 56.959492, 58.108734>,  <63.519485, 56.215530, 58.286724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.389935, 56.959492, 58.108734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.543015, 57.314362, 58.005615>,  <63.634861, 57.527283, 57.943745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.543015, 57.314362, 58.005615>,  <63.389935, 56.959492, 58.108734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.543015, 57.314362, 58.005615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728292, -0.118013, 0.675029,
		0.568448, -0.446081, -0.691288,
		0.382698, 0.887178, -0.257793,
		63.657825, 57.580517, 57.928276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.193329, 57.037266, 58.084816>,  <63.389935, 56.959492, 58.108734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.193329, 57.037266, 58.084816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.022919, 57.389832, 58.166397>,  <63.920670, 57.601372, 58.215343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.022919, 57.389832, 58.166397>,  <64.193329, 57.037266, 58.084816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.022919, 57.389832, 58.166397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781764, 0.245202, 0.573341,
		0.455345, 0.403704, -0.793526,
		-0.426035, 0.881419, 0.203949,
		63.895107, 57.654259, 58.227581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.806564, 57.392338, 58.180504>,  <64.193329, 57.037266, 58.084816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.806564, 57.392338, 58.180504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.524918, 57.624397, 58.344284>,  <64.355934, 57.763634, 58.442551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.524918, 57.624397, 58.344284>,  <64.806564, 57.392338, 58.180504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.524918, 57.624397, 58.344284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691857, 0.430673, 0.579530,
		0.159876, 0.691335, -0.704624,
		-0.704112, 0.580152, 0.409451,
		64.313683, 57.798443, 58.467121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.883568, 58.164433, 58.217220>,  <64.806564, 57.392338, 58.180504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.883568, 58.164433, 58.217220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.797043, 57.995373, 58.569260>,  <64.745125, 57.893936, 58.780483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.797043, 57.995373, 58.569260>,  <64.883568, 58.164433, 58.217220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.797043, 57.995373, 58.569260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799876, 0.440167, 0.407983,
		-0.559825, 0.792223, 0.242854,
		-0.216318, -0.422653, 0.880097,
		64.732147, 57.868576, 58.833290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.001434, 58.620010, 58.728928>,  <64.883568, 58.164433, 58.217220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.001434, 58.620010, 58.728928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.028236, 58.281219, 58.939888>,  <65.044319, 58.077946, 59.066463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.028236, 58.281219, 58.939888>,  <65.001434, 58.620010, 58.728928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.028236, 58.281219, 58.939888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790230, 0.367751, 0.490200,
		-0.609137, 0.383921, 0.693943,
		0.067000, -0.846973, 0.527396,
		65.048340, 58.027126, 59.098106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.859520, 58.627995, 59.482109>,  <65.001434, 58.620010, 58.728928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.859520, 58.627995, 59.482109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.166870, 58.389046, 59.390228>,  <65.351280, 58.245678, 59.335102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.166870, 58.389046, 59.390228>,  <64.859520, 58.627995, 59.482109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.166870, 58.389046, 59.390228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557945, 0.449388, 0.697673,
		-0.313545, -0.664228, 0.678594,
		0.768366, -0.597370, -0.229699,
		65.397377, 58.209835, 59.321320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.127861, 58.639542, 60.172520>,  <64.859520, 58.627995, 59.482109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.127861, 58.639542, 60.172520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.386269, 58.407021, 59.974632>,  <65.541313, 58.267506, 59.855900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.386269, 58.407021, 59.974632>,  <65.127861, 58.639542, 60.172520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.386269, 58.407021, 59.974632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696296, 0.183197, 0.693981,
		-0.312783, -0.792795, 0.523108,
		0.646017, -0.581304, -0.494719,
		65.580070, 58.232628, 59.826218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.496780, 58.279453, 60.686996>,  <65.127861, 58.639542, 60.172520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.496780, 58.279453, 60.686996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.712173, 58.228966, 60.353745>,  <65.841408, 58.198673, 60.153793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.712173, 58.228966, 60.353745>,  <65.496780, 58.279453, 60.686996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.712173, 58.228966, 60.353745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839667, 0.163275, 0.517977,
		0.070650, -0.978473, 0.193904,
		0.538487, -0.126220, -0.833127,
		65.873718, 58.191101, 60.103806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.033043, 57.711197, 60.697533>,  <65.496780, 58.279453, 60.686996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.033043, 57.711197, 60.697533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.156754, 58.018829, 60.473793>,  <66.230980, 58.203407, 60.339550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.156754, 58.018829, 60.473793>,  <66.033043, 57.711197, 60.697533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.156754, 58.018829, 60.473793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673031, 0.238533, 0.700094,
		0.671849, -0.592978, -0.443842,
		0.309269, 0.769077, -0.559351,
		66.249535, 58.249554, 60.305988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.791267, 57.735355, 60.597553>,  <66.033043, 57.711197, 60.697533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.791267, 57.735355, 60.597553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.642082, 58.106308, 60.585869>,  <66.552574, 58.328880, 60.578857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.642082, 58.106308, 60.585869>,  <66.791267, 57.735355, 60.597553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.642082, 58.106308, 60.585869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746820, 0.318734, 0.583669,
		0.550597, 0.195870, -0.811466,
		-0.372965, 0.927385, -0.029214,
		66.530190, 58.384525, 60.577103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.445473, 58.115253, 60.526951>,  <66.791267, 57.735355, 60.597553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.445473, 58.115253, 60.526951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.109344, 58.265953, 60.682861>,  <66.907669, 58.356373, 60.776409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.109344, 58.265953, 60.682861>,  <67.445473, 58.115253, 60.526951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.109344, 58.265953, 60.682861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469030, 0.144784, 0.871234,
		0.271806, 0.914929, -0.298373,
		-0.840317, 0.376752, 0.389776,
		66.857246, 58.378979, 60.799793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.642372, 58.715637, 60.765594>,  <67.445473, 58.115253, 60.526951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.642372, 58.715637, 60.765594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.359673, 58.533409, 60.982101>,  <67.190056, 58.424072, 61.112003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.359673, 58.533409, 60.982101>,  <67.642372, 58.715637, 60.765594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.359673, 58.533409, 60.982101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604985, 0.007432, 0.796202,
		-0.366751, 0.890168, 0.270362,
		-0.706744, -0.455573, 0.541264,
		67.147652, 58.396736, 61.144482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.541847, 59.029797, 61.473080>,  <67.642372, 58.715637, 60.765594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.541847, 59.029797, 61.473080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.495331, 58.636940, 61.413910>,  <67.467422, 58.401226, 61.378410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.495331, 58.636940, 61.413910>,  <67.541847, 59.029797, 61.473080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.495331, 58.636940, 61.413910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663575, -0.187640, 0.724195,
		-0.739016, -0.013941, 0.673543,
		-0.116288, -0.982139, -0.147920,
		67.460442, 58.342297, 61.369534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.259415, 59.235592, 61.134918>,  <67.541847, 59.029797, 61.473080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.259415, 59.235592, 61.134918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.307350, 58.856651, 61.016151>,  <68.336113, 58.629288, 60.944889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.307350, 58.856651, 61.016151>,  <68.259415, 59.235592, 61.134918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.307350, 58.856651, 61.016151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990479, 0.134493, -0.029378,
		0.067765, -0.290571, 0.954451,
		0.119831, -0.947354, -0.296919,
		68.343300, 58.572445, 60.927074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.781143, 58.923927, 61.505756>,  <68.259415, 59.235592, 61.134918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.781143, 58.923927, 61.505756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.763351, 58.738350, 61.151855>,  <68.752678, 58.627003, 60.939514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.763351, 58.738350, 61.151855>,  <68.781143, 58.923927, 61.505756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.763351, 58.738350, 61.151855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967228, 0.201611, -0.154349,
		0.249984, -0.862619, 0.439768,
		-0.044483, -0.463941, -0.884749,
		68.750008, 58.599167, 60.886433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.124321, 58.364750, 61.418289>,  <68.781143, 58.923927, 61.505756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.124321, 58.364750, 61.418289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.115158, 58.549500, 61.063629>,  <69.109665, 58.660351, 60.850834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.115158, 58.549500, 61.063629>,  <69.124321, 58.364750, 61.418289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.115158, 58.549500, 61.063629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989102, 0.139489, 0.047117,
		0.145440, -0.875907, -0.460037,
		-0.022900, 0.461877, -0.886648,
		69.108292, 58.688061, 60.797634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.601662, 58.032509, 61.040298>,  <69.124321, 58.364750, 61.418289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.601662, 58.032509, 61.040298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.574013, 58.389835, 60.862663>,  <69.557426, 58.604233, 60.756084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.574013, 58.389835, 60.862663>,  <69.601662, 58.032509, 61.040298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.574013, 58.389835, 60.862663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990006, 0.006567, -0.140870,
		-0.122925, -0.449382, -0.884842,
		-0.069115, 0.893316, -0.444083,
		69.553276, 58.657829, 60.729439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.997345, 58.014729, 60.386414>,  <69.601662, 58.032509, 61.040298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.997345, 58.014729, 60.386414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.945450, 58.406502, 60.448235>,  <69.914314, 58.641563, 60.485329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.945450, 58.406502, 60.448235>,  <69.997345, 58.014729, 60.386414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.945450, 58.406502, 60.448235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944506, 0.169514, -0.281379,
		-0.301790, 0.109474, -0.947068,
		-0.129737, 0.979429, 0.154556,
		69.906532, 58.700329, 60.494602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.027626, 58.359425, 59.757988>,  <69.997345, 58.014729, 60.386414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.027626, 58.359425, 59.757988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.140831, 58.570412, 60.078407>,  <70.208755, 58.697002, 60.270660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.140831, 58.570412, 60.078407>,  <70.027626, 58.359425, 59.757988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.140831, 58.570412, 60.078407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875754, 0.198462, -0.440077,
		-0.391105, 0.826069, -0.405767,
		0.283005, 0.527468, 0.801053,
		70.225731, 58.728653, 60.318722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.311913, 58.874748, 59.531441>,  <70.027626, 58.359425, 59.757988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.311913, 58.874748, 59.531441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.470932, 58.846409, 59.897377>,  <70.566345, 58.829407, 60.116940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.470932, 58.846409, 59.897377>,  <70.311913, 58.874748, 59.531441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.470932, 58.846409, 59.897377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896066, 0.244612, -0.370447,
		-0.197538, 0.967029, 0.160726,
		0.397549, -0.070844, 0.914842,
		70.590195, 58.825157, 60.171829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.734398, 59.503777, 59.703571>,  <70.311913, 58.874748, 59.531441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.734398, 59.503777, 59.703571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.846535, 59.175819, 59.903244>,  <70.913818, 58.979046, 60.023048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.846535, 59.175819, 59.903244>,  <70.734398, 59.503777, 59.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.846535, 59.175819, 59.903244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915900, 0.072845, -0.394741,
		0.287281, 0.567868, 0.771360,
		0.280351, -0.819890, 0.499183,
		70.930641, 58.929852, 60.052998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.420677, 59.556473, 59.962223>,  <70.734398, 59.503777, 59.703571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.420677, 59.556473, 59.962223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.355583, 59.162857, 59.933449>,  <71.316528, 58.926685, 59.916183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.355583, 59.162857, 59.933449>,  <71.420677, 59.556473, 59.962223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.355583, 59.162857, 59.933449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957086, -0.139717, -0.253900,
		0.239798, -0.110169, 0.964552,
		-0.162736, -0.984044, -0.071937,
		71.306763, 58.867645, 59.911869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.908081, 59.197323, 60.356773>,  <71.420677, 59.556473, 59.962223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.908081, 59.197323, 60.356773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.773895, 58.955322, 60.067932>,  <71.693382, 58.810120, 59.894627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.773895, 58.955322, 60.067932>,  <71.908081, 59.197323, 60.356773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.773895, 58.955322, 60.067932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940718, -0.255957, -0.222567,
		-0.050175, -0.753960, 0.655001,
		-0.335459, -0.605004, -0.722107,
		71.673256, 58.773823, 59.851299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.526062, 58.806519, 60.380032>,  <71.908081, 59.197323, 60.356773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.526062, 58.806519, 60.380032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.309280, 58.686333, 60.066086>,  <72.179214, 58.614220, 59.877720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.309280, 58.686333, 60.066086>,  <72.526062, 58.806519, 60.380032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.309280, 58.686333, 60.066086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805216, -0.453079, -0.382551,
		-0.240661, -0.839308, 0.487488,
		-0.541949, -0.300468, -0.784863,
		72.146698, 58.596191, 59.830627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.445076, 58.022659, 60.256199>,  <72.526062, 58.806519, 60.380032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.445076, 58.022659, 60.256199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.403831, 58.203163, 59.901634>,  <72.379082, 58.311466, 59.688896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.403831, 58.203163, 59.901634>,  <72.445076, 58.022659, 60.256199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.403831, 58.203163, 59.901634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754539, -0.545176, -0.365311,
		-0.648103, -0.706503, -0.284280,
		-0.103111, 0.451260, -0.886415,
		72.372894, 58.338543, 59.635708>
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
