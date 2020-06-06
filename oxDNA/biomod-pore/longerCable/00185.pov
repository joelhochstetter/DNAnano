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
	<24.608259, 35.195251, 34.948696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493019, 34.820339, 35.027184>,  <24.423876, 34.595390, 35.074276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493019, 34.820339, 35.027184>,  <24.608259, 35.195251, 34.948696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493019, 34.820339, 35.027184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087908, -0.229929, -0.969229,
		0.953557, -0.261985, 0.148637,
		-0.288100, -0.937282, 0.196219,
		24.406590, 34.539154, 35.086048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146347, 34.821259, 34.483139>,  <24.608259, 35.195251, 34.948696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146347, 34.821259, 34.483139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814236, 34.627888, 34.594086>,  <24.614969, 34.511864, 34.660652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814236, 34.627888, 34.594086>,  <25.146347, 34.821259, 34.483139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.814236, 34.627888, 34.594086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065968, -0.408913, -0.910186,
		0.553430, -0.774006, 0.307621,
		-0.830280, -0.483431, 0.277364,
		24.565151, 34.482857, 34.677296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322168, 34.169838, 34.405479>,  <25.146347, 34.821259, 34.483139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322168, 34.169838, 34.405479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924995, 34.216572, 34.397110>,  <24.686691, 34.244614, 34.392090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924995, 34.216572, 34.397110>,  <25.322168, 34.169838, 34.405479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924995, 34.216572, 34.397110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025317, -0.380693, -0.924355,
		-0.115960, -0.917291, 0.380960,
		-0.992931, 0.116833, -0.020922,
		24.627115, 34.251621, 34.390835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065552, 34.415016, 34.373367>,  <25.322168, 34.169838, 34.405479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065552, 34.415016, 34.373367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348623, 34.516254, 34.637226>,  <26.518465, 34.576996, 34.795540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348623, 34.516254, 34.637226>,  <26.065552, 34.415016, 34.373367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348623, 34.516254, 34.637226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019701, -0.940342, 0.339660,
		0.706261, -0.227374, -0.670445,
		0.707677, 0.253097, 0.659647,
		26.560926, 34.592182, 34.835121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824070, 34.074493, 34.380878>,  <26.065552, 34.415016, 34.373367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824070, 34.074493, 34.380878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739021, 34.203007, 34.750000>,  <26.687992, 34.280117, 34.971474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739021, 34.203007, 34.750000>,  <26.824070, 34.074493, 34.380878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739021, 34.203007, 34.750000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042246, -0.940492, 0.337180,
		0.976220, 0.110678, 0.186397,
		-0.212624, 0.321288, 0.922803,
		26.675234, 34.299393, 35.026840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401070, 34.039753, 34.911755>,  <26.824070, 34.074493, 34.380878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401070, 34.039753, 34.911755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046671, 34.019875, 35.096161>,  <26.834032, 34.007946, 35.206806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046671, 34.019875, 35.096161>,  <27.401070, 34.039753, 34.911755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046671, 34.019875, 35.096161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256784, -0.880452, 0.398580,
		0.386094, 0.471523, 0.792841,
		-0.885998, -0.049700, 0.461017,
		26.780870, 34.004963, 35.234467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175364, 34.284355, 34.709305>,  <27.401070, 34.039753, 34.911755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175364, 34.284355, 34.709305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042667, 34.579365, 34.944592>,  <27.963049, 34.756371, 35.085762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042667, 34.579365, 34.944592>,  <28.175364, 34.284355, 34.709305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042667, 34.579365, 34.944592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456700, -0.420031, 0.784218,
		0.825453, 0.528797, -0.197487,
		-0.331742, 0.737528, 0.588218,
		27.943146, 34.800625, 35.121056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746283, 34.746304, 34.580067>,  <28.175364, 34.284355, 34.709305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746283, 34.746304, 34.580067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051411, 34.803490, 34.832310>,  <29.234488, 34.837803, 34.983654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051411, 34.803490, 34.832310>,  <28.746283, 34.746304, 34.580067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051411, 34.803490, 34.832310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508014, -0.735865, -0.447688,
		0.400038, 0.661863, -0.633962,
		0.762818, 0.142969, 0.630609,
		29.280256, 34.846382, 35.021492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513275, 34.696728, 34.187508>,  <28.746283, 34.746304, 34.580067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513275, 34.696728, 34.187508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527725, 34.626522, 34.581032>,  <29.536394, 34.584396, 34.817146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527725, 34.626522, 34.581032>,  <29.513275, 34.696728, 34.187508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527725, 34.626522, 34.581032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388117, -0.904715, -0.175657,
		0.920902, 0.388181, 0.035439,
		0.036124, -0.175517, 0.983813,
		29.538563, 34.573868, 34.876175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099363, 34.353207, 34.293747>,  <29.513275, 34.696728, 34.187508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099363, 34.353207, 34.293747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886097, 34.280048, 34.624149>,  <29.758137, 34.236153, 34.822392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886097, 34.280048, 34.624149>,  <30.099363, 34.353207, 34.293747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886097, 34.280048, 34.624149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210617, -0.974308, -0.079779,
		0.819374, 0.131435, 0.557989,
		-0.533167, -0.182891, 0.826005,
		29.726147, 34.225182, 34.871952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492857, 33.917202, 34.617985>,  <30.099363, 34.353207, 34.293747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492857, 33.917202, 34.617985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154936, 33.833553, 34.814991>,  <29.952183, 33.783363, 34.933193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154936, 33.833553, 34.814991>,  <30.492857, 33.917202, 34.617985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154936, 33.833553, 34.814991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100166, -0.965999, -0.238355,
		0.525616, -0.152030, 0.837027,
		-0.844805, -0.209125, 0.492516,
		29.901495, 33.770817, 34.962746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599642, 33.247818, 35.041386>,  <30.492857, 33.917202, 34.617985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599642, 33.247818, 35.041386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210533, 33.296547, 34.962517>,  <29.977068, 33.325783, 34.915195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210533, 33.296547, 34.962517>,  <30.599642, 33.247818, 35.041386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210533, 33.296547, 34.962517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073171, -0.968635, -0.237468,
		-0.219914, -0.216575, 0.951174,
		-0.972771, 0.121821, -0.197170,
		29.918701, 33.333092, 34.903366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330860, 32.432213, 34.952477>,  <30.599642, 33.247818, 35.041386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330860, 32.432213, 34.952477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953489, 32.303001, 34.982410>,  <29.727068, 32.225475, 35.000370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953489, 32.303001, 34.982410>,  <30.330860, 32.432213, 34.952477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953489, 32.303001, 34.982410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323570, 0.946191, 0.005090,
		-0.072456, -0.019413, -0.997183,
		-0.943426, -0.323027, 0.074839,
		29.670462, 32.206093, 35.004864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841290, 32.659531, 34.450325>,  <30.330860, 32.432213, 34.952477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841290, 32.659531, 34.450325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688637, 32.607491, 34.816368>,  <29.597046, 32.576267, 35.035995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688637, 32.607491, 34.816368>,  <29.841290, 32.659531, 34.450325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688637, 32.607491, 34.816368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281533, 0.959364, 0.018986,
		-0.880395, -0.250389, -0.402753,
		-0.381633, -0.130104, 0.915112,
		29.574146, 32.568459, 35.090900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248173, 33.061512, 34.453236>,  <29.841290, 32.659531, 34.450325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248173, 33.061512, 34.453236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333921, 32.983757, 34.836121>,  <29.385370, 32.937103, 35.065853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333921, 32.983757, 34.836121>,  <29.248173, 33.061512, 34.453236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333921, 32.983757, 34.836121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037683, 0.977621, 0.206972,
		-0.976025, -0.080440, 0.202249,
		0.214371, -0.194389, 0.957214,
		29.398233, 32.925442, 35.123283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797857, 33.467072, 34.843456>,  <29.248173, 33.061512, 34.453236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797857, 33.467072, 34.843456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126701, 33.375248, 35.051853>,  <29.324009, 33.320156, 35.176891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126701, 33.375248, 35.051853>,  <28.797857, 33.467072, 34.843456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126701, 33.375248, 35.051853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112476, 0.962561, 0.246628,
		-0.558106, -0.144156, 0.817152,
		0.822111, -0.229555, 0.520997,
		29.373335, 33.306381, 35.208153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840158, 33.479218, 35.610935>,  <28.797857, 33.467072, 34.843456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840158, 33.479218, 35.610935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171993, 33.583431, 35.413387>,  <29.371094, 33.645962, 35.294861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171993, 33.583431, 35.413387>,  <28.840158, 33.479218, 35.610935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171993, 33.583431, 35.413387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163985, 0.959146, 0.230536,
		0.533754, -0.110263, 0.838420,
		0.829587, 0.260538, -0.493867,
		29.420870, 33.661594, 35.265228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126087, 33.984043, 35.976734>,  <28.840158, 33.479218, 35.610935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126087, 33.984043, 35.976734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341440, 34.059090, 35.648113>,  <29.470652, 34.104118, 35.450943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341440, 34.059090, 35.648113>,  <29.126087, 33.984043, 35.976734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341440, 34.059090, 35.648113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068582, 0.961911, 0.264619,
		0.839905, -0.198810, 0.505008,
		0.538382, 0.187621, -0.821549,
		29.502954, 34.115376, 35.401649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743240, 34.411526, 36.188789>,  <29.126087, 33.984043, 35.976734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743240, 34.411526, 36.188789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662899, 34.457954, 35.799702>,  <29.614695, 34.485813, 35.566250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662899, 34.457954, 35.799702>,  <29.743240, 34.411526, 36.188789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662899, 34.457954, 35.799702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012717, 0.992563, 0.121067,
		0.979539, 0.036687, -0.197885,
		-0.200855, 0.116073, -0.972720,
		29.602642, 34.492775, 35.507885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080351, 35.084743, 35.910374>,  <29.743240, 34.411526, 36.188789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080351, 35.084743, 35.910374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797983, 34.986637, 35.644585>,  <29.628563, 34.927773, 35.485111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797983, 34.986637, 35.644585>,  <30.080351, 35.084743, 35.910374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797983, 34.986637, 35.644585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185231, 0.969410, -0.161039,
		0.683642, 0.009400, -0.729757,
		-0.705920, -0.245267, -0.664470,
		29.586206, 34.913055, 35.445244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715385, 35.800152, 35.771191>,  <30.080351, 35.084743, 35.910374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715385, 35.800152, 35.771191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008656, 35.792561, 36.043098>,  <30.184618, 35.788006, 36.206245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008656, 35.792561, 36.043098>,  <29.715385, 35.800152, 35.771191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008656, 35.792561, 36.043098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307810, -0.900610, 0.306845,
		0.606387, -0.434213, -0.666149,
		0.733177, -0.018981, 0.679773,
		30.228609, 35.786865, 36.247032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992702, 36.339706, 35.292503>,  <29.715385, 35.800152, 35.771191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992702, 36.339706, 35.292503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309458, 36.096405, 35.314186>,  <30.499512, 35.950424, 35.327194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309458, 36.096405, 35.314186>,  <29.992702, 36.339706, 35.292503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309458, 36.096405, 35.314186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548177, 0.747163, 0.375833,
		-0.269101, -0.267905, 0.925101,
		0.791888, -0.608256, 0.054203,
		30.547024, 35.913929, 35.330448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317123, 36.258202, 36.042049>,  <29.992702, 36.339706, 35.292503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317123, 36.258202, 36.042049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588682, 36.223774, 35.750381>,  <30.751617, 36.203117, 35.575378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588682, 36.223774, 35.750381>,  <30.317123, 36.258202, 36.042049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588682, 36.223774, 35.750381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604672, 0.628883, 0.488751,
		0.416499, -0.772721, 0.478989,
		0.678896, -0.086067, -0.729172,
		30.792351, 36.197952, 35.531631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053257, 35.991268, 36.218666>,  <30.317123, 36.258202, 36.042049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053257, 35.991268, 36.218666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016726, 36.264244, 35.928581>,  <30.994806, 36.428028, 35.754528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016726, 36.264244, 35.928581>,  <31.053257, 35.991268, 36.218666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016726, 36.264244, 35.928581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426247, 0.684963, 0.590881,
		0.899985, -0.255157, -0.353444,
		-0.091328, 0.682438, -0.725216,
		30.989326, 36.468975, 35.711018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731653, 36.349300, 36.003761>,  <31.053257, 35.991268, 36.218666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731653, 36.349300, 36.003761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414213, 36.582684, 35.934742>,  <31.223749, 36.722713, 35.893330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414213, 36.582684, 35.934742>,  <31.731653, 36.349300, 36.003761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414213, 36.582684, 35.934742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468350, 0.766824, 0.438895,
		0.388389, 0.267496, -0.881816,
		-0.793601, 0.583461, -0.172544,
		31.176132, 36.757721, 35.882980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994049, 36.979931, 36.021442>,  <31.731653, 36.349300, 36.003761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994049, 36.979931, 36.021442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616781, 37.100136, 35.964699>,  <31.390421, 37.172260, 35.930653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616781, 37.100136, 35.964699>,  <31.994049, 36.979931, 36.021442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616781, 37.100136, 35.964699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241990, 0.913661, 0.326596,
		0.227757, 0.273707, -0.934458,
		-0.943169, 0.300514, -0.141858,
		31.333830, 37.190289, 35.922142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003620, 37.708515, 35.924294>,  <31.994049, 36.979931, 36.021442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003620, 37.708515, 35.924294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612274, 37.648155, 35.980915>,  <31.377468, 37.611938, 36.014889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612274, 37.648155, 35.980915>,  <32.003620, 37.708515, 35.924294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612274, 37.648155, 35.980915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080669, 0.908232, 0.410617,
		-0.190526, 0.390313, -0.900753,
		-0.978362, -0.150896, 0.141556,
		31.318766, 37.602886, 36.023380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583836, 38.434715, 35.804070>,  <32.003620, 37.708515, 35.924294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583836, 38.434715, 35.804070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394035, 38.158875, 36.022900>,  <31.280155, 37.993370, 36.154198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394035, 38.158875, 36.022900>,  <31.583836, 38.434715, 35.804070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394035, 38.158875, 36.022900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201147, 0.689999, 0.695299,
		-0.856965, 0.219877, -0.466117,
		-0.474501, -0.689605, 0.547078,
		31.251686, 37.951992, 36.187023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605949, 38.287868, 36.540558>,  <31.583836, 38.434715, 35.804070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605949, 38.287868, 36.540558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583462, 38.251976, 36.938309>,  <31.569969, 38.230442, 37.176960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583462, 38.251976, 36.938309>,  <31.605949, 38.287868, 36.540558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583462, 38.251976, 36.938309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345769, -0.936071, -0.064919,
		0.936634, 0.340176, 0.083651,
		-0.056219, -0.089729, 0.994378,
		31.566595, 38.225056, 37.236622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853962, 37.518421, 36.754505>,  <31.605949, 38.287868, 36.540558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853962, 37.518421, 36.754505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978542, 37.725361, 37.073341>,  <32.053291, 37.849525, 37.264641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978542, 37.725361, 37.073341>,  <31.853962, 37.518421, 36.754505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978542, 37.725361, 37.073341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399068, -0.832465, 0.384379,
		0.862405, 0.198377, -0.465730,
		0.311451, 0.517348, 0.797088,
		32.071980, 37.880566, 37.312469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447762, 37.162243, 37.025879>,  <31.853962, 37.518421, 36.754505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447762, 37.162243, 37.025879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393475, 37.399391, 37.343391>,  <32.360905, 37.541679, 37.533897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393475, 37.399391, 37.343391>,  <32.447762, 37.162243, 37.025879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393475, 37.399391, 37.343391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274696, -0.747267, 0.605090,
		0.951905, 0.300169, -0.061443,
		-0.135715, 0.592867, 0.793782,
		32.352760, 37.577251, 37.581528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976158, 37.066757, 37.455776>,  <32.447762, 37.162243, 37.025879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976158, 37.066757, 37.455776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669113, 37.185524, 37.682972>,  <32.484886, 37.256783, 37.819290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669113, 37.185524, 37.682972>,  <32.976158, 37.066757, 37.455776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669113, 37.185524, 37.682972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274644, -0.648337, 0.710091,
		0.579087, 0.701069, 0.416125,
		-0.767612, 0.296918, 0.567989,
		32.438831, 37.274601, 37.853367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267876, 37.088696, 38.253143>,  <32.976158, 37.066757, 37.455776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267876, 37.088696, 38.253143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868420, 37.101669, 38.269451>,  <32.628746, 37.109455, 38.279236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868420, 37.101669, 38.269451>,  <33.267876, 37.088696, 38.253143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868420, 37.101669, 38.269451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002798, -0.748032, 0.663657,
		0.052027, 0.662869, 0.746925,
		-0.998642, 0.032439, 0.040773,
		32.568829, 37.111401, 38.281681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031826, 37.071289, 38.903912>,  <33.267876, 37.088696, 38.253143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031826, 37.071289, 38.903912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717484, 36.919117, 38.708897>,  <32.528877, 36.827812, 38.591888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717484, 36.919117, 38.708897>,  <33.031826, 37.071289, 38.903912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717484, 36.919117, 38.708897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047646, -0.823286, 0.565623,
		-0.616566, 0.421272, 0.665114,
		-0.785860, -0.380434, -0.487538,
		32.481724, 36.804985, 38.562634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813148, 36.459129, 39.210323>,  <33.031826, 37.071289, 38.903912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813148, 36.459129, 39.210323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481380, 36.371941, 39.416065>,  <32.282322, 36.319630, 39.539509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481380, 36.371941, 39.416065>,  <32.813148, 36.459129, 39.210323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481380, 36.371941, 39.416065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557885, 0.370788, -0.742483,
		-0.028879, -0.902777, -0.429138,
		-0.829415, -0.217968, 0.514354,
		32.232555, 36.306549, 39.570370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405003, 35.977299, 38.904591>,  <32.813148, 36.459129, 39.210323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405003, 35.977299, 38.904591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211102, 36.266773, 39.101078>,  <32.094761, 36.440456, 39.218971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211102, 36.266773, 39.101078>,  <32.405003, 35.977299, 38.904591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211102, 36.266773, 39.101078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310094, 0.382935, -0.870174,
		-0.817836, -0.574143, 0.038782,
		-0.484753, 0.723685, 0.491216,
		32.065674, 36.483879, 39.248444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727808, 36.004078, 38.703625>,  <32.405003, 35.977299, 38.904591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727808, 36.004078, 38.703625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855642, 36.360535, 38.832451>,  <31.932343, 36.574409, 38.909744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855642, 36.360535, 38.832451>,  <31.727808, 36.004078, 38.703625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855642, 36.360535, 38.832451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296458, 0.416860, -0.859267,
		-0.899987, 0.179133, 0.397410,
		0.319588, 0.891145, 0.322063,
		31.951519, 36.627876, 38.929070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533775, 36.584267, 38.132343>,  <31.727808, 36.004078, 38.703625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533775, 36.584267, 38.132343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781637, 36.759865, 38.392590>,  <31.930355, 36.865223, 38.548737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781637, 36.759865, 38.392590>,  <31.533775, 36.584267, 38.132343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781637, 36.759865, 38.392590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069783, 0.794851, -0.602778,
		-0.781765, 0.418918, 0.461900,
		0.619656, 0.438998, 0.650620,
		31.967535, 36.891563, 38.587776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285440, 37.307831, 38.280605>,  <31.533775, 36.584267, 38.132343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285440, 37.307831, 38.280605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679367, 37.247578, 38.315128>,  <31.915722, 37.211426, 38.335842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679367, 37.247578, 38.315128>,  <31.285440, 37.307831, 38.280605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679367, 37.247578, 38.315128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171752, 0.772848, -0.610906,
		0.025324, 0.616452, 0.786985,
		0.984815, -0.150637, 0.086305,
		31.974812, 37.202385, 38.341019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559103, 37.875164, 38.542446>,  <31.285440, 37.307831, 38.280605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559103, 37.875164, 38.542446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873369, 37.713314, 38.355255>,  <32.061928, 37.616203, 38.242939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873369, 37.713314, 38.355255>,  <31.559103, 37.875164, 38.542446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873369, 37.713314, 38.355255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080017, 0.816562, -0.571685,
		0.613456, 0.411706, 0.673921,
		0.785665, -0.404629, -0.467982,
		32.109070, 37.591927, 38.214859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139606, 38.346695, 38.612137>,  <31.559103, 37.875164, 38.542446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139606, 38.346695, 38.612137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193951, 38.118114, 38.288410>,  <32.226555, 37.980968, 38.094173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193951, 38.118114, 38.288410>,  <32.139606, 38.346695, 38.612137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193951, 38.118114, 38.288410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032518, 0.819021, -0.572841,
		0.990195, 0.051507, 0.129852,
		0.135857, -0.571446, -0.809316,
		32.234707, 37.946682, 38.045616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642689, 38.617359, 38.228725>,  <32.139606, 38.346695, 38.612137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642689, 38.617359, 38.228725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472191, 38.383797, 37.952358>,  <32.369892, 38.243660, 37.786537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472191, 38.383797, 37.952358>,  <32.642689, 38.617359, 38.228725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472191, 38.383797, 37.952358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123455, 0.719082, -0.683871,
		0.896145, -0.376793, -0.234418,
		-0.426244, -0.583908, -0.690918,
		32.344318, 38.208626, 37.745083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055271, 38.771835, 37.619919>,  <32.642689, 38.617359, 38.228725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055271, 38.771835, 37.619919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698631, 38.609871, 37.538830>,  <32.484646, 38.512691, 37.490177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698631, 38.609871, 37.538830>,  <33.055271, 38.771835, 37.619919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698631, 38.609871, 37.538830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096486, 0.607281, -0.788607,
		0.442424, -0.683562, -0.580520,
		-0.891600, -0.404910, -0.202721,
		32.431152, 38.488396, 37.478012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925606, 38.469997, 36.853065>,  <33.055271, 38.771835, 37.619919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925606, 38.469997, 36.853065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614735, 38.638100, 37.040417>,  <32.428211, 38.738960, 37.152828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614735, 38.638100, 37.040417>,  <32.925606, 38.469997, 36.853065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614735, 38.638100, 37.040417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103188, 0.649121, -0.753654,
		-0.620764, -0.634054, -0.461116,
		-0.777177, 0.420260, 0.468378,
		32.381580, 38.764179, 37.180931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579922, 38.909184, 36.421368>,  <32.925606, 38.469997, 36.853065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579922, 38.909184, 36.421368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393322, 39.038960, 36.750515>,  <32.281361, 39.116825, 36.948006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393322, 39.038960, 36.750515>,  <32.579922, 38.909184, 36.421368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393322, 39.038960, 36.750515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257798, 0.840040, -0.477360,
		-0.846119, -0.434824, -0.308239,
		-0.466501, 0.324440, 0.822870,
		32.253372, 39.136292, 36.997375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780926, 39.007416, 36.385990>,  <32.579922, 38.909184, 36.421368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780926, 39.007416, 36.385990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980785, 39.236645, 36.645817>,  <32.100700, 39.374184, 36.801712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980785, 39.236645, 36.645817>,  <31.780926, 39.007416, 36.385990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980785, 39.236645, 36.645817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274634, 0.815992, -0.508657,
		-0.821539, 0.075758, 0.565097,
		0.499650, 0.573077, 0.649564,
		32.130680, 39.408569, 36.840687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347006, 39.435101, 36.733868>,  <31.780926, 39.007416, 36.385990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347006, 39.435101, 36.733868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697412, 39.617592, 36.671322>,  <31.907658, 39.727085, 36.633793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697412, 39.617592, 36.671322>,  <31.347006, 39.435101, 36.733868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697412, 39.617592, 36.671322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458317, 0.686605, -0.564375,
		-0.150122, 0.566068, 0.810575,
		0.876019, 0.456225, -0.156364,
		31.960218, 39.754459, 36.624413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175838, 40.139297, 36.777390>,  <31.347006, 39.435101, 36.733868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175838, 40.139297, 36.777390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508533, 40.078377, 36.563843>,  <31.708151, 40.041824, 36.435715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508533, 40.078377, 36.563843>,  <31.175838, 40.139297, 36.777390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508533, 40.078377, 36.563843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334643, 0.629755, -0.701016,
		0.442974, 0.761717, 0.472823,
		0.831738, -0.152305, -0.533868,
		31.758055, 40.032684, 36.403683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472208, 40.751633, 36.582897>,  <31.175838, 40.139297, 36.777390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472208, 40.751633, 36.582897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610046, 40.474522, 36.329498>,  <31.692749, 40.308254, 36.177460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610046, 40.474522, 36.329498>,  <31.472208, 40.751633, 36.582897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610046, 40.474522, 36.329498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270154, 0.573098, -0.773677,
		0.899039, 0.437747, 0.010332,
		0.344596, -0.692774, -0.633496,
		31.713425, 40.266689, 36.139450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932859, 41.090927, 35.987499>,  <31.472208, 40.751633, 36.582897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932859, 41.090927, 35.987499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734127, 40.750042, 35.921909>,  <31.614887, 40.545509, 35.882553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734127, 40.750042, 35.921909>,  <31.932859, 41.090927, 35.987499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734127, 40.750042, 35.921909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506295, 0.438087, -0.742795,
		0.704859, -0.286020, -0.649127,
		-0.496828, -0.852216, -0.163980,
		31.585079, 40.494377, 35.872715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050552, 40.713402, 35.291073>,  <31.932859, 41.090927, 35.987499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050552, 40.713402, 35.291073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676138, 40.634552, 35.407677>,  <31.451488, 40.587242, 35.477638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676138, 40.634552, 35.407677>,  <32.050552, 40.713402, 35.291073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676138, 40.634552, 35.407677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345664, 0.359756, -0.866656,
		0.065971, -0.911985, -0.404884,
		-0.936036, -0.197128, 0.291507,
		31.395327, 40.575413, 35.495129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320412, 41.436581, 35.364571>,  <32.050552, 40.713402, 35.291073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320412, 41.436581, 35.364571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454620, 41.685825, 35.647175>,  <32.535145, 41.835373, 35.816738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454620, 41.685825, 35.647175>,  <32.320412, 41.436581, 35.364571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454620, 41.685825, 35.647175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817546, -0.180002, 0.547009,
		0.468019, -0.761141, 0.449024,
		0.335525, 0.623108, 0.706512,
		32.555279, 41.872757, 35.859127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006210, 41.644241, 35.482235>,  <32.320412, 41.436581, 35.364571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006210, 41.644241, 35.482235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070065, 41.798935, 35.845543>,  <33.108376, 41.891750, 36.063526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070065, 41.798935, 35.845543>,  <33.006210, 41.644241, 35.482235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070065, 41.798935, 35.845543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830292, -0.550277, 0.088378,
		0.533978, 0.740021, -0.408945,
		0.159631, 0.386736, 0.908270,
		33.117954, 41.914955, 36.118023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770164, 41.749634, 35.525906>,  <33.006210, 41.644241, 35.482235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770164, 41.749634, 35.525906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611122, 41.720661, 35.891781>,  <33.515697, 41.703278, 36.111305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611122, 41.720661, 35.891781>,  <33.770164, 41.749634, 35.525906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611122, 41.720661, 35.891781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602715, -0.772267, 0.200846,
		0.691839, 0.631157, 0.350714,
		-0.397610, -0.072427, 0.914692,
		33.491840, 41.698933, 36.166187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460442, 41.375729, 35.716003>,  <33.770164, 41.749634, 35.525906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460442, 41.375729, 35.716003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531796, 41.003502, 35.588112>,  <34.574608, 40.780167, 35.511375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531796, 41.003502, 35.588112>,  <34.460442, 41.375729, 35.716003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531796, 41.003502, 35.588112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798343, -0.053064, 0.599861,
		-0.575176, -0.362261, 0.733444,
		0.178387, -0.930565, -0.319730,
		34.585312, 40.724331, 35.492191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521591, 41.050758, 36.218739>,  <34.460442, 41.375729, 35.716003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521591, 41.050758, 36.218739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722061, 40.865482, 35.926361>,  <34.842342, 40.754318, 35.750935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722061, 40.865482, 35.926361>,  <34.521591, 41.050758, 36.218739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722061, 40.865482, 35.926361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814435, -0.032985, 0.579317,
		-0.292442, -0.885647, 0.360704,
		0.501172, -0.463187, -0.730947,
		34.872414, 40.726528, 35.707077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673111, 40.423687, 36.483913>,  <34.521591, 41.050758, 36.218739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673111, 40.423687, 36.483913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944954, 40.490555, 36.198204>,  <35.108059, 40.530674, 36.026779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944954, 40.490555, 36.198204>,  <34.673111, 40.423687, 36.483913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944954, 40.490555, 36.198204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730488, -0.064990, 0.679826,
		0.067226, -0.983784, -0.166284,
		0.679608, 0.167170, -0.714274,
		35.148838, 40.540707, 35.983921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255348, 39.922470, 36.310513>,  <34.673111, 40.423687, 36.483913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255348, 39.922470, 36.310513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402176, 40.284958, 36.226582>,  <35.490273, 40.502449, 36.176224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402176, 40.284958, 36.226582>,  <35.255348, 39.922470, 36.310513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402176, 40.284958, 36.226582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734781, -0.144161, 0.662809,
		0.570399, -0.397479, -0.718788,
		0.367073, 0.906217, -0.209831,
		35.512299, 40.556824, 36.163631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899364, 39.941433, 36.438736>,  <35.255348, 39.922470, 36.310513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899364, 39.941433, 36.438736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842865, 40.336735, 36.462059>,  <35.808964, 40.573917, 36.476055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842865, 40.336735, 36.462059>,  <35.899364, 39.941433, 36.438736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842865, 40.336735, 36.462059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860651, 0.093479, 0.500541,
		0.489211, 0.120889, -0.863747,
		-0.141252, 0.988255, 0.058312,
		35.800488, 40.633213, 36.479553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664795, 39.902607, 36.621029>,  <35.899364, 39.941433, 36.438736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664795, 39.902607, 36.621029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767670, 40.081573, 36.278412>,  <36.829395, 40.188953, 36.072842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767670, 40.081573, 36.278412>,  <36.664795, 39.902607, 36.621029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767670, 40.081573, 36.278412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893357, 0.448043, -0.034209,
		0.368464, 0.774001, 0.514934,
		0.257190, 0.447415, -0.856547,
		36.844826, 40.215797, 36.021446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596848, 40.671677, 36.608044>,  <36.664795, 39.902607, 36.621029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596848, 40.671677, 36.608044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546970, 40.537910, 36.234386>,  <36.517044, 40.457649, 36.010193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546970, 40.537910, 36.234386>,  <36.596848, 40.671677, 36.608044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546970, 40.537910, 36.234386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901170, 0.432100, -0.034395,
		0.415144, 0.837529, -0.355248,
		-0.124696, -0.334418, -0.934139,
		36.509563, 40.437584, 35.954144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257404, 41.131840, 36.236610>,  <36.596848, 40.671677, 36.608044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257404, 41.131840, 36.236610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199306, 40.812675, 36.002605>,  <36.164448, 40.621178, 35.862202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199306, 40.812675, 36.002605>,  <36.257404, 41.131840, 36.236610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199306, 40.812675, 36.002605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947023, 0.283301, -0.151286,
		0.286449, 0.532052, -0.796785,
		-0.145238, -0.797910, -0.585017,
		36.155735, 40.573299, 35.827103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996143, 41.168846, 35.517258>,  <36.257404, 41.131840, 36.236610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996143, 41.168846, 35.517258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868259, 40.816593, 35.657127>,  <35.791531, 40.605240, 35.741051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868259, 40.816593, 35.657127>,  <35.996143, 41.168846, 35.517258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868259, 40.816593, 35.657127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927475, 0.215352, -0.305637,
		0.193851, -0.422028, -0.885615,
		-0.319706, -0.880633, 0.349675,
		35.772346, 40.552402, 35.762028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905499, 40.732761, 34.930855>,  <35.996143, 41.168846, 35.517258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905499, 40.732761, 34.930855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680294, 40.639881, 35.248119>,  <35.545174, 40.584152, 35.438477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680294, 40.639881, 35.248119>,  <35.905499, 40.732761, 34.930855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680294, 40.639881, 35.248119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820833, 0.045380, -0.569363,
		0.096213, -0.971609, -0.216147,
		-0.563007, -0.232200, 0.793162,
		35.511391, 40.570221, 35.486069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572754, 40.085567, 34.843174>,  <35.905499, 40.732761, 34.930855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572754, 40.085567, 34.843174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337227, 40.281570, 35.100292>,  <35.195911, 40.399170, 35.254562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337227, 40.281570, 35.100292>,  <35.572754, 40.085567, 34.843174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337227, 40.281570, 35.100292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780077, -0.136325, -0.610652,
		-0.211591, -0.860996, 0.462509,
		-0.588820, 0.490001, 0.642798,
		35.160580, 40.428570, 35.293133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932354, 39.711994, 34.932186>,  <35.572754, 40.085567, 34.843174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932354, 39.711994, 34.932186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853939, 40.088684, 35.041527>,  <34.806889, 40.314697, 35.107132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853939, 40.088684, 35.041527>,  <34.932354, 39.711994, 34.932186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853939, 40.088684, 35.041527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800685, 0.007204, -0.599043,
		-0.566103, -0.336306, 0.752613,
		-0.196040, 0.941725, 0.273353,
		34.795128, 40.371201, 35.123531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572144, 40.041439, 34.281097>,  <34.932354, 39.711994, 34.932186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572144, 40.041439, 34.281097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745209, 40.242592, 33.981789>,  <34.849049, 40.363285, 33.802204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745209, 40.242592, 33.981789>,  <34.572144, 40.041439, 34.281097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745209, 40.242592, 33.981789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274181, -0.864059, -0.422168,
		-0.858854, -0.022506, -0.511726,
		0.432661, 0.502886, -0.748271,
		34.875008, 40.393459, 33.757309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354271, 39.880863, 33.617645>,  <34.572144, 40.041439, 34.281097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354271, 39.880863, 33.617645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729248, 40.006115, 33.556778>,  <34.954235, 40.081268, 33.520260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729248, 40.006115, 33.556778>,  <34.354271, 39.880863, 33.617645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729248, 40.006115, 33.556778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235361, -0.892070, -0.385767,
		-0.256539, 0.325819, -0.909961,
		0.937439, 0.313134, -0.152166,
		35.010479, 40.100056, 33.511127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473545, 39.648338, 32.874187>,  <34.354271, 39.880863, 33.617645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473545, 39.648338, 32.874187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822910, 39.711777, 33.058357>,  <35.032532, 39.749840, 33.168861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822910, 39.711777, 33.058357>,  <34.473545, 39.648338, 32.874187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822910, 39.711777, 33.058357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426296, -0.706056, -0.565470,
		0.235408, 0.690169, -0.684288,
		0.873415, 0.158593, 0.460428,
		35.084934, 39.759354, 33.196487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856277, 39.743065, 32.390602>,  <34.473545, 39.648338, 32.874187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856277, 39.743065, 32.390602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105545, 39.636150, 32.684601>,  <35.255108, 39.572002, 32.861000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105545, 39.636150, 32.684601>,  <34.856277, 39.743065, 32.390602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105545, 39.636150, 32.684601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358360, -0.737733, -0.572126,
		0.695151, 0.619924, -0.363948,
		0.623172, -0.267289, 0.734992,
		35.292496, 39.555965, 32.905098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456486, 39.783173, 32.075199>,  <34.856277, 39.743065, 32.390602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456486, 39.783173, 32.075199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530735, 39.533798, 32.379009>,  <35.575283, 39.384174, 32.561295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530735, 39.533798, 32.379009>,  <35.456486, 39.783173, 32.075199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530735, 39.533798, 32.379009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481068, -0.616329, -0.623468,
		0.856807, 0.481111, 0.185511,
		0.185621, -0.623435, 0.759522,
		35.586422, 39.346767, 32.606865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126381, 39.694061, 32.080494>,  <35.456486, 39.783173, 32.075199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126381, 39.694061, 32.080494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029709, 39.377972, 32.305756>,  <35.971706, 39.188320, 32.440914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029709, 39.377972, 32.305756>,  <36.126381, 39.694061, 32.080494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029709, 39.377972, 32.305756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672175, -0.554898, -0.490172,
		0.699838, 0.260076, 0.665272,
		-0.241676, -0.790221, 0.563156,
		35.957207, 39.140907, 32.474701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783634, 39.307594, 32.219707>,  <36.126381, 39.694061, 32.080494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783634, 39.307594, 32.219707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502647, 39.029118, 32.278851>,  <36.334057, 38.862030, 32.314335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502647, 39.029118, 32.278851>,  <36.783634, 39.307594, 32.219707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502647, 39.029118, 32.278851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507891, -0.635883, -0.581119,
		0.498591, -0.333118, 0.800274,
		-0.702462, -0.696193, 0.147858,
		36.291908, 38.820259, 32.323208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100906, 38.745037, 32.508942>,  <36.783634, 39.307594, 32.219707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100906, 38.745037, 32.508942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766743, 38.585327, 32.357857>,  <36.566242, 38.489502, 32.267204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766743, 38.585327, 32.357857>,  <37.100906, 38.745037, 32.508942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766743, 38.585327, 32.357857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540285, -0.722707, -0.431030,
		-0.100876, -0.564160, 0.819480,
		-0.835414, -0.399272, -0.377711,
		36.516117, 38.465546, 32.244545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099857, 37.981266, 32.618523>,  <37.100906, 38.745037, 32.508942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099857, 37.981266, 32.618523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862953, 38.056320, 32.305084>,  <36.720810, 38.101353, 32.117023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862953, 38.056320, 32.305084>,  <37.099857, 37.981266, 32.618523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862953, 38.056320, 32.305084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576506, -0.580734, -0.574795,
		-0.562906, -0.792177, 0.235781,
		-0.592265, 0.187626, -0.783593,
		36.685276, 38.112610, 32.070007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082935, 37.317844, 32.273617>,  <37.099857, 37.981266, 32.618523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082935, 37.317844, 32.273617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920681, 37.571781, 32.010578>,  <36.823330, 37.724144, 31.852755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920681, 37.571781, 32.010578>,  <37.082935, 37.317844, 32.273617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920681, 37.571781, 32.010578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336226, -0.565369, -0.753200,
		-0.849948, -0.526627, 0.015884,
		-0.405636, 0.634840, -0.657600,
		36.798992, 37.762234, 31.813297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694031, 36.933849, 31.785364>,  <37.082935, 37.317844, 32.273617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694031, 36.933849, 31.785364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819874, 37.272232, 31.613144>,  <36.895382, 37.475262, 31.509811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819874, 37.272232, 31.613144>,  <36.694031, 36.933849, 31.785364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819874, 37.272232, 31.613144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347243, -0.524715, -0.777236,
		-0.883426, 0.095022, -0.458834,
		0.314612, 0.845958, -0.430551,
		36.914257, 37.526020, 31.483978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683067, 36.651524, 31.057144>,  <36.694031, 36.933849, 31.785364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683067, 36.651524, 31.057144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887119, 36.995544, 31.060871>,  <37.009548, 37.201958, 31.063107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887119, 36.995544, 31.060871>,  <36.683067, 36.651524, 31.057144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887119, 36.995544, 31.060871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405995, -0.231235, -0.884137,
		-0.758247, 0.454805, -0.467134,
		0.510127, 0.860048, 0.009315,
		37.040157, 37.253559, 31.063665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526596, 37.048477, 30.384315>,  <36.683067, 36.651524, 31.057144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526596, 37.048477, 30.384315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881088, 37.189686, 30.504299>,  <37.093784, 37.274410, 30.576288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881088, 37.189686, 30.504299>,  <36.526596, 37.048477, 30.384315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881088, 37.189686, 30.504299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404280, -0.273250, -0.872864,
		-0.226175, 0.894824, -0.384881,
		0.886229, 0.353020, 0.299958,
		37.146957, 37.295593, 30.594286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754608, 37.320927, 29.850367>,  <36.526596, 37.048477, 30.384315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754608, 37.320927, 29.850367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089073, 37.287045, 30.067129>,  <37.289753, 37.266716, 30.197187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089073, 37.287045, 30.067129>,  <36.754608, 37.320927, 29.850367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089073, 37.287045, 30.067129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527516, -0.146390, -0.836837,
		0.150214, 0.985594, -0.077722,
		0.836159, -0.084705, 0.541906,
		37.339920, 37.261631, 30.229702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135754, 37.833813, 29.649775>,  <36.754608, 37.320927, 29.850367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135754, 37.833813, 29.649775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400166, 37.551548, 29.751823>,  <37.558811, 37.382191, 29.813053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400166, 37.551548, 29.751823>,  <37.135754, 37.833813, 29.649775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400166, 37.551548, 29.751823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474020, 0.129144, -0.870992,
		0.581677, 0.696681, 0.419865,
		0.661027, -0.705661, 0.255121,
		37.598473, 37.339851, 29.828360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769894, 38.129356, 29.408699>,  <37.135754, 37.833813, 29.649775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769894, 38.129356, 29.408699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828213, 37.743217, 29.495277>,  <37.863205, 37.511536, 29.547224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828213, 37.743217, 29.495277>,  <37.769894, 38.129356, 29.408699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828213, 37.743217, 29.495277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406083, -0.141110, -0.902876,
		0.902131, 0.219530, 0.371438,
		0.145794, -0.965347, 0.216447,
		37.871952, 37.453613, 29.560211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404686, 37.862293, 29.252943>,  <37.769894, 38.129356, 29.408699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404686, 37.862293, 29.252943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208477, 37.513741, 29.256495>,  <38.090752, 37.304607, 29.258625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208477, 37.513741, 29.256495>,  <38.404686, 37.862293, 29.252943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208477, 37.513741, 29.256495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366401, -0.215476, -0.905163,
		0.790657, -0.440750, 0.424972,
		-0.490522, -0.871384, 0.008876,
		38.061321, 37.252327, 29.259157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854664, 37.604572, 28.895321>,  <38.404686, 37.862293, 29.252943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854664, 37.604572, 28.895321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568817, 37.326221, 28.923834>,  <38.397308, 37.159210, 28.940941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568817, 37.326221, 28.923834>,  <38.854664, 37.604572, 28.895321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568817, 37.326221, 28.923834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273935, -0.372152, -0.886827,
		0.643650, -0.614214, 0.456570,
		-0.714615, -0.695877, 0.071281,
		38.354431, 37.117458, 28.945217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214584, 36.901440, 28.795841>,  <38.854664, 37.604572, 28.895321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214584, 36.901440, 28.795841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824276, 36.869225, 28.714460>,  <38.590092, 36.849895, 28.665632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824276, 36.869225, 28.714460>,  <39.214584, 36.901440, 28.795841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824276, 36.869225, 28.714460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217751, -0.449030, -0.866578,
		-0.021561, -0.889879, 0.455687,
		-0.975766, -0.080542, -0.203454,
		38.531548, 36.845062, 28.653423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059139, 36.129765, 28.592247>,  <39.214584, 36.901440, 28.795841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059139, 36.129765, 28.592247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780945, 36.364056, 28.425766>,  <38.614029, 36.504631, 28.325878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780945, 36.364056, 28.425766>,  <39.059139, 36.129765, 28.592247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780945, 36.364056, 28.425766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220433, -0.377379, -0.899441,
		-0.683892, -0.717293, 0.133349,
		-0.695486, 0.585726, -0.416202,
		38.572300, 36.539772, 28.300905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550220, 35.668468, 28.151775>,  <39.059139, 36.129765, 28.592247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550220, 35.668468, 28.151775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493137, 36.042236, 28.021240>,  <38.458885, 36.266495, 27.942919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493137, 36.042236, 28.021240>,  <38.550220, 35.668468, 28.151775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493137, 36.042236, 28.021240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155437, -0.304464, -0.939756,
		-0.977483, -0.184838, -0.101793,
		-0.142710, 0.934418, -0.326339,
		38.450325, 36.322563, 27.923338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045677, 35.618340, 27.585117>,  <38.550220, 35.668468, 28.151775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045677, 35.618340, 27.585117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235416, 35.966797, 27.534342>,  <38.349258, 36.175869, 27.503878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235416, 35.966797, 27.534342>,  <38.045677, 35.618340, 27.585117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235416, 35.966797, 27.534342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098779, -0.090612, -0.990975,
		-0.874779, 0.482604, 0.043068,
		0.474346, 0.871139, -0.126936,
		38.377720, 36.228138, 27.496262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698002, 35.983681, 27.062954>,  <38.045677, 35.618340, 27.585117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698002, 35.983681, 27.062954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060940, 36.151070, 27.079042>,  <38.278702, 36.251503, 27.088696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060940, 36.151070, 27.079042>,  <37.698002, 35.983681, 27.062954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060940, 36.151070, 27.079042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052126, -0.017049, -0.998495,
		-0.417152, 0.908071, -0.037282,
		0.907340, 0.418468, 0.040222,
		38.333141, 36.276611, 27.091108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737560, 36.415665, 26.431578>,  <37.698002, 35.983681, 27.062954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737560, 36.415665, 26.431578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122967, 36.407555, 26.538324>,  <38.354210, 36.402687, 26.602371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122967, 36.407555, 26.538324>,  <37.737560, 36.415665, 26.431578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122967, 36.407555, 26.538324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263396, -0.104889, -0.958969,
		0.047438, 0.994277, -0.095721,
		0.963521, -0.020279, 0.266864,
		38.412022, 36.401470, 26.618383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075119, 36.973801, 25.929178>,  <37.737560, 36.415665, 26.431578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075119, 36.973801, 25.929178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349117, 36.716228, 26.065498>,  <38.513515, 36.561687, 26.147291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349117, 36.716228, 26.065498>,  <38.075119, 36.973801, 25.929178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349117, 36.716228, 26.065498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442638, -0.003712, -0.896693,
		0.578670, 0.765078, 0.282484,
		0.684991, -0.643927, 0.340800,
		38.554615, 36.523048, 26.167738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659512, 37.182480, 25.682343>,  <38.075119, 36.973801, 25.929178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659512, 37.182480, 25.682343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782127, 36.815140, 25.782476>,  <38.855698, 36.594738, 25.842556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782127, 36.815140, 25.782476>,  <38.659512, 37.182480, 25.682343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782127, 36.815140, 25.782476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600099, -0.017689, -0.799730,
		0.738859, 0.395378, 0.545677,
		0.306543, -0.918348, 0.250336,
		38.874092, 36.539635, 25.857576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398056, 37.087341, 25.610184>,  <38.659512, 37.182480, 25.682343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398056, 37.087341, 25.610184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257271, 36.714218, 25.579231>,  <39.172798, 36.490345, 25.560659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257271, 36.714218, 25.579231>,  <39.398056, 37.087341, 25.610184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257271, 36.714218, 25.579231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502250, -0.118452, -0.856572,
		0.789851, -0.340349, 0.510194,
		-0.351966, -0.932809, -0.077381,
		39.151680, 36.434376, 25.556017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065086, 36.619480, 25.461748>,  <39.398056, 37.087341, 25.610184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065086, 36.619480, 25.461748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729507, 36.443130, 25.334124>,  <39.528160, 36.337322, 25.257549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729507, 36.443130, 25.334124>,  <40.065086, 36.619480, 25.461748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729507, 36.443130, 25.334124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472179, -0.298190, -0.829536,
		0.270577, -0.846591, 0.458336,
		-0.838948, -0.440870, -0.319059,
		39.477821, 36.310871, 25.238405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272522, 36.159019, 25.065138>,  <40.065086, 36.619480, 25.461748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272522, 36.159019, 25.065138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889820, 36.102509, 24.963417>,  <39.660198, 36.068604, 24.902384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889820, 36.102509, 24.963417>,  <40.272522, 36.159019, 25.065138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889820, 36.102509, 24.963417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290745, -0.434840, -0.852280,
		0.009826, -0.889356, 0.457109,
		-0.956750, -0.141277, -0.254304,
		39.602795, 36.060127, 24.887125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344837, 35.594090, 24.796255>,  <40.272522, 36.159019, 25.065138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344837, 35.594090, 24.796255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989548, 35.701988, 24.647505>,  <39.776375, 35.766727, 24.558254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989548, 35.701988, 24.647505>,  <40.344837, 35.594090, 24.796255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989548, 35.701988, 24.647505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252090, -0.390539, -0.885398,
		-0.384058, -0.880182, 0.278890,
		-0.888228, 0.269739, -0.371875,
		39.723080, 35.782913, 24.535942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866405, 34.924870, 24.608599>,  <40.344837, 35.594090, 24.796255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866405, 34.924870, 24.608599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776543, 35.255264, 24.401802>,  <39.722626, 35.453499, 24.277725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776543, 35.255264, 24.401802>,  <39.866405, 34.924870, 24.608599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776543, 35.255264, 24.401802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280957, -0.453114, -0.846021,
		-0.933055, -0.335320, -0.130268,
		-0.224661, 0.825983, -0.516990,
		39.709145, 35.503059, 24.246704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483582, 34.653687, 24.099964>,  <39.866405, 34.924870, 24.608599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483582, 34.653687, 24.099964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592869, 35.017143, 23.973652>,  <39.658443, 35.235218, 23.897865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592869, 35.017143, 23.973652>,  <39.483582, 34.653687, 24.099964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592869, 35.017143, 23.973652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343257, -0.398752, -0.850395,
		-0.898624, 0.123951, -0.420846,
		0.273221, 0.908644, -0.315781,
		39.674835, 35.289738, 23.878918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329708, 34.625233, 23.486988>,  <39.483582, 34.653687, 24.099964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329708, 34.625233, 23.486988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597054, 34.922604, 23.477173>,  <39.757462, 35.101025, 23.471283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597054, 34.922604, 23.477173>,  <39.329708, 34.625233, 23.486988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597054, 34.922604, 23.477173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328350, -0.324477, -0.887075,
		-0.667438, 0.584834, -0.460973,
		0.668366, 0.743428, -0.024538,
		39.797562, 35.145634, 23.469810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225506, 34.864929, 22.769102>,  <39.329708, 34.625233, 23.486988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225506, 34.864929, 22.769102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575027, 35.002155, 22.906960>,  <39.784740, 35.084492, 22.989674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575027, 35.002155, 22.906960>,  <39.225506, 34.864929, 22.769102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575027, 35.002155, 22.906960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440973, -0.260265, -0.858956,
		-0.204979, 0.902534, -0.378702,
		0.873800, 0.343065, 0.344645,
		39.837166, 35.105076, 23.010353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422207, 35.239105, 22.267855>,  <39.225506, 34.864929, 22.769102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422207, 35.239105, 22.267855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754707, 35.145687, 22.469637>,  <39.954208, 35.089634, 22.590706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754707, 35.145687, 22.469637>,  <39.422207, 35.239105, 22.267855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754707, 35.145687, 22.469637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461954, -0.214565, -0.860558,
		0.309222, 0.948376, -0.070469,
		0.831252, -0.233550, 0.504454,
		40.004082, 35.075623, 22.620974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942837, 35.647747, 21.949455>,  <39.422207, 35.239105, 22.267855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942837, 35.647747, 21.949455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104546, 35.338661, 22.145205>,  <40.201569, 35.153210, 22.262653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104546, 35.338661, 22.145205>,  <39.942837, 35.647747, 21.949455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104546, 35.338661, 22.145205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551519, -0.220888, -0.804385,
		0.729654, 0.595085, 0.336867,
		0.404267, -0.772711, 0.489373,
		40.225826, 35.106850, 22.292017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610851, 35.789894, 22.081165>,  <39.942837, 35.647747, 21.949455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610851, 35.789894, 22.081165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573147, 35.392448, 22.056385>,  <40.550522, 35.153980, 22.041517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573147, 35.392448, 22.056385>,  <40.610851, 35.789894, 22.081165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573147, 35.392448, 22.056385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613763, -0.009009, -0.789439,
		0.783843, -0.112437, 0.610695,
		-0.094264, -0.993618, -0.061948,
		40.544868, 35.094364, 22.037800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202427, 35.584518, 22.003101>,  <40.610851, 35.789894, 22.081165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202427, 35.584518, 22.003101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991364, 35.274303, 21.864468>,  <40.864727, 35.088173, 21.781288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991364, 35.274303, 21.864468>,  <41.202427, 35.584518, 22.003101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991364, 35.274303, 21.864468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499301, 0.046923, -0.865157,
		0.687226, -0.629553, 0.362469,
		-0.527654, -0.775539, -0.346584,
		40.833069, 35.041641, 21.760492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663097, 34.980480, 21.672298>,  <41.202427, 35.584518, 22.003101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663097, 34.980480, 21.672298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297592, 34.981018, 21.509802>,  <41.078289, 34.981339, 21.412304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297592, 34.981018, 21.509802>,  <41.663097, 34.980480, 21.672298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297592, 34.981018, 21.509802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405616, 0.058533, -0.912167,
		0.022552, -0.998285, -0.054030,
		-0.913765, 0.001344, -0.406240,
		41.023464, 34.981419, 21.387930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725525, 34.733292, 20.934103>,  <41.663097, 34.980480, 21.672298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725525, 34.733292, 20.934103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357597, 34.889423, 20.918222>,  <41.136841, 34.983101, 20.908695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357597, 34.889423, 20.918222>,  <41.725525, 34.733292, 20.934103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357597, 34.889423, 20.918222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185925, 0.344547, -0.920174,
		-0.345494, -0.853774, -0.389493,
		-0.919818, 0.390331, -0.039699,
		41.081654, 35.006523, 20.906313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504723, 34.436409, 20.289848>,  <41.725525, 34.733292, 20.934103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504723, 34.436409, 20.289848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284664, 34.753235, 20.395658>,  <41.152630, 34.943329, 20.459145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284664, 34.753235, 20.395658>,  <41.504723, 34.436409, 20.289848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284664, 34.753235, 20.395658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276541, 0.471701, -0.837271,
		-0.787949, -0.387470, -0.478543,
		-0.550147, 0.792064, 0.264525,
		41.119621, 34.990852, 20.475016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027534, 34.445484, 19.662954>,  <41.504723, 34.436409, 20.289848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027534, 34.445484, 19.662954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041348, 34.799015, 19.849571>,  <41.049633, 35.011131, 19.961542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041348, 34.799015, 19.849571>,  <41.027534, 34.445484, 19.662954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041348, 34.799015, 19.849571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043223, 0.465065, -0.884221,
		-0.998469, 0.050697, -0.022143,
		0.034530, 0.883824, 0.466544,
		41.051708, 35.064163, 19.989534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464764, 34.881062, 19.482727>,  <41.027534, 34.445484, 19.662954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464764, 34.881062, 19.482727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735626, 35.143784, 19.615433>,  <40.898144, 35.301418, 19.695057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735626, 35.143784, 19.615433>,  <40.464764, 34.881062, 19.482727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735626, 35.143784, 19.615433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108740, 0.535236, -0.837674,
		-0.727760, 0.531160, 0.433860,
		0.677156, 0.656804, 0.331765,
		40.938774, 35.340824, 19.714962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174679, 35.584896, 19.379002>,  <40.464764, 34.881062, 19.482727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174679, 35.584896, 19.379002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574448, 35.593159, 19.389862>,  <40.814308, 35.598114, 19.396378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574448, 35.593159, 19.389862>,  <40.174679, 35.584896, 19.379002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574448, 35.593159, 19.389862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009844, 0.587378, -0.809253,
		-0.032662, 0.809049, 0.586833,
		0.999418, 0.020655, 0.027149,
		40.874271, 35.599354, 19.398006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389568, 36.080109, 18.812151>,  <40.174679, 35.584896, 19.379002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389568, 36.080109, 18.812151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416286, 36.445278, 18.651104>,  <40.432320, 36.664379, 18.554476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416286, 36.445278, 18.651104>,  <40.389568, 36.080109, 18.812151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416286, 36.445278, 18.651104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777646, -0.300456, -0.552261,
		-0.625144, -0.276204, -0.730005,
		0.066798, 0.912928, -0.402618,
		40.436325, 36.719158, 18.530319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686600, 36.082977, 18.103666>,  <40.389568, 36.080109, 18.812151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686600, 36.082977, 18.103666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824837, 36.397335, 18.308777>,  <40.907780, 36.585949, 18.431843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824837, 36.397335, 18.308777>,  <40.686600, 36.082977, 18.103666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824837, 36.397335, 18.308777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938378, -0.291493, -0.185683,
		0.003544, 0.545350, -0.838201,
		0.345592, 0.785892, 0.512777,
		40.928513, 36.633102, 18.462610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208633, 36.580753, 17.722754>,  <40.686600, 36.082977, 18.103666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208633, 36.580753, 17.722754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293709, 36.569962, 18.113453>,  <41.344753, 36.563488, 18.347872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293709, 36.569962, 18.113453>,  <41.208633, 36.580753, 17.722754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293709, 36.569962, 18.113453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886102, -0.415967, -0.204438,
		0.411809, 0.908980, -0.064568,
		0.212688, -0.026975, 0.976748,
		41.357513, 36.561871, 18.406477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915394, 36.852367, 17.823967>,  <41.208633, 36.580753, 17.722754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915394, 36.852367, 17.823967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843414, 36.586315, 18.113855>,  <41.800228, 36.426685, 18.287788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843414, 36.586315, 18.113855>,  <41.915394, 36.852367, 17.823967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843414, 36.586315, 18.113855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842914, -0.484042, -0.234943,
		0.507064, 0.568600, 0.647750,
		-0.179950, -0.665129, 0.724722,
		41.789429, 36.386776, 18.331272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457989, 36.814873, 18.305073>,  <41.915394, 36.852367, 17.823967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457989, 36.814873, 18.305073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318596, 36.441772, 18.342030>,  <42.234962, 36.217911, 18.364204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318596, 36.441772, 18.342030>,  <42.457989, 36.814873, 18.305073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318596, 36.441772, 18.342030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923728, -0.358477, -0.134988,
		0.159030, 0.038304, 0.986530,
		-0.348478, -0.932752, 0.092392,
		42.214054, 36.161945, 18.369747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954075, 36.332451, 18.707283>,  <42.457989, 36.814873, 18.305073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954075, 36.332451, 18.707283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749283, 36.096535, 18.457478>,  <42.626408, 35.954983, 18.307594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749283, 36.096535, 18.457478>,  <42.954075, 36.332451, 18.707283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749283, 36.096535, 18.457478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856269, -0.292552, -0.425694,
		0.068369, -0.752700, 0.654803,
		-0.511984, -0.589792, -0.624513,
		42.595688, 35.919598, 18.270124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316078, 35.670349, 18.637264>,  <42.954075, 36.332451, 18.707283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316078, 35.670349, 18.637264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094646, 35.758472, 18.316013>,  <42.961788, 35.811344, 18.123262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094646, 35.758472, 18.316013>,  <43.316078, 35.670349, 18.637264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094646, 35.758472, 18.316013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752366, -0.281181, -0.595720,
		-0.357066, -0.934025, -0.010095,
		-0.553579, 0.220306, -0.803129,
		42.928574, 35.824566, 18.075075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857422, 35.892258, 18.130669>,  <43.316078, 35.670349, 18.637264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857422, 35.892258, 18.130669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897141, 36.290184, 18.139519>,  <43.920971, 36.528938, 18.144829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897141, 36.290184, 18.139519>,  <43.857422, 35.892258, 18.130669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897141, 36.290184, 18.139519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414069, 0.021089, 0.910001,
		0.904813, -0.099519, 0.414015,
		0.099294, 0.994812, 0.022126,
		43.926929, 36.588627, 18.146156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057152, 35.990116, 18.852732>,  <43.857422, 35.892258, 18.130669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057152, 35.990116, 18.852732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903023, 36.326126, 18.699955>,  <43.810543, 36.527733, 18.608290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903023, 36.326126, 18.699955>,  <44.057152, 35.990116, 18.852732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903023, 36.326126, 18.699955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451687, 0.189231, 0.871877,
		0.804675, 0.508476, 0.306513,
		-0.385327, 0.840026, -0.381942,
		43.787426, 36.578133, 18.585373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237831, 36.562019, 19.318367>,  <44.057152, 35.990116, 18.852732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237831, 36.562019, 19.318367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899414, 36.632359, 19.117054>,  <43.696365, 36.674561, 18.996265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899414, 36.632359, 19.117054>,  <44.237831, 36.562019, 19.318367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899414, 36.632359, 19.117054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413543, 0.379312, 0.827711,
		0.336451, 0.908406, -0.248193,
		-0.846039, 0.175846, -0.503285,
		43.645603, 36.685112, 18.966068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985668, 37.352699, 19.281134>,  <44.237831, 36.562019, 19.318367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985668, 37.352699, 19.281134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720741, 37.055813, 19.322044>,  <43.561787, 36.877682, 19.346592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720741, 37.055813, 19.322044>,  <43.985668, 37.352699, 19.281134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720741, 37.055813, 19.322044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336358, 0.416539, 0.844606,
		-0.669480, 0.524992, -0.525528,
		-0.662314, -0.742212, 0.102279,
		43.522049, 36.833149, 19.352728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339207, 37.557713, 19.151489>,  <43.985668, 37.352699, 19.281134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339207, 37.557713, 19.151489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303383, 37.249733, 19.404203>,  <43.281887, 37.064945, 19.555832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303383, 37.249733, 19.404203>,  <43.339207, 37.557713, 19.151489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303383, 37.249733, 19.404203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639060, 0.530963, 0.556490,
		-0.763925, -0.353907, -0.539601,
		-0.089562, -0.769953, 0.631784,
		43.276516, 37.018745, 19.593739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642387, 37.581242, 19.321676>,  <43.339207, 37.557713, 19.151489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642387, 37.581242, 19.321676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792542, 37.371872, 19.627647>,  <42.882633, 37.246250, 19.811230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792542, 37.371872, 19.627647>,  <42.642387, 37.581242, 19.321676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792542, 37.371872, 19.627647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513251, 0.569813, 0.641784,
		-0.771792, -0.633514, -0.054751,
		0.375381, -0.523424, 0.764929,
		42.905155, 37.214844, 19.857126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144444, 37.718620, 19.758266>,  <42.642387, 37.581242, 19.321676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144444, 37.718620, 19.758266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424118, 37.566010, 20.000118>,  <42.591923, 37.474442, 20.145229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424118, 37.566010, 20.000118>,  <42.144444, 37.718620, 19.758266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424118, 37.566010, 20.000118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468572, 0.394206, 0.790596,
		-0.539986, -0.836084, 0.096847,
		0.699182, -0.381531, 0.604631,
		42.633873, 37.451550, 20.181507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824833, 37.342209, 20.271658>,  <42.144444, 37.718620, 19.758266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824833, 37.342209, 20.271658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179218, 37.419323, 20.440372>,  <42.391850, 37.465591, 20.541601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179218, 37.419323, 20.440372>,  <41.824833, 37.342209, 20.271658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179218, 37.419323, 20.440372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459620, 0.243801, 0.853997,
		0.061803, -0.950471, 0.304606,
		0.885963, 0.192782, 0.421788,
		42.445007, 37.477158, 20.566908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741165, 37.042702, 20.928162>,  <41.824833, 37.342209, 20.271658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741165, 37.042702, 20.928162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056587, 37.288036, 20.946039>,  <42.245842, 37.435238, 20.956766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056587, 37.288036, 20.946039>,  <41.741165, 37.042702, 20.928162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056587, 37.288036, 20.946039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304993, 0.326947, 0.894474,
		0.534000, -0.718975, 0.444880,
		0.788557, 0.613335, 0.044693,
		42.293156, 37.472038, 20.959448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127598, 36.954430, 21.695961>,  <41.741165, 37.042702, 20.928162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127598, 36.954430, 21.695961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229465, 37.308178, 21.539478>,  <42.290585, 37.520428, 21.445589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229465, 37.308178, 21.539478>,  <42.127598, 36.954430, 21.695961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229465, 37.308178, 21.539478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271901, 0.453708, 0.848657,
		0.928017, -0.109754, 0.356004,
		0.254665, 0.884366, -0.391206,
		42.305866, 37.573486, 21.422117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377232, 37.184345, 22.304817>,  <42.127598, 36.954430, 21.695961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377232, 37.184345, 22.304817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326210, 37.501057, 22.065880>,  <42.295597, 37.691082, 21.922518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326210, 37.501057, 22.065880>,  <42.377232, 37.184345, 22.304817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326210, 37.501057, 22.065880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184893, 0.572722, 0.798626,
		0.974446, 0.212314, 0.073340,
		-0.127556, 0.791778, -0.597342,
		42.287945, 37.738590, 21.886677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781235, 37.749348, 22.556843>,  <42.377232, 37.184345, 22.304817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781235, 37.749348, 22.556843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472145, 37.898228, 22.351175>,  <42.286694, 37.987556, 22.227774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472145, 37.898228, 22.351175>,  <42.781235, 37.749348, 22.556843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472145, 37.898228, 22.351175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269060, 0.541602, 0.796413,
		0.574901, 0.753747, -0.318362,
		-0.772720, 0.372200, -0.514171,
		42.240330, 38.009888, 22.196924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800537, 38.452320, 22.719837>,  <42.781235, 37.749348, 22.556843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800537, 38.452320, 22.719837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435772, 38.392227, 22.567080>,  <42.216911, 38.356171, 22.475426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435772, 38.392227, 22.567080>,  <42.800537, 38.452320, 22.719837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435772, 38.392227, 22.567080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406183, 0.463163, 0.787715,
		0.058537, 0.873447, -0.483388,
		-0.911915, -0.150234, -0.381892,
		42.162197, 38.347157, 22.452513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491802, 39.075542, 22.854368>,  <42.800537, 38.452320, 22.719837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491802, 39.075542, 22.854368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201130, 38.806366, 22.799105>,  <42.026726, 38.644859, 22.765947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201130, 38.806366, 22.799105>,  <42.491802, 39.075542, 22.854368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201130, 38.806366, 22.799105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554562, 0.455934, 0.696121,
		-0.405456, 0.582476, -0.704505,
		-0.726682, -0.672938, -0.138158,
		41.983124, 38.604485, 22.757658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920338, 39.527622, 22.860228>,  <42.491802, 39.075542, 22.854368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920338, 39.527622, 22.860228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780540, 39.159916, 22.932684>,  <41.696663, 38.939293, 22.976158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780540, 39.159916, 22.932684>,  <41.920338, 39.527622, 22.860228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780540, 39.159916, 22.932684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664163, 0.379437, 0.644139,
		-0.660864, 0.104815, -0.743151,
		-0.349494, -0.919261, 0.181142,
		41.675694, 38.884136, 22.987026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134270, 39.512024, 22.907467>,  <41.920338, 39.527622, 22.860228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134270, 39.512024, 22.907467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219402, 39.161991, 23.081335>,  <41.270481, 38.951973, 23.185656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219402, 39.161991, 23.081335>,  <41.134270, 39.512024, 22.907467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219402, 39.161991, 23.081335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799457, 0.099800, 0.592375,
		-0.561755, -0.473577, -0.678348,
		0.212836, -0.875080, 0.434668,
		41.283253, 38.899467, 23.211735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520382, 39.264137, 23.061563>,  <41.134270, 39.512024, 22.907467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520382, 39.264137, 23.061563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753239, 39.044907, 23.301802>,  <40.892952, 38.913368, 23.445946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753239, 39.044907, 23.301802>,  <40.520382, 39.264137, 23.061563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753239, 39.044907, 23.301802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681256, 0.074436, 0.728251,
		-0.443846, -0.833107, -0.330051,
		0.582143, -0.548080, 0.600597,
		40.927883, 38.880482, 23.481981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035225, 38.803402, 23.366501>,  <40.520382, 39.264137, 23.061563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035225, 38.803402, 23.366501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365788, 38.863605, 23.583534>,  <40.564125, 38.899727, 23.713755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365788, 38.863605, 23.583534>,  <40.035225, 38.803402, 23.366501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365788, 38.863605, 23.583534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558141, 0.091730, 0.824660,
		0.074342, -0.984345, 0.159808,
		0.826409, 0.150502, 0.542584,
		40.613708, 38.908760, 23.746309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930779, 38.350552, 23.992907>,  <40.035225, 38.803402, 23.366501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930779, 38.350552, 23.992907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208057, 38.630821, 24.060472>,  <40.374424, 38.798985, 24.101011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208057, 38.630821, 24.060472>,  <39.930779, 38.350552, 23.992907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208057, 38.630821, 24.060472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369538, 0.144304, 0.917943,
		0.618803, -0.698737, 0.358956,
		0.693199, 0.700673, 0.168914,
		40.416016, 38.841022, 24.111147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191860, 38.197788, 24.804411>,  <39.930779, 38.350552, 23.992907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191860, 38.197788, 24.804411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293888, 38.571453, 24.704580>,  <40.355103, 38.795650, 24.644682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293888, 38.571453, 24.704580>,  <40.191860, 38.197788, 24.804411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293888, 38.571453, 24.704580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254291, 0.313835, 0.914792,
		0.932886, -0.169868, 0.317597,
		0.255067, 0.934159, -0.249576,
		40.370407, 38.851700, 24.629707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570129, 38.355137, 25.295845>,  <40.191860, 38.197788, 24.804411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570129, 38.355137, 25.295845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471088, 38.715263, 25.152672>,  <40.411663, 38.931339, 25.066769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471088, 38.715263, 25.152672>,  <40.570129, 38.355137, 25.295845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471088, 38.715263, 25.152672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233139, 0.303214, 0.923963,
		0.940393, 0.312224, 0.134823,
		-0.247603, 0.900321, -0.357932,
		40.396809, 38.985359, 25.045292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924763, 38.936504, 25.659491>,  <40.570129, 38.355137, 25.295845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924763, 38.936504, 25.659491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578857, 39.080807, 25.519756>,  <40.371315, 39.167389, 25.435915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578857, 39.080807, 25.519756>,  <40.924763, 38.936504, 25.659491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578857, 39.080807, 25.519756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249884, 0.294275, 0.922475,
		0.435591, 0.885017, -0.164331,
		-0.864765, 0.360758, -0.349335,
		40.319427, 39.189034, 25.414955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891148, 39.584137, 25.887093>,  <40.924763, 38.936504, 25.659491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891148, 39.584137, 25.887093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506901, 39.523937, 25.793663>,  <40.276352, 39.487816, 25.737606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506901, 39.523937, 25.793663>,  <40.891148, 39.584137, 25.887093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506901, 39.523937, 25.793663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276602, 0.437984, 0.855372,
		-0.026432, 0.886295, -0.462365,
		-0.960621, -0.150501, -0.233575,
		40.218716, 39.478786, 25.723591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543770, 40.169804, 26.133451>,  <40.891148, 39.584137, 25.887093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543770, 40.169804, 26.133451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240040, 39.916313, 26.074369>,  <40.057800, 39.764221, 26.038921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240040, 39.916313, 26.074369>,  <40.543770, 40.169804, 26.133451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240040, 39.916313, 26.074369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456125, 0.356485, 0.815395,
		-0.464079, 0.686524, -0.559745,
		-0.759329, -0.633721, -0.147704,
		40.012241, 39.726196, 26.030058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926235, 40.605793, 26.092983>,  <40.543770, 40.169804, 26.133451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926235, 40.605793, 26.092983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860615, 40.224747, 26.195444>,  <39.821243, 39.996120, 26.256920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860615, 40.224747, 26.195444>,  <39.926235, 40.605793, 26.092983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860615, 40.224747, 26.195444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325645, 0.297411, 0.897498,
		-0.931151, 0.063824, -0.359006,
		-0.164054, -0.952614, 0.256151,
		39.811398, 39.938961, 26.272289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472500, 40.727940, 26.585659>,  <39.926235, 40.605793, 26.092983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472500, 40.727940, 26.585659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535271, 40.343239, 26.675468>,  <39.572933, 40.112419, 26.729353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535271, 40.343239, 26.675468>,  <39.472500, 40.727940, 26.585659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535271, 40.343239, 26.675468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199651, 0.191751, 0.960922,
		-0.967219, -0.195623, -0.161923,
		0.156930, -0.961750, 0.224522,
		39.582348, 40.054714, 26.742825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990723, 40.564156, 27.069448>,  <39.472500, 40.727940, 26.585659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990723, 40.564156, 27.069448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261299, 40.276054, 27.130966>,  <39.423645, 40.103191, 27.167877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261299, 40.276054, 27.130966>,  <38.990723, 40.564156, 27.069448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261299, 40.276054, 27.130966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166082, 0.054261, 0.984618,
		-0.717524, -0.691581, -0.082917,
		0.676444, -0.720257, 0.153793,
		39.464233, 40.059978, 27.177105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695358, 40.209690, 27.538050>,  <38.990723, 40.564156, 27.069448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695358, 40.209690, 27.538050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072372, 40.086166, 27.589064>,  <39.298580, 40.012054, 27.619673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072372, 40.086166, 27.589064>,  <38.695358, 40.209690, 27.538050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072372, 40.086166, 27.589064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162819, -0.091217, 0.982430,
		-0.291747, -0.946741, -0.136255,
		0.942536, -0.308806, 0.127535,
		39.355133, 39.993526, 27.627325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641880, 39.592972, 28.003925>,  <38.695358, 40.209690, 27.538050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641880, 39.592972, 28.003925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001549, 39.767338, 28.019224>,  <39.217350, 39.871956, 28.028404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001549, 39.767338, 28.019224>,  <38.641880, 39.592972, 28.003925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001549, 39.767338, 28.019224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041567, -0.001926, 0.999134,
		0.435613, -0.899985, 0.016388,
		0.899174, 0.435917, 0.038248,
		39.271301, 39.898113, 28.030699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966709, 39.207169, 28.501705>,  <38.641880, 39.592972, 28.003925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966709, 39.207169, 28.501705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167503, 39.552238, 28.477030>,  <39.287979, 39.759281, 28.462225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167503, 39.552238, 28.477030>,  <38.966709, 39.207169, 28.501705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167503, 39.552238, 28.477030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030441, 0.088907, 0.995575,
		0.864340, -0.497886, 0.070891,
		0.501985, 0.862673, -0.061690,
		39.318100, 39.811039, 28.458523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419624, 39.184090, 29.039499>,  <38.966709, 39.207169, 28.501705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419624, 39.184090, 29.039499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426281, 39.572670, 28.944836>,  <39.430275, 39.805817, 28.888039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426281, 39.572670, 28.944836>,  <39.419624, 39.184090, 29.039499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426281, 39.572670, 28.944836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147044, 0.231739, 0.961600,
		0.988990, -0.050804, -0.138989,
		0.016644, 0.971450, -0.236658,
		39.431274, 39.864105, 28.873838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947239, 39.520527, 29.485100>,  <39.419624, 39.184090, 29.039499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947239, 39.520527, 29.485100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673389, 39.783478, 29.359144>,  <39.509079, 39.941246, 29.283571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673389, 39.783478, 29.359144>,  <39.947239, 39.520527, 29.485100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673389, 39.783478, 29.359144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159846, 0.286086, 0.944777,
		0.711157, 0.697147, -0.090782,
		-0.684620, 0.657373, -0.314889,
		39.468002, 39.980690, 29.264677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920475, 40.053062, 29.968552>,  <39.947239, 39.520527, 29.485100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920475, 40.053062, 29.968552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574387, 40.150467, 29.793238>,  <39.366734, 40.208908, 29.688049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574387, 40.150467, 29.793238>,  <39.920475, 40.053062, 29.968552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574387, 40.150467, 29.793238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378759, 0.255339, 0.889575,
		0.328528, 0.935685, -0.128695,
		-0.865223, 0.243506, -0.438285,
		39.314819, 40.223518, 29.661753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746609, 40.634068, 30.283937>,  <39.920475, 40.053062, 29.968552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746609, 40.634068, 30.283937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400692, 40.535549, 30.108908>,  <39.193142, 40.476440, 30.003891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400692, 40.535549, 30.108908>,  <39.746609, 40.634068, 30.283937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400692, 40.535549, 30.108908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501576, 0.382997, 0.775716,
		-0.023463, 0.890311, -0.454748,
		-0.864795, -0.246292, -0.437572,
		39.141254, 40.461662, 29.977636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298794, 41.310616, 30.361532>,  <39.746609, 40.634068, 30.283937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298794, 41.310616, 30.361532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060520, 40.998077, 30.287069>,  <38.917557, 40.810555, 30.242392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060520, 40.998077, 30.287069>,  <39.298794, 41.310616, 30.361532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060520, 40.998077, 30.287069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645142, 0.327364, 0.690380,
		-0.478485, 0.531349, -0.699086,
		-0.595688, -0.781346, -0.186157,
		38.881813, 40.763672, 30.231222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564140, 41.529808, 30.132914>,  <39.298794, 41.310616, 30.361532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564140, 41.529808, 30.132914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558807, 41.175087, 30.317699>,  <38.555607, 40.962254, 30.428570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558807, 41.175087, 30.317699>,  <38.564140, 41.529808, 30.132914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558807, 41.175087, 30.317699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754456, 0.312120, 0.577389,
		-0.656216, -0.340836, -0.673210,
		-0.013328, -0.886799, 0.461964,
		38.554810, 40.909046, 30.456289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921886, 41.406738, 30.270012>,  <38.564140, 41.529808, 30.132914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921886, 41.406738, 30.270012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080532, 41.118095, 30.496986>,  <38.175720, 40.944908, 30.633171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080532, 41.118095, 30.496986>,  <37.921886, 41.406738, 30.270012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080532, 41.118095, 30.496986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575687, 0.285960, 0.766036,
		-0.715040, -0.630484, -0.302004,
		0.396612, -0.721607, 0.567435,
		38.199516, 40.901615, 30.667217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376732, 41.123463, 30.643141>,  <37.921886, 41.406738, 30.270012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376732, 41.123463, 30.643141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712433, 41.017136, 30.832878>,  <37.913853, 40.953339, 30.946720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712433, 41.017136, 30.832878>,  <37.376732, 41.123463, 30.643141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712433, 41.017136, 30.832878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478402, 0.053655, 0.876500,
		-0.258441, -0.962529, -0.082138,
		0.839249, -0.265819, 0.474342,
		37.964207, 40.937389, 30.975182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239124, 40.539196, 31.049250>,  <37.376732, 41.123463, 30.643141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239124, 40.539196, 31.049250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558163, 40.715168, 31.214323>,  <37.749584, 40.820751, 31.313368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558163, 40.715168, 31.214323>,  <37.239124, 40.539196, 31.049250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558163, 40.715168, 31.214323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527992, 0.178360, 0.830308,
		0.291671, -0.880141, 0.374539,
		0.797592, 0.439931, 0.412686,
		37.797440, 40.847145, 31.338129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331848, 40.102692, 31.617603>,  <37.239124, 40.539196, 31.049250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331848, 40.102692, 31.617603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508968, 40.455280, 31.683256>,  <37.615242, 40.666832, 31.722647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508968, 40.455280, 31.683256>,  <37.331848, 40.102692, 31.617603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508968, 40.455280, 31.683256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282949, -0.036326, 0.958447,
		0.850805, -0.470840, 0.233326,
		0.442800, 0.881470, 0.164130,
		37.641808, 40.719723, 31.732494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460728, 39.993229, 32.266106>,  <37.331848, 40.102692, 31.617603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460728, 39.993229, 32.266106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512508, 40.388241, 32.230259>,  <37.543575, 40.625248, 32.208752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512508, 40.388241, 32.230259>,  <37.460728, 39.993229, 32.266106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512508, 40.388241, 32.230259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464297, 0.140227, 0.874508,
		0.876168, -0.071596, 0.476659,
		0.129451, 0.987527, -0.089621,
		37.551342, 40.684498, 32.203373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891743, 40.245922, 32.788174>,  <37.460728, 39.993229, 32.266106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891743, 40.245922, 32.788174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647900, 40.536831, 32.662029>,  <37.501595, 40.711376, 32.586342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647900, 40.536831, 32.662029>,  <37.891743, 40.245922, 32.788174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647900, 40.536831, 32.662029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375176, 0.085748, 0.922979,
		0.698297, 0.680973, 0.220582,
		-0.609610, 0.727271, -0.315362,
		37.465015, 40.755013, 32.567421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403759, 39.629860, 32.907337>,  <37.891743, 40.245922, 32.788174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403759, 39.629860, 32.907337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698242, 39.637161, 33.177940>,  <38.874931, 39.641541, 33.340302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698242, 39.637161, 33.177940>,  <38.403759, 39.629860, 32.907337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698242, 39.637161, 33.177940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675496, 0.041120, -0.736216,
		-0.041255, 0.998987, 0.017944,
		0.736209, 0.018251, 0.676508,
		38.919106, 39.642635, 33.380894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838306, 40.125732, 32.631027>,  <38.403759, 39.629860, 32.907337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838306, 40.125732, 32.631027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050053, 39.907272, 32.890717>,  <39.177101, 39.776196, 33.046528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050053, 39.907272, 32.890717>,  <38.838306, 40.125732, 32.631027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050053, 39.907272, 32.890717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720101, -0.115366, -0.684211,
		0.448583, 0.829702, 0.332216,
		0.529365, -0.546155, 0.649221,
		39.208862, 39.743427, 33.085484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597206, 40.350441, 32.466331>,  <38.838306, 40.125732, 32.631027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597206, 40.350441, 32.466331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650749, 40.012630, 32.673737>,  <39.682877, 39.809944, 32.798180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650749, 40.012630, 32.673737>,  <39.597206, 40.350441, 32.466331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650749, 40.012630, 32.673737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638084, -0.326878, -0.697137,
		0.758242, 0.424170, 0.495126,
		0.133859, -0.844530, 0.518508,
		39.690907, 39.759270, 32.829288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265648, 40.332359, 32.478539>,  <39.597206, 40.350441, 32.466331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265648, 40.332359, 32.478539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092247, 39.974930, 32.525185>,  <39.988205, 39.760471, 32.553173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092247, 39.974930, 32.525185>,  <40.265648, 40.332359, 32.478539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092247, 39.974930, 32.525185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477845, -0.337651, -0.810959,
		0.764027, -0.295831, 0.573364,
		-0.433504, -0.893574, 0.116613,
		39.962196, 39.706856, 32.560169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861546, 39.964218, 32.383972>,  <40.265648, 40.332359, 32.478539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861546, 39.964218, 32.383972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560787, 39.718170, 32.289078>,  <40.380333, 39.570541, 32.232140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560787, 39.718170, 32.289078>,  <40.861546, 39.964218, 32.383972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560787, 39.718170, 32.289078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548545, -0.384086, -0.742682,
		0.365717, -0.688556, 0.626213,
		-0.751898, -0.615117, -0.237237,
		40.335217, 39.533634, 32.217907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185093, 39.365070, 32.242146>,  <40.861546, 39.964218, 32.383972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185093, 39.365070, 32.242146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832737, 39.318233, 32.058701>,  <40.621323, 39.290131, 31.948633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832737, 39.318233, 32.058701>,  <41.185093, 39.365070, 32.242146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832737, 39.318233, 32.058701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454142, -0.482148, -0.749192,
		-0.133395, -0.868230, 0.477895,
		-0.880886, -0.117094, -0.458616,
		40.568470, 39.283104, 31.921116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240593, 38.670563, 32.088154>,  <41.185093, 39.365070, 32.242146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240593, 38.670563, 32.088154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957752, 38.838322, 31.860434>,  <40.788048, 38.938976, 31.723801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957752, 38.838322, 31.860434>,  <41.240593, 38.670563, 32.088154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957752, 38.838322, 31.860434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348723, -0.493561, -0.796737,
		-0.615137, -0.761906, 0.202745,
		-0.707106, 0.419401, -0.569302,
		40.745621, 38.964142, 31.689644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045963, 38.191803, 31.585943>,  <41.240593, 38.670563, 32.088154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045963, 38.191803, 31.585943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941860, 38.541962, 31.423002>,  <40.879398, 38.752056, 31.325237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941860, 38.541962, 31.423002>,  <41.045963, 38.191803, 31.585943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941860, 38.541962, 31.423002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400618, -0.285958, -0.870479,
		-0.878504, -0.389745, -0.276277,
		-0.260261, 0.875401, -0.407354,
		40.863781, 38.804581, 31.300797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711193, 37.985119, 31.054140>,  <41.045963, 38.191803, 31.585943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711193, 37.985119, 31.054140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857544, 38.353016, 30.997272>,  <40.945354, 38.573753, 30.963152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857544, 38.353016, 30.997272>,  <40.711193, 37.985119, 31.054140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857544, 38.353016, 30.997272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384277, -0.288431, -0.877005,
		-0.847622, 0.266247, -0.458966,
		0.365880, 0.919739, -0.142168,
		40.967308, 38.628937, 30.954622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561211, 38.057636, 30.349895>,  <40.711193, 37.985119, 31.054140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561211, 38.057636, 30.349895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833282, 38.337070, 30.438747>,  <40.996525, 38.504730, 30.492058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833282, 38.337070, 30.438747>,  <40.561211, 38.057636, 30.349895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833282, 38.337070, 30.438747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474218, -0.188254, -0.860045,
		-0.558996, 0.690321, -0.459327,
		0.680177, 0.698583, 0.222129,
		41.037334, 38.546646, 30.505386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529236, 38.492523, 29.741472>,  <40.561211, 38.057636, 30.349895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529236, 38.492523, 29.741472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879459, 38.549904, 29.926003>,  <41.089592, 38.584332, 30.036720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879459, 38.549904, 29.926003>,  <40.529236, 38.492523, 29.741472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879459, 38.549904, 29.926003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458250, 0.055786, -0.887071,
		-0.152987, 0.988084, -0.016893,
		0.875558, 0.143451, 0.461324,
		41.142128, 38.592937, 30.064400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768333, 39.130211, 29.477249>,  <40.529236, 38.492523, 29.741472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768333, 39.130211, 29.477249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089592, 38.949841, 29.633003>,  <41.282349, 38.841618, 29.726456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089592, 38.949841, 29.633003>,  <40.768333, 39.130211, 29.477249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089592, 38.949841, 29.633003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541071, 0.278472, -0.793533,
		0.249389, 0.848010, 0.467636,
		0.803148, -0.450923, 0.389386,
		41.330536, 38.814564, 29.749819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420536, 39.651855, 29.490021>,  <40.768333, 39.130211, 29.477249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420536, 39.651855, 29.490021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569908, 39.282421, 29.524763>,  <41.659531, 39.060760, 29.545609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569908, 39.282421, 29.524763>,  <41.420536, 39.651855, 29.490021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569908, 39.282421, 29.524763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572852, 0.155949, -0.804686,
		0.729650, 0.350250, 0.587313,
		0.373432, -0.923583, 0.086854,
		41.681938, 39.005348, 29.550819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187508, 39.664585, 29.320675>,  <41.420536, 39.651855, 29.490021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187508, 39.664585, 29.320675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087635, 39.279755, 29.276739>,  <42.027710, 39.048855, 29.250378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087635, 39.279755, 29.276739>,  <42.187508, 39.664585, 29.320675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087635, 39.279755, 29.276739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458226, -0.017462, -0.888664,
		0.853046, -0.272215, 0.445209,
		-0.249682, -0.962078, -0.109840,
		42.012730, 38.991131, 29.243788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821827, 39.326252, 29.033165>,  <42.187508, 39.664585, 29.320675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821827, 39.326252, 29.033165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492638, 39.113216, 28.954105>,  <42.295124, 38.985397, 28.906670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492638, 39.113216, 28.954105>,  <42.821827, 39.326252, 29.033165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492638, 39.113216, 28.954105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353303, -0.207399, -0.912229,
		0.444849, -0.820571, 0.358849,
		-0.822974, -0.532587, -0.197649,
		42.245747, 38.953442, 28.894810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102943, 38.917156, 28.572519>,  <42.821827, 39.326252, 29.033165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102943, 38.917156, 28.572519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707794, 38.876949, 28.525169>,  <42.470707, 38.852825, 28.496759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707794, 38.876949, 28.525169>,  <43.102943, 38.917156, 28.572519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707794, 38.876949, 28.525169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123539, -0.046803, -0.991235,
		0.094093, -0.993834, 0.058653,
		-0.987869, -0.100514, -0.118374,
		42.411434, 38.846794, 28.489656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983425, 38.299427, 28.156626>,  <43.102943, 38.917156, 28.572519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983425, 38.299427, 28.156626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647938, 38.508923, 28.096962>,  <42.446644, 38.634621, 28.061165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647938, 38.508923, 28.096962>,  <42.983425, 38.299427, 28.156626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647938, 38.508923, 28.096962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108284, -0.108036, -0.988232,
		-0.533691, -0.845000, 0.033899,
		-0.838719, 0.523740, -0.149158,
		42.396324, 38.666046, 28.052216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614517, 37.753578, 27.871799>,  <42.983425, 38.299427, 28.156626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614517, 37.753578, 27.871799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478237, 38.118999, 27.782942>,  <42.396469, 38.338253, 27.729628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478237, 38.118999, 27.782942>,  <42.614517, 37.753578, 27.871799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478237, 38.118999, 27.782942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204395, -0.158656, -0.965946,
		-0.917684, -0.374506, -0.132670,
		-0.340703, 0.913550, -0.222144,
		42.376026, 38.393063, 27.716299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964741, 37.790398, 27.439505>,  <42.614517, 37.753578, 27.871799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964741, 37.790398, 27.439505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146942, 38.142788, 27.388279>,  <42.256264, 38.354221, 27.357544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146942, 38.142788, 27.388279>,  <41.964741, 37.790398, 27.439505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146942, 38.142788, 27.388279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092692, -0.190008, -0.977397,
		-0.885394, 0.433339, -0.168209,
		0.455505, 0.880973, -0.128065,
		42.283592, 38.407082, 27.349859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627640, 38.007290, 26.775640>,  <41.964741, 37.790398, 27.439505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627640, 38.007290, 26.775640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969322, 38.208260, 26.829170>,  <42.174332, 38.328842, 26.861288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969322, 38.208260, 26.829170>,  <41.627640, 38.007290, 26.775640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969322, 38.208260, 26.829170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136989, 0.030814, -0.990093,
		-0.501571, 0.864072, -0.042505,
		0.854202, 0.502424, 0.133824,
		42.225582, 38.358986, 26.869318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685276, 38.489071, 26.218302>,  <41.627640, 38.007290, 26.775640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685276, 38.489071, 26.218302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057941, 38.490406, 26.363625>,  <42.281540, 38.491207, 26.450819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057941, 38.490406, 26.363625>,  <41.685276, 38.489071, 26.218302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057941, 38.490406, 26.363625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361238, 0.098463, -0.927261,
		-0.038863, 0.995135, 0.090530,
		0.931663, 0.003333, 0.363307,
		42.337440, 38.491405, 26.472616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016346, 39.097996, 25.955456>,  <41.685276, 38.489071, 26.218302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016346, 39.097996, 25.955456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334759, 38.866646, 26.026812>,  <42.525806, 38.727837, 26.069626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334759, 38.866646, 26.026812>,  <42.016346, 39.097996, 25.955456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334759, 38.866646, 26.026812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240658, 0.032015, -0.970082,
		0.555358, 0.815144, 0.164675,
		0.796028, -0.578373, 0.178391,
		42.573566, 38.693134, 26.080328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607056, 39.278301, 25.419880>,  <42.016346, 39.097996, 25.955456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607056, 39.278301, 25.419880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687538, 38.912586, 25.560509>,  <42.735828, 38.693157, 25.644886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687538, 38.912586, 25.560509>,  <42.607056, 39.278301, 25.419880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687538, 38.912586, 25.560509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435710, -0.237917, -0.868074,
		0.877310, 0.327844, 0.350492,
		0.201205, -0.914283, 0.351572,
		42.747898, 38.638302, 25.665981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160400, 39.144829, 25.014772>,  <42.607056, 39.278301, 25.419880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160400, 39.144829, 25.014772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062725, 38.791145, 25.174047>,  <43.004120, 38.578938, 25.269613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062725, 38.791145, 25.174047>,  <43.160400, 39.144829, 25.014772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062725, 38.791145, 25.174047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321712, -0.461230, -0.826903,
		0.914809, -0.073815, 0.397084,
		-0.244185, -0.884205, 0.398190,
		42.989471, 38.525883, 25.293505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667461, 38.695400, 24.806629>,  <43.160400, 39.144829, 25.014772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667461, 38.695400, 24.806629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370937, 38.438793, 24.885542>,  <43.193024, 38.284828, 24.932890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370937, 38.438793, 24.885542>,  <43.667461, 38.695400, 24.806629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370937, 38.438793, 24.885542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320055, -0.596253, -0.736239,
		0.589940, -0.482637, 0.647327,
		-0.741307, -0.641517, 0.197282,
		43.148544, 38.246338, 24.944727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994667, 37.986149, 24.861641>,  <43.667461, 38.695400, 24.806629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994667, 37.986149, 24.861641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607056, 37.927448, 24.782190>,  <43.374489, 37.892227, 24.734520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607056, 37.927448, 24.782190>,  <43.994667, 37.986149, 24.861641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607056, 37.927448, 24.782190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245783, -0.651432, -0.717793,
		-0.024055, -0.744379, 0.667324,
		-0.969027, -0.146750, -0.198626,
		43.316349, 37.883423, 24.722603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856808, 37.318066, 24.953184>,  <43.994667, 37.986149, 24.861641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856808, 37.318066, 24.953184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548336, 37.410107, 24.715754>,  <43.363251, 37.465332, 24.573296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548336, 37.410107, 24.715754>,  <43.856808, 37.318066, 24.953184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548336, 37.410107, 24.715754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252622, -0.745230, -0.617102,
		-0.584346, -0.625848, 0.516580,
		-0.771182, 0.230101, -0.593575,
		43.316982, 37.479137, 24.537682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259678, 36.758915, 24.965990>,  <43.856808, 37.318066, 24.953184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259678, 36.758915, 24.965990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253235, 36.974728, 24.629265>,  <43.249371, 37.104214, 24.427229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253235, 36.974728, 24.629265>,  <43.259678, 36.758915, 24.965990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253235, 36.974728, 24.629265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303875, -0.799459, -0.518194,
		-0.952576, -0.264151, -0.151074,
		-0.016104, 0.539527, -0.841814,
		43.248405, 37.136585, 24.376720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891743, 36.307671, 24.535200>,  <43.259678, 36.758915, 24.965990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891743, 36.307671, 24.535200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053509, 36.557373, 24.267843>,  <43.150570, 36.707195, 24.107430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053509, 36.557373, 24.267843>,  <42.891743, 36.307671, 24.535200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053509, 36.557373, 24.267843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206495, -0.774278, -0.598208,
		-0.890959, 0.103904, -0.442036,
		0.404415, 0.624258, -0.668394,
		43.174831, 36.744652, 24.067326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605473, 36.147453, 23.806610>,  <42.891743, 36.307671, 24.535200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605473, 36.147453, 23.806610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948505, 36.350376, 23.772696>,  <43.154327, 36.472130, 23.752346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948505, 36.350376, 23.772696>,  <42.605473, 36.147453, 23.806610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948505, 36.350376, 23.772696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311439, -0.643361, -0.699352,
		-0.409334, 0.573347, -0.709731,
		0.857585, 0.507306, -0.084787,
		43.205780, 36.502567, 23.747259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671680, 36.256451, 23.123276>,  <42.605473, 36.147453, 23.806610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671680, 36.256451, 23.123276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051151, 36.323494, 23.230545>,  <43.278835, 36.363720, 23.294907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051151, 36.323494, 23.230545>,  <42.671680, 36.256451, 23.123276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051151, 36.323494, 23.230545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314258, -0.404718, -0.858746,
		-0.035401, 0.898949, -0.436620,
		0.948677, 0.167612, 0.268175,
		43.335754, 36.373779, 23.310997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068787, 36.430832, 22.499111>,  <42.671680, 36.256451, 23.123276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068787, 36.430832, 22.499111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364136, 36.325996, 22.747665>,  <43.541344, 36.263096, 22.896797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364136, 36.325996, 22.747665>,  <43.068787, 36.430832, 22.499111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364136, 36.325996, 22.747665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432382, -0.523123, -0.734430,
		0.517547, 0.810957, -0.272935,
		0.738370, -0.262090, 0.621385,
		43.585648, 36.247368, 22.934080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731693, 36.697399, 22.266047>,  <43.068787, 36.430832, 22.499111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731693, 36.697399, 22.266047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834827, 36.383854, 22.491995>,  <43.896706, 36.195724, 22.627563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834827, 36.383854, 22.491995>,  <43.731693, 36.697399, 22.266047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834827, 36.383854, 22.491995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511021, -0.385535, -0.768258,
		0.819988, 0.486741, 0.301169,
		0.257831, -0.783866, 0.564869,
		43.912178, 36.148693, 22.661455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395927, 36.513569, 22.075397>,  <43.731693, 36.697399, 22.266047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395927, 36.513569, 22.075397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301300, 36.203739, 22.310028>,  <44.244526, 36.017841, 22.450808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301300, 36.203739, 22.310028>,  <44.395927, 36.513569, 22.075397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301300, 36.203739, 22.310028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429865, -0.624852, -0.651748,
		0.871351, 0.097969, 0.480780,
		-0.236566, -0.774572, 0.586579,
		44.230331, 35.971367, 22.486002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980541, 36.166550, 22.104727>,  <44.395927, 36.513569, 22.075397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980541, 36.166550, 22.104727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705463, 35.896252, 22.210901>,  <44.540417, 35.734074, 22.274607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705463, 35.896252, 22.210901>,  <44.980541, 36.166550, 22.104727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705463, 35.896252, 22.210901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488203, -0.701028, -0.519825,
		0.537345, -0.227891, 0.811989,
		-0.687690, -0.675741, 0.265437,
		44.499157, 35.693531, 22.290533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403606, 35.643242, 22.243042>,  <44.980541, 36.166550, 22.104727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403606, 35.643242, 22.243042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041283, 35.514515, 22.132805>,  <44.823891, 35.437279, 22.066664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041283, 35.514515, 22.132805>,  <45.403606, 35.643242, 22.243042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041283, 35.514515, 22.132805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411703, -0.514891, -0.751923,
		0.100081, -0.794558, 0.598884,
		-0.905806, -0.321815, -0.275591,
		44.769543, 35.417969, 22.050127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477467, 34.905441, 22.200426>,  <45.403606, 35.643242, 22.243042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477467, 34.905441, 22.200426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147655, 34.997326, 21.993587>,  <44.949768, 35.052456, 21.869484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147655, 34.997326, 21.993587>,  <45.477467, 34.905441, 22.200426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147655, 34.997326, 21.993587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270840, -0.642159, -0.717132,
		-0.496791, -0.731345, 0.467262,
		-0.824527, 0.229711, -0.517096,
		44.900299, 35.066238, 21.838459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305573, 34.260956, 21.938961>,  <45.477467, 34.905441, 22.200426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305573, 34.260956, 21.938961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110794, 34.521442, 21.706135>,  <44.993927, 34.677734, 21.566439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110794, 34.521442, 21.706135>,  <45.305573, 34.260956, 21.938961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110794, 34.521442, 21.706135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225927, -0.549820, -0.804149,
		-0.843705, -0.523083, 0.120607,
		-0.486949, 0.651216, -0.582064,
		44.964710, 34.716808, 21.531515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773926, 33.885303, 21.345289>,  <45.305573, 34.260956, 21.938961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773926, 33.885303, 21.345289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033459, 33.623848, 21.501123>,  <46.189178, 33.466976, 21.594624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033459, 33.623848, 21.501123>,  <45.773926, 33.885303, 21.345289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033459, 33.623848, 21.501123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434606, 0.101936, 0.894833,
		-0.624607, -0.749914, -0.217935,
		0.648832, -0.653635, 0.389587,
		46.228107, 33.427757, 21.618000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406090, 33.496597, 21.885567>,  <45.773926, 33.885303, 21.345289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406090, 33.496597, 21.885567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792393, 33.455200, 21.980734>,  <46.024174, 33.430363, 22.037834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792393, 33.455200, 21.980734>,  <45.406090, 33.496597, 21.885567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792393, 33.455200, 21.980734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191373, 0.335054, 0.922559,
		-0.175196, -0.936498, 0.303774,
		0.965755, -0.103495, 0.237920,
		46.082119, 33.424152, 22.052111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496326, 33.133846, 22.532820>,  <45.406090, 33.496597, 21.885567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496326, 33.133846, 22.532820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855873, 33.303307, 22.488007>,  <46.071602, 33.404984, 22.461119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855873, 33.303307, 22.488007>,  <45.496326, 33.133846, 22.532820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855873, 33.303307, 22.488007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038570, 0.331150, 0.942790,
		0.436516, -0.843123, 0.314001,
		0.898869, 0.423654, -0.112033,
		46.125534, 33.430401, 22.454397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878227, 32.930931, 23.015219>,  <45.496326, 33.133846, 22.532820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878227, 32.930931, 23.015219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082066, 33.261879, 22.920759>,  <46.204369, 33.460449, 22.864084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082066, 33.261879, 22.920759>,  <45.878227, 32.930931, 23.015219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082066, 33.261879, 22.920759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003125, 0.272678, 0.962100,
		0.860410, -0.491018, 0.136369,
		0.509593, 0.827374, -0.236149,
		46.234943, 33.510090, 22.849915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264824, 32.980530, 23.674450>,  <45.878227, 32.930931, 23.015219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264824, 32.980530, 23.674450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.305435, 33.331280, 23.486498>,  <46.329803, 33.541729, 23.373728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.305435, 33.331280, 23.486498>,  <46.264824, 32.980530, 23.674450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.305435, 33.331280, 23.486498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101826, 0.478998, 0.871890,
		0.989608, -0.040678, 0.137922,
		0.101531, 0.876873, -0.469878,
		46.335896, 33.594341, 23.345535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.614281, 33.538723, 24.147089>,  <46.264824, 32.980530, 23.674450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.614281, 33.538723, 24.147089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464737, 33.782009, 23.867004>,  <46.375011, 33.927982, 23.698954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464737, 33.782009, 23.867004>,  <46.614281, 33.538723, 24.147089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464737, 33.782009, 23.867004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252899, 0.659502, 0.707884,
		0.892339, 0.441734, -0.092745,
		-0.373862, 0.608218, -0.700213,
		46.352577, 33.964474, 23.656940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950863, 34.270222, 24.218412>,  <46.614281, 33.538723, 24.147089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950863, 34.270222, 24.218412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586479, 34.303410, 24.056789>,  <46.367847, 34.323322, 23.959816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586479, 34.303410, 24.056789>,  <46.950863, 34.270222, 24.218412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586479, 34.303410, 24.056789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284314, 0.583408, 0.760790,
		0.298851, 0.807931, -0.507874,
		-0.910963, 0.082967, -0.404058,
		46.313190, 34.328300, 23.935572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.825027, 34.979168, 24.204481>,  <46.950863, 34.270222, 24.218412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.825027, 34.979168, 24.204481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470867, 34.807259, 24.133659>,  <46.258369, 34.704113, 24.091166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470867, 34.807259, 24.133659>,  <46.825027, 34.979168, 24.204481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470867, 34.807259, 24.133659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426562, 0.599947, 0.676837,
		-0.184666, 0.674800, -0.714524,
		-0.885405, -0.429778, -0.177054,
		46.205246, 34.678326, 24.080544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363159, 35.501671, 24.172344>,  <46.825027, 34.979168, 24.204481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363159, 35.501671, 24.172344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127296, 35.190849, 24.260420>,  <45.985779, 35.004356, 24.313265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127296, 35.190849, 24.260420>,  <46.363159, 35.501671, 24.172344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127296, 35.190849, 24.260420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316799, 0.473312, 0.821958,
		-0.742926, 0.414921, -0.525264,
		-0.589661, -0.777057, 0.220189,
		45.950397, 34.957733, 24.326477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746822, 35.730415, 24.278347>,  <46.363159, 35.501671, 24.172344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746822, 35.730415, 24.278347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746311, 35.385349, 24.480654>,  <45.746006, 35.178310, 24.602037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746311, 35.385349, 24.480654>,  <45.746822, 35.730415, 24.278347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746311, 35.385349, 24.480654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383520, 0.467515, 0.796456,
		-0.923531, -0.192958, -0.331446,
		-0.001274, -0.862669, 0.505768,
		45.745930, 35.126549, 24.632383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039989, 35.614845, 24.533245>,  <45.746822, 35.730415, 24.278347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039989, 35.614845, 24.533245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266987, 35.377785, 24.761879>,  <45.403187, 35.235550, 24.899059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266987, 35.377785, 24.761879>,  <45.039989, 35.614845, 24.533245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266987, 35.377785, 24.761879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411755, 0.396890, 0.820327,
		-0.713025, -0.700886, -0.018794,
		0.567496, -0.592652, 0.571586,
		45.437237, 35.199989, 24.933355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579559, 35.170788, 25.001945>,  <45.039989, 35.614845, 24.533245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579559, 35.170788, 25.001945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940308, 35.192387, 25.173391>,  <45.156757, 35.205345, 25.276258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940308, 35.192387, 25.173391>,  <44.579559, 35.170788, 25.001945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940308, 35.192387, 25.173391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430220, 0.202297, 0.879765,
		-0.039203, -0.977834, 0.205676,
		0.901873, 0.053997, 0.428614,
		45.210869, 35.208588, 25.301975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538521, 34.713360, 25.686905>,  <44.579559, 35.170788, 25.001945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538521, 34.713360, 25.686905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836132, 34.978374, 25.721491>,  <45.014698, 35.137383, 25.742243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836132, 34.978374, 25.721491>,  <44.538521, 34.713360, 25.686905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836132, 34.978374, 25.721491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383564, 0.317570, 0.867196,
		0.547088, -0.678380, 0.490404,
		0.744025, 0.662534, 0.086464,
		45.059341, 35.177135, 25.747431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691982, 34.655529, 26.378338>,  <44.538521, 34.713360, 25.686905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691982, 34.655529, 26.378338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886246, 34.989067, 26.273386>,  <45.002804, 35.189190, 26.210415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886246, 34.989067, 26.273386>,  <44.691982, 34.655529, 26.378338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886246, 34.989067, 26.273386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167937, 0.383560, 0.908118,
		0.857868, -0.396969, 0.326311,
		0.485654, 0.833845, -0.262378,
		45.031940, 35.239220, 26.194672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052204, 34.767994, 26.965475>,  <44.691982, 34.655529, 26.378338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.052204, 34.767994, 26.965475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057159, 35.120766, 26.776985>,  <45.060131, 35.332428, 26.663891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057159, 35.120766, 26.776985>,  <45.052204, 34.767994, 26.965475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057159, 35.120766, 26.776985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152372, 0.467420, 0.870805,
		0.988246, 0.061014, 0.140171,
		0.012388, 0.881927, -0.471223,
		45.060875, 35.385345, 26.635618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470196, 35.217014, 27.384771>,  <45.052204, 34.767994, 26.965475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470196, 35.217014, 27.384771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209682, 35.430756, 27.169258>,  <45.053375, 35.559002, 27.039949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209682, 35.430756, 27.169258>,  <45.470196, 35.217014, 27.384771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209682, 35.430756, 27.169258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358213, 0.409432, 0.839076,
		0.668963, 0.739478, -0.075243,
		-0.651285, 0.534358, -0.538785,
		45.014297, 35.591064, 27.007622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345776, 35.796482, 27.796860>,  <45.470196, 35.217014, 27.384771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345776, 35.796482, 27.796860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022839, 35.793430, 27.560846>,  <44.829075, 35.791599, 27.419237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022839, 35.793430, 27.560846>,  <45.345776, 35.796482, 27.796860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022839, 35.793430, 27.560846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516463, 0.492790, 0.700303,
		0.285421, 0.870115, -0.401790,
		-0.807342, -0.007628, -0.590035,
		44.780636, 35.791142, 27.383837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181026, 36.506084, 27.824490>,  <45.345776, 35.796482, 27.796860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181026, 36.506084, 27.824490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853531, 36.325031, 27.683182>,  <44.657036, 36.216400, 27.598398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853531, 36.325031, 27.683182>,  <45.181026, 36.506084, 27.824490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853531, 36.325031, 27.683182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556827, 0.475844, 0.680820,
		-0.140061, 0.754120, -0.641628,
		-0.818735, -0.452632, -0.353267,
		44.607910, 36.189243, 27.577202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764828, 37.034004, 27.679722>,  <45.181026, 36.506084, 27.824490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764828, 37.034004, 27.679722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537910, 36.707321, 27.721991>,  <44.401760, 36.511311, 27.747353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.537910, 36.707321, 27.721991>,  <44.764828, 37.034004, 27.679722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537910, 36.707321, 27.721991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542258, 0.467026, 0.698458,
		-0.619789, 0.338927, -0.707807,
		-0.567290, -0.816710, 0.105672,
		44.367722, 36.462307, 27.753693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031818, 37.266663, 27.570505>,  <44.764828, 37.034004, 27.679722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031818, 37.266663, 27.570505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045109, 36.927170, 27.781614>,  <44.053085, 36.723473, 27.908279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045109, 36.927170, 27.781614>,  <44.031818, 37.266663, 27.570505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045109, 36.927170, 27.781614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542091, 0.428337, 0.722955,
		-0.839663, -0.310126, -0.445857,
		0.033230, -0.848734, 0.527775,
		44.055077, 36.672550, 27.939947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359898, 37.265789, 27.911602>,  <44.031818, 37.266663, 27.570505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359898, 37.265789, 27.911602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568287, 36.988907, 28.111374>,  <43.693321, 36.822777, 28.231237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568287, 36.988907, 28.111374>,  <43.359898, 37.265789, 27.911602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568287, 36.988907, 28.111374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303797, 0.396421, 0.866347,
		-0.797678, -0.603072, -0.003765,
		0.520977, -0.692210, 0.499428,
		43.724579, 36.781242, 28.261202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956825, 36.970814, 28.402641>,  <43.359898, 37.265789, 27.911602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956825, 36.970814, 28.402641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317562, 36.895542, 28.558218>,  <43.534004, 36.850380, 28.651564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317562, 36.895542, 28.558218>,  <42.956825, 36.970814, 28.402641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317562, 36.895542, 28.558218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314925, 0.330018, 0.889894,
		-0.295819, -0.925028, 0.238360,
		0.901839, -0.188182, 0.388940,
		43.588116, 36.839088, 28.674900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940365, 36.412666, 28.922623>,  <42.956825, 36.970814, 28.402641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940365, 36.412666, 28.922623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283169, 36.590797, 29.026331>,  <43.488850, 36.697678, 29.088556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283169, 36.590797, 29.026331>,  <42.940365, 36.412666, 28.922623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283169, 36.590797, 29.026331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397461, 0.251032, 0.882614,
		0.327974, -0.859454, 0.392138,
		0.857005, 0.445334, 0.259267,
		43.540272, 36.724396, 29.104113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114635, 36.195194, 29.635109>,  <42.940365, 36.412666, 28.922623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114635, 36.195194, 29.635109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320755, 36.535275, 29.591965>,  <43.444427, 36.739323, 29.566078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320755, 36.535275, 29.591965>,  <43.114635, 36.195194, 29.635109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320755, 36.535275, 29.591965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172371, 0.226101, 0.958732,
		0.839499, -0.475438, 0.263058,
		0.515295, 0.850198, -0.107860,
		43.475342, 36.790333, 29.559607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670006, 36.219173, 30.162237>,  <43.114635, 36.195194, 29.635109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670006, 36.219173, 30.162237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615974, 36.598953, 30.048893>,  <43.583553, 36.826820, 29.980886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615974, 36.598953, 30.048893>,  <43.670006, 36.219173, 30.162237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615974, 36.598953, 30.048893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015568, 0.287980, 0.957510,
		0.990712, 0.124931, -0.053682,
		-0.135082, 0.949452, -0.283360,
		43.575451, 36.883789, 29.963884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058239, 36.534298, 30.605101>,  <43.670006, 36.219173, 30.162237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058239, 36.534298, 30.605101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853630, 36.843178, 30.454340>,  <43.730865, 37.028507, 30.363884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853630, 36.843178, 30.454340>,  <44.058239, 36.534298, 30.605101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853630, 36.843178, 30.454340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179081, 0.333192, 0.925696,
		0.840402, 0.541009, -0.032149,
		-0.511522, 0.772200, -0.376900,
		43.700172, 37.074837, 30.341270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277298, 37.245831, 30.950542>,  <44.058239, 36.534298, 30.605101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277298, 37.245831, 30.950542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898098, 37.259083, 30.823925>,  <43.670578, 37.267033, 30.747955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898098, 37.259083, 30.823925>,  <44.277298, 37.245831, 30.950542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898098, 37.259083, 30.823925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257713, 0.503722, 0.824529,
		0.186766, 0.863230, -0.468991,
		-0.947999, 0.033129, -0.316544,
		43.613697, 37.269020, 30.728962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103165, 37.911110, 30.966114>,  <44.277298, 37.245831, 30.950542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103165, 37.911110, 30.966114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742836, 37.739944, 30.995556>,  <43.526638, 37.637245, 31.013222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742836, 37.739944, 30.995556>,  <44.103165, 37.911110, 30.966114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742836, 37.739944, 30.995556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262707, 0.672113, 0.692278,
		-0.345706, 0.604280, -0.717867,
		-0.900818, -0.427914, 0.073605,
		43.472591, 37.611572, 31.017637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680534, 38.476753, 31.079922>,  <44.103165, 37.911110, 30.966114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680534, 38.476753, 31.079922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456966, 38.155087, 31.160843>,  <43.322826, 37.962086, 31.209394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456966, 38.155087, 31.160843>,  <43.680534, 38.476753, 31.079922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456966, 38.155087, 31.160843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594937, 0.558833, 0.577716,
		-0.577632, 0.202541, -0.790771,
		-0.558920, -0.804166, 0.202301,
		43.289291, 37.913837, 31.221533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059193, 38.742107, 31.260275>,  <43.680534, 38.476753, 31.079922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059193, 38.742107, 31.260275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037598, 38.369331, 31.403704>,  <43.024639, 38.145664, 31.489761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037598, 38.369331, 31.403704>,  <43.059193, 38.742107, 31.260275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037598, 38.369331, 31.403704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522357, 0.332400, 0.785273,
		-0.851016, -0.144906, -0.504751,
		-0.053988, -0.931940, 0.358570,
		43.021400, 38.089748, 31.511274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313755, 38.513107, 31.464693>,  <43.059193, 38.742107, 31.260275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313755, 38.513107, 31.464693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565079, 38.296627, 31.688236>,  <42.715874, 38.166737, 31.822361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565079, 38.296627, 31.688236>,  <42.313755, 38.513107, 31.464693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565079, 38.296627, 31.688236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593385, 0.131171, 0.794159,
		-0.503109, -0.830597, -0.238727,
		0.628312, -0.541206, 0.558857,
		42.753571, 38.134266, 31.855894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804314, 38.134933, 31.957676>,  <42.313755, 38.513107, 31.464693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804314, 38.134933, 31.957676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177223, 38.125973, 32.102097>,  <42.400970, 38.120598, 32.188747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177223, 38.125973, 32.102097>,  <41.804314, 38.134933, 31.957676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177223, 38.125973, 32.102097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347086, 0.225848, 0.910233,
		-0.101934, -0.973905, 0.202778,
		0.932277, -0.022403, 0.361050,
		42.456905, 38.119251, 32.210411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763641, 37.679249, 32.586441>,  <41.804314, 38.134933, 31.957676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763641, 37.679249, 32.586441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107422, 37.874462, 32.647331>,  <42.313690, 37.991589, 32.683865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107422, 37.874462, 32.647331>,  <41.763641, 37.679249, 32.586441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107422, 37.874462, 32.647331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269337, 0.179164, 0.946233,
		0.434517, -0.854240, 0.285427,
		0.859449, 0.488030, 0.152229,
		42.365257, 38.020870, 32.693001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012016, 37.422520, 33.211502>,  <41.763641, 37.679249, 32.586441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012016, 37.422520, 33.211502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195530, 37.773075, 33.152912>,  <42.305637, 37.983410, 33.117760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195530, 37.773075, 33.152912>,  <42.012016, 37.422520, 33.211502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195530, 37.773075, 33.152912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058067, 0.194063, 0.979269,
		0.886646, -0.440772, 0.139923,
		0.458788, 0.876390, -0.146470,
		42.333168, 38.035992, 33.108971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424370, 37.493488, 33.725212>,  <42.012016, 37.422520, 33.211502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424370, 37.493488, 33.725212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456398, 37.873768, 33.605366>,  <42.475613, 38.101936, 33.533459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456398, 37.873768, 33.605366>,  <42.424370, 37.493488, 33.725212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456398, 37.873768, 33.605366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072011, 0.294278, 0.953003,
		0.994185, -0.097879, -0.044899,
		0.080066, 0.950695, -0.299615,
		42.480419, 38.158978, 33.515480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922440, 37.881256, 34.092098>,  <42.424370, 37.493488, 33.725212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922440, 37.881256, 34.092098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667797, 38.160919, 33.961918>,  <42.515011, 38.328716, 33.883808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667797, 38.160919, 33.961918>,  <42.922440, 37.881256, 34.092098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667797, 38.160919, 33.961918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164122, 0.289519, 0.942997,
		0.753526, 0.653727, -0.069561,
		-0.636602, 0.699156, -0.325451,
		42.476818, 38.370667, 33.864281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139488, 38.415180, 34.451511>,  <42.922440, 37.881256, 34.092098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139488, 38.415180, 34.451511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784008, 38.532516, 34.310562>,  <42.570721, 38.602917, 34.225990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784008, 38.532516, 34.310562>,  <43.139488, 38.415180, 34.451511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784008, 38.532516, 34.310562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168022, 0.506717, 0.845581,
		0.426598, 0.810672, -0.401030,
		-0.888697, 0.293341, -0.352375,
		42.517399, 38.620518, 34.204849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096115, 39.111515, 34.629883>,  <43.139488, 38.415180, 34.451511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096115, 39.111515, 34.629883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729641, 38.959854, 34.577961>,  <42.509758, 38.868858, 34.546806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729641, 38.959854, 34.577961>,  <43.096115, 39.111515, 34.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729641, 38.959854, 34.577961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291489, 0.408174, 0.865117,
		-0.275023, 0.830446, -0.484481,
		-0.916186, -0.379149, -0.129808,
		42.454784, 38.846111, 34.539017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678436, 39.646477, 34.707321>,  <43.096115, 39.111515, 34.629883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678436, 39.646477, 34.707321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446560, 39.325768, 34.765450>,  <42.307434, 39.133343, 34.800327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446560, 39.325768, 34.765450>,  <42.678436, 39.646477, 34.707321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446560, 39.325768, 34.765450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281409, 0.364364, 0.887721,
		-0.764699, 0.473710, -0.436845,
		-0.579693, -0.801771, 0.145323,
		42.272652, 39.085236, 34.809048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938675, 39.879230, 34.826054>,  <42.678436, 39.646477, 34.707321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938675, 39.879230, 34.826054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978210, 39.515091, 34.986797>,  <42.001934, 39.296608, 35.083244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978210, 39.515091, 34.986797>,  <41.938675, 39.879230, 34.826054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978210, 39.515091, 34.986797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315432, 0.354351, 0.880306,
		-0.943787, -0.213770, -0.252130,
		0.098840, -0.910351, 0.401861,
		42.007862, 39.241985, 35.107357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540550, 39.919724, 35.398453>,  <41.938675, 39.879230, 34.826054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540550, 39.919724, 35.398453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758026, 39.596085, 35.487690>,  <41.888512, 39.401901, 35.541233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758026, 39.596085, 35.487690>,  <41.540550, 39.919724, 35.398453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758026, 39.596085, 35.487690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102157, 0.200036, 0.974448,
		-0.833048, -0.552584, 0.026102,
		0.543686, -0.809096, 0.223091,
		41.921131, 39.353355, 35.554619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166626, 39.665886, 35.905651>,  <41.540550, 39.919724, 35.398453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166626, 39.665886, 35.905651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525467, 39.494049, 35.946934>,  <41.740772, 39.390945, 35.971703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525467, 39.494049, 35.946934>,  <41.166626, 39.665886, 35.905651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525467, 39.494049, 35.946934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065609, 0.101466, 0.992673,
		-0.436918, -0.897303, 0.062841,
		0.897105, -0.429594, 0.103203,
		41.794598, 39.365170, 35.977894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018818, 39.171932, 36.399216>,  <41.166626, 39.665886, 35.905651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018818, 39.171932, 36.399216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412903, 39.240387, 36.402527>,  <41.649353, 39.281460, 36.404514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412903, 39.240387, 36.402527>,  <41.018818, 39.171932, 36.399216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412903, 39.240387, 36.402527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022516, 0.081447, 0.996423,
		0.169851, -0.981875, 0.084096,
		0.985213, 0.171137, 0.008274,
		41.708466, 39.291729, 36.405010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202545, 38.897934, 36.996872>,  <41.018818, 39.171932, 36.399216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202545, 38.897934, 36.996872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542816, 39.095905, 36.926010>,  <41.746979, 39.214687, 36.883492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542816, 39.095905, 36.926010>,  <41.202545, 38.897934, 36.996872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542816, 39.095905, 36.926010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086028, 0.201395, 0.975725,
		0.518596, -0.845271, 0.128745,
		0.850681, 0.494932, -0.177159,
		41.798019, 39.244385, 36.872864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695763, 38.719814, 37.517181>,  <41.202545, 38.897934, 36.996872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695763, 38.719814, 37.517181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802029, 39.081291, 37.382858>,  <41.865788, 39.298176, 37.302265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802029, 39.081291, 37.382858>,  <41.695763, 38.719814, 37.517181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802029, 39.081291, 37.382858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169414, 0.299144, 0.939048,
		0.949063, -0.306363, -0.073625,
		0.265665, 0.903690, -0.335808,
		41.881729, 39.352398, 37.282116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348534, 38.905910, 37.908894>,  <41.695763, 38.719814, 37.517181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348534, 38.905910, 37.908894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170631, 39.231953, 37.760406>,  <42.063889, 39.427578, 37.671314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170631, 39.231953, 37.760406>,  <42.348534, 38.905910, 37.908894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170631, 39.231953, 37.760406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074852, 0.446843, 0.891475,
		0.892519, 0.368703, -0.259748,
		-0.444756, 0.815101, -0.371218,
		42.037205, 39.476482, 37.649040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719765, 39.408077, 38.254169>,  <42.348534, 38.905910, 37.908894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719765, 39.408077, 38.254169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388538, 39.595802, 38.131496>,  <42.189804, 39.708439, 38.057892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388538, 39.595802, 38.131496>,  <42.719765, 39.408077, 38.254169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388538, 39.595802, 38.131496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011000, 0.560527, 0.828063,
		0.560527, 0.682315, -0.469314,
		-0.828063, 0.469314, -0.306685,
		42.140118, 39.736595, 38.039490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802231, 40.090309, 38.386959>,  <42.719765, 39.408077, 38.254169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802231, 40.090309, 38.386959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408272, 40.022118, 38.374844>,  <42.171898, 39.981201, 38.367573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408272, 40.022118, 38.374844>,  <42.802231, 40.090309, 38.386959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408272, 40.022118, 38.374844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124470, 0.575475, 0.808292,
		-0.120369, 0.799853, -0.588002,
		-0.984895, -0.170482, -0.030289,
		42.112804, 39.970974, 38.365757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541298, 40.736717, 38.641586>,  <42.802231, 40.090309, 38.386959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541298, 40.736717, 38.641586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256001, 40.458328, 38.674816>,  <42.084820, 40.291294, 38.694752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256001, 40.458328, 38.674816>,  <42.541298, 40.736717, 38.641586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256001, 40.458328, 38.674816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326808, 0.435062, 0.838998,
		-0.620060, 0.571266, -0.537756,
		-0.713248, -0.695971, 0.083070,
		42.042027, 40.249538, 38.699738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938324, 41.092659, 38.636562>,  <42.541298, 40.736717, 38.641586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938324, 41.092659, 38.636562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888950, 40.742928, 38.824318>,  <41.859325, 40.533089, 38.936970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888950, 40.742928, 38.824318>,  <41.938324, 41.092659, 38.636562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888950, 40.742928, 38.824318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322460, 0.482671, 0.814278,
		-0.938501, -0.050850, -0.341511,
		-0.123431, -0.874325, 0.469384,
		41.851921, 40.480629, 38.965134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567104, 41.333672, 39.217655>,  <41.938324, 41.092659, 38.636562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567104, 41.333672, 39.217655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673649, 40.953072, 39.279243>,  <41.737576, 40.724712, 39.316196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673649, 40.953072, 39.279243>,  <41.567104, 41.333672, 39.217655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673649, 40.953072, 39.279243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283601, 0.075299, 0.955981,
		-0.921205, -0.298306, -0.249788,
		0.266366, -0.951495, 0.153966,
		41.753559, 40.667622, 39.325432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156906, 41.397533, 39.677494>,  <41.567104, 41.333672, 39.217655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156906, 41.397533, 39.677494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344730, 41.045567, 39.706516>,  <41.457424, 40.834389, 39.723930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344730, 41.045567, 39.706516>,  <41.156906, 41.397533, 39.677494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344730, 41.045567, 39.706516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284752, -0.073149, 0.955806,
		-0.835719, -0.469471, -0.284905,
		0.469564, -0.879913, 0.072551,
		41.485600, 40.781593, 39.728283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699455, 40.931549, 39.918167>,  <41.156906, 41.397533, 39.677494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699455, 40.931549, 39.918167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063301, 40.818497, 40.039963>,  <41.281609, 40.750664, 40.113041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063301, 40.818497, 40.039963>,  <40.699455, 40.931549, 39.918167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063301, 40.818497, 40.039963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359328, -0.167371, 0.918080,
		-0.208523, -0.944512, -0.253803,
		0.909616, -0.282639, 0.304489,
		41.336185, 40.733707, 40.131310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761177, 40.171715, 40.212032>,  <40.699455, 40.931549, 39.918167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761177, 40.171715, 40.212032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027081, 40.416843, 40.382935>,  <41.186623, 40.563919, 40.485477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027081, 40.416843, 40.382935>,  <40.761177, 40.171715, 40.212032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027081, 40.416843, 40.382935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351445, -0.248147, 0.902723,
		0.659232, -0.750247, 0.050417,
		0.664755, 0.612823, 0.427258,
		41.226505, 40.600689, 40.511112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866261, 39.887718, 40.760029>,  <40.761177, 40.171715, 40.212032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866261, 39.887718, 40.760029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031811, 40.240139, 40.851639>,  <41.131142, 40.451591, 40.906605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031811, 40.240139, 40.851639>,  <40.866261, 39.887718, 40.760029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031811, 40.240139, 40.851639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405017, -0.047102, 0.913095,
		0.815273, -0.470667, 0.337347,
		0.413873, 0.881053, 0.229030,
		41.155972, 40.504456, 40.920349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371944, 39.808609, 41.257618>,  <40.866261, 39.887718, 40.760029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371944, 39.808609, 41.257618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252811, 40.189602, 41.283154>,  <41.181332, 40.418198, 41.298473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252811, 40.189602, 41.283154>,  <41.371944, 39.808609, 41.257618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252811, 40.189602, 41.283154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205143, -0.129168, 0.970171,
		0.932316, 0.275851, 0.233865,
		-0.297831, 0.952482, 0.063837,
		41.163464, 40.475346, 41.302303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439102, 39.983730, 41.923176>,  <41.371944, 39.808609, 41.257618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439102, 39.983730, 41.923176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237793, 40.315922, 41.827667>,  <41.117008, 40.515236, 41.770363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237793, 40.315922, 41.827667>,  <41.439102, 39.983730, 41.923176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237793, 40.315922, 41.827667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225612, 0.140451, 0.964040,
		0.834153, 0.539050, 0.116681,
		-0.503277, 0.830481, -0.238773,
		41.086811, 40.565067, 41.756035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666126, 40.491241, 42.397663>,  <41.439102, 39.983730, 41.923176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666126, 40.491241, 42.397663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309856, 40.620193, 42.269428>,  <41.096096, 40.697567, 42.192490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309856, 40.620193, 42.269428>,  <41.666126, 40.491241, 42.397663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309856, 40.620193, 42.269428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308902, 0.088280, 0.946988,
		0.333594, 0.942484, 0.020956,
		-0.890671, 0.322383, -0.320585,
		41.042656, 40.716908, 42.173252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508354, 41.235683, 42.590652>,  <41.666126, 40.491241, 42.397663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508354, 41.235683, 42.590652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161011, 41.047222, 42.528732>,  <40.952606, 40.934143, 42.491581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161011, 41.047222, 42.528732>,  <41.508354, 41.235683, 42.590652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161011, 41.047222, 42.528732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298682, 0.247661, 0.921657,
		-0.395905, 0.846567, -0.355785,
		-0.868359, -0.471156, -0.154804,
		40.900501, 40.905876, 42.482292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985085, 41.739418, 42.872200>,  <41.508354, 41.235683, 42.590652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985085, 41.739418, 42.872200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848701, 41.363625, 42.858822>,  <40.766872, 41.138149, 42.850796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848701, 41.363625, 42.858822>,  <40.985085, 41.739418, 42.872200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848701, 41.363625, 42.858822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383003, 0.106338, 0.917606,
		-0.858518, 0.325678, -0.396082,
		-0.340962, -0.939482, -0.033443,
		40.746414, 41.081779, 42.848789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150387, 41.672218, 43.017029>,  <40.985085, 41.739418, 42.872200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150387, 41.672218, 43.017029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405872, 41.388130, 43.135445>,  <40.559162, 41.217678, 43.206493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405872, 41.388130, 43.135445>,  <40.150387, 41.672218, 43.017029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405872, 41.388130, 43.135445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201302, 0.217104, 0.955167,
		-0.742649, -0.669667, -0.004303,
		0.638710, -0.710219, 0.296038,
		40.597485, 41.175064, 43.224255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826847, 41.102570, 43.438053>,  <40.150387, 41.672218, 43.017029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826847, 41.102570, 43.438053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208561, 41.181126, 43.528187>,  <40.437588, 41.228260, 43.582268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208561, 41.181126, 43.528187>,  <39.826847, 41.102570, 43.438053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208561, 41.181126, 43.528187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276986, 0.297619, 0.913620,
		0.112362, -0.934266, 0.338410,
		0.954282, 0.196391, 0.225337,
		40.494846, 41.240044, 43.595787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922188, 40.792858, 44.071091>,  <39.826847, 41.102570, 43.438053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922188, 40.792858, 44.071091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197880, 41.078121, 44.019917>,  <40.363297, 41.249279, 43.989212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197880, 41.078121, 44.019917>,  <39.922188, 40.792858, 44.071091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197880, 41.078121, 44.019917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026620, 0.201376, 0.979152,
		0.724055, -0.671454, 0.157778,
		0.689228, 0.713160, -0.127933,
		40.404648, 41.292068, 43.981537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548630, 40.436050, 43.809963>,  <39.922188, 40.792858, 44.071091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548630, 40.436050, 43.809963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214706, 40.465740, 43.591759>,  <40.014351, 40.483555, 43.460835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214706, 40.465740, 43.591759>,  <40.548630, 40.436050, 43.809963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214706, 40.465740, 43.591759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535272, 0.341162, -0.772717,
		0.128750, -0.937069, -0.324538,
		-0.834810, 0.074229, -0.545512,
		39.964264, 40.488010, 43.428104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636848, 40.032200, 43.101803>,  <40.548630, 40.436050, 43.809963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636848, 40.032200, 43.101803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379921, 40.338734, 43.106815>,  <40.225765, 40.522655, 43.109825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379921, 40.338734, 43.106815>,  <40.636848, 40.032200, 43.101803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379921, 40.338734, 43.106815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300872, 0.267156, -0.915480,
		-0.704911, -0.584261, -0.402168,
		-0.642321, 0.766333, 0.012534,
		40.187225, 40.568634, 43.110577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219982, 40.040623, 42.503151>,  <40.636848, 40.032200, 43.101803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219982, 40.040623, 42.503151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245663, 40.424538, 42.612473>,  <40.261070, 40.654884, 42.678066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245663, 40.424538, 42.612473>,  <40.219982, 40.040623, 42.503151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245663, 40.424538, 42.612473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399317, 0.226278, -0.888450,
		-0.914562, 0.166172, -0.368731,
		0.064200, 0.959784, 0.273300,
		40.264923, 40.712471, 42.694462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776127, 40.484707, 42.047710>,  <40.219982, 40.040623, 42.503151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776127, 40.484707, 42.047710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120213, 40.631908, 42.188908>,  <40.326664, 40.720230, 42.273624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120213, 40.631908, 42.188908>,  <39.776127, 40.484707, 42.047710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120213, 40.631908, 42.188908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367993, 0.031201, -0.929305,
		-0.353001, 0.929301, -0.108584,
		0.860216, 0.368004, 0.352990,
		40.378277, 40.742310, 42.294804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851376, 41.108665, 41.767887>,  <39.776127, 40.484707, 42.047710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851376, 41.108665, 41.767887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216736, 40.991806, 41.881268>,  <40.435951, 40.921692, 41.949295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216736, 40.991806, 41.881268>,  <39.851376, 41.108665, 41.767887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216736, 40.991806, 41.881268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292833, -0.012083, -0.956087,
		0.282745, 0.956296, 0.074514,
		0.913402, -0.292149, 0.283451,
		40.490757, 40.904160, 41.966305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271049, 41.555382, 41.387920>,  <39.851376, 41.108665, 41.767887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271049, 41.555382, 41.387920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510952, 41.258972, 41.508701>,  <40.654896, 41.081127, 41.581169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510952, 41.258972, 41.508701>,  <40.271049, 41.555382, 41.387920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510952, 41.258972, 41.508701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491399, 0.043274, -0.869859,
		0.631519, 0.670083, 0.390093,
		0.599758, -0.741024, 0.301950,
		40.690880, 41.036667, 41.599285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826908, 41.626549, 41.003757>,  <40.271049, 41.555382, 41.387920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826908, 41.626549, 41.003757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951870, 41.289841, 41.179863>,  <41.026848, 41.087818, 41.285526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951870, 41.289841, 41.179863>,  <40.826908, 41.626549, 41.003757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951870, 41.289841, 41.179863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661940, -0.139513, -0.736458,
		0.681348, 0.521503, 0.513614,
		0.312409, -0.841766, 0.440261,
		41.045593, 41.037312, 41.311943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529770, 41.760361, 41.068466>,  <40.826908, 41.626549, 41.003757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529770, 41.760361, 41.068466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442448, 41.370010, 41.068047>,  <41.390057, 41.135799, 41.067795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442448, 41.370010, 41.068047>,  <41.529770, 41.760361, 41.068466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442448, 41.370010, 41.068047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531585, -0.118016, -0.838743,
		0.818389, -0.183656, 0.544527,
		-0.218303, -0.975881, -0.001046,
		41.376957, 41.077248, 41.067734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109013, 41.421677, 41.060726>,  <41.529770, 41.760361, 41.068466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109013, 41.421677, 41.060726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835880, 41.185284, 40.888920>,  <41.672001, 41.043449, 40.785835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835880, 41.185284, 40.888920>,  <42.109013, 41.421677, 41.060726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835880, 41.185284, 40.888920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556233, -0.039389, -0.830092,
		0.473653, -0.805721, 0.355621,
		-0.682830, -0.590984, -0.429512,
		41.631031, 41.007988, 40.760067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398624, 40.707981, 40.861668>,  <42.109013, 41.421677, 41.060726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398624, 40.707981, 40.861668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074471, 40.788506, 40.641575>,  <41.879978, 40.836819, 40.509521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074471, 40.788506, 40.641575>,  <42.398624, 40.707981, 40.861668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074471, 40.788506, 40.641575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560122, -0.009304, -0.828358,
		-0.171877, -0.979483, -0.105219,
		-0.810384, 0.201311, -0.550229,
		41.831356, 40.848900, 40.476505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133801, 40.051655, 40.486156>,  <42.398624, 40.707981, 40.861668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133801, 40.051655, 40.486156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030823, 40.393650, 40.306057>,  <41.969036, 40.598846, 40.197998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030823, 40.393650, 40.306057>,  <42.133801, 40.051655, 40.486156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030823, 40.393650, 40.306057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513500, -0.273669, -0.813280,
		-0.818560, -0.440577, -0.368580,
		-0.257443, 0.854984, -0.450251,
		41.953590, 40.650146, 40.170982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836674, 39.540726, 39.939987>,  <42.133801, 40.051655, 40.486156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836674, 39.540726, 39.939987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643585, 39.827553, 39.738873>,  <41.527733, 39.999649, 39.618202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643585, 39.827553, 39.738873>,  <41.836674, 39.540726, 39.939987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643585, 39.827553, 39.738873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538097, -0.210112, -0.816275,
		-0.690965, -0.664582, -0.284425,
		-0.482720, 0.717066, -0.502790,
		41.498768, 40.042671, 39.588036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513012, 39.220966, 39.414936>,  <41.836674, 39.540726, 39.939987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513012, 39.220966, 39.414936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597729, 39.591286, 39.289692>,  <41.648560, 39.813477, 39.214546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597729, 39.591286, 39.289692>,  <41.513012, 39.220966, 39.414936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597729, 39.591286, 39.289692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303419, -0.366838, -0.879413,
		-0.929021, 0.091250, -0.358599,
		0.211794, 0.925799, -0.313113,
		41.661266, 39.869026, 39.195759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162319, 39.279724, 38.803146>,  <41.513012, 39.220966, 39.414936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162319, 39.279724, 38.803146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419113, 39.585155, 38.775429>,  <41.573189, 39.768414, 38.758801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419113, 39.585155, 38.775429>,  <41.162319, 39.279724, 38.803146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419113, 39.585155, 38.775429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180096, -0.238023, -0.954416,
		-0.745265, 0.600244, -0.290325,
		0.641986, 0.763579, -0.069289,
		41.611710, 39.814228, 38.754642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841057, 39.872021, 38.937832>,  <41.162319, 39.279724, 38.803146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841057, 39.872021, 38.937832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585827, 39.807800, 38.636612>,  <40.432690, 39.769268, 38.455879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585827, 39.807800, 38.636612>,  <40.841057, 39.872021, 38.937832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585827, 39.807800, 38.636612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502779, 0.653851, -0.565413,
		0.583160, -0.739393, -0.336484,
		-0.638073, -0.160550, -0.753051,
		40.394405, 39.759636, 38.410698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853928, 39.741959, 38.295391>,  <40.841057, 39.872021, 38.937832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853928, 39.741959, 38.295391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240314, 39.845280, 38.300896>,  <41.472145, 39.907272, 38.304199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240314, 39.845280, 38.300896>,  <40.853928, 39.741959, 38.295391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240314, 39.845280, 38.300896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072570, -0.219561, -0.972896,
		-0.248285, 0.940782, -0.230834,
		0.965965, 0.258307, 0.013759,
		41.530106, 39.922771, 38.305023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011211, 40.343475, 37.752941>,  <40.853928, 39.741959, 38.295391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011211, 40.343475, 37.752941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345509, 40.143684, 37.844196>,  <41.546089, 40.023811, 37.898949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345509, 40.143684, 37.844196>,  <41.011211, 40.343475, 37.752941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345509, 40.143684, 37.844196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260108, -0.005806, -0.965562,
		0.483602, 0.866307, 0.125066,
		0.835747, -0.499478, 0.228141,
		41.596233, 39.993839, 37.912640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686928, 40.700600, 37.421219>,  <41.011211, 40.343475, 37.752941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686928, 40.700600, 37.421219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713573, 40.306309, 37.483059>,  <41.729561, 40.069733, 37.520164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713573, 40.306309, 37.483059>,  <41.686928, 40.700600, 37.421219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713573, 40.306309, 37.483059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218263, -0.136800, -0.966254,
		0.973614, 0.098109, 0.206035,
		0.066612, -0.985728, 0.154604,
		41.733559, 40.010590, 37.529442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035446, 40.524414, 36.713493>,  <41.686928, 40.700600, 37.421219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035446, 40.524414, 36.713493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005741, 40.169582, 36.895737>,  <41.987919, 39.956684, 37.005081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005741, 40.169582, 36.895737>,  <42.035446, 40.524414, 36.713493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005741, 40.169582, 36.895737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318347, -0.454049, -0.832163,
		0.945062, 0.083245, 0.316116,
		-0.074259, -0.887079, 0.455605,
		41.983463, 39.903458, 37.032417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674305, 40.068714, 36.662746>,  <42.035446, 40.524414, 36.713493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674305, 40.068714, 36.662746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378811, 39.801090, 36.695312>,  <42.201515, 39.640514, 36.714851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378811, 39.801090, 36.695312>,  <42.674305, 40.068714, 36.662746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378811, 39.801090, 36.695312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287603, -0.422166, -0.859686,
		0.609557, -0.611661, 0.504292,
		-0.738732, -0.669064, 0.081418,
		42.157192, 39.600372, 36.719738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024445, 39.412022, 36.529060>,  <42.674305, 40.068714, 36.662746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024445, 39.412022, 36.529060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630508, 39.363628, 36.479343>,  <42.394146, 39.334591, 36.449512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630508, 39.363628, 36.479343>,  <43.024445, 39.412022, 36.529060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630508, 39.363628, 36.479343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163609, -0.410038, -0.897274,
		0.057595, -0.904008, 0.423617,
		-0.984843, -0.120986, -0.124288,
		42.335056, 39.327332, 36.442059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945385, 38.785614, 36.071999>,  <43.024445, 39.412022, 36.529060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945385, 38.785614, 36.071999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585430, 38.959343, 36.056179>,  <42.369457, 39.063580, 36.046688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585430, 38.959343, 36.056179>,  <42.945385, 38.785614, 36.071999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585430, 38.959343, 36.056179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160933, -0.414992, -0.895479,
		-0.405317, -0.799477, 0.443345,
		-0.899899, 0.434301, -0.039541,
		42.315464, 39.089638, 36.044315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542679, 38.244873, 35.871033>,  <42.945385, 38.785614, 36.071999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542679, 38.244873, 35.871033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378372, 38.597317, 35.777294>,  <42.279785, 38.808781, 35.721050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378372, 38.597317, 35.777294>,  <42.542679, 38.244873, 35.871033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378372, 38.597317, 35.777294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296967, -0.372314, -0.879314,
		-0.862019, -0.291604, 0.414596,
		-0.410771, 0.881107, -0.234345,
		42.255142, 38.861649, 35.706989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420212, 38.503716, 36.454754>,  <42.542679, 38.244873, 35.871033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420212, 38.503716, 36.454754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338364, 38.114693, 36.499039>,  <42.289257, 37.881279, 36.525612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338364, 38.114693, 36.499039>,  <42.420212, 38.503716, 36.454754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338364, 38.114693, 36.499039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884332, -0.135184, 0.446857,
		-0.419629, 0.189343, 0.887728,
		-0.204616, -0.972561, 0.110715,
		42.276978, 37.822926, 36.532253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263920, 38.226807, 37.080177>,  <42.420212, 38.503716, 36.454754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263920, 38.226807, 37.080177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420467, 37.912762, 36.888168>,  <42.514397, 37.724335, 36.772964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420467, 37.912762, 36.888168>,  <42.263920, 38.226807, 37.080177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420467, 37.912762, 36.888168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723116, -0.060235, 0.688095,
		-0.569149, -0.616411, 0.544156,
		0.391373, -0.785117, -0.480019,
		42.537880, 37.677227, 36.744164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254452, 37.737301, 37.519894>,  <42.263920, 38.226807, 37.080177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254452, 37.737301, 37.519894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541443, 37.679329, 37.247360>,  <42.713638, 37.644547, 37.083839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541443, 37.679329, 37.247360>,  <42.254452, 37.737301, 37.519894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541443, 37.679329, 37.247360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688935, 0.003133, 0.724817,
		-0.102911, -0.989437, 0.102093,
		0.717480, -0.144927, -0.681335,
		42.756687, 37.635849, 37.042961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028252, 36.984253, 37.448715>,  <42.254452, 37.737301, 37.519894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028252, 36.984253, 37.448715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892040, 36.755890, 37.149891>,  <41.810314, 36.618874, 36.970596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892040, 36.755890, 37.149891>,  <42.028252, 36.984253, 37.448715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892040, 36.755890, 37.149891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643639, 0.437658, -0.627841,
		0.685398, -0.694638, 0.218423,
		-0.340528, -0.570906, -0.747066,
		41.789883, 36.584618, 36.925770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580608, 36.919357, 38.045227>,  <42.028252, 36.984253, 37.448715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580608, 36.919357, 38.045227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938103, 37.095673, 38.011871>,  <43.152599, 37.201462, 37.991859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938103, 37.095673, 38.011871>,  <42.580608, 36.919357, 38.045227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938103, 37.095673, 38.011871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399345, -0.866414, -0.299753,
		-0.204373, 0.234599, -0.950366,
		0.893731, 0.440785, -0.083385,
		43.206223, 37.227909, 37.986855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733318, 36.973293, 37.320568>,  <42.580608, 36.919357, 38.045227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733318, 36.973293, 37.320568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058216, 36.972149, 37.553894>,  <43.253155, 36.971462, 37.693890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058216, 36.972149, 37.553894>,  <42.733318, 36.973293, 37.320568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058216, 36.972149, 37.553894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274171, -0.880775, -0.386090,
		0.514870, 0.473526, -0.714620,
		0.812243, -0.002858, 0.583312,
		43.301888, 36.971291, 37.728889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296787, 37.020161, 36.887455>,  <42.733318, 36.973293, 37.320568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296787, 37.020161, 36.887455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331448, 36.833668, 37.239616>,  <43.352242, 36.721771, 37.450912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331448, 36.833668, 37.239616>,  <43.296787, 37.020161, 36.887455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331448, 36.833668, 37.239616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380817, -0.801117, -0.461724,
		0.920581, 0.375282, 0.108135,
		0.086649, -0.466234, 0.880408,
		43.357441, 36.693798, 37.503738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025467, 36.802277, 37.044876>,  <43.296787, 37.020161, 36.887455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025467, 36.802277, 37.044876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754322, 36.558125, 37.208797>,  <43.591633, 36.411633, 37.307152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754322, 36.558125, 37.208797>,  <44.025467, 36.802277, 37.044876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754322, 36.558125, 37.208797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439575, -0.783299, -0.439563,
		0.589299, -0.117825, 0.799277,
		-0.677865, -0.610376, 0.409804,
		43.550964, 36.375011, 37.331738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256222, 36.268105, 37.459057>,  <44.025467, 36.802277, 37.044876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256222, 36.268105, 37.459057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949085, 36.157955, 37.227684>,  <43.764801, 36.091866, 37.088860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949085, 36.157955, 37.227684>,  <44.256222, 36.268105, 37.459057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949085, 36.157955, 37.227684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582011, -0.677183, -0.450207,
		-0.267729, -0.682343, 0.680242,
		-0.767844, -0.275375, -0.578433,
		43.718731, 36.075344, 37.054153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125965, 35.447906, 37.471878>,  <44.256222, 36.268105, 37.459057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125965, 35.447906, 37.471878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020206, 35.624706, 37.129013>,  <43.956749, 35.730785, 36.923294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020206, 35.624706, 37.129013>,  <44.125965, 35.447906, 37.471878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020206, 35.624706, 37.129013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596978, -0.623038, -0.505412,
		-0.757437, -0.645338, -0.099132,
		-0.264399, 0.441998, -0.857165,
		43.940887, 35.757305, 36.871864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866009, 34.972153, 36.891281>,  <44.125965, 35.447906, 37.471878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866009, 34.972153, 36.891281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037701, 35.253780, 36.664989>,  <44.140717, 35.422756, 36.529213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037701, 35.253780, 36.664989>,  <43.866009, 34.972153, 36.891281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037701, 35.253780, 36.664989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609284, -0.688091, -0.394085,
		-0.666737, -0.175537, -0.724327,
		0.429226, 0.704072, -0.565728,
		44.166470, 35.465000, 36.495270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951832, 34.589329, 36.265076>,  <43.866009, 34.972153, 36.891281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951832, 34.589329, 36.265076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211838, 34.890427, 36.306774>,  <44.367840, 35.071083, 36.331795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211838, 34.890427, 36.306774>,  <43.951832, 34.589329, 36.265076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211838, 34.890427, 36.306774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752408, -0.618251, -0.227264,
		-0.106620, 0.226159, -0.968238,
		0.650011, 0.752740, 0.104246,
		44.406841, 35.116249, 36.338047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349613, 34.683426, 35.649933>,  <43.951832, 34.589329, 36.265076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349613, 34.683426, 35.649933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556107, 34.832672, 35.958294>,  <44.680000, 34.922218, 36.143311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556107, 34.832672, 35.958294>,  <44.349613, 34.683426, 35.649933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556107, 34.832672, 35.958294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811151, -0.501860, -0.300284,
		0.274847, 0.780335, -0.561726,
		0.516230, 0.373112, 0.770905,
		44.710976, 34.944607, 36.189564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013977, 35.143520, 35.385742>,  <44.349613, 34.683426, 35.649933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013977, 35.143520, 35.385742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083858, 35.043415, 35.766655>,  <45.125786, 34.983353, 35.995205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083858, 35.043415, 35.766655>,  <45.013977, 35.143520, 35.385742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083858, 35.043415, 35.766655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945154, -0.228456, -0.233435,
		0.275976, 0.940838, 0.196625,
		0.174704, -0.250264, 0.952285,
		45.136269, 34.968334, 36.052341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574043, 35.603207, 35.781479>,  <45.013977, 35.143520, 35.385742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574043, 35.603207, 35.781479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533646, 35.227062, 35.911415>,  <45.509407, 35.001377, 35.989376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533646, 35.227062, 35.911415>,  <45.574043, 35.603207, 35.781479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533646, 35.227062, 35.911415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956611, -0.181486, -0.227944,
		0.273304, 0.287725, 0.917889,
		-0.100998, -0.940360, 0.324842,
		45.503345, 34.944954, 36.008869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025707, 35.460808, 36.308041>,  <45.574043, 35.603207, 35.781479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025707, 35.460808, 36.308041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964203, 35.141972, 36.074459>,  <45.927299, 34.950668, 35.934311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964203, 35.141972, 36.074459>,  <46.025707, 35.460808, 36.308041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964203, 35.141972, 36.074459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988019, -0.131933, -0.080070,
		-0.013220, -0.589272, 0.807827,
		-0.153762, -0.797090, -0.583956,
		45.918076, 34.902843, 35.899273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379196, 34.847004, 36.566177>,  <46.025707, 35.460808, 36.308041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379196, 34.847004, 36.566177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351196, 34.793858, 36.170715>,  <46.334396, 34.761971, 35.933437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351196, 34.793858, 36.170715>,  <46.379196, 34.847004, 36.566177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.351196, 34.793858, 36.170715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997313, 0.012127, -0.072238,
		0.021587, -0.991060, 0.131661,
		-0.069995, -0.132867, -0.988659,
		46.330196, 34.753998, 35.874119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977314, 34.275501, 36.258568>,  <46.379196, 34.847004, 36.566177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977314, 34.275501, 36.258568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.832321, 34.529594, 35.985775>,  <46.745327, 34.682049, 35.822102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.832321, 34.529594, 35.985775>,  <46.977314, 34.275501, 36.258568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.832321, 34.529594, 35.985775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929190, 0.303023, -0.211622,
		0.072226, -0.710396, -0.700087,
		-0.362477, 0.635229, -0.681979,
		46.723579, 34.720161, 35.781181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.175827, 34.076626, 35.493744>,  <46.977314, 34.275501, 36.258568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.175827, 34.076626, 35.493744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137138, 34.468510, 35.563965>,  <47.113926, 34.703640, 35.606098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137138, 34.468510, 35.563965>,  <47.175827, 34.076626, 35.493744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.137138, 34.468510, 35.563965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911213, 0.158118, -0.380381,
		-0.400421, 0.123177, -0.908015,
		-0.096719, 0.979707, 0.175554,
		47.108124, 34.762421, 35.616631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.168056, 34.571220, 34.937675>,  <47.175827, 34.076626, 35.493744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.168056, 34.571220, 34.937675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331642, 34.760185, 35.249977>,  <47.429794, 34.873566, 35.437359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331642, 34.760185, 35.249977>,  <47.168056, 34.571220, 34.937675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.331642, 34.760185, 35.249977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859005, 0.089464, -0.504090,
		-0.307988, 0.876824, -0.369218,
		0.408967, 0.472414, 0.780750,
		47.454330, 34.901909, 35.484203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.496895, 35.289928, 34.850967>,  <47.168056, 34.571220, 34.937675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.496895, 35.289928, 34.850967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686050, 35.069023, 35.125595>,  <47.799541, 34.936478, 35.290371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686050, 35.069023, 35.125595>,  <47.496895, 35.289928, 34.850967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686050, 35.069023, 35.125595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801043, -0.055116, -0.596065,
		0.367028, 0.831843, 0.416326,
		0.472886, -0.552267, 0.686571,
		47.827915, 34.903343, 35.331566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.695557, 34.277122, 27.430021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.326508, 34.309914, 27.279264>,  <41.105080, 34.329586, 27.188810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.326508, 34.309914, 27.279264>,  <41.695557, 34.277122, 27.430021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326508, 34.309914, 27.279264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345313, 0.259763, 0.901821,
		0.171830, 0.962187, -0.211356,
		-0.922623, 0.081975, -0.376891,
		41.049721, 34.334507, 27.166197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386341, 34.947311, 27.712807>,  <41.695557, 34.277122, 27.430021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386341, 34.947311, 27.712807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069977, 34.737659, 27.586470>,  <40.880157, 34.611870, 27.510668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069977, 34.737659, 27.586470>,  <41.386341, 34.947311, 27.712807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069977, 34.737659, 27.586470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558657, 0.407797, 0.722222,
		-0.249735, 0.747660, -0.615336,
		-0.790908, -0.524125, -0.315844,
		40.832703, 34.580421, 27.491716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854992, 35.441677, 27.627089>,  <41.386341, 34.947311, 27.712807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854992, 35.441677, 27.627089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.691376, 35.078892, 27.667278>,  <40.593204, 34.861221, 27.691393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.691376, 35.078892, 27.667278>,  <40.854992, 35.441677, 27.627089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691376, 35.078892, 27.667278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575641, 0.341903, 0.742792,
		-0.708041, 0.245995, -0.661940,
		-0.409042, -0.906967, 0.100476,
		40.568665, 34.806801, 27.697420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178703, 35.594028, 27.629593>,  <40.854992, 35.441677, 27.627089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178703, 35.594028, 27.629593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.193554, 35.232796, 27.800739>,  <40.202465, 35.016056, 27.903427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.193554, 35.232796, 27.800739>,  <40.178703, 35.594028, 27.629593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193554, 35.232796, 27.800739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710327, 0.277310, 0.646943,
		-0.702892, -0.327947, -0.631185,
		0.037129, -0.903078, 0.427868,
		40.204693, 34.961872, 27.929100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497414, 35.370201, 27.833447>,  <40.178703, 35.594028, 27.629593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497414, 35.370201, 27.833447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729824, 35.129997, 28.053190>,  <39.869270, 34.985874, 28.185036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729824, 35.129997, 28.053190>,  <39.497414, 35.370201, 27.833447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729824, 35.129997, 28.053190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549934, 0.207919, 0.808914,
		-0.599987, -0.772108, -0.209437,
		0.581024, -0.600515, 0.549357,
		39.904133, 34.949844, 28.217997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966274, 34.940571, 28.241018>,  <39.497414, 35.370201, 27.833447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966274, 34.940571, 28.241018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312405, 34.964779, 28.440035>,  <39.520084, 34.979305, 28.559444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312405, 34.964779, 28.440035>,  <38.966274, 34.940571, 28.241018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312405, 34.964779, 28.440035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500724, 0.147998, 0.852861,
		-0.022022, -0.987135, 0.158369,
		0.865327, 0.060517, 0.497541,
		39.572002, 34.982933, 28.589296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813477, 34.623013, 28.894148>,  <38.966274, 34.940571, 28.241018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813477, 34.623013, 28.894148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160690, 34.790779, 29.000441>,  <39.369019, 34.891438, 29.064217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160690, 34.790779, 29.000441>,  <38.813477, 34.623013, 28.894148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160690, 34.790779, 29.000441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315789, 0.053357, 0.947328,
		0.383146, -0.906224, 0.178762,
		0.868030, 0.419416, 0.265732,
		39.421101, 34.916603, 29.080160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129387, 34.183807, 29.421694>,  <38.813477, 34.623013, 28.894148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129387, 34.183807, 29.421694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257557, 34.561848, 29.447374>,  <39.334457, 34.788670, 29.462784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257557, 34.561848, 29.447374>,  <39.129387, 34.183807, 29.421694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257557, 34.561848, 29.447374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316080, 0.042778, 0.947768,
		0.892985, -0.323980, 0.312434,
		0.320423, 0.945096, 0.064203,
		39.353683, 34.845375, 29.466635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418861, 34.280560, 30.083176>,  <39.129387, 34.183807, 29.421694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418861, 34.280560, 30.083176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387836, 34.665874, 29.980360>,  <39.369221, 34.897064, 29.918671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387836, 34.665874, 29.980360>,  <39.418861, 34.280560, 30.083176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387836, 34.665874, 29.980360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163326, 0.242058, 0.956416,
		0.983519, 0.116160, 0.138556,
		-0.077558, 0.963283, -0.257040,
		39.364571, 34.954861, 29.903248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813904, 34.557335, 30.616524>,  <39.418861, 34.280560, 30.083176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813904, 34.557335, 30.616524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622307, 34.868683, 30.454187>,  <39.507347, 35.055492, 30.356785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622307, 34.868683, 30.454187>,  <39.813904, 34.557335, 30.616524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622307, 34.868683, 30.454187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087097, 0.417909, 0.904304,
		0.873487, 0.468503, -0.132382,
		-0.478993, 0.778368, -0.405843,
		39.478607, 35.102192, 30.332434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121708, 35.176670, 30.872641>,  <39.813904, 34.557335, 30.616524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121708, 35.176670, 30.872641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775928, 35.335491, 30.749306>,  <39.568459, 35.430782, 30.675304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775928, 35.335491, 30.749306>,  <40.121708, 35.176670, 30.872641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775928, 35.335491, 30.749306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137146, 0.403813, 0.904503,
		0.483645, 0.824187, -0.294623,
		-0.864452, 0.397052, -0.308336,
		39.516594, 35.454605, 30.656805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129105, 35.905239, 31.020607>,  <40.121708, 35.176670, 30.872641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129105, 35.905239, 31.020607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741711, 35.813568, 30.981611>,  <39.509274, 35.758564, 30.958214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741711, 35.813568, 30.981611>,  <40.129105, 35.905239, 31.020607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741711, 35.813568, 30.981611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186700, 0.408998, 0.893232,
		-0.164839, 0.883287, -0.438898,
		-0.968489, -0.229181, -0.097491,
		39.451164, 35.744812, 30.952364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616798, 36.545662, 31.100529>,  <40.129105, 35.905239, 31.020607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616798, 36.545662, 31.100529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.379848, 36.234768, 31.185381>,  <39.237679, 36.048233, 31.236292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.379848, 36.234768, 31.185381>,  <39.616798, 36.545662, 31.100529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379848, 36.234768, 31.185381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202705, 0.398613, 0.894437,
		-0.779744, 0.486844, -0.393678,
		-0.592376, -0.777233, 0.212131,
		39.202137, 36.001598, 31.249020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034229, 36.815742, 31.367496>,  <39.616798, 36.545662, 31.100529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034229, 36.815742, 31.367496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001675, 36.447285, 31.519743>,  <38.982143, 36.226212, 31.611090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001675, 36.447285, 31.519743>,  <39.034229, 36.815742, 31.367496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001675, 36.447285, 31.519743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212300, 0.389140, 0.896381,
		-0.973809, -0.007850, -0.227230,
		-0.081388, -0.921145, 0.380615,
		38.977257, 36.170940, 31.633928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579453, 36.892807, 31.862101>,  <39.034229, 36.815742, 31.367496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579453, 36.892807, 31.862101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766796, 36.561039, 31.983889>,  <38.879200, 36.361977, 32.056961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766796, 36.561039, 31.983889>,  <38.579453, 36.892807, 31.862101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766796, 36.561039, 31.983889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178511, 0.248663, 0.951998,
		-0.865319, -0.500225, -0.031598,
		0.468356, -0.829423, 0.304468,
		38.907303, 36.312214, 32.075230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277122, 36.702179, 32.384399>,  <38.579453, 36.892807, 31.862101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277122, 36.702179, 32.384399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.608498, 36.490856, 32.458775>,  <38.807323, 36.364063, 32.503399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.608498, 36.490856, 32.458775>,  <38.277122, 36.702179, 32.384399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608498, 36.490856, 32.458775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107630, 0.175629, 0.978555,
		-0.549637, -0.830688, 0.088636,
		0.828441, -0.528310, 0.185939,
		38.857029, 36.332363, 32.514557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127934, 36.285042, 32.989494>,  <38.277122, 36.702179, 32.384399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127934, 36.285042, 32.989494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525814, 36.312332, 32.958733>,  <38.764542, 36.328705, 32.940273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525814, 36.312332, 32.958733>,  <38.127934, 36.285042, 32.989494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525814, 36.312332, 32.958733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061426, 0.205480, 0.976732,
		0.082436, -0.976281, 0.200201,
		0.994701, 0.068220, -0.076908,
		38.824226, 36.332798, 32.935661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393791, 35.954937, 33.491497>,  <38.127934, 36.285042, 32.989494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393791, 35.954937, 33.491497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693787, 36.193386, 33.376842>,  <38.873783, 36.336456, 33.308052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693787, 36.193386, 33.376842>,  <38.393791, 35.954937, 33.491497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693787, 36.193386, 33.376842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094106, 0.332765, 0.938303,
		0.654727, -0.730687, 0.193470,
		0.749985, 0.596125, -0.286632,
		38.918781, 36.372223, 33.290852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831745, 35.923298, 34.060635>,  <38.393791, 35.954937, 33.491497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831745, 35.923298, 34.060635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975948, 36.225735, 33.842148>,  <39.062469, 36.407196, 33.711056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975948, 36.225735, 33.842148>,  <38.831745, 35.923298, 34.060635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975948, 36.225735, 33.842148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304520, 0.458099, 0.835113,
		0.881645, -0.467401, -0.065096,
		0.360512, 0.756096, -0.546214,
		39.084103, 36.452564, 33.678284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452831, 35.989929, 34.298298>,  <38.831745, 35.923298, 34.060635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452831, 35.989929, 34.298298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339794, 36.338070, 34.136986>,  <39.271973, 36.546955, 34.040199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339794, 36.338070, 34.136986>,  <39.452831, 35.989929, 34.298298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339794, 36.338070, 34.136986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211862, 0.466665, 0.858684,
		0.935550, 0.157222, -0.316271,
		-0.282596, 0.870348, -0.403279,
		39.255016, 36.599174, 34.016003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029381, 36.395172, 34.260098>,  <39.452831, 35.989929, 34.298298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029381, 36.395172, 34.260098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.709026, 36.634174, 34.275925>,  <39.516815, 36.777576, 34.285419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.709026, 36.634174, 34.275925>,  <40.029381, 36.395172, 34.260098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709026, 36.634174, 34.275925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317261, 0.367356, 0.874297,
		0.507865, 0.712765, -0.483777,
		-0.800886, 0.597508, 0.039565,
		39.468761, 36.813427, 34.287796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196514, 36.982109, 34.758751>,  <40.029381, 36.395172, 34.260098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196514, 36.982109, 34.758751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498096, 36.943199, 35.018627>,  <40.679047, 36.919853, 35.174553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.498096, 36.943199, 35.018627>,  <40.196514, 36.982109, 34.758751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498096, 36.943199, 35.018627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452706, -0.639722, -0.621139,
		0.476040, 0.762427, -0.438283,
		0.753952, -0.097274, 0.649688,
		40.724281, 36.914017, 35.213535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776886, 36.925636, 34.287701>,  <40.196514, 36.982109, 34.758751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776886, 36.925636, 34.287701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.899288, 36.763027, 34.632050>,  <40.972729, 36.665462, 34.838657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.899288, 36.763027, 34.632050>,  <40.776886, 36.925636, 34.287701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899288, 36.763027, 34.632050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482943, -0.712983, -0.508351,
		0.820442, 0.571311, -0.021852,
		0.306007, -0.406520, 0.860873,
		40.991089, 36.641071, 34.890312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395863, 36.842545, 34.238640>,  <40.776886, 36.925636, 34.287701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395863, 36.842545, 34.238640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.329479, 36.587307, 34.539383>,  <41.289650, 36.434162, 34.719830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.329479, 36.587307, 34.539383>,  <41.395863, 36.842545, 34.238640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329479, 36.587307, 34.539383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430889, -0.732718, -0.526743,
		0.887013, 0.236548, 0.396553,
		-0.165961, -0.638098, 0.751856,
		41.279690, 36.395878, 34.764938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865074, 36.475384, 34.113327>,  <41.395863, 36.842545, 34.238640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865074, 36.475384, 34.113327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653130, 36.257442, 34.373287>,  <41.525963, 36.126678, 34.529263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653130, 36.257442, 34.373287>,  <41.865074, 36.475384, 34.113327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653130, 36.257442, 34.373287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228700, -0.829730, -0.509160,
		0.816665, -0.121152, 0.564253,
		-0.529863, -0.544857, 0.649904,
		41.494171, 36.093987, 34.568260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321285, 35.992851, 34.406727>,  <41.865074, 36.475384, 34.113327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321285, 35.992851, 34.406727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.944881, 35.862255, 34.442299>,  <41.719040, 35.783897, 34.463642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.944881, 35.862255, 34.442299>,  <42.321285, 35.992851, 34.406727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944881, 35.862255, 34.442299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252841, -0.853072, -0.456443,
		0.224888, -0.407031, 0.885297,
		-0.941009, -0.326488, 0.088932,
		41.662579, 35.764309, 34.468979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385632, 35.284782, 34.618946>,  <42.321285, 35.992851, 34.406727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385632, 35.284782, 34.618946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.017021, 35.298088, 34.464191>,  <41.795853, 35.306072, 34.371338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.017021, 35.298088, 34.464191>,  <42.385632, 35.284782, 34.618946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017021, 35.298088, 34.464191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157197, -0.879075, -0.450017,
		-0.355069, -0.475521, 0.804864,
		-0.921529, 0.033266, -0.386883,
		41.740562, 35.308067, 34.348125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191853, 34.576286, 34.684128>,  <42.385632, 35.284782, 34.618946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191853, 34.576286, 34.684128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.940220, 34.737068, 34.417992>,  <41.789238, 34.833538, 34.258308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.940220, 34.737068, 34.417992>,  <42.191853, 34.576286, 34.684128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940220, 34.737068, 34.417992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178148, -0.758596, -0.626735,
		-0.756612, -0.512822, 0.405651,
		-0.629128, 0.401929, -0.665320,
		41.751495, 34.857655, 34.218388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820366, 33.932747, 34.261852>,  <42.191853, 34.576286, 34.684128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820366, 33.932747, 34.261852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.786510, 34.274982, 34.057575>,  <41.766197, 34.480324, 33.935009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.786510, 34.274982, 34.057575>,  <41.820366, 33.932747, 34.261852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786510, 34.274982, 34.057575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282292, -0.470945, -0.835776,
		-0.955587, -0.214906, -0.201664,
		-0.084640, 0.855585, -0.510696,
		41.761120, 34.531658, 33.904366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499451, 33.779411, 33.637905>,  <41.820366, 33.932747, 34.261852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499451, 33.779411, 33.637905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.719212, 34.108112, 33.577396>,  <41.851070, 34.305332, 33.541092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.719212, 34.108112, 33.577396>,  <41.499451, 33.779411, 33.637905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719212, 34.108112, 33.577396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243955, -0.330908, -0.911584,
		-0.799149, 0.463928, -0.382273,
		0.549407, 0.821748, -0.151268,
		41.884033, 34.354637, 33.532017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437958, 33.828365, 32.964897>,  <41.499451, 33.779411, 33.637905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437958, 33.828365, 32.964897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.724010, 34.100983, 33.026966>,  <41.895641, 34.264553, 33.064205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.724010, 34.100983, 33.026966>,  <41.437958, 33.828365, 32.964897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724010, 34.100983, 33.026966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316372, -0.117651, -0.941311,
		-0.623291, 0.722256, -0.299759,
		0.715134, 0.681546, 0.155171,
		41.938549, 34.305447, 33.073517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385902, 34.326965, 32.420425>,  <41.437958, 33.828365, 32.964897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385902, 34.326965, 32.420425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.763908, 34.349186, 32.549339>,  <41.990711, 34.362518, 32.626686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.763908, 34.349186, 32.549339>,  <41.385902, 34.326965, 32.420425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763908, 34.349186, 32.549339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326761, -0.200996, -0.923487,
		0.013476, 0.978016, -0.208096,
		0.945011, 0.055553, 0.322286,
		42.047413, 34.365852, 32.646027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619411, 34.473827, 31.830708>,  <41.385902, 34.326965, 32.420425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619411, 34.473827, 31.830708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.933407, 34.400940, 32.067551>,  <42.121803, 34.357208, 32.209656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.933407, 34.400940, 32.067551>,  <41.619411, 34.473827, 31.830708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933407, 34.400940, 32.067551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520717, -0.323739, -0.789966,
		0.335634, 0.928434, -0.159247,
		0.784986, -0.182217, 0.592109,
		42.168903, 34.346275, 32.245182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210728, 34.940121, 31.577311>,  <41.619411, 34.473827, 31.830708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210728, 34.940121, 31.577311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.345726, 34.599880, 31.738594>,  <42.426723, 34.395737, 31.835365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.345726, 34.599880, 31.738594>,  <42.210728, 34.940121, 31.577311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345726, 34.599880, 31.738594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390022, -0.263488, -0.882302,
		0.856726, 0.455035, 0.242826,
		0.337497, -0.850598, 0.403210,
		42.446976, 34.344700, 31.859558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802094, 34.860062, 31.319359>,  <42.210728, 34.940121, 31.577311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802094, 34.860062, 31.319359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.661880, 34.500134, 31.423241>,  <42.577755, 34.284176, 31.485569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.661880, 34.500134, 31.423241>,  <42.802094, 34.860062, 31.319359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661880, 34.500134, 31.423241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378677, -0.389790, -0.839445,
		0.856582, -0.195906, 0.477375,
		-0.350529, -0.899825, 0.259703,
		42.556721, 34.230186, 31.501152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413616, 34.373585, 31.289488>,  <42.802094, 34.860062, 31.319359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413616, 34.373585, 31.289488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.065533, 34.186054, 31.228895>,  <42.856682, 34.073536, 31.192539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.065533, 34.186054, 31.228895>,  <43.413616, 34.373585, 31.289488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065533, 34.186054, 31.228895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396106, -0.482892, -0.780971,
		0.292987, -0.739608, 0.605919,
		-0.870206, -0.468822, -0.151482,
		42.804470, 34.045406, 31.183451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622982, 33.656639, 31.043631>,  <43.413616, 34.373585, 31.289488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622982, 33.656639, 31.043631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.237164, 33.701530, 30.948082>,  <43.005672, 33.728466, 30.890753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.237164, 33.701530, 30.948082>,  <43.622982, 33.656639, 31.043631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237164, 33.701530, 30.948082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162418, -0.460997, -0.872412,
		-0.208028, -0.880277, 0.426424,
		-0.964544, 0.112228, -0.238873,
		42.947800, 33.735199, 30.876419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426846, 32.981041, 30.749056>,  <43.622982, 33.656639, 31.043631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426846, 32.981041, 30.749056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.142918, 33.225353, 30.608713>,  <42.972561, 33.371941, 30.524508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.142918, 33.225353, 30.608713>,  <43.426846, 32.981041, 30.749056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142918, 33.225353, 30.608713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177873, -0.326538, -0.928297,
		-0.681551, -0.721335, 0.123143,
		-0.709824, 0.610777, -0.350858,
		42.929970, 33.408585, 30.503456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119915, 32.596489, 30.257496>,  <43.426846, 32.981041, 30.749056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119915, 32.596489, 30.257496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.021881, 32.973888, 30.168289>,  <42.963058, 33.200329, 30.114765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.021881, 32.973888, 30.168289>,  <43.119915, 32.596489, 30.257496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021881, 32.973888, 30.168289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058371, -0.215255, -0.974812,
		-0.967742, -0.251931, -0.002317,
		-0.245087, 0.943502, -0.223016,
		42.948357, 33.256939, 30.101385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729836, 32.494396, 29.719902>,  <43.119915, 32.596489, 30.257496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729836, 32.494396, 29.719902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.810020, 32.885014, 29.688440>,  <42.858131, 33.119385, 29.669563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.810020, 32.885014, 29.688440>,  <42.729836, 32.494396, 29.719902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810020, 32.885014, 29.688440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107213, -0.057936, -0.992547,
		-0.973817, 0.207401, 0.093083,
		0.200462, 0.976539, -0.078655,
		42.870159, 33.177975, 29.664845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.098469, 32.831776, 29.289131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396626, 33.097118, 29.262768>,  <42.575520, 33.256325, 29.246950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396626, 33.097118, 29.262768>,  <42.098469, 32.831776, 29.289131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396626, 33.097118, 29.262768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106188, 0.020547, -0.994134,
		-0.658114, 0.748018, 0.085756,
		0.745393, 0.663360, -0.065909,
		42.620243, 33.296127, 29.242994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926086, 33.470192, 28.942390>,  <42.098469, 32.831776, 29.289131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926086, 33.470192, 28.942390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.314495, 33.395626, 28.882561>,  <42.547539, 33.350887, 28.846663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.314495, 33.395626, 28.882561>,  <41.926086, 33.470192, 28.942390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314495, 33.395626, 28.882561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150767, 0.007840, -0.988538,
		0.185454, 0.982439, -0.020493,
		0.971018, -0.186418, -0.149574,
		42.605801, 33.339699, 28.837688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046375, 33.903629, 28.329702>,  <41.926086, 33.470192, 28.942390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046375, 33.903629, 28.329702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.364933, 33.665417, 28.371838>,  <42.556068, 33.522488, 28.397118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.364933, 33.665417, 28.371838>,  <42.046375, 33.903629, 28.329702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364933, 33.665417, 28.371838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069368, -0.083075, -0.994126,
		0.600785, 0.799024, -0.024850,
		0.796395, -0.595532, 0.105337,
		42.603851, 33.486755, 28.403439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409142, 34.027271, 27.701273>,  <42.046375, 33.903629, 28.329702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409142, 34.027271, 27.701273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.608803, 33.705616, 27.830397>,  <42.728600, 33.512623, 27.907871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.608803, 33.705616, 27.830397>,  <42.409142, 34.027271, 27.701273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608803, 33.705616, 27.830397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311166, -0.181344, -0.932893,
		0.808716, 0.566104, 0.159702,
		0.499154, -0.804140, 0.322808,
		42.758549, 33.464375, 27.927238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068966, 34.118004, 27.368540>,  <42.409142, 34.027271, 27.701273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068966, 34.118004, 27.368540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.958012, 33.740005, 27.437876>,  <42.891438, 33.513206, 27.479477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.958012, 33.740005, 27.437876>,  <43.068966, 34.118004, 27.368540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958012, 33.740005, 27.437876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283807, -0.252965, -0.924912,
		0.917884, -0.207362, 0.338364,
		-0.277386, -0.944992, 0.173342,
		42.874794, 33.456509, 27.489878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649475, 33.728474, 27.046892>,  <43.068966, 34.118004, 27.368540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649475, 33.728474, 27.046892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.336960, 33.482079, 27.087185>,  <43.149452, 33.334240, 27.111361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.336960, 33.482079, 27.087185>,  <43.649475, 33.728474, 27.046892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336960, 33.482079, 27.087185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117734, -0.303924, -0.945394,
		0.612970, -0.726762, 0.309974,
		-0.781285, -0.615993, 0.100732,
		43.102573, 33.297279, 27.117405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922417, 33.027328, 26.736021>,  <43.649475, 33.728474, 27.046892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922417, 33.027328, 26.736021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.527550, 32.965065, 26.750277>,  <43.290630, 32.927708, 26.758831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.527550, 32.965065, 26.750277>,  <43.922417, 33.027328, 26.736021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527550, 32.965065, 26.750277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033957, -0.422714, -0.905627,
		0.156033, -0.892796, 0.422575,
		-0.987168, -0.155658, 0.035641,
		43.231400, 32.918369, 26.760969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780205, 32.240204, 26.648912>,  <43.922417, 33.027328, 26.736021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780205, 32.240204, 26.648912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.458328, 32.457314, 26.552687>,  <43.265202, 32.587578, 26.494951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.458328, 32.457314, 26.552687>,  <43.780205, 32.240204, 26.648912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458328, 32.457314, 26.552687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043664, -0.458204, -0.887774,
		-0.592088, -0.703878, 0.392412,
		-0.804689, 0.542775, -0.240563,
		43.216923, 32.620144, 26.480518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260708, 31.793264, 26.393974>,  <43.780205, 32.240204, 26.648912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260708, 31.793264, 26.393974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.211975, 32.165966, 26.257160>,  <43.182735, 32.389587, 26.175072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.211975, 32.165966, 26.257160>,  <43.260708, 31.793264, 26.393974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211975, 32.165966, 26.257160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102487, -0.330952, -0.938066,
		-0.987246, -0.149340, -0.055173,
		-0.121831, 0.931755, -0.342036,
		43.175426, 32.445492, 26.154549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821529, 31.764223, 25.840099>,  <43.260708, 31.793264, 26.393974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821529, 31.764223, 25.840099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.982014, 32.125633, 25.779861>,  <43.078304, 32.342480, 25.743719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.982014, 32.125633, 25.779861>,  <42.821529, 31.764223, 25.840099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982014, 32.125633, 25.779861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097362, -0.205539, -0.973794,
		-0.910799, 0.376030, -0.170433,
		0.401207, 0.903524, -0.150594,
		43.102375, 32.396690, 25.734684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527699, 31.934908, 25.281023>,  <42.821529, 31.764223, 25.840099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527699, 31.934908, 25.281023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.872509, 32.137234, 25.294085>,  <43.079395, 32.258629, 25.301922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.872509, 32.137234, 25.294085>,  <42.527699, 31.934908, 25.281023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872509, 32.137234, 25.294085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129713, -0.157871, -0.978903,
		-0.489989, 0.848073, -0.201699,
		0.862024, 0.505815, 0.032651,
		43.131115, 32.288979, 25.303881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580746, 32.405003, 24.635023>,  <42.527699, 31.934908, 25.281023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580746, 32.405003, 24.635023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.954323, 32.370125, 24.773674>,  <43.178471, 32.349197, 24.856865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.954323, 32.370125, 24.773674>,  <42.580746, 32.405003, 24.635023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954323, 32.370125, 24.773674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330360, -0.159608, -0.930262,
		0.136437, 0.983322, -0.120260,
		0.933942, -0.087194, 0.346627,
		43.234505, 32.343967, 24.877663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043335, 32.748737, 24.118471>,  <42.580746, 32.405003, 24.635023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043335, 32.748737, 24.118471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.299709, 32.533634, 24.337566>,  <43.453533, 32.404572, 24.469023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.299709, 32.533634, 24.337566>,  <43.043335, 32.748737, 24.118471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299709, 32.533634, 24.337566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522828, -0.216616, -0.824456,
		0.562010, 0.814794, 0.142320,
		0.640933, -0.537762, 0.547738,
		43.491989, 32.372307, 24.501888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750870, 33.032379, 23.833765>,  <43.043335, 32.748737, 24.118471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750870, 33.032379, 23.833765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.765408, 32.662113, 23.984406>,  <43.774128, 32.439953, 24.074789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.765408, 32.662113, 23.984406>,  <43.750870, 33.032379, 23.833765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765408, 32.662113, 23.984406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652522, -0.263445, -0.710501,
		0.756898, 0.271561, 0.594441,
		0.036342, -0.925663, 0.376600,
		43.776310, 32.384415, 24.097385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359436, 32.812584, 23.702465>,  <43.750870, 33.032379, 23.833765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359436, 32.812584, 23.702465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.180290, 32.468246, 23.799107>,  <44.072803, 32.261646, 23.857092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.180290, 32.468246, 23.799107>,  <44.359436, 32.812584, 23.702465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180290, 32.468246, 23.799107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431848, -0.444881, -0.784595,
		0.782895, -0.247056, 0.570998,
		-0.447865, -0.860839, 0.241604,
		44.045929, 32.209995, 23.871588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878201, 32.279881, 23.754471>,  <44.359436, 32.812584, 23.702465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878201, 32.279881, 23.754471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.526569, 32.106064, 23.676086>,  <44.315590, 32.001774, 23.629055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.526569, 32.106064, 23.676086>,  <44.878201, 32.279881, 23.754471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526569, 32.106064, 23.676086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413471, -0.490527, -0.767089,
		0.237204, -0.755355, 0.610880,
		-0.879077, -0.434537, -0.195962,
		44.262848, 31.975702, 23.617298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010838, 31.566910, 23.719141>,  <44.878201, 32.279881, 23.754471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010838, 31.566910, 23.719141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.676872, 31.654345, 23.517097>,  <44.476494, 31.706804, 23.395872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.676872, 31.654345, 23.517097>,  <45.010838, 31.566910, 23.719141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676872, 31.654345, 23.517097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422659, -0.333183, -0.842822,
		-0.352533, -0.917171, 0.185787,
		-0.834913, 0.218599, -0.505109,
		44.426395, 31.719921, 23.365566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842381, 30.934067, 23.337297>,  <45.010838, 31.566910, 23.719141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842381, 30.934067, 23.337297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.630703, 31.221390, 23.156637>,  <44.503696, 31.393784, 23.048241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.630703, 31.221390, 23.156637>,  <44.842381, 30.934067, 23.337297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630703, 31.221390, 23.156637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211397, -0.403893, -0.890046,
		-0.821747, -0.566482, 0.061888,
		-0.529191, 0.718310, -0.451650,
		44.471947, 31.436882, 23.021143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606331, 30.603846, 22.706425>,  <44.842381, 30.934067, 23.337297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606331, 30.603846, 22.706425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.532101, 30.990967, 22.638409>,  <44.487564, 31.223240, 22.597599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.532101, 30.990967, 22.638409>,  <44.606331, 30.603846, 22.706425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532101, 30.990967, 22.638409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025841, -0.168182, -0.985417,
		-0.982290, -0.187265, 0.006202,
		-0.185577, 0.967806, -0.170043,
		44.476429, 31.281309, 22.587397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135204, 30.598745, 22.164968>,  <44.606331, 30.603846, 22.706425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135204, 30.598745, 22.164968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.278503, 30.971794, 22.147640>,  <44.364483, 31.195623, 22.137243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.278503, 30.971794, 22.147640>,  <44.135204, 30.598745, 22.164968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278503, 30.971794, 22.147640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059324, -0.069043, -0.995848,
		-0.931741, 0.354188, -0.080061,
		0.358245, 0.932622, -0.043318,
		44.385979, 31.251581, 22.134645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803936, 30.909615, 21.673054>,  <44.135204, 30.598745, 22.164968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803936, 30.909615, 21.673054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.133789, 31.132717, 21.710779>,  <44.331699, 31.266579, 21.733416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.133789, 31.132717, 21.710779>,  <43.803936, 30.909615, 21.673054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133789, 31.132717, 21.710779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166466, -0.079928, -0.982802,
		-0.540625, 0.826148, -0.158759,
		0.824629, 0.557756, 0.094315,
		44.381176, 31.300043, 21.739073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849953, 31.446970, 21.147758>,  <43.803936, 30.909615, 21.673054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849953, 31.446970, 21.147758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.227421, 31.353016, 21.240973>,  <44.453903, 31.296642, 21.296902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.227421, 31.353016, 21.240973>,  <43.849953, 31.446970, 21.147758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227421, 31.353016, 21.240973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190777, -0.189180, -0.963231,
		0.270336, 0.953435, -0.133714,
		0.943675, -0.234887, 0.233036,
		44.510525, 31.282551, 21.310883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314148, 31.885015, 20.718946>,  <43.849953, 31.446970, 21.147758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314148, 31.885015, 20.718946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.537170, 31.568794, 20.820265>,  <44.670982, 31.379063, 20.881056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.537170, 31.568794, 20.820265>,  <44.314148, 31.885015, 20.718946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537170, 31.568794, 20.820265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140527, -0.210840, -0.967367,
		0.818158, 0.574957, -0.006462,
		0.557557, -0.790551, 0.253297,
		44.704437, 31.331629, 20.896254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124123, 32.237579, 20.052044>,  <44.314148, 31.885015, 20.718946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124123, 32.237579, 20.052044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.832310, 32.312870, 19.789028>,  <43.657223, 32.358044, 19.631220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.832310, 32.312870, 19.789028>,  <44.124123, 32.237579, 20.052044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832310, 32.312870, 19.789028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671816, -0.016942, 0.740524,
		0.128246, 0.981980, 0.138813,
		-0.729531, 0.188226, -0.657537,
		43.613449, 32.369339, 19.591766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796204, 32.865974, 20.186264>,  <44.124123, 32.237579, 20.052044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796204, 32.865974, 20.186264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.528648, 32.645382, 19.986883>,  <43.368114, 32.513027, 19.867254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.528648, 32.645382, 19.986883>,  <43.796204, 32.865974, 20.186264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528648, 32.645382, 19.986883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692639, 0.218933, 0.687255,
		-0.269879, 0.804947, -0.528418,
		-0.668892, -0.551478, -0.498453,
		43.327980, 32.479939, 19.837347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205025, 33.353970, 20.009686>,  <43.796204, 32.865974, 20.186264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205025, 33.353970, 20.009686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.085407, 32.972282, 20.012199>,  <43.013638, 32.743271, 20.013708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.085407, 32.972282, 20.012199>,  <43.205025, 33.353970, 20.009686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085407, 32.972282, 20.012199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680405, 0.217843, 0.699710,
		-0.669045, 0.204968, -0.714400,
		-0.299046, -0.954218, 0.006285,
		42.995693, 32.686016, 20.014086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553761, 33.468174, 20.150215>,  <43.205025, 33.353970, 20.009686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553761, 33.468174, 20.150215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.603977, 33.090912, 20.273312>,  <42.634106, 32.864555, 20.347170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.603977, 33.090912, 20.273312>,  <42.553761, 33.468174, 20.150215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603977, 33.090912, 20.273312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565381, 0.186876, 0.803381,
		-0.815220, -0.274848, -0.509779,
		0.125543, -0.943152, 0.307739,
		42.641640, 32.807968, 20.365633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835403, 33.155647, 20.266785>,  <42.553761, 33.468174, 20.150215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835403, 33.155647, 20.266785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.077427, 32.913982, 20.474201>,  <42.222641, 32.768982, 20.598652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.077427, 32.913982, 20.474201>,  <41.835403, 33.155647, 20.266785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077427, 32.913982, 20.474201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611594, 0.064295, 0.788555,
		-0.509757, -0.794261, -0.330600,
		0.605063, -0.604164, 0.518541,
		42.258945, 32.732735, 20.629763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358025, 32.667667, 20.656086>,  <41.835403, 33.155647, 20.266785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358025, 32.667667, 20.656086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713921, 32.691128, 20.837162>,  <41.927456, 32.705204, 20.945807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713921, 32.691128, 20.837162>,  <41.358025, 32.667667, 20.656086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713921, 32.691128, 20.837162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454342, 0.018107, 0.890643,
		0.044054, -0.998113, 0.042765,
		0.889737, 0.058666, 0.452687,
		41.980843, 32.708725, 20.972969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280834, 32.372589, 21.189934>,  <41.358025, 32.667667, 20.656086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280834, 32.372589, 21.189934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.626003, 32.559868, 21.265993>,  <41.833103, 32.672237, 21.311628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.626003, 32.559868, 21.265993>,  <41.280834, 32.372589, 21.189934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626003, 32.559868, 21.265993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265684, 0.100269, 0.958832,
		0.429860, -0.877915, 0.210918,
		0.862921, 0.468201, 0.190146,
		41.884880, 32.700329, 21.323036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222725, 32.310654, 21.850344>,  <41.280834, 32.372589, 21.189934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222725, 32.310654, 21.850344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.515465, 32.582603, 21.831675>,  <41.691109, 32.745773, 21.820473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.515465, 32.582603, 21.831675>,  <41.222725, 32.310654, 21.850344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515465, 32.582603, 21.831675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138927, 0.215897, 0.966482,
		0.667160, -0.700831, 0.252455,
		0.731845, 0.679871, -0.046673,
		41.735020, 32.786564, 21.817673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594177, 32.121124, 22.361956>,  <41.222725, 32.310654, 21.850344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594177, 32.121124, 22.361956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.636353, 32.508011, 22.269537>,  <41.661659, 32.740143, 22.214087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.636353, 32.508011, 22.269537>,  <41.594177, 32.121124, 22.361956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636353, 32.508011, 22.269537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224878, 0.249513, 0.941899,
		0.968665, -0.047354, 0.243813,
		0.105438, 0.967213, -0.231046,
		41.667984, 32.798176, 22.200224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003532, 32.352943, 22.931667>,  <41.594177, 32.121124, 22.361956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003532, 32.352943, 22.931667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.834961, 32.677605, 22.769869>,  <41.733818, 32.872402, 22.672791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.834961, 32.677605, 22.769869>,  <42.003532, 32.352943, 22.931667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834961, 32.677605, 22.769869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247123, 0.326376, 0.912365,
		0.872541, 0.484458, 0.063033,
		-0.421430, 0.811652, -0.404497,
		41.708530, 32.921101, 22.648520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347275, 33.046242, 23.085890>,  <42.003532, 32.352943, 22.931667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347275, 33.046242, 23.085890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.962421, 33.138634, 23.027992>,  <41.731510, 33.194069, 22.993254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.962421, 33.138634, 23.027992>,  <42.347275, 33.046242, 23.085890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962421, 33.138634, 23.027992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063514, 0.326430, 0.943085,
		0.265080, 0.916566, -0.299398,
		-0.962132, 0.230977, -0.144745,
		41.673782, 33.207928, 22.984570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300766, 33.688847, 23.343552>,  <42.347275, 33.046242, 23.085890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300766, 33.688847, 23.343552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.928833, 33.542545, 23.327393>,  <41.705673, 33.454765, 23.317698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.928833, 33.542545, 23.327393>,  <42.300766, 33.688847, 23.343552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928833, 33.542545, 23.327393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180283, 0.357085, 0.916509,
		-0.320794, 0.859483, -0.397969,
		-0.929833, -0.365757, -0.040399,
		41.649883, 33.432819, 23.315273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903439, 34.280479, 23.593342>,  <42.300766, 33.688847, 23.343552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903439, 34.280479, 23.593342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.672661, 33.957035, 23.639446>,  <41.534195, 33.762970, 23.667109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.672661, 33.957035, 23.639446>,  <41.903439, 34.280479, 23.593342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672661, 33.957035, 23.639446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202279, 0.278171, 0.938991,
		-0.791342, 0.518428, -0.324053,
		-0.576942, -0.808612, 0.115261,
		41.499577, 33.714451, 23.674025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435818, 34.530815, 23.959803>,  <41.903439, 34.280479, 23.593342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435818, 34.530815, 23.959803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.396698, 34.134102, 23.992783>,  <41.373226, 33.896072, 24.012571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.396698, 34.134102, 23.992783>,  <41.435818, 34.530815, 23.959803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396698, 34.134102, 23.992783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178274, 0.098968, 0.978991,
		-0.979109, 0.081046, -0.186488,
		-0.097800, -0.991785, 0.082452,
		41.367359, 33.836567, 24.017519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919193, 34.532627, 24.449833>,  <41.435818, 34.530815, 23.959803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919193, 34.532627, 24.449833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102230, 34.177185, 24.462381>,  <41.212051, 33.963921, 24.469910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102230, 34.177185, 24.462381>,  <40.919193, 34.532627, 24.449833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102230, 34.177185, 24.462381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084756, 0.078711, 0.993288,
		-0.885113, -0.451862, 0.111333,
		0.457592, -0.888609, 0.031370,
		41.239510, 33.910603, 24.471792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649422, 34.084812, 24.906862>,  <40.919193, 34.532627, 24.449833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649422, 34.084812, 24.906862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998726, 33.890160, 24.897028>,  <41.208309, 33.773369, 24.891127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.998726, 33.890160, 24.897028>,  <40.649422, 34.084812, 24.906862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998726, 33.890160, 24.897028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047527, -0.135287, 0.989666,
		-0.484931, -0.863067, -0.141269,
		0.873260, -0.486633, -0.024586,
		41.260704, 33.744171, 24.889652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498669, 33.502525, 25.174026>,  <40.649422, 34.084812, 24.906862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498669, 33.502525, 25.174026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.890541, 33.567623, 25.220900>,  <41.125664, 33.606682, 25.249023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.890541, 33.567623, 25.220900>,  <40.498669, 33.502525, 25.174026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890541, 33.567623, 25.220900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118674, -0.000559, 0.992933,
		0.161665, -0.986667, 0.018767,
		0.979684, 0.162750, 0.117182,
		41.184448, 33.616447, 25.256054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689919, 32.935543, 25.554684>,  <40.498669, 33.502525, 25.174026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689919, 32.935543, 25.554684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973110, 33.213570, 25.604727>,  <41.143024, 33.380386, 25.634752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973110, 33.213570, 25.604727>,  <40.689919, 32.935543, 25.554684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973110, 33.213570, 25.604727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169878, -0.004345, 0.985456,
		0.685500, -0.718933, 0.115000,
		0.707977, 0.695066, 0.125110,
		41.185505, 33.422089, 25.642260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938423, 32.878677, 26.190016>,  <40.689919, 32.935543, 25.554684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938423, 32.878677, 26.190016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.092266, 33.244450, 26.139580>,  <41.184570, 33.463913, 26.109318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.092266, 33.244450, 26.139580>,  <40.938423, 32.878677, 26.190016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092266, 33.244450, 26.139580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283325, 0.246943, 0.926685,
		0.878526, -0.320681, 0.354056,
		0.384603, 0.914431, -0.126089,
		41.207645, 33.518780, 26.101753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189587, 33.094418, 26.878782>,  <40.938423, 32.878677, 26.190016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189587, 33.094418, 26.878782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136715, 33.424877, 26.659693>,  <41.104992, 33.623154, 26.528238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136715, 33.424877, 26.659693>,  <41.189587, 33.094418, 26.878782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136715, 33.424877, 26.659693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198178, 0.519389, 0.831240,
		0.971213, 0.218420, 0.095072,
		-0.132180, 0.826152, -0.547724,
		41.097061, 33.672722, 26.495377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508915, 33.546242, 27.228168>,  <41.189587, 33.094418, 26.878782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508915, 33.546242, 27.228168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.296089, 33.787598, 26.990574>,  <41.168392, 33.932411, 26.848017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.296089, 33.787598, 26.990574>,  <41.508915, 33.546242, 27.228168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296089, 33.787598, 26.990574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127619, 0.636367, 0.760756,
		0.837029, 0.480579, -0.261587,
		-0.532068, 0.603391, -0.593988,
		41.136467, 33.968616, 26.812378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.891811, 33.260624, 32.418774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.773415, 33.595486, 32.234791>,  <42.702377, 33.796402, 32.124401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.773415, 33.595486, 32.234791>,  <42.891811, 33.260624, 32.418774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773415, 33.595486, 32.234791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171166, 0.427255, 0.887781,
		0.939730, 0.341502, 0.016830,
		-0.295989, 0.837155, -0.459958,
		42.684616, 33.846634, 32.096802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000984, 33.705006, 32.929443>,  <42.891811, 33.260624, 32.418774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000984, 33.705006, 32.929443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785706, 33.953625, 32.701752>,  <42.656540, 34.102795, 32.565136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785706, 33.953625, 32.701752>,  <43.000984, 33.705006, 32.929443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785706, 33.953625, 32.701752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345796, 0.453085, 0.821668,
		0.768618, 0.639055, -0.028918,
		-0.538193, 0.621549, -0.569232,
		42.624249, 34.140091, 32.530983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240089, 34.394104, 33.072628>,  <43.000984, 33.705006, 32.929443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240089, 34.394104, 33.072628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863041, 34.386078, 32.939323>,  <42.636810, 34.381264, 32.859341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863041, 34.386078, 32.939323>,  <43.240089, 34.394104, 33.072628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863041, 34.386078, 32.939323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295503, 0.514714, 0.804827,
		0.155385, 0.857127, -0.491110,
		-0.942620, -0.020066, -0.333263,
		42.580254, 34.380058, 32.839344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011288, 34.952312, 33.330711>,  <43.240089, 34.394104, 33.072628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011288, 34.952312, 33.330711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.673069, 34.759171, 33.239582>,  <42.470139, 34.643284, 33.184906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.673069, 34.759171, 33.239582>,  <43.011288, 34.952312, 33.330711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673069, 34.759171, 33.239582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446851, 0.406481, 0.796930,
		-0.292198, 0.775642, -0.559463,
		-0.845544, -0.482858, -0.227824,
		42.419407, 34.614311, 33.171234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442455, 35.504379, 33.330303>,  <43.011288, 34.952312, 33.330711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442455, 35.504379, 33.330303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266983, 35.148155, 33.378395>,  <42.161701, 34.934422, 33.407249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.266983, 35.148155, 33.378395>,  <42.442455, 35.504379, 33.330303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266983, 35.148155, 33.378395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606751, 0.392220, 0.691387,
		-0.662883, 0.230346, -0.712410,
		-0.438680, -0.890564, 0.120233,
		42.135380, 34.880985, 33.414467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720188, 35.567173, 33.250175>,  <42.442455, 35.504379, 33.330303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720188, 35.567173, 33.250175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796677, 35.247253, 33.477776>,  <41.842571, 35.055302, 33.614334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796677, 35.247253, 33.477776>,  <41.720188, 35.567173, 33.250175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796677, 35.247253, 33.477776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594013, 0.367194, 0.715764,
		-0.781398, -0.474864, -0.404873,
		0.191224, -0.799796, 0.569000,
		41.854042, 35.007317, 33.648476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032261, 35.527416, 33.313293>,  <41.720188, 35.567173, 33.250175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032261, 35.527416, 33.313293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250027, 35.345886, 33.595470>,  <41.380688, 35.236969, 33.764778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250027, 35.345886, 33.595470>,  <41.032261, 35.527416, 33.313293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250027, 35.345886, 33.595470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591758, 0.388255, 0.706456,
		-0.594502, -0.802058, -0.057185,
		0.544416, -0.453829, 0.705443,
		41.413353, 35.209736, 33.807102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532040, 35.362778, 33.818581>,  <41.032261, 35.527416, 33.313293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532040, 35.362778, 33.818581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884083, 35.337860, 34.006847>,  <41.095310, 35.322910, 34.119808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884083, 35.337860, 34.006847>,  <40.532040, 35.362778, 33.818581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884083, 35.337860, 34.006847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324207, 0.645368, 0.691658,
		-0.346835, -0.761328, 0.547800,
		0.880111, -0.062291, 0.470664,
		41.148117, 35.319172, 34.148048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483864, 35.253277, 34.550777>,  <40.532040, 35.362778, 33.818581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483864, 35.253277, 34.550777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851273, 35.410450, 34.533257>,  <41.071716, 35.504753, 34.522743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.851273, 35.410450, 34.533257>,  <40.483864, 35.253277, 34.550777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851273, 35.410450, 34.533257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241719, 0.645775, 0.724256,
		0.312873, -0.654657, 0.688139,
		0.918522, 0.392936, -0.043802,
		41.126831, 35.528332, 34.520115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753487, 35.339924, 35.254917>,  <40.483864, 35.253277, 34.550777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753487, 35.339924, 35.254917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960571, 35.593384, 35.024971>,  <41.084824, 35.745461, 34.887005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960571, 35.593384, 35.024971>,  <40.753487, 35.339924, 35.254917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960571, 35.593384, 35.024971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081369, 0.705338, 0.704186,
		0.851677, -0.317789, 0.416720,
		0.517711, 0.633648, -0.574862,
		41.115883, 35.783478, 34.852512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171772, 35.595844, 35.753181>,  <40.753487, 35.339924, 35.254917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171772, 35.595844, 35.753181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.166622, 35.837147, 35.434204>,  <41.163532, 35.981926, 35.242817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.166622, 35.837147, 35.434204>,  <41.171772, 35.595844, 35.753181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166622, 35.837147, 35.434204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112397, 0.791586, 0.600632,
		0.993580, 0.097361, 0.057615,
		-0.012871, 0.603252, -0.797447,
		41.162762, 36.018124, 35.194969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629265, 36.186905, 35.900787>,  <41.171772, 35.595844, 35.753181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629265, 36.186905, 35.900787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.411213, 36.322048, 35.593884>,  <41.280380, 36.403133, 35.409740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.411213, 36.322048, 35.593884>,  <41.629265, 36.186905, 35.900787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411213, 36.322048, 35.593884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213214, 0.829233, 0.516636,
		0.810783, 0.445225, -0.380006,
		-0.545133, 0.337858, -0.767256,
		41.247673, 36.423405, 35.363708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738373, 36.869659, 35.987946>,  <41.629265, 36.186905, 35.900787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738373, 36.869659, 35.987946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.400627, 36.856495, 35.774044>,  <41.197979, 36.848598, 35.645702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.400627, 36.856495, 35.774044>,  <41.738373, 36.869659, 35.987946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400627, 36.856495, 35.774044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352602, 0.785615, 0.508411,
		0.403377, 0.617841, -0.674952,
		-0.844369, -0.032909, -0.534751,
		41.147316, 36.846622, 35.613617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530918, 37.535286, 35.909252>,  <41.738373, 36.869659, 35.987946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530918, 37.535286, 35.909252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184711, 37.340153, 35.863831>,  <40.976986, 37.223072, 35.836578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.184711, 37.340153, 35.863831>,  <41.530918, 37.535286, 35.909252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184711, 37.340153, 35.863831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405815, 0.550120, 0.729851,
		-0.293579, 0.677782, -0.674109,
		-0.865521, -0.487833, -0.113550,
		40.925056, 37.193802, 35.829765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928051, 38.064888, 35.568871>,  <41.530918, 37.535286, 35.909252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928051, 38.064888, 35.568871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958920, 38.441063, 35.436432>,  <41.977440, 38.666767, 35.356968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958920, 38.441063, 35.436432>,  <41.928051, 38.064888, 35.568871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958920, 38.441063, 35.436432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085665, -0.324607, -0.941962,
		-0.993331, 0.101057, 0.055512,
		0.077172, 0.940435, -0.331099,
		41.982071, 38.723194, 35.337101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496979, 38.047958, 35.016319>,  <41.928051, 38.064888, 35.568871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496979, 38.047958, 35.016319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754539, 38.350708, 34.971523>,  <41.909077, 38.532356, 34.944645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754539, 38.350708, 34.971523>,  <41.496979, 38.047958, 35.016319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754539, 38.350708, 34.971523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009844, -0.154560, -0.987935,
		-0.765048, 0.635027, -0.106971,
		0.643898, 0.756870, -0.111995,
		41.947708, 38.577770, 34.937923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192413, 38.390217, 34.458473>,  <41.496979, 38.047958, 35.016319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192413, 38.390217, 34.458473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569023, 38.523087, 34.481037>,  <41.794991, 38.602810, 34.494576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569023, 38.523087, 34.481037>,  <41.192413, 38.390217, 34.458473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569023, 38.523087, 34.481037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092916, -0.095045, -0.991127,
		-0.323868, 0.938416, -0.120352,
		0.941529, 0.332177, 0.056412,
		41.851482, 38.622738, 34.497959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282726, 38.937099, 33.925194>,  <41.192413, 38.390217, 34.458473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282726, 38.937099, 33.925194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650642, 38.805431, 34.010647>,  <41.871391, 38.726429, 34.061916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.650642, 38.805431, 34.010647>,  <41.282726, 38.937099, 33.925194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650642, 38.805431, 34.010647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225918, -0.000936, -0.974146,
		0.320863, 0.944269, 0.073505,
		0.919787, -0.329173, 0.213628,
		41.926579, 38.706680, 34.074734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625019, 39.197681, 33.330425>,  <41.282726, 38.937099, 33.925194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625019, 39.197681, 33.330425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884743, 38.946590, 33.502171>,  <42.040577, 38.795937, 33.605217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.884743, 38.946590, 33.502171>,  <41.625019, 39.197681, 33.330425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884743, 38.946590, 33.502171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448817, -0.139495, -0.882669,
		0.613972, 0.765830, 0.191161,
		0.649308, -0.627731, 0.429363,
		42.079536, 38.758270, 33.630981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351444, 39.395828, 33.212944>,  <41.625019, 39.197681, 33.330425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351444, 39.395828, 33.212944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352287, 39.000355, 33.272934>,  <42.352795, 38.763069, 33.308929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352287, 39.000355, 33.272934>,  <42.351444, 39.395828, 33.212944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352287, 39.000355, 33.272934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543195, -0.124787, -0.830281,
		0.839604, 0.083216, 0.536787,
		0.002108, -0.988688, 0.149974,
		42.352921, 38.703747, 33.317924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081337, 39.116619, 33.121979>,  <42.351444, 39.395828, 33.212944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081337, 39.116619, 33.121979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821323, 38.816940, 33.071133>,  <42.665314, 38.637135, 33.040627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821323, 38.816940, 33.071133>,  <43.081337, 39.116619, 33.121979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821323, 38.816940, 33.071133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382430, -0.177979, -0.906681,
		0.656656, -0.637990, 0.402208,
		-0.650038, -0.749194, -0.127116,
		42.626312, 38.592182, 33.032997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470566, 38.726585, 32.681664>,  <43.081337, 39.116619, 33.121979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470566, 38.726585, 32.681664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122284, 38.529865, 32.680733>,  <42.913315, 38.411831, 32.680176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122284, 38.529865, 32.680733>,  <43.470566, 38.726585, 32.681664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122284, 38.529865, 32.680733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181919, -0.317676, -0.930584,
		0.456927, -0.810686, 0.366070,
		-0.870703, -0.491804, -0.002325,
		42.861073, 38.382324, 32.680035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680012, 38.024845, 32.607010>,  <43.470566, 38.726585, 32.681664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680012, 38.024845, 32.607010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296658, 38.058968, 32.498035>,  <43.066647, 38.079441, 32.432652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296658, 38.058968, 32.498035>,  <43.680012, 38.024845, 32.607010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296658, 38.058968, 32.498035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208831, -0.441204, -0.872771,
		-0.194650, -0.893344, 0.405029,
		-0.958384, 0.085302, -0.272438,
		43.009144, 38.084557, 32.416306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488216, 37.266659, 32.406456>,  <43.680012, 38.024845, 32.607010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488216, 37.266659, 32.406456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.238506, 37.532505, 32.242229>,  <43.088680, 37.692013, 32.143692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.238506, 37.532505, 32.242229>,  <43.488216, 37.266659, 32.406456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238506, 37.532505, 32.242229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138953, -0.422711, -0.895549,
		-0.768751, -0.616115, 0.171536,
		-0.624271, 0.664619, -0.410570,
		43.051224, 37.731892, 32.119057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929867, 36.873611, 31.913311>,  <43.488216, 37.266659, 32.406456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929867, 36.873611, 31.913311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976322, 37.255753, 31.804644>,  <43.004196, 37.485039, 31.739443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976322, 37.255753, 31.804644>,  <42.929867, 36.873611, 31.913311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976322, 37.255753, 31.804644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297433, -0.294421, -0.908212,
		-0.947652, 0.024679, -0.318350,
		0.116142, 0.955357, -0.271668,
		43.011166, 37.542358, 31.723143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452274, 36.906235, 31.467354>,  <42.929867, 36.873611, 31.913311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452274, 36.906235, 31.467354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708252, 37.207661, 31.407202>,  <42.861839, 37.388515, 31.371111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708252, 37.207661, 31.407202>,  <42.452274, 36.906235, 31.467354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708252, 37.207661, 31.407202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213522, -0.362374, -0.907245,
		-0.738162, 0.548474, -0.392801,
		0.639942, 0.753566, -0.150379,
		42.900234, 37.433731, 31.362087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244640, 37.202450, 30.828424>,  <42.452274, 36.906235, 31.467354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244640, 37.202450, 30.828424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.617615, 37.335613, 30.884604>,  <42.841400, 37.415512, 30.918310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.617615, 37.335613, 30.884604>,  <42.244640, 37.202450, 30.828424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617615, 37.335613, 30.884604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270363, -0.384971, -0.882441,
		-0.239708, 0.860794, -0.448969,
		0.932440, 0.332912, 0.140446,
		42.897346, 37.435486, 30.926737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437977, 37.488155, 30.212902>,  <42.244640, 37.202450, 30.828424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437977, 37.488155, 30.212902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.799427, 37.430019, 30.374063>,  <43.016296, 37.395138, 30.470760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.799427, 37.430019, 30.374063>,  <42.437977, 37.488155, 30.212902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799427, 37.430019, 30.374063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369748, -0.210124, -0.905060,
		0.216199, 0.966812, -0.136136,
		0.903628, -0.145338, 0.402905,
		43.070515, 37.386417, 30.494936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247646, 38.174149, 30.353233>,  <42.437977, 37.488155, 30.212902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247646, 38.174149, 30.353233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983150, 38.389233, 30.143995>,  <41.824451, 38.518284, 30.018452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983150, 38.389233, 30.143995>,  <42.247646, 38.174149, 30.353233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983150, 38.389233, 30.143995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395982, 0.342057, 0.852171,
		0.637152, 0.770624, -0.013257,
		-0.661238, 0.537713, -0.523096,
		41.784779, 38.550545, 29.987066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274597, 38.888809, 30.683350>,  <42.247646, 38.174149, 30.353233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274597, 38.888809, 30.683350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929455, 38.822487, 30.492355>,  <41.722370, 38.782692, 30.377760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929455, 38.822487, 30.492355>,  <42.274597, 38.888809, 30.683350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929455, 38.822487, 30.492355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485069, 0.537192, 0.690024,
		0.142091, 0.827003, -0.543945,
		-0.862855, -0.165805, -0.477484,
		41.670597, 38.772747, 30.349110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907589, 39.466740, 30.761059>,  <42.274597, 38.888809, 30.683350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907589, 39.466740, 30.761059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638355, 39.191414, 30.652853>,  <41.476814, 39.026218, 30.587929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.638355, 39.191414, 30.652853>,  <41.907589, 39.466740, 30.761059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638355, 39.191414, 30.652853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649653, 0.375493, 0.661026,
		-0.353415, 0.620671, -0.699904,
		-0.673089, -0.688311, -0.270516,
		41.436428, 38.984921, 30.571699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234646, 39.866943, 30.661787>,  <41.907589, 39.466740, 30.761059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234646, 39.866943, 30.661787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147568, 39.485973, 30.747110>,  <41.095322, 39.257393, 30.798304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147568, 39.485973, 30.747110>,  <41.234646, 39.866943, 30.661787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147568, 39.485973, 30.747110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619297, 0.303711, 0.724038,
		-0.754374, 0.025520, -0.655949,
		-0.217696, -0.952422, 0.213307,
		41.082260, 39.200245, 30.811102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509647, 39.932701, 30.733852>,  <41.234646, 39.866943, 30.661787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509647, 39.932701, 30.733852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629002, 39.603928, 30.927919>,  <40.700615, 39.406662, 31.044359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629002, 39.603928, 30.927919>,  <40.509647, 39.932701, 30.733852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629002, 39.603928, 30.927919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703422, 0.154198, 0.693845,
		-0.645109, -0.548308, -0.532158,
		0.298383, -0.821937, 0.485166,
		40.718517, 39.357346, 31.073469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888916, 39.438614, 30.811853>,  <40.509647, 39.932701, 30.733852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888916, 39.438614, 30.811853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.163410, 39.334911, 31.083694>,  <40.328106, 39.272690, 31.246799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.163410, 39.334911, 31.083694>,  <39.888916, 39.438614, 30.811853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163410, 39.334911, 31.083694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666721, 0.149324, 0.730195,
		-0.290788, -0.954196, -0.070378,
		0.686240, -0.259255, 0.679604,
		40.369282, 39.257133, 31.287575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489365, 39.174885, 31.299923>,  <39.888916, 39.438614, 30.811853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489365, 39.174885, 31.299923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836357, 39.215057, 31.494816>,  <40.044552, 39.239159, 31.611752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836357, 39.215057, 31.494816>,  <39.489365, 39.174885, 31.299923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836357, 39.215057, 31.494816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495367, 0.084303, 0.864583,
		0.045748, -0.991367, 0.122877,
		0.867479, 0.100422, 0.487234,
		40.096600, 39.245186, 31.640985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403160, 38.646526, 31.942503>,  <39.489365, 39.174885, 31.299923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403160, 38.646526, 31.942503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685570, 38.921825, 32.009247>,  <39.855015, 39.087006, 32.049294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685570, 38.921825, 32.009247>,  <39.403160, 38.646526, 31.942503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685570, 38.921825, 32.009247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406194, 0.200543, 0.891510,
		0.580119, -0.697205, 0.421151,
		0.706024, 0.688250, 0.166861,
		39.897377, 39.128300, 32.059307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396126, 38.512394, 32.684956>,  <39.403160, 38.646526, 31.942503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396126, 38.512394, 32.684956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.563354, 38.872093, 32.633480>,  <39.663692, 39.087914, 32.602596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.563354, 38.872093, 32.633480>,  <39.396126, 38.512394, 32.684956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563354, 38.872093, 32.633480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321744, 0.279060, 0.904769,
		0.849528, -0.336853, 0.405996,
		0.418071, 0.899253, -0.128689,
		39.688774, 39.141869, 32.594872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605335, 38.606812, 33.391090>,  <39.396126, 38.512394, 32.684956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605335, 38.606812, 33.391090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628506, 38.966541, 33.217720>,  <39.642406, 39.182381, 33.113697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628506, 38.966541, 33.217720>,  <39.605335, 38.606812, 33.391090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628506, 38.966541, 33.217720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230177, 0.434487, 0.870770,
		0.971424, 0.049328, 0.232170,
		0.057922, 0.899326, -0.433425,
		39.645882, 39.236340, 33.087692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965904, 38.968719, 33.831249>,  <39.605335, 38.606812, 33.391090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965904, 38.968719, 33.831249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.734825, 39.199692, 33.600483>,  <39.596176, 39.338276, 33.462025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.734825, 39.199692, 33.600483>,  <39.965904, 38.968719, 33.831249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734825, 39.199692, 33.600483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448354, 0.366135, 0.815428,
		0.682085, 0.729737, 0.047378,
		-0.577701, 0.577433, -0.576916,
		39.561516, 39.372921, 33.427406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947231, 39.706074, 34.151466>,  <39.965904, 38.968719, 33.831249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947231, 39.706074, 34.151466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625687, 39.652901, 33.919559>,  <39.432758, 39.620998, 33.780415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625687, 39.652901, 33.919559>,  <39.947231, 39.706074, 34.151466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625687, 39.652901, 33.919559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586304, 0.341376, 0.734650,
		0.100263, 0.930480, -0.352356,
		-0.803863, -0.132930, -0.579771,
		39.384529, 39.613022, 33.745628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.557476, 38.414562, 26.912251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187588, 38.448841, 26.763905>,  <42.965652, 38.469406, 26.674896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187588, 38.448841, 26.763905>,  <43.557476, 38.414562, 26.912251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187588, 38.448841, 26.763905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321745, 0.344631, 0.881878,
		0.203382, 0.934819, -0.291118,
		-0.924725, 0.085693, -0.370865,
		42.910172, 38.474548, 26.652645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234676, 39.119656, 27.091953>,  <43.557476, 38.414562, 26.912251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234676, 39.119656, 27.091953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919281, 38.885609, 27.016134>,  <42.730045, 38.745182, 26.970642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919281, 38.885609, 27.016134>,  <43.234676, 39.119656, 27.091953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919281, 38.885609, 27.016134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487255, 0.406178, 0.773048,
		-0.375333, 0.701895, -0.605366,
		-0.788485, -0.585118, -0.189550,
		42.682735, 38.710072, 26.959269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689865, 39.578888, 27.154379>,  <43.234676, 39.119656, 27.091953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689865, 39.578888, 27.154379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558338, 39.205040, 27.208595>,  <42.479424, 38.980732, 27.241125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558338, 39.205040, 27.208595>,  <42.689865, 39.578888, 27.154379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558338, 39.205040, 27.208595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484064, 0.290030, 0.825569,
		-0.810902, 0.205848, -0.547781,
		-0.328815, -0.934617, 0.135543,
		42.459694, 38.924656, 27.249258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831196, 39.522369, 27.327145>,  <42.689865, 39.578888, 27.154379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831196, 39.522369, 27.327145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002941, 39.184185, 27.454165>,  <42.105988, 38.981274, 27.530376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002941, 39.184185, 27.454165>,  <41.831196, 39.522369, 27.327145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002941, 39.184185, 27.454165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600252, -0.004439, 0.799799,
		-0.674790, -0.534016, -0.509396,
		0.429367, -0.845463, 0.317549,
		42.131752, 38.930546, 27.549429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261234, 39.177937, 27.703037>,  <41.831196, 39.522369, 27.327145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261234, 39.177937, 27.703037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613377, 39.035027, 27.827831>,  <41.824661, 38.949280, 27.902708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613377, 39.035027, 27.827831>,  <41.261234, 39.177937, 27.703037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613377, 39.035027, 27.827831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348019, -0.039631, 0.936649,
		-0.322280, -0.933157, -0.159229,
		0.880351, -0.357278, 0.311984,
		41.877483, 38.927845, 27.921427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104279, 38.756145, 28.248165>,  <41.261234, 39.177937, 27.703037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104279, 38.756145, 28.248165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493664, 38.796619, 28.330275>,  <41.727295, 38.820904, 28.379539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493664, 38.796619, 28.330275>,  <41.104279, 38.756145, 28.248165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493664, 38.796619, 28.330275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189391, -0.147366, 0.970780,
		0.128479, -0.983893, -0.124292,
		0.973460, 0.101185, 0.205274,
		41.785702, 38.826973, 28.391857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173382, 38.157574, 28.685978>,  <41.104279, 38.756145, 28.248165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173382, 38.157574, 28.685978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503422, 38.376591, 28.741697>,  <41.701447, 38.508003, 28.775129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503422, 38.376591, 28.741697>,  <41.173382, 38.157574, 28.685978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503422, 38.376591, 28.741697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025066, -0.210836, 0.977200,
		0.564431, -0.809779, -0.160236,
		0.825099, 0.547546, 0.139300,
		41.750950, 38.540855, 28.783487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682083, 37.762875, 29.026402>,  <41.173382, 38.157574, 28.685978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682083, 37.762875, 29.026402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778141, 38.142200, 29.109371>,  <41.835777, 38.369797, 29.159153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778141, 38.142200, 29.109371>,  <41.682083, 37.762875, 29.026402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778141, 38.142200, 29.109371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042040, -0.203317, 0.978210,
		0.969826, -0.243632, -0.008959,
		0.240145, 0.948317, 0.207424,
		41.850185, 38.426697, 29.171598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169113, 37.804226, 29.653198>,  <41.682083, 37.762875, 29.026402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169113, 37.804226, 29.653198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997768, 38.164936, 29.630234>,  <41.894962, 38.381363, 29.616455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997768, 38.164936, 29.630234>,  <42.169113, 37.804226, 29.653198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997768, 38.164936, 29.630234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182653, -0.024190, 0.982880,
		0.884952, 0.431519, 0.175075,
		-0.428366, 0.901779, -0.057411,
		41.869259, 38.435471, 29.613010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885910, 37.927151, 29.837067>,  <42.169113, 37.804226, 29.653198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885910, 37.927151, 29.837067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127197, 37.649754, 29.994648>,  <43.271969, 37.483315, 30.089197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127197, 37.649754, 29.994648>,  <42.885910, 37.927151, 29.837067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127197, 37.649754, 29.994648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438470, -0.124254, -0.890115,
		0.666235, 0.709672, 0.229122,
		0.603220, -0.693489, 0.393952,
		43.308163, 37.441708, 30.112833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428299, 38.066795, 29.526770>,  <42.885910, 37.927151, 29.837067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428299, 38.066795, 29.526770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482269, 37.698067, 29.672113>,  <43.514652, 37.476830, 29.759319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482269, 37.698067, 29.672113>,  <43.428299, 38.066795, 29.526770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482269, 37.698067, 29.672113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489213, -0.256924, -0.833463,
		0.861664, 0.290220, 0.416302,
		0.134929, -0.921825, 0.363362,
		43.522747, 37.421520, 29.781122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208427, 37.832512, 29.423681>,  <43.428299, 38.066795, 29.526770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208427, 37.832512, 29.423681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965305, 37.516949, 29.459900>,  <43.819431, 37.327610, 29.481630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965305, 37.516949, 29.459900>,  <44.208427, 37.832512, 29.423681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965305, 37.516949, 29.459900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438671, -0.428621, -0.789843,
		0.661924, -0.440349, 0.606589,
		-0.607803, -0.788909, 0.090546,
		43.782963, 37.280277, 29.487064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693390, 37.288345, 29.308424>,  <44.208427, 37.832512, 29.423681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693390, 37.288345, 29.308424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329819, 37.127052, 29.265974>,  <44.111675, 37.030277, 29.240505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329819, 37.127052, 29.265974>,  <44.693390, 37.288345, 29.308424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329819, 37.127052, 29.265974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325092, -0.525949, -0.785934,
		0.261097, -0.748854, 0.609135,
		-0.908924, -0.403230, -0.106123,
		44.057140, 37.006084, 29.234137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722721, 36.527584, 29.223562>,  <44.693390, 37.288345, 29.308424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722721, 36.527584, 29.223562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389614, 36.655975, 29.043129>,  <44.189751, 36.733009, 28.934870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389614, 36.655975, 29.043129>,  <44.722721, 36.527584, 29.223562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389614, 36.655975, 29.043129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259251, -0.493833, -0.830011,
		-0.489140, -0.808161, 0.328052,
		-0.832785, 0.320943, -0.451070,
		44.139786, 36.752270, 28.907804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479366, 35.923424, 28.902534>,  <44.722721, 36.527584, 29.223562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479366, 35.923424, 28.902534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253754, 36.193474, 28.712349>,  <44.118385, 36.355503, 28.598238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253754, 36.193474, 28.712349>,  <44.479366, 35.923424, 28.902534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253754, 36.193474, 28.712349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195315, -0.450383, -0.871210,
		-0.802319, -0.584259, 0.122170,
		-0.564036, 0.675126, -0.475466,
		44.084541, 36.396011, 28.569710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058800, 35.484146, 28.473961>,  <44.479366, 35.923424, 28.902534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058800, 35.484146, 28.473961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046661, 35.852394, 28.318249>,  <44.039379, 36.073341, 28.224821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046661, 35.852394, 28.318249>,  <44.058800, 35.484146, 28.473961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046661, 35.852394, 28.318249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134797, -0.382133, -0.914223,
		-0.990408, -0.080221, -0.112499,
		-0.030350, 0.920619, -0.389281,
		44.037556, 36.128578, 28.201464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498856, 35.524162, 27.924957>,  <44.058800, 35.484146, 28.473961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498856, 35.524162, 27.924957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791000, 35.791924, 27.870592>,  <43.966290, 35.952579, 27.837973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791000, 35.791924, 27.870592>,  <43.498856, 35.524162, 27.924957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791000, 35.791924, 27.870592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227688, -0.426185, -0.875514,
		-0.643992, 0.608499, -0.463685,
		0.730365, 0.669400, -0.135912,
		44.010109, 35.992744, 27.829819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468266, 35.659241, 27.173914>,  <43.498856, 35.524162, 27.924957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468266, 35.659241, 27.173914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827301, 35.780304, 27.302122>,  <44.042721, 35.852943, 27.379047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827301, 35.780304, 27.302122>,  <43.468266, 35.659241, 27.173914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827301, 35.780304, 27.302122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430898, -0.448840, -0.782859,
		-0.093077, 0.840797, -0.533289,
		0.897587, 0.302659, 0.320521,
		44.096577, 35.871101, 27.398279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772167, 35.649231, 26.511726>,  <43.468266, 35.659241, 27.173914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772167, 35.649231, 26.511726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065994, 35.719601, 26.773859>,  <44.242290, 35.761822, 26.931139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065994, 35.719601, 26.773859>,  <43.772167, 35.649231, 26.511726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065994, 35.719601, 26.773859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677390, -0.134076, -0.723303,
		-0.039381, 0.975231, -0.217656,
		0.734570, 0.175923, 0.655331,
		44.286366, 35.772377, 26.970459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169846, 36.269577, 26.337740>,  <43.772167, 35.649231, 26.511726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169846, 36.269577, 26.337740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426003, 36.041443, 26.543503>,  <44.579697, 35.904564, 26.666962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426003, 36.041443, 26.543503>,  <44.169846, 36.269577, 26.337740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426003, 36.041443, 26.543503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583653, -0.073985, -0.808626,
		0.499243, 0.818076, 0.285496,
		0.640395, -0.570331, 0.514409,
		44.618122, 35.870342, 26.697826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803276, 36.506603, 26.134319>,  <44.169846, 36.269577, 26.337740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803276, 36.506603, 26.134319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900597, 36.154099, 26.296394>,  <44.958988, 35.942596, 26.393639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900597, 36.154099, 26.296394>,  <44.803276, 36.506603, 26.134319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900597, 36.154099, 26.296394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582426, -0.201309, -0.787563,
		0.775620, 0.427604, 0.464293,
		0.243299, -0.881266, 0.405187,
		44.973587, 35.889717, 26.417950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558540, 36.360268, 25.853502>,  <44.803276, 36.506603, 26.134319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558540, 36.360268, 25.853502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413372, 36.006588, 25.971134>,  <45.326271, 35.794380, 26.041714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413372, 36.006588, 25.971134>,  <45.558540, 36.360268, 25.853502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413372, 36.006588, 25.971134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531556, -0.455655, -0.714021,
		0.765336, -0.102811, 0.635367,
		-0.362917, -0.884199, 0.294079,
		45.304497, 35.741329, 26.059359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107925, 35.907909, 25.942062>,  <45.558540, 36.360268, 25.853502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107925, 35.907909, 25.942062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786446, 35.676689, 25.885592>,  <45.593559, 35.537956, 25.851709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786446, 35.676689, 25.885592>,  <46.107925, 35.907909, 25.942062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786446, 35.676689, 25.885592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495355, -0.518498, -0.696981,
		0.329690, -0.630094, 0.703055,
		-0.803696, -0.578050, -0.141177,
		45.545338, 35.503273, 25.843239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.319721, 36.107643, 24.482954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704426, 36.072723, 24.586788>,  <38.935249, 36.051769, 24.649090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704426, 36.072723, 24.586788>,  <38.319721, 36.107643, 24.482954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704426, 36.072723, 24.586788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267659, -0.098845, 0.958430,
		-0.058001, -0.991267, -0.118429,
		0.961766, -0.087289, 0.259589,
		38.992954, 36.046532, 24.664665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374615, 35.655430, 25.080767>,  <38.319721, 36.107643, 24.482954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374615, 35.655430, 25.080767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.708168, 35.873520, 25.115082>,  <38.908302, 36.004375, 25.135670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.708168, 35.873520, 25.115082>,  <38.374615, 35.655430, 25.080767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708168, 35.873520, 25.115082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194972, 0.145585, 0.969944,
		0.516351, -0.825549, 0.227706,
		0.833887, 0.545228, 0.085786,
		38.958336, 36.037086, 25.140818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663113, 35.287983, 25.629780>,  <38.374615, 35.655430, 25.080767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663113, 35.287983, 25.629780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832794, 35.649387, 25.605377>,  <38.934605, 35.866230, 25.590736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832794, 35.649387, 25.605377>,  <38.663113, 35.287983, 25.629780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832794, 35.649387, 25.605377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015525, 0.060103, 0.998071,
		0.905432, -0.424336, 0.011469,
		0.424207, 0.903508, -0.061007,
		38.960056, 35.920441, 25.587074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043865, 35.266197, 26.221830>,  <38.663113, 35.287983, 25.629780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043865, 35.266197, 26.221830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997047, 35.643864, 26.098635>,  <38.968956, 35.870464, 26.024717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997047, 35.643864, 26.098635>,  <39.043865, 35.266197, 26.221830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997047, 35.643864, 26.098635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256232, 0.270913, 0.927875,
		0.959503, 0.187522, 0.210214,
		-0.117047, 0.944162, -0.307991,
		38.961933, 35.927113, 26.006237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497219, 35.710747, 26.655596>,  <39.043865, 35.266197, 26.221830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497219, 35.710747, 26.655596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224377, 35.968277, 26.516905>,  <39.060673, 36.122795, 26.433689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224377, 35.968277, 26.516905>,  <39.497219, 35.710747, 26.655596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224377, 35.968277, 26.516905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158125, 0.333076, 0.929547,
		0.713953, 0.688876, -0.125388,
		-0.682106, 0.643825, -0.346729,
		39.019745, 36.161423, 26.412886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624981, 36.291889, 27.019712>,  <39.497219, 35.710747, 26.655596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624981, 36.291889, 27.019712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245392, 36.299103, 26.893776>,  <39.017639, 36.303429, 26.818214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245392, 36.299103, 26.893776>,  <39.624981, 36.291889, 27.019712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245392, 36.299103, 26.893776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301889, 0.236712, 0.923488,
		0.091177, 0.971413, -0.219190,
		-0.948973, 0.018030, -0.314842,
		38.960701, 36.304512, 26.799324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423618, 37.030125, 27.155319>,  <39.624981, 36.291889, 27.019712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423618, 37.030125, 27.155319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092281, 36.807941, 27.126184>,  <38.893478, 36.674629, 27.108704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092281, 36.807941, 27.126184>,  <39.423618, 37.030125, 27.155319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092281, 36.807941, 27.126184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302745, 0.334445, 0.892464,
		-0.471369, 0.761320, -0.445199,
		-0.828346, -0.555462, -0.072839,
		38.843777, 36.641304, 27.104332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893375, 37.400970, 27.388231>,  <39.423618, 37.030125, 27.155319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893375, 37.400970, 27.388231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.737507, 37.033272, 27.410650>,  <38.643986, 36.812653, 27.424101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.737507, 37.033272, 27.410650>,  <38.893375, 37.400970, 27.388231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737507, 37.033272, 27.410650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320857, 0.192552, 0.927348,
		-0.863253, 0.343381, -0.369979,
		-0.389674, -0.919246, 0.056045,
		38.620605, 36.757500, 27.427464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199406, 37.576057, 27.672806>,  <38.893375, 37.400970, 27.388231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199406, 37.576057, 27.672806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267937, 37.186092, 27.729654>,  <38.309055, 36.952114, 27.763763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267937, 37.186092, 27.729654>,  <38.199406, 37.576057, 27.672806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267937, 37.186092, 27.729654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354293, 0.073639, 0.932231,
		-0.919306, -0.210071, -0.332787,
		0.171329, -0.974909, 0.142123,
		38.319336, 36.893620, 27.772291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555073, 37.262222, 27.777092>,  <38.199406, 37.576057, 27.672806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555073, 37.262222, 27.777092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846119, 37.047241, 27.947607>,  <38.020744, 36.918251, 28.049915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846119, 37.047241, 27.947607>,  <37.555073, 37.262222, 27.777092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846119, 37.047241, 27.947607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496455, 0.016281, 0.867910,
		-0.473404, -0.843134, -0.254977,
		0.727613, -0.537457, 0.426286,
		38.064404, 36.886005, 28.075493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286915, 36.793907, 28.262623>,  <37.555073, 37.262222, 27.777092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286915, 36.793907, 28.262623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.663773, 36.809811, 28.395754>,  <37.889889, 36.819355, 28.475632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.663773, 36.809811, 28.395754>,  <37.286915, 36.793907, 28.262623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663773, 36.809811, 28.395754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335173, 0.100543, 0.936777,
		0.003780, -0.994138, 0.108052,
		0.942149, 0.039757, 0.332828,
		37.946419, 36.821739, 28.495602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430618, 36.258648, 28.746338>,  <37.286915, 36.793907, 28.262623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430618, 36.258648, 28.746338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.697021, 36.547974, 28.819273>,  <37.856865, 36.721569, 28.863033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.697021, 36.547974, 28.819273>,  <37.430618, 36.258648, 28.746338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697021, 36.547974, 28.819273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286222, 0.022072, 0.957909,
		0.688843, -0.690168, 0.221728,
		0.666012, 0.723312, 0.182337,
		37.896824, 36.764969, 28.873974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711933, 36.044918, 29.399706>,  <37.430618, 36.258648, 28.746338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711933, 36.044918, 29.399706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817631, 36.426308, 29.341658>,  <37.881050, 36.655140, 29.306829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817631, 36.426308, 29.341658>,  <37.711933, 36.044918, 29.399706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817631, 36.426308, 29.341658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212972, 0.204441, 0.955430,
		0.940648, -0.221560, 0.257086,
		0.264244, 0.953475, -0.145121,
		37.896904, 36.712349, 29.298120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969479, 36.236000, 29.933783>,  <37.711933, 36.044918, 29.399706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969479, 36.236000, 29.933783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900578, 36.608196, 29.804470>,  <37.859238, 36.831516, 29.726883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900578, 36.608196, 29.804470>,  <37.969479, 36.236000, 29.933783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900578, 36.608196, 29.804470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154232, 0.298664, 0.941813,
		0.972904, 0.212089, 0.092066,
		-0.172251, 0.930493, -0.323282,
		37.848904, 36.887344, 29.707485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752583, 36.109467, 29.843327>,  <37.969479, 36.236000, 29.933783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752583, 36.109467, 29.843327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980503, 35.816753, 29.992899>,  <39.117256, 35.641125, 30.082644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980503, 35.816753, 29.992899>,  <38.752583, 36.109467, 29.843327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980503, 35.816753, 29.992899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258363, -0.272431, -0.926838,
		0.780113, 0.624724, 0.033834,
		0.569801, -0.731780, 0.373933,
		39.151443, 35.597221, 30.105080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500687, 36.261982, 29.713081>,  <38.752583, 36.109467, 29.843327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500687, 36.261982, 29.713081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.422375, 35.871353, 29.748819>,  <39.375389, 35.636978, 29.770262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.422375, 35.871353, 29.748819>,  <39.500687, 36.261982, 29.713081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422375, 35.871353, 29.748819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385798, -0.160465, -0.908521,
		0.901571, -0.143399, 0.408174,
		-0.195778, -0.976569, 0.089347,
		39.363640, 35.578381, 29.775623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167580, 35.940544, 29.480936>,  <39.500687, 36.261982, 29.713081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167580, 35.940544, 29.480936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.903690, 35.640163, 29.469404>,  <39.745358, 35.459934, 29.462486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.903690, 35.640163, 29.469404>,  <40.167580, 35.940544, 29.480936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903690, 35.640163, 29.469404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364396, -0.286108, -0.886204,
		0.657251, -0.595155, 0.462397,
		-0.659725, -0.750954, -0.028828,
		39.705772, 35.414879, 29.460756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605343, 35.334660, 29.376686>,  <40.167580, 35.940544, 29.480936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605343, 35.334660, 29.376686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.232651, 35.228897, 29.277115>,  <40.009037, 35.165440, 29.217371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.232651, 35.228897, 29.277115>,  <40.605343, 35.334660, 29.376686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232651, 35.228897, 29.277115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328816, -0.323308, -0.887329,
		0.154138, -0.908603, 0.388178,
		-0.931730, -0.264410, -0.248929,
		39.953133, 35.149574, 29.202436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693626, 34.679516, 29.187620>,  <40.605343, 35.334660, 29.376686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693626, 34.679516, 29.187620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357113, 34.806641, 29.012697>,  <40.155205, 34.882915, 28.907743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357113, 34.806641, 29.012697>,  <40.693626, 34.679516, 29.187620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357113, 34.806641, 29.012697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402278, -0.172351, -0.899148,
		-0.361128, -0.932359, 0.017149,
		-0.841284, 0.317809, -0.437309,
		40.104729, 34.901981, 28.881504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640842, 34.122124, 28.888714>,  <40.693626, 34.679516, 29.187620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640842, 34.122124, 28.888714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.415218, 34.384819, 28.688499>,  <40.279842, 34.542435, 28.568371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.415218, 34.384819, 28.688499>,  <40.640842, 34.122124, 28.888714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415218, 34.384819, 28.688499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378216, -0.333366, -0.863609,
		-0.734023, -0.676438, -0.060349,
		-0.564059, 0.656734, -0.500537,
		40.246002, 34.581841, 28.538338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328869, 33.754368, 28.437002>,  <40.640842, 34.122124, 28.888714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328869, 33.754368, 28.437002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301247, 34.133667, 28.313026>,  <40.284676, 34.361244, 28.238640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301247, 34.133667, 28.313026>,  <40.328869, 33.754368, 28.437002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301247, 34.133667, 28.313026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245648, -0.284955, -0.926530,
		-0.966897, -0.140117, -0.213257,
		-0.069054, 0.948245, -0.309941,
		40.280529, 34.418140, 28.220043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935841, 33.680634, 27.779072>,  <40.328869, 33.754368, 28.437002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935841, 33.680634, 27.779072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.140942, 34.024033, 27.782377>,  <40.264004, 34.230072, 27.784361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.140942, 34.024033, 27.782377>,  <39.935841, 33.680634, 27.779072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140942, 34.024033, 27.782377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436800, -0.252578, -0.863371,
		-0.739112, 0.446309, -0.504501,
		0.512756, 0.858494, 0.008264,
		40.294769, 34.281582, 27.784857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791801, 33.962540, 27.166927>,  <39.935841, 33.680634, 27.779072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791801, 33.962540, 27.166927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.135056, 34.127541, 27.289207>,  <40.341007, 34.226543, 27.362576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.135056, 34.127541, 27.289207>,  <39.791801, 33.962540, 27.166927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135056, 34.127541, 27.289207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403895, -0.174763, -0.897957,
		-0.316987, 0.894034, -0.316578,
		0.858131, 0.412505, 0.305698,
		40.392494, 34.251293, 27.380917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915020, 34.372299, 26.532019>,  <39.791801, 33.962540, 27.166927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915020, 34.372299, 26.532019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.263634, 34.377560, 26.728083>,  <40.472801, 34.380714, 26.845722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.263634, 34.377560, 26.728083>,  <39.915020, 34.372299, 26.532019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263634, 34.377560, 26.728083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487445, -0.131662, -0.863170,
		0.053183, 0.991207, -0.121158,
		0.871532, 0.013152, 0.490162,
		40.525093, 34.381504, 26.875132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352451, 34.813377, 26.201395>,  <39.915020, 34.372299, 26.532019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352451, 34.813377, 26.201395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.583706, 34.540913, 26.381075>,  <40.722458, 34.377434, 26.488882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.583706, 34.540913, 26.381075>,  <40.352451, 34.813377, 26.201395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583706, 34.540913, 26.381075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407034, -0.236373, -0.882299,
		0.707168, 0.692925, 0.140602,
		0.578132, -0.681163, 0.449200,
		40.757145, 34.336563, 26.515835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992146, 34.820927, 25.878710>,  <40.352451, 34.813377, 26.201395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992146, 34.820927, 25.878710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.022266, 34.472782, 26.073357>,  <41.040340, 34.263893, 26.190145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.022266, 34.472782, 26.073357>,  <40.992146, 34.820927, 25.878710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022266, 34.472782, 26.073357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615730, -0.343269, -0.709255,
		0.784351, 0.353035, 0.510059,
		0.075305, -0.870363, 0.486618,
		41.044857, 34.211674, 26.219341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700020, 34.608074, 25.753164>,  <40.992146, 34.820927, 25.878710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700020, 34.608074, 25.753164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.551998, 34.260414, 25.884398>,  <41.463184, 34.051819, 25.963139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.551998, 34.260414, 25.884398>,  <41.700020, 34.608074, 25.753164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551998, 34.260414, 25.884398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385350, -0.464950, -0.797074,
		0.845318, -0.168536, 0.506985,
		-0.370058, -0.869147, 0.328085,
		41.440979, 33.999668, 25.982822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285465, 34.126457, 25.814329>,  <41.700020, 34.608074, 25.753164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285465, 34.126457, 25.814329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.931171, 33.947071, 25.766418>,  <41.718594, 33.839439, 25.737673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.931171, 33.947071, 25.766418>,  <42.285465, 34.126457, 25.814329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931171, 33.947071, 25.766418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346658, -0.467472, -0.813202,
		0.308704, -0.761804, 0.569522,
		-0.885737, -0.448468, -0.119775,
		41.665451, 33.812531, 25.730486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225983, 33.390800, 26.167088>,  <42.285465, 34.126457, 25.814329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225983, 33.390800, 26.167088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.532951, 33.167736, 26.293631>,  <42.717133, 33.033897, 26.369556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.532951, 33.167736, 26.293631>,  <42.225983, 33.390800, 26.167088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532951, 33.167736, 26.293631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243276, 0.203251, 0.948423,
		-0.593194, -0.804803, 0.020314,
		0.767422, -0.557657, 0.316357,
		42.763180, 33.000439, 26.388538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929989, 32.882626, 26.723429>,  <42.225983, 33.390800, 26.167088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929989, 32.882626, 26.723429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.329514, 32.898785, 26.734306>,  <42.569229, 32.908482, 26.740833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.329514, 32.898785, 26.734306>,  <41.929989, 32.882626, 26.723429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329514, 32.898785, 26.734306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027388, 0.004275, 0.999616,
		0.040273, -0.999174, 0.005377,
		0.998813, 0.040405, 0.027193,
		42.629158, 32.910904, 26.742464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073559, 32.507420, 27.292358>,  <41.929989, 32.882626, 26.723429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073559, 32.507420, 27.292358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.406837, 32.718533, 27.226360>,  <42.606804, 32.845200, 27.186762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.406837, 32.718533, 27.226360>,  <42.073559, 32.507420, 27.292358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406837, 32.718533, 27.226360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181810, 0.020328, 0.983124,
		0.522233, -0.849134, -0.079019,
		0.833197, 0.527786, -0.164997,
		42.656796, 32.876869, 27.176861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617699, 32.184898, 27.728012>,  <42.073559, 32.507420, 27.292358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617699, 32.184898, 27.728012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.705830, 32.569473, 27.662169>,  <42.758709, 32.800217, 27.622662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.705830, 32.569473, 27.662169>,  <42.617699, 32.184898, 27.728012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705830, 32.569473, 27.662169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332189, 0.084714, 0.939401,
		0.917119, -0.261654, -0.300715,
		0.220324, 0.961437, -0.164611,
		42.771927, 32.857903, 27.612785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282322, 32.352509, 28.142519>,  <42.617699, 32.184898, 27.728012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282322, 32.352509, 28.142519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.097065, 32.703030, 28.089457>,  <42.985912, 32.913342, 28.057619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.097065, 32.703030, 28.089457>,  <43.282322, 32.352509, 28.142519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097065, 32.703030, 28.089457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124484, 0.212511, 0.969197,
		0.877499, 0.432362, -0.207508,
		-0.463141, 0.876301, -0.132656,
		42.958122, 32.965919, 28.049660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724541, 32.785801, 28.384388>,  <43.282322, 32.352509, 28.142519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724541, 32.785801, 28.384388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.375294, 32.979855, 28.403587>,  <43.165745, 33.096287, 28.415108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.375294, 32.979855, 28.403587>,  <43.724541, 32.785801, 28.384388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375294, 32.979855, 28.403587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242404, 0.346610, 0.906147,
		0.422970, 0.802809, -0.420231,
		-0.873119, 0.485139, 0.047998,
		43.113358, 33.125397, 28.417986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856995, 33.410469, 28.806332>,  <43.724541, 32.785801, 28.384388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856995, 33.410469, 28.806332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.458443, 33.378670, 28.794230>,  <43.219311, 33.359589, 28.786968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.458443, 33.378670, 28.794230>,  <43.856995, 33.410469, 28.806332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458443, 33.378670, 28.794230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060374, 0.410370, 0.909918,
		-0.059921, 0.908447, -0.413682,
		-0.996376, -0.079499, -0.030257,
		43.159531, 33.354820, 28.785152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638023, 34.060715, 29.087692>,  <43.856995, 33.410469, 28.806332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638023, 34.060715, 29.087692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.347523, 33.790295, 29.137516>,  <43.173222, 33.628040, 29.167410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.347523, 33.790295, 29.137516>,  <43.638023, 34.060715, 29.087692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347523, 33.790295, 29.137516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056419, 0.239203, 0.969329,
		-0.685114, 0.696946, -0.211863,
		-0.726248, -0.676054, 0.124560,
		43.129650, 33.587479, 29.174885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155678, 34.465149, 29.544008>,  <43.638023, 34.060715, 29.087692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155678, 34.465149, 29.544008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.082478, 34.073872, 29.583309>,  <43.038559, 33.839108, 29.606890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.082478, 34.073872, 29.583309>,  <43.155678, 34.465149, 29.544008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082478, 34.073872, 29.583309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232721, 0.140203, 0.962384,
		-0.955171, 0.153253, -0.253303,
		-0.183002, -0.978190, 0.098252,
		43.027576, 33.780415, 29.612785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442287, 34.450283, 29.778900>,  <43.155678, 34.465149, 29.544008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442287, 34.450283, 29.778900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.623112, 34.109562, 29.884783>,  <42.731606, 33.905128, 29.948313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.623112, 34.109562, 29.884783>,  <42.442287, 34.450283, 29.778900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623112, 34.109562, 29.884783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208488, 0.187639, 0.959857,
		-0.867278, -0.489104, -0.092765,
		0.452063, -0.851803, 0.264708,
		42.758732, 33.854019, 29.964195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978012, 34.234219, 30.235695>,  <42.442287, 34.450283, 29.778900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978012, 34.234219, 30.235695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.283928, 33.985512, 30.303219>,  <42.467480, 33.836288, 30.343733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.283928, 33.985512, 30.303219>,  <41.978012, 34.234219, 30.235695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283928, 33.985512, 30.303219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244183, -0.037262, 0.969013,
		-0.596212, -0.782314, -0.180323,
		0.764792, -0.621769, 0.168812,
		42.513367, 33.798981, 30.353863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693092, 33.632095, 30.694796>,  <41.978012, 34.234219, 30.235695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693092, 33.632095, 30.694796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.082321, 33.688637, 30.767626>,  <42.315857, 33.722561, 30.811325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.082321, 33.688637, 30.767626>,  <41.693092, 33.632095, 30.694796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082321, 33.688637, 30.767626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172648, -0.076421, 0.982014,
		0.152727, -0.987005, -0.049959,
		0.973071, 0.141355, 0.182076,
		42.374241, 33.731041, 30.822248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941280, 33.057190, 31.151976>,  <41.693092, 33.632095, 30.694796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941280, 33.057190, 31.151976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.183807, 33.373978, 31.180710>,  <42.329323, 33.564049, 31.197950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.183807, 33.373978, 31.180710>,  <41.941280, 33.057190, 31.151976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183807, 33.373978, 31.180710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207804, 0.070601, 0.975619,
		0.767588, -0.606466, 0.207381,
		0.606322, 0.791968, 0.071833,
		42.365704, 33.611568, 31.202259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214993, 33.006149, 31.735630>,  <41.941280, 33.057190, 31.151976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214993, 33.006149, 31.735630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.314217, 33.389214, 31.677181>,  <42.373749, 33.619053, 31.642113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.314217, 33.389214, 31.677181>,  <42.214993, 33.006149, 31.735630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314217, 33.389214, 31.677181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178352, 0.193402, 0.964772,
		0.952186, -0.213258, 0.218775,
		0.248057, 0.957662, -0.146120,
		42.388634, 33.676514, 31.633345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<46.414394, 35.062237, 25.882160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.051426, 35.112511, 25.721769>,  <45.833645, 35.142673, 25.625534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.051426, 35.112511, 25.721769>,  <46.414394, 35.062237, 25.882160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051426, 35.112511, 25.721769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251893, -0.601088, -0.758448,
		-0.336346, -0.789239, 0.513785,
		-0.907426, 0.125682, -0.400977,
		45.779198, 35.150215, 25.601477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176491, 34.428513, 25.661167>,  <46.414394, 35.062237, 25.882160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176491, 34.428513, 25.661167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.965618, 34.679188, 25.431612>,  <45.839096, 34.829594, 25.293879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.965618, 34.679188, 25.431612>,  <46.176491, 34.428513, 25.661167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965618, 34.679188, 25.431612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370382, -0.438365, -0.818934,
		-0.764785, -0.644285, -0.001014,
		-0.527183, 0.626684, -0.573887,
		45.807465, 34.867191, 25.259445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679852, 34.004490, 25.300076>,  <46.176491, 34.428513, 25.661167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679852, 34.004490, 25.300076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.711685, 34.343979, 25.090946>,  <45.730785, 34.547672, 24.965469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.711685, 34.343979, 25.090946>,  <45.679852, 34.004490, 25.300076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711685, 34.343979, 25.090946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148565, -0.528727, -0.835689,
		-0.985695, -0.011164, -0.168169,
		0.079586, 0.848719, -0.522822,
		45.735561, 34.598595, 24.934099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307495, 33.877602, 24.685541>,  <45.679852, 34.004490, 25.300076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307495, 33.877602, 24.685541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.519482, 34.199608, 24.578894>,  <45.646675, 34.392811, 24.514906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.519482, 34.199608, 24.578894>,  <45.307495, 33.877602, 24.685541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519482, 34.199608, 24.578894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146006, -0.396325, -0.906427,
		-0.835353, 0.441451, -0.327577,
		0.529970, 0.805014, -0.266617,
		45.678471, 34.441113, 24.498909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994816, 34.160629, 24.058661>,  <45.307495, 33.877602, 24.685541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994816, 34.160629, 24.058661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.378716, 34.269115, 24.087845>,  <45.609055, 34.334206, 24.105356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.378716, 34.269115, 24.087845>,  <44.994816, 34.160629, 24.058661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378716, 34.269115, 24.087845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186330, -0.420495, -0.887955,
		-0.210146, 0.865810, -0.454105,
		0.959750, 0.271214, 0.072961,
		45.666641, 34.350479, 24.109734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167145, 34.413097, 23.359425>,  <44.994816, 34.160629, 24.058661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167145, 34.413097, 23.359425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.517265, 34.344101, 23.540134>,  <45.727337, 34.302704, 23.648560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.517265, 34.344101, 23.540134>,  <45.167145, 34.413097, 23.359425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517265, 34.344101, 23.540134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339522, -0.446037, -0.828116,
		0.344353, 0.878235, -0.331850,
		0.875298, -0.172493, 0.451774,
		45.779854, 34.292355, 23.675667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576874, 34.737209, 22.910465>,  <45.167145, 34.413097, 23.359425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576874, 34.737209, 22.910465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.820110, 34.495533, 23.116447>,  <45.966053, 34.350525, 23.240036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.820110, 34.495533, 23.116447>,  <45.576874, 34.737209, 22.910465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820110, 34.495533, 23.116447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425947, -0.299076, -0.853887,
		0.669924, 0.738582, 0.075489,
		0.608088, -0.604194, 0.514955,
		46.002537, 34.314274, 23.270933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267639, 34.739418, 22.670492>,  <45.576874, 34.737209, 22.910465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267639, 34.739418, 22.670492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.289452, 34.390553, 22.864960>,  <46.302540, 34.181232, 22.981640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.289452, 34.390553, 22.864960>,  <46.267639, 34.739418, 22.670492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.289452, 34.390553, 22.864960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536279, -0.385127, -0.751054,
		0.842277, 0.301681, 0.446719,
		0.054535, -0.872162, 0.486169,
		46.305813, 34.128902, 23.010811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986042, 34.536800, 22.660767>,  <46.267639, 34.739418, 22.670492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986042, 34.536800, 22.660767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.761284, 34.209888, 22.711863>,  <46.626427, 34.013741, 22.742519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.761284, 34.209888, 22.711863>,  <46.986042, 34.536800, 22.660767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.761284, 34.209888, 22.711863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361524, -0.381522, -0.850730,
		0.744022, -0.431844, 0.509845,
		-0.561899, -0.817283, 0.127739,
		46.592712, 33.964703, 22.750185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.349442, 33.922523, 22.446854>,  <46.986042, 34.536800, 22.660767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.349442, 33.922523, 22.446854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.975075, 33.782066, 22.435875>,  <46.750454, 33.697792, 22.429289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.975075, 33.782066, 22.435875>,  <47.349442, 33.922523, 22.446854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.975075, 33.782066, 22.435875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214902, -0.507571, -0.834379,
		0.279059, -0.786809, 0.550507,
		-0.935919, -0.351146, -0.027444,
		46.694298, 33.676723, 22.427641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.342949, 33.227592, 22.303652>,  <47.349442, 33.922523, 22.446854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.342949, 33.227592, 22.303652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.973694, 33.335175, 22.193756>,  <46.752140, 33.399723, 22.127819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.973694, 33.335175, 22.193756>,  <47.342949, 33.227592, 22.303652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973694, 33.335175, 22.193756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002023, -0.711184, -0.703003,
		-0.384466, -0.649524, 0.655976,
		-0.923137, 0.268954, -0.274740,
		46.696754, 33.415859, 22.111334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086216, 32.605286, 22.135595>,  <47.342949, 33.227592, 22.303652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086216, 32.605286, 22.135595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.865593, 32.878799, 21.944510>,  <46.733219, 33.042908, 21.829857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.865593, 32.878799, 21.944510>,  <47.086216, 32.605286, 22.135595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865593, 32.878799, 21.944510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083613, -0.524502, -0.847294,
		-0.829933, -0.507278, 0.232122,
		-0.551562, 0.683788, -0.477717,
		46.700123, 33.083935, 21.801195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548904, 32.304638, 21.697903>,  <47.086216, 32.605286, 22.135595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548904, 32.304638, 21.697903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.619045, 32.666954, 21.543606>,  <46.661129, 32.884342, 21.451029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.619045, 32.666954, 21.543606>,  <46.548904, 32.304638, 21.697903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.619045, 32.666954, 21.543606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071849, -0.402540, -0.912578,
		-0.981880, 0.132310, -0.135668,
		0.175356, 0.905790, -0.385740,
		46.671654, 32.938690, 21.427883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386948, 31.525995, 21.478695>,  <46.548904, 32.304638, 21.697903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386948, 31.525995, 21.478695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.598877, 31.195681, 21.401377>,  <46.726036, 30.997492, 21.354986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.598877, 31.195681, 21.401377>,  <46.386948, 31.525995, 21.478695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598877, 31.195681, 21.401377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462840, 0.472515, -0.750006,
		0.710680, 0.307906, 0.632556,
		0.529824, -0.825787, -0.193295,
		46.757824, 30.947945, 21.343388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705513, 31.344759, 21.531109>,  <46.386948, 31.525995, 21.478695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705513, 31.344759, 21.531109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.316010, 31.403173, 21.461294>,  <45.082306, 31.438223, 21.419405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.316010, 31.403173, 21.461294>,  <45.705513, 31.344759, 21.531109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316010, 31.403173, 21.461294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114562, 0.348121, 0.930423,
		0.196636, 0.926005, -0.322256,
		-0.973761, 0.146036, -0.174538,
		45.023880, 31.446983, 21.408934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450481, 32.035091, 21.819704>,  <45.705513, 31.344759, 21.531109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450481, 32.035091, 21.819704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.135052, 31.789846, 21.800756>,  <44.945793, 31.642698, 21.789389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.135052, 31.789846, 21.800756>,  <45.450481, 32.035091, 21.819704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135052, 31.789846, 21.800756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288161, 0.300376, 0.909251,
		-0.543246, 0.730661, -0.413544,
		-0.788573, -0.613114, -0.047370,
		44.898479, 31.605913, 21.786545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935738, 32.489891, 21.971642>,  <45.450481, 32.035091, 21.819704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935738, 32.489891, 21.971642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.790089, 32.121666, 22.028172>,  <44.702698, 31.900730, 22.062090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.790089, 32.121666, 22.028172>,  <44.935738, 32.489891, 21.971642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790089, 32.121666, 22.028172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517504, 0.326142, 0.791089,
		-0.774341, 0.214918, -0.595152,
		-0.364124, -0.920566, 0.141324,
		44.680851, 31.845497, 22.070568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353481, 32.538742, 22.421341>,  <44.935738, 32.489891, 21.971642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353481, 32.538742, 22.421341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.397346, 32.142075, 22.448397>,  <44.423668, 31.904076, 22.464630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.397346, 32.142075, 22.448397>,  <44.353481, 32.538742, 22.421341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397346, 32.142075, 22.448397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634477, -0.017459, 0.772744,
		-0.765122, -0.127660, -0.631103,
		0.109667, -0.991665, 0.067639,
		44.430248, 31.844576, 22.468689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613640, 32.276615, 22.468887>,  <44.353481, 32.538742, 22.421341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613640, 32.276615, 22.468887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.881767, 32.027882, 22.630875>,  <44.042645, 31.878641, 22.728067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.881767, 32.027882, 22.630875>,  <43.613640, 32.276615, 22.468887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881767, 32.027882, 22.630875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471417, 0.064623, 0.879540,
		-0.573097, -0.780479, -0.249824,
		0.670318, -0.621832, 0.404967,
		44.082863, 31.841331, 22.752365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275562, 31.779371, 22.775900>,  <43.613640, 32.276615, 22.468887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275562, 31.779371, 22.775900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631687, 31.794361, 22.957420>,  <43.845364, 31.803354, 23.066332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631687, 31.794361, 22.957420>,  <43.275562, 31.779371, 22.775900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631687, 31.794361, 22.957420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455195, 0.047680, 0.889114,
		0.011680, -0.998159, 0.059508,
		0.890315, 0.037473, 0.453800,
		43.898781, 31.805603, 23.093561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170967, 31.282253, 23.403130>,  <43.275562, 31.779371, 22.775900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170967, 31.282253, 23.403130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.488819, 31.516235, 23.468115>,  <43.679531, 31.656624, 23.507107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.488819, 31.516235, 23.468115>,  <43.170967, 31.282253, 23.403130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488819, 31.516235, 23.468115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276678, 0.110731, 0.954562,
		0.540387, -0.803470, 0.249835,
		0.794626, 0.584956, 0.162465,
		43.727207, 31.691723, 23.516855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455730, 31.056269, 24.016510>,  <43.170967, 31.282253, 23.403130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455730, 31.056269, 24.016510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631660, 31.413433, 23.978008>,  <43.737217, 31.627731, 23.954906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631660, 31.413433, 23.978008>,  <43.455730, 31.056269, 24.016510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631660, 31.413433, 23.978008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118801, 0.164084, 0.979266,
		0.890191, -0.419271, 0.178247,
		0.439825, 0.892910, -0.096257,
		43.763607, 31.681307, 23.949131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946682, 31.174820, 24.586348>,  <43.455730, 31.056269, 24.016510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946682, 31.174820, 24.586348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.903900, 31.546305, 24.444328>,  <43.878231, 31.769196, 24.359118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.903900, 31.546305, 24.444328>,  <43.946682, 31.174820, 24.586348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903900, 31.546305, 24.444328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216862, 0.326707, 0.919910,
		0.970325, 0.175389, 0.166457,
		-0.106959, 0.928709, -0.355047,
		43.871811, 31.824917, 24.337814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289848, 31.542425, 25.066935>,  <43.946682, 31.174820, 24.586348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289848, 31.542425, 25.066935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.079838, 31.827085, 24.880217>,  <43.953831, 31.997881, 24.768185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.079838, 31.827085, 24.880217>,  <44.289848, 31.542425, 25.066935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079838, 31.827085, 24.880217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280986, 0.372779, 0.884354,
		0.803363, 0.595474, 0.004245,
		-0.525028, 0.711651, -0.466797,
		43.922329, 32.040581, 24.740177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416729, 32.320236, 25.321569>,  <44.289848, 31.542425, 25.066935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416729, 32.320236, 25.321569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.039433, 32.302910, 25.189859>,  <43.813053, 32.292515, 25.110834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.039433, 32.302910, 25.189859>,  <44.416729, 32.320236, 25.321569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039433, 32.302910, 25.189859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304744, 0.507008, 0.806272,
		0.132017, 0.860852, -0.491431,
		-0.943240, -0.043319, -0.329274,
		43.756462, 32.289913, 25.091078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203796, 33.018291, 25.433964>,  <44.416729, 32.320236, 25.321569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203796, 33.018291, 25.433964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.876560, 32.795364, 25.377218>,  <43.680218, 32.661606, 25.343170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.876560, 32.795364, 25.377218>,  <44.203796, 33.018291, 25.433964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876560, 32.795364, 25.377218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462213, 0.490417, 0.738816,
		-0.342185, 0.669988, -0.658806,
		-0.818088, -0.557321, -0.141864,
		43.631134, 32.628170, 25.334660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721828, 33.532745, 25.482431>,  <44.203796, 33.018291, 25.433964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721828, 33.532745, 25.482431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540909, 33.182850, 25.552004>,  <43.432358, 32.972912, 25.593748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540909, 33.182850, 25.552004>,  <43.721828, 33.532745, 25.482431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540909, 33.182850, 25.552004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477984, 0.402398, 0.780774,
		-0.752965, 0.270006, -0.600116,
		-0.452299, -0.874741, 0.173933,
		43.405220, 32.920429, 25.604183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070908, 33.713375, 25.779314>,  <43.721828, 33.532745, 25.482431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070908, 33.713375, 25.779314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.125465, 33.327694, 25.870277>,  <43.158199, 33.096287, 25.924856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.125465, 33.327694, 25.870277>,  <43.070908, 33.713375, 25.779314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125465, 33.327694, 25.870277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280782, 0.182514, 0.942258,
		-0.950031, -0.192369, -0.245837,
		0.136392, -0.964201, 0.227408,
		43.166382, 33.038433, 25.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469883, 33.573101, 25.320185>,  <43.070908, 33.713375, 25.779314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469883, 33.573101, 25.320185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.069908, 33.573208, 25.315781>,  <41.829922, 33.573273, 25.313139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.069908, 33.573208, 25.315781>,  <42.469883, 33.573101, 25.320185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069908, 33.573208, 25.315781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010831, -0.157270, -0.987496,
		-0.001994, -0.987556, 0.157258,
		-0.999939, 0.000266, -0.011010,
		41.769928, 33.573288, 25.312477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293930, 33.052006, 24.815186>,  <42.469883, 33.573101, 25.320185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293930, 33.052006, 24.815186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.966946, 33.281567, 24.834715>,  <41.770756, 33.419304, 24.846434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.966946, 33.281567, 24.834715>,  <42.293930, 33.052006, 24.815186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966946, 33.281567, 24.834715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189697, -0.188222, -0.963632,
		-0.543845, -0.796996, 0.262733,
		-0.817464, 0.573907, 0.048824,
		41.721706, 33.453739, 24.849361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750092, 32.718300, 24.558910>,  <42.293930, 33.052006, 24.815186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750092, 32.718300, 24.558910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603722, 33.088837, 24.523144>,  <41.515900, 33.311157, 24.501684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603722, 33.088837, 24.523144>,  <41.750092, 32.718300, 24.558910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603722, 33.088837, 24.523144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121830, -0.142935, -0.982205,
		-0.922634, -0.348523, 0.165159,
		-0.365928, 0.926337, -0.089416,
		41.493942, 33.366737, 24.496319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189335, 32.590508, 24.183331>,  <41.750092, 32.718300, 24.558910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189335, 32.590508, 24.183331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.254555, 32.982780, 24.140125>,  <41.293686, 33.218147, 24.114202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.254555, 32.982780, 24.140125>,  <41.189335, 32.590508, 24.183331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254555, 32.982780, 24.140125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209056, -0.072653, -0.975201,
		-0.964215, 0.181589, 0.193172,
		0.163051, 0.980687, -0.108015,
		41.303471, 33.276985, 24.107721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594986, 32.788654, 23.770971>,  <41.189335, 32.590508, 24.183331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594986, 32.788654, 23.770971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898018, 33.049011, 23.751356>,  <41.079838, 33.205227, 23.739586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898018, 33.049011, 23.751356>,  <40.594986, 32.788654, 23.770971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898018, 33.049011, 23.751356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058043, -0.007656, -0.998285,
		-0.650156, 0.759128, 0.031980,
		0.757581, 0.650897, -0.049040,
		41.125294, 33.244282, 23.736645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370491, 33.123615, 23.197401>,  <40.594986, 32.788654, 23.770971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370491, 33.123615, 23.197401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756184, 33.216763, 23.248045>,  <40.987598, 33.272652, 23.278431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756184, 33.216763, 23.248045>,  <40.370491, 33.123615, 23.197401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756184, 33.216763, 23.248045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141958, -0.050303, -0.988594,
		-0.223843, 0.971207, -0.081562,
		0.964232, 0.232868, 0.126611,
		41.045452, 33.286621, 23.286028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487553, 33.615383, 22.732670>,  <40.370491, 33.123615, 23.197401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487553, 33.615383, 22.732670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.853390, 33.474735, 22.812550>,  <41.072891, 33.390347, 22.860477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.853390, 33.474735, 22.812550>,  <40.487553, 33.615383, 22.732670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853390, 33.474735, 22.812550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102043, -0.277183, -0.955383,
		0.391284, 0.894167, -0.217630,
		0.914595, -0.351619, 0.199700,
		41.127769, 33.369251, 22.872459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912979, 34.187439, 22.991926>,  <40.487553, 33.615383, 22.732670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912979, 34.187439, 22.991926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.739525, 34.472015, 22.770725>,  <40.635452, 34.642761, 22.638004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.739525, 34.472015, 22.770725>,  <40.912979, 34.187439, 22.991926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739525, 34.472015, 22.770725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147046, 0.549608, 0.822380,
		0.889007, 0.437934, -0.133718,
		-0.433641, 0.711439, -0.553001,
		40.609432, 34.685448, 22.604824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174000, 34.870369, 23.227648>,  <40.912979, 34.187439, 22.991926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174000, 34.870369, 23.227648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812500, 34.915581, 23.062504>,  <40.595600, 34.942707, 22.963417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812500, 34.915581, 23.062504>,  <41.174000, 34.870369, 23.227648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812500, 34.915581, 23.062504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289478, 0.549126, 0.784004,
		0.315330, 0.828061, -0.463554,
		-0.903753, 0.113031, -0.412862,
		40.541374, 34.949490, 22.938644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974308, 35.549671, 23.356796>,  <41.174000, 34.870369, 23.227648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974308, 35.549671, 23.356796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.613899, 35.408504, 23.255913>,  <40.397655, 35.323803, 23.195383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.613899, 35.408504, 23.255913>,  <40.974308, 35.549671, 23.356796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613899, 35.408504, 23.255913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414448, 0.528785, 0.740688,
		-0.128039, 0.771903, -0.622713,
		-0.901021, -0.352919, -0.252208,
		40.343594, 35.302628, 23.180250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565628, 36.163284, 23.392511>,  <40.974308, 35.549671, 23.356796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565628, 36.163284, 23.392511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.323082, 35.846992, 23.426155>,  <40.177555, 35.657219, 23.446341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.323082, 35.846992, 23.426155>,  <40.565628, 36.163284, 23.392511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323082, 35.846992, 23.426155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506818, 0.465807, 0.725369,
		-0.612747, 0.397209, -0.683203,
		-0.606364, -0.790727, 0.084109,
		40.141174, 35.609776, 23.451387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983517, 36.449440, 23.371719>,  <40.565628, 36.163284, 23.392511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983517, 36.449440, 23.371719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.942600, 36.099632, 23.561352>,  <39.918049, 35.889748, 23.675131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.942600, 36.099632, 23.561352>,  <39.983517, 36.449440, 23.371719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942600, 36.099632, 23.561352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464561, 0.463418, 0.754604,
		-0.879613, -0.143048, -0.453672,
		-0.102295, -0.874518, 0.474083,
		39.911911, 35.837276, 23.703577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302074, 36.455120, 23.532621>,  <39.983517, 36.449440, 23.371719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302074, 36.455120, 23.532621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431320, 36.162884, 23.773232>,  <39.508869, 35.987541, 23.917597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431320, 36.162884, 23.773232>,  <39.302074, 36.455120, 23.532621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431320, 36.162884, 23.773232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604356, 0.329829, 0.725236,
		-0.728252, -0.597869, -0.334965,
		0.323114, -0.730592, 0.601525,
		39.528255, 35.943707, 23.953690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705471, 36.335575, 23.912523>,  <39.302074, 36.455120, 23.532621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705471, 36.335575, 23.912523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004658, 36.163017, 24.114292>,  <39.184170, 36.059483, 24.235353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004658, 36.163017, 24.114292>,  <38.705471, 36.335575, 23.912523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004658, 36.163017, 24.114292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412760, 0.292831, 0.862484,
		-0.519782, -0.853316, 0.040965,
		0.747968, -0.431395, 0.504423,
		39.229050, 36.033600, 24.265619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.228115, 35.494930, 20.755592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.461575, 35.272308, 20.992100>,  <44.601650, 35.138733, 21.134005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.461575, 35.272308, 20.992100>,  <44.228115, 35.494930, 20.755592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461575, 35.272308, 20.992100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515239, 0.308957, 0.799421,
		-0.627601, -0.771225, -0.106437,
		0.583649, -0.556558, 0.591267,
		44.636669, 35.105343, 21.169479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834293, 35.127434, 21.137114>,  <44.228115, 35.494930, 20.755592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834293, 35.127434, 21.137114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.174599, 35.159798, 21.344830>,  <44.378780, 35.179214, 21.469460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.174599, 35.159798, 21.344830>,  <43.834293, 35.127434, 21.137114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174599, 35.159798, 21.344830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510863, 0.359306, 0.780973,
		-0.123397, -0.929706, 0.347016,
		0.850760, 0.080908, 0.519289,
		44.429825, 35.184071, 21.500616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567299, 34.950401, 21.746519>,  <43.834293, 35.127434, 21.137114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567299, 34.950401, 21.746519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.930363, 35.091778, 21.837053>,  <44.148201, 35.176605, 21.891375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.930363, 35.091778, 21.837053>,  <43.567299, 34.950401, 21.746519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930363, 35.091778, 21.837053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333063, 0.278440, 0.900855,
		0.255364, -0.893062, 0.370444,
		0.907666, 0.353427, 0.226343,
		44.202663, 35.197811, 21.904955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560635, 34.835739, 22.395638>,  <43.567299, 34.950401, 21.746519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560635, 34.835739, 22.395638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.846462, 35.109009, 22.335407>,  <44.017960, 35.272968, 22.299269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.846462, 35.109009, 22.335407>,  <43.560635, 34.835739, 22.395638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846462, 35.109009, 22.335407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143698, 0.353987, 0.924145,
		0.684651, -0.638725, 0.351117,
		0.714566, 0.683171, -0.150574,
		44.060833, 35.313961, 22.290236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741493, 34.951347, 23.147488>,  <43.560635, 34.835739, 22.395638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741493, 34.951347, 23.147488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.889912, 35.261288, 22.942770>,  <43.978962, 35.447250, 22.819941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.889912, 35.261288, 22.942770>,  <43.741493, 34.951347, 23.147488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889912, 35.261288, 22.942770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336705, 0.625891, 0.703484,
		0.865421, -0.088703, 0.493131,
		0.371047, 0.774850, -0.511793,
		44.001225, 35.493744, 22.789232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138119, 35.268089, 23.637859>,  <43.741493, 34.951347, 23.147488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138119, 35.268089, 23.637859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.059181, 35.516117, 23.334129>,  <44.011818, 35.664932, 23.151892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.059181, 35.516117, 23.334129>,  <44.138119, 35.268089, 23.637859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059181, 35.516117, 23.334129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317067, 0.692556, 0.647947,
		0.927644, 0.368627, 0.059929,
		-0.197346, 0.620065, -0.759325,
		43.999977, 35.702137, 23.106333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479565, 35.833778, 23.765301>,  <44.138119, 35.268089, 23.637859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479565, 35.833778, 23.765301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.206631, 35.956417, 23.499846>,  <44.042870, 36.029999, 23.340572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.206631, 35.956417, 23.499846>,  <44.479565, 35.833778, 23.765301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206631, 35.956417, 23.499846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238733, 0.764578, 0.598688,
		0.690959, 0.566939, -0.448504,
		-0.682336, 0.306596, -0.663639,
		44.001930, 36.048397, 23.300755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606331, 36.585499, 23.628832>,  <44.479565, 35.833778, 23.765301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606331, 36.585499, 23.628832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.223640, 36.506565, 23.543287>,  <43.994026, 36.459206, 23.491961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.223640, 36.506565, 23.543287>,  <44.606331, 36.585499, 23.628832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223640, 36.506565, 23.543287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290871, 0.669683, 0.683314,
		0.008378, 0.715950, -0.698102,
		-0.956725, -0.197333, -0.213860,
		43.936623, 36.447365, 23.479130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270500, 37.241085, 23.584332>,  <44.606331, 36.585499, 23.628832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270500, 37.241085, 23.584332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.946209, 37.010544, 23.625401>,  <43.751637, 36.872219, 23.650042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.946209, 37.010544, 23.625401>,  <44.270500, 37.241085, 23.584332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946209, 37.010544, 23.625401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458303, 0.733961, 0.501258,
		-0.364259, 0.359328, -0.859185,
		-0.810724, -0.576355, 0.102671,
		43.702991, 36.837639, 23.656202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741982, 37.591370, 23.318344>,  <44.270500, 37.241085, 23.584332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741982, 37.591370, 23.318344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.579353, 37.324772, 23.568302>,  <43.481777, 37.164814, 23.718277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.579353, 37.324772, 23.568302>,  <43.741982, 37.591370, 23.318344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579353, 37.324772, 23.568302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558964, 0.722486, 0.406907,
		-0.722677, -0.183859, -0.666283,
		-0.406567, -0.666491, 0.624894,
		43.457382, 37.124825, 23.755770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007408, 37.787117, 23.314764>,  <43.741982, 37.591370, 23.318344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007408, 37.787117, 23.314764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.111198, 37.588326, 23.645988>,  <43.173473, 37.469051, 23.844723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.111198, 37.588326, 23.645988>,  <43.007408, 37.787117, 23.314764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111198, 37.588326, 23.645988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443007, 0.700646, 0.559320,
		-0.858148, -0.511968, -0.038364,
		0.259475, -0.496975, 0.828063,
		43.189041, 37.439232, 23.894407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352032, 37.820091, 23.666935>,  <43.007408, 37.787117, 23.314764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352032, 37.820091, 23.666935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.636169, 37.704792, 23.923786>,  <42.806652, 37.635612, 24.077896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.636169, 37.704792, 23.923786>,  <42.352032, 37.820091, 23.666935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636169, 37.704792, 23.923786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471256, 0.482871, 0.738074,
		-0.522813, -0.826892, 0.207165,
		0.710341, -0.288247, 0.642129,
		42.849274, 37.618317, 24.116425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684757, 37.837067, 23.778402>,  <42.352032, 37.820091, 23.666935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684757, 37.837067, 23.778402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.547848, 38.175106, 23.614132>,  <41.465702, 38.377930, 23.515570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.547848, 38.175106, 23.614132>,  <41.684757, 37.837067, 23.778402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547848, 38.175106, 23.614132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450815, -0.235777, -0.860915,
		-0.824386, -0.479811, -0.300282,
		-0.342277, 0.845098, -0.410677,
		41.445164, 38.428635, 23.490929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312290, 37.636871, 23.301588>,  <41.684757, 37.837067, 23.778402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312290, 37.636871, 23.301588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390667, 38.007450, 23.173023>,  <41.437695, 38.229797, 23.095884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390667, 38.007450, 23.173023>,  <41.312290, 37.636871, 23.301588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390667, 38.007450, 23.173023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372807, -0.373531, -0.849406,
		-0.906985, 0.046610, -0.418576,
		0.195942, 0.926446, -0.321410,
		41.449451, 38.285385, 23.076601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910984, 37.884262, 22.639103>,  <41.312290, 37.636871, 23.301588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910984, 37.884262, 22.639103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246338, 38.102276, 22.641796>,  <41.447552, 38.233082, 22.643412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246338, 38.102276, 22.641796>,  <40.910984, 37.884262, 22.639103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246338, 38.102276, 22.641796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105639, -0.150356, -0.982972,
		-0.534738, 0.824824, -0.183633,
		0.838389, 0.545031, 0.006733,
		41.497856, 38.265785, 22.643816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987312, 38.076122, 21.967514>,  <40.910984, 37.884262, 22.639103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987312, 38.076122, 21.967514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340744, 38.199364, 22.108576>,  <41.552803, 38.273308, 22.193213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340744, 38.199364, 22.108576>,  <40.987312, 38.076122, 21.967514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340744, 38.199364, 22.108576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430291, -0.237017, -0.871018,
		-0.184778, 0.921355, -0.341997,
		0.883576, 0.308103, 0.352656,
		41.605816, 38.291794, 22.214373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302933, 38.480095, 21.396032>,  <40.987312, 38.076122, 21.967514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302933, 38.480095, 21.396032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.589821, 38.350952, 21.643049>,  <41.761955, 38.273468, 21.791260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.589821, 38.350952, 21.643049>,  <41.302933, 38.480095, 21.396032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589821, 38.350952, 21.643049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575706, -0.224789, -0.786150,
		0.392629, 0.919367, 0.024646,
		0.717220, -0.322854, 0.617544,
		41.804989, 38.254097, 21.828312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972698, 38.743320, 21.204845>,  <41.302933, 38.480095, 21.396032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972698, 38.743320, 21.204845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.069752, 38.411961, 21.406792>,  <42.127983, 38.213146, 21.527960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.069752, 38.411961, 21.406792>,  <41.972698, 38.743320, 21.204845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069752, 38.411961, 21.406792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472034, -0.353844, -0.807452,
		0.847534, 0.434226, 0.305177,
		0.242632, -0.828397, 0.504864,
		42.142540, 38.163441, 21.558250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727764, 38.737999, 21.190252>,  <41.972698, 38.743320, 21.204845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727764, 38.737999, 21.190252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.559116, 38.379787, 21.247189>,  <42.457928, 38.164860, 21.281351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.559116, 38.379787, 21.247189>,  <42.727764, 38.737999, 21.190252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559116, 38.379787, 21.247189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521790, -0.367991, -0.769622,
		0.741601, -0.250216, 0.622431,
		-0.421620, -0.895531, 0.142342,
		42.432629, 38.111130, 21.289890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342121, 38.302048, 21.087955>,  <42.727764, 38.737999, 21.190252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342121, 38.302048, 21.087955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.021069, 38.065647, 21.055687>,  <42.828438, 37.923809, 21.036325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.021069, 38.065647, 21.055687>,  <43.342121, 38.302048, 21.087955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021069, 38.065647, 21.055687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462061, -0.530513, -0.710672,
		0.377209, -0.607681, 0.698882,
		-0.802628, -0.590999, -0.080672,
		42.780281, 37.888348, 21.031485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613655, 37.701408, 20.968672>,  <43.342121, 38.302048, 21.087955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613655, 37.701408, 20.968672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.237041, 37.615559, 20.864790>,  <43.011074, 37.564049, 20.802462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.237041, 37.615559, 20.864790>,  <43.613655, 37.701408, 20.968672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237041, 37.615559, 20.864790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336870, -0.587881, -0.735469,
		0.005175, -0.779957, 0.625811,
		-0.941537, -0.214623, -0.259702,
		42.954582, 37.551170, 20.786879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518368, 36.977123, 20.961651>,  <43.613655, 37.701408, 20.968672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518368, 36.977123, 20.961651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.246090, 37.110714, 20.700848>,  <43.082722, 37.190868, 20.544365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.246090, 37.110714, 20.700848>,  <43.518368, 36.977123, 20.961651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246090, 37.110714, 20.700848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259551, -0.722349, -0.640972,
		-0.685045, -0.605536, 0.405017,
		-0.680696, 0.333973, -0.652009,
		43.041882, 37.210907, 20.505245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283745, 36.388931, 20.761072>,  <43.518368, 36.977123, 20.961651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283745, 36.388931, 20.761072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.168266, 36.652416, 20.483150>,  <43.098980, 36.810509, 20.316397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.168266, 36.652416, 20.483150>,  <43.283745, 36.388931, 20.761072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168266, 36.652416, 20.483150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351719, -0.601994, -0.716866,
		-0.890475, -0.451335, -0.057885,
		-0.288700, 0.658711, -0.694804,
		43.081657, 36.850029, 20.274710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925968, 35.943523, 20.278267>,  <43.283745, 36.388931, 20.761072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925968, 35.943523, 20.278267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.018551, 36.271236, 20.068428>,  <43.074100, 36.467865, 19.942524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.018551, 36.271236, 20.068428>,  <42.925968, 35.943523, 20.278267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018551, 36.271236, 20.068428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263794, -0.571894, -0.776756,
		-0.936398, 0.041400, -0.348490,
		0.231457, 0.819282, -0.524599,
		43.087990, 36.517021, 19.911049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664639, 35.895927, 19.565279>,  <42.925968, 35.943523, 20.278267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664639, 35.895927, 19.565279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.970303, 36.150085, 19.520847>,  <43.153702, 36.302582, 19.494188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.970303, 36.150085, 19.520847>,  <42.664639, 35.895927, 19.565279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970303, 36.150085, 19.520847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284624, -0.486688, -0.825908,
		-0.578838, 0.599507, -0.552754,
		0.764157, 0.635394, -0.111079,
		43.199551, 36.340702, 19.487524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064453, 35.689926, 19.857271>,  <42.664639, 35.895927, 19.565279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064453, 35.689926, 19.857271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.700325, 35.719479, 19.694368>,  <41.481850, 35.737209, 19.596626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.700325, 35.719479, 19.694368>,  <42.064453, 35.689926, 19.857271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700325, 35.719479, 19.694368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409982, -0.025824, 0.911728,
		0.056846, 0.996932, 0.053799,
		-0.910320, 0.073885, -0.407256,
		41.427227, 35.741646, 19.572191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717197, 36.168453, 20.286705>,  <42.064453, 35.689926, 19.857271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717197, 36.168453, 20.286705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.480015, 35.904068, 20.102739>,  <41.337704, 35.745438, 19.992359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.480015, 35.904068, 20.102739>,  <41.717197, 36.168453, 20.286705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480015, 35.904068, 20.102739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327247, -0.324060, 0.887634,
		-0.735737, 0.676836, -0.024146,
		-0.592958, -0.660967, -0.459916,
		41.302128, 35.705776, 19.964764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052952, 36.217766, 20.562550>,  <41.717197, 36.168453, 20.286705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052952, 36.217766, 20.562550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.023129, 35.863140, 20.379930>,  <41.005234, 35.650364, 20.270359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.023129, 35.863140, 20.379930>,  <41.052952, 36.217766, 20.562550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023129, 35.863140, 20.379930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542379, -0.348130, 0.764612,
		-0.836819, 0.304634, -0.454898,
		-0.074563, -0.886568, -0.456549,
		41.000759, 35.597168, 20.242966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370243, 36.049000, 20.666985>,  <41.052952, 36.217766, 20.562550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370243, 36.049000, 20.666985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.572365, 35.712070, 20.591982>,  <40.693638, 35.509911, 20.546980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.572365, 35.712070, 20.591982>,  <40.370243, 36.049000, 20.666985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572365, 35.712070, 20.591982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281029, -0.366069, 0.887139,
		-0.815901, -0.395577, -0.421693,
		0.505301, -0.842325, -0.187507,
		40.723953, 35.459373, 20.535730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905239, 35.432068, 20.838718>,  <40.370243, 36.049000, 20.666985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905239, 35.432068, 20.838718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.281719, 35.297604, 20.852196>,  <40.507607, 35.216923, 20.860283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.281719, 35.297604, 20.852196>,  <39.905239, 35.432068, 20.838718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281719, 35.297604, 20.852196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212418, -0.511270, 0.832755,
		-0.262715, -0.790948, -0.552615,
		0.941201, -0.336162, 0.033693,
		40.564079, 35.196754, 20.862303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812614, 34.692715, 20.931053>,  <39.905239, 35.432068, 20.838718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812614, 34.692715, 20.931053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.171703, 34.808762, 21.063671>,  <40.387157, 34.878391, 21.143242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.171703, 34.808762, 21.063671>,  <39.812614, 34.692715, 20.931053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171703, 34.808762, 21.063671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215829, -0.366451, 0.905059,
		0.384067, -0.884051, -0.266357,
		0.897725, 0.290116, 0.331546,
		40.441021, 34.895798, 21.163136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070175, 34.074238, 21.294930>,  <39.812614, 34.692715, 20.931053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070175, 34.074238, 21.294930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.278725, 34.391369, 21.421164>,  <40.403854, 34.581646, 21.496902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.278725, 34.391369, 21.421164>,  <40.070175, 34.074238, 21.294930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278725, 34.391369, 21.421164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287766, -0.184806, 0.939701,
		0.803343, -0.580749, 0.131797,
		0.521373, 0.792829, 0.315583,
		40.435135, 34.629219, 21.515839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349068, 33.795517, 21.836761>,  <40.070175, 34.074238, 21.294930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349068, 33.795517, 21.836761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.363384, 34.192863, 21.880484>,  <40.371975, 34.431271, 21.906717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.363384, 34.192863, 21.880484>,  <40.349068, 33.795517, 21.836761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363384, 34.192863, 21.880484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498057, -0.077094, 0.863710,
		0.866405, -0.085356, 0.491993,
		0.035793, 0.993363, 0.109306,
		40.374123, 34.490871, 21.913275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074944, 33.954041, 22.074045>,  <40.349068, 33.795517, 21.836761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074944, 33.954041, 22.074045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.287449, 33.665020, 22.250986>,  <41.414951, 33.491608, 22.357151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.287449, 33.665020, 22.250986>,  <41.074944, 33.954041, 22.074045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287449, 33.665020, 22.250986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442771, -0.208353, -0.872091,
		0.722299, 0.659169, 0.209237,
		0.531260, -0.722555, 0.442355,
		41.446827, 33.448254, 22.383692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886612, 34.023449, 21.965157>,  <41.074944, 33.954041, 22.074045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886612, 34.023449, 21.965157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.793255, 33.639259, 22.025839>,  <41.737240, 33.408745, 22.062248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.793255, 33.639259, 22.025839>,  <41.886612, 34.023449, 21.965157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793255, 33.639259, 22.025839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576513, -0.262319, -0.773836,
		0.783046, -0.093148, 0.614950,
		-0.233394, -0.960475, 0.151706,
		41.723236, 33.351116, 22.071350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567196, 33.673374, 22.079617>,  <41.886612, 34.023449, 21.965157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567196, 33.673374, 22.079617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.295368, 33.409683, 21.950867>,  <42.132271, 33.251469, 21.873617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.295368, 33.409683, 21.950867>,  <42.567196, 33.673374, 22.079617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295368, 33.409683, 21.950867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642365, -0.322792, -0.695106,
		0.354336, -0.679133, 0.642825,
		-0.679568, -0.659230, -0.321874,
		42.091499, 33.211914, 21.854305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055248, 33.190895, 21.697021>,  <42.567196, 33.673374, 22.079617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055248, 33.190895, 21.697021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.693745, 33.050285, 21.599327>,  <42.476841, 32.965919, 21.540710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.693745, 33.050285, 21.599327>,  <43.055248, 33.190895, 21.697021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693745, 33.050285, 21.599327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402891, -0.505878, -0.762736,
		0.144567, -0.787729, 0.598818,
		-0.903758, -0.351525, -0.244236,
		42.422619, 32.944828, 21.526056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222427, 32.604290, 21.526522>,  <43.055248, 33.190895, 21.697021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222427, 32.604290, 21.526522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.858982, 32.648346, 21.365377>,  <42.640915, 32.674778, 21.268692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.858982, 32.648346, 21.365377>,  <43.222427, 32.604290, 21.526522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858982, 32.648346, 21.365377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292816, -0.519813, -0.802529,
		-0.297797, -0.847151, 0.440059,
		-0.908612, 0.110135, -0.402858,
		42.586399, 32.681385, 21.244520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009903, 31.913584, 21.288221>,  <43.222427, 32.604290, 21.526522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009903, 31.913584, 21.288221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.781425, 32.171722, 21.085335>,  <42.644341, 32.326607, 20.963602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.781425, 32.171722, 21.085335>,  <43.009903, 31.913584, 21.288221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781425, 32.171722, 21.085335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324129, -0.390384, -0.861708,
		-0.754110, -0.656604, 0.013808,
		-0.571191, 0.645347, -0.507216,
		42.610069, 32.365326, 20.933170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687862, 31.584768, 20.735628>,  <43.009903, 31.913584, 21.288221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687862, 31.584768, 20.735628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.674965, 31.964972, 20.612017>,  <42.667225, 32.193092, 20.537849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.674965, 31.964972, 20.612017>,  <42.687862, 31.584768, 20.735628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674965, 31.964972, 20.612017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476664, -0.257137, -0.840638,
		-0.878494, -0.174411, -0.444780,
		-0.032247, 0.950506, -0.309028,
		42.665291, 32.250122, 20.519308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414700, 31.524843, 20.093582>,  <42.687862, 31.584768, 20.735628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414700, 31.524843, 20.093582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.606392, 31.875011, 20.068348>,  <42.721409, 32.085114, 20.053207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.606392, 31.875011, 20.068348>,  <42.414700, 31.524843, 20.093582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606392, 31.875011, 20.068348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517252, -0.339764, -0.785500,
		-0.709075, 0.343806, -0.615638,
		0.479232, 0.875419, -0.063084,
		42.750160, 32.137638, 20.049423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549683, 31.556046, 19.417395>,  <42.414700, 31.524843, 20.093582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549683, 31.556046, 19.417395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.790424, 31.844578, 19.554483>,  <42.934868, 32.017696, 19.636736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.790424, 31.844578, 19.554483>,  <42.549683, 31.556046, 19.417395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790424, 31.844578, 19.554483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626816, -0.160753, -0.762405,
		-0.494853, 0.673677, -0.548890,
		0.601850, 0.721331, 0.342722,
		42.970978, 32.060978, 19.657301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.378944, 37.391582, 34.718071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.775730, 37.361298, 34.677521>,  <39.013802, 37.343124, 34.653191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.775730, 37.361298, 34.677521>,  <38.378944, 37.391582, 34.718071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775730, 37.361298, 34.677521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123552, -0.406781, -0.905132,
		0.027296, 0.910382, -0.412867,
		0.991963, -0.075717, -0.101376,
		39.073318, 37.338581, 34.647106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566269, 37.723629, 34.080200>,  <38.378944, 37.391582, 34.718071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566269, 37.723629, 34.080200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.874744, 37.476917, 34.143242>,  <39.059830, 37.328888, 34.181068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.874744, 37.476917, 34.143242>,  <38.566269, 37.723629, 34.080200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874744, 37.476917, 34.143242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126194, -0.390772, -0.911796,
		0.623968, 0.683283, -0.379195,
		0.771193, -0.616784, 0.157603,
		39.106102, 37.291882, 34.190521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939796, 37.720596, 33.446892>,  <38.566269, 37.723629, 34.080200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939796, 37.720596, 33.446892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067688, 37.389153, 33.630707>,  <39.144424, 37.190285, 33.740997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.067688, 37.389153, 33.630707>,  <38.939796, 37.720596, 33.446892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067688, 37.389153, 33.630707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021868, -0.491322, -0.870703,
		0.947256, 0.268341, -0.175211,
		0.319730, -0.828611, 0.459540,
		39.163609, 37.140568, 33.768570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463810, 37.534248, 32.998013>,  <38.939796, 37.720596, 33.446892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463810, 37.534248, 32.998013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.373283, 37.211212, 33.215847>,  <39.318970, 37.017391, 33.346546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.373283, 37.211212, 33.215847>,  <39.463810, 37.534248, 32.998013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373283, 37.211212, 33.215847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077485, -0.572248, -0.816412,
		0.970968, -0.142569, 0.192084,
		-0.226314, -0.807593, 0.544587,
		39.305389, 36.968933, 33.379223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951351, 37.086887, 32.773621>,  <39.463810, 37.534248, 32.998013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951351, 37.086887, 32.773621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.631836, 36.900501, 32.925842>,  <39.440128, 36.788670, 33.017174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.631836, 36.900501, 32.925842>,  <39.951351, 37.086887, 32.773621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631836, 36.900501, 32.925842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017724, -0.650498, -0.759301,
		0.601357, -0.599773, 0.527866,
		-0.798784, -0.465967, 0.380551,
		39.392200, 36.760712, 33.040009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147011, 36.433647, 32.847622>,  <39.951351, 37.086887, 32.773621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147011, 36.433647, 32.847622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.747742, 36.409523, 32.846203>,  <39.508179, 36.395050, 32.845352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.747742, 36.409523, 32.846203>,  <40.147011, 36.433647, 32.847622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747742, 36.409523, 32.846203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042240, -0.654736, -0.754677,
		0.043193, -0.753448, 0.656087,
		-0.998173, -0.060309, -0.003546,
		39.448288, 36.391430, 32.845139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022415, 35.725761, 32.669342>,  <40.147011, 36.433647, 32.847622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022415, 35.725761, 32.669342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.674389, 35.917801, 32.624626>,  <39.465572, 36.033024, 32.597797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.674389, 35.917801, 32.624626>,  <40.022415, 35.725761, 32.669342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674389, 35.917801, 32.624626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140664, -0.459157, -0.877148,
		-0.472451, -0.747447, 0.467027,
		-0.870060, 0.480103, -0.111790,
		39.413368, 36.061829, 32.591091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477009, 35.251720, 32.511742>,  <40.022415, 35.725761, 32.669342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477009, 35.251720, 32.511742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.324657, 35.585163, 32.351727>,  <39.233246, 35.785229, 32.255718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.324657, 35.585163, 32.351727>,  <39.477009, 35.251720, 32.511742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324657, 35.585163, 32.351727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201646, -0.497117, -0.843928,
		-0.902370, -0.240767, 0.357434,
		-0.380876, 0.833611, -0.400034,
		39.210396, 35.835247, 32.231716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888271, 34.969337, 32.050900>,  <39.477009, 35.251720, 32.511742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888271, 34.969337, 32.050900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.897560, 35.350628, 31.930349>,  <38.903133, 35.579403, 31.858019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.897560, 35.350628, 31.930349>,  <38.888271, 34.969337, 32.050900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897560, 35.350628, 31.930349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139837, -0.295400, -0.945084,
		-0.989902, 0.064088, 0.126437,
		0.023219, 0.953222, -0.301379,
		38.904526, 35.636593, 31.839935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487053, 34.921661, 31.419327>,  <38.888271, 34.969337, 32.050900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487053, 34.921661, 31.419327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.708309, 35.254055, 31.395697>,  <38.841064, 35.453491, 31.381519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.708309, 35.254055, 31.395697>,  <38.487053, 34.921661, 31.419327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708309, 35.254055, 31.395697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026727, -0.088577, -0.995711,
		-0.832657, 0.549193, -0.071206,
		0.553144, 0.830988, -0.059076,
		38.874252, 35.503353, 31.377974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190895, 35.388741, 30.870794>,  <38.487053, 34.921661, 31.419327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190895, 35.388741, 30.870794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573273, 35.494850, 30.921074>,  <38.802700, 35.558517, 30.951242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573273, 35.494850, 30.921074>,  <38.190895, 35.388741, 30.870794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573273, 35.494850, 30.921074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131871, -0.005513, -0.991251,
		-0.262259, 0.964158, -0.040252,
		0.955945, 0.265273, 0.125698,
		38.860058, 35.574432, 30.958784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342319, 35.851143, 30.443512>,  <38.190895, 35.388741, 30.870794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342319, 35.851143, 30.443512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721157, 35.736301, 30.500893>,  <38.948460, 35.667397, 30.535320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721157, 35.736301, 30.500893>,  <38.342319, 35.851143, 30.443512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721157, 35.736301, 30.500893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166865, 0.058682, -0.984232,
		0.274162, 0.956099, 0.103486,
		0.947096, -0.287107, 0.143451,
		39.005287, 35.650169, 30.543928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487530, 36.566803, 30.338982>,  <38.342319, 35.851143, 30.443512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487530, 36.566803, 30.338982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201431, 36.804699, 30.192177>,  <38.029770, 36.947437, 30.104094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201431, 36.804699, 30.192177>,  <38.487530, 36.566803, 30.338982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201431, 36.804699, 30.192177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146287, 0.386110, 0.910779,
		0.683388, 0.705123, -0.189161,
		-0.715249, 0.594744, -0.367013,
		37.986858, 36.983124, 30.082073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524052, 37.157131, 30.741564>,  <38.487530, 36.566803, 30.338982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524052, 37.157131, 30.741564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146854, 37.178448, 30.610161>,  <37.920536, 37.191238, 30.531319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146854, 37.178448, 30.610161>,  <38.524052, 37.157131, 30.741564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146854, 37.178448, 30.610161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278395, 0.414550, 0.866397,
		0.182350, 0.908465, -0.376085,
		-0.942998, 0.053288, -0.328505,
		37.863956, 37.194435, 30.511610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270222, 37.719311, 31.033476>,  <38.524052, 37.157131, 30.741564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270222, 37.719311, 31.033476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912964, 37.592949, 30.905422>,  <37.698608, 37.517132, 30.828590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912964, 37.592949, 30.905422>,  <38.270222, 37.719311, 31.033476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912964, 37.592949, 30.905422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440679, 0.472354, 0.763337,
		-0.089928, 0.822851, -0.561097,
		-0.893149, -0.315909, -0.320135,
		37.645020, 37.498177, 30.809381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813698, 38.326393, 31.138933>,  <38.270222, 37.719311, 31.033476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813698, 38.326393, 31.138933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558716, 38.020771, 31.099188>,  <37.405727, 37.837399, 31.075340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558716, 38.020771, 31.099188>,  <37.813698, 38.326393, 31.138933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558716, 38.020771, 31.099188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684892, 0.502831, 0.527337,
		-0.352951, 0.404206, -0.843826,
		-0.637455, -0.764054, -0.099362,
		37.367477, 37.791553, 31.069380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203285, 38.621387, 30.885309>,  <37.813698, 38.326393, 31.138933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203285, 38.621387, 30.885309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124382, 38.287582, 31.091099>,  <37.077042, 38.087299, 31.214573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124382, 38.287582, 31.091099>,  <37.203285, 38.621387, 30.885309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124382, 38.287582, 31.091099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599838, 0.517826, 0.609960,
		-0.775424, -0.188280, -0.602717,
		-0.197259, -0.834510, 0.514472,
		37.065205, 38.037228, 31.245440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451382, 38.377647, 30.774075>,  <37.203285, 38.621387, 30.885309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451382, 38.377647, 30.774075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547173, 38.221584, 31.129698>,  <36.604645, 38.127945, 31.343071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547173, 38.221584, 31.129698>,  <36.451382, 38.377647, 30.774075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547173, 38.221584, 31.129698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780134, 0.467779, 0.415419,
		-0.577964, -0.793068, -0.192357,
		0.239475, -0.390162, 0.889059,
		36.619015, 38.104534, 31.396416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801476, 38.258560, 31.096874>,  <36.451382, 38.377647, 30.774075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801476, 38.258560, 31.096874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074863, 38.223389, 31.386740>,  <36.238895, 38.202286, 31.560659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074863, 38.223389, 31.386740>,  <35.801476, 38.258560, 31.096874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074863, 38.223389, 31.386740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656679, 0.359496, 0.662974,
		-0.318812, -0.928994, 0.187961,
		0.683470, -0.087934, 0.724663,
		36.279903, 38.197010, 31.604139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433270, 38.150642, 31.720951>,  <35.801476, 38.258560, 31.096874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433270, 38.150642, 31.720951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.786293, 38.226051, 31.893253>,  <35.998108, 38.271297, 31.996635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.786293, 38.226051, 31.893253>,  <35.433270, 38.150642, 31.720951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786293, 38.226051, 31.893253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468797, 0.423637, 0.775088,
		-0.036361, -0.885997, 0.462263,
		0.882558, 0.188525, 0.430756,
		36.051060, 38.282608, 32.022480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377571, 37.915993, 32.468723>,  <35.433270, 38.150642, 31.720951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377571, 37.915993, 32.468723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658997, 38.199787, 32.452541>,  <35.827850, 38.370064, 32.442833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658997, 38.199787, 32.452541>,  <35.377571, 37.915993, 32.468723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658997, 38.199787, 32.452541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426005, 0.466643, 0.775090,
		0.568789, -0.528091, 0.630555,
		0.703562, 0.709482, -0.040452,
		35.870064, 38.412632, 32.440407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580627, 38.122158, 33.181190>,  <35.377571, 37.915993, 32.468723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580627, 38.122158, 33.181190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709671, 38.433403, 32.965607>,  <35.787098, 38.620148, 32.836258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709671, 38.433403, 32.965607>,  <35.580627, 38.122158, 33.181190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709671, 38.433403, 32.965607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376356, 0.627901, 0.681247,
		0.868495, -0.016934, 0.495409,
		0.322604, 0.778109, -0.538956,
		35.806454, 38.666836, 32.803921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005749, 38.604626, 33.616226>,  <35.580627, 38.122158, 33.181190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005749, 38.604626, 33.616226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848999, 38.815788, 33.314831>,  <35.754948, 38.942486, 33.133991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848999, 38.815788, 33.314831>,  <36.005749, 38.604626, 33.616226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848999, 38.815788, 33.314831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396138, 0.642369, 0.656077,
		0.830367, 0.555585, -0.042603,
		-0.391873, 0.527909, -0.753490,
		35.731438, 38.974159, 33.088783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095238, 39.241577, 33.887810>,  <36.005749, 38.604626, 33.616226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095238, 39.241577, 33.887810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840870, 39.311504, 33.587132>,  <35.688251, 39.353462, 33.406723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840870, 39.311504, 33.587132>,  <36.095238, 39.241577, 33.887810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840870, 39.311504, 33.587132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301360, 0.840429, 0.450402,
		0.710486, 0.512949, -0.481759,
		-0.635918, 0.174821, -0.751695,
		35.650093, 39.363949, 33.361622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309788, 39.944748, 33.725456>,  <36.095238, 39.241577, 33.887810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309788, 39.944748, 33.725456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945263, 39.903934, 33.565910>,  <35.726547, 39.879448, 33.470184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945263, 39.903934, 33.565910>,  <36.309788, 39.944748, 33.725456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945263, 39.903934, 33.565910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262411, 0.890468, 0.371763,
		0.317246, 0.443460, -0.838271,
		-0.911315, -0.102031, -0.398866,
		35.671867, 39.873325, 33.446251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235886, 40.512142, 33.420837>,  <36.309788, 39.944748, 33.725456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235886, 40.512142, 33.420837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855156, 40.389484, 33.420925>,  <35.626717, 40.315891, 33.420979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855156, 40.389484, 33.420925>,  <36.235886, 40.512142, 33.420837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855156, 40.389484, 33.420925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290549, 0.902085, 0.319099,
		-0.098048, 0.303662, -0.947721,
		-0.951824, -0.306646, 0.000219,
		35.569611, 40.297489, 33.420990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284622, 40.760490, 32.761402>,  <36.235886, 40.512142, 33.420837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284622, 40.760490, 32.761402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513000, 41.065254, 32.883720>,  <36.650028, 41.248112, 32.957111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513000, 41.065254, 32.883720>,  <36.284622, 40.760490, 32.761402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513000, 41.065254, 32.883720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699128, -0.255951, -0.667614,
		-0.430393, 0.594964, -0.678807,
		0.570947, 0.761910, 0.305797,
		36.684284, 41.293827, 32.975460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414261, 41.275803, 32.226387>,  <36.284622, 40.760490, 32.761402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414261, 41.275803, 32.226387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699841, 41.263157, 32.506180>,  <36.871189, 41.255569, 32.674057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699841, 41.263157, 32.506180>,  <36.414261, 41.275803, 32.226387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699841, 41.263157, 32.506180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685372, -0.172930, -0.707362,
		0.143323, 0.984427, -0.101797,
		0.713950, -0.031612, 0.699483,
		36.914024, 41.253674, 32.716026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952080, 41.907230, 32.174171>,  <36.414261, 41.275803, 32.226387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952080, 41.907230, 32.174171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092606, 41.554272, 32.299362>,  <37.176922, 41.342495, 32.374477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092606, 41.554272, 32.299362>,  <36.952080, 41.907230, 32.174171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092606, 41.554272, 32.299362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570594, -0.063238, -0.818794,
		0.742292, 0.466238, 0.481273,
		0.351318, -0.882396, 0.312974,
		37.198002, 41.289555, 32.393253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632996, 41.982067, 32.047649>,  <36.952080, 41.907230, 32.174171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632996, 41.982067, 32.047649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623951, 41.585133, 32.096249>,  <37.618523, 41.346973, 32.125408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623951, 41.585133, 32.096249>,  <37.632996, 41.982067, 32.047649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623951, 41.585133, 32.096249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763690, -0.095573, -0.638469,
		0.645186, 0.078346, 0.759998,
		-0.022614, -0.992334, 0.121494,
		37.617168, 41.287434, 32.132698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333305, 41.776821, 32.091099>,  <37.632996, 41.982067, 32.047649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333305, 41.776821, 32.091099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151833, 41.439922, 31.974621>,  <38.042950, 41.237782, 31.904736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151833, 41.439922, 31.974621>,  <38.333305, 41.776821, 32.091099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151833, 41.439922, 31.974621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744151, -0.178259, -0.643787,
		0.490322, -0.508763, 0.707633,
		-0.453677, -0.842249, -0.291192,
		38.015728, 41.187248, 31.887262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876778, 41.364140, 31.839254>,  <38.333305, 41.776821, 32.091099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876778, 41.364140, 31.839254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.549957, 41.193115, 31.684532>,  <38.353867, 41.090500, 31.591698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.549957, 41.193115, 31.684532>,  <38.876778, 41.364140, 31.839254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549957, 41.193115, 31.684532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511467, -0.227816, -0.828554,
		0.266134, -0.874811, 0.404819,
		-0.817052, -0.427558, -0.386808,
		38.304840, 41.064850, 31.568489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123421, 40.667000, 31.587919>,  <38.876778, 41.364140, 31.839254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123421, 40.667000, 31.587919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769550, 40.727131, 31.411394>,  <38.557228, 40.763210, 31.305479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769550, 40.727131, 31.411394>,  <39.123421, 40.667000, 31.587919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769550, 40.727131, 31.411394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328747, -0.470041, -0.819138,
		-0.330573, -0.869749, 0.366413,
		-0.884673, 0.150328, -0.441310,
		38.504150, 40.772228, 31.279001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856445, 40.041698, 31.352911>,  <39.123421, 40.667000, 31.587919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856445, 40.041698, 31.352911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651726, 40.312271, 31.141060>,  <38.528893, 40.474613, 31.013948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651726, 40.312271, 31.141060>,  <38.856445, 40.041698, 31.352911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651726, 40.312271, 31.141060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220839, -0.492185, -0.842012,
		-0.830236, -0.547903, 0.102518,
		-0.511799, 0.676429, -0.529628,
		38.498184, 40.515202, 30.982172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466259, 39.710209, 30.815792>,  <38.856445, 40.041698, 31.352911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466259, 39.710209, 30.815792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.523792, 40.089920, 30.703947>,  <38.558311, 40.317745, 30.636839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.523792, 40.089920, 30.703947>,  <38.466259, 39.710209, 30.815792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523792, 40.089920, 30.703947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135060, -0.298738, -0.944730,
		-0.980343, 0.098116, -0.171177,
		0.143831, 0.949278, -0.279614,
		38.566940, 40.374702, 30.620064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102604, 39.722084, 30.275845>,  <38.466259, 39.710209, 30.815792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102604, 39.722084, 30.275845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348038, 40.037624, 30.261873>,  <38.495300, 40.226948, 30.253490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348038, 40.037624, 30.261873>,  <38.102604, 39.722084, 30.275845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348038, 40.037624, 30.261873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251698, -0.237319, -0.938258,
		-0.748436, 0.566914, -0.344169,
		0.613589, 0.788853, -0.034927,
		38.532116, 40.274281, 30.251394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027977, 39.938679, 29.534418>,  <38.102604, 39.722084, 30.275845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027977, 39.938679, 29.534418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359222, 40.112461, 29.676105>,  <38.557972, 40.216728, 29.761118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359222, 40.112461, 29.676105>,  <38.027977, 39.938679, 29.534418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359222, 40.112461, 29.676105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412687, -0.044877, -0.909767,
		-0.379355, 0.899575, -0.216457,
		0.828118, 0.434454, 0.354219,
		38.607658, 40.242798, 29.782372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173485, 40.433872, 29.065716>,  <38.027977, 39.938679, 29.534418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173485, 40.433872, 29.065716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.515041, 40.363712, 29.261719>,  <38.719975, 40.321617, 29.379320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.515041, 40.363712, 29.261719>,  <38.173485, 40.433872, 29.065716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515041, 40.363712, 29.261719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497153, -0.003681, -0.867655,
		0.153991, 0.984490, 0.084058,
		0.853889, -0.175400, 0.490009,
		38.771210, 40.311092, 29.408722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671097, 40.888573, 28.766611>,  <38.173485, 40.433872, 29.065716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671097, 40.888573, 28.766611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.899914, 40.603584, 28.929171>,  <39.037205, 40.432590, 29.026707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.899914, 40.603584, 28.929171>,  <38.671097, 40.888573, 28.766611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899914, 40.603584, 28.929171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557894, -0.025237, -0.829529,
		0.601268, 0.701252, 0.383044,
		0.572041, -0.712467, 0.406398,
		39.071526, 40.389843, 29.051090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426769, 41.115891, 28.632557>,  <38.671097, 40.888573, 28.766611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426769, 41.115891, 28.632557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396130, 40.722385, 28.697483>,  <39.377747, 40.486282, 28.736439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396130, 40.722385, 28.697483>,  <39.426769, 41.115891, 28.632557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396130, 40.722385, 28.697483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500595, -0.178734, -0.847029,
		0.862286, 0.016372, 0.506157,
		-0.076600, -0.983761, 0.162316,
		39.373150, 40.427258, 28.746178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100124, 40.884304, 28.421881>,  <39.426769, 41.115891, 28.632557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100124, 40.884304, 28.421881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.857651, 40.567322, 28.448851>,  <39.712166, 40.377132, 28.465033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.857651, 40.567322, 28.448851>,  <40.100124, 40.884304, 28.421881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857651, 40.567322, 28.448851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339994, -0.334848, -0.878795,
		0.718987, -0.509790, 0.472412,
		-0.606187, -0.792459, 0.067426,
		39.675797, 40.329582, 28.469078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506725, 40.307095, 28.209595>,  <40.100124, 40.884304, 28.421881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506725, 40.307095, 28.209595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.120953, 40.217167, 28.153975>,  <39.889488, 40.163208, 28.120602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.120953, 40.217167, 28.153975>,  <40.506725, 40.307095, 28.209595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120953, 40.217167, 28.153975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238070, -0.510058, -0.826537,
		0.114899, -0.830238, 0.545438,
		-0.964428, -0.224821, -0.139050,
		39.831623, 40.149719, 28.112259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598763, 39.752071, 27.802572>,  <40.506725, 40.307095, 28.209595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598763, 39.752071, 27.802572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.215626, 39.845501, 27.735664>,  <39.985744, 39.901558, 27.695520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.215626, 39.845501, 27.735664>,  <40.598763, 39.752071, 27.802572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215626, 39.845501, 27.735664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038750, -0.471871, -0.880816,
		-0.284667, -0.850165, 0.442927,
		-0.957843, 0.233576, -0.167269,
		39.928272, 39.915573, 27.685484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439510, 39.225319, 27.272339>,  <40.598763, 39.752071, 27.802572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439510, 39.225319, 27.272339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.119034, 39.464191, 27.257008>,  <39.926746, 39.607513, 27.247808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.119034, 39.464191, 27.257008>,  <40.439510, 39.225319, 27.272339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119034, 39.464191, 27.257008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140411, -0.249869, -0.958045,
		-0.581704, -0.762194, 0.284043,
		-0.801190, 0.597182, -0.038329,
		39.878677, 39.643345, 27.245508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965172, 38.852718, 26.786999>,  <40.439510, 39.225319, 27.272339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965172, 38.852718, 26.786999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.828026, 39.228336, 26.797129>,  <39.745739, 39.453709, 26.803207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.828026, 39.228336, 26.797129>,  <39.965172, 38.852718, 26.786999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828026, 39.228336, 26.797129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139777, -0.024337, -0.989884,
		-0.928929, -0.342933, 0.139601,
		-0.342861, 0.939045, 0.025326,
		39.725166, 39.510048, 26.804728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187122, 38.814865, 26.512808>,  <39.965172, 38.852718, 26.786999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187122, 38.814865, 26.512808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.357468, 39.169601, 26.441090>,  <39.459675, 39.382442, 26.398058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.357468, 39.169601, 26.441090>,  <39.187122, 38.814865, 26.512808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357468, 39.169601, 26.441090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073901, -0.163409, -0.983787,
		-0.901764, 0.432209, -0.004051,
		0.425864, 0.886844, -0.179297,
		39.485226, 39.435654, 26.387300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927277, 38.958431, 25.948200>,  <39.187122, 38.814865, 26.512808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927277, 38.958431, 25.948200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.254494, 39.188286, 25.958057>,  <39.450825, 39.326199, 25.963972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.254494, 39.188286, 25.958057>,  <38.927277, 38.958431, 25.948200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254494, 39.188286, 25.958057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156862, -0.181673, -0.970768,
		-0.553357, 0.797993, -0.238753,
		0.818041, 0.574632, 0.024645,
		39.499905, 39.360676, 25.965450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993793, 39.271358, 25.298920>,  <38.927277, 38.958431, 25.948200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993793, 39.271358, 25.298920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.362068, 39.320297, 25.447170>,  <39.583035, 39.349659, 25.536121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.362068, 39.320297, 25.447170>,  <38.993793, 39.271358, 25.298920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362068, 39.320297, 25.447170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376000, -0.023357, -0.926325,
		-0.104673, 0.992213, -0.067506,
		0.920689, 0.122343, 0.370627,
		39.638275, 39.356998, 25.558359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322754, 39.754620, 24.847519>,  <38.993793, 39.271358, 25.298920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322754, 39.754620, 24.847519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628651, 39.569706, 25.027060>,  <39.812187, 39.458755, 25.134783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628651, 39.569706, 25.027060>,  <39.322754, 39.754620, 24.847519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628651, 39.569706, 25.027060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476312, -0.063545, -0.876977,
		0.433937, 0.884451, 0.171597,
		0.764739, -0.462287, 0.448849,
		39.858070, 39.431019, 25.161715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919483, 40.108601, 24.615496>,  <39.322754, 39.754620, 24.847519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919483, 40.108601, 24.615496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057217, 39.753227, 24.736897>,  <40.139858, 39.540001, 24.809736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057217, 39.753227, 24.736897>,  <39.919483, 40.108601, 24.615496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057217, 39.753227, 24.736897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575306, -0.055793, -0.816033,
		0.741926, 0.455598, 0.491911,
		0.344338, -0.888435, 0.303503,
		40.160519, 39.486698, 24.827948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583122, 40.124977, 24.462982>,  <39.919483, 40.108601, 24.615496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583122, 40.124977, 24.462982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.536484, 39.731152, 24.515202>,  <40.508499, 39.494858, 24.546534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.536484, 39.731152, 24.515202>,  <40.583122, 40.124977, 24.462982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536484, 39.731152, 24.515202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771603, -0.172558, -0.612252,
		0.625328, 0.029345, 0.779810,
		-0.116596, -0.984562, 0.130548,
		40.501507, 39.435783, 24.554365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228138, 39.713787, 24.576405>,  <40.583122, 40.124977, 24.462982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228138, 39.713787, 24.576405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.974277, 39.452980, 24.410465>,  <40.821960, 39.296497, 24.310902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.974277, 39.452980, 24.410465>,  <41.228138, 39.713787, 24.576405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974277, 39.452980, 24.410465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709062, -0.277806, -0.648116,
		0.307333, -0.705480, 0.638627,
		-0.634648, -0.652014, -0.414850,
		40.783882, 39.257378, 24.286011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700794, 39.076054, 24.437662>,  <41.228138, 39.713787, 24.576405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700794, 39.076054, 24.437662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.365166, 39.014595, 24.228910>,  <41.163788, 38.977722, 24.103659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.365166, 39.014595, 24.228910>,  <41.700794, 39.076054, 24.437662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365166, 39.014595, 24.228910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535060, -0.406521, -0.740575,
		-0.098372, -0.900630, 0.423307,
		-0.839067, -0.153643, -0.521881,
		41.113445, 38.968502, 24.072346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736946, 38.325977, 24.336964>,  <41.700794, 39.076054, 24.437662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736946, 38.325977, 24.336964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.485306, 38.480080, 24.066910>,  <41.334320, 38.572540, 23.904877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.485306, 38.480080, 24.066910>,  <41.736946, 38.325977, 24.336964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485306, 38.480080, 24.066910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597577, -0.315761, -0.737019,
		-0.497125, -0.867104, -0.031576,
		-0.629102, 0.385259, -0.675134,
		41.296574, 38.595657, 23.864370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027740, 37.722351, 24.617945>,  <41.736946, 38.325977, 24.336964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027740, 37.722351, 24.617945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.424004, 37.753529, 24.662710>,  <42.661762, 37.772236, 24.689569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.424004, 37.753529, 24.662710>,  <42.027740, 37.722351, 24.617945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424004, 37.753529, 24.662710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134148, 0.408928, 0.902653,
		0.024593, -0.909232, 0.415563,
		0.990656, 0.077946, 0.111915,
		42.721199, 37.776913, 24.696285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097816, 37.524883, 25.223824>,  <42.027740, 37.722351, 24.617945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097816, 37.524883, 25.223824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.436035, 37.722481, 25.142813>,  <42.638966, 37.841038, 25.094206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.436035, 37.722481, 25.142813>,  <42.097816, 37.524883, 25.223824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436035, 37.722481, 25.142813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010222, 0.394245, 0.918948,
		0.533802, -0.774945, 0.338403,
		0.845548, 0.493995, -0.202528,
		42.689701, 37.870678, 25.082054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469219, 37.387218, 25.741831>,  <42.097816, 37.524883, 25.223824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469219, 37.387218, 25.741831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.653076, 37.715893, 25.607033>,  <42.763390, 37.913097, 25.526154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.653076, 37.715893, 25.607033>,  <42.469219, 37.387218, 25.741831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653076, 37.715893, 25.607033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051276, 0.354265, 0.933738,
		0.886625, -0.446461, 0.120701,
		0.459638, 0.821686, -0.336993,
		42.790966, 37.962399, 25.505936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161655, 37.466263, 26.022491>,  <42.469219, 37.387218, 25.741831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161655, 37.466263, 26.022491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.023491, 37.829037, 25.926020>,  <42.940594, 38.046700, 25.868135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.023491, 37.829037, 25.926020>,  <43.161655, 37.466263, 26.022491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023491, 37.829037, 25.926020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055465, 0.276278, 0.959476,
		0.936812, 0.318033, -0.145732,
		-0.345408, 0.906932, -0.241181,
		42.919868, 38.101116, 25.853664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590389, 37.870678, 26.408434>,  <43.161655, 37.466263, 26.022491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590389, 37.870678, 26.408434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.273979, 38.094349, 26.309147>,  <43.084133, 38.228550, 26.249575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.273979, 38.094349, 26.309147>,  <43.590389, 37.870678, 26.408434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273979, 38.094349, 26.309147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228742, 0.105977, 0.967701,
		0.567418, 0.822250, 0.044076,
		-0.791021, 0.559173, -0.248216,
		43.036674, 38.262100, 26.234682>
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
