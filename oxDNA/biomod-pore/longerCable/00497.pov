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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.850531, 35.170990, 34.875378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170084, 35.012737, 35.056602>,  <24.361816, 34.917786, 35.165337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170084, 35.012737, 35.056602>,  <23.850531, 35.170990, 34.875378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.170084, 35.012737, 35.056602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480314, -0.033782, -0.876445,
		0.362055, 0.917787, 0.163040,
		0.798883, -0.395633, 0.453057,
		24.409748, 34.894047, 35.192520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510588, 35.590633, 34.732597>,  <23.850531, 35.170990, 34.875378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510588, 35.590633, 34.732597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586996, 35.202797, 34.793785>,  <24.632841, 34.970093, 34.830498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586996, 35.202797, 34.793785>,  <24.510588, 35.590633, 34.732597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586996, 35.202797, 34.793785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474927, -0.045093, -0.878869,
		0.859043, 0.240531, 0.451873,
		0.191019, -0.969593, 0.152971,
		24.644302, 34.911919, 34.839676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146839, 35.530472, 34.448334>,  <24.510588, 35.590633, 34.732597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146839, 35.530472, 34.448334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020559, 35.151443, 34.468143>,  <24.944792, 34.924026, 34.480030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020559, 35.151443, 34.468143>,  <25.146839, 35.530472, 34.448334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020559, 35.151443, 34.468143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472187, -0.202158, -0.858004,
		0.823027, -0.247487, 0.511249,
		-0.315698, -0.947566, 0.049522,
		24.925850, 34.867172, 34.483002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694315, 35.017189, 34.479240>,  <25.146839, 35.530472, 34.448334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694315, 35.017189, 34.479240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391348, 34.789253, 34.351742>,  <25.209568, 34.652493, 34.275242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391348, 34.789253, 34.351742>,  <25.694315, 35.017189, 34.479240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391348, 34.789253, 34.351742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545175, -0.283295, -0.789004,
		0.359311, -0.771376, 0.525238,
		-0.757416, -0.569844, -0.318744,
		25.164124, 34.618301, 34.256119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935509, 34.310616, 34.618458>,  <25.694315, 35.017189, 34.479240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935509, 34.310616, 34.618458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647749, 34.295155, 34.341049>,  <25.475094, 34.285877, 34.174603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647749, 34.295155, 34.341049>,  <25.935509, 34.310616, 34.618458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647749, 34.295155, 34.341049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591646, -0.557180, -0.582671,
		-0.363897, -0.829492, 0.423700,
		-0.719398, -0.038648, -0.693522,
		25.431929, 34.283562, 34.132992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820681, 33.636837, 34.331558>,  <25.935509, 34.310616, 34.618458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820681, 33.636837, 34.331558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745195, 33.929188, 34.069195>,  <25.699903, 34.104599, 33.911777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745195, 33.929188, 34.069195>,  <25.820681, 33.636837, 34.331558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745195, 33.929188, 34.069195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795741, -0.277597, -0.538271,
		-0.575485, -0.623510, -0.529199,
		-0.188713, 0.730873, -0.655906,
		25.688581, 34.148449, 33.872421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865490, 33.339607, 33.538223>,  <25.820681, 33.636837, 34.331558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865490, 33.339607, 33.538223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929035, 33.729839, 33.598904>,  <25.967163, 33.963978, 33.635311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929035, 33.729839, 33.598904>,  <25.865490, 33.339607, 33.538223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929035, 33.729839, 33.598904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913165, -0.086776, -0.398244,
		-0.375354, 0.201792, -0.904649,
		0.158864, 0.975577, 0.151698,
		25.976694, 34.022511, 33.644413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452290, 32.894363, 34.060661>,  <25.865490, 33.339607, 33.538223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452290, 32.894363, 34.060661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394094, 33.242676, 33.872799>,  <25.359177, 33.451664, 33.760082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394094, 33.242676, 33.872799>,  <25.452290, 32.894363, 34.060661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394094, 33.242676, 33.872799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136780, -0.452442, -0.881242,
		-0.979859, -0.192451, -0.053279,
		-0.145490, 0.870780, -0.469653,
		25.350447, 33.503910, 33.731903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066294, 32.790825, 33.484520>,  <25.452290, 32.894363, 34.060661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066294, 32.790825, 33.484520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195850, 33.144241, 33.349197>,  <25.273584, 33.356293, 33.268005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195850, 33.144241, 33.349197>,  <25.066294, 32.790825, 33.484520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195850, 33.144241, 33.349197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298984, -0.434842, -0.849424,
		-0.897610, 0.173973, -0.405006,
		0.323890, 0.883542, -0.338304,
		25.293018, 33.409306, 33.247707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.794098, 32.983536, 32.761063>,  <25.066294, 32.790825, 33.484520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.794098, 32.983536, 32.761063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.142666, 33.173042, 32.811932>,  <25.351807, 33.286747, 32.842453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.142666, 33.173042, 32.811932>,  <24.794098, 32.983536, 32.761063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.142666, 33.173042, 32.811932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246842, -0.199479, -0.948302,
		-0.423903, 0.857762, -0.290775,
		0.871421, 0.473764, 0.127172,
		25.404093, 33.315170, 32.850082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944895, 33.203495, 32.104259>,  <24.794098, 32.983536, 32.761063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944895, 33.203495, 32.104259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300119, 33.277077, 32.272789>,  <25.513254, 33.321224, 32.373905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300119, 33.277077, 32.272789>,  <24.944895, 33.203495, 32.104259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300119, 33.277077, 32.272789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448657, -0.146866, -0.881554,
		-0.100286, 0.971901, -0.212957,
		0.888059, 0.183952, 0.421322,
		25.566538, 33.332264, 32.399185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372562, 33.585556, 31.614038>,  <24.944895, 33.203495, 32.104259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372562, 33.585556, 31.614038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582788, 33.379398, 31.884785>,  <25.708923, 33.255703, 32.047234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582788, 33.379398, 31.884785>,  <25.372562, 33.585556, 31.614038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582788, 33.379398, 31.884785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407364, -0.546016, -0.732066,
		0.746884, 0.660480, -0.077013,
		0.525565, -0.515396, 0.676866,
		25.740458, 33.224781, 32.087845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693642, 33.485451, 30.882162>,  <25.372562, 33.585556, 31.614038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693642, 33.485451, 30.882162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058054, 33.616291, 30.982582>,  <26.276701, 33.694794, 31.042833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058054, 33.616291, 30.982582>,  <25.693642, 33.485451, 30.882162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058054, 33.616291, 30.982582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226992, -0.110428, 0.967616,
		0.344230, -0.938515, -0.026354,
		0.911032, 0.327100, 0.251048,
		26.331364, 33.714420, 31.057898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107536, 33.004837, 31.339460>,  <25.693642, 33.485451, 30.882162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107536, 33.004837, 31.339460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211599, 33.381313, 31.425699>,  <26.274036, 33.607197, 31.477444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211599, 33.381313, 31.425699>,  <26.107536, 33.004837, 31.339460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211599, 33.381313, 31.425699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115482, -0.191356, 0.974703,
		0.958636, -0.278473, 0.058908,
		0.260156, 0.941188, 0.215599,
		26.289646, 33.663670, 31.490379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738680, 33.089310, 31.698572>,  <26.107536, 33.004837, 31.339460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738680, 33.089310, 31.698572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448605, 33.356861, 31.763929>,  <26.274559, 33.517391, 31.803144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448605, 33.356861, 31.763929>,  <26.738680, 33.089310, 31.698572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448605, 33.356861, 31.763929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120412, -0.356842, 0.926372,
		0.677940, 0.652120, 0.339319,
		-0.725189, 0.668883, 0.163394,
		26.231049, 33.557526, 31.812948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905977, 33.199581, 32.458614>,  <26.738680, 33.089310, 31.698572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905977, 33.199581, 32.458614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538490, 33.328880, 32.367870>,  <26.317999, 33.406460, 32.313423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538490, 33.328880, 32.367870>,  <26.905977, 33.199581, 32.458614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538490, 33.328880, 32.367870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265173, -0.079256, 0.960938,
		0.292645, 0.942988, 0.158532,
		-0.918718, 0.323252, -0.226861,
		26.262875, 33.425858, 32.299812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673388, 33.459373, 33.070942>,  <26.905977, 33.199581, 32.458614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673388, 33.459373, 33.070942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334993, 33.439079, 32.858627>,  <26.131956, 33.426903, 32.731239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334993, 33.439079, 32.858627>,  <26.673388, 33.459373, 33.070942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334993, 33.439079, 32.858627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516501, 0.325174, 0.792141,
		0.132411, 0.944292, -0.301296,
		-0.845987, -0.050732, -0.530785,
		26.081198, 33.423859, 32.699390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376493, 34.105240, 33.085369>,  <26.673388, 33.459373, 33.070942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376493, 34.105240, 33.085369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084711, 33.845779, 32.998520>,  <25.909641, 33.690102, 32.946411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084711, 33.845779, 32.998520>,  <26.376493, 34.105240, 33.085369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084711, 33.845779, 32.998520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556822, 0.378739, 0.739261,
		-0.397293, 0.660155, -0.637459,
		-0.729457, -0.648654, -0.217119,
		25.865873, 33.651184, 32.933384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793949, 34.571846, 33.026352>,  <26.376493, 34.105240, 33.085369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793949, 34.571846, 33.026352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668100, 34.196774, 33.085358>,  <25.592590, 33.971729, 33.120762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668100, 34.196774, 33.085358>,  <25.793949, 34.571846, 33.026352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668100, 34.196774, 33.085358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598415, 0.316569, 0.735992,
		-0.736826, 0.143287, -0.660724,
		-0.314623, -0.937685, 0.147511,
		25.573713, 33.915466, 33.129612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011898, 34.607899, 33.050686>,  <25.793949, 34.571846, 33.026352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011898, 34.607899, 33.050686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120869, 34.291027, 33.269127>,  <25.186251, 34.100903, 33.400192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120869, 34.291027, 33.269127>,  <25.011898, 34.607899, 33.050686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120869, 34.291027, 33.269127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480641, 0.379641, 0.790479,
		-0.833527, -0.477828, -0.277331,
		0.272426, -0.792183, 0.546105,
		25.202597, 34.053371, 33.432957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377054, 34.209736, 33.287567>,  <25.011898, 34.607899, 33.050686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377054, 34.209736, 33.287567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695475, 34.214531, 33.529613>,  <24.886526, 34.217407, 33.674839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695475, 34.214531, 33.529613>,  <24.377054, 34.209736, 33.287567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695475, 34.214531, 33.529613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549199, 0.434452, 0.713885,
		-0.254335, -0.900615, 0.352429,
		0.796049, 0.011988, 0.605113,
		24.934290, 34.218128, 33.711147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.164474, 33.872204, 33.931351>,  <24.377054, 34.209736, 33.287567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.164474, 33.872204, 33.931351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506861, 34.043098, 34.047829>,  <24.712292, 34.145634, 34.117714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506861, 34.043098, 34.047829>,  <24.164474, 33.872204, 33.931351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506861, 34.043098, 34.047829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414111, 0.229292, 0.880873,
		0.309577, -0.874580, 0.373191,
		0.855964, 0.427240, 0.291190,
		24.763651, 34.171268, 34.135185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.348831, 33.627300, 34.600269>,  <24.164474, 33.872204, 33.931351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.348831, 33.627300, 34.600269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.537153, 33.979763, 34.582813>,  <24.650146, 34.191242, 34.572342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.537153, 33.979763, 34.582813>,  <24.348831, 33.627300, 34.600269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.537153, 33.979763, 34.582813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231745, 0.171242, 0.957586,
		0.851256, -0.440723, 0.284826,
		0.470804, 0.881158, -0.043636,
		24.678394, 34.244110, 34.569721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914110, 33.669949, 35.070377>,  <24.348831, 33.627300, 34.600269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914110, 33.669949, 35.070377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818800, 34.053936, 35.011486>,  <24.761614, 34.284328, 34.976151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818800, 34.053936, 35.011486>,  <24.914110, 33.669949, 35.070377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818800, 34.053936, 35.011486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114201, 0.122853, 0.985832,
		0.964459, 0.251716, 0.080357,
		-0.238277, 0.959972, -0.147233,
		24.747316, 34.341927, 34.967316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349306, 34.099125, 35.542679>,  <24.914110, 33.669949, 35.070377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349306, 34.099125, 35.542679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977785, 34.227207, 35.468063>,  <24.754873, 34.304054, 35.423294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977785, 34.227207, 35.468063>,  <25.349306, 34.099125, 35.542679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977785, 34.227207, 35.468063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098365, 0.272298, 0.957172,
		0.357285, 0.907372, -0.221414,
		-0.928801, 0.320204, -0.186542,
		24.699144, 34.323269, 35.412102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184479, 34.872253, 35.844509>,  <25.349306, 34.099125, 35.542679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184479, 34.872253, 35.844509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895849, 34.595760, 35.860126>,  <24.722672, 34.429863, 35.869495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895849, 34.595760, 35.860126>,  <25.184479, 34.872253, 35.844509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895849, 34.595760, 35.860126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009112, 0.046908, 0.998858,
		-0.692279, 0.721104, -0.027549,
		-0.721572, -0.691237, 0.039044,
		24.679377, 34.388390, 35.871841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364054, 35.315296, 36.545551>,  <25.184479, 34.872253, 35.844509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364054, 35.315296, 36.545551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417631, 35.169098, 36.914001>,  <25.449778, 35.081379, 37.135071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417631, 35.169098, 36.914001>,  <25.364054, 35.315296, 36.545551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417631, 35.169098, 36.914001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059493, 0.924860, 0.375626,
		-0.989201, -0.105114, 0.102135,
		0.133944, -0.365494, 0.921126,
		25.457815, 35.059448, 37.190338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964474, 35.533428, 37.055977>,  <25.364054, 35.315296, 36.545551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964474, 35.533428, 37.055977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280235, 35.452412, 37.287777>,  <25.469692, 35.403801, 37.426857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280235, 35.452412, 37.287777>,  <24.964474, 35.533428, 37.055977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280235, 35.452412, 37.287777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087942, 0.896951, 0.433295,
		-0.607543, -0.393006, 0.690244,
		0.789403, -0.202544, 0.579499,
		25.517056, 35.391647, 37.461628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.741779, 35.687069, 37.789139>,  <24.964474, 35.533428, 37.055977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.741779, 35.687069, 37.789139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131792, 35.731651, 37.712315>,  <25.365801, 35.758400, 37.666222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131792, 35.731651, 37.712315>,  <24.741779, 35.687069, 37.789139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131792, 35.731651, 37.712315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066944, 0.972210, 0.224337,
		0.211724, -0.205879, 0.955399,
		0.975034, 0.111455, -0.192058,
		25.424303, 35.765087, 37.654697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180687, 35.878918, 38.241756>,  <24.741779, 35.687069, 37.789139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180687, 35.878918, 38.241756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341635, 36.021496, 37.904461>,  <25.438204, 36.107040, 37.702084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341635, 36.021496, 37.904461>,  <25.180687, 35.878918, 38.241756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341635, 36.021496, 37.904461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098414, 0.932593, 0.347252,
		0.910173, -0.056737, 0.410324,
		0.402368, 0.356442, -0.843238,
		25.462345, 36.128429, 37.651489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779816, 36.178509, 38.387436>,  <25.180687, 35.878918, 38.241756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779816, 36.178509, 38.387436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650244, 36.362251, 38.056602>,  <25.572500, 36.472496, 37.858105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650244, 36.362251, 38.056602>,  <25.779816, 36.178509, 38.387436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650244, 36.362251, 38.056602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026845, 0.878327, 0.477305,
		0.945700, 0.132411, -0.296849,
		-0.323931, 0.459356, -0.827079,
		25.553064, 36.500057, 37.808479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085394, 36.816334, 38.336536>,  <25.779816, 36.178509, 38.387436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085394, 36.816334, 38.336536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807003, 36.873692, 38.055096>,  <25.639969, 36.908108, 37.886230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807003, 36.873692, 38.055096>,  <26.085394, 36.816334, 38.336536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807003, 36.873692, 38.055096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316015, 0.818698, 0.479446,
		0.644788, 0.556031, -0.524478,
		-0.695976, 0.143398, -0.703601,
		25.598209, 36.916710, 37.844017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160707, 37.567322, 38.060776>,  <26.085394, 36.816334, 38.336536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160707, 37.567322, 38.060776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779858, 37.496384, 37.961166>,  <25.551348, 37.453823, 37.901402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779858, 37.496384, 37.961166>,  <26.160707, 37.567322, 38.060776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779858, 37.496384, 37.961166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236677, 0.943179, 0.233233,
		0.193509, 0.281004, -0.939995,
		-0.952123, -0.177343, -0.249021,
		25.494221, 37.443180, 37.886459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979244, 38.069565, 37.494377>,  <26.160707, 37.567322, 38.060776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979244, 38.069565, 37.494377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670948, 37.950146, 37.719528>,  <25.485971, 37.878494, 37.854618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670948, 37.950146, 37.719528>,  <25.979244, 38.069565, 37.494377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670948, 37.950146, 37.719528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172838, 0.948267, 0.266301,
		-0.613260, 0.107962, -0.782468,
		-0.770739, -0.298552, 0.562874,
		25.439726, 37.860580, 37.888390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326937, 38.422684, 37.321068>,  <25.979244, 38.069565, 37.494377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326937, 38.422684, 37.321068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292435, 38.312210, 37.703957>,  <25.271734, 38.245926, 37.933689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292435, 38.312210, 37.703957>,  <25.326937, 38.422684, 37.321068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292435, 38.312210, 37.703957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435760, 0.874485, 0.213047,
		-0.895920, -0.398745, -0.195779,
		-0.086255, -0.276186, 0.957226,
		25.266558, 38.229355, 37.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.586744, 38.450378, 37.169540>,  <25.326937, 38.422684, 37.321068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.586744, 38.450378, 37.169540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577673, 38.273876, 37.528378>,  <24.572229, 38.167976, 37.743679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577673, 38.273876, 37.528378>,  <24.586744, 38.450378, 37.169540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577673, 38.273876, 37.528378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167005, 0.883046, 0.438565,
		-0.985695, 0.159766, 0.053665,
		-0.022679, -0.441254, 0.897096,
		24.570869, 38.141499, 37.797504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406328, 39.072578, 37.532070>,  <24.586744, 38.450378, 37.169540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406328, 39.072578, 37.532070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502459, 38.846958, 37.848068>,  <24.560137, 38.711586, 38.037666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502459, 38.846958, 37.848068>,  <24.406328, 39.072578, 37.532070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502459, 38.846958, 37.848068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014512, 0.815845, 0.578088,
		-0.970584, -0.127464, 0.204253,
		0.240324, -0.564048, 0.789996,
		24.574556, 38.677742, 38.085068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.972258, 39.217743, 38.186245>,  <24.406328, 39.072578, 37.532070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.972258, 39.217743, 38.186245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329557, 39.076591, 38.297657>,  <24.543938, 38.991901, 38.364506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329557, 39.076591, 38.297657>,  <23.972258, 39.217743, 38.186245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.329557, 39.076591, 38.297657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148270, 0.816151, 0.558492,
		-0.424405, -0.457575, 0.781349,
		0.893251, -0.352878, 0.278533,
		24.597532, 38.970730, 38.381218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983871, 39.385635, 38.875973>,  <23.972258, 39.217743, 38.186245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.983871, 39.385635, 38.875973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355793, 39.316860, 38.745800>,  <24.578945, 39.275597, 38.667698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355793, 39.316860, 38.745800>,  <23.983871, 39.385635, 38.875973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355793, 39.316860, 38.745800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314381, 0.830790, 0.459295,
		0.191396, -0.529363, 0.826524,
		0.929802, -0.171937, -0.325432,
		24.634733, 39.265278, 38.648170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528387, 39.905365, 39.043137>,  <23.983871, 39.385635, 38.875973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528387, 39.905365, 39.043137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859793, 39.735325, 39.188931>,  <25.058636, 39.633301, 39.276409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859793, 39.735325, 39.188931>,  <24.528387, 39.905365, 39.043137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859793, 39.735325, 39.188931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552629, -0.725763, 0.409718,
		0.090359, -0.540884, -0.836230,
		0.828514, -0.425103, 0.364487,
		25.108347, 39.607796, 39.298275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082178, 40.105160, 38.641582>,  <24.528387, 39.905365, 39.043137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082178, 40.105160, 38.641582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364584, 39.914883, 38.851444>,  <25.534027, 39.800716, 38.977360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364584, 39.914883, 38.851444>,  <25.082178, 40.105160, 38.641582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364584, 39.914883, 38.851444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210516, -0.848306, -0.485859,
		0.676184, 0.232577, -0.699059,
		0.706016, -0.475694, 0.524650,
		25.576389, 39.772175, 39.008839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530243, 39.691936, 38.174648>,  <25.082178, 40.105160, 38.641582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530243, 39.691936, 38.174648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489031, 39.543003, 38.543594>,  <25.464304, 39.453644, 38.764961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489031, 39.543003, 38.543594>,  <25.530243, 39.691936, 38.174648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489031, 39.543003, 38.543594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300766, -0.872229, -0.385690,
		0.948117, -0.317152, -0.022120,
		-0.103029, -0.372332, 0.922363,
		25.458122, 39.431305, 38.820305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933992, 39.012306, 38.300545>,  <25.530243, 39.691936, 38.174648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933992, 39.012306, 38.300545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579025, 39.038383, 38.483074>,  <25.366045, 39.054031, 38.592594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579025, 39.038383, 38.483074>,  <25.933992, 39.012306, 38.300545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579025, 39.038383, 38.483074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284096, -0.856941, -0.430048,
		0.363009, -0.511274, 0.778988,
		-0.887420, 0.065197, 0.456329,
		25.312799, 39.057941, 38.619972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795574, 38.508396, 38.804569>,  <25.933992, 39.012306, 38.300545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795574, 38.508396, 38.804569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444336, 38.633427, 38.659657>,  <25.233593, 38.708443, 38.572708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444336, 38.633427, 38.659657>,  <25.795574, 38.508396, 38.804569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444336, 38.633427, 38.659657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164669, -0.908298, -0.384550,
		-0.449261, -0.278014, 0.849042,
		-0.878094, 0.312574, -0.362283,
		25.180908, 38.727200, 38.550972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383057, 37.983646, 38.989902>,  <25.795574, 38.508396, 38.804569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.383057, 37.983646, 38.989902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191074, 38.174755, 38.695591>,  <25.075886, 38.289421, 38.519005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191074, 38.174755, 38.695591>,  <25.383057, 37.983646, 38.989902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191074, 38.174755, 38.695591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368483, -0.870915, -0.325157,
		-0.796155, 0.115062, 0.594052,
		-0.479955, 0.477774, -0.735782,
		25.047089, 38.318089, 38.474857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799000, 37.595512, 38.930580>,  <25.383057, 37.983646, 38.989902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799000, 37.595512, 38.930580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860357, 37.814030, 38.601208>,  <24.897171, 37.945141, 38.403584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860357, 37.814030, 38.601208>,  <24.799000, 37.595512, 38.930580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860357, 37.814030, 38.601208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084511, -0.822984, -0.561743,
		-0.984545, 0.155756, -0.080073,
		0.153394, 0.546295, -0.823427,
		24.906376, 37.977917, 38.354179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.371395, 37.313984, 38.358421>,  <24.799000, 37.595512, 38.930580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.371395, 37.313984, 38.358421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685753, 37.506840, 38.203548>,  <24.874367, 37.622555, 38.110622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685753, 37.506840, 38.203548>,  <24.371395, 37.313984, 38.358421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685753, 37.506840, 38.203548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168214, -0.769227, -0.616436,
		-0.595042, 0.419323, -0.685634,
		0.785894, 0.482138, -0.387186,
		24.921520, 37.651482, 38.087391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.286789, 37.177395, 37.721607>,  <24.371395, 37.313984, 38.358421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.286789, 37.177395, 37.721607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673920, 37.274189, 37.749180>,  <24.906199, 37.332264, 37.765724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673920, 37.274189, 37.749180>,  <24.286789, 37.177395, 37.721607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673920, 37.274189, 37.749180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246743, -0.859124, -0.448357,
		-0.049272, 0.450942, -0.891192,
		0.967828, 0.241987, 0.068936,
		24.964268, 37.346786, 37.769859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608601, 37.089573, 37.018833>,  <24.286789, 37.177395, 37.721607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608601, 37.089573, 37.018833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926710, 37.039410, 37.256088>,  <25.117577, 37.009312, 37.398441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926710, 37.039410, 37.256088>,  <24.608601, 37.089573, 37.018833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926710, 37.039410, 37.256088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280322, -0.791434, -0.543187,
		0.537549, 0.598252, -0.594252,
		0.795274, -0.125407, 0.593138,
		25.165293, 37.001789, 37.434029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181705, 36.915352, 36.674545>,  <24.608601, 37.089573, 37.018833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181705, 36.915352, 36.674545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298248, 36.773510, 37.029930>,  <25.368174, 36.688404, 37.243160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298248, 36.773510, 37.029930>,  <25.181705, 36.915352, 36.674545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298248, 36.773510, 37.029930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264868, -0.862541, -0.431124,
		0.919214, 0.360937, -0.157384,
		0.291359, -0.354610, 0.888460,
		25.385656, 36.667126, 37.296467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753086, 36.621086, 36.463112>,  <25.181705, 36.915352, 36.674545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753086, 36.621086, 36.463112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668919, 36.471943, 36.824600>,  <25.618418, 36.382458, 37.041492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668919, 36.471943, 36.824600>,  <25.753086, 36.621086, 36.463112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668919, 36.471943, 36.824600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405380, -0.874470, -0.266400,
		0.889602, 0.310294, 0.335152,
		-0.210418, -0.372854, 0.903717,
		25.605793, 36.360088, 37.095715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289156, 36.274769, 36.705414>,  <25.753086, 36.621086, 36.463112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289156, 36.274769, 36.705414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984001, 36.108074, 36.903133>,  <25.800909, 36.008057, 37.021767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984001, 36.108074, 36.903133>,  <26.289156, 36.274769, 36.705414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984001, 36.108074, 36.903133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362572, -0.908768, -0.206595,
		0.535300, 0.021610, 0.844386,
		-0.762886, -0.416741, 0.494299,
		25.755135, 35.983051, 37.051422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907726, 35.863895, 36.873501>,  <26.289156, 36.274769, 36.705414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907726, 35.863895, 36.873501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018986, 35.755116, 37.241997>,  <27.085741, 35.689846, 37.463093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018986, 35.755116, 37.241997>,  <26.907726, 35.863895, 36.873501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018986, 35.755116, 37.241997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395833, -0.906313, -0.148030,
		0.875185, -0.323481, -0.359737,
		0.278149, -0.271950, 0.921236,
		27.102430, 35.673531, 37.518368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047243, 35.133564, 36.864502>,  <26.907726, 35.863895, 36.873501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047243, 35.133564, 36.864502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953058, 35.216560, 37.244293>,  <26.896547, 35.266357, 37.472168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953058, 35.216560, 37.244293>,  <27.047243, 35.133564, 36.864502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953058, 35.216560, 37.244293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493514, -0.867145, 0.067111,
		0.837259, -0.452778, 0.306578,
		-0.235461, 0.207490, 0.949477,
		26.882420, 35.278809, 37.529137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536684, 35.550667, 37.274399>,  <27.047243, 35.133564, 36.864502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536684, 35.550667, 37.274399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562593, 35.941395, 37.192783>,  <27.578138, 36.175831, 37.143814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562593, 35.941395, 37.192783>,  <27.536684, 35.550667, 37.274399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562593, 35.941395, 37.192783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611809, 0.122661, 0.781438,
		0.788349, -0.175451, -0.589680,
		0.064773, 0.976817, -0.204042,
		27.582026, 36.234440, 37.131569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319351, 35.719852, 37.371704>,  <27.536684, 35.550667, 37.274399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319351, 35.719852, 37.371704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100216, 36.053394, 37.398701>,  <27.968735, 36.253521, 37.414898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100216, 36.053394, 37.398701>,  <28.319351, 35.719852, 37.371704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100216, 36.053394, 37.398701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456744, 0.230537, 0.859208,
		0.700898, 0.501532, -0.507156,
		-0.547838, 0.833858, 0.067489,
		27.935865, 36.303551, 37.418949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676262, 36.299335, 37.211178>,  <28.319351, 35.719852, 37.371704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676262, 36.299335, 37.211178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403782, 36.367977, 37.495857>,  <28.240294, 36.409164, 37.666664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403782, 36.367977, 37.495857>,  <28.676262, 36.299335, 37.211178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403782, 36.367977, 37.495857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730414, 0.225177, 0.644819,
		-0.049603, 0.959086, -0.278735,
		-0.681202, 0.171607, 0.711699,
		28.199421, 36.419460, 37.709366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468363, 36.986122, 37.289188>,  <28.676262, 36.299335, 37.211178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468363, 36.986122, 37.289188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719810, 36.991123, 36.978142>,  <28.870678, 36.994125, 36.791515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719810, 36.991123, 36.978142>,  <28.468363, 36.986122, 37.289188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719810, 36.991123, 36.978142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717423, -0.376682, -0.586016,
		-0.300242, 0.926258, -0.227817,
		0.628617, 0.012506, -0.777615,
		28.908396, 36.994873, 36.744858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354136, 37.474102, 36.829601>,  <28.468363, 36.986122, 37.289188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354136, 37.474102, 36.829601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530325, 37.149570, 36.675861>,  <28.636040, 36.954853, 36.583618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530325, 37.149570, 36.675861>,  <28.354136, 37.474102, 36.829601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530325, 37.149570, 36.675861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846749, -0.233181, -0.478166,
		0.298325, 0.536072, -0.789702,
		0.440474, -0.811329, -0.384354,
		28.662468, 36.906174, 36.560555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331903, 37.596546, 36.099720>,  <28.354136, 37.474102, 36.829601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331903, 37.596546, 36.099720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457457, 37.744797, 35.750065>,  <28.532787, 37.833748, 35.540272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457457, 37.744797, 35.750065>,  <28.331903, 37.596546, 36.099720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457457, 37.744797, 35.750065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163762, 0.885735, 0.434345,
		0.935233, -0.279483, 0.217322,
		0.313882, 0.370625, -0.874137,
		28.551620, 37.855984, 35.487823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117729, 37.709427, 35.956997>,  <28.331903, 37.596546, 36.099720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117729, 37.709427, 35.956997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909422, 37.970310, 35.736660>,  <28.784437, 38.126839, 35.604458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909422, 37.970310, 35.736660>,  <29.117729, 37.709427, 35.956997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909422, 37.970310, 35.736660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428000, 0.757756, 0.492568,
		0.738657, 0.020756, -0.673762,
		-0.520771, 0.652208, -0.550838,
		28.753191, 38.165974, 35.571407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532158, 38.218567, 35.609264>,  <29.117729, 37.709427, 35.956997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532158, 38.218567, 35.609264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197693, 38.415367, 35.706230>,  <28.997013, 38.533447, 35.764408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197693, 38.415367, 35.706230>,  <29.532158, 38.218567, 35.609264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197693, 38.415367, 35.706230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538668, 0.653420, 0.531865,
		0.103283, 0.575305, -0.811392,
		-0.836164, 0.492003, 0.242411,
		28.946844, 38.562969, 35.778954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195696, 38.570526, 35.773857>,  <29.532158, 38.218567, 35.609264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195696, 38.570526, 35.773857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464098, 38.498287, 35.486210>,  <30.625139, 38.454945, 35.313622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464098, 38.498287, 35.486210>,  <30.195696, 38.570526, 35.773857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464098, 38.498287, 35.486210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739524, 0.093144, 0.666654,
		-0.053414, -0.979137, 0.196055,
		0.671007, -0.180596, -0.719120,
		30.665400, 38.444107, 35.270473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887440, 38.342178, 35.983120>,  <30.195696, 38.570526, 35.773857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887440, 38.342178, 35.983120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041916, 37.983231, 36.068523>,  <31.134602, 37.767864, 36.119766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041916, 37.983231, 36.068523>,  <30.887440, 38.342178, 35.983120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041916, 37.983231, 36.068523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290338, -0.337960, -0.895258,
		0.875534, 0.283751, -0.391058,
		0.386193, -0.897367, 0.213512,
		31.157774, 37.714020, 36.132576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146246, 38.030949, 35.385563>,  <30.887440, 38.342178, 35.983120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146246, 38.030949, 35.385563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131069, 37.713768, 35.628807>,  <31.121964, 37.523460, 35.774754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131069, 37.713768, 35.628807>,  <31.146246, 38.030949, 35.385563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131069, 37.713768, 35.628807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385900, -0.549710, -0.740879,
		0.921760, -0.262778, -0.285142,
		-0.037942, -0.792949, 0.608106,
		31.119686, 37.475883, 35.811237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473696, 37.396088, 35.006287>,  <31.146246, 38.030949, 35.385563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473696, 37.396088, 35.006287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191759, 37.275501, 35.263134>,  <31.022596, 37.203148, 35.417244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191759, 37.275501, 35.263134>,  <31.473696, 37.396088, 35.006287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191759, 37.275501, 35.263134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523293, -0.390163, -0.757587,
		0.478918, -0.869995, 0.117247,
		-0.704842, -0.301467, 0.642118,
		30.980307, 37.185062, 35.455769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442863, 36.599586, 35.271973>,  <31.473696, 37.396088, 35.006287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442863, 36.599586, 35.271973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096848, 36.799736, 35.257416>,  <30.889236, 36.919827, 35.248680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096848, 36.799736, 35.257416>,  <31.442863, 36.599586, 35.271973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096848, 36.799736, 35.257416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240273, -0.476871, -0.845496,
		-0.440415, -0.722649, 0.532741,
		-0.865046, 0.500372, -0.036388,
		30.837336, 36.949848, 35.246498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956127, 36.065033, 35.053288>,  <31.442863, 36.599586, 35.271973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956127, 36.065033, 35.053288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853882, 36.444817, 34.980423>,  <30.792536, 36.672688, 34.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853882, 36.444817, 34.980423>,  <30.956127, 36.065033, 35.053288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853882, 36.444817, 34.980423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438050, -0.281709, -0.853669,
		-0.861843, -0.138414, 0.487921,
		-0.255612, 0.949463, -0.182157,
		30.777199, 36.729656, 34.925777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302921, 35.946800, 34.744045>,  <30.956127, 36.065033, 35.053288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302921, 35.946800, 34.744045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440367, 36.310799, 34.651234>,  <30.522833, 36.529198, 34.595547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440367, 36.310799, 34.651234>,  <30.302921, 35.946800, 34.744045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440367, 36.310799, 34.651234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425790, -0.069252, -0.902168,
		-0.837039, 0.408790, 0.363672,
		0.343612, 0.909997, -0.232025,
		30.543449, 36.583797, 34.581627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695518, 36.321354, 34.565964>,  <30.302921, 35.946800, 34.744045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695518, 36.321354, 34.565964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020353, 36.481739, 34.396381>,  <30.215254, 36.577969, 34.294632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020353, 36.481739, 34.396381>,  <29.695518, 36.321354, 34.565964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020353, 36.481739, 34.396381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494729, 0.087816, -0.864599,
		-0.309443, 0.911875, 0.269683,
		0.812089, 0.400964, -0.423957,
		30.263981, 36.602028, 34.269196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511238, 36.862553, 34.064690>,  <29.695518, 36.321354, 34.565964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511238, 36.862553, 34.064690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887257, 36.814774, 33.936913>,  <30.112867, 36.786106, 33.860245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887257, 36.814774, 33.936913>,  <29.511238, 36.862553, 34.064690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887257, 36.814774, 33.936913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285863, 0.234868, -0.929042,
		0.186003, 0.964660, 0.186641,
		0.940045, -0.119451, -0.319447,
		30.169270, 36.778938, 33.841080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490051, 37.324818, 33.595577>,  <29.511238, 36.862553, 34.064690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490051, 37.324818, 33.595577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811407, 37.110596, 33.491467>,  <30.004221, 36.982063, 33.429001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811407, 37.110596, 33.491467>,  <29.490051, 37.324818, 33.595577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811407, 37.110596, 33.491467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205549, 0.160812, -0.965344,
		0.558854, 0.829046, 0.019111,
		0.803388, -0.535558, -0.260280,
		30.052423, 36.949928, 33.413383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882421, 37.706371, 33.109848>,  <29.490051, 37.324818, 33.595577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882421, 37.706371, 33.109848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029694, 37.338234, 33.057064>,  <30.118057, 37.117352, 33.025394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029694, 37.338234, 33.057064>,  <29.882421, 37.706371, 33.109848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029694, 37.338234, 33.057064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107214, 0.183014, -0.977247,
		0.923552, 0.345654, 0.166055,
		0.368180, -0.920342, -0.131964,
		30.140148, 37.062130, 33.017475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623472, 37.738052, 32.776016>,  <29.882421, 37.706371, 33.109848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623472, 37.738052, 32.776016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437546, 37.391796, 32.701595>,  <30.325991, 37.184044, 32.656944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437546, 37.391796, 32.701595>,  <30.623472, 37.738052, 32.776016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437546, 37.391796, 32.701595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174223, 0.116604, -0.977778,
		0.868098, -0.486900, 0.096615,
		-0.464814, -0.865639, -0.186053,
		30.298101, 37.132103, 32.645779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889957, 37.554501, 32.182858>,  <30.623472, 37.738052, 32.776016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889957, 37.554501, 32.182858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581268, 37.300117, 32.183281>,  <30.396055, 37.147488, 32.183537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581268, 37.300117, 32.183281>,  <30.889957, 37.554501, 32.182858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581268, 37.300117, 32.183281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025316, 0.029054, -0.999257,
		0.635455, -0.771177, -0.038521,
		-0.771723, -0.635958, 0.001061,
		30.349751, 37.109329, 32.183598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940174, 37.122997, 31.595272>,  <30.889957, 37.554501, 32.182858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940174, 37.122997, 31.595272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552303, 37.089657, 31.687166>,  <30.319580, 37.069653, 31.742302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552303, 37.089657, 31.687166>,  <30.940174, 37.122997, 31.595272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552303, 37.089657, 31.687166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227947, -0.030481, -0.973196,
		0.088120, -0.996054, 0.010557,
		-0.969678, -0.083352, 0.229734,
		30.261400, 37.064651, 31.756086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708437, 36.367191, 31.497105>,  <30.940174, 37.122997, 31.595272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708437, 36.367191, 31.497105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398352, 36.619190, 31.478577>,  <30.212301, 36.770390, 31.467461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398352, 36.619190, 31.478577>,  <30.708437, 36.367191, 31.497105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398352, 36.619190, 31.478577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095122, -0.188905, -0.977377,
		-0.624498, -0.753269, 0.206368,
		-0.775212, 0.630000, -0.046319,
		30.165789, 36.808189, 31.464682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274708, 36.011093, 31.133898>,  <30.708437, 36.367191, 31.497105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274708, 36.011093, 31.133898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130371, 36.383053, 31.105396>,  <30.043770, 36.606228, 31.088295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130371, 36.383053, 31.105396>,  <30.274708, 36.011093, 31.133898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130371, 36.383053, 31.105396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063039, -0.100548, -0.992933,
		-0.930495, -0.353799, 0.094902,
		-0.360841, 0.929901, -0.071256,
		30.022120, 36.662022, 31.084019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680204, 36.025425, 30.742517>,  <30.274708, 36.011093, 31.133898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680204, 36.025425, 30.742517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776342, 36.407040, 30.670900>,  <29.834026, 36.636009, 30.627930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776342, 36.407040, 30.670900>,  <29.680204, 36.025425, 30.742517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776342, 36.407040, 30.670900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210397, -0.128863, -0.969086,
		-0.947611, 0.270587, 0.169754,
		0.240347, 0.954032, -0.179043,
		29.848446, 36.693249, 30.617188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077168, 36.231918, 30.415140>,  <29.680204, 36.025425, 30.742517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077168, 36.231918, 30.415140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382626, 36.480640, 30.345615>,  <29.565901, 36.629871, 30.303902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382626, 36.480640, 30.345615>,  <29.077168, 36.231918, 30.415140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382626, 36.480640, 30.345615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295051, 0.096643, -0.950581,
		-0.574277, 0.777188, 0.257265,
		0.763643, 0.621803, -0.173810,
		29.611719, 36.667183, 30.293472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739849, 36.856468, 30.072733>,  <29.077168, 36.231918, 30.415140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739849, 36.856468, 30.072733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127203, 36.874828, 29.974649>,  <29.359615, 36.885845, 29.915800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127203, 36.874828, 29.974649>,  <28.739849, 36.856468, 30.072733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127203, 36.874828, 29.974649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249463, 0.172474, -0.952901,
		-0.001444, 0.983944, 0.178471,
		0.968383, 0.045898, -0.245209,
		29.417719, 36.888599, 29.901087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844458, 37.455936, 29.680189>,  <28.739849, 36.856468, 30.072733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844458, 37.455936, 29.680189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155333, 37.223217, 29.584280>,  <29.341858, 37.083584, 29.526733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155333, 37.223217, 29.584280>,  <28.844458, 37.455936, 29.680189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155333, 37.223217, 29.584280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154305, 0.193204, -0.968949,
		0.610059, 0.790052, 0.060381,
		0.777186, -0.581799, -0.239775,
		29.388489, 37.048676, 29.512348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200415, 37.881630, 29.182566>,  <28.844458, 37.455936, 29.680189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200415, 37.881630, 29.182566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358461, 37.522114, 29.106609>,  <29.453289, 37.306404, 29.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358461, 37.522114, 29.106609>,  <29.200415, 37.881630, 29.182566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358461, 37.522114, 29.106609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191561, 0.121552, -0.973925,
		0.898437, 0.421187, -0.124147,
		0.395115, -0.898792, -0.189890,
		29.476995, 37.252476, 29.049643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638723, 38.035915, 28.666204>,  <29.200415, 37.881630, 29.182566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638723, 38.035915, 28.666204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549664, 37.647400, 28.632671>,  <29.496227, 37.414291, 28.612553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549664, 37.647400, 28.632671>,  <29.638723, 38.035915, 28.666204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549664, 37.647400, 28.632671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415522, 0.172333, -0.893108,
		0.881913, -0.164015, -0.441961,
		-0.222648, -0.971288, -0.083831,
		29.482870, 37.356014, 28.607521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747383, 37.787605, 27.979259>,  <29.638723, 38.035915, 28.666204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747383, 37.787605, 27.979259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483173, 37.517418, 28.110378>,  <29.324648, 37.355305, 28.189049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483173, 37.517418, 28.110378>,  <29.747383, 37.787605, 27.979259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483173, 37.517418, 28.110378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382693, -0.072728, -0.921008,
		0.645949, -0.733796, -0.210457,
		-0.660526, -0.675465, 0.327798,
		29.285015, 37.314777, 28.208717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828539, 37.247311, 27.420610>,  <29.747383, 37.787605, 27.979259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828539, 37.247311, 27.420610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474527, 37.184055, 27.595751>,  <29.262119, 37.146103, 27.700834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474527, 37.184055, 27.595751>,  <29.828539, 37.247311, 27.420610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474527, 37.184055, 27.595751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419528, -0.136740, -0.897384,
		0.201785, -0.977903, 0.054674,
		-0.885030, -0.158141, 0.437850,
		29.209019, 37.136612, 27.727106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521942, 36.629681, 27.061930>,  <29.828539, 37.247311, 27.420610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521942, 36.629681, 27.061930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229362, 36.843170, 27.231695>,  <29.053814, 36.971264, 27.333555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229362, 36.843170, 27.231695>,  <29.521942, 36.629681, 27.061930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229362, 36.843170, 27.231695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524801, -0.043206, -0.850127,
		-0.435392, -0.844557, 0.311700,
		-0.731449, 0.533720, 0.424413,
		29.009928, 37.003284, 27.359018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990046, 36.296623, 26.758553>,  <29.521942, 36.629681, 27.061930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990046, 36.296623, 26.758553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819128, 36.615326, 26.929478>,  <28.716578, 36.806549, 27.032034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819128, 36.615326, 26.929478>,  <28.990046, 36.296623, 26.758553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819128, 36.615326, 26.929478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620183, 0.085606, -0.779772,
		-0.657869, -0.598206, 0.457556,
		-0.427295, 0.796756, 0.427315,
		28.690939, 36.854351, 27.057673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301891, 36.193901, 26.602575>,  <28.990046, 36.296623, 26.758553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301891, 36.193901, 26.602575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304209, 36.587315, 26.674822>,  <28.305599, 36.823364, 26.718170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304209, 36.587315, 26.674822>,  <28.301891, 36.193901, 26.602575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304209, 36.587315, 26.674822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535204, 0.155622, -0.830264,
		-0.844703, -0.091856, 0.527294,
		0.005794, 0.983537, 0.180616,
		28.305946, 36.882374, 26.729006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590494, 36.422611, 26.494234>,  <28.301891, 36.193901, 26.602575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590494, 36.422611, 26.494234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833891, 36.736931, 26.449951>,  <27.979929, 36.925522, 26.423382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833891, 36.736931, 26.449951>,  <27.590494, 36.422611, 26.494234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833891, 36.736931, 26.449951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319139, 0.114592, -0.940754,
		-0.726560, 0.607770, 0.320508,
		0.608490, 0.785801, -0.110706,
		28.016438, 36.972672, 26.416740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143839, 36.869320, 26.151672>,  <27.590494, 36.422611, 26.494234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143839, 36.869320, 26.151672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502474, 37.030262, 26.077658>,  <27.717655, 37.126827, 26.033249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502474, 37.030262, 26.077658>,  <27.143839, 36.869320, 26.151672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502474, 37.030262, 26.077658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310247, 0.272489, -0.910767,
		-0.316031, 0.873991, 0.369140,
		0.896589, 0.402355, -0.185038,
		27.771450, 37.150967, 26.022146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049637, 37.610741, 25.809740>,  <27.143839, 36.869320, 26.151672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049637, 37.610741, 25.809740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407957, 37.465580, 25.707102>,  <27.622950, 37.378483, 25.645519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407957, 37.465580, 25.707102>,  <27.049637, 37.610741, 25.809740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407957, 37.465580, 25.707102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217166, 0.146326, -0.965105,
		0.387784, 0.920267, 0.052269,
		0.895802, -0.362902, -0.256594,
		27.676699, 37.356709, 25.630123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298840, 38.147068, 25.342911>,  <27.049637, 37.610741, 25.809740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298840, 38.147068, 25.342911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515867, 37.814922, 25.292137>,  <27.646084, 37.615635, 25.261673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515867, 37.814922, 25.292137>,  <27.298840, 38.147068, 25.342911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515867, 37.814922, 25.292137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223563, 0.002917, -0.974685,
		0.809715, 0.557211, -0.184056,
		0.542569, -0.830366, -0.126934,
		27.678638, 37.565811, 25.254057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721502, 38.305641, 24.882524>,  <27.298840, 38.147068, 25.342911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721502, 38.305641, 24.882524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710411, 37.906677, 24.855993>,  <27.703756, 37.667297, 24.840075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710411, 37.906677, 24.855993>,  <27.721502, 38.305641, 24.882524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710411, 37.906677, 24.855993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097822, 0.068744, -0.992827,
		0.994817, -0.021043, -0.099475,
		-0.027730, -0.997412, -0.066329,
		27.702091, 37.607452, 24.836094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301815, 38.097343, 24.483671>,  <27.721502, 38.305641, 24.882524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301815, 38.097343, 24.483671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022388, 37.814674, 24.438742>,  <27.854733, 37.645073, 24.411783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022388, 37.814674, 24.438742>,  <28.301815, 38.097343, 24.483671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022388, 37.814674, 24.438742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017188, 0.140362, -0.989951,
		0.715341, -0.693475, -0.085905,
		-0.698564, -0.706676, -0.112326,
		27.812819, 37.602673, 24.405045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468649, 37.552887, 24.047020>,  <28.301815, 38.097343, 24.483671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468649, 37.552887, 24.047020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069405, 37.571224, 24.030676>,  <27.829857, 37.582226, 24.020870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069405, 37.571224, 24.030676>,  <28.468649, 37.552887, 24.047020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069405, 37.571224, 24.030676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053552, 0.324161, -0.944485,
		-0.030052, -0.944891, -0.326004,
		-0.998112, 0.045842, -0.040859,
		27.769970, 37.584976, 24.018417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255985, 37.165081, 23.437637>,  <28.468649, 37.552887, 24.047020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255985, 37.165081, 23.437637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944883, 37.401844, 23.522243>,  <27.758223, 37.543903, 23.573008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944883, 37.401844, 23.522243>,  <28.255985, 37.165081, 23.437637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944883, 37.401844, 23.522243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038094, 0.380270, -0.924090,
		-0.627410, -0.710660, -0.318306,
		-0.777757, 0.591909, 0.211513,
		27.711555, 37.579418, 23.585697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853258, 37.163326, 22.822485>,  <28.255985, 37.165081, 23.437637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853258, 37.163326, 22.822485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741945, 37.482128, 23.036905>,  <27.675158, 37.673409, 23.165558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741945, 37.482128, 23.036905>,  <27.853258, 37.163326, 22.822485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741945, 37.482128, 23.036905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062241, 0.541958, -0.838098,
		-0.958480, -0.266594, -0.101212,
		-0.278284, 0.797001, 0.536049,
		27.658461, 37.721230, 23.197720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493643, 37.516293, 22.351606>,  <27.853258, 37.163326, 22.822485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493643, 37.516293, 22.351606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552723, 37.796871, 22.630507>,  <27.588171, 37.965218, 22.797848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552723, 37.796871, 22.630507>,  <27.493643, 37.516293, 22.351606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552723, 37.796871, 22.630507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073905, 0.710840, -0.699461,
		-0.986267, 0.051780, 0.156831,
		0.147699, 0.701445, 0.697251,
		27.597033, 38.007305, 22.839682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381811, 38.065453, 21.948286>,  <27.493643, 37.516293, 22.351606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381811, 38.065453, 21.948286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523460, 38.247284, 22.275200>,  <27.608450, 38.356384, 22.471348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523460, 38.247284, 22.275200>,  <27.381811, 38.065453, 21.948286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523460, 38.247284, 22.275200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034249, 0.867027, -0.497083,
		-0.934572, 0.204020, 0.291465,
		0.354123, 0.454577, 0.817286,
		27.629698, 38.383656, 22.520386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940138, 38.651791, 22.046471>,  <27.381811, 38.065453, 21.948286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940138, 38.651791, 22.046471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312922, 38.682770, 22.188148>,  <27.536592, 38.701359, 22.273155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312922, 38.682770, 22.188148>,  <26.940138, 38.651791, 22.046471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312922, 38.682770, 22.188148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138287, 0.827135, -0.544724,
		-0.335157, 0.556641, 0.760145,
		0.931958, 0.077450, 0.354196,
		27.592508, 38.706005, 22.294407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995567, 39.370358, 22.151514>,  <26.940138, 38.651791, 22.046471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995567, 39.370358, 22.151514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372749, 39.237190, 22.150791>,  <27.599058, 39.157291, 22.150358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372749, 39.237190, 22.150791>,  <26.995567, 39.370358, 22.151514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372749, 39.237190, 22.150791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294679, 0.837156, -0.460798,
		0.154917, 0.433980, 0.887503,
		0.942956, -0.332914, -0.001805,
		27.655636, 39.137318, 22.150249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447605, 40.019600, 22.402271>,  <26.995567, 39.370358, 22.151514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447605, 40.019600, 22.402271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682568, 39.746902, 22.227835>,  <27.823545, 39.583282, 22.123173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682568, 39.746902, 22.227835>,  <27.447605, 40.019600, 22.402271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682568, 39.746902, 22.227835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180233, 0.635523, -0.750751,
		0.788966, 0.362399, 0.496184,
		0.587408, -0.681746, -0.436090,
		27.858789, 39.542377, 22.097008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004997, 40.403313, 22.089952>,  <27.447605, 40.019600, 22.402271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004997, 40.403313, 22.089952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012770, 40.046585, 21.909163>,  <28.017433, 39.832550, 21.800690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012770, 40.046585, 21.909163>,  <28.004997, 40.403313, 22.089952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012770, 40.046585, 21.909163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322101, 0.433541, -0.841602,
		0.946506, -0.129228, 0.295681,
		0.019431, -0.891820, -0.451973,
		28.018599, 39.779037, 21.773571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583635, 40.495247, 21.698761>,  <28.004997, 40.403313, 22.089952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583635, 40.495247, 21.698761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390781, 40.192245, 21.522701>,  <28.275068, 40.010445, 21.417067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390781, 40.192245, 21.522701>,  <28.583635, 40.495247, 21.698761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390781, 40.192245, 21.522701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143018, 0.427606, -0.892580,
		0.864344, -0.493295, -0.097828,
		-0.482137, -0.757505, -0.440148,
		28.246140, 39.964993, 21.390657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923094, 40.278667, 21.122543>,  <28.583635, 40.495247, 21.698761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923094, 40.278667, 21.122543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554796, 40.158417, 21.023062>,  <28.333818, 40.086266, 20.963373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554796, 40.158417, 21.023062>,  <28.923094, 40.278667, 21.122543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554796, 40.158417, 21.023062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091955, 0.452266, -0.887130,
		0.379177, -0.839689, -0.388777,
		-0.920744, -0.300629, -0.248702,
		28.278574, 40.068226, 20.948452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015615, 39.911808, 20.539270>,  <28.923094, 40.278667, 21.122543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015615, 39.911808, 20.539270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631136, 40.020428, 20.519842>,  <28.400448, 40.085598, 20.508184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631136, 40.020428, 20.519842>,  <29.015615, 39.911808, 20.539270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631136, 40.020428, 20.519842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135820, 0.312611, -0.940121,
		-0.240102, -0.910240, -0.337363,
		-0.961199, 0.271546, -0.048570,
		28.342775, 40.101891, 20.505272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844023, 39.811668, 19.837706>,  <29.015615, 39.911808, 20.539270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844023, 39.811668, 19.837706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531862, 40.023232, 19.971109>,  <28.344566, 40.150169, 20.051151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531862, 40.023232, 19.971109>,  <28.844023, 39.811668, 19.837706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531862, 40.023232, 19.971109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173873, 0.328777, -0.928264,
		-0.600616, -0.782408, -0.164616,
		-0.780403, 0.528908, 0.333508,
		28.297741, 40.181904, 20.071161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291391, 39.668522, 19.423906>,  <28.844023, 39.811668, 19.837706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291391, 39.668522, 19.423906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208477, 40.021610, 19.592590>,  <28.158728, 40.233463, 19.693802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208477, 40.021610, 19.592590>,  <28.291391, 39.668522, 19.423906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208477, 40.021610, 19.592590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124888, 0.403669, -0.906341,
		-0.970275, -0.240540, 0.026566,
		-0.207288, 0.882718, 0.421711,
		28.146290, 40.286427, 19.719103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674570, 39.860176, 19.021969>,  <28.291391, 39.668522, 19.423906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674570, 39.860176, 19.021969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833931, 40.182289, 19.197603>,  <27.929546, 40.375557, 19.302984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833931, 40.182289, 19.197603>,  <27.674570, 39.860176, 19.021969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833931, 40.182289, 19.197603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086824, 0.509682, -0.855971,
		-0.913093, 0.302896, 0.272975,
		0.398401, 0.805282, 0.439088,
		27.953451, 40.423874, 19.329330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317793, 40.515453, 19.091528>,  <27.674570, 39.860176, 19.021969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317793, 40.515453, 19.091528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697502, 40.625656, 19.030897>,  <27.925327, 40.691780, 18.994518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697502, 40.625656, 19.030897>,  <27.317793, 40.515453, 19.091528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697502, 40.625656, 19.030897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280689, 0.525110, -0.803413,
		-0.141754, 0.805204, 0.575806,
		0.949273, 0.275509, -0.151576,
		27.982285, 40.708309, 18.985424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584661, 41.250034, 19.086035>,  <27.317793, 40.515453, 19.091528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584661, 41.250034, 19.086035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829342, 41.077942, 18.820486>,  <27.976151, 40.974686, 18.661158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829342, 41.077942, 18.820486>,  <27.584661, 41.250034, 19.086035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829342, 41.077942, 18.820486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311148, 0.640706, -0.701913,
		0.727330, 0.635923, 0.258055,
		0.611700, -0.430229, -0.663872,
		28.012852, 40.948872, 18.621325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100557, 41.632511, 18.823830>,  <27.584661, 41.250034, 19.086035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100557, 41.632511, 18.823830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994631, 41.381050, 18.531343>,  <27.931074, 41.230175, 18.355852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994631, 41.381050, 18.531343>,  <28.100557, 41.632511, 18.823830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994631, 41.381050, 18.531343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243172, 0.777314, -0.580216,
		0.933134, 0.024160, -0.358715,
		-0.264817, -0.628648, -0.731213,
		27.915186, 41.192455, 18.311979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615158, 41.720280, 18.429089>,  <28.100557, 41.632511, 18.823830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615158, 41.720280, 18.429089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258484, 41.611328, 18.284472>,  <28.044479, 41.545959, 18.197702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258484, 41.611328, 18.284472>,  <28.615158, 41.720280, 18.429089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258484, 41.611328, 18.284472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090950, 0.890223, -0.446354,
		0.443428, -0.365124, -0.818570,
		-0.891684, -0.272375, -0.361541,
		27.990978, 41.529617, 18.176008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031956, 42.008591, 18.166664>,  <28.615158, 41.720280, 18.429089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031956, 42.008591, 18.166664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970366, 42.367924, 18.331245>,  <27.933411, 42.583523, 18.429995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970366, 42.367924, 18.331245>,  <28.031956, 42.008591, 18.166664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970366, 42.367924, 18.331245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068014, 0.425069, -0.902602,
		-0.985731, -0.110996, -0.126550,
		-0.153978, 0.898330, 0.411454,
		27.924171, 42.637424, 18.454681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414221, 42.239262, 17.913593>,  <28.031956, 42.008591, 18.166664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414221, 42.239262, 17.913593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657434, 42.535065, 18.029123>,  <27.803364, 42.712547, 18.098442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657434, 42.535065, 18.029123>,  <27.414221, 42.239262, 17.913593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657434, 42.535065, 18.029123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044523, 0.331466, -0.942416,
		-0.792660, 0.585882, 0.168618,
		0.608036, 0.739508, 0.288825,
		27.839846, 42.756916, 18.115770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859131, 42.599697, 17.470530>,  <27.414221, 42.239262, 17.913593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859131, 42.599697, 17.470530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915096, 42.989910, 17.538363>,  <27.948675, 43.224037, 17.579062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915096, 42.989910, 17.538363>,  <27.859131, 42.599697, 17.470530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915096, 42.989910, 17.538363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198773, -0.195451, 0.960358,
		0.970007, -0.100659, -0.221256,
		0.139914, 0.975534, 0.169581,
		27.957071, 43.282570, 17.589237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527161, 42.820175, 17.812826>,  <27.859131, 42.599697, 17.470530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527161, 42.820175, 17.812826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245745, 43.091145, 17.898741>,  <28.076895, 43.253727, 17.950291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245745, 43.091145, 17.898741>,  <28.527161, 42.820175, 17.812826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245745, 43.091145, 17.898741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189297, -0.112682, 0.975433,
		0.684982, 0.726913, -0.048958,
		-0.703539, 0.677421, 0.214788,
		28.034683, 43.294373, 17.963177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862196, 43.248466, 18.396126>,  <28.527161, 42.820175, 17.812826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862196, 43.248466, 18.396126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463230, 43.231224, 18.373121>,  <28.223850, 43.220879, 18.359318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463230, 43.231224, 18.373121>,  <28.862196, 43.248466, 18.396126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463230, 43.231224, 18.373121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049787, -0.162692, 0.985420,
		-0.051838, 0.985735, 0.160125,
		-0.997414, -0.043110, -0.057511,
		28.164005, 43.218292, 18.355867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384342, 43.686954, 18.604181>,  <28.862196, 43.248466, 18.396126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384342, 43.686954, 18.604181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151991, 43.376717, 18.703003>,  <28.012579, 43.190575, 18.762297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151991, 43.376717, 18.703003>,  <28.384342, 43.686954, 18.604181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151991, 43.376717, 18.703003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066830, 0.257046, 0.964086,
		-0.811241, 0.576529, -0.097480,
		-0.580881, -0.775591, 0.247055,
		27.977726, 43.144039, 18.777119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147512, 43.907303, 19.223700>,  <28.384342, 43.686954, 18.604181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147512, 43.907303, 19.223700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018665, 43.528622, 19.223986>,  <27.941357, 43.301414, 19.224157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018665, 43.528622, 19.223986>,  <28.147512, 43.907303, 19.223700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018665, 43.528622, 19.223986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052283, 0.018544, 0.998460,
		-0.945254, 0.321587, -0.055470,
		-0.322120, -0.946699, 0.000715,
		27.922029, 43.244614, 19.224199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556274, 43.912785, 19.540205>,  <28.147512, 43.907303, 19.223700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556274, 43.912785, 19.540205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732473, 43.554688, 19.567030>,  <27.838192, 43.339828, 19.583124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732473, 43.554688, 19.567030>,  <27.556274, 43.912785, 19.540205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732473, 43.554688, 19.567030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016798, 0.082904, 0.996416,
		-0.897597, -0.437791, 0.051557,
		0.440496, -0.895247, 0.067060,
		27.864622, 43.286114, 19.587149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181942, 43.525089, 20.133200>,  <27.556274, 43.912785, 19.540205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181942, 43.525089, 20.133200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550482, 43.383183, 20.069635>,  <27.771606, 43.298038, 20.031498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550482, 43.383183, 20.069635>,  <27.181942, 43.525089, 20.133200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550482, 43.383183, 20.069635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200080, 0.082306, 0.976316,
		-0.333285, -0.931325, 0.146815,
		0.921352, -0.354766, -0.158908,
		27.826887, 43.276752, 20.021963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333384, 43.052902, 20.616831>,  <27.181942, 43.525089, 20.133200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333384, 43.052902, 20.616831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712111, 43.144993, 20.526913>,  <27.939346, 43.200249, 20.472961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712111, 43.144993, 20.526913>,  <27.333384, 43.052902, 20.616831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712111, 43.144993, 20.526913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275943, -0.221615, 0.935277,
		0.165507, -0.947567, -0.273358,
		0.946817, 0.230226, -0.224795,
		27.996155, 43.214062, 20.459475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822861, 42.481747, 20.723019>,  <27.333384, 43.052902, 20.616831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822861, 42.481747, 20.723019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066433, 42.798542, 20.740742>,  <28.212576, 42.988617, 20.751375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066433, 42.798542, 20.740742>,  <27.822861, 42.481747, 20.723019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066433, 42.798542, 20.740742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430947, -0.377205, 0.819756,
		0.665947, -0.480081, -0.570996,
		0.608932, 0.791984, 0.044309,
		28.249113, 43.036137, 20.754034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442179, 42.181442, 20.938726>,  <27.822861, 42.481747, 20.723019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442179, 42.181442, 20.938726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489597, 42.573803, 21.000402>,  <28.518047, 42.809219, 21.037407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489597, 42.573803, 21.000402>,  <28.442179, 42.181442, 20.938726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489597, 42.573803, 21.000402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513278, -0.193463, 0.836132,
		0.849996, -0.019977, -0.526411,
		0.118545, 0.980904, 0.154189,
		28.525162, 42.868073, 21.046659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220770, 42.328503, 21.087442>,  <28.442179, 42.181442, 20.938726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220770, 42.328503, 21.087442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007013, 42.629337, 21.241739>,  <28.878759, 42.809837, 21.334318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007013, 42.629337, 21.241739>,  <29.220770, 42.328503, 21.087442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007013, 42.629337, 21.241739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490785, -0.095463, 0.866035,
		0.688155, 0.652117, -0.318097,
		-0.534390, 0.752084, 0.385743,
		28.846697, 42.854961, 21.357462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663464, 42.579113, 21.681276>,  <29.220770, 42.328503, 21.087442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663464, 42.579113, 21.681276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296284, 42.726227, 21.740744>,  <29.075975, 42.814495, 21.776424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296284, 42.726227, 21.740744>,  <29.663464, 42.579113, 21.681276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296284, 42.726227, 21.740744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156385, -0.008915, 0.987656,
		0.364567, 0.929870, -0.049332,
		-0.917951, 0.367781, 0.148668,
		29.020899, 42.836559, 21.785343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736179, 43.135162, 22.169987>,  <29.663464, 42.579113, 21.681276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736179, 43.135162, 22.169987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356047, 43.011448, 22.156065>,  <29.127968, 42.937218, 22.147713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356047, 43.011448, 22.156065>,  <29.736179, 43.135162, 22.169987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356047, 43.011448, 22.156065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031726, -0.207507, 0.977719,
		-0.309617, 0.928053, 0.207013,
		-0.950332, -0.309286, -0.034805,
		29.070948, 42.918663, 22.145624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406437, 43.487499, 22.753168>,  <29.736179, 43.135162, 22.169987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406437, 43.487499, 22.753168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179790, 43.174267, 22.650621>,  <29.043802, 42.986328, 22.589094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179790, 43.174267, 22.650621>,  <29.406437, 43.487499, 22.753168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179790, 43.174267, 22.650621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058544, -0.272086, 0.960490,
		-0.821899, 0.559239, 0.108324,
		-0.566617, -0.783084, -0.256367,
		29.009806, 42.939342, 22.573711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857328, 43.483131, 23.287104>,  <29.406437, 43.487499, 22.753168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857328, 43.483131, 23.287104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849356, 43.128059, 23.103088>,  <28.844572, 42.915016, 22.992680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849356, 43.128059, 23.103088>,  <28.857328, 43.483131, 23.287104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849356, 43.128059, 23.103088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160493, -0.451321, 0.877811,
		-0.986836, 0.091331, -0.133470,
		-0.019934, -0.887676, -0.460037,
		28.843376, 42.861755, 22.965076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276352, 43.100536, 23.618763>,  <28.857328, 43.483131, 23.287104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276352, 43.100536, 23.618763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514702, 42.828072, 23.448608>,  <28.657711, 42.664593, 23.346516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514702, 42.828072, 23.448608>,  <28.276352, 43.100536, 23.618763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514702, 42.828072, 23.448608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016428, -0.519246, 0.854467,
		-0.802910, -0.516142, -0.298215,
		0.595873, -0.681161, -0.425387,
		28.693464, 42.623722, 23.320992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911604, 42.380661, 23.765247>,  <28.276352, 43.100536, 23.618763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911604, 42.380661, 23.765247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294205, 42.300297, 23.680637>,  <28.523766, 42.252079, 23.629871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294205, 42.300297, 23.680637>,  <27.911604, 42.380661, 23.765247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294205, 42.300297, 23.680637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014280, -0.691955, 0.721799,
		-0.291383, -0.693422, -0.658986,
		0.956500, -0.200910, -0.211526,
		28.581154, 42.240025, 23.617180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982737, 41.694939, 23.942526>,  <27.911604, 42.380661, 23.765247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982737, 41.694939, 23.942526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364901, 41.811298, 23.922235>,  <28.594198, 41.881115, 23.910061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364901, 41.811298, 23.922235>,  <27.982737, 41.694939, 23.942526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364901, 41.811298, 23.922235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230214, -0.626216, 0.744886,
		0.184921, -0.723348, -0.665261,
		0.955409, 0.290897, -0.050724,
		28.651524, 41.898567, 23.907019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320005, 41.127350, 24.061758>,  <27.982737, 41.694939, 23.942526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320005, 41.127350, 24.061758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572254, 41.424435, 24.151825>,  <28.723604, 41.602684, 24.205866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572254, 41.424435, 24.151825>,  <28.320005, 41.127350, 24.061758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572254, 41.424435, 24.151825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167678, -0.413668, 0.894854,
		0.757761, -0.526558, -0.385404,
		0.630621, 0.742708, 0.225169,
		28.761440, 41.647247, 24.219376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854174, 40.738735, 24.391130>,  <28.320005, 41.127350, 24.061758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854174, 40.738735, 24.391130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925812, 41.117191, 24.499016>,  <28.968794, 41.344265, 24.563747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925812, 41.117191, 24.499016>,  <28.854174, 40.738735, 24.391130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925812, 41.117191, 24.499016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178551, -0.300850, 0.936808,
		0.967494, -0.119618, -0.222815,
		0.179093, 0.946140, 0.269713,
		28.979540, 41.401031, 24.579929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507162, 40.722042, 24.654896>,  <28.854174, 40.738735, 24.391130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507162, 40.722042, 24.654896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344923, 41.057159, 24.801100>,  <29.247580, 41.258228, 24.888823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344923, 41.057159, 24.801100>,  <29.507162, 40.722042, 24.654896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344923, 41.057159, 24.801100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176249, -0.320690, 0.930642,
		0.896898, 0.441887, -0.017588,
		-0.405598, 0.837791, 0.365508,
		29.223244, 41.308498, 24.910751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885580, 40.998688, 25.232164>,  <29.507162, 40.722042, 24.654896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885580, 40.998688, 25.232164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556915, 41.216366, 25.299948>,  <29.359716, 41.346973, 25.340618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556915, 41.216366, 25.299948>,  <29.885580, 40.998688, 25.232164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556915, 41.216366, 25.299948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139198, -0.096711, 0.985531,
		0.552714, 0.833363, 0.003713,
		-0.821664, 0.544199, 0.169456,
		29.310415, 41.379627, 25.350784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108391, 41.402210, 25.683334>,  <29.885580, 40.998688, 25.232164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108391, 41.402210, 25.683334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715664, 41.353142, 25.741283>,  <29.480028, 41.323700, 25.776052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715664, 41.353142, 25.741283>,  <30.108391, 41.402210, 25.683334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715664, 41.353142, 25.741283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151528, -0.046718, 0.987348,
		-0.114355, 0.991347, 0.064457,
		-0.981816, -0.122675, 0.144875,
		29.421120, 41.316338, 25.784746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116816, 41.787628, 26.196644>,  <30.108391, 41.402210, 25.683334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116816, 41.787628, 26.196644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767345, 41.593838, 26.214399>,  <29.557663, 41.477562, 26.225052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767345, 41.593838, 26.214399>,  <30.116816, 41.787628, 26.196644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767345, 41.593838, 26.214399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026330, 0.044020, 0.998684,
		-0.485794, 0.873695, -0.025703,
		-0.873676, -0.484478, 0.044389,
		29.505243, 41.448494, 26.227716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641220, 42.179016, 26.580336>,  <30.116816, 41.787628, 26.196644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641220, 42.179016, 26.580336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498310, 41.806515, 26.608940>,  <29.412565, 41.583012, 26.626102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498310, 41.806515, 26.608940>,  <29.641220, 42.179016, 26.580336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498310, 41.806515, 26.608940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110857, 0.118304, 0.986770,
		-0.927398, 0.344620, -0.145503,
		-0.357274, -0.931258, 0.071512,
		29.391129, 41.527138, 26.630394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212774, 42.135403, 27.285118>,  <29.641220, 42.179016, 26.580336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212774, 42.135403, 27.285118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237246, 41.750858, 27.177752>,  <29.251928, 41.520134, 27.113331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237246, 41.750858, 27.177752>,  <29.212774, 42.135403, 27.285118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237246, 41.750858, 27.177752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210217, -0.275299, 0.938093,
		-0.975739, -0.000963, -0.218936,
		0.061176, -0.961358, -0.268418,
		29.255598, 41.462452, 27.097227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636244, 41.833824, 27.613667>,  <29.212774, 42.135403, 27.285118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636244, 41.833824, 27.613667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889027, 41.529716, 27.553511>,  <29.040697, 41.347252, 27.517418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889027, 41.529716, 27.553511>,  <28.636244, 41.833824, 27.613667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889027, 41.529716, 27.553511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004186, -0.190697, 0.981640,
		-0.774992, -0.620983, -0.117330,
		0.631957, -0.760272, -0.150388,
		29.078613, 41.301636, 27.508394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296093, 41.185543, 27.890373>,  <28.636244, 41.833824, 27.613667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296093, 41.185543, 27.890373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684351, 41.089710, 27.881887>,  <28.917305, 41.032211, 27.876797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684351, 41.089710, 27.881887>,  <28.296093, 41.185543, 27.890373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684351, 41.089710, 27.881887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065514, -0.348233, 0.935116,
		-0.231418, -0.906276, -0.353707,
		0.970646, -0.239576, -0.021213,
		28.975544, 41.017838, 27.875523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375359, 40.541733, 28.165262>,  <28.296093, 41.185543, 27.890373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375359, 40.541733, 28.165262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751123, 40.676628, 28.189848>,  <28.976582, 40.757565, 28.204599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751123, 40.676628, 28.189848>,  <28.375359, 40.541733, 28.165262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751123, 40.676628, 28.189848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036497, -0.276688, 0.960267,
		0.340844, -0.899842, -0.272232,
		0.939411, 0.337237, 0.061465,
		29.032948, 40.777798, 28.208288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749275, 40.014198, 28.413988>,  <28.375359, 40.541733, 28.165262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749275, 40.014198, 28.413988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955093, 40.347809, 28.493629>,  <29.078585, 40.547974, 28.541414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955093, 40.347809, 28.493629>,  <28.749275, 40.014198, 28.413988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955093, 40.347809, 28.493629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131025, -0.305952, 0.942988,
		0.847393, -0.459123, -0.266704,
		0.514547, 0.834026, 0.199105,
		29.109457, 40.598015, 28.553362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480383, 39.751648, 28.624840>,  <28.749275, 40.014198, 28.413988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480383, 39.751648, 28.624840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366995, 40.100185, 28.785040>,  <29.298962, 40.309307, 28.881161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366995, 40.100185, 28.785040>,  <29.480383, 39.751648, 28.624840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366995, 40.100185, 28.785040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088949, -0.391940, 0.915681,
		0.954847, 0.295192, 0.033598,
		-0.283470, 0.871346, 0.400499,
		29.281954, 40.361588, 28.905190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868088, 39.700649, 29.268353>,  <29.480383, 39.751648, 28.624840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868088, 39.700649, 29.268353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642508, 40.029385, 29.300711>,  <29.507158, 40.226624, 29.320126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642508, 40.029385, 29.300711>,  <29.868088, 39.700649, 29.268353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642508, 40.029385, 29.300711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049723, -0.063989, 0.996711,
		0.824309, 0.566120, -0.004778,
		-0.563952, 0.821836, 0.080895,
		29.473322, 40.275936, 29.324980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283615, 40.269512, 29.579430>,  <29.868088, 39.700649, 29.268353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283615, 40.269512, 29.579430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893225, 40.329803, 29.642353>,  <29.658991, 40.365978, 29.680107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893225, 40.329803, 29.642353>,  <30.283615, 40.269512, 29.579430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893225, 40.329803, 29.642353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140561, -0.116041, 0.983248,
		0.166461, 0.981741, 0.092067,
		-0.975978, 0.150731, 0.157311,
		29.600431, 40.375023, 29.689547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173542, 40.854874, 30.025339>,  <30.283615, 40.269512, 29.579430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173542, 40.854874, 30.025339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852890, 40.616520, 30.044577>,  <29.660498, 40.473507, 30.056120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852890, 40.616520, 30.044577>,  <30.173542, 40.854874, 30.025339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852890, 40.616520, 30.044577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078018, -0.024518, 0.996650,
		-0.592704, 0.802699, 0.066144,
		-0.801632, -0.595879, 0.048093,
		29.612400, 40.437756, 30.059004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969263, 41.050480, 30.618614>,  <30.173542, 40.854874, 30.025339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969263, 41.050480, 30.618614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726522, 40.735420, 30.576012>,  <29.580877, 40.546387, 30.550449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726522, 40.735420, 30.576012>,  <29.969263, 41.050480, 30.618614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726522, 40.735420, 30.576012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078528, -0.192764, 0.978098,
		-0.790926, 0.585197, 0.178832,
		-0.606853, -0.787646, -0.106507,
		29.544466, 40.499126, 30.544060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601597, 41.147209, 31.266289>,  <29.969263, 41.050480, 30.618614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601597, 41.147209, 31.266289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545742, 40.776211, 31.127579>,  <29.512230, 40.553612, 31.044353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545742, 40.776211, 31.127579>,  <29.601597, 41.147209, 31.266289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545742, 40.776211, 31.127579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027439, -0.353695, 0.934958,
		-0.989822, 0.121040, 0.074838,
		-0.139637, -0.927496, -0.346774,
		29.503851, 40.497963, 31.023546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081545, 40.815353, 31.702988>,  <29.601597, 41.147209, 31.266289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081545, 40.815353, 31.702988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306456, 40.531570, 31.533041>,  <29.441402, 40.361301, 31.431072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306456, 40.531570, 31.533041>,  <29.081545, 40.815353, 31.702988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306456, 40.531570, 31.533041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262224, -0.334297, 0.905254,
		-0.784274, -0.620412, -0.001929,
		0.562275, -0.709461, -0.424868,
		29.475138, 40.318733, 31.405581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939837, 40.230614, 32.138596>,  <29.081545, 40.815353, 31.702988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939837, 40.230614, 32.138596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268093, 40.136799, 31.930159>,  <29.465048, 40.080509, 31.805098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268093, 40.136799, 31.930159>,  <28.939837, 40.230614, 32.138596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268093, 40.136799, 31.930159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406227, -0.401902, 0.820643,
		-0.401902, -0.885136, -0.234541,
		-0.820643, 0.234541, 0.521091,
		29.514286, 40.066437, 31.773830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010473, 39.467640, 32.167419>,  <28.939837, 40.230614, 32.138596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010473, 39.467640, 32.167419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366220, 39.629761, 32.082802>,  <29.579670, 39.727032, 32.032032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366220, 39.629761, 32.082802>,  <29.010473, 39.467640, 32.167419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366220, 39.629761, 32.082802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383908, -0.410808, 0.826953,
		0.248264, -0.816680, -0.520959,
		0.889370, 0.405303, -0.211541,
		29.633032, 39.751350, 32.019341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482252, 38.876133, 32.222099>,  <29.010473, 39.467640, 32.167419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482252, 38.876133, 32.222099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719532, 39.194340, 32.271530>,  <29.861900, 39.385262, 32.301189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719532, 39.194340, 32.271530>,  <29.482252, 38.876133, 32.222099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719532, 39.194340, 32.271530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413997, -0.433084, 0.800653,
		0.690448, -0.423789, -0.586246,
		0.593201, 0.795513, 0.123575,
		29.897493, 39.432995, 32.308601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139494, 38.634277, 32.271240>,  <29.482252, 38.876133, 32.222099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139494, 38.634277, 32.271240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131042, 38.985634, 32.462231>,  <30.125973, 39.196449, 32.576824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131042, 38.985634, 32.462231>,  <30.139494, 38.634277, 32.271240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131042, 38.985634, 32.462231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427087, -0.423885, 0.798698,
		0.903963, 0.220798, -0.366194,
		-0.021127, 0.878390, 0.477476,
		30.124704, 39.249149, 32.605473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683403, 38.538727, 32.735222>,  <30.139494, 38.634277, 32.271240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683403, 38.538727, 32.735222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498564, 38.858746, 32.888264>,  <30.387661, 39.050758, 32.980091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498564, 38.858746, 32.888264>,  <30.683403, 38.538727, 32.735222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498564, 38.858746, 32.888264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424052, -0.179577, 0.887655,
		0.778874, 0.572430, -0.256280,
		-0.462099, 0.800047, 0.382608,
		30.359934, 39.098759, 33.003048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134333, 38.972191, 32.935844>,  <30.683403, 38.538727, 32.735222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134333, 38.972191, 32.935844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812496, 39.068890, 33.152802>,  <30.619394, 39.126907, 33.282974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812496, 39.068890, 33.152802>,  <31.134333, 38.972191, 32.935844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812496, 39.068890, 33.152802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543284, -0.069081, 0.836702,
		0.239739, 0.967877, -0.075755,
		-0.804592, 0.241747, 0.542393,
		30.571119, 39.141415, 33.315521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812225, 38.962303, 32.566223>,  <31.134333, 38.972191, 32.935844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812225, 38.962303, 32.566223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185165, 39.103081, 32.599339>,  <32.408932, 39.187546, 32.619209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185165, 39.103081, 32.599339>,  <31.812225, 38.962303, 32.566223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185165, 39.103081, 32.599339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269221, 0.828652, -0.490770,
		-0.241327, 0.435282, 0.867347,
		0.932353, 0.351944, 0.082789,
		32.464870, 39.208664, 32.624176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761185, 39.755363, 32.478783>,  <31.812225, 38.962303, 32.566223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761185, 39.755363, 32.478783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156063, 39.691799, 32.473316>,  <32.392990, 39.653660, 32.470036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156063, 39.691799, 32.473316>,  <31.761185, 39.755363, 32.478783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156063, 39.691799, 32.473316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134098, 0.873315, -0.468336,
		0.086360, 0.460508, 0.883445,
		0.987198, -0.158914, -0.013666,
		32.452221, 39.644127, 32.469215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122845, 40.369186, 32.629864>,  <31.761185, 39.755363, 32.478783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122845, 40.369186, 32.629864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335934, 40.122414, 32.398140>,  <32.463787, 39.974350, 32.259106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335934, 40.122414, 32.398140>,  <32.122845, 40.369186, 32.629864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335934, 40.122414, 32.398140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116438, 0.731454, -0.671876,
		0.838240, 0.290471, 0.461497,
		0.532724, -0.616930, -0.579312,
		32.495750, 39.937336, 32.224346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838539, 40.701126, 32.516754>,  <32.122845, 40.369186, 32.629864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838539, 40.701126, 32.516754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746567, 40.440346, 32.227730>,  <32.691383, 40.283878, 32.054317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746567, 40.440346, 32.227730>,  <32.838539, 40.701126, 32.516754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746567, 40.440346, 32.227730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157464, 0.707744, -0.688697,
		0.960383, -0.272131, -0.060075,
		-0.229933, -0.651953, -0.722556,
		32.677586, 40.244759, 32.010963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372417, 40.738102, 32.094692>,  <32.838539, 40.701126, 32.516754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372417, 40.738102, 32.094692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073322, 40.578663, 31.882275>,  <32.893867, 40.482998, 31.754824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073322, 40.578663, 31.882275>,  <33.372417, 40.738102, 32.094692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073322, 40.578663, 31.882275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251091, 0.570649, -0.781865,
		0.614693, -0.717968, -0.326609,
		-0.747733, -0.398599, -0.531049,
		32.849003, 40.459084, 31.722960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661880, 40.466087, 31.420525>,  <33.372417, 40.738102, 32.094692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661880, 40.466087, 31.420525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270775, 40.530815, 31.367170>,  <33.036110, 40.569653, 31.335157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270775, 40.530815, 31.367170>,  <33.661880, 40.466087, 31.420525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270775, 40.530815, 31.367170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196067, 0.479749, -0.855218,
		-0.074401, -0.862354, -0.500809,
		-0.977764, 0.161821, -0.133386,
		32.977448, 40.579361, 31.327154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599567, 40.279430, 30.653532>,  <33.661880, 40.466087, 31.420525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599567, 40.279430, 30.653532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277378, 40.495476, 30.751095>,  <33.084064, 40.625103, 30.809633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277378, 40.495476, 30.751095>,  <33.599567, 40.279430, 30.653532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277378, 40.495476, 30.751095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007457, 0.402296, -0.915479,
		-0.592590, -0.739210, -0.320009,
		-0.805469, 0.540118, 0.243909,
		33.035736, 40.657513, 30.824268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278576, 40.248871, 30.066145>,  <33.599567, 40.279430, 30.653532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278576, 40.248871, 30.066145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110649, 40.551373, 30.266876>,  <33.009895, 40.732876, 30.387316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110649, 40.551373, 30.266876>,  <33.278576, 40.248871, 30.066145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110649, 40.551373, 30.266876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077491, 0.521027, -0.850015,
		-0.904296, -0.395736, -0.160131,
		-0.419814, 0.756256, 0.501829,
		32.984703, 40.778248, 30.417425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805267, 40.491795, 29.514612>,  <33.278576, 40.248871, 30.066145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805267, 40.491795, 29.514612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828934, 40.784393, 29.786322>,  <32.843132, 40.959953, 29.949347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828934, 40.784393, 29.786322>,  <32.805267, 40.491795, 29.514612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828934, 40.784393, 29.786322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135496, 0.680051, -0.720536,
		-0.989010, -0.049410, 0.139348,
		0.059162, 0.731498, 0.679272,
		32.846684, 41.003841, 29.990103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229263, 40.755680, 29.465359>,  <32.805267, 40.491795, 29.514612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229263, 40.755680, 29.465359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476261, 41.034153, 29.611805>,  <32.624458, 41.201237, 29.699673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476261, 41.034153, 29.611805>,  <32.229263, 40.755680, 29.465359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476261, 41.034153, 29.611805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208499, 0.593673, -0.777226,
		-0.758441, 0.403594, 0.511740,
		0.617491, 0.696178, 0.366117,
		32.661507, 41.243008, 29.721640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850197, 41.405704, 29.419266>,  <32.229263, 40.755680, 29.465359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850197, 41.405704, 29.419266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235874, 41.507412, 29.449413>,  <32.467281, 41.568436, 29.467503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235874, 41.507412, 29.449413>,  <31.850197, 41.405704, 29.419266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235874, 41.507412, 29.449413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082251, 0.556884, -0.826508,
		-0.252131, 0.790712, 0.557856,
		0.964191, 0.254272, 0.075371,
		32.525131, 41.583694, 29.472025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812767, 41.926197, 29.085690>,  <31.850197, 41.405704, 29.419266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812767, 41.926197, 29.085690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208355, 41.875832, 29.116879>,  <32.445709, 41.845612, 29.135592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208355, 41.875832, 29.116879>,  <31.812767, 41.926197, 29.085690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208355, 41.875832, 29.116879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128199, 0.464202, -0.876402,
		0.074156, 0.876734, 0.475225,
		0.988972, -0.125914, 0.077973,
		32.505047, 41.838058, 29.140270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133408, 42.575893, 29.021528>,  <31.812767, 41.926197, 29.085690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133408, 42.575893, 29.021528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384212, 42.291321, 28.894579>,  <32.534695, 42.120579, 28.818409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384212, 42.291321, 28.894579>,  <32.133408, 42.575893, 29.021528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384212, 42.291321, 28.894579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119447, 0.490390, -0.863279,
		0.769798, 0.503376, 0.392458,
		0.627012, -0.711428, -0.317374,
		32.572315, 42.077892, 28.799366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681076, 42.922192, 28.702934>,  <32.133408, 42.575893, 29.021528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681076, 42.922192, 28.702934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685421, 42.554028, 28.546616>,  <32.688026, 42.333130, 28.452824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685421, 42.554028, 28.546616>,  <32.681076, 42.922192, 28.702934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685421, 42.554028, 28.546616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058451, 0.389567, -0.919142,
		0.998231, 0.032827, -0.049567,
		0.010862, -0.920413, -0.390796,
		32.688679, 42.277905, 28.429377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251137, 42.880150, 28.117426>,  <32.681076, 42.922192, 28.702934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251137, 42.880150, 28.117426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988892, 42.584690, 28.054712>,  <32.831547, 42.407413, 28.017084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988892, 42.584690, 28.054712>,  <33.251137, 42.880150, 28.117426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988892, 42.584690, 28.054712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085854, 0.279205, -0.956386,
		0.750205, -0.613554, -0.246464,
		-0.655608, -0.738645, -0.156785,
		32.792210, 42.363098, 28.007677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371456, 42.578239, 27.373764>,  <33.251137, 42.880150, 28.117426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371456, 42.578239, 27.373764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005016, 42.465881, 27.488214>,  <32.785152, 42.398468, 27.556885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005016, 42.465881, 27.488214>,  <33.371456, 42.578239, 27.373764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005016, 42.465881, 27.488214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347473, 0.200076, -0.916096,
		0.200076, -0.938653, -0.280891,
		0.916096, 0.280891, -0.286126,
		32.730186, 42.381615, 27.574053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190243, 42.366268, 26.760225>,  <33.371456, 42.578239, 27.373764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190243, 42.366268, 26.760225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848484, 42.381752, 26.967497>,  <32.643429, 42.391045, 27.091860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848484, 42.381752, 26.967497>,  <33.190243, 42.366268, 26.760225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848484, 42.381752, 26.967497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502296, 0.193862, -0.842684,
		-0.133077, -0.980265, -0.146190,
		-0.854394, 0.038712, 0.518181,
		32.592167, 42.393364, 27.122952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704971, 41.858318, 26.394791>,  <33.190243, 42.366268, 26.760225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704971, 41.858318, 26.394791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459045, 42.110073, 26.584892>,  <32.311489, 42.261127, 26.698954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459045, 42.110073, 26.584892>,  <32.704971, 41.858318, 26.394791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459045, 42.110073, 26.584892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520875, 0.128429, -0.843917,
		-0.592189, -0.766403, 0.248873,
		-0.614818, 0.629391, 0.475254,
		32.274601, 42.298889, 26.727468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084751, 41.604095, 26.248699>,  <32.704971, 41.858318, 26.394791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084751, 41.604095, 26.248699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034237, 41.989227, 26.344210>,  <32.003929, 42.220306, 26.401516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034237, 41.989227, 26.344210>,  <32.084751, 41.604095, 26.248699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034237, 41.989227, 26.344210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574003, 0.125392, -0.809196,
		-0.809057, -0.239245, 0.536832,
		-0.126282, 0.962828, 0.238776,
		31.996353, 42.278076, 26.415842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309990, 41.735817, 26.357574>,  <32.084751, 41.604095, 26.248699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309990, 41.735817, 26.357574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466749, 42.090111, 26.258057>,  <31.560804, 42.302685, 26.198347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466749, 42.090111, 26.258057>,  <31.309990, 41.735817, 26.357574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466749, 42.090111, 26.258057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586002, 0.031848, -0.809684,
		-0.709238, 0.463107, 0.531520,
		0.391898, 0.885730, -0.248794,
		31.584318, 42.355831, 26.183418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755890, 42.053055, 26.031286>,  <31.309990, 41.735817, 26.357574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755890, 42.053055, 26.031286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082090, 42.245041, 25.901926>,  <31.277811, 42.360233, 25.824310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082090, 42.245041, 25.901926>,  <30.755890, 42.053055, 26.031286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082090, 42.245041, 25.901926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454255, 0.184568, -0.871543,
		-0.358624, 0.857650, 0.368543,
		0.815500, 0.479969, -0.323402,
		31.326740, 42.389030, 25.804905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540390, 42.432430, 25.575377>,  <30.755890, 42.053055, 26.031286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540390, 42.432430, 25.575377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926846, 42.435749, 25.472219>,  <31.158718, 42.437740, 25.410326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926846, 42.435749, 25.472219>,  <30.540390, 42.432430, 25.575377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926846, 42.435749, 25.472219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254329, 0.199237, -0.946373,
		0.043526, 0.979916, 0.194602,
		0.966138, 0.008301, -0.257893,
		31.216686, 42.438240, 25.394852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628277, 43.002708, 25.093204>,  <30.540390, 42.432430, 25.575377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628277, 43.002708, 25.093204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947655, 42.770023, 25.031111>,  <31.139280, 42.630413, 24.993855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947655, 42.770023, 25.031111>,  <30.628277, 43.002708, 25.093204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947655, 42.770023, 25.031111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105363, 0.118850, -0.987306,
		0.592780, 0.804663, 0.033604,
		0.798443, -0.581714, -0.155234,
		31.187187, 42.595509, 24.984541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034788, 43.388309, 24.556519>,  <30.628277, 43.002708, 25.093204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034788, 43.388309, 24.556519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167620, 43.011024, 24.553198>,  <31.247318, 42.784653, 24.551205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167620, 43.011024, 24.553198>,  <31.034788, 43.388309, 24.556519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167620, 43.011024, 24.553198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084695, -0.021049, -0.996185,
		0.939441, 0.331516, -0.086876,
		0.332080, -0.943215, -0.008303,
		31.267244, 42.728062, 24.550707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529360, 43.452747, 24.099537>,  <31.034788, 43.388309, 24.556519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529360, 43.452747, 24.099537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436419, 43.064026, 24.115555>,  <31.380653, 42.830791, 24.125166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436419, 43.064026, 24.115555>,  <31.529360, 43.452747, 24.099537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436419, 43.064026, 24.115555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023948, -0.046874, -0.998614,
		0.972336, -0.231073, 0.034164,
		-0.232354, -0.971807, 0.040043,
		31.366713, 42.772484, 24.127567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117672, 42.931648, 23.799246>,  <31.529360, 43.452747, 24.099537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117672, 42.931648, 23.799246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766542, 42.743046, 23.765533>,  <31.555864, 42.629883, 23.745306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766542, 42.743046, 23.765533>,  <32.117672, 42.931648, 23.799246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766542, 42.743046, 23.765533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163582, -0.129741, -0.977961,
		0.450182, -0.872265, 0.191020,
		-0.877825, -0.471509, -0.084279,
		31.503195, 42.601593, 23.740250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223705, 42.354187, 23.365904>,  <32.117672, 42.931648, 23.799246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223705, 42.354187, 23.365904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827066, 42.402637, 23.347740>,  <31.589083, 42.431709, 23.336842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827066, 42.402637, 23.347740>,  <32.223705, 42.354187, 23.365904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827066, 42.402637, 23.347740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017979, -0.218586, -0.975652,
		-0.128105, -0.968270, 0.214572,
		-0.991597, 0.121128, -0.045411,
		31.529587, 42.438976, 23.334116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972439, 41.830322, 22.944773>,  <32.223705, 42.354187, 23.365904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972439, 41.830322, 22.944773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663692, 42.084637, 22.944218>,  <31.478445, 42.237225, 22.943886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663692, 42.084637, 22.944218>,  <31.972439, 41.830322, 22.944773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663692, 42.084637, 22.944218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114594, -0.141264, -0.983317,
		-0.625375, -0.758828, 0.181894,
		-0.771864, 0.635786, -0.001385,
		31.432133, 42.275372, 22.943802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367987, 41.440598, 22.736208>,  <31.972439, 41.830322, 22.944773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367987, 41.440598, 22.736208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299006, 41.823387, 22.642862>,  <31.257616, 42.053062, 22.586855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299006, 41.823387, 22.642862>,  <31.367987, 41.440598, 22.736208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299006, 41.823387, 22.642862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108367, -0.253906, -0.961139,
		-0.979039, -0.140463, 0.147491,
		-0.172454, 0.956975, -0.233363,
		31.247269, 42.110481, 22.572853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778650, 41.489494, 22.261110>,  <31.367987, 41.440598, 22.736208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778650, 41.489494, 22.261110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983643, 41.826031, 22.192402>,  <31.106638, 42.027954, 22.151176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983643, 41.826031, 22.192402>,  <30.778650, 41.489494, 22.261110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983643, 41.826031, 22.192402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127915, -0.123005, -0.984128,
		-0.849117, 0.526321, 0.044583,
		0.512483, 0.841342, -0.171770,
		31.137388, 42.078434, 22.140871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504047, 41.805855, 21.691568>,  <30.778650, 41.489494, 22.261110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504047, 41.805855, 21.691568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827303, 42.040417, 21.669535>,  <31.021257, 42.181156, 21.656315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827303, 42.040417, 21.669535>,  <30.504047, 41.805855, 21.691568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827303, 42.040417, 21.669535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029379, -0.053276, -0.998147,
		-0.588257, 0.808262, -0.025826,
		0.808140, 0.586408, -0.055086,
		31.069744, 42.216339, 21.653009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322531, 42.354713, 21.156281>,  <30.504047, 41.805855, 21.691568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322531, 42.354713, 21.156281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716019, 42.339756, 21.226591>,  <30.952112, 42.330780, 21.268778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716019, 42.339756, 21.226591>,  <30.322531, 42.354713, 21.156281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716019, 42.339756, 21.226591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175757, -0.003784, -0.984426,
		0.037479, 0.999293, 0.002850,
		0.983720, -0.037397, 0.175775,
		31.011135, 42.328537, 21.279324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618692, 42.986038, 20.859800>,  <30.322531, 42.354713, 21.156281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618692, 42.986038, 20.859800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907911, 42.710140, 20.875072>,  <31.081442, 42.544601, 20.884235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907911, 42.710140, 20.875072>,  <30.618692, 42.986038, 20.859800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907911, 42.710140, 20.875072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012897, -0.068740, -0.997551,
		0.690678, 0.720784, -0.058598,
		0.723047, -0.689742, 0.038181,
		31.124826, 42.503216, 20.886526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101147, 43.096924, 20.206747>,  <30.618692, 42.986038, 20.859800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101147, 43.096924, 20.206747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180426, 42.732014, 20.350121>,  <31.227993, 42.513069, 20.436144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180426, 42.732014, 20.350121>,  <31.101147, 43.096924, 20.206747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180426, 42.732014, 20.350121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020295, -0.361790, -0.932039,
		0.979952, 0.192002, -0.053191,
		0.198197, -0.912274, 0.358433,
		31.239885, 42.458332, 20.457651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734869, 42.852444, 19.907402>,  <31.101147, 43.096924, 20.206747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734869, 42.852444, 19.907402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542828, 42.517574, 20.012199>,  <31.427603, 42.316654, 20.075077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542828, 42.517574, 20.012199>,  <31.734869, 42.852444, 19.907402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542828, 42.517574, 20.012199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033583, -0.315986, -0.948169,
		0.876569, -0.446420, 0.179820,
		-0.480103, -0.837175, 0.261991,
		31.398796, 42.266422, 20.090797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173450, 42.324211, 19.747906>,  <31.734869, 42.852444, 19.907402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173450, 42.324211, 19.747906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804602, 42.169460, 19.746290>,  <31.583292, 42.076611, 19.745321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804602, 42.169460, 19.746290>,  <32.173450, 42.324211, 19.747906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804602, 42.169460, 19.746290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212046, -0.496620, -0.841668,
		0.323617, -0.776978, 0.539980,
		-0.922122, -0.386878, -0.004040,
		31.527966, 42.053398, 19.745079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268639, 41.588242, 19.731932>,  <32.173450, 42.324211, 19.747906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268639, 41.588242, 19.731932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898651, 41.671947, 19.605032>,  <31.676661, 41.722172, 19.528893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898651, 41.671947, 19.605032>,  <32.268639, 41.588242, 19.731932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898651, 41.671947, 19.605032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166687, -0.526808, -0.833480,
		-0.341549, -0.823821, 0.452397,
		-0.924965, 0.209266, -0.317251,
		31.621162, 41.734726, 19.509857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118031, 41.012383, 19.415237>,  <32.268639, 41.588242, 19.731932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118031, 41.012383, 19.415237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823839, 41.252872, 19.290279>,  <31.647324, 41.397167, 19.215305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823839, 41.252872, 19.290279>,  <32.118031, 41.012383, 19.415237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823839, 41.252872, 19.290279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078314, -0.533412, -0.842222,
		-0.673004, -0.594974, 0.439399,
		-0.735482, 0.601230, -0.312394,
		31.603195, 41.433243, 19.196562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048203, 41.113758, 18.693481>,  <32.118031, 41.012383, 19.415237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048203, 41.113758, 18.693481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220928, 40.773289, 18.574127>,  <32.324562, 40.569008, 18.502514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220928, 40.773289, 18.574127>,  <32.048203, 41.113758, 18.693481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220928, 40.773289, 18.574127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103272, -0.281987, 0.953844,
		-0.896032, -0.442695, -0.033862,
		0.431811, -0.851178, -0.298388,
		32.350471, 40.517937, 18.484612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641764, 40.577511, 18.888552>,  <32.048203, 41.113758, 18.693481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641764, 40.577511, 18.888552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029060, 40.478706, 18.873114>,  <32.261440, 40.419422, 18.863852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029060, 40.478706, 18.873114>,  <31.641764, 40.577511, 18.888552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029060, 40.478706, 18.873114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024873, -0.248772, 0.968243,
		-0.248772, -0.936534, -0.247016,
		-0.968243, 0.247016, 0.038594,
		32.319534, 40.404602, 18.861536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712971, 40.058582, 19.412107>,  <31.641764, 40.577511, 18.888552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712971, 40.058582, 19.412107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100323, 40.134426, 19.347254>,  <32.332733, 40.179932, 19.308342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100323, 40.134426, 19.347254>,  <31.712971, 40.058582, 19.412107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100323, 40.134426, 19.347254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203504, -0.224427, 0.953005,
		0.144312, -0.955867, -0.255917,
		0.968380, 0.189610, -0.162135,
		32.390839, 40.191311, 19.298613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126808, 39.474854, 19.603037>,  <31.712971, 40.058582, 19.412107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126808, 39.474854, 19.603037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390533, 39.775570, 19.607121>,  <32.548771, 39.956001, 19.609571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390533, 39.775570, 19.607121>,  <32.126808, 39.474854, 19.603037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390533, 39.775570, 19.607121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229841, -0.214461, 0.949305,
		0.715873, -0.623546, -0.314192,
		0.659317, 0.751795, 0.010210,
		32.588329, 40.001110, 19.610184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774895, 39.130112, 19.844719>,  <32.126808, 39.474854, 19.603037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774895, 39.130112, 19.844719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787914, 39.523945, 19.913464>,  <32.795727, 39.760246, 19.954710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787914, 39.523945, 19.913464>,  <32.774895, 39.130112, 19.844719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787914, 39.523945, 19.913464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041827, -0.170460, 0.984476,
		0.998595, -0.039231, 0.035634,
		0.032548, 0.984583, 0.171861,
		32.797680, 39.819321, 19.965021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228210, 39.196655, 20.427355>,  <32.774895, 39.130112, 19.844719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228210, 39.196655, 20.427355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053043, 39.556095, 20.438219>,  <32.947941, 39.771759, 20.444738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053043, 39.556095, 20.438219>,  <33.228210, 39.196655, 20.427355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053043, 39.556095, 20.438219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088503, 0.013024, 0.995991,
		0.894647, 0.438569, -0.085232,
		-0.437920, 0.898603, 0.027162,
		32.921669, 39.825676, 20.446367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574612, 39.502899, 20.894548>,  <33.228210, 39.196655, 20.427355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574612, 39.502899, 20.894548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239109, 39.718910, 20.866676>,  <33.037807, 39.848515, 20.849953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239109, 39.718910, 20.866676>,  <33.574612, 39.502899, 20.894548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239109, 39.718910, 20.866676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002691, 0.123860, 0.992296,
		0.544495, 0.832486, -0.102436,
		-0.838760, 0.540024, -0.069681,
		32.987480, 39.880917, 20.845772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731701, 40.133774, 21.295383>,  <33.574612, 39.502899, 20.894548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731701, 40.133774, 21.295383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335793, 40.087585, 21.261877>,  <33.098248, 40.059872, 21.241774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335793, 40.087585, 21.261877>,  <33.731701, 40.133774, 21.295383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335793, 40.087585, 21.261877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102057, 0.162875, 0.981354,
		-0.099678, 0.979866, -0.172994,
		-0.989772, -0.115474, -0.083767,
		33.038860, 40.052944, 21.236748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432598, 40.644756, 21.728199>,  <33.731701, 40.133774, 21.295383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432598, 40.644756, 21.728199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132587, 40.382553, 21.692955>,  <32.952579, 40.225231, 21.671808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132587, 40.382553, 21.692955>,  <33.432598, 40.644756, 21.728199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132587, 40.382553, 21.692955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140748, 0.028022, 0.989649,
		-0.646253, 0.754668, -0.113279,
		-0.750031, -0.655508, -0.088108,
		32.907578, 40.185902, 21.666523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893913, 40.972645, 22.037909>,  <33.432598, 40.644756, 21.728199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893913, 40.972645, 22.037909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838066, 40.576561, 22.037674>,  <32.804558, 40.338913, 22.037533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838066, 40.576561, 22.037674>,  <32.893913, 40.972645, 22.037909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838066, 40.576561, 22.037674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082014, 0.010973, 0.996571,
		-0.986804, 0.139185, -0.082743,
		-0.139616, -0.990206, -0.000587,
		32.796181, 40.279499, 22.037498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313469, 40.855637, 22.408621>,  <32.893913, 40.972645, 22.037909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313469, 40.855637, 22.408621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479591, 40.494030, 22.449163>,  <32.579266, 40.277065, 22.473490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479591, 40.494030, 22.449163>,  <32.313469, 40.855637, 22.408621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479591, 40.494030, 22.449163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141033, 0.046086, 0.988931,
		-0.898683, -0.425004, -0.108356,
		0.415306, -0.904018, 0.101357,
		32.604183, 40.222824, 22.479570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838572, 40.493179, 22.843349>,  <32.313469, 40.855637, 22.408621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838572, 40.493179, 22.843349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167561, 40.265663, 22.844849>,  <32.364952, 40.129154, 22.845749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167561, 40.265663, 22.844849>,  <31.838572, 40.493179, 22.843349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167561, 40.265663, 22.844849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085739, -0.117457, 0.989370,
		-0.562307, -0.814050, -0.145372,
		0.822472, -0.568794, 0.003749,
		32.414303, 40.095024, 22.845974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717735, 40.030880, 23.325397>,  <31.838572, 40.493179, 22.843349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717735, 40.030880, 23.325397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114120, 40.043716, 23.273300>,  <32.351952, 40.051418, 23.242041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114120, 40.043716, 23.273300>,  <31.717735, 40.030880, 23.325397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114120, 40.043716, 23.273300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132736, -0.094438, 0.986642,
		0.019367, -0.995013, -0.097845,
		0.990962, 0.032096, -0.130245,
		32.411407, 40.053345, 23.234226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954529, 39.617653, 23.775763>,  <31.717735, 40.030880, 23.325397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954529, 39.617653, 23.775763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271496, 39.846561, 23.691309>,  <32.461678, 39.983906, 23.640636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271496, 39.846561, 23.691309>,  <31.954529, 39.617653, 23.775763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271496, 39.846561, 23.691309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341658, -0.129668, 0.930836,
		0.505316, -0.809746, -0.298273,
		0.792417, 0.572274, -0.211132,
		32.509220, 40.018242, 23.627970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579082, 39.264606, 24.014219>,  <31.954529, 39.617653, 23.775763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579082, 39.264606, 24.014219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733833, 39.633457, 24.012953>,  <32.826683, 39.854767, 24.012194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733833, 39.633457, 24.012953>,  <32.579082, 39.264606, 24.014219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733833, 39.633457, 24.012953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327503, -0.134194, 0.935272,
		0.862012, -0.362876, -0.353916,
		0.386881, 0.922124, -0.003166,
		32.849899, 39.910095, 24.012003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270542, 39.266094, 24.282124>,  <32.579082, 39.264606, 24.014219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270542, 39.266094, 24.282124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241566, 39.661983, 24.331440>,  <33.224178, 39.899517, 24.361031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241566, 39.661983, 24.331440>,  <33.270542, 39.266094, 24.282124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241566, 39.661983, 24.331440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283154, -0.098121, 0.954042,
		0.956334, 0.104027, -0.273136,
		-0.072445, 0.989723, 0.123292,
		33.219833, 39.958900, 24.368427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911087, 39.511524, 24.502602>,  <33.270542, 39.266094, 24.282124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911087, 39.511524, 24.502602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627079, 39.759388, 24.636406>,  <33.456676, 39.908108, 24.716688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627079, 39.759388, 24.636406>,  <33.911087, 39.511524, 24.502602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627079, 39.759388, 24.636406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353758, -0.096866, 0.930308,
		0.608878, 0.778869, -0.150433,
		-0.710016, 0.619661, 0.334511,
		33.414074, 39.945286, 24.736759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172649, 39.994011, 25.008923>,  <33.911087, 39.511524, 24.502602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172649, 39.994011, 25.008923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783108, 40.023056, 25.095018>,  <33.549381, 40.040482, 25.146677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783108, 40.023056, 25.095018>,  <34.172649, 39.994011, 25.008923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783108, 40.023056, 25.095018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221754, 0.098439, 0.970121,
		0.049252, 0.992491, -0.111967,
		-0.973858, 0.072609, 0.215240,
		33.490952, 40.044838, 25.159590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013451, 40.623981, 25.499088>,  <34.172649, 39.994011, 25.008923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013451, 40.623981, 25.499088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710640, 40.364822, 25.532898>,  <33.528954, 40.209328, 25.553183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710640, 40.364822, 25.532898>,  <34.013451, 40.623981, 25.499088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710640, 40.364822, 25.532898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119154, -0.009701, 0.992828,
		-0.642429, 0.761668, 0.084543,
		-0.757026, -0.647895, 0.084523,
		33.483532, 40.170452, 25.558254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681633, 40.831394, 26.018862>,  <34.013451, 40.623981, 25.499088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681633, 40.831394, 26.018862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556282, 40.451618, 26.011406>,  <33.481071, 40.223751, 26.006933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556282, 40.451618, 26.011406>,  <33.681633, 40.831394, 26.018862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556282, 40.451618, 26.011406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195032, -0.083560, 0.977231,
		-0.929384, 0.302611, 0.211358,
		-0.313382, -0.949444, -0.018640,
		33.462269, 40.166786, 26.005814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196171, 40.854698, 26.561562>,  <33.681633, 40.831394, 26.018862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196171, 40.854698, 26.561562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319885, 40.480492, 26.493265>,  <33.394112, 40.255966, 26.452288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319885, 40.480492, 26.493265>,  <33.196171, 40.854698, 26.561562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319885, 40.480492, 26.493265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141957, -0.132114, 0.981017,
		-0.940315, -0.327649, 0.091942,
		0.309283, -0.935517, -0.170741,
		33.412670, 40.199837, 26.442043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805363, 40.472462, 26.984024>,  <33.196171, 40.854698, 26.561562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805363, 40.472462, 26.984024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125294, 40.242531, 26.914917>,  <33.317253, 40.104572, 26.873453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125294, 40.242531, 26.914917>,  <32.805363, 40.472462, 26.984024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125294, 40.242531, 26.914917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149803, -0.087561, 0.984831,
		-0.581231, -0.813580, 0.016077,
		0.799831, -0.574823, -0.172770,
		33.365242, 40.070084, 26.863087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853386, 40.006081, 27.604645>,  <32.805363, 40.472462, 26.984024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853386, 40.006081, 27.604645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203850, 39.992294, 27.412333>,  <33.414127, 39.984024, 27.296946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203850, 39.992294, 27.412333>,  <32.853386, 40.006081, 27.604645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203850, 39.992294, 27.412333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448952, -0.304699, 0.840001,
		-0.175444, -0.951825, -0.251493,
		0.876163, -0.034465, -0.480781,
		33.466698, 39.981956, 27.268099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206570, 39.433674, 27.891851>,  <32.853386, 40.006081, 27.604645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206570, 39.433674, 27.891851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522903, 39.635925, 27.753914>,  <33.712704, 39.757275, 27.671152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522903, 39.635925, 27.753914>,  <33.206570, 39.433674, 27.891851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522903, 39.635925, 27.753914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473217, -0.147858, 0.868449,
		0.388123, -0.849988, -0.356204,
		0.790838, 0.505627, -0.344842,
		33.760155, 39.787613, 27.650461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703445, 39.108578, 28.177908>,  <33.206570, 39.433674, 27.891851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703445, 39.108578, 28.177908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885628, 39.449245, 28.074202>,  <33.994938, 39.653645, 28.011978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885628, 39.449245, 28.074202>,  <33.703445, 39.108578, 28.177908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885628, 39.449245, 28.074202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555082, -0.043987, 0.830632,
		0.696019, -0.522232, -0.492779,
		0.455458, 0.851668, -0.259266,
		34.022266, 39.704746, 27.996422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445671, 38.999771, 28.235888>,  <33.703445, 39.108578, 28.177908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445671, 38.999771, 28.235888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379936, 39.394241, 28.244368>,  <34.340496, 39.630924, 28.249454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379936, 39.394241, 28.244368>,  <34.445671, 38.999771, 28.235888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379936, 39.394241, 28.244368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676754, 0.097088, 0.729779,
		0.717633, 0.134275, -0.683354,
		-0.164337, 0.986176, 0.021198,
		34.330635, 39.690094, 28.250727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017056, 39.312038, 28.272800>,  <34.445671, 38.999771, 28.235888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017056, 39.312038, 28.272800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776707, 39.599648, 28.412489>,  <34.632496, 39.772213, 28.496302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776707, 39.599648, 28.412489>,  <35.017056, 39.312038, 28.272800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776707, 39.599648, 28.412489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678412, 0.227680, 0.698512,
		0.422736, 0.656633, -0.624602,
		-0.600875, 0.719024, 0.349219,
		34.596443, 39.815353, 28.517254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466141, 39.823338, 28.352819>,  <35.017056, 39.312038, 28.272800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466141, 39.823338, 28.352819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144669, 39.893005, 28.580421>,  <34.951786, 39.934807, 28.716984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144669, 39.893005, 28.580421>,  <35.466141, 39.823338, 28.352819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144669, 39.893005, 28.580421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594717, 0.202347, 0.778053,
		0.020379, 0.963701, -0.266205,
		-0.803676, 0.174173, 0.569006,
		34.903564, 39.945255, 28.751123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704380, 40.467564, 28.764193>,  <35.466141, 39.823338, 28.352819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704380, 40.467564, 28.764193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390522, 40.312492, 28.957699>,  <35.202206, 40.219448, 29.073803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390522, 40.312492, 28.957699>,  <35.704380, 40.467564, 28.764193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390522, 40.312492, 28.957699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452358, 0.175551, 0.874388,
		-0.423910, 0.904922, 0.037625,
		-0.784648, -0.387682, 0.483767,
		35.155128, 40.196186, 29.102829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583752, 40.904366, 29.374615>,  <35.704380, 40.467564, 28.764193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583752, 40.904366, 29.374615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402752, 40.556278, 29.452551>,  <35.294151, 40.347427, 29.499313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402752, 40.556278, 29.452551>,  <35.583752, 40.904366, 29.374615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402752, 40.556278, 29.452551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235661, 0.094033, 0.967276,
		-0.860063, 0.483609, 0.162526,
		-0.452500, -0.870218, 0.194842,
		35.267002, 40.295212, 29.511003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111973, 41.029114, 29.944035>,  <35.583752, 40.904366, 29.374615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111973, 41.029114, 29.944035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194843, 40.637817, 29.939678>,  <35.244568, 40.403038, 29.937065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194843, 40.637817, 29.939678>,  <35.111973, 41.029114, 29.944035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194843, 40.637817, 29.939678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221648, 0.036095, 0.974459,
		-0.952863, -0.204302, 0.224303,
		0.207180, -0.978242, -0.010889,
		35.256996, 40.344345, 29.936411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814537, 40.781696, 30.552967>,  <35.111973, 41.029114, 29.944035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814537, 40.781696, 30.552967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063686, 40.489075, 30.442074>,  <35.213177, 40.313503, 30.375538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063686, 40.489075, 30.442074>,  <34.814537, 40.781696, 30.552967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063686, 40.489075, 30.442074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206940, -0.187679, 0.960184,
		-0.754454, -0.655446, 0.034486,
		0.622877, -0.731551, -0.277233,
		35.250549, 40.269611, 30.358904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630920, 40.161953, 30.855011>,  <34.814537, 40.781696, 30.552967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630920, 40.161953, 30.855011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019588, 40.106316, 30.778589>,  <35.252789, 40.072933, 30.732737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019588, 40.106316, 30.778589>,  <34.630920, 40.161953, 30.855011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019588, 40.106316, 30.778589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146397, -0.280364, 0.948664,
		-0.185518, -0.949763, -0.252060,
		0.971674, -0.139093, -0.191055,
		35.311092, 40.064587, 30.721273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715729, 39.517479, 31.131027>,  <34.630920, 40.161953, 30.855011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715729, 39.517479, 31.131027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084900, 39.669693, 31.107716>,  <35.306404, 39.761021, 31.093729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084900, 39.669693, 31.107716>,  <34.715729, 39.517479, 31.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084900, 39.669693, 31.107716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202931, -0.352250, 0.913640,
		0.327145, -0.855051, -0.402324,
		0.922927, 0.380537, -0.058279,
		35.361778, 39.783855, 31.090231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152748, 38.967720, 31.327549>,  <34.715729, 39.517479, 31.131027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152748, 38.967720, 31.327549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391026, 39.287636, 31.357191>,  <35.533993, 39.479584, 31.374977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391026, 39.287636, 31.357191>,  <35.152748, 38.967720, 31.327549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391026, 39.287636, 31.357191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409969, -0.382093, 0.828209,
		0.690706, -0.462976, -0.555498,
		0.595693, 0.799786, 0.074108,
		35.569733, 39.527573, 31.379423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790436, 38.757076, 31.466352>,  <35.152748, 38.967720, 31.327549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790436, 38.757076, 31.466352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829464, 39.133209, 31.596741>,  <35.852879, 39.358891, 31.674974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829464, 39.133209, 31.596741>,  <35.790436, 38.757076, 31.466352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829464, 39.133209, 31.596741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460267, -0.333035, 0.822947,
		0.882403, 0.069742, -0.465297,
		0.097566, 0.940331, 0.325971,
		35.858734, 39.415310, 31.694532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469635, 38.898418, 31.642797>,  <35.790436, 38.757076, 31.466352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469635, 38.898418, 31.642797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271057, 39.186222, 31.837055>,  <36.151909, 39.358902, 31.953609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271057, 39.186222, 31.837055>,  <36.469635, 38.898418, 31.642797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271057, 39.186222, 31.837055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497583, -0.222558, 0.838379,
		0.711303, 0.657859, -0.247527,
		-0.496446, 0.719507, 0.485645,
		36.122124, 39.402073, 31.982748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030312, 39.326614, 31.828577>,  <36.469635, 38.898418, 31.642797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030312, 39.326614, 31.828577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721863, 39.401833, 32.071892>,  <36.536793, 39.446964, 32.217880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721863, 39.401833, 32.071892>,  <37.030312, 39.326614, 31.828577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721863, 39.401833, 32.071892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562393, -0.246702, 0.789210,
		0.298471, 0.950672, 0.084483,
		-0.771122, 0.188044, 0.608285,
		36.490524, 39.458244, 32.254375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297352, 39.893368, 32.344086>,  <37.030312, 39.326614, 31.828577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297352, 39.893368, 32.344086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969498, 39.724567, 32.499065>,  <36.772785, 39.623287, 32.592052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969498, 39.724567, 32.499065>,  <37.297352, 39.893368, 32.344086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969498, 39.724567, 32.499065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558552, -0.438270, 0.704230,
		-0.127377, 0.793622, 0.594929,
		-0.819631, -0.422001, 0.387453,
		36.723610, 39.597969, 32.615303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344059, 40.080711, 33.081223>,  <37.297352, 39.893368, 32.344086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344059, 40.080711, 33.081223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105087, 39.760929, 33.056107>,  <36.961704, 39.569057, 33.041039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105087, 39.760929, 33.056107>,  <37.344059, 40.080711, 33.081223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105087, 39.760929, 33.056107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477033, -0.417234, 0.773534,
		-0.644606, 0.432180, 0.630637,
		-0.597430, -0.799460, -0.062787,
		36.925858, 39.521091, 33.037270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944382, 40.033062, 33.795555>,  <37.344059, 40.080711, 33.081223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944382, 40.033062, 33.795555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129276, 39.729515, 33.612053>,  <37.240211, 39.547386, 33.501953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129276, 39.729515, 33.612053>,  <36.944382, 40.033062, 33.795555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129276, 39.729515, 33.612053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714192, 0.011950, 0.699848,
		-0.525612, -0.651132, 0.547503,
		0.462236, -0.758870, -0.458753,
		37.267948, 39.501854, 33.474426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116917, 39.333645, 34.252426>,  <36.944382, 40.033062, 33.795555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116917, 39.333645, 34.252426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384403, 39.410744, 33.965187>,  <37.544895, 39.457001, 33.792843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384403, 39.410744, 33.965187>,  <37.116917, 39.333645, 34.252426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384403, 39.410744, 33.965187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729871, 0.014034, 0.683441,
		0.141808, -0.981149, -0.131295,
		0.668714, 0.192745, -0.718102,
		37.585018, 39.468567, 33.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780540, 38.785450, 34.157257>,  <37.116917, 39.333645, 34.252426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780540, 38.785450, 34.157257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812164, 39.174931, 34.071789>,  <37.831139, 39.408619, 34.020508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812164, 39.174931, 34.071789>,  <37.780540, 38.785450, 34.157257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812164, 39.174931, 34.071789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713294, 0.094480, 0.694467,
		0.696392, -0.207309, -0.687067,
		0.079055, 0.973702, -0.213667,
		37.835880, 39.467041, 34.007690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418591, 39.103230, 34.376266>,  <37.780540, 38.785450, 34.157257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418591, 39.103230, 34.376266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224216, 39.446640, 34.310776>,  <38.107594, 39.652687, 34.271481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224216, 39.446640, 34.310776>,  <38.418591, 39.103230, 34.376266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224216, 39.446640, 34.310776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736455, 0.503091, 0.452254,
		0.470641, 0.099186, -0.876732,
		-0.485933, 0.858523, -0.163729,
		38.078438, 39.704197, 34.261658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983875, 39.546703, 34.087757>,  <38.418591, 39.103230, 34.376266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983875, 39.546703, 34.087757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704433, 39.774879, 34.260525>,  <38.536770, 39.911785, 34.364185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704433, 39.774879, 34.260525>,  <38.983875, 39.546703, 34.087757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704433, 39.774879, 34.260525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705423, 0.448094, 0.549172,
		0.119729, 0.688338, -0.715441,
		-0.698601, 0.570440, 0.431920,
		38.494854, 39.946011, 34.390102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360023, 40.081799, 34.463978>,  <38.983875, 39.546703, 34.087757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360023, 40.081799, 34.463978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978085, 40.182549, 34.527004>,  <38.748920, 40.242996, 34.564819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978085, 40.182549, 34.527004>,  <39.360023, 40.081799, 34.463978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978085, 40.182549, 34.527004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272782, 0.533133, 0.800849,
		0.117709, 0.807669, -0.577767,
		-0.954848, 0.251872, 0.157563,
		38.691631, 40.258110, 34.574272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279282, 40.769798, 34.531490>,  <39.360023, 40.081799, 34.463978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279282, 40.769798, 34.531490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957710, 40.639442, 34.730484>,  <38.764767, 40.561230, 34.849880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957710, 40.639442, 34.730484>,  <39.279282, 40.769798, 34.531490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957710, 40.639442, 34.730484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189971, 0.651953, 0.734077,
		-0.563563, 0.684655, -0.462217,
		-0.803933, -0.325891, 0.497481,
		38.716530, 40.541676, 34.879726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869076, 41.371609, 34.840286>,  <39.279282, 40.769798, 34.531490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869076, 41.371609, 34.840286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785267, 41.036213, 35.041496>,  <38.734982, 40.834976, 35.162220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785267, 41.036213, 35.041496>,  <38.869076, 41.371609, 34.840286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785267, 41.036213, 35.041496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031753, 0.520003, 0.853574,
		-0.977287, 0.162874, -0.135579,
		-0.209526, -0.838492, 0.503021,
		38.722408, 40.784664, 35.192402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443707, 41.659576, 35.276478>,  <38.869076, 41.371609, 34.840286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443707, 41.659576, 35.276478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535660, 41.304283, 35.435570>,  <38.590832, 41.091106, 35.531025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535660, 41.304283, 35.435570>,  <38.443707, 41.659576, 35.276478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535660, 41.304283, 35.435570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203924, 0.355643, 0.912104,
		-0.951613, -0.290789, -0.099374,
		0.229887, -0.888234, 0.397733,
		38.604626, 41.037811, 35.554890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071480, 41.624599, 35.799698>,  <38.443707, 41.659576, 35.276478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071480, 41.624599, 35.799698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316681, 41.317089, 35.872601>,  <38.463802, 41.132584, 35.916340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316681, 41.317089, 35.872601>,  <38.071480, 41.624599, 35.799698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316681, 41.317089, 35.872601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068766, 0.177889, 0.981645,
		-0.787082, -0.614285, 0.056181,
		0.613003, -0.768772, 0.182255,
		38.500584, 41.086456, 35.927277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738827, 41.213299, 36.418568>,  <38.071480, 41.624599, 35.799698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738827, 41.213299, 36.418568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137028, 41.175537, 36.415276>,  <38.375946, 41.152882, 36.413300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137028, 41.175537, 36.415276>,  <37.738827, 41.213299, 36.418568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137028, 41.175537, 36.415276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042775, 0.370156, 0.927984,
		-0.084559, -0.924160, 0.372528,
		0.995500, -0.094404, -0.008231,
		38.435677, 41.147217, 36.412807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502117, 40.498199, 36.296967>,  <37.738827, 41.213299, 36.418568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502117, 40.498199, 36.296967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471363, 40.116043, 36.411026>,  <37.452911, 39.886749, 36.479462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471363, 40.116043, 36.411026>,  <37.502117, 40.498199, 36.296967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471363, 40.116043, 36.411026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982701, 0.024288, -0.183601,
		0.168486, -0.294331, -0.940735,
		-0.076888, -0.955395, 0.285147,
		37.448296, 39.829426, 36.496571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058331, 40.272461, 36.618664>,  <37.502117, 40.498199, 36.296967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058331, 40.272461, 36.618664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432972, 40.399693, 36.559860>,  <38.657757, 40.476032, 36.524578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432972, 40.399693, 36.559860>,  <38.058331, 40.272461, 36.618664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432972, 40.399693, 36.559860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167093, -0.036659, 0.985260,
		0.307998, -0.947356, -0.087483,
		0.936599, 0.318076, -0.147005,
		38.713951, 40.495113, 36.515759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524731, 39.861340, 37.069283>,  <38.058331, 40.272461, 36.618664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524731, 39.861340, 37.069283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691814, 40.213131, 36.978035>,  <38.792065, 40.424206, 36.923286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691814, 40.213131, 36.978035>,  <38.524731, 39.861340, 37.069283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691814, 40.213131, 36.978035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219129, 0.146150, 0.964688,
		0.881759, -0.452950, -0.131670,
		0.417712, 0.879475, -0.228124,
		38.817127, 40.476974, 36.909599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248730, 39.804668, 37.263649>,  <38.524731, 39.861340, 37.069283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248730, 39.804668, 37.263649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164295, 40.195435, 37.276833>,  <39.113632, 40.429893, 37.284740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164295, 40.195435, 37.276833>,  <39.248730, 39.804668, 37.263649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164295, 40.195435, 37.276833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427317, 0.061905, 0.901980,
		0.879114, 0.204481, -0.430518,
		-0.211089, 0.976911, 0.032957,
		39.100967, 40.488506, 37.286720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870956, 40.179932, 37.413853>,  <39.248730, 39.804668, 37.263649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870956, 40.179932, 37.413853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552090, 40.394806, 37.524094>,  <39.360771, 40.523731, 37.590237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552090, 40.394806, 37.524094>,  <39.870956, 40.179932, 37.413853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552090, 40.394806, 37.524094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475803, 0.277949, 0.834479,
		0.371664, 0.796353, -0.477166,
		-0.797168, 0.537183, 0.275603,
		39.312939, 40.555962, 37.606773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129093, 40.756115, 37.804749>,  <39.870956, 40.179932, 37.413853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129093, 40.756115, 37.804749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737457, 40.772182, 37.884518>,  <39.502476, 40.781822, 37.932381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737457, 40.772182, 37.884518>,  <40.129093, 40.756115, 37.804749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737457, 40.772182, 37.884518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203429, 0.194697, 0.959536,
		-0.000286, 0.980041, -0.198796,
		-0.979090, 0.040167, 0.199425,
		39.443729, 40.784233, 37.944344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058811, 41.275444, 38.273350>,  <40.129093, 40.756115, 37.804749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058811, 41.275444, 38.273350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709003, 41.086758, 38.318420>,  <39.499119, 40.973545, 38.345463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709003, 41.086758, 38.318420>,  <40.058811, 41.275444, 38.273350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709003, 41.086758, 38.318420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013517, 0.255951, 0.966595,
		-0.484799, 0.843785, -0.230210,
		-0.874521, -0.471717, 0.112679,
		39.446648, 40.945244, 38.352222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668880, 41.825703, 38.539337>,  <40.058811, 41.275444, 38.273350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668880, 41.825703, 38.539337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498451, 41.475216, 38.629402>,  <39.396194, 41.264923, 38.683441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498451, 41.475216, 38.629402>,  <39.668880, 41.825703, 38.539337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498451, 41.475216, 38.629402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040215, 0.266979, 0.962863,
		-0.903794, 0.401196, -0.148990,
		-0.426074, -0.876222, 0.225160,
		39.370628, 41.212349, 38.696949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288837, 41.976833, 39.062275>,  <39.668880, 41.825703, 38.539337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288837, 41.976833, 39.062275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310066, 41.583019, 39.129063>,  <39.322803, 41.346733, 39.169136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310066, 41.583019, 39.129063>,  <39.288837, 41.976833, 39.062275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310066, 41.583019, 39.129063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029587, 0.165580, 0.985752,
		-0.998152, -0.057258, -0.020342,
		0.053074, -0.984533, 0.166968,
		39.325989, 41.287659, 39.179153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678680, 41.695015, 39.388515>,  <39.288837, 41.976833, 39.062275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678680, 41.695015, 39.388515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020226, 41.518223, 39.498478>,  <39.225151, 41.412148, 39.564453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020226, 41.518223, 39.498478>,  <38.678680, 41.695015, 39.388515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020226, 41.518223, 39.498478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174276, 0.254898, 0.951133,
		-0.490459, -0.860044, 0.140620,
		0.853860, -0.441985, 0.274903,
		39.276382, 41.385628, 39.580948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596947, 41.218597, 40.049156>,  <38.678680, 41.695015, 39.388515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596947, 41.218597, 40.049156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970818, 41.351467, 39.998505>,  <39.195141, 41.431187, 39.968113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970818, 41.351467, 39.998505>,  <38.596947, 41.218597, 40.049156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970818, 41.351467, 39.998505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064165, 0.192721, 0.979154,
		0.349653, -0.923320, 0.158818,
		0.934680, 0.332173, -0.126630,
		39.251221, 41.451118, 39.960514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098888, 40.974419, 40.570187>,  <38.596947, 41.218597, 40.049156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098888, 40.974419, 40.570187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174198, 41.339848, 40.425999>,  <39.219383, 41.559105, 40.339485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174198, 41.339848, 40.425999>,  <39.098888, 40.974419, 40.570187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174198, 41.339848, 40.425999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012735, 0.369270, 0.929235,
		0.982033, -0.170364, 0.081160,
		0.188278, 0.913573, -0.360465,
		39.230682, 41.613918, 40.317860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299065, 40.366032, 40.686569>,  <39.098888, 40.974419, 40.570187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299065, 40.366032, 40.686569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413841, 40.111626, 40.973106>,  <39.482708, 39.958981, 41.145027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413841, 40.111626, 40.973106>,  <39.299065, 40.366032, 40.686569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413841, 40.111626, 40.973106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634220, -0.434298, -0.639649,
		0.717934, 0.637860, 0.278757,
		0.286943, -0.636019, 0.716341,
		39.499924, 39.920818, 41.188007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257744, 40.327656, 39.948601>,  <39.299065, 40.366032, 40.686569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257744, 40.327656, 39.948601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130913, 40.635742, 39.727249>,  <39.054813, 40.820595, 39.594437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130913, 40.635742, 39.727249>,  <39.257744, 40.327656, 39.948601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130913, 40.635742, 39.727249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173877, -0.526389, -0.832275,
		-0.932323, -0.360120, 0.032986,
		-0.317082, 0.770213, -0.553381,
		39.035789, 40.866806, 39.561234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372059, 40.086426, 39.305840>,  <39.257744, 40.327656, 39.948601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372059, 40.086426, 39.305840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213520, 40.448257, 39.243053>,  <39.118397, 40.665356, 39.205379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213520, 40.448257, 39.243053>,  <39.372059, 40.086426, 39.305840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213520, 40.448257, 39.243053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152629, -0.233513, -0.960300,
		-0.905324, -0.356657, 0.230618,
		-0.396350, 0.904581, -0.156968,
		39.094616, 40.719631, 39.195965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705868, 40.027756, 38.943684>,  <39.372059, 40.086426, 39.305840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705868, 40.027756, 38.943684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892246, 40.371922, 38.861145>,  <39.004074, 40.578423, 38.811623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892246, 40.371922, 38.861145>,  <38.705868, 40.027756, 38.943684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892246, 40.371922, 38.861145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154685, -0.150401, -0.976449,
		-0.871186, 0.486892, 0.063015,
		0.465948, 0.860416, -0.206342,
		39.032032, 40.630047, 38.799244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301495, 40.410549, 38.512074>,  <38.705868, 40.027756, 38.943684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301495, 40.410549, 38.512074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659466, 40.582344, 38.463669>,  <38.874249, 40.685421, 38.434628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659466, 40.582344, 38.463669>,  <38.301495, 40.410549, 38.512074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659466, 40.582344, 38.463669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156489, 0.048128, -0.986506,
		-0.417868, 0.901789, 0.110281,
		0.894929, 0.429488, -0.121009,
		38.927944, 40.711189, 38.427364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119907, 40.962761, 38.099007>,  <38.301495, 40.410549, 38.512074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119907, 40.962761, 38.099007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509258, 40.877995, 38.064068>,  <38.742870, 40.827133, 38.043106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509258, 40.877995, 38.064068>,  <38.119907, 40.962761, 38.099007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509258, 40.877995, 38.064068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019189, 0.304380, -0.952357,
		0.228405, 0.928679, 0.292210,
		0.973377, -0.211916, -0.087343,
		38.801270, 40.814419, 38.037865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371029, 41.394779, 37.701050>,  <38.119907, 40.962761, 38.099007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371029, 41.394779, 37.701050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672806, 41.132969, 37.681416>,  <38.853874, 40.975883, 37.669636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672806, 41.132969, 37.681416>,  <38.371029, 41.394779, 37.701050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672806, 41.132969, 37.681416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107114, 0.196558, -0.974624,
		0.647562, 0.730044, 0.218401,
		0.754447, -0.654523, -0.049085,
		38.899139, 40.936611, 37.666691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819099, 41.802383, 37.262569>,  <38.371029, 41.394779, 37.701050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819099, 41.802383, 37.262569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899632, 41.410824, 37.248642>,  <38.947952, 41.175888, 37.240284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899632, 41.410824, 37.248642>,  <38.819099, 41.802383, 37.262569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899632, 41.410824, 37.248642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112927, 0.012113, -0.993530,
		0.972991, 0.203964, -0.108105,
		0.201335, -0.978904, -0.034818,
		38.960033, 41.117153, 37.238197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240482, 41.718597, 36.750778>,  <38.819099, 41.802383, 37.262569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240482, 41.718597, 36.750778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065144, 41.361843, 36.795296>,  <38.959938, 41.147789, 36.822006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065144, 41.361843, 36.795296>,  <39.240482, 41.718597, 36.750778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065144, 41.361843, 36.795296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074955, -0.087122, -0.993374,
		0.895673, -0.443789, -0.028661,
		-0.438351, -0.891887, 0.111297,
		38.933640, 41.094276, 36.828686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679783, 41.144897, 36.454231>,  <39.240482, 41.718597, 36.750778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679783, 41.144897, 36.454231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284222, 41.091232, 36.428703>,  <39.046886, 41.059032, 36.413387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284222, 41.091232, 36.428703>,  <39.679783, 41.144897, 36.454231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284222, 41.091232, 36.428703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099573, -0.279679, -0.954916,
		0.110265, -0.950673, 0.289934,
		-0.988902, -0.134163, -0.063822,
		38.987553, 41.050983, 36.409557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549229, 40.445641, 36.165451>,  <39.679783, 41.144897, 36.454231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549229, 40.445641, 36.165451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212154, 40.657516, 36.126835>,  <39.009911, 40.784641, 36.103664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212154, 40.657516, 36.126835>,  <39.549229, 40.445641, 36.165451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212154, 40.657516, 36.126835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237276, -0.526309, -0.816516,
		-0.483308, -0.665156, 0.569193,
		-0.842682, 0.529685, -0.096544,
		38.959351, 40.816422, 36.097870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007217, 39.937244, 36.121559>,  <39.549229, 40.445641, 36.165451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007217, 39.937244, 36.121559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873814, 40.267036, 35.938690>,  <38.793774, 40.464912, 35.828968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873814, 40.267036, 35.938690>,  <39.007217, 39.937244, 36.121559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873814, 40.267036, 35.938690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073396, -0.506169, -0.859306,
		-0.939886, -0.253030, 0.229325,
		-0.333507, 0.824481, -0.457169,
		38.773762, 40.514381, 35.801540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406288, 39.736431, 35.883320>,  <39.007217, 39.937244, 36.121559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406288, 39.736431, 35.883320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535324, 40.048954, 35.669594>,  <38.612747, 40.236469, 35.541359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535324, 40.048954, 35.669594>,  <38.406288, 39.736431, 35.883320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535324, 40.048954, 35.669594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135578, -0.520532, -0.843010,
		-0.936777, 0.344391, -0.061992,
		0.322594, 0.781308, -0.534315,
		38.632103, 40.283348, 35.509300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290016, 39.513161, 35.237076>,  <38.406288, 39.736431, 35.883320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290016, 39.513161, 35.237076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492119, 39.840279, 35.126862>,  <38.613380, 40.036549, 35.060734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492119, 39.840279, 35.126862>,  <38.290016, 39.513161, 35.237076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492119, 39.840279, 35.126862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058540, -0.351038, -0.934529,
		-0.860982, 0.456046, -0.225238,
		0.505255, 0.817798, -0.275540,
		38.643696, 40.085617, 35.044201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994324, 39.703392, 35.310341>,  <38.290016, 39.513161, 35.237076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994324, 39.703392, 35.310341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393074, 39.706669, 35.278900>,  <39.632324, 39.708633, 35.260036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393074, 39.706669, 35.278900>,  <38.994324, 39.703392, 35.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393074, 39.706669, 35.278900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047361, -0.858123, 0.511256,
		-0.063264, -0.513380, -0.855826,
		0.996873, 0.008188, -0.078602,
		39.692135, 39.709126, 35.255318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142860, 39.134033, 35.023361>,  <38.994324, 39.703392, 35.310341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142860, 39.134033, 35.023361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453480, 39.268982, 35.236210>,  <39.639851, 39.349949, 35.363918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453480, 39.268982, 35.236210>,  <39.142860, 39.134033, 35.023361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453480, 39.268982, 35.236210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080170, -0.890608, 0.447650,
		0.624938, -0.304961, -0.718646,
		0.776547, 0.337367, 0.532126,
		39.686443, 39.370193, 35.395847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694023, 38.719685, 34.935036>,  <39.142860, 39.134033, 35.023361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694023, 38.719685, 34.935036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757225, 38.851974, 35.307198>,  <39.795147, 38.931347, 35.530495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757225, 38.851974, 35.307198>,  <39.694023, 38.719685, 34.935036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757225, 38.851974, 35.307198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292018, -0.915747, 0.275920,
		0.943271, 0.228100, -0.241266,
		0.158001, 0.330722, 0.930408,
		39.804626, 38.951191, 35.586319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211029, 38.099663, 35.033432>,  <39.694023, 38.719685, 34.935036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211029, 38.099663, 35.033432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327194, 37.919643, 35.371216>,  <40.396893, 37.811630, 35.573887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327194, 37.919643, 35.371216>,  <40.211029, 38.099663, 35.033432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327194, 37.919643, 35.371216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848804, -0.286293, -0.444487,
		0.441805, 0.845867, 0.298861,
		0.290415, -0.450051, 0.844460,
		40.414318, 37.784630, 35.624554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900593, 38.418045, 35.272118>,  <40.211029, 38.099663, 35.033432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900593, 38.418045, 35.272118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837822, 38.036850, 35.375797>,  <40.800159, 37.808132, 35.438004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837822, 38.036850, 35.375797>,  <40.900593, 38.418045, 35.272118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837822, 38.036850, 35.375797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879547, -0.254227, -0.402201,
		0.449190, 0.164863, 0.878094,
		-0.156928, -0.952989, 0.259201,
		40.790745, 37.750954, 35.453556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441914, 38.791924, 34.816185>,  <40.900593, 38.418045, 35.272118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441914, 38.791924, 34.816185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557987, 39.004517, 35.134510>,  <41.627632, 39.132072, 35.325504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557987, 39.004517, 35.134510>,  <41.441914, 38.791924, 34.816185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557987, 39.004517, 35.134510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611112, -0.742871, 0.273285,
		0.736432, 0.407027, -0.540367,
		0.290188, 0.531481, 0.795813,
		41.645042, 39.163960, 35.373253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251041, 39.004894, 34.772095>,  <41.441914, 38.791924, 34.816185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251041, 39.004894, 34.772095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051754, 38.927307, 35.110126>,  <41.932182, 38.880753, 35.312946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051754, 38.927307, 35.110126>,  <42.251041, 39.004894, 34.772095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051754, 38.927307, 35.110126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692424, -0.675624, 0.253142,
		0.521853, 0.711271, 0.470917,
		-0.498215, -0.193971, 0.845078,
		41.902290, 38.869114, 35.363651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600117, 39.109684, 35.334190>,  <42.251041, 39.004894, 34.772095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600117, 39.109684, 35.334190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361366, 38.809578, 35.447926>,  <42.218117, 38.629513, 35.516167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361366, 38.809578, 35.447926>,  <42.600117, 39.109684, 35.334190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361366, 38.809578, 35.447926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802320, -0.555824, 0.217583,
		-0.005205, 0.357997, 0.933708,
		-0.596872, -0.750265, 0.284335,
		42.182304, 38.584499, 35.533226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590267, 38.898403, 36.076588>,  <42.600117, 39.109684, 35.334190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590267, 38.898403, 36.076588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429092, 38.570087, 35.914631>,  <42.332386, 38.373096, 35.817455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429092, 38.570087, 35.914631>,  <42.590267, 38.898403, 36.076588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429092, 38.570087, 35.914631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719348, -0.557536, 0.414357,
		-0.565844, -0.124300, 0.815089,
		-0.402937, -0.820794, -0.404894,
		42.308212, 38.323849, 35.793163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112881, 38.177895, 36.408222>,  <42.590267, 38.898403, 36.076588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112881, 38.177895, 36.408222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366905, 38.174244, 36.099258>,  <42.519321, 38.172054, 35.913879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366905, 38.174244, 36.099258>,  <42.112881, 38.177895, 36.408222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366905, 38.174244, 36.099258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602160, -0.620466, 0.502419,
		-0.483835, -0.784180, -0.388542,
		0.635064, -0.009123, -0.772405,
		42.557423, 38.171509, 35.867538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409981, 37.516750, 36.363159>,  <42.112881, 38.177895, 36.408222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409981, 37.516750, 36.363159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652706, 37.713356, 36.113300>,  <42.798340, 37.831322, 35.963383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652706, 37.713356, 36.113300>,  <42.409981, 37.516750, 36.363159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652706, 37.713356, 36.113300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789175, -0.278876, 0.547202,
		0.094759, -0.825009, -0.557118,
		0.606814, 0.491516, -0.624651,
		42.834751, 37.860809, 35.925903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862076, 37.164196, 35.835922>,  <42.409981, 37.516750, 36.363159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862076, 37.164196, 35.835922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732498, 36.904526, 36.111206>,  <42.654751, 36.748726, 36.276375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732498, 36.904526, 36.111206>,  <42.862076, 37.164196, 35.835922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732498, 36.904526, 36.111206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577328, 0.711936, 0.399799,
		-0.749500, -0.267808, -0.605416,
		-0.323948, -0.649173, 0.688209,
		42.635315, 36.709774, 36.317669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923817, 37.158546, 34.992802>,  <42.862076, 37.164196, 35.835922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923817, 37.158546, 34.992802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121605, 36.857079, 35.166000>,  <43.240276, 36.676197, 35.269920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121605, 36.857079, 35.166000>,  <42.923817, 37.158546, 34.992802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121605, 36.857079, 35.166000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062013, -0.527476, -0.847303,
		0.866980, 0.392114, -0.307558,
		0.494470, -0.753668, 0.432995,
		43.269947, 36.630978, 35.295898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000717, 37.859825, 35.055370>,  <42.923817, 37.158546, 34.992802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000717, 37.859825, 35.055370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055992, 38.234356, 34.926247>,  <43.089157, 38.459072, 34.848774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055992, 38.234356, 34.926247>,  <43.000717, 37.859825, 35.055370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055992, 38.234356, 34.926247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985404, -0.162695, -0.050084,
		-0.099414, -0.311174, -0.945139,
		0.138185, 0.936323, -0.322806,
		43.097446, 38.515251, 34.829403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415279, 37.758976, 34.503658>,  <43.000717, 37.859825, 35.055370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415279, 37.758976, 34.503658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445297, 38.116425, 34.680660>,  <43.463306, 38.330894, 34.786861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445297, 38.116425, 34.680660>,  <43.415279, 37.758976, 34.503658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445297, 38.116425, 34.680660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983923, -0.138475, 0.112786,
		0.162064, 0.426926, -0.889646,
		0.075043, 0.893621, 0.442504,
		43.467812, 38.384510, 34.813412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016846, 37.963799, 34.319717>,  <43.415279, 37.758976, 34.503658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016846, 37.963799, 34.319717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936741, 38.195805, 34.635559>,  <43.888680, 38.335007, 34.825066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936741, 38.195805, 34.635559>,  <44.016846, 37.963799, 34.319717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936741, 38.195805, 34.635559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877518, -0.252243, 0.407842,
		0.435727, 0.774569, -0.458459,
		-0.200259, 0.580014, 0.789608,
		43.876663, 38.369808, 34.872440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540955, 38.502243, 34.437988>,  <44.016846, 37.963799, 34.319717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540955, 38.502243, 34.437988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350010, 38.337830, 34.748646>,  <44.235443, 38.239182, 34.935040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350010, 38.337830, 34.748646>,  <44.540955, 38.502243, 34.437988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350010, 38.337830, 34.748646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841438, -0.468503, 0.269233,
		0.253195, 0.782019, 0.569508,
		-0.477361, -0.411037, 0.776643,
		44.206802, 38.214520, 34.981640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390347, 38.696285, 33.708794>,  <44.540955, 38.502243, 34.437988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390347, 38.696285, 33.708794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611408, 38.987816, 33.870472>,  <44.744045, 39.162735, 33.967480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611408, 38.987816, 33.870472>,  <44.390347, 38.696285, 33.708794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611408, 38.987816, 33.870472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800422, -0.599277, -0.013825,
		0.232150, 0.331169, -0.914567,
		0.552657, 0.728831, 0.404197,
		44.777206, 39.206467, 33.991730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859024, 38.950798, 33.234486>,  <44.390347, 38.696285, 33.708794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859024, 38.950798, 33.234486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974697, 38.963421, 33.617188>,  <45.044102, 38.970993, 33.846809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974697, 38.963421, 33.617188>,  <44.859024, 38.950798, 33.234486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974697, 38.963421, 33.617188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759378, -0.616099, -0.209207,
		0.582854, 0.787036, -0.202127,
		0.289184, 0.031554, 0.956754,
		45.061451, 38.972885, 33.904213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658955, 39.085850, 33.320515>,  <44.859024, 38.950798, 33.234486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658955, 39.085850, 33.320515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496910, 38.915005, 33.643864>,  <45.399681, 38.812496, 33.837872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496910, 38.915005, 33.643864>,  <45.658955, 39.085850, 33.320515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496910, 38.915005, 33.643864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752058, -0.658459, 0.028989,
		0.519896, 0.619684, 0.587963,
		-0.405113, -0.427111, 0.808368,
		45.375378, 38.786873, 33.886375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182919, 39.086933, 33.935669>,  <45.658955, 39.085850, 33.320515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182919, 39.086933, 33.935669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909698, 38.794807, 33.939377>,  <45.745766, 38.619534, 33.941601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909698, 38.794807, 33.939377>,  <46.182919, 39.086933, 33.935669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909698, 38.794807, 33.939377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725334, -0.676801, 0.125817,
		-0.085610, 0.092666, 0.992010,
		-0.683053, -0.730310, 0.009273,
		45.704784, 38.575714, 33.942158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246464, 38.715946, 34.607273>,  <46.182919, 39.086933, 33.935669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246464, 38.715946, 34.607273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106575, 38.472759, 34.322155>,  <46.022640, 38.326847, 34.151085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106575, 38.472759, 34.322155>,  <46.246464, 38.715946, 34.607273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106575, 38.472759, 34.322155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772411, -0.617673, 0.147858,
		-0.530166, -0.498860, 0.685611,
		-0.349723, -0.607963, -0.712794,
		46.001659, 38.290371, 34.108318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995670, 38.049068, 34.826859>,  <46.246464, 38.715946, 34.607273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995670, 38.049068, 34.826859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124104, 38.017181, 34.449383>,  <46.201164, 37.998051, 34.222897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124104, 38.017181, 34.449383>,  <45.995670, 38.049068, 34.826859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124104, 38.017181, 34.449383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560745, -0.787006, 0.257268,
		-0.763198, -0.611773, -0.207993,
		0.321082, -0.079716, -0.943690,
		46.220428, 37.993267, 34.166275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863449, 37.366726, 34.504559>,  <45.995670, 38.049068, 34.826859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863449, 37.366726, 34.504559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184471, 37.493004, 34.302074>,  <46.377083, 37.568771, 34.180584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184471, 37.493004, 34.302074>,  <45.863449, 37.366726, 34.504559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.184471, 37.493004, 34.302074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430410, -0.893954, 0.124872,
		-0.413104, -0.318093, -0.853324,
		0.802553, 0.315694, -0.506207,
		46.425236, 37.587711, 34.150211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235073, 36.826225, 34.460461>,  <45.863449, 37.366726, 34.504559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235073, 36.826225, 34.460461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528870, 37.067410, 34.335903>,  <46.705147, 37.212120, 34.261169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528870, 37.067410, 34.335903>,  <46.235073, 36.826225, 34.460461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528870, 37.067410, 34.335903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594144, -0.793077, -0.134245,
		-0.327901, -0.086410, -0.940752,
		0.734489, 0.602961, -0.311390,
		46.749218, 37.248299, 34.242485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.485001, 36.688168, 33.775627>,  <46.235073, 36.826225, 34.460461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.485001, 36.688168, 33.775627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744938, 36.834354, 34.042202>,  <46.900902, 36.922066, 34.202148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744938, 36.834354, 34.042202>,  <46.485001, 36.688168, 33.775627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744938, 36.834354, 34.042202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462584, -0.885894, 0.034744,
		0.603093, 0.285706, -0.744749,
		0.649842, 0.365463, 0.666440,
		46.939892, 36.943993, 34.242134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.182457, 36.444824, 33.666061>,  <46.485001, 36.688168, 33.775627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.182457, 36.444824, 33.666061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182259, 36.532158, 34.056412>,  <47.182140, 36.584560, 34.290623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182259, 36.532158, 34.056412>,  <47.182457, 36.444824, 33.666061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.182259, 36.532158, 34.056412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317675, -0.925288, 0.207181,
		0.948199, 0.310113, -0.068905,
		-0.000493, 0.218339, 0.975873,
		47.182110, 36.597660, 34.349174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.766235, 36.123291, 34.162300>,  <47.182457, 36.444824, 33.666061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.766235, 36.123291, 34.162300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.449566, 36.154274, 34.404709>,  <47.259563, 36.172863, 34.550152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.449566, 36.154274, 34.404709>,  <47.766235, 36.123291, 34.162300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.449566, 36.154274, 34.404709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008085, -0.993171, 0.116385,
		0.610895, 0.087239, 0.786890,
		-0.791670, 0.077461, 0.606018,
		47.212067, 36.177513, 34.586514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.873451, 35.766655, 34.840847>,  <47.766235, 36.123291, 34.162300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.873451, 35.766655, 34.840847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481895, 35.781216, 34.760399>,  <47.246964, 35.789951, 34.712132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481895, 35.781216, 34.760399>,  <47.873451, 35.766655, 34.840847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.481895, 35.781216, 34.760399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035221, -0.999335, -0.009463,
		-0.201332, -0.002180, 0.979521,
		-0.978890, 0.036404, -0.201121,
		47.188229, 35.792137, 34.700062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.319897, 35.240627, 35.081310>,  <47.873451, 35.766655, 34.840847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.319897, 35.240627, 35.081310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469177, 34.902199, 35.233562>,  <47.558746, 34.699142, 35.324913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469177, 34.902199, 35.233562>,  <47.319897, 35.240627, 35.081310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.469177, 34.902199, 35.233562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709801, -0.003794, -0.704392,
		0.597412, 0.533053, 0.599128,
		0.373205, -0.846073, 0.380628,
		47.581139, 34.648376, 35.347752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.347450, 35.983326, 25.187265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.984222, 36.043476, 25.343626>,  <31.766287, 36.079567, 25.437443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.984222, 36.043476, 25.343626>,  <32.347450, 35.983326, 25.187265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984222, 36.043476, 25.343626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355656, -0.216044, 0.909304,
		0.221192, 0.964734, 0.142698,
		-0.908065, 0.150380, 0.390901,
		31.711803, 36.088589, 25.460896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448517, 36.409348, 25.818056>,  <32.347450, 35.983326, 25.187265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448517, 36.409348, 25.818056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.098728, 36.221321, 25.865950>,  <31.888855, 36.108505, 25.894686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.098728, 36.221321, 25.865950>,  <32.448517, 36.409348, 25.818056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098728, 36.221321, 25.865950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308593, -0.348659, 0.884990,
		-0.374261, 0.810846, 0.449953,
		-0.874471, -0.470070, 0.119732,
		31.836388, 36.080299, 25.901869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204712, 36.474705, 26.496483>,  <32.448517, 36.409348, 25.818056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204712, 36.474705, 26.496483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.007145, 36.149696, 26.372639>,  <31.888605, 35.954693, 26.298332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.007145, 36.149696, 26.372639>,  <32.204712, 36.474705, 26.496483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007145, 36.149696, 26.372639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168854, -0.438922, 0.882517,
		-0.852958, 0.383608, 0.353987,
		-0.493913, -0.812522, -0.309608,
		31.858971, 35.905941, 26.279757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662657, 36.448437, 27.025299>,  <32.204712, 36.474705, 26.496483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662657, 36.448437, 27.025299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.740995, 36.092777, 26.859858>,  <31.787998, 35.879383, 26.760593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.740995, 36.092777, 26.859858>,  <31.662657, 36.448437, 27.025299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740995, 36.092777, 26.859858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077324, -0.406454, 0.910393,
		-0.977581, -0.210279, -0.010850,
		0.195846, -0.889144, -0.413602,
		31.799749, 35.826035, 26.735777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061878, 36.207840, 27.284866>,  <31.662657, 36.448437, 27.025299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061878, 36.207840, 27.284866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.345907, 35.938625, 27.202093>,  <31.516325, 35.777096, 27.152430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.345907, 35.938625, 27.202093>,  <31.061878, 36.207840, 27.284866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345907, 35.938625, 27.202093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052230, -0.242731, 0.968686,
		-0.702187, -0.698647, -0.137205,
		0.710074, -0.673033, -0.206933,
		31.558929, 35.736717, 27.140013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833263, 35.670719, 27.631115>,  <31.061878, 36.207840, 27.284866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833263, 35.670719, 27.631115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.218317, 35.600750, 27.548428>,  <31.449350, 35.558769, 27.498816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.218317, 35.600750, 27.548428>,  <30.833263, 35.670719, 27.631115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218317, 35.600750, 27.548428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163223, -0.234302, 0.958364,
		-0.216076, -0.956297, -0.196996,
		0.962637, -0.174925, -0.206717,
		31.507109, 35.548271, 27.486412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952309, 35.050503, 27.879837>,  <30.833263, 35.670719, 27.631115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952309, 35.050503, 27.879837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307848, 35.233753, 27.883072>,  <31.521172, 35.343704, 27.885014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307848, 35.233753, 27.883072>,  <30.952309, 35.050503, 27.879837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307848, 35.233753, 27.883072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134166, -0.277101, 0.951428,
		0.438114, -0.844592, -0.307766,
		0.888851, 0.458126, 0.008086,
		31.574503, 35.371189, 27.885498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373896, 34.610214, 28.276308>,  <30.952309, 35.050503, 27.879837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373896, 34.610214, 28.276308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.553946, 34.966331, 28.248674>,  <31.661976, 35.180000, 28.232094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.553946, 34.966331, 28.248674>,  <31.373896, 34.610214, 28.276308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553946, 34.966331, 28.248674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087890, 0.032819, 0.995589,
		0.888630, -0.454211, -0.063475,
		0.450124, 0.890290, -0.069084,
		31.688982, 35.233418, 28.227949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755747, 34.607792, 28.821829>,  <31.373896, 34.610214, 28.276308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755747, 34.607792, 28.821829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.784519, 34.997845, 28.737974>,  <31.801783, 35.231876, 28.687662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.784519, 34.997845, 28.737974>,  <31.755747, 34.607792, 28.821829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784519, 34.997845, 28.737974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141186, 0.198110, 0.969958,
		0.987366, -0.099369, -0.123424,
		0.071932, 0.975130, -0.209636,
		31.806099, 35.290382, 28.675083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408630, 34.835720, 29.096916>,  <31.755747, 34.607792, 28.821829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408630, 34.835720, 29.096916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.173412, 35.157963, 29.068058>,  <32.032280, 35.351307, 29.050743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.173412, 35.157963, 29.068058>,  <32.408630, 34.835720, 29.096916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173412, 35.157963, 29.068058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248596, 0.264901, 0.931680,
		0.769675, 0.529936, -0.356044,
		-0.588047, 0.805602, -0.072148,
		31.996998, 35.399643, 29.046413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829208, 35.486908, 29.136904>,  <32.408630, 34.835720, 29.096916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829208, 35.486908, 29.136904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.462555, 35.621643, 29.222994>,  <32.242561, 35.702484, 29.274649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.462555, 35.621643, 29.222994>,  <32.829208, 35.486908, 29.136904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462555, 35.621643, 29.222994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308590, 0.254073, 0.916635,
		0.254073, 0.906636, -0.336836,
		-0.916635, 0.336836, 0.215225,
		32.187565, 35.722694, 29.287561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849602, 36.188530, 29.390562>,  <32.829208, 35.486908, 29.136904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849602, 36.188530, 29.390562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490528, 36.084003, 29.532484>,  <32.275085, 36.021290, 29.617638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490528, 36.084003, 29.532484>,  <32.849602, 36.188530, 29.390562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490528, 36.084003, 29.532484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273403, 0.301166, 0.913537,
		-0.345575, 0.917068, -0.198906,
		-0.897679, -0.261314, 0.354805,
		32.221226, 36.005608, 29.638926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667667, 36.759792, 29.815079>,  <32.849602, 36.188530, 29.390562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667667, 36.759792, 29.815079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.438217, 36.460232, 29.947802>,  <32.300549, 36.280495, 30.027435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.438217, 36.460232, 29.947802>,  <32.667667, 36.759792, 29.815079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438217, 36.460232, 29.947802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195078, 0.268521, 0.943314,
		-0.795549, 0.605837, -0.007935,
		-0.573625, -0.748905, 0.331807,
		32.266129, 36.235561, 30.047344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168709, 37.091167, 30.241539>,  <32.667667, 36.759792, 29.815079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168709, 37.091167, 30.241539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.200485, 36.707680, 30.350748>,  <32.219551, 36.477585, 30.416273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.200485, 36.707680, 30.350748>,  <32.168709, 37.091167, 30.241539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200485, 36.707680, 30.350748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130796, 0.281546, 0.950592,
		-0.988222, -0.039802, 0.147763,
		0.079438, -0.958722, 0.273023,
		32.224316, 36.420063, 30.432655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905788, 37.106152, 30.859270>,  <32.168709, 37.091167, 30.241539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905788, 37.106152, 30.859270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.102577, 36.758877, 30.885263>,  <32.220650, 36.550514, 30.900860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.102577, 36.758877, 30.885263>,  <31.905788, 37.106152, 30.859270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102577, 36.758877, 30.885263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385336, 0.284073, 0.877963,
		-0.780694, -0.406890, 0.474297,
		0.491969, -0.868184, 0.064985,
		32.250168, 36.498421, 30.904758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800522, 36.846149, 31.477200>,  <31.905788, 37.106152, 30.859270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800522, 36.846149, 31.477200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.135551, 36.652718, 31.375515>,  <32.336571, 36.536659, 31.314505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.135551, 36.652718, 31.375515>,  <31.800522, 36.846149, 31.477200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135551, 36.652718, 31.375515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355790, 0.129709, 0.925521,
		-0.414588, -0.865638, 0.280693,
		0.837574, -0.483577, -0.254210,
		32.386826, 36.507645, 31.299252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842583, 36.358620, 31.957741>,  <31.800522, 36.846149, 31.477200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842583, 36.358620, 31.957741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.214672, 36.418575, 31.823746>,  <32.437927, 36.454548, 31.743349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.214672, 36.418575, 31.823746>,  <31.842583, 36.358620, 31.957741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214672, 36.418575, 31.823746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311270, 0.161302, 0.936532,
		0.194414, -0.975455, 0.103390,
		0.930222, 0.149893, -0.334990,
		32.493740, 36.463543, 31.723249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289185, 36.270023, 32.618885>,  <31.842583, 36.358620, 31.957741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289185, 36.270023, 32.618885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.546017, 36.431641, 32.358276>,  <32.700115, 36.528610, 32.201912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.546017, 36.431641, 32.358276>,  <32.289185, 36.270023, 32.618885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546017, 36.431641, 32.358276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624649, 0.216969, 0.750158,
		0.444457, -0.888635, -0.113074,
		0.642083, 0.404045, -0.651519,
		32.738640, 36.552853, 32.162819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984550, 36.005848, 32.879406>,  <32.289185, 36.270023, 32.618885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984550, 36.005848, 32.879406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045406, 36.331020, 32.654552>,  <33.081921, 36.526123, 32.519638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045406, 36.331020, 32.654552>,  <32.984550, 36.005848, 32.879406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045406, 36.331020, 32.654552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638772, 0.353136, 0.683568,
		0.754203, -0.463078, -0.465550,
		0.152142, 0.812929, -0.562138,
		33.091049, 36.574898, 32.485912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733326, 36.129917, 32.754601>,  <32.984550, 36.005848, 32.879406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733326, 36.129917, 32.754601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532429, 36.475517, 32.740391>,  <33.411892, 36.682877, 32.731865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532429, 36.475517, 32.740391>,  <33.733326, 36.129917, 32.754601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532429, 36.475517, 32.740391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640797, 0.399449, 0.655606,
		0.580631, 0.306510, -0.754267,
		-0.502241, 0.863998, -0.035522,
		33.381756, 36.734718, 32.729733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266472, 36.320972, 32.946220>,  <33.733326, 36.129917, 32.754601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266472, 36.320972, 32.946220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.981010, 36.600628, 32.963680>,  <33.809734, 36.768421, 32.974155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.981010, 36.600628, 32.963680>,  <34.266472, 36.320972, 32.946220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981010, 36.600628, 32.963680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532857, 0.501361, 0.681690,
		0.454709, 0.509752, -0.730338,
		-0.713655, 0.699136, 0.043651,
		33.766914, 36.810368, 32.976776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895741, 36.645187, 33.318207>,  <34.266472, 36.320972, 32.946220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895741, 36.645187, 33.318207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237782, 36.837086, 33.239571>,  <35.443005, 36.952225, 33.192390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237782, 36.837086, 33.239571>,  <34.895741, 36.645187, 33.318207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237782, 36.837086, 33.239571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207441, -0.030914, -0.977759,
		-0.475155, 0.876862, 0.073085,
		0.855100, 0.479748, -0.196586,
		35.494312, 36.981010, 33.180595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712250, 36.963581, 32.779449>,  <34.895741, 36.645187, 33.318207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712250, 36.963581, 32.779449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107418, 37.025543, 32.781284>,  <35.344517, 37.062721, 32.782387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107418, 37.025543, 32.781284>,  <34.712250, 36.963581, 32.779449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107418, 37.025543, 32.781284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003522, 0.052056, -0.998638,
		-0.154936, 0.986557, 0.051973,
		0.987918, 0.154908, 0.004590,
		35.403793, 37.072014, 32.782661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858376, 37.508984, 32.378082>,  <34.712250, 36.963581, 32.779449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858376, 37.508984, 32.378082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216976, 37.332134, 32.366714>,  <35.432137, 37.226025, 32.359894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216976, 37.332134, 32.366714>,  <34.858376, 37.508984, 32.378082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216976, 37.332134, 32.366714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056171, 0.177057, -0.982596,
		0.439459, 0.879306, 0.183567,
		0.896504, -0.442122, -0.028418,
		35.485928, 37.199497, 32.358189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238434, 37.889938, 31.895571>,  <34.858376, 37.508984, 32.378082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238434, 37.889938, 31.895571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424011, 37.535763, 31.906618>,  <35.535358, 37.323257, 31.913246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424011, 37.535763, 31.906618>,  <35.238434, 37.889938, 31.895571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424011, 37.535763, 31.906618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004230, -0.033389, -0.999434,
		0.885857, 0.463559, -0.019236,
		0.463939, -0.885437, 0.027617,
		35.563194, 37.270130, 31.914904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586235, 37.847282, 31.218760>,  <35.238434, 37.889938, 31.895571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586235, 37.847282, 31.218760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604221, 37.474579, 31.362869>,  <35.615013, 37.250957, 31.449335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604221, 37.474579, 31.362869>,  <35.586235, 37.847282, 31.218760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604221, 37.474579, 31.362869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045778, -0.358340, -0.932468,
		0.997939, 0.058424, 0.026541,
		0.044967, -0.931761, 0.360276,
		35.617710, 37.195049, 31.470953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176208, 37.544117, 30.831570>,  <35.586235, 37.847282, 31.218760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176208, 37.544117, 30.831570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.906418, 37.270809, 30.943451>,  <35.744545, 37.106827, 31.010580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.906418, 37.270809, 30.943451>,  <36.176208, 37.544117, 30.831570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906418, 37.270809, 30.943451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117948, -0.274261, -0.954395,
		0.728817, -0.676704, 0.104392,
		-0.674473, -0.683266, 0.279702,
		35.704075, 37.065830, 31.027361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405205, 36.978508, 30.612543>,  <36.176208, 37.544117, 30.831570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405205, 36.978508, 30.612543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019928, 36.884495, 30.664738>,  <35.788761, 36.828087, 30.696054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019928, 36.884495, 30.664738>,  <36.405205, 36.978508, 30.612543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019928, 36.884495, 30.664738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065854, -0.264320, -0.962184,
		0.260633, -0.935359, 0.239112,
		-0.963189, -0.235030, 0.130488,
		35.730972, 36.813984, 30.703884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322632, 36.254654, 30.193531>,  <36.405205, 36.978508, 30.612543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322632, 36.254654, 30.193531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952595, 36.397270, 30.245806>,  <35.730572, 36.482838, 30.277170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952595, 36.397270, 30.245806>,  <36.322632, 36.254654, 30.193531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952595, 36.397270, 30.245806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283709, -0.420181, -0.861950,
		-0.252407, -0.834462, 0.489861,
		-0.925095, 0.356540, 0.130688,
		35.675068, 36.504230, 30.285011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904881, 35.717903, 29.877167>,  <36.322632, 36.254654, 30.193531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904881, 35.717903, 29.877167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649899, 36.024391, 29.909554>,  <35.496910, 36.208282, 29.928986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649899, 36.024391, 29.909554>,  <35.904881, 35.717903, 29.877167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649899, 36.024391, 29.909554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365398, -0.208118, -0.907288,
		-0.678332, -0.607941, 0.412641,
		-0.637455, 0.766221, 0.080968,
		35.458660, 36.254257, 29.933844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248966, 35.533188, 29.746000>,  <35.904881, 35.717903, 29.877167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248966, 35.533188, 29.746000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270187, 35.924019, 29.663530>,  <35.282921, 36.158516, 29.614048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270187, 35.924019, 29.663530>,  <35.248966, 35.533188, 29.746000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270187, 35.924019, 29.663530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338964, -0.176588, -0.924078,
		-0.939302, 0.118911, 0.321825,
		0.053053, 0.977076, -0.206176,
		35.286102, 36.217140, 29.601677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543221, 35.656479, 29.360014>,  <35.248966, 35.533188, 29.746000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543221, 35.656479, 29.360014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.773399, 35.970535, 29.268436>,  <34.911507, 36.158970, 29.213490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.773399, 35.970535, 29.268436>,  <34.543221, 35.656479, 29.360014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773399, 35.970535, 29.268436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279882, -0.073976, -0.957180,
		-0.768454, 0.614887, 0.177177,
		0.575451, 0.785137, -0.228943,
		34.946033, 36.206078, 29.199753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027988, 36.177177, 29.139807>,  <34.543221, 35.656479, 29.360014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027988, 36.177177, 29.139807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391407, 36.247322, 28.988127>,  <34.609459, 36.289410, 28.897120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391407, 36.247322, 28.988127>,  <34.027988, 36.177177, 29.139807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391407, 36.247322, 28.988127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390664, 0.034910, -0.919871,
		-0.148076, 0.983884, 0.100226,
		0.908546, 0.175365, -0.379198,
		34.663971, 36.299931, 28.874367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938896, 36.817688, 28.899195>,  <34.027988, 36.177177, 29.139807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938896, 36.817688, 28.899195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.256527, 36.658096, 28.715778>,  <34.447105, 36.562340, 28.605728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.256527, 36.658096, 28.715778>,  <33.938896, 36.817688, 28.899195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256527, 36.658096, 28.715778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318143, 0.369986, -0.872866,
		0.517910, 0.839003, 0.166864,
		0.794075, -0.398979, -0.458542,
		34.494751, 36.538403, 28.578217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400608, 37.391956, 28.567196>,  <33.938896, 36.817688, 28.899195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400608, 37.391956, 28.567196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.433777, 37.040157, 28.379744>,  <34.453678, 36.829079, 28.267273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.433777, 37.040157, 28.379744>,  <34.400608, 37.391956, 28.567196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433777, 37.040157, 28.379744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237017, 0.439350, -0.866484,
		0.967960, 0.182921, -0.172025,
		0.082919, -0.879495, -0.468629,
		34.458652, 36.776310, 28.239155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711674, 37.523911, 27.898670>,  <34.400608, 37.391956, 28.567196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711674, 37.523911, 27.898670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.597729, 37.148045, 27.822901>,  <34.529362, 36.922523, 27.777439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.597729, 37.148045, 27.822901>,  <34.711674, 37.523911, 27.898670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597729, 37.148045, 27.822901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283555, 0.271371, -0.919758,
		0.915669, -0.208295, -0.343751,
		-0.284864, -0.939665, -0.189423,
		34.512268, 36.866146, 27.766073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112255, 37.344486, 27.331308>,  <34.711674, 37.523911, 27.898670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112255, 37.344486, 27.331308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.793610, 37.104050, 27.356886>,  <34.602421, 36.959789, 27.372232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.793610, 37.104050, 27.356886>,  <35.112255, 37.344486, 27.331308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793610, 37.104050, 27.356886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313578, 0.320494, -0.893842,
		0.516789, -0.732100, -0.443800,
		-0.796617, -0.601093, 0.063943,
		34.554623, 36.923721, 27.376068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099957, 36.980293, 26.665306>,  <35.112255, 37.344486, 27.331308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099957, 36.980293, 26.665306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732491, 36.911678, 26.807650>,  <34.512012, 36.870510, 26.893055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732491, 36.911678, 26.807650>,  <35.099957, 36.980293, 26.665306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732491, 36.911678, 26.807650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391320, 0.271734, -0.879221,
		0.054121, -0.946961, -0.316758,
		-0.918662, -0.171538, 0.355859,
		34.456894, 36.860218, 26.914408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870438, 36.466908, 26.291956>,  <35.099957, 36.980293, 26.665306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870438, 36.466908, 26.291956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560020, 36.667423, 26.445045>,  <34.373772, 36.787731, 26.536900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560020, 36.667423, 26.445045>,  <34.870438, 36.466908, 26.291956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560020, 36.667423, 26.445045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349348, 0.163570, -0.922605,
		-0.525091, -0.849681, 0.048187,
		-0.776039, 0.501285, 0.382724,
		34.327209, 36.817810, 26.559862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425514, 36.304501, 25.755934>,  <34.870438, 36.466908, 26.291956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425514, 36.304501, 25.755934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.217487, 36.585087, 25.950861>,  <34.092670, 36.753437, 26.067818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.217487, 36.585087, 25.950861>,  <34.425514, 36.304501, 25.755934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217487, 36.585087, 25.950861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440868, 0.268209, -0.856562,
		-0.731552, -0.660312, 0.169768,
		-0.520065, 0.701465, 0.487319,
		34.061466, 36.795525, 26.097057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.621159, 36.206249, 25.554209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.716072, 36.572727, 25.683382>,  <33.773018, 36.792614, 25.760885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.716072, 36.572727, 25.683382>,  <33.621159, 36.206249, 25.554209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716072, 36.572727, 25.683382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545445, 0.400732, -0.736141,
		-0.803858, -0.001469, 0.594820,
		0.237282, 0.916194, 0.322933,
		33.787258, 36.847584, 25.780262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071789, 36.601261, 25.432329>,  <33.621159, 36.206249, 25.554209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071789, 36.601261, 25.432329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336380, 36.892803, 25.503006>,  <33.495132, 37.067730, 25.545412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336380, 36.892803, 25.503006>,  <33.071789, 36.601261, 25.432329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336380, 36.892803, 25.503006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408591, 0.547798, -0.730048,
		-0.628893, 0.410713, 0.660158,
		0.661474, 0.728857, 0.176693,
		33.534821, 37.111462, 25.556013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736160, 37.144230, 25.548632>,  <33.071789, 36.601261, 25.432329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736160, 37.144230, 25.548632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103107, 37.211102, 25.404137>,  <33.323277, 37.251225, 25.317440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103107, 37.211102, 25.404137>,  <32.736160, 37.144230, 25.548632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103107, 37.211102, 25.404137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396523, 0.463160, -0.792624,
		0.034799, 0.870364, 0.491178,
		0.917365, 0.167180, -0.361237,
		33.378319, 37.261257, 25.295765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603283, 37.688133, 25.124729>,  <32.736160, 37.144230, 25.548632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603283, 37.688133, 25.124729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961643, 37.588268, 24.977741>,  <33.176659, 37.528347, 24.889549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961643, 37.588268, 24.977741>,  <32.603283, 37.688133, 25.124729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961643, 37.588268, 24.977741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268922, 0.353620, -0.895899,
		0.353620, 0.901454, 0.249667,
		0.895899, -0.249667, -0.367467,
		33.230412, 37.513367, 24.867500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904045, 38.160336, 24.770105>,  <32.603283, 37.688133, 25.124729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904045, 38.160336, 24.770105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097027, 37.851566, 24.604515>,  <33.212814, 37.666306, 24.505161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097027, 37.851566, 24.604515>,  <32.904045, 38.160336, 24.770105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097027, 37.851566, 24.604515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296400, 0.300865, -0.906436,
		0.824250, 0.560013, -0.083646,
		0.482450, -0.771923, -0.413976,
		33.241760, 37.619987, 24.480322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299934, 38.407543, 24.225618>,  <32.904045, 38.160336, 24.770105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299934, 38.407543, 24.225618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.243755, 38.016476, 24.163080>,  <33.210049, 37.781837, 24.125557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.243755, 38.016476, 24.163080>,  <33.299934, 38.407543, 24.225618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243755, 38.016476, 24.163080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319821, 0.194245, -0.927353,
		0.937010, -0.080245, -0.339960,
		-0.140451, -0.977665, -0.156346,
		33.201618, 37.723175, 24.116177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319904, 38.308674, 23.539961>,  <33.299934, 38.407543, 24.225618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319904, 38.308674, 23.539961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193920, 37.935413, 23.609285>,  <33.118328, 37.711456, 23.650879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193920, 37.935413, 23.609285>,  <33.319904, 38.308674, 23.539961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193920, 37.935413, 23.609285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310730, -0.071157, -0.947831,
		0.896798, -0.352382, -0.267545,
		-0.314961, -0.933147, 0.173309,
		33.099430, 37.655468, 23.661278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527393, 37.983295, 22.959938>,  <33.319904, 38.308674, 23.539961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527393, 37.983295, 22.959938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241940, 37.763336, 23.133530>,  <33.070667, 37.631359, 23.237684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241940, 37.763336, 23.133530>,  <33.527393, 37.983295, 22.959938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241940, 37.763336, 23.133530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364148, -0.238029, -0.900410,
		0.598437, -0.800594, -0.030381,
		-0.713631, -0.549902, 0.433980,
		33.027851, 37.598366, 23.263723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538929, 37.393764, 22.599279>,  <33.527393, 37.983295, 22.959938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538929, 37.393764, 22.599279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169090, 37.410759, 22.750704>,  <32.947186, 37.420956, 22.841558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169090, 37.410759, 22.750704>,  <33.538929, 37.393764, 22.599279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169090, 37.410759, 22.750704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380663, -0.140672, -0.913951,
		0.014428, -0.989145, 0.146236,
		-0.924601, 0.042480, 0.378560,
		32.891708, 37.423504, 22.864271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162354, 36.758186, 22.429922>,  <33.538929, 37.393764, 22.599279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162354, 36.758186, 22.429922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872971, 37.021454, 22.513277>,  <32.699341, 37.179413, 22.563290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872971, 37.021454, 22.513277>,  <33.162354, 36.758186, 22.429922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872971, 37.021454, 22.513277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451203, -0.222313, -0.864287,
		-0.522518, -0.719300, 0.457801,
		-0.723457, 0.658167, 0.208388,
		32.655933, 37.218903, 22.575794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546120, 36.362759, 22.302177>,  <33.162354, 36.758186, 22.429922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546120, 36.362759, 22.302177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480862, 36.757263, 22.291821>,  <32.441708, 36.993965, 22.285606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480862, 36.757263, 22.291821>,  <32.546120, 36.362759, 22.302177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480862, 36.757263, 22.291821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486593, -0.103264, -0.867504,
		-0.858261, -0.128928, 0.496755,
		-0.163143, 0.986263, -0.025892,
		32.431919, 37.053143, 22.284054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022324, 36.378933, 21.769197>,  <32.546120, 36.362759, 22.302177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022324, 36.378933, 21.769197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.126938, 36.763939, 21.797915>,  <32.189709, 36.994942, 21.815144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.126938, 36.763939, 21.797915>,  <32.022324, 36.378933, 21.769197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126938, 36.763939, 21.797915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463816, 0.190562, -0.865194,
		-0.846447, 0.192983, 0.496271,
		0.261538, 0.962519, 0.071792,
		32.205399, 37.052696, 21.819452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464705, 36.700527, 21.456007>,  <32.022324, 36.378933, 21.769197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464705, 36.700527, 21.456007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747948, 36.982960, 21.453480>,  <31.917892, 37.152420, 21.451963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747948, 36.982960, 21.453480>,  <31.464705, 36.700527, 21.456007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747948, 36.982960, 21.453480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297859, 0.290580, -0.909309,
		-0.640207, 0.645770, 0.416073,
		0.708107, 0.706077, -0.006317,
		31.960381, 37.194782, 21.451584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156403, 37.330292, 21.367435>,  <31.464705, 36.700527, 21.456007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156403, 37.330292, 21.367435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525488, 37.365562, 21.217329>,  <31.746939, 37.386726, 21.127266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525488, 37.365562, 21.217329>,  <31.156403, 37.330292, 21.367435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525488, 37.365562, 21.217329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385138, 0.252221, -0.887724,
		0.016370, 0.963643, 0.266690,
		0.922714, 0.088181, -0.375264,
		31.802301, 37.392017, 21.104750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177998, 37.940014, 20.956007>,  <31.156403, 37.330292, 21.367435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177998, 37.940014, 20.956007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492313, 37.732586, 20.821177>,  <31.680902, 37.608128, 20.740278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492313, 37.732586, 20.821177>,  <31.177998, 37.940014, 20.956007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492313, 37.732586, 20.821177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258615, 0.219580, -0.940693,
		0.561830, 0.826360, 0.038433,
		0.785790, -0.518570, -0.337076,
		31.728050, 37.577015, 20.720055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476143, 38.414124, 20.541142>,  <31.177998, 37.940014, 20.956007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476143, 38.414124, 20.541142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623560, 38.059265, 20.430037>,  <31.712011, 37.846352, 20.363373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623560, 38.059265, 20.430037>,  <31.476143, 38.414124, 20.541142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623560, 38.059265, 20.430037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051513, 0.317827, -0.946749,
		0.928182, 0.334610, 0.162833,
		0.368544, -0.887143, -0.277764,
		31.734123, 37.793121, 20.346706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930061, 38.565189, 19.991501>,  <31.476143, 38.414124, 20.541142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930061, 38.565189, 19.991501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872316, 38.172810, 19.939505>,  <31.837669, 37.937382, 19.908306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872316, 38.172810, 19.939505>,  <31.930061, 38.565189, 19.991501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872316, 38.172810, 19.939505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067169, 0.140780, -0.987760,
		0.987243, -0.133863, -0.086213,
		-0.144361, -0.980950, -0.129992,
		31.829008, 37.878525, 19.900507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268871, 38.451157, 19.420374>,  <31.930061, 38.565189, 19.991501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268871, 38.451157, 19.420374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.014549, 38.143501, 19.446226>,  <31.861956, 37.958908, 19.461737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.014549, 38.143501, 19.446226>,  <32.268871, 38.451157, 19.420374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014549, 38.143501, 19.446226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136095, 0.029295, -0.990263,
		0.759753, -0.638414, -0.123301,
		-0.635810, -0.769136, 0.064628,
		31.823807, 37.912762, 19.465614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417568, 38.056641, 18.908913>,  <32.268871, 38.451157, 19.420374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417568, 38.056641, 18.908913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041512, 37.957684, 19.002659>,  <31.815878, 37.898308, 19.058907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041512, 37.957684, 19.002659>,  <32.417568, 38.056641, 18.908913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041512, 37.957684, 19.002659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281934, 0.178342, -0.942713,
		0.191439, -0.952357, -0.237419,
		-0.940140, -0.247409, 0.234360,
		31.759468, 37.883465, 19.072968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191628, 37.514084, 18.440027>,  <32.417568, 38.056641, 18.908913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191628, 37.514084, 18.440027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862457, 37.690041, 18.583853>,  <31.664955, 37.795616, 18.670149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862457, 37.690041, 18.583853>,  <32.191628, 37.514084, 18.440027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862457, 37.690041, 18.583853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189497, 0.384118, -0.903628,
		-0.535614, -0.811756, -0.232743,
		-0.822927, 0.439892, 0.359564,
		31.615580, 37.822010, 18.691723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723568, 37.344494, 18.025551>,  <32.191628, 37.514084, 18.440027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723568, 37.344494, 18.025551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.564644, 37.673763, 18.187803>,  <31.469290, 37.871323, 18.285154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.564644, 37.673763, 18.187803>,  <31.723568, 37.344494, 18.025551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564644, 37.673763, 18.187803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219955, 0.343711, -0.912953,
		-0.890935, -0.451945, 0.044500,
		-0.397310, 0.823169, 0.405632,
		31.445452, 37.920715, 18.309492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013441, 37.476212, 17.749037>,  <31.723568, 37.344494, 18.025551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013441, 37.476212, 17.749037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096302, 37.840931, 17.890862>,  <31.146019, 38.059761, 17.975956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096302, 37.840931, 17.890862>,  <31.013441, 37.476212, 17.749037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096302, 37.840931, 17.890862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010075, 0.360415, -0.932738,
		-0.978257, 0.196792, 0.065475,
		0.207153, 0.911797, 0.354561,
		31.158447, 38.114471, 17.997231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346626, 37.282883, 17.885105>,  <31.013441, 37.476212, 17.749037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346626, 37.282883, 17.885105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041658, 37.189278, 17.643789>,  <29.858679, 37.133114, 17.499001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041658, 37.189278, 17.643789>,  <30.346626, 37.282883, 17.885105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041658, 37.189278, 17.643789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265842, 0.963279, -0.037695,
		0.589955, 0.131640, -0.796633,
		-0.762418, -0.234017, -0.603287,
		29.812933, 37.119072, 17.462803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324743, 38.063118, 17.802118>,  <30.346626, 37.282883, 17.885105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324743, 38.063118, 17.802118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023361, 37.836891, 17.667992>,  <29.842531, 37.701157, 17.587517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023361, 37.836891, 17.667992>,  <30.324743, 38.063118, 17.802118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023361, 37.836891, 17.667992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587240, 0.808233, -0.043694,
		0.295725, 0.163989, -0.941092,
		-0.753456, -0.565568, -0.335315,
		29.797325, 37.667221, 17.567396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763027, 38.109745, 18.514149>,  <30.324743, 38.063118, 17.802118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763027, 38.109745, 18.514149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.369240, 38.046478, 18.544619>,  <29.132967, 38.008518, 18.562901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.369240, 38.046478, 18.544619>,  <29.763027, 38.109745, 18.514149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369240, 38.046478, 18.544619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099422, -0.144692, 0.984469,
		-0.144692, 0.976753, 0.158170,
		-0.984469, -0.158170, 0.076175,
		29.073898, 37.999027, 18.567471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536383, 38.456581, 19.093094>,  <29.763027, 38.109745, 18.514149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536383, 38.456581, 19.093094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.249161, 38.185814, 19.028366>,  <29.076828, 38.023354, 18.989529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.249161, 38.185814, 19.028366>,  <29.536383, 38.456581, 19.093094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249161, 38.185814, 19.028366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020794, -0.211535, 0.977149,
		-0.695677, 0.705011, 0.137818,
		-0.718054, -0.676914, -0.161820,
		29.033745, 37.982738, 18.979820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967848, 38.656246, 19.551239>,  <29.536383, 38.456581, 19.093094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967848, 38.656246, 19.551239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937918, 38.269611, 19.453175>,  <28.919960, 38.037628, 19.394337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937918, 38.269611, 19.453175>,  <28.967848, 38.656246, 19.551239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937918, 38.269611, 19.453175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101463, -0.237195, 0.966149,
		-0.992021, 0.097167, -0.080325,
		-0.074825, -0.966591, -0.245161,
		28.915470, 37.979633, 19.379627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473883, 38.400555, 19.901793>,  <28.967848, 38.656246, 19.551239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473883, 38.400555, 19.901793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.670586, 38.064377, 19.810734>,  <28.788607, 37.862671, 19.756098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.670586, 38.064377, 19.810734>,  <28.473883, 38.400555, 19.901793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670586, 38.064377, 19.810734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145891, -0.337275, 0.930033,
		-0.858424, -0.424137, -0.288471,
		0.491755, -0.840448, -0.227647,
		28.818111, 37.812241, 19.742439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072947, 37.941387, 20.187866>,  <28.473883, 38.400555, 19.901793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072947, 37.941387, 20.187866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.426376, 37.763229, 20.130003>,  <28.638433, 37.656334, 20.095285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.426376, 37.763229, 20.130003>,  <28.072947, 37.941387, 20.187866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426376, 37.763229, 20.130003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007545, -0.295324, 0.955367,
		-0.468233, -0.845228, -0.257580,
		0.883573, -0.445391, -0.144657,
		28.691448, 37.629612, 20.086605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089516, 37.371525, 20.713243>,  <28.072947, 37.941387, 20.187866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089516, 37.371525, 20.713243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468376, 37.402065, 20.588615>,  <28.695692, 37.420387, 20.513838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468376, 37.402065, 20.588615>,  <28.089516, 37.371525, 20.713243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468376, 37.402065, 20.588615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320527, -0.186048, 0.928789,
		0.012945, -0.979570, -0.200687,
		0.947151, 0.076349, -0.311571,
		28.752522, 37.424969, 20.495144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392920, 36.900425, 21.073414>,  <28.089516, 37.371525, 20.713243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392920, 36.900425, 21.073414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.699194, 37.137680, 20.973886>,  <28.882957, 37.280033, 20.914169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.699194, 37.137680, 20.973886>,  <28.392920, 36.900425, 21.073414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699194, 37.137680, 20.973886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469416, -0.250821, 0.846604,
		0.439747, -0.765030, -0.470480,
		0.765684, 0.593142, -0.248819,
		28.928900, 37.315624, 20.899240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962717, 36.548782, 21.245916>,  <28.392920, 36.900425, 21.073414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962717, 36.548782, 21.245916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067770, 36.934723, 21.242271>,  <29.130802, 37.166286, 21.240086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067770, 36.934723, 21.242271>,  <28.962717, 36.548782, 21.245916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067770, 36.934723, 21.242271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478671, -0.122085, 0.869465,
		0.837793, -0.232711, -0.493911,
		0.262633, 0.964853, -0.009110,
		29.146561, 37.224178, 21.239538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682089, 36.510979, 21.376638>,  <28.962717, 36.548782, 21.245916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682089, 36.510979, 21.376638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.584131, 36.889500, 21.461046>,  <29.525356, 37.116615, 21.511692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.584131, 36.889500, 21.461046>,  <29.682089, 36.510979, 21.376638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584131, 36.889500, 21.461046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419255, -0.092889, 0.903104,
		0.874215, 0.309636, -0.373996,
		-0.244894, 0.946307, 0.211022,
		29.510664, 37.173393, 21.524353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254555, 36.815132, 21.593912>,  <29.682089, 36.510979, 21.376638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254555, 36.815132, 21.593912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970840, 37.048214, 21.752592>,  <29.800611, 37.188065, 21.847801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970840, 37.048214, 21.752592>,  <30.254555, 36.815132, 21.593912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970840, 37.048214, 21.752592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451455, -0.056716, 0.890489,
		0.541391, 0.810703, -0.222837,
		-0.709284, 0.582704, 0.396702,
		29.758055, 37.223026, 21.871603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606926, 37.366924, 22.005415>,  <30.254555, 36.815132, 21.593912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606926, 37.366924, 22.005415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.230896, 37.337269, 22.138540>,  <30.005278, 37.319477, 22.218416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.230896, 37.337269, 22.138540>,  <30.606926, 37.366924, 22.005415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230896, 37.337269, 22.138540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338897, -0.095683, 0.935945,
		-0.037543, 0.992647, 0.115073,
		-0.940074, -0.074136, 0.332813,
		29.948874, 37.315029, 22.238384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602087, 37.831379, 22.624979>,  <30.606926, 37.366924, 22.005415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602087, 37.831379, 22.624979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251968, 37.639236, 22.647306>,  <30.041897, 37.523952, 22.660704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251968, 37.639236, 22.647306>,  <30.602087, 37.831379, 22.624979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251968, 37.639236, 22.647306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186002, -0.227868, 0.955761,
		-0.446387, 0.846955, 0.288799,
		-0.875295, -0.480357, 0.055818,
		29.989380, 37.495129, 22.664051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279804, 38.105949, 23.222752>,  <30.602087, 37.831379, 22.624979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279804, 38.105949, 23.222752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153297, 37.732513, 23.155352>,  <30.077394, 37.508453, 23.114912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153297, 37.732513, 23.155352>,  <30.279804, 38.105949, 23.222752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153297, 37.732513, 23.155352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199007, -0.238954, 0.950419,
		-0.927563, 0.267052, 0.261363,
		-0.316265, -0.933587, -0.168500,
		30.058418, 37.452438, 23.104801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946955, 37.914501, 23.847193>,  <30.279804, 38.105949, 23.222752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946955, 37.914501, 23.847193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.978748, 37.551891, 23.681355>,  <29.997824, 37.334324, 23.581852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.978748, 37.551891, 23.681355>,  <29.946955, 37.914501, 23.847193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978748, 37.551891, 23.681355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133920, -0.402432, 0.905602,
		-0.987800, -0.127503, 0.089416,
		0.079483, -0.906527, -0.414597,
		30.002594, 37.279934, 23.556976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676403, 37.418114, 24.333609>,  <29.946955, 37.914501, 23.847193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676403, 37.418114, 24.333609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.922075, 37.200912, 24.104548>,  <30.069479, 37.070591, 23.967112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.922075, 37.200912, 24.104548>,  <29.676403, 37.418114, 24.333609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922075, 37.200912, 24.104548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406063, -0.404763, 0.819317,
		-0.676682, -0.735739, -0.028102,
		0.614178, -0.543006, -0.572652,
		30.106329, 37.038010, 23.932753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666815, 36.756813, 24.481577>,  <29.676403, 37.418114, 24.333609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666815, 36.756813, 24.481577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027765, 36.773624, 24.310017>,  <30.244335, 36.783710, 24.207081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027765, 36.773624, 24.310017>,  <29.666815, 36.756813, 24.481577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027765, 36.773624, 24.310017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395468, -0.476223, 0.785376,
		-0.171247, -0.878320, -0.446351,
		0.902374, 0.042025, -0.428899,
		30.298477, 36.786232, 24.181347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922724, 36.093605, 24.402744>,  <29.666815, 36.756813, 24.481577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922724, 36.093605, 24.402744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.241920, 36.333244, 24.376534>,  <30.433439, 36.477028, 24.360807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.241920, 36.333244, 24.376534>,  <29.922724, 36.093605, 24.402744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241920, 36.333244, 24.376534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393891, -0.436168, 0.809078,
		0.456133, -0.671449, -0.584037,
		0.797993, 0.599094, -0.065527,
		30.481318, 36.512974, 24.356874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418957, 35.631348, 24.567348>,  <29.922724, 36.093605, 24.402744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418957, 35.631348, 24.567348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613050, 35.980652, 24.585117>,  <30.729506, 36.190235, 24.595779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613050, 35.980652, 24.585117>,  <30.418957, 35.631348, 24.567348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613050, 35.980652, 24.585117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644534, -0.391549, 0.656708,
		0.590868, -0.290023, -0.752836,
		0.485232, 0.873256, 0.044423,
		30.758619, 36.242630, 24.598444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217098, 35.425449, 24.536264>,  <30.418957, 35.631348, 24.567348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217098, 35.425449, 24.536264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.174837, 35.785976, 24.704294>,  <31.149481, 36.002293, 24.805113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.174837, 35.785976, 24.704294>,  <31.217098, 35.425449, 24.536264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174837, 35.785976, 24.704294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679337, -0.243073, 0.692399,
		0.726180, 0.358526, -0.586618,
		-0.105652, 0.901318, 0.420075,
		31.143141, 36.056374, 24.830317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930586, 35.597275, 24.758118>,  <31.217098, 35.425449, 24.536264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930586, 35.597275, 24.758118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681545, 35.835136, 24.961590>,  <31.532122, 35.977852, 25.083673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681545, 35.835136, 24.961590>,  <31.930586, 35.597275, 24.758118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681545, 35.835136, 24.961590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529915, -0.157932, 0.833215,
		0.575812, 0.788317, -0.216788,
		-0.622600, 0.594654, 0.508680,
		31.494766, 36.013535, 25.114193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.513901, 35.958992, 28.018206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.200500, 36.133671, 28.195032>,  <35.012463, 36.238480, 28.301128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.200500, 36.133671, 28.195032>,  <35.513901, 35.958992, 28.018206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200500, 36.133671, 28.195032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500621, 0.022165, 0.865382,
		0.368115, 0.899334, -0.235988,
		-0.783498, 0.436701, 0.442067,
		34.965450, 36.264683, 28.327652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789288, 36.631504, 28.355614>,  <35.513901, 35.958992, 28.018206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789288, 36.631504, 28.355614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.442265, 36.530979, 28.527283>,  <35.234051, 36.470665, 28.630283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.442265, 36.530979, 28.527283>,  <35.789288, 36.631504, 28.355614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442265, 36.530979, 28.527283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392801, 0.183051, 0.901221,
		-0.305045, 0.950440, -0.060093,
		-0.867557, -0.251309, 0.429173,
		35.181999, 36.455585, 28.656034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787182, 37.134090, 28.865641>,  <35.789288, 36.631504, 28.355614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787182, 37.134090, 28.865641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.546886, 36.832176, 28.971027>,  <35.402710, 36.651028, 29.034260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.546886, 36.832176, 28.971027>,  <35.787182, 37.134090, 28.865641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546886, 36.832176, 28.971027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203965, 0.173950, 0.963400,
		-0.772988, 0.632490, 0.049451,
		-0.600739, -0.754784, 0.263467,
		35.366665, 36.605740, 29.050068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241783, 37.454441, 29.415693>,  <35.787182, 37.134090, 28.865641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241783, 37.454441, 29.415693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.223820, 37.059067, 29.473623>,  <35.213039, 36.821842, 29.508381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.223820, 37.059067, 29.473623>,  <35.241783, 37.454441, 29.415693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223820, 37.059067, 29.473623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057435, 0.142176, 0.988174,
		-0.997338, 0.052697, 0.050386,
		-0.044911, -0.988438, 0.144824,
		35.210346, 36.762535, 29.517071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728428, 37.340416, 29.914972>,  <35.241783, 37.454441, 29.415693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728428, 37.340416, 29.914972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.939579, 37.001648, 29.940498>,  <35.066269, 36.798389, 29.955814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.939579, 37.001648, 29.940498>,  <34.728428, 37.340416, 29.914972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939579, 37.001648, 29.940498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022822, 0.060964, 0.997879,
		-0.849012, -0.528217, 0.012853,
		0.527880, -0.846918, 0.063814,
		35.097942, 36.747574, 29.959642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479694, 36.954376, 30.427769>,  <34.728428, 37.340416, 29.914972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479694, 36.954376, 30.427769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.850765, 36.808624, 30.395151>,  <35.073406, 36.721172, 30.375580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.850765, 36.808624, 30.395151>,  <34.479694, 36.954376, 30.427769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850765, 36.808624, 30.395151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145572, 0.151828, 0.977628,
		-0.343845, -0.918791, 0.193890,
		0.927674, -0.364378, -0.081545,
		35.129066, 36.699310, 30.370687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514717, 36.427269, 30.915037>,  <34.479694, 36.954376, 30.427769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514717, 36.427269, 30.915037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.884674, 36.558479, 30.838116>,  <35.106647, 36.637207, 30.791964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.884674, 36.558479, 30.838116>,  <34.514717, 36.427269, 30.915037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884674, 36.558479, 30.838116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193483, 0.029374, 0.980664,
		0.327331, -0.944212, -0.036300,
		0.924889, 0.328025, -0.192304,
		35.162140, 36.656887, 30.780424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051163, 35.969002, 31.240604>,  <34.514717, 36.427269, 30.915037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051163, 35.969002, 31.240604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.211983, 36.330616, 31.182529>,  <35.308475, 36.547585, 31.147684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.211983, 36.330616, 31.182529>,  <35.051163, 35.969002, 31.240604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211983, 36.330616, 31.182529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372771, -0.016783, 0.927772,
		0.836300, -0.427132, -0.343745,
		0.402050, 0.904034, -0.145187,
		35.332600, 36.601826, 31.138973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422482, 36.002518, 31.843304>,  <35.051163, 35.969002, 31.240604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422482, 36.002518, 31.843304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.495556, 36.374622, 31.716032>,  <35.539402, 36.597885, 31.639669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.495556, 36.374622, 31.716032>,  <35.422482, 36.002518, 31.843304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495556, 36.374622, 31.716032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260348, 0.266298, 0.928065,
		0.948074, -0.252382, -0.193543,
		0.182686, 0.930263, -0.318177,
		35.550362, 36.653702, 31.620579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168079, 36.117878, 32.061081>,  <35.422482, 36.002518, 31.843304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168079, 36.117878, 32.061081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.994263, 36.473053, 32.000763>,  <35.889973, 36.686157, 31.964573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.994263, 36.473053, 32.000763>,  <36.168079, 36.117878, 32.061081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994263, 36.473053, 32.000763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242908, 0.276763, 0.929730,
		0.867276, 0.367379, -0.335953,
		-0.434543, 0.887938, -0.150791,
		35.863899, 36.739433, 31.955526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555218, 36.517475, 32.377468>,  <36.168079, 36.117878, 32.061081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555218, 36.517475, 32.377468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.213284, 36.724056, 32.357327>,  <36.008121, 36.848003, 32.345242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.213284, 36.724056, 32.357327>,  <36.555218, 36.517475, 32.377468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213284, 36.724056, 32.357327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080097, 0.227216, 0.970545,
		0.512680, 0.825623, -0.235598,
		-0.854835, 0.516450, -0.050359,
		35.956833, 36.878990, 32.342220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724586, 37.039829, 32.799465>,  <36.555218, 36.517475, 32.377468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724586, 37.039829, 32.799465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.326218, 37.056877, 32.767654>,  <36.087196, 37.067104, 32.748569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.326218, 37.056877, 32.767654>,  <36.724586, 37.039829, 32.799465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326218, 37.056877, 32.767654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061054, 0.330609, 0.941791,
		0.066431, 0.942805, -0.326659,
		-0.995921, 0.042620, -0.079524,
		36.027443, 37.069664, 32.743797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508221, 37.715073, 32.903934>,  <36.724586, 37.039829, 32.799465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508221, 37.715073, 32.903934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.210972, 37.466671, 33.003632>,  <36.032623, 37.317631, 33.063450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.210972, 37.466671, 33.003632>,  <36.508221, 37.715073, 32.903934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210972, 37.466671, 33.003632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023978, 0.396944, 0.917530,
		-0.668726, 0.675860, -0.309868,
		-0.743122, -0.621006, 0.249241,
		35.988037, 37.280369, 33.078403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036282, 38.237778, 32.685307>,  <36.508221, 37.715073, 32.903934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036282, 38.237778, 32.685307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005222, 38.512913, 32.973984>,  <36.986588, 38.677994, 33.147190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005222, 38.512913, 32.973984>,  <37.036282, 38.237778, 32.685307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005222, 38.512913, 32.973984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699076, 0.478541, -0.531311,
		-0.710818, -0.545776, 0.443695,
		-0.077651, 0.687842, 0.721695,
		36.981926, 38.719265, 33.190491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261482, 38.450569, 32.943893>,  <37.036282, 38.237778, 32.685307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261482, 38.450569, 32.943893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470207, 38.789352, 32.984631>,  <36.595440, 38.992622, 33.009071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470207, 38.789352, 32.984631>,  <36.261482, 38.450569, 32.943893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470207, 38.789352, 32.984631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618589, 0.457887, -0.638504,
		-0.587421, 0.270178, 0.762850,
		0.521809, 0.846961, 0.101843,
		36.626751, 39.043442, 33.015182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786209, 38.947926, 33.215096>,  <36.261482, 38.450569, 32.943893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786209, 38.947926, 33.215096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.068569, 39.161499, 33.028927>,  <36.237984, 39.289642, 32.917225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.068569, 39.161499, 33.028927>,  <35.786209, 38.947926, 33.215096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068569, 39.161499, 33.028927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696621, 0.404426, -0.592586,
		-0.128175, 0.742529, 0.657436,
		0.705897, 0.533938, -0.465424,
		36.280338, 39.321682, 32.889301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494869, 39.605854, 33.067699>,  <35.786209, 38.947926, 33.215096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494869, 39.605854, 33.067699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.801594, 39.579151, 32.812344>,  <35.985630, 39.563129, 32.659130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.801594, 39.579151, 32.812344>,  <35.494869, 39.605854, 33.067699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801594, 39.579151, 32.812344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538447, 0.474462, -0.696391,
		0.349381, 0.877740, 0.327878,
		0.766816, -0.066761, -0.638385,
		36.031639, 39.559124, 32.620827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531940, 40.260479, 32.727043>,  <35.494869, 39.605854, 33.067699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531940, 40.260479, 32.727043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715836, 39.990215, 32.496521>,  <35.826172, 39.828056, 32.358208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715836, 39.990215, 32.496521>,  <35.531940, 40.260479, 32.727043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715836, 39.990215, 32.496521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373128, 0.441926, -0.815768,
		0.805865, 0.590074, -0.048937,
		0.459737, -0.675659, -0.576305,
		35.853756, 39.787518, 32.323631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863518, 40.627571, 32.092255>,  <35.531940, 40.260479, 32.727043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863518, 40.627571, 32.092255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.867180, 40.248425, 31.964836>,  <35.869377, 40.020939, 31.888386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.867180, 40.248425, 31.964836>,  <35.863518, 40.627571, 32.092255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867180, 40.248425, 31.964836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132504, 0.314600, -0.939931,
		0.991140, 0.050818, -0.122714,
		0.009159, -0.947863, -0.318546,
		35.869926, 39.964066, 31.869272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211571, 40.678131, 31.415409>,  <35.863518, 40.627571, 32.092255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211571, 40.678131, 31.415409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.013863, 40.330460, 31.421354>,  <35.895237, 40.121857, 31.424921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.013863, 40.330460, 31.421354>,  <36.211571, 40.678131, 31.415409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013863, 40.330460, 31.421354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409144, 0.217513, -0.886166,
		0.767006, -0.444086, -0.463130,
		-0.494271, -0.869181, 0.014861,
		35.865582, 40.069706, 31.425812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556801, 40.319210, 30.943724>,  <36.211571, 40.678131, 31.415409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556801, 40.319210, 30.943724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.188492, 40.173649, 30.999935>,  <35.967506, 40.086311, 31.033663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.188492, 40.173649, 30.999935>,  <36.556801, 40.319210, 30.943724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188492, 40.173649, 30.999935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186857, 0.095213, -0.977762,
		0.342433, -0.926557, -0.155668,
		-0.920774, -0.363905, 0.140530,
		35.912258, 40.064476, 31.042093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514519, 39.831589, 30.428474>,  <36.556801, 40.319210, 30.943724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514519, 39.831589, 30.428474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.135201, 39.910309, 30.528082>,  <35.907608, 39.957539, 30.587847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.135201, 39.910309, 30.528082>,  <36.514519, 39.831589, 30.428474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135201, 39.910309, 30.528082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265803, -0.063639, -0.961925,
		-0.173459, -0.978376, 0.112658,
		-0.948293, 0.196800, 0.249016,
		35.850712, 39.969349, 30.602787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054913, 39.269833, 30.076363>,  <36.514519, 39.831589, 30.428474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054913, 39.269833, 30.076363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.825256, 39.588997, 30.149794>,  <35.687462, 39.780495, 30.193851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.825256, 39.588997, 30.149794>,  <36.054913, 39.269833, 30.076363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825256, 39.588997, 30.149794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448671, -0.119063, -0.885731,
		-0.684875, -0.590902, 0.426357,
		-0.574144, 0.797909, 0.183577,
		35.653011, 39.828369, 30.204866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380188, 39.083477, 29.904163>,  <36.054913, 39.269833, 30.076363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380188, 39.083477, 29.904163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.371796, 39.483147, 29.918127>,  <35.366760, 39.722946, 29.926506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.371796, 39.483147, 29.918127>,  <35.380188, 39.083477, 29.904163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371796, 39.483147, 29.918127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439717, 0.022135, -0.897863,
		-0.897891, -0.034191, 0.438888,
		-0.020984, 0.999170, 0.034909,
		35.365501, 39.782898, 29.928600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738678, 39.140198, 29.800371>,  <35.380188, 39.083477, 29.904163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738678, 39.140198, 29.800371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.885178, 39.500553, 29.707197>,  <34.973076, 39.716766, 29.651293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.885178, 39.500553, 29.707197>,  <34.738678, 39.140198, 29.800371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885178, 39.500553, 29.707197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632658, 0.057515, -0.772293,
		-0.682354, 0.430219, 0.591020,
		0.366247, 0.900890, -0.232936,
		34.995052, 39.770821, 29.637316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188999, 39.681866, 29.873255>,  <34.738678, 39.140198, 29.800371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188999, 39.681866, 29.873255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.475620, 39.799202, 29.620115>,  <34.647594, 39.869606, 29.468231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.475620, 39.799202, 29.620115>,  <34.188999, 39.681866, 29.873255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475620, 39.799202, 29.620115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694971, 0.222566, -0.683725,
		-0.059715, 0.929739, 0.363346,
		0.716554, 0.293344, -0.632850,
		34.690586, 39.887207, 29.430260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915279, 40.318321, 29.489016>,  <34.188999, 39.681866, 29.873255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915279, 40.318321, 29.489016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.227600, 40.210045, 29.263777>,  <34.414993, 40.145077, 29.128633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.227600, 40.210045, 29.263777>,  <33.915279, 40.318321, 29.489016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227600, 40.210045, 29.263777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511281, 0.241164, -0.824883,
		0.359089, 0.931969, 0.049901,
		0.780799, -0.270693, -0.563098,
		34.461838, 40.128838, 29.094847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955273, 40.826298, 28.940556>,  <33.915279, 40.318321, 29.489016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955273, 40.826298, 28.940556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.155968, 40.513657, 28.792309>,  <34.276386, 40.326073, 28.703360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.155968, 40.513657, 28.792309>,  <33.955273, 40.826298, 28.940556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155968, 40.513657, 28.792309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583608, 0.010377, -0.811969,
		0.638481, 0.623695, -0.450941,
		0.501742, -0.781599, -0.370618,
		34.306492, 40.279179, 28.681124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747093, 41.417824, 28.995033>,  <33.955273, 40.826298, 28.940556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747093, 41.417824, 28.995033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.365547, 41.528038, 29.042742>,  <33.136620, 41.594166, 29.071367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.365547, 41.528038, 29.042742>,  <33.747093, 41.417824, 28.995033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365547, 41.528038, 29.042742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056567, -0.225215, 0.972666,
		0.294870, 0.934535, 0.199237,
		-0.953861, 0.275540, 0.119273,
		33.079388, 41.610699, 29.078524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802185, 41.813011, 29.602148>,  <33.747093, 41.417824, 28.995033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802185, 41.813011, 29.602148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.412083, 41.739300, 29.553280>,  <33.178020, 41.695072, 29.523960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.412083, 41.739300, 29.553280>,  <33.802185, 41.813011, 29.602148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412083, 41.739300, 29.553280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062121, -0.301915, 0.951309,
		-0.212193, 0.935354, 0.282996,
		-0.975251, -0.184281, -0.122169,
		33.119507, 41.684017, 29.516628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523224, 42.036983, 30.253267>,  <33.802185, 41.813011, 29.602148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523224, 42.036983, 30.253267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254269, 41.794216, 30.083776>,  <33.092896, 41.648556, 29.982082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254269, 41.794216, 30.083776>,  <33.523224, 42.036983, 30.253267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254269, 41.794216, 30.083776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142609, -0.455508, 0.878735,
		-0.726328, 0.651281, 0.219728,
		-0.672391, -0.606914, -0.423727,
		33.052551, 41.612141, 29.956657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971310, 41.993694, 30.765633>,  <33.523224, 42.036983, 30.253267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971310, 41.993694, 30.765633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.950157, 41.673187, 30.527248>,  <32.937466, 41.480881, 30.384218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.950157, 41.673187, 30.527248>,  <32.971310, 41.993694, 30.765633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950157, 41.673187, 30.527248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227821, -0.571375, 0.788434,
		-0.972266, 0.177465, -0.152332,
		-0.052881, -0.801272, -0.595959,
		32.934292, 41.432804, 30.348461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379963, 41.741379, 31.016424>,  <32.971310, 41.993694, 30.765633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379963, 41.741379, 31.016424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.578239, 41.442310, 30.839663>,  <32.697205, 41.262871, 30.733606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.578239, 41.442310, 30.839663>,  <32.379963, 41.741379, 31.016424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578239, 41.442310, 30.839663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331223, -0.633102, 0.699623,
		-0.802857, -0.200430, -0.561470,
		0.495694, -0.747669, -0.441903,
		32.726948, 41.218010, 30.707092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933382, 41.270206, 31.094025>,  <32.379963, 41.741379, 31.016424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933382, 41.270206, 31.094025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.273293, 41.076782, 31.010071>,  <32.477238, 40.960728, 30.959700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.273293, 41.076782, 31.010071>,  <31.933382, 41.270206, 31.094025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273293, 41.076782, 31.010071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169717, -0.627921, 0.759547,
		-0.499076, -0.609824, -0.615660,
		0.849776, -0.483560, -0.209883,
		32.528225, 40.931713, 30.947105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701931, 40.565685, 31.044493>,  <31.933382, 41.270206, 31.094025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701931, 40.565685, 31.044493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.095165, 40.581051, 31.116116>,  <32.331108, 40.590271, 31.159090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.095165, 40.581051, 31.116116>,  <31.701931, 40.565685, 31.044493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095165, 40.581051, 31.116116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114225, -0.635621, 0.763504,
		0.143146, -0.771045, -0.620483,
		0.983088, 0.038418, 0.179059,
		32.390091, 40.592575, 31.169834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974869, 39.876286, 30.916309>,  <31.701931, 40.565685, 31.044493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974869, 39.876286, 30.916309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.233974, 40.048275, 31.167873>,  <32.389439, 40.151466, 31.318811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.233974, 40.048275, 31.167873>,  <31.974869, 39.876286, 30.916309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233974, 40.048275, 31.167873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025468, -0.837274, 0.546190,
		0.761417, -0.337784, -0.553305,
		0.647762, 0.429970, 0.628912,
		32.428303, 40.177265, 31.356546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392311, 39.344418, 31.130444>,  <31.974869, 39.876286, 30.916309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392311, 39.344418, 31.130444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.472466, 39.627190, 31.401766>,  <32.520557, 39.796852, 31.564560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.472466, 39.627190, 31.401766>,  <32.392311, 39.344418, 31.130444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472466, 39.627190, 31.401766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005017, -0.691600, 0.722264,
		0.979705, -0.148132, -0.135037,
		0.200383, 0.706928, 0.678307,
		32.532581, 39.839268, 31.605257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066116, 39.131657, 31.440056>,  <32.392311, 39.344418, 31.130444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066116, 39.131657, 31.440056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.860561, 39.381138, 31.675653>,  <32.737228, 39.530827, 31.817011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.860561, 39.381138, 31.675653>,  <33.066116, 39.131657, 31.440056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860561, 39.381138, 31.675653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063491, -0.657052, 0.751167,
		0.855503, 0.423413, 0.298054,
		-0.513890, 0.623702, 0.588993,
		32.706394, 39.568249, 31.852352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234261, 38.846725, 32.047195>,  <33.066116, 39.131657, 31.440056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234261, 38.846725, 32.047195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913303, 39.082886, 32.082039>,  <32.720730, 39.224583, 32.102943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.913303, 39.082886, 32.082039>,  <33.234261, 38.846725, 32.047195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913303, 39.082886, 32.082039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292563, -0.516364, 0.804845,
		0.520160, 0.620320, 0.587058,
		-0.802396, 0.590400, 0.087109,
		32.672585, 39.260006, 32.108173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082615, 39.053200, 32.737576>,  <33.234261, 38.846725, 32.047195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082615, 39.053200, 32.737576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.728207, 39.071419, 32.553017>,  <32.515560, 39.082352, 32.442280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.728207, 39.071419, 32.553017>,  <33.082615, 39.053200, 32.737576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728207, 39.071419, 32.553017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417631, -0.510633, 0.751557,
		-0.201372, 0.858591, 0.471456,
		-0.886021, 0.045552, -0.461401,
		32.462399, 39.085083, 32.414597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.283886, 43.136993, 25.432714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983259, 42.898956, 25.546566>,  <31.802883, 42.756134, 25.614878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983259, 42.898956, 25.546566>,  <32.283886, 43.136993, 25.432714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983259, 42.898956, 25.546566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274863, 0.109733, 0.955201,
		-0.599667, 0.796130, 0.081097,
		-0.751565, -0.595093, 0.284630,
		31.757790, 42.720428, 25.631954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942614, 43.555679, 25.954212>,  <32.283886, 43.136993, 25.432714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942614, 43.555679, 25.954212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830046, 43.181019, 26.037634>,  <31.762505, 42.956223, 26.087687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830046, 43.181019, 26.037634>,  <31.942614, 43.555679, 25.954212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830046, 43.181019, 26.037634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453033, 0.061906, 0.889342,
		-0.845910, 0.344760, 0.406911,
		-0.281419, -0.936647, 0.208555,
		31.745621, 42.900024, 26.100201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712639, 43.493923, 26.719543>,  <31.942614, 43.555679, 25.954212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712639, 43.493923, 26.719543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797701, 43.112068, 26.636169>,  <31.848738, 42.882954, 26.586145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797701, 43.112068, 26.636169>,  <31.712639, 43.493923, 26.719543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797701, 43.112068, 26.636169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332840, -0.129786, 0.934009,
		-0.918692, -0.267996, 0.290142,
		0.212655, -0.954638, -0.208433,
		31.861498, 42.825676, 26.573639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659863, 43.257153, 27.398872>,  <31.712639, 43.493923, 26.719543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659863, 43.257153, 27.398872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831200, 42.962860, 27.189026>,  <31.934002, 42.786285, 27.063118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831200, 42.962860, 27.189026>,  <31.659863, 43.257153, 27.398872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831200, 42.962860, 27.189026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437321, -0.339263, 0.832857,
		-0.790742, -0.586173, 0.176431,
		0.428342, -0.735732, -0.524615,
		31.959702, 42.742142, 27.031641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468712, 42.639793, 27.718697>,  <31.659863, 43.257153, 27.398872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468712, 42.639793, 27.718697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806309, 42.540627, 27.528450>,  <32.008869, 42.481125, 27.414303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806309, 42.540627, 27.528450>,  <31.468712, 42.639793, 27.718697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806309, 42.540627, 27.528450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308720, -0.500588, 0.808767,
		-0.438592, -0.829427, -0.345957,
		0.843995, -0.247915, -0.475615,
		32.059505, 42.466251, 27.385765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596888, 41.895386, 27.757633>,  <31.468712, 42.639793, 27.718697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596888, 41.895386, 27.757633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960567, 42.050201, 27.696238>,  <32.178776, 42.143089, 27.659401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960567, 42.050201, 27.696238>,  <31.596888, 41.895386, 27.757633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960567, 42.050201, 27.696238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341232, -0.481425, 0.807336,
		0.238579, -0.786403, -0.569781,
		0.909198, 0.387040, -0.153488,
		32.233326, 42.166313, 27.650190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031521, 41.366070, 27.768639>,  <31.596888, 41.895386, 27.757633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031521, 41.366070, 27.768639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257568, 41.685986, 27.849615>,  <32.393196, 41.877934, 27.898201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257568, 41.685986, 27.849615>,  <32.031521, 41.366070, 27.768639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257568, 41.685986, 27.849615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401248, -0.480846, 0.779607,
		0.720865, -0.359338, -0.592647,
		0.565114, 0.799789, 0.202441,
		32.427101, 41.925922, 27.910347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636936, 41.069973, 28.061619>,  <32.031521, 41.366070, 27.768639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636936, 41.069973, 28.061619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646976, 41.455284, 28.168558>,  <32.653000, 41.686470, 28.232721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646976, 41.455284, 28.168558>,  <32.636936, 41.069973, 28.061619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646976, 41.455284, 28.168558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391209, -0.255568, 0.884104,
		0.919959, 0.082400, -0.383256,
		0.025097, 0.963273, 0.267348,
		32.654507, 41.744267, 28.248762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314728, 41.128654, 28.315023>,  <32.636936, 41.069973, 28.061619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314728, 41.128654, 28.315023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087368, 41.421860, 28.464483>,  <32.950951, 41.597782, 28.554159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087368, 41.421860, 28.464483>,  <33.314728, 41.128654, 28.315023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087368, 41.421860, 28.464483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265350, -0.266558, 0.926572,
		0.778788, 0.625812, -0.042994,
		-0.568400, 0.733012, 0.373652,
		32.916847, 41.641762, 28.576578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000370, 40.959656, 28.120773>,  <33.314728, 41.128654, 28.315023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000370, 40.959656, 28.120773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125252, 40.582493, 28.167168>,  <34.200180, 40.356194, 28.195004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125252, 40.582493, 28.167168>,  <34.000370, 40.959656, 28.120773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125252, 40.582493, 28.167168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317712, -0.218684, -0.922625,
		0.895316, 0.251195, -0.367847,
		0.312201, -0.942910, 0.115984,
		34.218910, 40.299622, 28.201963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528713, 40.857517, 27.592651>,  <34.000370, 40.959656, 28.120773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528713, 40.857517, 27.592651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375038, 40.507145, 27.709368>,  <34.282833, 40.296921, 27.779398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375038, 40.507145, 27.709368>,  <34.528713, 40.857517, 27.592651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375038, 40.507145, 27.709368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155199, -0.250279, -0.955654,
		0.910115, -0.412440, -0.039788,
		-0.384192, -0.875930, 0.291793,
		34.259781, 40.244366, 27.796906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776611, 40.364033, 27.105522>,  <34.528713, 40.857517, 27.592651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776611, 40.364033, 27.105522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457108, 40.205544, 27.286625>,  <34.265404, 40.110451, 27.395287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457108, 40.205544, 27.286625>,  <34.776611, 40.364033, 27.105522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457108, 40.205544, 27.286625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397543, -0.217273, -0.891489,
		0.451599, -0.892077, 0.016034,
		-0.798760, -0.396221, 0.452759,
		34.217480, 40.086678, 27.422453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661846, 39.785446, 26.780733>,  <34.776611, 40.364033, 27.105522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661846, 39.785446, 26.780733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294388, 39.858620, 26.920801>,  <34.073914, 39.902523, 27.004843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294388, 39.858620, 26.920801>,  <34.661846, 39.785446, 26.780733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294388, 39.858620, 26.920801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389943, -0.277438, -0.878050,
		-0.063470, -0.943167, 0.326200,
		-0.918649, 0.182930, 0.350173,
		34.018795, 39.913498, 27.025852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343868, 39.250694, 26.501642>,  <34.661846, 39.785446, 26.780733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343868, 39.250694, 26.501642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051804, 39.507072, 26.596344>,  <33.876564, 39.660900, 26.653164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051804, 39.507072, 26.596344>,  <34.343868, 39.250694, 26.501642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051804, 39.507072, 26.596344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539314, -0.327877, -0.775652,
		-0.419525, -0.694037, 0.585074,
		-0.730164, 0.640944, 0.236751,
		33.832752, 39.699356, 26.667370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800285, 38.974018, 26.025475>,  <34.343868, 39.250694, 26.501642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800285, 38.974018, 26.025475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666092, 39.317715, 26.179958>,  <33.585575, 39.523933, 26.272648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666092, 39.317715, 26.179958>,  <33.800285, 38.974018, 26.025475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666092, 39.317715, 26.179958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561691, 0.146675, -0.814241,
		-0.756277, -0.490093, 0.433422,
		-0.335482, 0.859241, 0.386208,
		33.565449, 39.575485, 26.295820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057198, 38.910011, 25.865362>,  <33.800285, 38.974018, 26.025475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057198, 38.910011, 25.865362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164791, 39.289917, 25.929361>,  <33.229347, 39.517860, 25.967760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164791, 39.289917, 25.929361>,  <33.057198, 38.910011, 25.865362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164791, 39.289917, 25.929361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382208, 0.257735, -0.887406,
		-0.884063, 0.177542, 0.432333,
		0.268980, 0.949764, 0.159996,
		33.245483, 39.574844, 25.977360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451767, 39.371319, 25.679773>,  <33.057198, 38.910011, 25.865362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451767, 39.371319, 25.679773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755081, 39.629635, 25.644100>,  <32.937069, 39.784626, 25.622696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755081, 39.629635, 25.644100>,  <32.451767, 39.371319, 25.679773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755081, 39.629635, 25.644100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208818, 0.111012, -0.971634,
		-0.617573, 0.755400, 0.219032,
		0.758287, 0.645792, -0.089183,
		32.982567, 39.823372, 25.617346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211899, 40.004837, 25.386147>,  <32.451767, 39.371319, 25.679773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211899, 40.004837, 25.386147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604706, 39.989216, 25.312269>,  <32.840389, 39.979843, 25.267942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604706, 39.989216, 25.312269>,  <32.211899, 40.004837, 25.386147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604706, 39.989216, 25.312269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177899, 0.135848, -0.974627,
		0.063155, 0.989960, 0.126457,
		0.982020, -0.039056, -0.184692,
		32.899311, 39.977501, 25.256861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320072, 40.628792, 25.001036>,  <32.211899, 40.004837, 25.386147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320072, 40.628792, 25.001036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664204, 40.444431, 24.913937>,  <32.870682, 40.333817, 24.861677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664204, 40.444431, 24.913937>,  <32.320072, 40.628792, 25.001036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664204, 40.444431, 24.913937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137513, 0.201483, -0.969791,
		0.490849, 0.864278, 0.109961,
		0.860324, -0.460900, -0.217747,
		32.922302, 40.306160, 24.848612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800900, 41.095310, 24.550100>,  <32.320072, 40.628792, 25.001036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800900, 41.095310, 24.550100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898792, 40.710320, 24.503199>,  <32.957527, 40.479324, 24.475058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898792, 40.710320, 24.503199>,  <32.800900, 41.095310, 24.550100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898792, 40.710320, 24.503199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080933, 0.100231, -0.991667,
		0.966206, 0.252185, -0.053365,
		0.244735, -0.962474, -0.117254,
		32.972214, 40.421577, 24.468023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273708, 41.145515, 24.012951>,  <32.800900, 41.095310, 24.550100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273708, 41.145515, 24.012951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146603, 40.766285, 24.018398>,  <33.070339, 40.538746, 24.021667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146603, 40.766285, 24.018398>,  <33.273708, 41.145515, 24.012951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146603, 40.766285, 24.018398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021877, -0.007028, -0.999736,
		0.947918, -0.317975, -0.018508,
		-0.317761, -0.948073, 0.013618,
		33.051273, 40.481865, 24.022484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609997, 40.739494, 23.383686>,  <33.273708, 41.145515, 24.012951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609997, 40.739494, 23.383686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287109, 40.525562, 23.483561>,  <33.093376, 40.397202, 23.543486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287109, 40.525562, 23.483561>,  <33.609997, 40.739494, 23.383686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287109, 40.525562, 23.483561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169073, -0.195777, -0.965964,
		0.565514, -0.821963, 0.067609,
		-0.807222, -0.534835, 0.249686,
		33.044941, 40.365112, 23.558466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786537, 40.090073, 23.091681>,  <33.609997, 40.739494, 23.383686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786537, 40.090073, 23.091681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393250, 40.155636, 23.123690>,  <33.157276, 40.194973, 23.142895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393250, 40.155636, 23.123690>,  <33.786537, 40.090073, 23.091681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393250, 40.155636, 23.123690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119655, -0.248485, -0.961217,
		-0.137668, -0.954667, 0.263929,
		-0.983224, 0.163909, 0.080023,
		33.098282, 40.204811, 23.147696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.105122, 36.504463, 24.376566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.316736, 36.843895, 24.379017>,  <27.443705, 37.047554, 24.380487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.316736, 36.843895, 24.379017>,  <27.105122, 36.504463, 24.376566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316736, 36.843895, 24.379017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249600, -0.162506, 0.954616,
		0.811060, -0.503499, -0.297777,
		0.529039, 0.848576, 0.006129,
		27.475449, 37.098469, 24.380856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776043, 36.317604, 24.669703>,  <27.105122, 36.504463, 24.376566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776043, 36.317604, 24.669703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.748833, 36.713776, 24.717731>,  <27.732506, 36.951481, 24.746550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.748833, 36.713776, 24.717731>,  <27.776043, 36.317604, 24.669703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748833, 36.713776, 24.717731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340780, -0.090048, 0.935821,
		0.937679, 0.104578, -0.331394,
		-0.068025, 0.990432, 0.120074,
		27.728426, 37.010906, 24.753754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428646, 36.598415, 24.902674>,  <27.776043, 36.317604, 24.669703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428646, 36.598415, 24.902674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.170622, 36.876392, 25.029764>,  <28.015808, 37.043179, 25.106018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.170622, 36.876392, 25.029764>,  <28.428646, 36.598415, 24.902674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170622, 36.876392, 25.029764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475300, 0.039332, 0.878944,
		0.598320, 0.717987, -0.355679,
		-0.645060, 0.694944, 0.317726,
		27.977104, 37.084877, 25.125082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888630, 37.069790, 25.175789>,  <28.428646, 36.598415, 24.902674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888630, 37.069790, 25.175789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.526199, 37.160629, 25.318590>,  <28.308741, 37.215134, 25.404272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.526199, 37.160629, 25.318590>,  <28.888630, 37.069790, 25.175789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526199, 37.160629, 25.318590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376814, 0.049329, 0.924974,
		0.192452, 0.972621, -0.130271,
		-0.906076, 0.227101, 0.357004,
		28.254377, 37.228760, 25.425692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921179, 37.632149, 25.699989>,  <28.888630, 37.069790, 25.175789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921179, 37.632149, 25.699989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.567009, 37.488445, 25.817944>,  <28.354507, 37.402222, 25.888716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.567009, 37.488445, 25.817944>,  <28.921179, 37.632149, 25.699989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567009, 37.488445, 25.817944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330608, -0.040883, 0.942882,
		-0.326682, 0.932343, 0.154972,
		-0.885425, -0.359257, 0.294884,
		28.301382, 37.380669, 25.906408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755754, 38.010033, 26.225342>,  <28.921179, 37.632149, 25.699989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755754, 38.010033, 26.225342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.512020, 37.701633, 26.299391>,  <28.365780, 37.516594, 26.343821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.512020, 37.701633, 26.299391>,  <28.755754, 38.010033, 26.225342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512020, 37.701633, 26.299391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335542, -0.039193, 0.941209,
		-0.718416, 0.635629, 0.282585,
		-0.609336, -0.770999, 0.185123,
		28.329220, 37.470333, 26.354927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450394, 38.175907, 26.858576>,  <28.755754, 38.010033, 26.225342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450394, 38.175907, 26.858576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.388163, 37.782017, 26.827303>,  <28.350824, 37.545681, 26.808538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.388163, 37.782017, 26.827303>,  <28.450394, 38.175907, 26.858576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388163, 37.782017, 26.827303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186190, -0.106959, 0.976674,
		-0.970118, 0.137390, 0.199987,
		-0.155576, -0.984725, -0.078182,
		28.341490, 37.486599, 26.803848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015268, 37.907722, 27.422235>,  <28.450394, 38.175907, 26.858576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015268, 37.907722, 27.422235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.218180, 37.576908, 27.325338>,  <28.339926, 37.378418, 27.267200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.218180, 37.576908, 27.325338>,  <28.015268, 37.907722, 27.422235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218180, 37.576908, 27.325338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263785, -0.118590, 0.957264,
		-0.820420, -0.549497, 0.158002,
		0.507276, -0.827037, -0.242242,
		28.370363, 37.328796, 27.252666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904308, 37.445087, 27.869976>,  <28.015268, 37.907722, 27.422235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904308, 37.445087, 27.869976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.253349, 37.310631, 27.728230>,  <28.462774, 37.229958, 27.643183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.253349, 37.310631, 27.728230>,  <27.904308, 37.445087, 27.869976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253349, 37.310631, 27.728230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341265, -0.099459, 0.934690,
		-0.349435, -0.936544, 0.027926,
		0.872602, -0.336144, -0.354364,
		28.515129, 37.209789, 27.621920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076002, 36.805992, 28.224495>,  <27.904308, 37.445087, 27.869976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076002, 36.805992, 28.224495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.428055, 36.930981, 28.081535>,  <28.639286, 37.005974, 27.995760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.428055, 36.930981, 28.081535>,  <28.076002, 36.805992, 28.224495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428055, 36.930981, 28.081535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450863, -0.314449, 0.835371,
		0.148644, -0.896373, -0.417636,
		0.880130, 0.312469, -0.357400,
		28.692093, 37.024723, 27.974316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460140, 36.376926, 28.548586>,  <28.076002, 36.805992, 28.224495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460140, 36.376926, 28.548586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.730806, 36.649689, 28.437498>,  <28.893206, 36.813347, 28.370846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.730806, 36.649689, 28.437498>,  <28.460140, 36.376926, 28.548586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730806, 36.649689, 28.437498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592746, -0.280757, 0.754870,
		0.436780, -0.675410, -0.594176,
		0.676665, 0.681907, -0.277717,
		28.933805, 36.854259, 28.354183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105873, 36.119049, 28.442125>,  <28.460140, 36.376926, 28.548586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105873, 36.119049, 28.442125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.228722, 36.491871, 28.519009>,  <29.302431, 36.715565, 28.565138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.228722, 36.491871, 28.519009>,  <29.105873, 36.119049, 28.442125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228722, 36.491871, 28.519009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601935, -0.346689, 0.719361,
		0.737123, -0.105234, -0.667514,
		0.307121, 0.932058, 0.192208,
		29.320858, 36.771488, 28.576672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872654, 36.080692, 28.713776>,  <29.105873, 36.119049, 28.442125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872654, 36.080692, 28.713776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.732552, 36.439392, 28.821974>,  <29.648489, 36.654610, 28.886892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.732552, 36.439392, 28.821974>,  <29.872654, 36.080692, 28.713776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732552, 36.439392, 28.821974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635694, 0.015493, 0.771785,
		0.687904, 0.442275, -0.575483,
		-0.350257, 0.896746, 0.270494,
		29.627474, 36.708416, 28.903122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438803, 36.372498, 29.168381>,  <29.872654, 36.080692, 28.713776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438803, 36.372498, 29.168381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.117910, 36.584213, 29.278852>,  <29.925375, 36.711243, 29.345137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.117910, 36.584213, 29.278852>,  <30.438803, 36.372498, 29.168381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117910, 36.584213, 29.278852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328427, 0.004945, 0.944516,
		0.498557, 0.848427, -0.177800,
		-0.802233, 0.529289, 0.276181,
		29.877241, 36.743000, 29.361706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190552, 36.351166, 28.960274>,  <30.438803, 36.372498, 29.168381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190552, 36.351166, 28.960274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.470751, 36.066265, 28.978168>,  <31.638870, 35.895325, 28.988905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.470751, 36.066265, 28.978168>,  <31.190552, 36.351166, 28.960274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470751, 36.066265, 28.978168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097082, -0.157210, -0.982782,
		0.707021, 0.684093, -0.179272,
		0.700497, -0.712252, 0.044738,
		31.680901, 35.852589, 28.991590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676371, 36.487129, 28.411684>,  <31.190552, 36.351166, 28.960274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676371, 36.487129, 28.411684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698072, 36.094975, 28.487474>,  <31.711094, 35.859680, 28.532948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698072, 36.094975, 28.487474>,  <31.676371, 36.487129, 28.411684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698072, 36.094975, 28.487474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134622, -0.180839, -0.974256,
		0.989411, 0.078367, 0.122170,
		0.054256, -0.980385, 0.189474,
		31.714350, 35.800858, 28.544317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340233, 36.316002, 28.086855>,  <31.676371, 36.487129, 28.411684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340233, 36.316002, 28.086855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.128963, 35.980865, 28.142071>,  <32.002201, 35.779785, 28.175200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.128963, 35.980865, 28.142071>,  <32.340233, 36.316002, 28.086855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128963, 35.980865, 28.142071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047579, -0.191509, -0.980337,
		0.847800, -0.511225, 0.141014,
		-0.528178, -0.837839, 0.138037,
		31.970510, 35.729515, 28.183481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828197, 35.800934, 27.706926>,  <32.340233, 36.316002, 28.086855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828197, 35.800934, 27.706926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.446426, 35.695522, 27.762959>,  <32.217365, 35.632275, 27.796577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.446426, 35.695522, 27.762959>,  <32.828197, 35.800934, 27.706926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446426, 35.695522, 27.762959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065180, -0.273971, -0.959527,
		0.291243, -0.924928, 0.244308,
		-0.954426, -0.263531, 0.140079,
		32.160099, 35.616463, 27.804981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729881, 35.373810, 27.172064>,  <32.828197, 35.800934, 27.706926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729881, 35.373810, 27.172064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.351299, 35.419048, 27.293011>,  <32.124149, 35.446194, 27.365578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.351299, 35.419048, 27.293011>,  <32.729881, 35.373810, 27.172064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351299, 35.419048, 27.293011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318722, -0.178500, -0.930889,
		-0.051307, -0.977419, 0.204989,
		-0.946459, 0.113096, 0.302366,
		32.067360, 35.452980, 27.383720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358120, 34.786625, 26.832603>,  <32.729881, 35.373810, 27.172064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358120, 34.786625, 26.832603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.109161, 35.088017, 26.917349>,  <31.959785, 35.268852, 26.968197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.109161, 35.088017, 26.917349>,  <32.358120, 34.786625, 26.832603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109161, 35.088017, 26.917349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240127, 0.073812, -0.967931,
		-0.744954, -0.653315, 0.134990,
		-0.622401, 0.753479, 0.211865,
		31.922441, 35.314060, 26.980909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817827, 34.606243, 26.345022>,  <32.358120, 34.786625, 26.832603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817827, 34.606243, 26.345022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.794170, 34.989784, 26.456091>,  <31.779976, 35.219910, 26.522732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.794170, 34.989784, 26.456091>,  <31.817827, 34.606243, 26.345022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794170, 34.989784, 26.456091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314905, 0.246037, -0.916679,
		-0.947279, -0.141656, 0.287396,
		-0.059143, 0.958853, 0.277674,
		31.776428, 35.277439, 26.539392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167402, 34.863663, 26.058786>,  <31.817827, 34.606243, 26.345022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167402, 34.863663, 26.058786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390263, 35.191677, 26.111141>,  <31.523979, 35.388485, 26.142553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390263, 35.191677, 26.111141>,  <31.167402, 34.863663, 26.058786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390263, 35.191677, 26.111141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495647, 0.454850, -0.739896,
		-0.666272, 0.347358, 0.659866,
		0.557149, 0.820033, 0.130887,
		31.557407, 35.437687, 26.150408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714840, 35.441967, 26.032988>,  <31.167402, 34.863663, 26.058786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714840, 35.441967, 26.032988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.073509, 35.606991, 25.968779>,  <31.288712, 35.706005, 25.930254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.073509, 35.606991, 25.968779>,  <30.714840, 35.441967, 26.032988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073509, 35.606991, 25.968779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356992, 0.459451, -0.813303,
		-0.261785, 0.786574, 0.559259,
		0.896675, 0.412562, -0.160523,
		31.342512, 35.730759, 25.920622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487148, 36.084351, 25.896456>,  <30.714840, 35.441967, 26.032988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487148, 36.084351, 25.896456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.871128, 36.108021, 25.786919>,  <31.101517, 36.122223, 25.721195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.871128, 36.108021, 25.786919>,  <30.487148, 36.084351, 25.896456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871128, 36.108021, 25.786919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267954, 0.479340, -0.835724,
		0.081811, 0.875632, 0.475999,
		0.959952, 0.059175, -0.273845,
		31.159113, 36.125774, 25.704765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682055, 36.824039, 25.739937>,  <30.487148, 36.084351, 25.896456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682055, 36.824039, 25.739937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.933256, 36.582520, 25.543552>,  <31.083977, 36.437607, 25.425722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.933256, 36.582520, 25.543552>,  <30.682055, 36.824039, 25.739937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933256, 36.582520, 25.543552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265780, 0.426541, -0.864537,
		0.731419, 0.673419, 0.107392,
		0.628002, -0.603796, -0.490961,
		31.121656, 36.401382, 25.396265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003761, 37.240200, 25.301413>,  <30.682055, 36.824039, 25.739937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003761, 37.240200, 25.301413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.043983, 36.870159, 25.154949>,  <31.068117, 36.648132, 25.067072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.043983, 36.870159, 25.154949>,  <31.003761, 37.240200, 25.301413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043983, 36.870159, 25.154949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000045, 0.368026, -0.929816,
		0.994932, 0.093480, 0.037048,
		0.100554, -0.925104, -0.366156,
		31.074150, 36.592628, 25.045103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476168, 37.319084, 24.737469>,  <31.003761, 37.240200, 25.301413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476168, 37.319084, 24.737469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.248835, 36.996490, 24.672256>,  <31.112434, 36.802933, 24.633129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.248835, 36.996490, 24.672256>,  <31.476168, 37.319084, 24.737469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248835, 36.996490, 24.672256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375319, 0.430431, -0.820892,
		0.732210, -0.405354, -0.547318,
		-0.568335, -0.806484, -0.163029,
		31.078335, 36.754543, 24.623348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559399, 37.202496, 24.036139>,  <31.476168, 37.319084, 24.737469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559399, 37.202496, 24.036139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.233995, 37.006584, 24.161564>,  <31.038754, 36.889038, 24.236818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.233995, 37.006584, 24.161564>,  <31.559399, 37.202496, 24.036139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233995, 37.006584, 24.161564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476975, 0.253453, -0.841580,
		0.332716, -0.834193, -0.439798,
		-0.813508, -0.489780, 0.313562,
		30.989943, 36.859650, 24.255632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052715, 36.932747, 23.740145>,  <31.559399, 37.202496, 24.036139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052715, 36.932747, 23.740145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.371334, 37.122269, 23.589935>,  <32.562508, 37.235981, 23.499809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.371334, 37.122269, 23.589935>,  <32.052715, 36.932747, 23.740145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371334, 37.122269, 23.589935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507164, -0.185577, 0.841633,
		0.329078, -0.860856, -0.388116,
		0.796550, 0.473801, -0.375526,
		32.610298, 37.264408, 23.477278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584732, 36.485321, 23.966923>,  <32.052715, 36.932747, 23.740145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584732, 36.485321, 23.966923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.757751, 36.833733, 23.873783>,  <32.861565, 37.042778, 23.817900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.757751, 36.833733, 23.873783>,  <32.584732, 36.485321, 23.966923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757751, 36.833733, 23.873783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599686, -0.085092, 0.795698,
		0.673259, -0.483814, -0.559148,
		0.432549, 0.871024, -0.232848,
		32.887516, 37.095039, 23.803928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362495, 36.425835, 23.921791>,  <32.584732, 36.485321, 23.966923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362495, 36.425835, 23.921791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.304337, 36.818153, 23.973787>,  <33.269440, 37.053543, 24.004986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.304337, 36.818153, 23.973787>,  <33.362495, 36.425835, 23.921791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304337, 36.818153, 23.973787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680967, 0.003894, 0.732304,
		0.717734, 0.194998, -0.668456,
		-0.145401, 0.980796, 0.129993,
		33.260715, 37.112392, 24.012785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910023, 36.641300, 23.943001>,  <33.362495, 36.425835, 23.921791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910023, 36.641300, 23.943001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.698490, 36.938057, 24.107895>,  <33.571571, 37.116112, 24.206831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.698490, 36.938057, 24.107895>,  <33.910023, 36.641300, 23.943001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698490, 36.938057, 24.107895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669557, 0.066192, 0.739805,
		0.521567, 0.667248, -0.531741,
		-0.528831, 0.741889, 0.412237,
		33.539841, 37.160625, 24.231565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372993, 37.070267, 24.312019>,  <33.910023, 36.641300, 23.943001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372993, 37.070267, 24.312019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025955, 37.201324, 24.461645>,  <33.817734, 37.279961, 24.551420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025955, 37.201324, 24.461645>,  <34.372993, 37.070267, 24.312019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025955, 37.201324, 24.461645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443346, 0.168978, 0.880279,
		0.225212, 0.929567, -0.291866,
		-0.867596, 0.327647, 0.374064,
		33.765675, 37.299618, 24.573864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533096, 37.582260, 24.776733>,  <34.372993, 37.070267, 24.312019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533096, 37.582260, 24.776733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.179676, 37.468658, 24.925690>,  <33.967625, 37.400497, 25.015062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.179676, 37.468658, 24.925690>,  <34.533096, 37.582260, 24.776733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179676, 37.468658, 24.925690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360498, 0.095138, 0.927895,
		-0.298953, 0.954092, 0.018323,
		-0.883554, -0.284003, 0.372390,
		33.914608, 37.383457, 25.037407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498096, 37.968304, 25.487032>,  <34.533096, 37.582260, 24.776733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498096, 37.968304, 25.487032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232941, 37.669277, 25.470436>,  <34.073845, 37.489861, 25.460478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232941, 37.669277, 25.470436>,  <34.498096, 37.968304, 25.487032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232941, 37.669277, 25.470436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219794, -0.247276, 0.943687,
		-0.715726, 0.616444, 0.328228,
		-0.662893, -0.747563, -0.041492,
		34.034073, 37.445007, 25.457989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196445, 38.130718, 26.087973>,  <34.498096, 37.968304, 25.487032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196445, 38.130718, 26.087973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066315, 37.760830, 26.008923>,  <33.988235, 37.538898, 25.961493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066315, 37.760830, 26.008923>,  <34.196445, 38.130718, 26.087973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066315, 37.760830, 26.008923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125677, -0.249422, 0.960205,
		-0.937212, 0.287546, 0.197360,
		-0.325329, -0.924719, -0.197623,
		33.968716, 37.483414, 25.949636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682152, 37.897259, 26.687668>,  <34.196445, 38.130718, 26.087973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682152, 37.897259, 26.687668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799583, 37.561058, 26.505518>,  <33.870045, 37.359337, 26.396229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799583, 37.561058, 26.505518>,  <33.682152, 37.897259, 26.687668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799583, 37.561058, 26.505518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209067, -0.408377, 0.888549,
		-0.932792, -0.356065, 0.055830,
		0.293582, -0.840503, -0.455373,
		33.887657, 37.308907, 26.368906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333344, 37.482464, 27.129927>,  <33.682152, 37.897259, 26.687668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333344, 37.482464, 27.129927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.615536, 37.256317, 26.958973>,  <33.784851, 37.120628, 26.856401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.615536, 37.256317, 26.958973>,  <33.333344, 37.482464, 27.129927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615536, 37.256317, 26.958973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254941, -0.360221, 0.897355,
		-0.661291, -0.742022, -0.109991,
		0.705479, -0.565371, -0.427382,
		33.827179, 37.086704, 26.830759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237495, 36.816830, 27.396215>,  <33.333344, 37.482464, 27.129927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237495, 36.816830, 27.396215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.614223, 36.823029, 27.261908>,  <33.840260, 36.826748, 27.181324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.614223, 36.823029, 27.261908>,  <33.237495, 36.816830, 27.396215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614223, 36.823029, 27.261908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297488, -0.503432, 0.811207,
		-0.156463, -0.863896, -0.478751,
		0.941817, 0.015499, -0.335768,
		33.896770, 36.827679, 27.161177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524433, 36.195030, 27.476080>,  <33.237495, 36.816830, 27.396215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524433, 36.195030, 27.476080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.874435, 36.381470, 27.423752>,  <34.084438, 36.493332, 27.392355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.874435, 36.381470, 27.423752>,  <33.524433, 36.195030, 27.476080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874435, 36.381470, 27.423752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359761, -0.445244, 0.819958,
		0.323930, -0.764535, -0.557275,
		0.875009, 0.466094, -0.130822,
		34.136940, 36.521297, 27.384504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201340, 35.699543, 27.473240>,  <33.524433, 36.195030, 27.476080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201340, 35.699543, 27.473240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.297829, 36.075207, 27.571051>,  <34.355721, 36.300606, 27.629738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.297829, 36.075207, 27.571051>,  <34.201340, 35.699543, 27.473240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297829, 36.075207, 27.571051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390400, -0.324587, 0.861528,
		0.888482, -0.112353, -0.444945,
		0.241219, 0.939159, 0.244527,
		34.370193, 36.356953, 27.644409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832767, 35.618317, 27.727152>,  <34.201340, 35.699543, 27.473240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832767, 35.618317, 27.727152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.732052, 35.978588, 27.868792>,  <34.671623, 36.194752, 27.953775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.732052, 35.978588, 27.868792>,  <34.832767, 35.618317, 27.727152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732052, 35.978588, 27.868792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453543, -0.213405, 0.865308,
		0.854929, 0.378470, -0.354764,
		-0.251785, 0.900677, 0.354098,
		34.656517, 36.248791, 27.975021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.506187, 39.359653, 22.857630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167995, 39.573254, 22.858988>,  <32.965080, 39.701412, 22.859802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167995, 39.573254, 22.858988>,  <33.506187, 39.359653, 22.857630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167995, 39.573254, 22.858988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020788, -0.026559, -0.999431,
		-0.533608, -0.845066, 0.033556,
		-0.845476, 0.534002, 0.003395,
		32.914352, 39.733456, 22.860006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064907, 39.023388, 22.376711>,  <33.506187, 39.359653, 22.857630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064907, 39.023388, 22.376711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909542, 39.389187, 22.422012>,  <32.816322, 39.608665, 22.449194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909542, 39.389187, 22.422012>,  <33.064907, 39.023388, 22.376711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909542, 39.389187, 22.422012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147199, 0.059750, -0.987300,
		-0.909651, -0.400154, 0.111406,
		-0.388416, 0.914498, 0.113254,
		32.793018, 39.663536, 22.455988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378277, 39.061554, 22.080992>,  <33.064907, 39.023388, 22.376711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378277, 39.061554, 22.080992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.508648, 39.439407, 22.065798>,  <32.586872, 39.666119, 22.056681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.508648, 39.439407, 22.065798>,  <32.378277, 39.061554, 22.080992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508648, 39.439407, 22.065798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222890, 0.037733, -0.974113,
		-0.918744, 0.325957, 0.222847,
		0.325928, 0.944631, -0.037985,
		32.606426, 39.722797, 22.054401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867731, 39.383087, 21.654903>,  <32.378277, 39.061554, 22.080992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867731, 39.383087, 21.654903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193577, 39.615051, 21.650677>,  <32.389084, 39.754230, 21.648140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193577, 39.615051, 21.650677>,  <31.867731, 39.383087, 21.654903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193577, 39.615051, 21.650677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153347, 0.197769, -0.968180,
		-0.559363, 0.790315, 0.250032,
		0.814615, 0.579906, -0.010568,
		32.437962, 39.789024, 21.647507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725416, 40.052898, 21.338848>,  <31.867731, 39.383087, 21.654903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725416, 40.052898, 21.338848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.118931, 39.995972, 21.295204>,  <32.355042, 39.961815, 21.269018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.118931, 39.995972, 21.295204>,  <31.725416, 40.052898, 21.338848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118931, 39.995972, 21.295204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069822, 0.256440, -0.964035,
		0.165181, 0.956025, 0.242346,
		0.983789, -0.142319, -0.109110,
		32.414066, 39.953278, 21.262470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866226, 40.448532, 20.819229>,  <31.725416, 40.052898, 21.338848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866226, 40.448532, 20.819229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218121, 40.258404, 20.823849>,  <32.429256, 40.144325, 20.826620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218121, 40.258404, 20.823849>,  <31.866226, 40.448532, 20.819229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218121, 40.258404, 20.823849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084821, 0.132990, -0.987481,
		0.467839, 0.869701, 0.157313,
		0.879734, -0.475325, 0.011551,
		32.482040, 40.115807, 20.827314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286427, 40.962341, 20.413431>,  <31.866226, 40.448532, 20.819229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286427, 40.962341, 20.413431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469364, 40.606869, 20.426622>,  <32.579124, 40.393585, 20.434538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469364, 40.606869, 20.426622>,  <32.286427, 40.962341, 20.413431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469364, 40.606869, 20.426622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260093, 0.098205, -0.960577,
		0.850406, 0.447890, 0.276052,
		0.457342, -0.888679, 0.032979,
		32.606567, 40.340263, 20.436516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999081, 41.094986, 20.222607>,  <32.286427, 40.962341, 20.413431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999081, 41.094986, 20.222607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916821, 40.711441, 20.144335>,  <32.867466, 40.481316, 20.097372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916821, 40.711441, 20.144335>,  <32.999081, 41.094986, 20.222607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916821, 40.711441, 20.144335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270820, 0.136385, -0.952919,
		0.940407, -0.248960, 0.231632,
		-0.205648, -0.958863, -0.195681,
		32.855125, 40.423782, 20.085630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572392, 40.798672, 19.738317>,  <32.999081, 41.094986, 20.222607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572392, 40.798672, 19.738317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241871, 40.579697, 19.685349>,  <33.043560, 40.448311, 19.653566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241871, 40.579697, 19.685349>,  <33.572392, 40.798672, 19.738317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241871, 40.579697, 19.685349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149728, 0.013148, -0.988640,
		0.542962, -0.836742, 0.071103,
		-0.826302, -0.547440, -0.132422,
		32.993980, 40.415466, 19.645622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683640, 40.457390, 19.207510>,  <33.572392, 40.798672, 19.738317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683640, 40.457390, 19.207510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293571, 40.371063, 19.227381>,  <33.059532, 40.319267, 19.239304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293571, 40.371063, 19.227381>,  <33.683640, 40.457390, 19.207510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293571, 40.371063, 19.227381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001883, -0.216218, -0.976343,
		0.221452, -0.952194, 0.210443,
		-0.975170, -0.215817, 0.049675,
		33.001022, 40.306316, 19.242283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529613, 39.857952, 18.767820>,  <33.683640, 40.457390, 19.207510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529613, 39.857952, 18.767820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187576, 40.063225, 18.797380>,  <32.982353, 40.186390, 18.815117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187576, 40.063225, 18.797380>,  <33.529613, 39.857952, 18.767820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187576, 40.063225, 18.797380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078778, 0.012284, -0.996816,
		-0.512458, -0.858190, 0.029923,
		-0.855091, 0.513184, 0.073901,
		32.931049, 40.217178, 18.819551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079376, 39.498199, 18.295990>,  <33.529613, 39.857952, 18.767820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079376, 39.498199, 18.295990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899334, 39.851711, 18.347109>,  <32.791309, 40.063820, 18.377781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899334, 39.851711, 18.347109>,  <33.079376, 39.498199, 18.295990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899334, 39.851711, 18.347109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188744, 0.045723, -0.980961,
		-0.872800, -0.465658, 0.146228,
		-0.450106, 0.883783, 0.127797,
		32.764301, 40.116848, 18.385448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321026, 39.477077, 18.108721>,  <33.079376, 39.498199, 18.295990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321026, 39.477077, 18.108721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461773, 39.847111, 18.051575>,  <32.546223, 40.069130, 18.017288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.461773, 39.847111, 18.051575>,  <32.321026, 39.477077, 18.108721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461773, 39.847111, 18.051575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444145, 0.030654, -0.895430,
		-0.823968, 0.378528, 0.421656,
		0.351871, 0.925082, -0.142863,
		32.567333, 40.124634, 18.008717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783194, 39.810966, 17.824179>,  <32.321026, 39.477077, 18.108721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783194, 39.810966, 17.824179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131142, 39.979168, 17.721025>,  <32.339909, 40.080090, 17.659134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131142, 39.979168, 17.721025>,  <31.783194, 39.810966, 17.824179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131142, 39.979168, 17.721025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228170, -0.120501, -0.966136,
		-0.437342, 0.899251, -0.008873,
		0.869868, 0.420507, -0.257882,
		32.392101, 40.105320, 17.643661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410728, 39.300591, 18.362894>,  <31.783194, 39.810966, 17.824179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410728, 39.300591, 18.362894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.352360, 38.921253, 18.250210>,  <31.317339, 38.693653, 18.182600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.352360, 38.921253, 18.250210>,  <31.410728, 39.300591, 18.362894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352360, 38.921253, 18.250210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140322, -0.262037, 0.954802,
		-0.979294, 0.178856, -0.094836,
		-0.145922, -0.948339, -0.281709,
		31.308582, 38.636753, 18.165697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916719, 39.023048, 18.799784>,  <31.410728, 39.300591, 18.362894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916719, 39.023048, 18.799784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.115805, 38.705181, 18.660770>,  <31.235256, 38.514462, 18.577362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.115805, 38.705181, 18.660770>,  <30.916719, 39.023048, 18.799784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115805, 38.705181, 18.660770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050347, -0.426484, 0.903093,
		-0.865879, -0.431984, -0.252276,
		0.497714, -0.794670, -0.347534,
		31.265120, 38.466782, 18.556511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638674, 38.449619, 19.228148>,  <30.916719, 39.023048, 18.799784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638674, 38.449619, 19.228148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.937578, 38.247227, 19.055830>,  <31.116920, 38.125793, 18.952440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.937578, 38.247227, 19.055830>,  <30.638674, 38.449619, 19.228148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937578, 38.247227, 19.055830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142651, -0.511019, 0.847650,
		-0.649039, -0.694869, -0.309686,
		0.747261, -0.505981, -0.430795,
		31.161757, 38.095432, 18.926592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511591, 37.670597, 19.391678>,  <30.638674, 38.449619, 19.228148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511591, 37.670597, 19.391678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.893744, 37.719067, 19.283926>,  <31.123035, 37.748150, 19.219275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.893744, 37.719067, 19.283926>,  <30.511591, 37.670597, 19.391678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893744, 37.719067, 19.283926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292989, -0.504504, 0.812178,
		-0.037487, -0.854864, -0.517496,
		0.955381, 0.121174, -0.269378,
		31.180357, 37.755421, 19.203114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832758, 37.035187, 19.482718>,  <30.511591, 37.670597, 19.391678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832758, 37.035187, 19.482718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.136600, 37.295139, 19.492931>,  <31.318905, 37.451111, 19.499060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.136600, 37.295139, 19.492931>,  <30.832758, 37.035187, 19.482718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136600, 37.295139, 19.492931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433209, -0.534851, 0.725441,
		0.485108, -0.539988, -0.687811,
		0.759605, 0.649883, 0.025532,
		31.364483, 37.490105, 19.500591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397924, 36.618187, 19.577845>,  <30.832758, 37.035187, 19.482718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397924, 36.618187, 19.577845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.478329, 36.991589, 19.696617>,  <31.526571, 37.215630, 19.767879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.478329, 36.991589, 19.696617>,  <31.397924, 36.618187, 19.577845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478329, 36.991589, 19.696617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545316, -0.358441, 0.757727,
		0.813772, 0.009610, -0.581105,
		0.201010, 0.933503, 0.296930,
		31.538631, 37.271641, 19.785696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109432, 36.629181, 19.840269>,  <31.397924, 36.618187, 19.577845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109432, 36.629181, 19.840269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976572, 36.962318, 20.017376>,  <31.896854, 37.162201, 20.123640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976572, 36.962318, 20.017376>,  <32.109432, 36.629181, 19.840269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976572, 36.962318, 20.017376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481207, -0.254108, 0.838969,
		0.811242, 0.491728, -0.316368,
		-0.332153, 0.832846, 0.442766,
		31.876926, 37.212173, 20.150206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682354, 36.901684, 20.222519>,  <32.109432, 36.629181, 19.840269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682354, 36.901684, 20.222519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.376587, 37.101696, 20.385309>,  <32.193127, 37.221703, 20.482983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.376587, 37.101696, 20.385309>,  <32.682354, 36.901684, 20.222519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376587, 37.101696, 20.385309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419355, -0.093828, 0.902960,
		0.489694, 0.860909, -0.137967,
		-0.764422, 0.500032, 0.406974,
		32.147259, 37.251705, 20.507401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001713, 37.276402, 20.759407>,  <32.682354, 36.901684, 20.222519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001713, 37.276402, 20.759407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616116, 37.317936, 20.857340>,  <32.384758, 37.342857, 20.916100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616116, 37.317936, 20.857340>,  <33.001713, 37.276402, 20.759407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616116, 37.317936, 20.857340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249391, 0.033279, 0.967831,
		0.092350, 0.994037, -0.057977,
		-0.963989, 0.103838, 0.244831,
		32.326920, 37.349087, 20.930790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000572, 37.932125, 21.250231>,  <33.001713, 37.276402, 20.759407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000572, 37.932125, 21.250231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681469, 37.702503, 21.324028>,  <32.490005, 37.564732, 21.368305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681469, 37.702503, 21.324028>,  <33.000572, 37.932125, 21.250231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681469, 37.702503, 21.324028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202546, 0.033064, 0.978714,
		-0.567935, 0.818150, 0.089895,
		-0.797763, -0.574054, 0.184492,
		32.442139, 37.530289, 21.379375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671204, 38.258484, 21.792082>,  <33.000572, 37.932125, 21.250231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671204, 38.258484, 21.792082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500439, 37.897228, 21.810316>,  <32.397980, 37.680473, 21.821257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500439, 37.897228, 21.810316>,  <32.671204, 38.258484, 21.792082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500439, 37.897228, 21.810316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090860, 0.007317, 0.995837,
		-0.899717, 0.429276, 0.078936,
		-0.426911, -0.903144, 0.045588,
		32.372364, 37.626286, 21.823992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058434, 38.335865, 22.280258>,  <32.671204, 38.258484, 21.792082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058434, 38.335865, 22.280258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168232, 37.951263, 22.275057>,  <32.234112, 37.720505, 22.271936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168232, 37.951263, 22.275057>,  <32.058434, 38.335865, 22.280258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168232, 37.951263, 22.275057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120222, 0.020901, 0.992527,
		-0.954043, -0.274008, 0.121331,
		0.274496, -0.961500, -0.013001,
		32.250580, 37.662815, 22.271156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661263, 37.986851, 22.847767>,  <32.058434, 38.335865, 22.280258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661263, 37.986851, 22.847767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.970230, 37.743351, 22.775339>,  <32.155609, 37.597252, 22.731882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.970230, 37.743351, 22.775339>,  <31.661263, 37.986851, 22.847767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970230, 37.743351, 22.775339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241341, 0.017620, 0.970280,
		-0.587471, -0.793164, 0.160527,
		0.772420, -0.608753, -0.181072,
		32.201958, 37.560726, 22.721018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682947, 37.419769, 23.274281>,  <31.661263, 37.986851, 22.847767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682947, 37.419769, 23.274281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064724, 37.441677, 23.156952>,  <32.293789, 37.454823, 23.086554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064724, 37.441677, 23.156952>,  <31.682947, 37.419769, 23.274281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064724, 37.441677, 23.156952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294008, -0.004711, 0.955791,
		0.050970, -0.998488, -0.020601,
		0.954443, 0.054774, -0.293323,
		32.351055, 37.458111, 23.068954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386440, 36.794899, 23.475883>,  <31.682947, 37.419769, 23.274281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386440, 36.794899, 23.475883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050505, 36.790081, 23.692963>,  <30.848944, 36.787189, 23.823210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050505, 36.790081, 23.692963>,  <31.386440, 36.794899, 23.475883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050505, 36.790081, 23.692963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536476, 0.170973, -0.826415,
		-0.082835, -0.985202, -0.150051,
		-0.839840, -0.012042, 0.542700,
		30.798553, 36.786469, 23.855772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003666, 36.421379, 23.124847>,  <31.386440, 36.794899, 23.475883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003666, 36.421379, 23.124847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.733961, 36.605030, 23.356216>,  <30.572138, 36.715221, 23.495037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.733961, 36.605030, 23.356216>,  <31.003666, 36.421379, 23.124847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733961, 36.605030, 23.356216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552606, 0.205904, -0.807608,
		-0.489895, -0.864179, 0.114884,
		-0.674262, 0.459128, 0.578422,
		30.531683, 36.742767, 23.529743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250141, 36.032619, 23.156485>,  <31.003666, 36.421379, 23.124847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250141, 36.032619, 23.156485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.196592, 36.417419, 23.251677>,  <30.164463, 36.648300, 23.308792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.196592, 36.417419, 23.251677>,  <30.250141, 36.032619, 23.156485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196592, 36.417419, 23.251677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644904, 0.097765, -0.757985,
		-0.752448, -0.254946, 0.607310,
		-0.133871, 0.962000, 0.237978,
		30.156431, 36.706020, 23.323071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643724, 36.261467, 22.791080>,  <30.250141, 36.032619, 23.156485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643724, 36.261467, 22.791080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.764542, 36.624161, 22.908791>,  <29.837032, 36.841778, 22.979418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.764542, 36.624161, 22.908791>,  <29.643724, 36.261467, 22.791080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764542, 36.624161, 22.908791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511586, 0.414654, -0.752556,
		-0.804394, 0.076756, 0.589118,
		0.302043, 0.906736, 0.294278,
		29.855154, 36.896183, 22.997074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033171, 36.694191, 22.902836>,  <29.643724, 36.261467, 22.791080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033171, 36.694191, 22.902836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.345385, 36.926792, 22.811081>,  <29.532713, 37.066353, 22.756027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.345385, 36.926792, 22.811081>,  <29.033171, 36.694191, 22.902836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345385, 36.926792, 22.811081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479571, 0.321653, -0.816426,
		-0.400974, 0.747254, 0.529935,
		0.780533, 0.581507, -0.229387,
		29.579544, 37.101246, 22.742266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763388, 37.420483, 22.728926>,  <29.033171, 36.694191, 22.902836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763388, 37.420483, 22.728926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.128588, 37.373478, 22.572657>,  <29.347708, 37.345276, 22.478895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.128588, 37.373478, 22.572657>,  <28.763388, 37.420483, 22.728926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128588, 37.373478, 22.572657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326668, 0.363063, -0.872625,
		0.244378, 0.924325, 0.293090,
		0.912999, -0.117507, -0.390672,
		29.402487, 37.338226, 22.455456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829708, 38.020630, 22.340389>,  <28.763388, 37.420483, 22.728926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829708, 38.020630, 22.340389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.106031, 37.760883, 22.213196>,  <29.271826, 37.605038, 22.136879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.106031, 37.760883, 22.213196>,  <28.829708, 38.020630, 22.340389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106031, 37.760883, 22.213196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194341, 0.256850, -0.946710,
		0.696433, 0.715791, 0.051236,
		0.690806, -0.649363, -0.317986,
		29.313272, 37.566074, 22.117800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929745, 38.860836, 22.274649>,  <28.829708, 38.020630, 22.340389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929745, 38.860836, 22.274649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.539816, 38.945080, 22.245342>,  <28.305859, 38.995625, 22.227758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.539816, 38.945080, 22.245342>,  <28.929745, 38.860836, 22.274649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539816, 38.945080, 22.245342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183247, -0.569387, 0.801386,
		0.127060, 0.794634, 0.593644,
		-0.974821, 0.210607, -0.073268,
		28.247370, 39.008263, 22.223362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789515, 38.937569, 22.910257>,  <28.929745, 38.860836, 22.274649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789515, 38.937569, 22.910257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.453697, 38.858257, 22.707930>,  <28.252207, 38.810673, 22.586533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.453697, 38.858257, 22.707930>,  <28.789515, 38.937569, 22.910257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453697, 38.858257, 22.707930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284996, -0.631918, 0.720734,
		-0.462540, 0.749244, 0.474015,
		-0.839544, -0.198275, -0.505819,
		28.201834, 38.798775, 22.556185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244614, 39.099968, 23.360220>,  <28.789515, 38.937569, 22.910257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244614, 39.099968, 23.360220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.050415, 38.843330, 23.122681>,  <27.933895, 38.689350, 22.980158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.050415, 38.843330, 23.122681>,  <28.244614, 39.099968, 23.360220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050415, 38.843330, 23.122681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170056, -0.596991, 0.784017,
		-0.857539, 0.481625, 0.180731,
		-0.485498, -0.641591, -0.593846,
		27.904766, 38.650852, 22.944527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881399, 38.844215, 23.802835>,  <28.244614, 39.099968, 23.360220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881399, 38.844215, 23.802835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.795656, 38.594456, 23.502388>,  <27.744211, 38.444599, 23.322121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.795656, 38.594456, 23.502388>,  <27.881399, 38.844215, 23.802835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795656, 38.594456, 23.502388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233593, -0.713906, 0.660131,
		-0.948412, 0.316959, 0.007176,
		-0.214357, -0.624400, -0.751116,
		27.731348, 38.407135, 23.277054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135111, 38.755230, 23.795031>,  <27.881399, 38.844215, 23.802835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135111, 38.755230, 23.795031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.306665, 38.436745, 23.624338>,  <27.409597, 38.245651, 23.521923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.306665, 38.436745, 23.624338>,  <27.135111, 38.755230, 23.795031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306665, 38.436745, 23.624338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380382, -0.587636, 0.714139,
		-0.819370, -0.143963, -0.554894,
		0.428885, -0.796216, -0.426730,
		27.435331, 38.197880, 23.496319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670630, 38.290951, 23.822163>,  <27.135111, 38.755230, 23.795031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670630, 38.290951, 23.822163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.986223, 38.057335, 23.745850>,  <27.175579, 37.917164, 23.700062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.986223, 38.057335, 23.745850>,  <26.670630, 38.290951, 23.822163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986223, 38.057335, 23.745850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123185, -0.454569, 0.882152,
		-0.601939, -0.672502, -0.430593,
		0.788983, -0.584045, -0.190780,
		27.222918, 37.882122, 23.688616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453997, 37.623295, 24.036758>,  <26.670630, 38.290951, 23.822163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453997, 37.623295, 24.036758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.853310, 37.602787, 24.025410>,  <27.092897, 37.590481, 24.018600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.853310, 37.602787, 24.025410>,  <26.453997, 37.623295, 24.036758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853310, 37.602787, 24.025410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003943, -0.424312, 0.905507,
		-0.058462, -0.904063, -0.423381,
		0.998282, -0.051269, -0.028371,
		27.152794, 37.587406, 24.016899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.681477, 42.303001, 18.826153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949465, 42.024033, 18.927931>,  <31.110258, 41.856651, 18.988997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949465, 42.024033, 18.927931>,  <30.681477, 42.303001, 18.826153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949465, 42.024033, 18.927931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065914, 0.285503, 0.956109,
		-0.739455, -0.657337, 0.145309,
		0.669972, -0.697421, 0.254444,
		31.150455, 41.814808, 19.004265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358725, 41.944225, 19.307322>,  <30.681477, 42.303001, 18.826153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358725, 41.944225, 19.307322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746796, 41.866413, 19.365166>,  <30.979639, 41.819725, 19.399872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746796, 41.866413, 19.365166>,  <30.358725, 41.944225, 19.307322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746796, 41.866413, 19.365166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108256, 0.186061, 0.976556,
		-0.216876, -0.963089, 0.159453,
		0.970178, -0.194530, 0.144612,
		31.037849, 41.808056, 19.408548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422979, 41.421463, 19.838140>,  <30.358725, 41.944225, 19.307322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422979, 41.421463, 19.838140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.773628, 41.613640, 19.827467>,  <30.984016, 41.728947, 19.821062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.773628, 41.613640, 19.827467>,  <30.422979, 41.421463, 19.838140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773628, 41.613640, 19.827467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022930, 0.097101, 0.995010,
		0.480636, -0.871635, 0.096138,
		0.876620, 0.480442, -0.026683,
		31.036615, 41.757771, 19.819462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814367, 41.119026, 20.341455>,  <30.422979, 41.421463, 19.838140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814367, 41.119026, 20.341455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996443, 41.469692, 20.279152>,  <31.105688, 41.680092, 20.241770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996443, 41.469692, 20.279152>,  <30.814367, 41.119026, 20.341455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996443, 41.469692, 20.279152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013510, 0.168113, 0.985675,
		0.890293, -0.450772, 0.064679,
		0.455188, 0.876666, -0.155759,
		31.132999, 41.732693, 20.232424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317684, 41.187195, 20.860165>,  <30.814367, 41.119026, 20.341455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317684, 41.187195, 20.860165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.297041, 41.564297, 20.728382>,  <31.284655, 41.790558, 20.649313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.297041, 41.564297, 20.728382>,  <31.317684, 41.187195, 20.860165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297041, 41.564297, 20.728382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292981, 0.329673, 0.897484,
		0.954724, -0.050206, -0.293224,
		-0.051609, 0.942759, -0.329456,
		31.281559, 41.847126, 20.629545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887390, 41.528370, 21.169519>,  <31.317684, 41.187195, 20.860165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887390, 41.528370, 21.169519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.659256, 41.836807, 21.056293>,  <31.522375, 42.021870, 20.988358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.659256, 41.836807, 21.056293>,  <31.887390, 41.528370, 21.169519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659256, 41.836807, 21.056293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016691, 0.333659, 0.942546,
		0.821243, 0.542292, -0.177427,
		-0.570335, 0.771098, -0.283066,
		31.488155, 42.068138, 20.971373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316441, 42.117001, 21.417919>,  <31.887390, 41.528370, 21.169519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316441, 42.117001, 21.417919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.935385, 42.227386, 21.366825>,  <31.706751, 42.293617, 21.336168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.935385, 42.227386, 21.366825>,  <32.316441, 42.117001, 21.417919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935385, 42.227386, 21.366825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021181, 0.358820, 0.933167,
		0.303353, 0.891680, -0.335982,
		-0.952643, 0.275963, -0.127736,
		31.649591, 42.310177, 21.328505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184883, 42.832424, 21.681112>,  <32.316441, 42.117001, 21.417919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184883, 42.832424, 21.681112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.845900, 42.620419, 21.693064>,  <31.642508, 42.493217, 21.700235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.845900, 42.620419, 21.693064>,  <32.184883, 42.832424, 21.681112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845900, 42.620419, 21.693064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146834, 0.288125, 0.946268,
		-0.510143, 0.797541, -0.321999,
		-0.847463, -0.530012, 0.029879,
		31.591661, 42.461414, 21.702028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697330, 43.282959, 21.953842>,  <32.184883, 42.832424, 21.681112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697330, 43.282959, 21.953842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544130, 42.914730, 21.984432>,  <31.452209, 42.693790, 22.002787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544130, 42.914730, 21.984432>,  <31.697330, 43.282959, 21.953842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544130, 42.914730, 21.984432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177110, 0.154435, 0.971999,
		-0.906610, 0.358733, -0.222192,
		-0.383002, -0.920576, 0.076477,
		31.429230, 42.638557, 22.007376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110594, 43.352177, 22.416090>,  <31.697330, 43.282959, 21.953842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110594, 43.352177, 22.416090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.136671, 42.955738, 22.462538>,  <31.152317, 42.717876, 22.490406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.136671, 42.955738, 22.462538>,  <31.110594, 43.352177, 22.416090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136671, 42.955738, 22.462538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113323, 0.108260, 0.987642,
		-0.991417, -0.077548, -0.105256,
		0.065194, -0.991093, 0.116119,
		31.156229, 42.658409, 22.497374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443054, 43.078648, 22.739311>,  <31.110594, 43.352177, 22.416090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443054, 43.078648, 22.739311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747583, 42.830627, 22.815125>,  <30.930300, 42.681816, 22.860613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747583, 42.830627, 22.815125>,  <30.443054, 43.078648, 22.739311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747583, 42.830627, 22.815125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145418, 0.121583, 0.981871,
		-0.631856, -0.775082, 0.002397,
		0.761322, -0.620053, 0.189534,
		30.975981, 42.644611, 22.871984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171349, 42.666431, 23.231527>,  <30.443054, 43.078648, 22.739311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171349, 42.666431, 23.231527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566532, 42.615234, 23.266298>,  <30.803642, 42.584515, 23.287161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566532, 42.615234, 23.266298>,  <30.171349, 42.666431, 23.231527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566532, 42.615234, 23.266298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070502, 0.127688, 0.989305,
		-0.137722, -0.983521, 0.117126,
		0.987959, -0.127992, 0.086926,
		30.862919, 42.576836, 23.292376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835842, 42.018139, 23.293089>,  <30.171349, 42.666431, 23.231527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835842, 42.018139, 23.293089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450657, 42.049725, 23.396215>,  <29.219545, 42.068676, 23.458092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450657, 42.049725, 23.396215>,  <29.835842, 42.018139, 23.293089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450657, 42.049725, 23.396215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249707, 0.099605, -0.963185,
		-0.101735, -0.991889, -0.076198,
		-0.962962, 0.078962, 0.257814,
		29.161768, 42.073414, 23.473560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398979, 41.647369, 22.847351>,  <29.835842, 42.018139, 23.293089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398979, 41.647369, 22.847351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166012, 41.944408, 22.979618>,  <29.026232, 42.122631, 23.058979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166012, 41.944408, 22.979618>,  <29.398979, 41.647369, 22.847351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166012, 41.944408, 22.979618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186646, 0.273750, -0.943517,
		-0.791172, -0.611239, -0.020835,
		-0.582418, 0.742595, 0.330668,
		28.991287, 42.167187, 23.078819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855810, 41.636196, 22.384844>,  <29.398979, 41.647369, 22.847351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855810, 41.636196, 22.384844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860001, 41.997917, 22.555552>,  <28.862514, 42.214951, 22.657976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860001, 41.997917, 22.555552>,  <28.855810, 41.636196, 22.384844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860001, 41.997917, 22.555552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138868, 0.423974, -0.894965,
		-0.990256, -0.049890, 0.130019,
		0.010475, 0.904299, 0.426771,
		28.863142, 42.269207, 22.683582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303865, 41.994469, 22.034164>,  <28.855810, 41.636196, 22.384844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303865, 41.994469, 22.034164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486694, 42.282673, 22.242758>,  <28.596392, 42.455597, 22.367914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486694, 42.282673, 22.242758>,  <28.303865, 41.994469, 22.034164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486694, 42.282673, 22.242758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302566, 0.677302, -0.670609,
		-0.836384, 0.148734, 0.527579,
		0.457073, 0.720514, 0.521483,
		28.623816, 42.498829, 22.399202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799627, 42.616947, 22.203608>,  <28.303865, 41.994469, 22.034164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799627, 42.616947, 22.203608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188534, 42.706242, 22.175718>,  <28.421879, 42.759819, 22.158985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188534, 42.706242, 22.175718>,  <27.799627, 42.616947, 22.203608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188534, 42.706242, 22.175718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175778, 0.500883, -0.847478,
		-0.154262, 0.836232, 0.526232,
		0.972268, 0.223233, -0.069724,
		28.480215, 42.773212, 22.154800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849752, 43.301117, 22.108643>,  <27.799627, 42.616947, 22.203608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849752, 43.301117, 22.108643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.208004, 43.171387, 21.986879>,  <28.422955, 43.093548, 21.913820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.208004, 43.171387, 21.986879>,  <27.849752, 43.301117, 22.108643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208004, 43.171387, 21.986879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156400, 0.411051, -0.898096,
		0.416400, 0.851970, 0.317425,
		0.895628, -0.324322, -0.304410,
		28.476692, 43.074089, 21.895557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119045, 43.809429, 21.776541>,  <27.849752, 43.301117, 22.108643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119045, 43.809429, 21.776541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351908, 43.512657, 21.643494>,  <28.491625, 43.334595, 21.563665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351908, 43.512657, 21.643494>,  <28.119045, 43.809429, 21.776541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351908, 43.512657, 21.643494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144197, 0.308392, -0.940267,
		0.800189, 0.595343, 0.072548,
		0.582155, -0.741930, -0.332619,
		28.526554, 43.290077, 21.543709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527391, 44.151222, 21.260075>,  <28.119045, 43.809429, 21.776541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527391, 44.151222, 21.260075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533617, 43.755733, 21.200504>,  <28.537354, 43.518440, 21.164762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533617, 43.755733, 21.200504>,  <28.527391, 44.151222, 21.260075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533617, 43.755733, 21.200504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252187, 0.140245, -0.957462,
		0.967553, 0.052460, -0.247161,
		0.015565, -0.988726, -0.148924,
		28.538286, 43.459114, 21.155827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966988, 44.089359, 20.722555>,  <28.527391, 44.151222, 21.260075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966988, 44.089359, 20.722555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750889, 43.753040, 20.736395>,  <28.621229, 43.551250, 20.744699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750889, 43.753040, 20.736395>,  <28.966988, 44.089359, 20.722555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750889, 43.753040, 20.736395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256547, 0.125405, -0.958362,
		0.801447, -0.526628, -0.283453,
		-0.540247, -0.840795, 0.034599,
		28.588816, 43.500801, 20.746775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146290, 43.600414, 20.091082>,  <28.966988, 44.089359, 20.722555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146290, 43.600414, 20.091082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783552, 43.491352, 20.219641>,  <28.565910, 43.425915, 20.296776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783552, 43.491352, 20.219641>,  <29.146290, 43.600414, 20.091082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783552, 43.491352, 20.219641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217521, -0.350390, -0.910995,
		0.360999, -0.896040, 0.258441,
		-0.906843, -0.272652, 0.321398,
		28.511499, 43.409557, 20.316061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035202, 42.874149, 19.899971>,  <29.146290, 43.600414, 20.091082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035202, 42.874149, 19.899971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655989, 42.995472, 19.938404>,  <28.428461, 43.068268, 19.961464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655989, 42.995472, 19.938404>,  <29.035202, 42.874149, 19.899971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655989, 42.995472, 19.938404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232596, -0.454652, -0.859762,
		-0.217088, -0.837434, 0.501575,
		-0.948036, 0.303308, 0.096085,
		28.371578, 43.086464, 19.967230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649780, 42.313953, 19.713015>,  <29.035202, 42.874149, 19.899971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649780, 42.313953, 19.713015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410814, 42.630508, 19.661158>,  <28.267435, 42.820442, 19.630043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410814, 42.630508, 19.661158>,  <28.649780, 42.313953, 19.713015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410814, 42.630508, 19.661158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256498, -0.341739, -0.904115,
		-0.759806, -0.506878, 0.407148,
		-0.597414, 0.791384, -0.129642,
		28.231590, 42.867924, 19.622265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965590, 42.016689, 19.612181>,  <28.649780, 42.313953, 19.713015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965590, 42.016689, 19.612181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986471, 42.378101, 19.442043>,  <27.999001, 42.594948, 19.339962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986471, 42.378101, 19.442043>,  <27.965590, 42.016689, 19.612181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986471, 42.378101, 19.442043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425596, -0.365178, -0.827957,
		-0.903406, 0.224247, 0.365473,
		0.052204, 0.903525, -0.425342,
		28.002132, 42.649158, 19.314440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431074, 41.525532, 19.776268>,  <27.965590, 42.016689, 19.612181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431074, 41.525532, 19.776268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281406, 41.180424, 19.640249>,  <28.191607, 40.973358, 19.558638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281406, 41.180424, 19.640249>,  <28.431074, 41.525532, 19.776268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281406, 41.180424, 19.640249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241842, -0.263214, 0.933933,
		-0.895271, 0.431686, -0.110166,
		-0.374169, -0.862766, -0.340047,
		28.169155, 40.921593, 19.538235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835255, 41.416935, 20.234871>,  <28.431074, 41.525532, 19.776268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835255, 41.416935, 20.234871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933380, 41.058323, 20.087324>,  <27.992254, 40.843155, 19.998796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933380, 41.058323, 20.087324>,  <27.835255, 41.416935, 20.234871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933380, 41.058323, 20.087324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234457, -0.424063, 0.874757,
		-0.940665, -0.128105, -0.314225,
		0.245313, -0.896526, -0.368866,
		28.006973, 40.789364, 19.976664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348251, 40.919094, 20.540279>,  <27.835255, 41.416935, 20.234871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348251, 40.919094, 20.540279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645180, 40.702293, 20.382700>,  <27.823336, 40.572212, 20.288153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645180, 40.702293, 20.382700>,  <27.348251, 40.919094, 20.540279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645180, 40.702293, 20.382700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047386, -0.628938, 0.776010,
		-0.668372, -0.557377, -0.492555,
		0.742317, -0.542003, -0.393953,
		27.867876, 40.539692, 20.264515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095594, 40.311291, 20.324253>,  <27.348251, 40.919094, 20.540279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095594, 40.311291, 20.324253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483742, 40.252132, 20.400688>,  <27.716631, 40.216637, 20.446548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483742, 40.252132, 20.400688>,  <27.095594, 40.311291, 20.324253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483742, 40.252132, 20.400688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240653, -0.662666, 0.709196,
		0.021741, -0.734167, -0.678621,
		0.970368, -0.147893, 0.191087,
		27.774853, 40.207764, 20.458014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117113, 39.603657, 20.732861>,  <27.095594, 40.311291, 20.324253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117113, 39.603657, 20.732861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493523, 39.730747, 20.779369>,  <27.719368, 39.807003, 20.807276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493523, 39.730747, 20.779369>,  <27.117113, 39.603657, 20.732861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493523, 39.730747, 20.779369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091851, -0.570663, 0.816031,
		0.325631, -0.757226, -0.566192,
		0.941025, 0.317730, 0.116274,
		27.775829, 39.826065, 20.814251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476887, 39.030422, 20.907387>,  <27.117113, 39.603657, 20.732861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476887, 39.030422, 20.907387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.713455, 39.321518, 21.046307>,  <27.855396, 39.496174, 21.129660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.713455, 39.321518, 21.046307>,  <27.476887, 39.030422, 20.907387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713455, 39.321518, 21.046307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190302, -0.544503, 0.816885,
		0.783585, -0.417032, -0.460521,
		0.591422, 0.727737, 0.347302,
		27.890882, 39.539841, 21.150497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155895, 38.693123, 21.091589>,  <27.476887, 39.030422, 20.907387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155895, 38.693123, 21.091589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113195, 39.029678, 21.303503>,  <28.087576, 39.231609, 21.430653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113195, 39.029678, 21.303503>,  <28.155895, 38.693123, 21.091589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113195, 39.029678, 21.303503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107151, -0.519994, 0.847423,
		0.988496, 0.147228, -0.034648,
		-0.106747, 0.841386, 0.529787,
		28.081171, 39.282093, 21.462439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569859, 38.622921, 21.571520>,  <28.155895, 38.693123, 21.091589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569859, 38.622921, 21.571520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364927, 38.928238, 21.728949>,  <28.241968, 39.111427, 21.823406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364927, 38.928238, 21.728949>,  <28.569859, 38.622921, 21.571520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364927, 38.928238, 21.728949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110520, -0.395877, 0.911629,
		0.851649, 0.510551, 0.118460,
		-0.512328, 0.763295, 0.393574,
		28.211229, 39.157227, 21.847021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267330, 38.395107, 21.732784>,  <28.569859, 38.622921, 21.571520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267330, 38.395107, 21.732784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365471, 38.013935, 21.661543>,  <29.424356, 37.785233, 21.618799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.365471, 38.013935, 21.661543>,  <29.267330, 38.395107, 21.732784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365471, 38.013935, 21.661543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317405, 0.094626, -0.943557,
		0.916000, 0.288035, -0.279249,
		0.245354, -0.952933, -0.178101,
		29.439077, 37.728054, 21.608112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597237, 38.507950, 21.241905>,  <29.267330, 38.395107, 21.732784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597237, 38.507950, 21.241905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471315, 38.128330, 21.236074>,  <29.395763, 37.900558, 21.232576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471315, 38.128330, 21.236074>,  <29.597237, 38.507950, 21.241905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471315, 38.128330, 21.236074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209040, 0.084305, -0.974266,
		0.925852, -0.303654, -0.224928,
		-0.314803, -0.949045, -0.014578,
		29.376875, 37.843616, 21.231701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838173, 38.165771, 20.626463>,  <29.597237, 38.507950, 21.241905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838173, 38.165771, 20.626463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569456, 37.878201, 20.697845>,  <29.408226, 37.705658, 20.740675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569456, 37.878201, 20.697845>,  <29.838173, 38.165771, 20.626463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569456, 37.878201, 20.697845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215579, -0.040733, -0.975636,
		0.708677, -0.693895, -0.127620,
		-0.671791, -0.718923, 0.178456,
		29.367918, 37.662525, 20.751383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028303, 37.656780, 20.139139>,  <29.838173, 38.165771, 20.626463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028303, 37.656780, 20.139139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.652836, 37.578556, 20.252741>,  <29.427555, 37.531620, 20.320902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.652836, 37.578556, 20.252741>,  <30.028303, 37.656780, 20.139139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652836, 37.578556, 20.252741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263481, -0.124530, -0.956593,
		0.222439, -0.972753, 0.065366,
		-0.938669, -0.195561, 0.284002,
		29.371235, 37.519890, 20.337942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794340, 37.138279, 19.708624>,  <30.028303, 37.656780, 20.139139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794340, 37.138279, 19.708624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447292, 37.286964, 19.840725>,  <29.239063, 37.376175, 19.919985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447292, 37.286964, 19.840725>,  <29.794340, 37.138279, 19.708624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447292, 37.286964, 19.840725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415571, -0.177401, -0.892093,
		-0.273022, -0.911237, 0.308392,
		-0.867617, 0.371720, 0.330250,
		29.187008, 37.398479, 19.939800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342995, 36.672508, 19.429661>,  <29.794340, 37.138279, 19.708624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342995, 36.672508, 19.429661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188843, 37.027622, 19.530315>,  <29.096352, 37.240692, 19.590708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188843, 37.027622, 19.530315>,  <29.342995, 36.672508, 19.429661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188843, 37.027622, 19.530315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355236, 0.108948, -0.928406,
		-0.851639, -0.447181, 0.273387,
		-0.385380, 0.887784, 0.251639,
		29.073229, 37.293957, 19.605806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795897, 36.718380, 19.024481>,  <29.342995, 36.672508, 19.429661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795897, 36.718380, 19.024481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.840626, 37.102329, 19.127350>,  <28.867462, 37.332699, 19.189072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.840626, 37.102329, 19.127350>,  <28.795897, 36.718380, 19.024481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840626, 37.102329, 19.127350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178142, 0.273965, -0.945097,
		-0.977630, 0.059870, 0.201629,
		0.111822, 0.959875, 0.257171,
		28.874172, 37.390293, 19.204500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248953, 37.080719, 18.644457>,  <28.795897, 36.718380, 19.024481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248953, 37.080719, 18.644457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.492191, 37.375755, 18.761883>,  <28.638134, 37.552776, 18.832338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.492191, 37.375755, 18.761883>,  <28.248953, 37.080719, 18.644457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492191, 37.375755, 18.761883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003564, 0.372324, -0.928096,
		-0.793854, 0.563326, 0.229038,
		0.608097, 0.737590, 0.293563,
		28.674620, 37.597031, 18.849951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849934, 37.621067, 18.481211>,  <28.248953, 37.080719, 18.644457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849934, 37.621067, 18.481211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233126, 37.730694, 18.515053>,  <28.463041, 37.796471, 18.535358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.233126, 37.730694, 18.515053>,  <27.849934, 37.621067, 18.481211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233126, 37.730694, 18.515053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052929, 0.458813, -0.886955,
		-0.281906, 0.845208, 0.454040,
		0.957981, 0.274070, 0.084606,
		28.520519, 37.812916, 18.540434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.989033, 37.519085, 33.798313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278416, 37.385368, 33.556702>,  <33.452045, 37.305138, 33.411736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278416, 37.385368, 33.556702>,  <32.989033, 37.519085, 33.798313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278416, 37.385368, 33.556702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688902, -0.292621, -0.663165,
		0.044937, 0.895892, -0.441993,
		0.723460, -0.334290, -0.604032,
		33.495453, 37.285080, 33.375492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714806, 37.553200, 33.202072>,  <32.989033, 37.519085, 33.798313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714806, 37.553200, 33.202072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059391, 37.379410, 33.096912>,  <33.266144, 37.275135, 33.033817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059391, 37.379410, 33.096912>,  <32.714806, 37.553200, 33.202072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059391, 37.379410, 33.096912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339398, -0.107507, -0.934479,
		0.377741, 0.894247, -0.240072,
		0.861465, -0.434470, -0.262896,
		33.317829, 37.249069, 33.018044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942047, 37.869221, 32.430008>,  <32.714806, 37.553200, 33.202072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942047, 37.869221, 32.430008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067688, 37.503975, 32.533985>,  <33.143074, 37.284828, 32.596371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067688, 37.503975, 32.533985>,  <32.942047, 37.869221, 32.430008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067688, 37.503975, 32.533985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239721, -0.341205, -0.908907,
		0.918626, 0.223175, -0.326065,
		0.314101, -0.913111, 0.259940,
		33.161919, 37.230042, 32.611969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374336, 37.758812, 31.899073>,  <32.942047, 37.869221, 32.430008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374336, 37.758812, 31.899073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267242, 37.410637, 32.064320>,  <33.202988, 37.201733, 32.163467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267242, 37.410637, 32.064320>,  <33.374336, 37.758812, 31.899073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267242, 37.410637, 32.064320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362024, -0.306468, -0.880350,
		0.892893, -0.385257, -0.233066,
		-0.267734, -0.870434, 0.413116,
		33.186924, 37.149506, 32.188255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649551, 37.158039, 31.458551>,  <33.374336, 37.758812, 31.899073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649551, 37.158039, 31.458551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368786, 36.979389, 31.680489>,  <33.200329, 36.872200, 31.813650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368786, 36.979389, 31.680489>,  <33.649551, 37.158039, 31.458551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368786, 36.979389, 31.680489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316041, -0.502808, -0.804551,
		0.638310, -0.740075, 0.211775,
		-0.701910, -0.446624, 0.554842,
		33.158215, 36.845402, 31.846941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591827, 36.529240, 31.093662>,  <33.649551, 37.158039, 31.458551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591827, 36.529240, 31.093662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246490, 36.517231, 31.295149>,  <33.039288, 36.510025, 31.416040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246490, 36.517231, 31.295149>,  <33.591827, 36.529240, 31.093662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246490, 36.517231, 31.295149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406831, -0.549146, -0.730018,
		0.298533, -0.835187, 0.461889,
		-0.863346, -0.030024, 0.503718,
		32.987488, 36.508224, 31.446264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428265, 35.921913, 30.794121>,  <33.591827, 36.529240, 31.093662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428265, 35.921913, 30.794121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106651, 36.084023, 30.968145>,  <32.913681, 36.181290, 31.072559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106651, 36.084023, 30.968145>,  <33.428265, 35.921913, 30.794121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106651, 36.084023, 30.968145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592487, -0.484759, -0.643403,
		-0.049855, -0.775087, 0.629884,
		-0.804036, 0.405275, 0.435061,
		32.865440, 36.205605, 31.098663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931126, 35.382416, 30.822613>,  <33.428265, 35.921913, 30.794121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931126, 35.382416, 30.822613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715805, 35.718826, 30.844181>,  <32.586613, 35.920673, 30.857122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715805, 35.718826, 30.844181>,  <32.931126, 35.382416, 30.822613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715805, 35.718826, 30.844181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681157, -0.396521, -0.615465,
		-0.496240, -0.368036, 0.786318,
		-0.538305, 0.841024, 0.053921,
		32.554314, 35.971134, 30.860357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243507, 35.204899, 30.846474>,  <32.931126, 35.382416, 30.822613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243507, 35.204899, 30.846474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243557, 35.580883, 30.709963>,  <32.243587, 35.806473, 30.628056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243557, 35.580883, 30.709963>,  <32.243507, 35.204899, 30.846474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243557, 35.580883, 30.709963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536407, -0.287961, -0.793313,
		-0.843959, 0.183163, 0.504167,
		0.000125, 0.939962, -0.341277,
		32.243595, 35.862873, 30.607580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544273, 35.250530, 30.487286>,  <32.243507, 35.204899, 30.846474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544273, 35.250530, 30.487286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788820, 35.531624, 30.341738>,  <31.935549, 35.700279, 30.254410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788820, 35.531624, 30.341738>,  <31.544273, 35.250530, 30.487286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788820, 35.531624, 30.341738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423512, -0.097867, -0.900588,
		-0.668481, 0.704693, 0.237782,
		0.611367, 0.702730, -0.363868,
		31.972231, 35.742443, 30.232576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097054, 35.531631, 30.023340>,  <31.544273, 35.250530, 30.487286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097054, 35.531631, 30.023340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440025, 35.700565, 29.905735>,  <31.645809, 35.801926, 29.835171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440025, 35.700565, 29.905735>,  <31.097054, 35.531631, 30.023340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440025, 35.700565, 29.905735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318561, -0.013087, -0.947812,
		-0.404142, 0.906345, 0.123318,
		0.857431, 0.422335, -0.294015,
		31.697254, 35.827267, 29.817530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969536, 36.104198, 29.644453>,  <31.097054, 35.531631, 30.023340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969536, 36.104198, 29.644453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344225, 36.013256, 29.537973>,  <31.569038, 35.958691, 29.474085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344225, 36.013256, 29.537973>,  <30.969536, 36.104198, 29.644453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344225, 36.013256, 29.537973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290254, -0.079272, -0.953660,
		0.195714, 0.970581, -0.140246,
		0.936722, -0.227352, -0.266200,
		31.625242, 35.945049, 29.458113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699543, 36.889542, 29.605776>,  <30.969536, 36.104198, 29.644453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699543, 36.889542, 29.605776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311848, 36.895260, 29.704063>,  <30.079231, 36.898689, 29.763035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311848, 36.895260, 29.704063>,  <30.699543, 36.889542, 29.605776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311848, 36.895260, 29.704063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244882, 0.156563, 0.956829,
		-0.024792, 0.987564, -0.155248,
		-0.969236, 0.014296, 0.245718,
		30.021076, 36.899548, 29.777779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584375, 37.502258, 29.967932>,  <30.699543, 36.889542, 29.605776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584375, 37.502258, 29.967932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273924, 37.270157, 30.066662>,  <30.087652, 37.130894, 30.125900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273924, 37.270157, 30.066662>,  <30.584375, 37.502258, 29.967932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273924, 37.270157, 30.066662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152557, 0.207016, 0.966370,
		-0.611840, 0.787684, -0.072149,
		-0.776130, -0.580257, 0.246827,
		30.041084, 37.096081, 30.140711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263157, 37.897804, 30.578371>,  <30.584375, 37.502258, 29.967932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263157, 37.897804, 30.578371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.119596, 37.524467, 30.581371>,  <30.033461, 37.300465, 30.583172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.119596, 37.524467, 30.581371>,  <30.263157, 37.897804, 30.578371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119596, 37.524467, 30.581371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105018, 0.048366, 0.993294,
		-0.927449, 0.355705, -0.115377,
		-0.358900, -0.933346, 0.007502,
		30.011927, 37.244465, 30.583622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609377, 37.891918, 30.985880>,  <30.263157, 37.897804, 30.578371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609377, 37.891918, 30.985880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.736883, 37.513577, 31.010380>,  <29.813387, 37.286572, 31.025080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.736883, 37.513577, 31.010380>,  <29.609377, 37.891918, 30.985880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736883, 37.513577, 31.010380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145449, 0.015041, 0.989251,
		-0.936607, -0.324248, -0.132779,
		0.318766, -0.945853, 0.061249,
		29.832514, 37.229820, 31.028755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113512, 37.587261, 31.458117>,  <29.609377, 37.891918, 30.985880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113512, 37.587261, 31.458117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.445284, 37.363895, 31.452135>,  <29.644346, 37.229877, 31.448545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.445284, 37.363895, 31.452135>,  <29.113512, 37.587261, 31.458117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445284, 37.363895, 31.452135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065923, -0.124432, 0.990036,
		-0.554710, -0.820178, -0.140019,
		0.829428, -0.558413, -0.014955,
		29.694113, 37.196373, 31.447649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030416, 37.146301, 32.032909>,  <29.113512, 37.587261, 31.458117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030416, 37.146301, 32.032909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.418194, 37.122025, 31.937832>,  <29.650860, 37.107456, 31.880785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.418194, 37.122025, 31.937832>,  <29.030416, 37.146301, 32.032909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418194, 37.122025, 31.937832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215950, -0.248582, 0.944231,
		-0.116396, -0.966707, -0.227879,
		0.969442, -0.060694, -0.237695,
		29.709026, 37.103817, 31.866524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285852, 36.376038, 32.235485>,  <29.030416, 37.146301, 32.032909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285852, 36.376038, 32.235485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.599304, 36.624218, 32.223022>,  <29.787374, 36.773125, 32.215546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.599304, 36.624218, 32.223022>,  <29.285852, 36.376038, 32.235485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599304, 36.624218, 32.223022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249643, -0.268588, 0.930343,
		0.568862, -0.736821, -0.365364,
		0.783628, 0.620448, -0.031153,
		29.834393, 36.810352, 32.213676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787025, 35.982605, 32.505199>,  <29.285852, 36.376038, 32.235485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787025, 35.982605, 32.505199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.968002, 36.338257, 32.532761>,  <30.076588, 36.551647, 32.549297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.968002, 36.338257, 32.532761>,  <29.787025, 35.982605, 32.505199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968002, 36.338257, 32.532761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439297, -0.289447, 0.850435,
		0.776090, -0.354501, -0.521549,
		0.452441, 0.889129, 0.068906,
		30.103735, 36.604996, 32.553432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576797, 35.902142, 32.742729>,  <29.787025, 35.982605, 32.505199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576797, 35.902142, 32.742729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.445898, 36.269833, 32.830296>,  <30.367359, 36.490448, 32.882835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.445898, 36.269833, 32.830296>,  <30.576797, 35.902142, 32.742729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445898, 36.269833, 32.830296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387687, -0.080667, 0.918255,
		0.861747, 0.385367, -0.329976,
		-0.327246, 0.919231, 0.218917,
		30.347725, 36.545601, 32.895969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059362, 36.197300, 33.086388>,  <30.576797, 35.902142, 32.742729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059362, 36.197300, 33.086388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762991, 36.444370, 33.191841>,  <30.585167, 36.592613, 33.255112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762991, 36.444370, 33.191841>,  <31.059362, 36.197300, 33.086388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762991, 36.444370, 33.191841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362947, 0.037993, 0.931035,
		0.565059, 0.785517, -0.252333,
		-0.740930, 0.617673, 0.263632,
		30.540712, 36.629673, 33.270931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420147, 36.627831, 33.523193>,  <31.059362, 36.197300, 33.086388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420147, 36.627831, 33.523193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.033381, 36.685490, 33.607380>,  <30.801321, 36.720085, 33.657890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.033381, 36.685490, 33.607380>,  <31.420147, 36.627831, 33.523193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033381, 36.685490, 33.607380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220660, 0.058641, 0.973586,
		0.127994, 0.987818, -0.088508,
		-0.966916, 0.144144, 0.210467,
		30.743305, 36.728733, 33.670521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420731, 37.199604, 34.011536>,  <31.420147, 36.627831, 33.523193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420731, 37.199604, 34.011536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.067503, 37.018181, 34.059658>,  <30.855566, 36.909325, 34.088531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.067503, 37.018181, 34.059658>,  <31.420731, 37.199604, 34.011536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067503, 37.018181, 34.059658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050635, 0.162786, 0.985361,
		-0.466506, 0.876232, -0.120785,
		-0.883068, -0.453561, 0.120308,
		30.802582, 36.882111, 34.095749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953821, 37.698135, 34.104877>,  <31.420731, 37.199604, 34.011536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953821, 37.698135, 34.104877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.837749, 37.349014, 34.261852>,  <30.768106, 37.139542, 34.356037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.837749, 37.349014, 34.261852>,  <30.953821, 37.698135, 34.104877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837749, 37.349014, 34.261852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338873, 0.289793, 0.895089,
		-0.894964, 0.392723, 0.211678,
		-0.290180, -0.872805, 0.392437,
		30.750696, 37.087173, 34.379585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474115, 37.934563, 34.638145>,  <30.953821, 37.698135, 34.104877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474115, 37.934563, 34.638145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.602766, 37.564144, 34.717136>,  <30.679956, 37.341892, 34.764530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.602766, 37.564144, 34.717136>,  <30.474115, 37.934563, 34.638145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602766, 37.564144, 34.717136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150812, 0.255992, 0.954842,
		-0.934780, -0.277320, 0.221993,
		0.321625, -0.926046, 0.197473,
		30.699253, 37.286331, 34.776379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173681, 38.301727, 34.118111>,  <30.474115, 37.934563, 34.638145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173681, 38.301727, 34.118111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.455816, 38.524750, 33.943008>,  <30.625097, 38.658562, 33.837948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.455816, 38.524750, 33.943008>,  <30.173681, 38.301727, 34.118111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455816, 38.524750, 33.943008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708807, 0.546444, -0.446086,
		-0.009511, 0.624923, 0.780628,
		0.705339, 0.557557, -0.437753,
		30.667418, 38.692017, 33.811684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888205, 38.984699, 34.255604>,  <30.173681, 38.301727, 34.118111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888205, 38.984699, 34.255604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111671, 38.956657, 33.925034>,  <30.245752, 38.939831, 33.726692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111671, 38.956657, 33.925034>,  <29.888205, 38.984699, 34.255604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111671, 38.956657, 33.925034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631112, 0.610575, -0.478432,
		0.538133, 0.788850, 0.296866,
		0.558669, -0.070104, -0.826422,
		30.279272, 38.935627, 33.677109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508699, 39.480511, 33.972103>,  <29.888205, 38.984699, 34.255604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508699, 39.480511, 33.972103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.843384, 39.375984, 33.779591>,  <30.044193, 39.313271, 33.664082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.843384, 39.375984, 33.779591>,  <29.508699, 39.480511, 33.972103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843384, 39.375984, 33.779591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327542, 0.465528, -0.822192,
		0.438900, 0.845577, 0.303920,
		0.836710, -0.261313, -0.481282,
		30.094397, 39.297588, 33.635204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769810, 40.049191, 33.653137>,  <29.508699, 39.480511, 33.972103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769810, 40.049191, 33.653137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932180, 39.751534, 33.440922>,  <30.029602, 39.572937, 33.313591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932180, 39.751534, 33.440922>,  <29.769810, 40.049191, 33.653137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932180, 39.751534, 33.440922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141775, 0.522218, -0.840945,
		0.902843, 0.416578, 0.106480,
		0.405925, -0.744145, -0.530541,
		30.053957, 39.528290, 33.281761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109730, 40.410774, 33.137165>,  <29.769810, 40.049191, 33.653137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109730, 40.410774, 33.137165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.135487, 40.050468, 32.965359>,  <30.150940, 39.834286, 32.862274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.135487, 40.050468, 32.965359>,  <30.109730, 40.410774, 33.137165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135487, 40.050468, 32.965359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122683, 0.419997, -0.899195,
		0.990355, 0.110595, -0.083463,
		0.064392, -0.900761, -0.429514,
		30.154804, 39.780239, 32.836506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576653, 40.503292, 32.459049>,  <30.109730, 40.410774, 33.137165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576653, 40.503292, 32.459049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.362213, 40.172619, 32.390694>,  <30.233549, 39.974216, 32.349682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.362213, 40.172619, 32.390694>,  <30.576653, 40.503292, 32.459049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362213, 40.172619, 32.390694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082571, 0.252814, -0.963985,
		0.840108, -0.502680, -0.203793,
		-0.536098, -0.826679, -0.170884,
		30.201384, 39.924614, 32.339428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850327, 40.162041, 31.760311>,  <30.576653, 40.503292, 32.459049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850327, 40.162041, 31.760311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.477377, 40.042992, 31.842381>,  <30.253607, 39.971561, 31.891623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.477377, 40.042992, 31.842381>,  <30.850327, 40.162041, 31.760311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477377, 40.042992, 31.842381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268276, 0.189278, -0.944564,
		0.242295, -0.935730, -0.256325,
		-0.932374, -0.297630, 0.205173,
		30.197664, 39.953705, 31.903933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629213, 39.837280, 31.085272>,  <30.850327, 40.162041, 31.760311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629213, 39.837280, 31.085272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289797, 39.884125, 31.291676>,  <30.086147, 39.912231, 31.415518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289797, 39.884125, 31.291676>,  <30.629213, 39.837280, 31.085272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289797, 39.884125, 31.291676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503093, 0.123581, -0.855351,
		-0.163945, -0.985399, -0.045942,
		-0.848540, 0.117118, 0.516008,
		30.035234, 39.919258, 31.446478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171112, 39.418961, 30.832848>,  <30.629213, 39.837280, 31.085272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171112, 39.418961, 30.832848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.941589, 39.694016, 31.010796>,  <29.803877, 39.859047, 31.117563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.941589, 39.694016, 31.010796>,  <30.171112, 39.418961, 30.832848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941589, 39.694016, 31.010796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536726, 0.094557, -0.838441,
		-0.618606, -0.719874, 0.314814,
		-0.573804, 0.687634, 0.444869,
		29.769447, 39.900307, 31.144257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430063, 39.283600, 30.756113>,  <30.171112, 39.418961, 30.832848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430063, 39.283600, 30.756113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455826, 39.681530, 30.787525>,  <29.471283, 39.920288, 30.806372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455826, 39.681530, 30.787525>,  <29.430063, 39.283600, 30.756113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455826, 39.681530, 30.787525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609982, 0.101527, -0.785884,
		-0.789794, 0.002715, 0.613367,
		0.064407, 0.994829, 0.078529,
		29.475147, 39.979980, 30.811085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832058, 39.404999, 30.492773>,  <29.430063, 39.283600, 30.756113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832058, 39.404999, 30.492773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041889, 39.745541, 30.493933>,  <29.167788, 39.949867, 30.494629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041889, 39.745541, 30.493933>,  <28.832058, 39.404999, 30.492773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041889, 39.745541, 30.493933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371627, 0.232044, -0.898916,
		-0.765972, 0.470473, 0.438112,
		0.524577, 0.851358, 0.002898,
		29.199263, 40.000950, 30.494802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389948, 40.043095, 30.327511>,  <28.832058, 39.404999, 30.492773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389948, 40.043095, 30.327511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.767660, 40.145889, 30.245256>,  <28.994287, 40.207565, 30.195904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.767660, 40.145889, 30.245256>,  <28.389948, 40.043095, 30.327511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767660, 40.145889, 30.245256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290787, 0.358700, -0.887005,
		-0.154190, 0.897380, 0.413443,
		0.944282, 0.256991, -0.205638,
		29.050945, 40.222988, 30.183565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327213, 40.522942, 29.908770>,  <28.389948, 40.043095, 30.327511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327213, 40.522942, 29.908770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.719936, 40.492954, 29.838993>,  <28.955570, 40.474960, 29.797127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.719936, 40.492954, 29.838993>,  <28.327213, 40.522942, 29.908770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719936, 40.492954, 29.838993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093963, 0.606504, -0.789508,
		0.164991, 0.791537, 0.588427,
		0.981809, -0.074971, -0.174443,
		29.014479, 40.470463, 29.786659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605875, 41.195438, 29.627325>,  <28.327213, 40.522942, 29.908770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605875, 41.195438, 29.627325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.884394, 40.924622, 29.532003>,  <29.051506, 40.762131, 29.474812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.884394, 40.924622, 29.532003>,  <28.605875, 41.195438, 29.627325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884394, 40.924622, 29.532003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094473, 0.415573, -0.904640,
		0.711508, 0.607386, 0.353325,
		0.696298, -0.677038, -0.238302,
		29.093283, 40.721512, 29.460512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087120, 41.674877, 29.334267>,  <28.605875, 41.195438, 29.627325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087120, 41.674877, 29.334267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.177891, 41.303627, 29.216225>,  <29.232353, 41.080875, 29.145399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.177891, 41.303627, 29.216225>,  <29.087120, 41.674877, 29.334267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177891, 41.303627, 29.216225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216246, 0.343463, -0.913932,
		0.949601, 0.143583, 0.278645,
		0.226929, -0.928126, -0.295104,
		29.245970, 41.025188, 29.127693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743607, 41.671631, 28.849195>,  <29.087120, 41.674877, 29.334267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743607, 41.671631, 28.849195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.527832, 41.348568, 28.753952>,  <29.398367, 41.154732, 28.696806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.527832, 41.348568, 28.753952>,  <29.743607, 41.671631, 28.849195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527832, 41.348568, 28.753952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174873, 0.169160, -0.969951,
		0.823668, -0.564865, 0.049987,
		-0.539435, -0.807659, -0.238111,
		29.366001, 41.106270, 28.682518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180874, 41.287548, 28.387215>,  <29.743607, 41.671631, 28.849195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180874, 41.287548, 28.387215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.832357, 41.099770, 28.329977>,  <29.623247, 40.987103, 28.295635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.832357, 41.099770, 28.329977>,  <30.180874, 41.287548, 28.387215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832357, 41.099770, 28.329977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128314, 0.063525, -0.989697,
		0.473695, -0.880675, 0.004887,
		-0.871291, -0.469442, -0.143095,
		29.570971, 40.958939, 28.287048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250883, 40.811764, 27.810532>,  <30.180874, 41.287548, 28.387215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250883, 40.811764, 27.810532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.863981, 40.908073, 27.842638>,  <29.631840, 40.965858, 27.861902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.863981, 40.908073, 27.842638>,  <30.250883, 40.811764, 27.810532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863981, 40.908073, 27.842638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044121, 0.151929, -0.987406,
		-0.249937, -0.958616, -0.136331,
		-0.967256, 0.240775, 0.080268,
		29.573805, 40.980305, 27.866718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908243, 40.315582, 27.340395>,  <30.250883, 40.811764, 27.810532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908243, 40.315582, 27.340395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.662066, 40.626827, 27.390612>,  <29.514359, 40.813576, 27.420742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.662066, 40.626827, 27.390612>,  <29.908243, 40.315582, 27.340395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662066, 40.626827, 27.390612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098630, 0.081996, -0.991740,
		-0.781983, -0.622745, 0.026281,
		-0.615446, 0.778117, 0.125541,
		29.477432, 40.860264, 27.428274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471880, 40.247730, 26.782354>,  <29.908243, 40.315582, 27.340395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471880, 40.247730, 26.782354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.368610, 40.619202, 26.888861>,  <29.306648, 40.842087, 26.952765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.368610, 40.619202, 26.888861>,  <29.471880, 40.247730, 26.782354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368610, 40.619202, 26.888861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289098, 0.188717, -0.938514,
		-0.921828, -0.319279, 0.219757,
		-0.258176, 0.928680, 0.266268,
		29.291157, 40.897804, 26.968740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772352, 40.403557, 26.663528>,  <29.471880, 40.247730, 26.782354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772352, 40.403557, 26.663528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.979128, 40.745956, 26.665865>,  <29.103193, 40.951397, 26.667267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.979128, 40.745956, 26.665865>,  <28.772352, 40.403557, 26.663528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979128, 40.745956, 26.665865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209390, 0.133061, -0.968737,
		-0.830017, 0.499557, 0.248023,
		0.516941, 0.856001, 0.005841,
		29.134211, 41.002758, 26.667618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376543, 40.767136, 26.161728>,  <28.772352, 40.403557, 26.663528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376543, 40.767136, 26.161728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.709494, 40.985188, 26.201696>,  <28.909264, 41.116016, 26.225677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.709494, 40.985188, 26.201696>,  <28.376543, 40.767136, 26.161728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709494, 40.985188, 26.201696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091969, 0.313661, -0.945071,
		-0.546525, 0.777466, 0.311219,
		0.832377, 0.545127, 0.099921,
		28.959208, 41.148727, 26.231672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128706, 41.283772, 25.836666>,  <28.376543, 40.767136, 26.161728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128706, 41.283772, 25.836666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.528610, 41.292217, 25.834414>,  <28.768553, 41.297287, 25.833063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.528610, 41.292217, 25.834414>,  <28.128706, 41.283772, 25.836666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528610, 41.292217, 25.834414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013486, 0.393420, -0.919260,
		-0.017198, 0.919116, 0.393611,
		0.999761, 0.021118, -0.005629,
		28.828539, 41.298553, 25.832726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174360, 41.898323, 25.551958>,  <28.128706, 41.283772, 25.836666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174360, 41.898323, 25.551958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.499079, 41.675293, 25.482573>,  <28.693911, 41.541473, 25.440941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.499079, 41.675293, 25.482573>,  <28.174360, 41.898323, 25.551958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499079, 41.675293, 25.482573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109183, 0.436757, -0.892929,
		0.573640, 0.705939, 0.415437,
		0.811798, -0.557578, -0.173465,
		28.742619, 41.508018, 25.430532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662058, 42.403858, 25.396240>,  <28.174360, 41.898323, 25.551958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662058, 42.403858, 25.396240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820978, 42.068729, 25.246464>,  <28.916330, 41.867653, 25.156597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820978, 42.068729, 25.246464>,  <28.662058, 42.403858, 25.396240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820978, 42.068729, 25.246464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121029, 0.452301, -0.883615,
		0.909672, 0.305744, 0.281100,
		0.397302, -0.837822, -0.374441,
		28.940168, 41.817383, 25.134130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029247, 42.677479, 24.929777>,  <28.662058, 42.403858, 25.396240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029247, 42.677479, 24.929777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.012135, 42.291447, 24.826395>,  <29.001867, 42.059830, 24.764366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.012135, 42.291447, 24.826395>,  <29.029247, 42.677479, 24.929777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012135, 42.291447, 24.826395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243832, 0.240783, -0.939451,
		0.968873, -0.103213, 0.225015,
		-0.042784, -0.965076, -0.258455,
		28.999300, 42.001923, 24.748859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655636, 42.506706, 24.571697>,  <29.029247, 42.677479, 24.929777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655636, 42.506706, 24.571697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379545, 42.243526, 24.451237>,  <29.213892, 42.085617, 24.378960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379545, 42.243526, 24.451237>,  <29.655636, 42.506706, 24.571697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379545, 42.243526, 24.451237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135451, 0.291351, -0.946978,
		0.710805, -0.694419, -0.111978,
		-0.690224, -0.657949, -0.301153,
		29.172478, 42.046143, 24.360891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886438, 42.336189, 23.990702>,  <29.655636, 42.506706, 24.571697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886438, 42.336189, 23.990702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.498148, 42.241989, 23.971809>,  <29.265173, 42.185471, 23.960474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.498148, 42.241989, 23.971809>,  <29.886438, 42.336189, 23.990702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498148, 42.241989, 23.971809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023760, 0.289821, -0.956786,
		0.239006, -0.927656, -0.286932,
		-0.970727, -0.235495, -0.047228,
		29.206930, 42.171341, 23.957642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480158, 41.850315, 23.804232>,  <29.886438, 42.336189, 23.990702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480158, 41.850315, 23.804232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.797781, 42.093155, 23.792194>,  <30.988356, 42.238857, 23.784973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.797781, 42.093155, 23.792194>,  <30.480158, 41.850315, 23.804232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797781, 42.093155, 23.792194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301027, -0.349758, 0.887160,
		0.528067, -0.713515, -0.460481,
		0.794058, 0.607096, -0.030091,
		31.035999, 42.275284, 23.783167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995644, 41.525341, 24.182901>,  <30.480158, 41.850315, 23.804232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995644, 41.525341, 24.182901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117474, 41.906330, 24.184858>,  <31.190571, 42.134926, 24.186033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117474, 41.906330, 24.184858>,  <30.995644, 41.525341, 24.182901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117474, 41.906330, 24.184858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419732, -0.138828, 0.896968,
		0.855020, -0.271140, -0.442068,
		0.304575, 0.952476, 0.004894,
		31.208847, 42.192074, 24.186327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576595, 41.428993, 24.549198>,  <30.995644, 41.525341, 24.182901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576595, 41.428993, 24.549198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.514950, 41.824165, 24.543026>,  <31.477962, 42.061268, 24.539322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.514950, 41.824165, 24.543026>,  <31.576595, 41.428993, 24.549198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514950, 41.824165, 24.543026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370092, 0.072199, 0.926185,
		0.916123, 0.137028, -0.376752,
		-0.154114, 0.987933, -0.015430,
		31.468716, 42.120544, 24.538397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154488, 41.772820, 24.761520>,  <31.576595, 41.428993, 24.549198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154488, 41.772820, 24.761520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.875845, 42.051769, 24.828936>,  <31.708658, 42.219139, 24.869385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.875845, 42.051769, 24.828936>,  <32.154488, 41.772820, 24.761520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875845, 42.051769, 24.828936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247658, 0.013263, 0.968757,
		0.673349, 0.716586, -0.181949,
		-0.696611, 0.697372, 0.168538,
		31.666862, 42.260983, 24.879498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497154, 42.395721, 25.062996>,  <32.154488, 41.772820, 24.761520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497154, 42.395721, 25.062996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.112873, 42.396893, 25.174017>,  <31.882303, 42.397594, 25.240629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.112873, 42.396893, 25.174017>,  <32.497154, 42.395721, 25.062996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112873, 42.396893, 25.174017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276411, 0.101243, 0.955692,
		-0.025301, 0.994857, -0.098075,
		-0.960706, 0.002929, 0.277551,
		31.824661, 42.397770, 25.257282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
