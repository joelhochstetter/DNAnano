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
	<36.059460, 53.561958, 49.983356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034698, 53.255936, 50.239746>,  <36.019840, 53.072323, 50.393581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034698, 53.255936, 50.239746>,  <36.059460, 53.561958, 49.983356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034698, 53.255936, 50.239746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759436, -0.452817, -0.467134,
		0.647631, 0.457864, 0.609044,
		-0.061901, -0.765060, 0.640977,
		36.016129, 53.026417, 50.432037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691425, 53.499947, 50.278694>,  <36.059460, 53.561958, 49.983356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691425, 53.499947, 50.278694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479759, 53.160744, 50.266945>,  <36.352760, 52.957222, 50.259895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479759, 53.160744, 50.266945>,  <36.691425, 53.499947, 50.278694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479759, 53.160744, 50.266945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744655, -0.447517, -0.495194,
		0.406785, -0.283912, 0.868286,
		-0.529164, -0.848011, -0.029374,
		36.321011, 52.906342, 50.258133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993217, 53.057507, 50.642471>,  <36.691425, 53.499947, 50.278694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993217, 53.057507, 50.642471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792412, 52.898922, 50.335018>,  <36.671928, 52.803772, 50.150547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792412, 52.898922, 50.335018>,  <36.993217, 53.057507, 50.642471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792412, 52.898922, 50.335018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861851, -0.155249, -0.482815,
		0.072090, -0.904827, 0.419630,
		-0.502012, -0.396465, -0.768635,
		36.641808, 52.779984, 50.104427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273598, 52.450363, 50.456734>,  <36.993217, 53.057507, 50.642471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273598, 52.450363, 50.456734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109089, 52.601837, 50.125084>,  <37.010384, 52.692722, 49.926094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109089, 52.601837, 50.125084>,  <37.273598, 52.450363, 50.456734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109089, 52.601837, 50.125084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865516, -0.123072, -0.485527,
		-0.285905, -0.917305, -0.277145,
		-0.411268, 0.378688, -0.829129,
		36.985710, 52.715443, 49.876347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252953, 51.954582, 49.929531>,  <37.273598, 52.450363, 50.456734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252953, 51.954582, 49.929531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249969, 52.300465, 49.728645>,  <37.248180, 52.507996, 49.608112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249969, 52.300465, 49.728645>,  <37.252953, 51.954582, 49.929531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249969, 52.300465, 49.728645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802022, -0.294791, -0.519479,
		-0.597248, -0.406663, -0.691318,
		-0.007458, 0.864710, -0.502216,
		37.247730, 52.559879, 49.577980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413422, 51.813881, 49.308838>,  <37.252953, 51.954582, 49.929531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413422, 51.813881, 49.308838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506145, 52.198677, 49.366592>,  <37.561779, 52.429554, 49.401245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506145, 52.198677, 49.366592>,  <37.413422, 51.813881, 49.308838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506145, 52.198677, 49.366592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917962, -0.167208, -0.359703,
		-0.321886, 0.215927, -0.921827,
		0.231807, 0.961986, 0.144391,
		37.575687, 52.487274, 49.409908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777176, 52.160652, 48.732128>,  <37.413422, 51.813881, 49.308838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777176, 52.160652, 48.732128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883896, 52.337299, 49.074776>,  <37.947929, 52.443287, 49.280365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883896, 52.337299, 49.074776>,  <37.777176, 52.160652, 48.732128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883896, 52.337299, 49.074776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959853, -0.041897, -0.277358,
		-0.086596, 0.896225, -0.435066,
		0.266803, 0.441617, 0.856615,
		37.963936, 52.469784, 49.331760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872654, 52.841702, 48.708656>,  <37.777176, 52.160652, 48.732128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872654, 52.841702, 48.708656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106346, 52.636932, 48.960564>,  <38.246563, 52.514072, 49.111710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106346, 52.636932, 48.960564>,  <37.872654, 52.841702, 48.708656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106346, 52.636932, 48.960564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790567, 0.183511, -0.584233,
		0.183511, 0.839203, 0.511920,
		0.584233, -0.511920, 0.629770,
		38.281616, 52.483356, 49.149494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521759, 53.285339, 48.982529>,  <37.872654, 52.841702, 48.708656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521759, 53.285339, 48.982529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573574, 52.888851, 48.971901>,  <38.604664, 52.650959, 48.965523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573574, 52.888851, 48.971901>,  <38.521759, 53.285339, 48.982529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573574, 52.888851, 48.971901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848160, 0.124640, -0.514868,
		0.513658, 0.044157, 0.856858,
		0.129534, -0.991219, -0.026570,
		38.612434, 52.591484, 48.963928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152889, 53.308468, 48.705322>,  <38.521759, 53.285339, 48.982529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152889, 53.308468, 48.705322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037079, 52.925755, 48.716282>,  <38.967594, 52.696129, 48.722858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037079, 52.925755, 48.716282>,  <39.152889, 53.308468, 48.705322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037079, 52.925755, 48.716282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702887, -0.231949, -0.672421,
		0.649713, -0.175422, 0.739662,
		-0.289521, -0.956780, 0.027399,
		38.950222, 52.638721, 48.724503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828655, 52.860191, 48.689190>,  <39.152889, 53.308468, 48.705322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828655, 52.860191, 48.689190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491043, 52.740761, 48.510994>,  <39.288475, 52.669102, 48.404076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491043, 52.740761, 48.510994>,  <39.828655, 52.860191, 48.689190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491043, 52.740761, 48.510994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531183, -0.351005, -0.771129,
		0.073872, -0.887495, 0.454858,
		-0.844030, -0.298578, -0.445493,
		39.237835, 52.651188, 48.377346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379482, 52.511356, 48.823227>,  <39.828655, 52.860191, 48.689190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379482, 52.511356, 48.823227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689964, 52.725288, 48.956772>,  <40.876255, 52.853645, 49.036900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689964, 52.725288, 48.956772>,  <40.379482, 52.511356, 48.823227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689964, 52.725288, 48.956772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595074, 0.796425, 0.107671,
		-0.208314, -0.282250, 0.936451,
		0.776203, 0.534828, 0.333866,
		40.922825, 52.885738, 49.056931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175755, 52.518528, 48.810036>,  <40.379482, 52.511356, 48.823227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175755, 52.518528, 48.810036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061031, 52.896446, 48.746651>,  <40.992199, 53.123196, 48.708618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061031, 52.896446, 48.746651>,  <41.175755, 52.518528, 48.810036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061031, 52.896446, 48.746651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521139, 0.292667, 0.801723,
		0.803838, 0.147357, -0.576307,
		-0.286805, 0.944792, -0.158464,
		40.974991, 53.179882, 48.699112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815056, 52.963776, 48.753639>,  <41.175755, 52.518528, 48.810036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815056, 52.963776, 48.753639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509281, 53.184589, 48.886845>,  <41.325817, 53.317078, 48.966766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509281, 53.184589, 48.886845>,  <41.815056, 52.963776, 48.753639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509281, 53.184589, 48.886845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553190, 0.296388, 0.778547,
		0.331081, 0.779370, -0.531948,
		-0.764439, 0.552030, 0.333011,
		41.279949, 53.350197, 48.986748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131195, 53.237892, 49.259369>,  <41.815056, 52.963776, 48.753639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131195, 53.237892, 49.259369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759758, 53.384197, 49.284462>,  <41.536896, 53.471981, 49.299519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759758, 53.384197, 49.284462>,  <42.131195, 53.237892, 49.259369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759758, 53.384197, 49.284462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180292, 0.296904, 0.937733,
		0.324360, 0.882081, -0.341647,
		-0.928593, 0.365759, 0.062729,
		41.481178, 53.493927, 49.303280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961609, 53.989113, 49.380489>,  <42.131195, 53.237892, 49.259369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961609, 53.989113, 49.380489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651772, 53.799118, 49.547531>,  <41.465870, 53.685120, 49.647755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651772, 53.799118, 49.547531>,  <41.961609, 53.989113, 49.380489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651772, 53.799118, 49.547531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388153, 0.164291, 0.906833,
		-0.499345, 0.864519, 0.057110,
		-0.774591, -0.474990, 0.417604,
		41.419395, 53.656620, 49.672813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286037, 54.623230, 49.343552>,  <41.961609, 53.989113, 49.380489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286037, 54.623230, 49.343552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490345, 54.302273, 49.220085>,  <42.612930, 54.109699, 49.146004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490345, 54.302273, 49.220085>,  <42.286037, 54.623230, 49.343552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490345, 54.302273, 49.220085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715181, 0.595817, -0.365400,
		0.477107, -0.034120, 0.878183,
		0.510769, -0.802395, -0.308670,
		42.643578, 54.061554, 49.127483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910885, 54.906933, 49.273155>,  <42.286037, 54.623230, 49.343552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910885, 54.906933, 49.273155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979362, 54.542427, 49.123337>,  <43.020451, 54.323723, 49.033447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979362, 54.542427, 49.123337>,  <42.910885, 54.906933, 49.273155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979362, 54.542427, 49.123337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935027, 0.270088, -0.229735,
		0.310510, -0.310881, 0.898296,
		0.171199, -0.911266, -0.374547,
		43.030724, 54.269047, 49.010971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405064, 54.752975, 49.831104>,  <42.910885, 54.906933, 49.273155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405064, 54.752975, 49.831104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399315, 54.548019, 49.487652>,  <43.395866, 54.425045, 49.281578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399315, 54.548019, 49.487652>,  <43.405064, 54.752975, 49.831104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399315, 54.548019, 49.487652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934062, 0.299561, -0.194398,
		0.356820, -0.804813, 0.474295,
		-0.014374, -0.512386, -0.858635,
		43.395004, 54.394302, 49.230061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039730, 54.385582, 49.928867>,  <43.405064, 54.752975, 49.831104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039730, 54.385582, 49.928867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953403, 54.392475, 49.538353>,  <43.901608, 54.396610, 49.304047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953403, 54.392475, 49.538353>,  <44.039730, 54.385582, 49.928867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953403, 54.392475, 49.538353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955365, 0.210306, -0.207481,
		0.201742, -0.977484, -0.061854,
		-0.215818, 0.017235, -0.976281,
		43.888657, 54.397648, 49.245468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506268, 53.923450, 49.513477>,  <44.039730, 54.385582, 49.928867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506268, 53.923450, 49.513477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378712, 54.175171, 49.229988>,  <44.302177, 54.326202, 49.059895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.378712, 54.175171, 49.229988>,  <44.506268, 53.923450, 49.513477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378712, 54.175171, 49.229988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929070, 0.355441, -0.102426,
		0.187453, -0.691118, -0.698009,
		-0.318890, 0.629299, -0.708726,
		44.283047, 54.363960, 49.017372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825161, 54.470467, 49.909386>,  <44.506268, 53.923450, 49.513477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825161, 54.470467, 49.909386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721264, 54.276733, 50.243561>,  <44.658924, 54.160496, 50.444065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721264, 54.276733, 50.243561>,  <44.825161, 54.470467, 49.909386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721264, 54.276733, 50.243561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386216, -0.845030, -0.369812,
		0.885081, 0.226602, 0.406550,
		-0.259747, -0.484330, 0.835438,
		44.643341, 54.131435, 50.494194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374916, 54.258820, 50.412750>,  <44.825161, 54.470467, 49.909386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374916, 54.258820, 50.412750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058437, 54.014679, 50.397385>,  <44.868549, 53.868195, 50.388165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058437, 54.014679, 50.397385>,  <45.374916, 54.258820, 50.412750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058437, 54.014679, 50.397385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579584, -0.728310, -0.365578,
		0.195154, -0.311508, 0.929988,
		-0.791200, -0.610350, -0.038413,
		44.821079, 53.831573, 50.385860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604515, 53.604393, 50.611053>,  <45.374916, 54.258820, 50.412750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604515, 53.604393, 50.611053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271454, 53.512348, 50.409565>,  <45.071617, 53.457119, 50.288670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271454, 53.512348, 50.409565>,  <45.604515, 53.604393, 50.611053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271454, 53.512348, 50.409565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489295, -0.731717, -0.474532,
		-0.259386, -0.641590, 0.721860,
		-0.832652, -0.230116, -0.503724,
		45.021660, 53.443314, 50.258450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244846, 53.311901, 51.336750>,  <45.604515, 53.604393, 50.611053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244846, 53.311901, 51.336750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493137, 53.599277, 51.211189>,  <45.642113, 53.771702, 51.135853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493137, 53.599277, 51.211189>,  <45.244846, 53.311901, 51.336750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493137, 53.599277, 51.211189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377308, 0.077226, 0.922862,
		0.687264, -0.691287, -0.223137,
		0.620730, 0.718442, -0.313902,
		45.679356, 53.814812, 51.117020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022453, 53.190128, 51.590244>,  <45.244846, 53.311901, 51.336750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022453, 53.190128, 51.590244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955048, 53.580063, 51.531868>,  <45.914604, 53.814022, 51.496841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955048, 53.580063, 51.531868>,  <46.022453, 53.190128, 51.590244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955048, 53.580063, 51.531868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609372, 0.219406, 0.761923,
		0.774770, 0.039462, -0.631011,
		-0.168514, 0.974835, -0.145942,
		45.904491, 53.872513, 51.488087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600666, 53.589027, 51.341774>,  <46.022453, 53.190128, 51.590244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.600666, 53.589027, 51.341774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393566, 53.848759, 51.564594>,  <46.269306, 54.004597, 51.698288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393566, 53.848759, 51.564594>,  <46.600666, 53.589027, 51.341774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.393566, 53.848759, 51.564594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805282, 0.150020, 0.573598,
		0.288882, 0.745569, -0.600562,
		-0.517753, 0.649323, 0.557055,
		46.238239, 54.043556, 51.731712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942410, 54.255386, 51.371151>,  <46.600666, 53.589027, 51.341774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942410, 54.255386, 51.371151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716064, 54.208889, 51.697655>,  <46.580257, 54.180988, 51.893559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716064, 54.208889, 51.697655>,  <46.942410, 54.255386, 51.371151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.716064, 54.208889, 51.697655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822811, -0.016322, 0.568081,
		-0.052713, 0.993086, 0.104884,
		-0.565866, -0.116245, 0.816262,
		46.546307, 54.174015, 51.942532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041901, 54.830257, 51.923260>,  <46.942410, 54.255386, 51.371151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041901, 54.830257, 51.923260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.947102, 54.447582, 51.990894>,  <46.890224, 54.217979, 52.031475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.947102, 54.447582, 51.990894>,  <47.041901, 54.830257, 51.923260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.947102, 54.447582, 51.990894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788627, -0.087800, 0.608571,
		-0.567364, 0.277575, 0.775274,
		-0.236993, -0.956683, 0.169089,
		46.876003, 54.160576, 52.041622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854893, 54.663700, 52.623096>,  <47.041901, 54.830257, 51.923260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854893, 54.663700, 52.623096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012783, 54.344345, 52.441212>,  <47.107517, 54.152733, 52.332081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012783, 54.344345, 52.441212>,  <46.854893, 54.663700, 52.623096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012783, 54.344345, 52.441212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751372, -0.004341, 0.659864,
		-0.528803, -0.602124, 0.598175,
		0.394724, -0.798391, -0.454715,
		47.131199, 54.104828, 52.304798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116478, 54.128262, 53.217022>,  <46.854893, 54.663700, 52.623096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116478, 54.128262, 53.217022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289024, 54.104187, 52.856956>,  <47.392551, 54.089741, 52.640915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289024, 54.104187, 52.856956>,  <47.116478, 54.128262, 53.217022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289024, 54.104187, 52.856956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900717, -0.028030, 0.433501,
		-0.051325, -0.997793, 0.042124,
		0.431364, -0.060191, -0.900168,
		47.418434, 54.086128, 52.586906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.694504, 53.781292, 53.331936>,  <47.116478, 54.128262, 53.217022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.694504, 53.781292, 53.331936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762772, 53.926842, 52.965664>,  <47.803734, 54.014172, 52.745903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762772, 53.926842, 52.965664>,  <47.694504, 53.781292, 53.331936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762772, 53.926842, 52.965664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935505, 0.231928, 0.266530,
		0.309356, -0.902110, -0.300825,
		0.170670, 0.363876, -0.915678,
		47.813972, 54.036003, 52.690960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.392818, 53.562363, 53.216084>,  <47.694504, 53.781292, 53.331936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.392818, 53.562363, 53.216084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.340572, 53.922791, 53.050674>,  <48.309223, 54.139050, 52.951427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.340572, 53.922791, 53.050674>,  <48.392818, 53.562363, 53.216084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.340572, 53.922791, 53.050674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799420, 0.342424, 0.493633,
		0.586401, -0.266105, -0.765063,
		-0.130618, 0.901074, -0.413527,
		48.301388, 54.193111, 52.926617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.958248, 53.743851, 52.764076>,  <48.392818, 53.562363, 53.216084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.958248, 53.743851, 52.764076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.812416, 54.091560, 52.897614>,  <48.724918, 54.300186, 52.977737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.812416, 54.091560, 52.897614>,  <48.958248, 53.743851, 52.764076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.812416, 54.091560, 52.897614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894326, 0.227021, 0.385543,
		0.259351, 0.439127, -0.860177,
		-0.364580, 0.869269, 0.333844,
		48.703041, 54.352341, 52.997768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.351654, 54.362984, 52.441051>,  <48.958248, 53.743851, 52.764076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.351654, 54.362984, 52.441051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.193146, 54.461670, 52.794800>,  <49.098042, 54.520882, 53.007050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.193146, 54.461670, 52.794800>,  <49.351654, 54.362984, 52.441051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.193146, 54.461670, 52.794800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915810, 0.174720, 0.361614,
		-0.065301, 0.953208, -0.295179,
		-0.396267, 0.246715, 0.884367,
		49.074265, 54.535683, 53.060108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.645226, 54.973747, 52.611870>,  <49.351654, 54.362984, 52.441051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.645226, 54.973747, 52.611870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.541862, 54.799416, 52.956726>,  <49.479843, 54.694817, 53.163639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.541862, 54.799416, 52.956726>,  <49.645226, 54.973747, 52.611870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.541862, 54.799416, 52.956726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902007, 0.210642, 0.376845,
		-0.345841, 0.875035, 0.338685,
		-0.258412, -0.435825, 0.862137,
		49.464340, 54.668667, 53.215366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.757900, 55.490986, 53.092247>,  <49.645226, 54.973747, 52.611870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.757900, 55.490986, 53.092247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.779022, 55.122372, 53.246124>,  <49.791695, 54.901203, 53.338451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.779022, 55.122372, 53.246124>,  <49.757900, 55.490986, 53.092247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.779022, 55.122372, 53.246124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807694, 0.265951, 0.526213,
		-0.587232, 0.282925, 0.758362,
		0.052808, -0.921533, 0.384692,
		49.794865, 54.845913, 53.361530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.879650, 55.473122, 53.804855>,  <49.757900, 55.490986, 53.092247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.879650, 55.473122, 53.804855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.034798, 55.135372, 53.657021>,  <50.127888, 54.932724, 53.568321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.034798, 55.135372, 53.657021>,  <49.879650, 55.473122, 53.804855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.034798, 55.135372, 53.657021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830119, 0.145747, 0.538200,
		-0.400575, -0.515551, 0.757460,
		0.387868, -0.844372, -0.369586,
		50.151157, 54.882061, 53.546146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.171719, 54.955906, 54.253338>,  <49.879650, 55.473122, 53.804855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.171719, 54.955906, 54.253338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.403316, 54.991352, 53.929138>,  <50.542274, 55.012619, 53.734619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.403316, 54.991352, 53.929138>,  <50.171719, 54.955906, 54.253338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.403316, 54.991352, 53.929138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792489, 0.172486, 0.584987,
		0.191643, -0.981017, 0.029637,
		0.578994, 0.088622, -0.810501,
		50.577015, 55.017937, 53.685989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.787449, 55.105103, 54.494404>,  <50.171719, 54.955906, 54.253338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.787449, 55.105103, 54.494404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.895069, 55.091732, 54.109386>,  <50.959641, 55.083710, 53.878376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.895069, 55.091732, 54.109386>,  <50.787449, 55.105103, 54.494404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.895069, 55.091732, 54.109386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938999, 0.231399, 0.254432,
		0.214227, -0.972284, 0.093648,
		0.269050, -0.033429, -0.962546,
		50.975784, 55.081703, 53.820621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.365105, 54.764484, 54.420578>,  <50.787449, 55.105103, 54.494404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.365105, 54.764484, 54.420578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.375034, 54.994583, 54.093536>,  <51.380993, 55.132641, 53.897312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.375034, 54.994583, 54.093536>,  <51.365105, 54.764484, 54.420578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.375034, 54.994583, 54.093536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998900, 0.018262, 0.043180,
		0.039770, -0.817776, -0.574161,
		0.024826, 0.575247, -0.817603,
		51.382481, 55.167156, 53.848255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.913319, 54.642937, 53.820335>,  <51.365105, 54.764484, 54.420578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.913319, 54.642937, 53.820335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.813202, 55.017864, 53.917313>,  <51.753132, 55.242821, 53.975498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.813202, 55.017864, 53.917313>,  <51.913319, 54.642937, 53.820335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.813202, 55.017864, 53.917313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962923, 0.214967, 0.162998,
		0.100664, 0.274255, -0.956374,
		-0.250292, 0.937322, 0.242447,
		51.738113, 55.299061, 53.990047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.173473, 55.281052, 53.360107>,  <51.913319, 54.642937, 53.820335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.173473, 55.281052, 53.360107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.133587, 55.325291, 53.755646>,  <52.109653, 55.351833, 53.992970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.133587, 55.325291, 53.755646>,  <52.173473, 55.281052, 53.360107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.133587, 55.325291, 53.755646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950906, 0.303209, 0.061982,
		-0.292973, 0.946484, -0.135405,
		-0.099721, 0.110598, 0.988850,
		52.103672, 55.358471, 54.052299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.545696, 55.907185, 53.468964>,  <52.173473, 55.281052, 53.360107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.545696, 55.907185, 53.468964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.521515, 55.671890, 53.791534>,  <52.507008, 55.530712, 53.985077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.521515, 55.671890, 53.791534>,  <52.545696, 55.907185, 53.468964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.521515, 55.671890, 53.791534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932221, 0.255520, 0.256268,
		-0.356804, 0.767258, 0.532922,
		-0.060452, -0.588239, 0.806425,
		52.503380, 55.495419, 54.033463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.962036, 56.522476, 53.467091>,  <52.545696, 55.907185, 53.468964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.962036, 56.522476, 53.467091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.969402, 56.563194, 53.864944>,  <52.973820, 56.587627, 54.103657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.969402, 56.563194, 53.864944>,  <52.962036, 56.522476, 53.467091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.969402, 56.563194, 53.864944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999647, 0.017166, -0.020262,
		-0.019137, 0.994657, -0.101446,
		0.018413, 0.101798, 0.994635,
		52.974926, 56.593735, 54.163334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.330067, 57.178791, 53.745754>,  <52.962036, 56.522476, 53.467091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.330067, 57.178791, 53.745754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.333496, 56.866447, 53.995613>,  <53.335556, 56.679043, 54.145527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.333496, 56.866447, 53.995613>,  <53.330067, 57.178791, 53.745754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.333496, 56.866447, 53.995613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996976, 0.054930, 0.054978,
		-0.077242, 0.622286, 0.778970,
		0.008576, -0.780861, 0.624647,
		53.336067, 56.632191, 54.183006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.795555, 57.314728, 54.241207>,  <53.330067, 57.178791, 53.745754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.795555, 57.314728, 54.241207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.760742, 56.918442, 54.282990>,  <53.739853, 56.680672, 54.308060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.760742, 56.918442, 54.282990>,  <53.795555, 57.314728, 54.241207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.760742, 56.918442, 54.282990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946427, -0.049501, 0.319102,
		-0.310968, 0.126634, 0.941946,
		-0.087036, -0.990714, 0.104457,
		53.734631, 56.621227, 54.314327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.209213, 57.087307, 54.902126>,  <53.795555, 57.314728, 54.241207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.209213, 57.087307, 54.902126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.122635, 56.755306, 54.696507>,  <54.070690, 56.556107, 54.573135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.122635, 56.755306, 54.696507>,  <54.209213, 57.087307, 54.902126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.122635, 56.755306, 54.696507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855797, -0.414699, 0.309251,
		-0.469855, -0.372988, 0.800072,
		-0.216442, -0.830003, -0.514051,
		54.057701, 56.506306, 54.542290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.212650, 56.435535, 55.261494>,  <54.209213, 57.087307, 54.902126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.212650, 56.435535, 55.261494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.305473, 56.311932, 54.892570>,  <54.361168, 56.237770, 54.671215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.305473, 56.311932, 54.892570>,  <54.212650, 56.435535, 55.261494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.305473, 56.311932, 54.892570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848604, -0.399120, 0.347238,
		-0.475414, -0.863258, 0.169610,
		0.232061, -0.309013, -0.922311,
		54.375092, 56.219227, 54.615875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.187420, 55.763027, 55.281685>,  <54.212650, 56.435535, 55.261494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.187420, 55.763027, 55.281685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.459595, 55.911953, 55.029213>,  <54.622898, 56.001308, 54.877728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.459595, 55.911953, 55.029213>,  <54.187420, 55.763027, 55.281685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.459595, 55.911953, 55.029213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727331, -0.448226, 0.519695,
		-0.089423, -0.812698, -0.575783,
		0.680436, 0.372312, -0.631182,
		54.663727, 56.023647, 54.839859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.569954, 55.166607, 54.956409>,  <54.187420, 55.763027, 55.281685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.569954, 55.166607, 54.956409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.756142, 55.516193, 55.012299>,  <54.867855, 55.725945, 55.045834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.756142, 55.516193, 55.012299>,  <54.569954, 55.166607, 54.956409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.756142, 55.516193, 55.012299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658551, -0.447472, 0.605045,
		0.591310, -0.189617, -0.783836,
		0.465471, 0.873965, 0.139723,
		54.895782, 55.778381, 55.054214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.270664, 55.068836, 54.793587>,  <54.569954, 55.166607, 54.956409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.270664, 55.068836, 54.793587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.203056, 55.365250, 55.053528>,  <55.162491, 55.543098, 55.209492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.203056, 55.365250, 55.053528>,  <55.270664, 55.068836, 54.793587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.203056, 55.365250, 55.053528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817286, -0.263145, 0.512639,
		0.550886, 0.617760, -0.561157,
		-0.169022, 0.741031, 0.649849,
		55.152351, 55.587559, 55.248482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.838680, 55.504162, 54.725204>,  <55.270664, 55.068836, 54.793587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.838680, 55.504162, 54.725204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.668037, 55.500504, 55.086960>,  <55.565651, 55.498310, 55.304012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.668037, 55.500504, 55.086960>,  <55.838680, 55.504162, 54.725204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.668037, 55.500504, 55.086960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903580, -0.047864, 0.425737,
		0.039396, 0.998812, 0.028679,
		-0.426604, -0.009142, 0.904392,
		55.540054, 55.497761, 55.358276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.131954, 56.105942, 55.299545>,  <55.838680, 55.504162, 54.725204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.131954, 56.105942, 55.299545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.980774, 55.763931, 55.441574>,  <55.890068, 55.558723, 55.526791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.980774, 55.763931, 55.441574>,  <56.131954, 56.105942, 55.299545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.980774, 55.763931, 55.441574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837380, -0.152111, 0.525030,
		-0.394905, 0.495768, 0.773476,
		-0.377947, -0.855030, 0.355076,
		55.867390, 55.507423, 55.548096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.466179, 56.752064, 55.323238>,  <56.131954, 56.105942, 55.299545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.466179, 56.752064, 55.323238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.563187, 56.369934, 55.390808>,  <56.621391, 56.140656, 55.431351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.563187, 56.369934, 55.390808>,  <56.466179, 56.752064, 55.323238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.563187, 56.369934, 55.390808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912788, 0.283677, 0.293847,
		-0.328640, 0.082932, 0.940807,
		0.242516, -0.955327, 0.168927,
		56.635941, 56.083336, 55.441486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.715111, 56.712723, 56.024250>,  <56.466179, 56.752064, 55.323238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.715111, 56.712723, 56.024250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.863655, 56.439167, 55.773048>,  <56.952782, 56.275036, 55.622326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.863655, 56.439167, 55.773048>,  <56.715111, 56.712723, 56.024250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.863655, 56.439167, 55.773048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927379, 0.240171, 0.286856,
		-0.045349, -0.688925, 0.723412,
		0.371365, -0.683886, -0.628003,
		56.975063, 56.234001, 55.584648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.172455, 56.299019, 56.432705>,  <56.715111, 56.712723, 56.024250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.172455, 56.299019, 56.432705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.236008, 56.339848, 56.039902>,  <57.274139, 56.364346, 55.804218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.236008, 56.339848, 56.039902>,  <57.172455, 56.299019, 56.432705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.236008, 56.339848, 56.039902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908379, 0.374551, 0.185901,
		0.386787, -0.921570, -0.033213,
		0.158881, 0.102074, -0.982007,
		57.283672, 56.370468, 55.745300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.877708, 56.133266, 56.408009>,  <57.172455, 56.299019, 56.432705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.877708, 56.133266, 56.408009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.788162, 56.346870, 56.081886>,  <57.734432, 56.475033, 55.886215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.788162, 56.346870, 56.081886>,  <57.877708, 56.133266, 56.408009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.788162, 56.346870, 56.081886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852132, 0.513252, 0.102190,
		0.473026, -0.671869, -0.569946,
		-0.223868, 0.534008, -0.815303,
		57.721001, 56.507072, 55.837296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.443535, 56.038925, 55.976997>,  <57.877708, 56.133266, 56.408009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.443535, 56.038925, 55.976997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.232826, 56.378078, 55.952972>,  <58.106400, 56.581570, 55.938557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.232826, 56.378078, 55.952972>,  <58.443535, 56.038925, 55.976997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.232826, 56.378078, 55.952972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838945, 0.529978, 0.123666,
		0.136684, 0.014758, -0.990505,
		-0.526771, 0.847883, -0.060059,
		58.074795, 56.632442, 55.934956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.661915, 56.419739, 55.349483>,  <58.443535, 56.038925, 55.976997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.661915, 56.419739, 55.349483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.531227, 56.647247, 55.651413>,  <58.452816, 56.783752, 55.832569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.531227, 56.647247, 55.651413>,  <58.661915, 56.419739, 55.349483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.531227, 56.647247, 55.651413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763774, 0.629306, -0.143604,
		-0.556692, 0.529596, -0.640017,
		-0.326715, 0.568772, 0.754822,
		58.433212, 56.817879, 55.877861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.539978, 57.182644, 55.190540>,  <58.661915, 56.419739, 55.349483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.539978, 57.182644, 55.190540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.609390, 57.159954, 55.583817>,  <58.651039, 57.146339, 55.819782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.609390, 57.159954, 55.583817>,  <58.539978, 57.182644, 55.190540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.609390, 57.159954, 55.583817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795907, 0.596052, -0.106087,
		-0.580017, 0.800940, 0.148580,
		0.173531, -0.056724, 0.983194,
		58.661449, 57.142937, 55.878773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.220737, 57.367844, 55.096809>,  <58.539978, 57.182644, 55.190540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.220737, 57.367844, 55.096809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.964630, 57.555950, 54.853859>,  <58.810966, 57.668812, 54.708088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.964630, 57.555950, 54.853859>,  <59.220737, 57.367844, 55.096809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.964630, 57.555950, 54.853859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493185, 0.857871, 0.144311,
		0.588913, -0.207150, -0.781198,
		-0.640273, 0.470262, -0.607375,
		58.772549, 57.697029, 54.671646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.527073, 57.698471, 54.404148>,  <59.220737, 57.367844, 55.096809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.527073, 57.698471, 54.404148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.212845, 57.902214, 54.544682>,  <59.024307, 58.024460, 54.629002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.212845, 57.902214, 54.544682>,  <59.527073, 57.698471, 54.404148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.212845, 57.902214, 54.544682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597861, 0.771172, 0.218759,
		-0.159512, 0.381899, -0.910334,
		-0.785568, 0.509359, 0.351334,
		58.977173, 58.055023, 54.650082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.601257, 58.391460, 54.121498>,  <59.527073, 57.698471, 54.404148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.601257, 58.391460, 54.121498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.386826, 58.422173, 54.457764>,  <59.258167, 58.440601, 54.659523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.386826, 58.422173, 54.457764>,  <59.601257, 58.391460, 54.121498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.386826, 58.422173, 54.457764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581549, 0.755437, 0.301852,
		-0.611894, 0.650707, -0.449629,
		-0.536084, 0.076780, 0.840666,
		59.226002, 58.445206, 54.709965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.805782, 58.972462, 54.332535>,  <59.601257, 58.391460, 54.121498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.805782, 58.972462, 54.332535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.613983, 58.876205, 54.670097>,  <59.498905, 58.818451, 54.872635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.613983, 58.876205, 54.670097>,  <59.805782, 58.972462, 54.332535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.613983, 58.876205, 54.670097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497028, 0.718075, 0.487167,
		-0.723219, 0.653039, -0.224709,
		-0.479497, -0.240642, 0.843904,
		59.470135, 58.804012, 54.923267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.521000, 59.594002, 54.575718>,  <59.805782, 58.972462, 54.332535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.521000, 59.594002, 54.575718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.612236, 59.324993, 54.857338>,  <59.666977, 59.163589, 55.026310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.612236, 59.324993, 54.857338>,  <59.521000, 59.594002, 54.575718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.612236, 59.324993, 54.857338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590318, 0.670569, 0.449290,
		-0.774272, 0.313135, 0.549954,
		0.228094, -0.672520, 0.704052,
		59.680664, 59.123238, 55.068554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.555801, 59.862926, 55.210125>,  <59.521000, 59.594002, 54.575718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.555801, 59.862926, 55.210125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.776192, 59.544281, 55.309586>,  <59.908428, 59.353092, 55.369263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.776192, 59.544281, 55.309586>,  <59.555801, 59.862926, 55.210125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.776192, 59.544281, 55.309586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645209, 0.595613, 0.478488,
		-0.529270, -0.103206, 0.842153,
		0.550980, -0.796614, 0.248650,
		59.941486, 59.305298, 55.384182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.684826, 59.920177, 55.964706>,  <59.555801, 59.862926, 55.210125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.684826, 59.920177, 55.964706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.960251, 59.692886, 55.784485>,  <60.125507, 59.556511, 55.676350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.960251, 59.692886, 55.784485>,  <59.684826, 59.920177, 55.964706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.960251, 59.692886, 55.784485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721699, 0.476186, 0.502392,
		-0.070922, -0.671096, 0.737971,
		0.688564, -0.568223, -0.450558,
		60.166821, 59.522419, 55.649319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.071400, 59.229786, 56.147263>,  <59.684826, 59.920177, 55.964706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.071400, 59.229786, 56.147263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.222588, 59.518776, 56.378838>,  <60.313301, 59.692169, 56.517784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.222588, 59.518776, 56.378838>,  <60.071400, 59.229786, 56.147263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.222588, 59.518776, 56.378838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869623, -0.491595, 0.045721,
		0.317635, 0.486177, -0.814088,
		0.377973, 0.722472, 0.578938,
		60.335979, 59.735519, 56.552521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.829411, 59.438538, 56.019402>,  <60.071400, 59.229786, 56.147263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.829411, 59.438538, 56.019402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.740120, 59.474579, 56.407639>,  <60.686546, 59.496204, 56.640579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.740120, 59.474579, 56.407639>,  <60.829411, 59.438538, 56.019402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.740120, 59.474579, 56.407639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794309, -0.560345, 0.234705,
		0.565014, 0.823344, 0.053517,
		-0.223231, 0.090102, 0.970592,
		60.673149, 59.501610, 56.698814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.420895, 59.537682, 56.319916>,  <60.829411, 59.438538, 56.019402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.420895, 59.537682, 56.319916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.181374, 59.409935, 56.613701>,  <61.037659, 59.333286, 56.789970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.181374, 59.409935, 56.613701>,  <61.420895, 59.537682, 56.319916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.181374, 59.409935, 56.613701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722004, -0.612148, 0.322467,
		0.346614, 0.723380, 0.597143,
		-0.598806, -0.319368, 0.734463,
		61.001732, 59.314125, 56.834038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.510727, 58.964890, 56.904755>,  <61.420895, 59.537682, 56.319916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.510727, 58.964890, 56.904755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.903404, 58.902649, 56.860817>,  <62.139011, 58.865303, 56.834454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.903404, 58.902649, 56.860817>,  <61.510727, 58.964890, 56.904755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.903404, 58.902649, 56.860817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188636, 0.714463, 0.673765,
		-0.026359, -0.682152, 0.730735,
		0.981693, -0.155603, -0.109846,
		62.197914, 58.855968, 56.827862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.970329, 58.508904, 57.092075>,  <61.510727, 58.964890, 56.904755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.970329, 58.508904, 57.092075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.137726, 58.271255, 57.366852>,  <62.238163, 58.128666, 57.531715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.137726, 58.271255, 57.366852>,  <61.970329, 58.508904, 57.092075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.137726, 58.271255, 57.366852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854008, -0.000008, 0.520260,
		-0.309094, -0.804372, -0.507391,
		0.418487, -0.594126, 0.686938,
		62.263271, 58.093018, 57.572933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.452251, 59.137135, 57.363567>,  <61.970329, 58.508904, 57.092075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.452251, 59.137135, 57.363567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.790558, 59.348862, 57.390381>,  <62.993542, 59.475899, 57.406467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.790558, 59.348862, 57.390381>,  <62.452251, 59.137135, 57.363567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.790558, 59.348862, 57.390381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456448, -0.782875, 0.422803,
		0.276277, -0.326997, -0.903739,
		0.845769, 0.529321, 0.067033,
		63.044289, 59.507660, 57.410492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.052834, 58.700340, 57.164349>,  <62.452251, 59.137135, 57.363567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.052834, 58.700340, 57.164349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.173584, 58.980900, 57.422623>,  <63.246033, 59.149235, 57.577587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.173584, 58.980900, 57.422623>,  <63.052834, 58.700340, 57.164349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.173584, 58.980900, 57.422623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451230, -0.701733, 0.551328,
		0.839799, 0.124920, -0.528330,
		0.301875, 0.701403, 0.645682,
		63.264145, 59.191322, 57.616329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.739090, 58.545128, 57.427807>,  <63.052834, 58.700340, 57.164349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.739090, 58.545128, 57.427807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.551620, 58.761063, 57.707497>,  <63.439137, 58.890625, 57.875313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.551620, 58.761063, 57.707497>,  <63.739090, 58.545128, 57.427807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.551620, 58.761063, 57.707497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274584, -0.663307, 0.696152,
		0.839611, 0.518266, 0.162645,
		-0.468676, 0.539837, 0.699227,
		63.411018, 58.923016, 57.917263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.109871, 58.627800, 57.987656>,  <63.739090, 58.545128, 57.427807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.109871, 58.627800, 57.987656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.743279, 58.682571, 58.138016>,  <63.523323, 58.715435, 58.228233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.743279, 58.682571, 58.138016>,  <64.109871, 58.627800, 57.987656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.743279, 58.682571, 58.138016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210584, -0.633782, 0.744294,
		0.340158, 0.761295, 0.552017,
		-0.916486, 0.136932, 0.375903,
		63.468334, 58.723652, 58.250786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.454803, 58.821476, 58.662796>,  <64.109871, 58.627800, 57.987656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.454803, 58.821476, 58.662796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.409492, 59.218323, 58.641388>,  <64.382309, 59.456432, 58.628544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.409492, 59.218323, 58.641388>,  <64.454803, 58.821476, 58.662796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.409492, 59.218323, 58.641388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990692, 0.116876, 0.069787,
		0.075493, -0.045121, -0.996125,
		-0.113274, 0.992121, -0.053524,
		64.375511, 59.515961, 58.625332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.040726, 58.409248, 58.397839>,  <64.454803, 58.821476, 58.662796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.040726, 58.409248, 58.397839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147865, 58.057358, 58.240700>,  <65.212151, 57.846222, 58.146416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147865, 58.057358, 58.240700>,  <65.040726, 58.409248, 58.397839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.147865, 58.057358, 58.240700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940903, 0.326562, -0.089772,
		0.207265, -0.345588, 0.915210,
		0.267848, -0.879731, -0.392850,
		65.228218, 57.793438, 58.122845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.693680, 58.509617, 58.142334>,  <65.040726, 58.409248, 58.397839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.693680, 58.509617, 58.142334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.651543, 58.116367, 58.082504>,  <65.626259, 57.880417, 58.046608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.651543, 58.116367, 58.082504>,  <65.693680, 58.509617, 58.142334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.651543, 58.116367, 58.082504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965086, -0.064809, -0.253787,
		0.239811, -0.171085, 0.955626,
		-0.105352, -0.983122, -0.149570,
		65.619934, 57.821430, 58.037632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.191597, 58.216003, 58.512711>,  <65.693680, 58.509617, 58.142334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.191597, 58.216003, 58.512711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.077553, 57.947968, 58.238571>,  <66.009125, 57.787148, 58.074089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.077553, 57.947968, 58.238571>,  <66.191597, 58.216003, 58.512711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.077553, 57.947968, 58.238571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958231, -0.182462, -0.220229,
		0.022523, -0.719508, 0.694119,
		-0.285107, -0.670086, -0.685346,
		65.992020, 57.746941, 58.032967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.321831, 57.483093, 58.731739>,  <66.191597, 58.216003, 58.512711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.321831, 57.483093, 58.731739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.377182, 57.606812, 58.355400>,  <66.410393, 57.681042, 58.129597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.377182, 57.606812, 58.355400>,  <66.321831, 57.483093, 58.731739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.377182, 57.606812, 58.355400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989969, -0.015880, 0.140386,
		0.028481, -0.950833, -0.308391,
		0.138381, 0.309296, -0.940844,
		66.418694, 57.699600, 58.073147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.822250, 56.975872, 58.358753>,  <66.321831, 57.483093, 58.731739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.822250, 56.975872, 58.358753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.821518, 57.325409, 58.164268>,  <66.821083, 57.535130, 58.047577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.821518, 57.325409, 58.164268>,  <66.822250, 56.975872, 58.358753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.821518, 57.325409, 58.164268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989780, 0.070907, 0.123725,
		0.142591, -0.481016, -0.865038,
		-0.001823, 0.873840, -0.486211,
		66.820969, 57.587563, 58.018406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.417267, 56.943970, 57.998787>,  <66.822250, 56.975872, 58.358753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.417267, 56.943970, 57.998787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.310059, 57.329205, 58.008812>,  <67.245735, 57.560345, 58.014828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.310059, 57.329205, 58.008812>,  <67.417267, 56.943970, 57.998787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.310059, 57.329205, 58.008812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955561, 0.262421, 0.134311,
		0.122777, 0.059946, -0.990622,
		-0.268011, 0.963090, 0.025063,
		67.229652, 57.618130, 58.016331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.877022, 57.316383, 57.537643>,  <67.417267, 56.943970, 57.998787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.877022, 57.316383, 57.537643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.764801, 57.578316, 57.818352>,  <67.697464, 57.735474, 57.986778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.764801, 57.578316, 57.818352>,  <67.877022, 57.316383, 57.537643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.764801, 57.578316, 57.818352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955389, 0.120209, 0.269782,
		0.092302, 0.746156, -0.659342,
		-0.280558, 0.654830, 0.701773,
		67.680634, 57.774765, 58.028885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.210205, 57.965187, 57.368767>,  <67.877022, 57.316383, 57.537643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.210205, 57.965187, 57.368767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.165169, 57.933941, 57.764992>,  <68.138145, 57.915192, 58.002728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.165169, 57.933941, 57.764992>,  <68.210205, 57.965187, 57.368767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.165169, 57.933941, 57.764992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990330, 0.072500, 0.118281,
		-0.081056, 0.994305, 0.069198,
		-0.112591, -0.078116, 0.990566,
		68.131393, 57.910507, 58.062160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.494095, 58.638428, 57.740311>,  <68.210205, 57.965187, 57.368767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.494095, 58.638428, 57.740311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.534378, 58.291733, 57.935707>,  <68.558548, 58.083714, 58.052944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.534378, 58.291733, 57.935707>,  <68.494095, 58.638428, 57.740311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.534378, 58.291733, 57.935707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975396, 0.182787, 0.123253,
		-0.196117, 0.464058, 0.863822,
		0.100699, -0.866741, 0.488488,
		68.564590, 58.031712, 58.082253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.938744, 58.701664, 58.300419>,  <68.494095, 58.638428, 57.740311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.938744, 58.701664, 58.300419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.966591, 58.304031, 58.267052>,  <68.983299, 58.065453, 58.247032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.966591, 58.304031, 58.267052>,  <68.938744, 58.701664, 58.300419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.966591, 58.304031, 58.267052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964250, 0.045632, 0.261034,
		-0.255682, -0.098610, 0.961718,
		0.069626, -0.994079, -0.083418,
		68.987480, 58.005806, 58.242027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.245094, 58.379768, 59.026066>,  <68.938744, 58.701664, 58.300419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.245094, 58.379768, 59.026066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.301224, 58.161530, 58.695580>,  <69.334900, 58.030586, 58.497288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.301224, 58.161530, 58.695580>,  <69.245094, 58.379768, 59.026066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.301224, 58.161530, 58.695580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967056, -0.103491, 0.232578,
		-0.212401, -0.831631, 0.513105,
		0.140317, -0.545601, -0.826215,
		69.343315, 57.997849, 58.447716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.750732, 57.834354, 59.139114>,  <69.245094, 58.379768, 59.026066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.750732, 57.834354, 59.139114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.728653, 57.927223, 58.750671>,  <69.715408, 57.982944, 58.517605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.728653, 57.927223, 58.750671>,  <69.750732, 57.834354, 59.139114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.728653, 57.927223, 58.750671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998473, 0.014810, -0.053212,
		0.002028, -0.972561, -0.232639,
		-0.055197, 0.232176, -0.971106,
		69.712097, 57.996876, 58.459339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.171730, 57.285885, 58.712273>,  <69.750732, 57.834354, 59.139114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.171730, 57.285885, 58.712273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.144287, 57.664085, 58.584953>,  <70.127823, 57.891006, 58.508560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.144287, 57.664085, 58.584953>,  <70.171730, 57.285885, 58.712273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.144287, 57.664085, 58.584953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994976, 0.088169, 0.047437,
		0.072916, -0.313445, -0.946803,
		-0.068609, 0.945505, -0.318299,
		70.123703, 57.947739, 58.489464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.512459, 57.432095, 58.125069>,  <70.171730, 57.285885, 58.712273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.512459, 57.432095, 58.125069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.487122, 57.776093, 58.327614>,  <70.471916, 57.982491, 58.449139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.487122, 57.776093, 58.327614>,  <70.512459, 57.432095, 58.125069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.487122, 57.776093, 58.327614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986445, 0.130917, -0.098929,
		-0.151370, 0.493229, -0.856629,
		-0.063352, 0.859992, 0.506360,
		70.468117, 58.034092, 58.479523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.878922, 58.069061, 57.766296>,  <70.512459, 57.432095, 58.125069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.878922, 58.069061, 57.766296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.881493, 58.063759, 58.166252>,  <70.883034, 58.060577, 58.406227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.881493, 58.063759, 58.166252>,  <70.878922, 58.069061, 57.766296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.881493, 58.063759, 58.166252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964051, 0.265703, -0.002682,
		-0.265639, 0.963964, 0.014483,
		0.006433, -0.013250, 0.999892,
		70.883423, 58.059784, 58.466221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.106781, 58.728096, 58.141216>,  <70.878922, 58.069061, 57.766296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.106781, 58.728096, 58.141216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.190536, 58.408245, 58.366341>,  <71.240791, 58.216335, 58.501415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.190536, 58.408245, 58.366341>,  <71.106781, 58.728096, 58.141216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.190536, 58.408245, 58.366341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886614, 0.398004, 0.235601,
		-0.412393, 0.449660, 0.792299,
		0.209398, -0.799624, 0.562809,
		71.253357, 58.168358, 58.535183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.291168, 58.927479, 58.867191>,  <71.106781, 58.728096, 58.141216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.291168, 58.927479, 58.867191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.460213, 58.590500, 58.733513>,  <71.561638, 58.388313, 58.653305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.460213, 58.590500, 58.733513>,  <71.291168, 58.927479, 58.867191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.460213, 58.590500, 58.733513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903216, 0.361040, 0.232058,
		-0.074836, -0.399925, 0.913488,
		0.422611, -0.842443, -0.334199,
		71.586998, 58.337769, 58.633251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.581146, 58.624256, 59.434341>,  <71.291168, 58.927479, 58.867191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.581146, 58.624256, 59.434341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.784950, 58.549179, 59.098442>,  <71.907234, 58.504135, 58.896904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.784950, 58.549179, 59.098442>,  <71.581146, 58.624256, 59.434341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.784950, 58.549179, 59.098442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850052, 0.261175, 0.457383,
		0.133475, -0.946868, 0.292615,
		0.509505, -0.187689, -0.839748,
		71.937805, 58.492870, 58.846519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.223213, 58.240910, 59.493984>,  <71.581146, 58.624256, 59.434341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.223213, 58.240910, 59.493984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.263687, 58.482334, 59.177635>,  <72.287971, 58.627190, 58.987823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.263687, 58.482334, 59.177635>,  <72.223213, 58.240910, 59.493984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.263687, 58.482334, 59.177635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858281, 0.349055, 0.376185,
		0.503107, -0.716854, -0.482704,
		0.101180, 0.603557, -0.790874,
		72.294044, 58.663403, 58.940372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.811989, 58.024220, 59.158375>,  <72.223213, 58.240910, 59.493984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.811989, 58.024220, 59.158375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.744637, 58.409142, 59.072945>,  <72.704224, 58.640095, 59.021687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.744637, 58.409142, 59.072945>,  <72.811989, 58.024220, 59.158375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.744637, 58.409142, 59.072945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947988, 0.217462, 0.232443,
		0.270126, -0.163325, -0.948872,
		-0.168380, 0.962307, -0.213572,
		72.694122, 58.697834, 59.008873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.317688, 58.246597, 59.702091>,  <72.811989, 58.024220, 59.158375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.317688, 58.246597, 59.702091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.337952, 58.468750, 60.034111>,  <73.350113, 58.602043, 60.233322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.337952, 58.468750, 60.034111>,  <73.317688, 58.246597, 59.702091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.337952, 58.468750, 60.034111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974596, -0.154064, 0.162565,
		0.218166, -0.817198, 0.533471,
		0.050659, 0.555385, 0.830049,
		73.353149, 58.635365, 60.283127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.036110, 57.988071, 60.377785>,  <73.317688, 58.246597, 59.702091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.036110, 57.988071, 60.377785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.994667, 58.379669, 60.448021>,  <72.969803, 58.614628, 60.490162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.994667, 58.379669, 60.448021>,  <73.036110, 57.988071, 60.377785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.994667, 58.379669, 60.448021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994595, -0.103174, -0.011634,
		0.006727, -0.175848, 0.984394,
		-0.103609, 0.978996, 0.175592,
		72.963585, 58.673367, 60.500698>
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
