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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<-0.139757, 2.026052, 4.524569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.014473, 2.317515, 4.768192>,  <0.060698, 2.492394, 4.914367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.014473, 2.317515, 4.768192>,  <-0.139757, 2.026052, 4.524569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.014473, 2.317515, 4.768192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331526, 0.517090, -0.789119,
		-0.889938, 0.449080, -0.079611,
		0.313211, 0.728660, 0.609060,
		0.079490, 2.536113, 4.950910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.191617, 2.640797, 4.120967>,  <-0.139757, 2.026052, 4.524569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.191617, 2.640797, 4.120967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.049644, 2.736261, 4.425400>,  <0.194401, 2.793540, 4.608059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.049644, 2.736261, 4.425400>,  <-0.191617, 2.640797, 4.120967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.049644, 2.736261, 4.425400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379745, 0.753184, -0.537129,
		-0.701427, 0.612989, 0.363656,
		0.603154, 0.238660, 0.761082,
		0.230591, 2.807859, 4.653725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.294248, 3.340346, 4.345844>,  <-0.191617, 2.640797, 4.120967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.294248, 3.340346, 4.345844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.077072, 3.218744, 4.431484>,  <0.299864, 3.145783, 4.482868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.077072, 3.218744, 4.431484>,  <-0.294248, 3.340346, 4.345844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.077072, 3.218744, 4.431484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367373, 0.838753, -0.401910,
		-0.057395, 0.451748, 0.890298,
		0.928301, -0.304003, 0.214100,
		0.355563, 3.127543, 4.495714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.359509, 3.703614, 4.342919>,  <-0.294248, 3.340346, 4.345844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.359509, 3.703614, 4.342919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.622597, 3.402514, 4.354046>,  <0.780449, 3.221854, 4.360722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.622597, 3.402514, 4.354046>,  <0.359509, 3.703614, 4.342919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.622597, 3.402514, 4.354046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752447, 0.654840, -0.070766,
		0.035054, 0.067474, 0.997105,
		0.657719, -0.752750, 0.027816,
		0.819912, 3.176690, 4.362391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.763945, 3.709599, 4.969806>,  <0.359509, 3.703614, 4.342919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.763945, 3.709599, 4.969806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.966614, 3.514158, 4.685678>,  <1.088215, 3.396894, 4.515202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.966614, 3.514158, 4.685678>,  <0.763945, 3.709599, 4.969806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.966614, 3.514158, 4.685678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733339, 0.677462, 0.057091,
		0.453319, -0.549830, 0.701562,
		0.506672, -0.488603, -0.710318,
		1.118615, 3.367578, 4.472583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.444473, 3.806634, 5.189256>,  <0.763945, 3.709599, 4.969806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.444473, 3.806634, 5.189256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.454132, 3.699423, 4.804012>,  <1.459927, 3.635096, 4.572866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.454132, 3.699423, 4.804012>,  <1.444473, 3.806634, 5.189256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.454132, 3.699423, 4.804012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798945, 0.584262, -0.142566,
		0.600919, -0.766028, 0.228248,
		0.024147, -0.268029, -0.963108,
		1.461376, 3.619014, 4.515080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.077397, 3.540387, 5.106416>,  <1.444473, 3.806634, 5.189256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.077397, 3.540387, 5.106416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.956146, 3.638687, 4.738129>,  <1.883396, 3.697667, 4.517157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.956146, 3.638687, 4.738129>,  <2.077397, 3.540387, 5.106416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.956146, 3.638687, 4.738129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867573, 0.470886, -0.159946,
		0.394246, -0.847274, -0.355944,
		-0.303127, 0.245749, -0.920718,
		1.865208, 3.712412, 4.461913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.621891, 3.395143, 4.621002>,  <2.077397, 3.540387, 5.106416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.621891, 3.395143, 4.621002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.398048, 3.685111, 4.460339>,  <2.263742, 3.859092, 4.363941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.398048, 3.685111, 4.460339>,  <2.621891, 3.395143, 4.621002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.398048, 3.685111, 4.460339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789847, 0.613270, 0.006391,
		0.250958, -0.313672, -0.915767,
		-0.559608, 0.724921, -0.401658,
		2.230166, 3.902587, 4.339841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.949407, 5.074682, 4.751313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.730591, 5.208368, 4.444315>,  <2.599301, 5.288580, 4.260116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.730591, 5.208368, 4.444315>,  <2.949407, 5.074682, 4.751313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.730591, 5.208368, 4.444315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541881, -0.840209, 0.020353,
		-0.638053, 0.427024, 0.640732,
		-0.547040, 0.334215, -0.767494,
		2.566479, 5.308633, 4.214067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.054616, 5.033012, 4.789632>,  <2.949407, 5.074682, 4.751313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.054616, 5.033012, 4.789632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.225235, 4.979307, 4.431854>,  <2.327606, 4.947084, 4.217187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.225235, 4.979307, 4.431854>,  <2.054616, 5.033012, 4.789632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.225235, 4.979307, 4.431854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458405, -0.884589, -0.085825,
		-0.779693, 0.446626, -0.438866,
		0.426548, -0.134262, -0.894444,
		2.353199, 4.939029, 4.163521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.486799, 4.969663, 4.287381>,  <2.054616, 5.033012, 4.789632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.486799, 4.969663, 4.287381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.823235, 4.763851, 4.220654>,  <2.025096, 4.640364, 4.180617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.823235, 4.763851, 4.220654>,  <1.486799, 4.969663, 4.287381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.823235, 4.763851, 4.220654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540237, -0.814351, -0.212078,
		-0.026728, 0.268498, -0.962909,
		0.841088, -0.514530, -0.166819,
		2.075561, 4.609492, 4.170608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.401382, 4.671248, 3.626142>,  <1.486799, 4.969663, 4.287381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.401382, 4.671248, 3.626142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.660324, 4.453329, 3.839355>,  <1.815690, 4.322578, 3.967284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.660324, 4.453329, 3.839355>,  <1.401382, 4.671248, 3.626142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.660324, 4.453329, 3.839355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513896, -0.828461, -0.222630,
		0.562887, -0.129803, -0.816278,
		0.647356, -0.544797, 0.533035,
		1.854531, 4.289890, 3.999266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.490051, 4.056748, 3.275136>,  <1.401382, 4.671248, 3.626142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.490051, 4.056748, 3.275136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.620934, 3.950876, 3.637987>,  <1.699463, 3.887353, 3.855698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.620934, 3.950876, 3.637987>,  <1.490051, 4.056748, 3.275136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.620934, 3.950876, 3.637987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568477, -0.821964, -0.034778,
		0.754831, -0.504302, -0.419415,
		0.327206, -0.264680, 0.907128,
		1.719095, 3.871472, 3.910125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.535701, 3.331234, 3.252391>,  <1.490051, 4.056748, 3.275136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.535701, 3.331234, 3.252391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528297, 3.388063, 3.648264>,  <1.523855, 3.422161, 3.885788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528297, 3.388063, 3.648264>,  <1.535701, 3.331234, 3.252391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.528297, 3.388063, 3.648264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595759, -0.796505, 0.103200,
		0.802950, -0.587703, 0.099385,
		-0.018510, 0.142074, 0.989683,
		1.522745, 3.430686, 3.945169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.806655, 2.655242, 3.636054>,  <1.535701, 3.331234, 3.252391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.806655, 2.655242, 3.636054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.578423, 2.886745, 3.869112>,  <1.441483, 3.025647, 4.008947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.578423, 2.886745, 3.869112>,  <1.806655, 2.655242, 3.636054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.578423, 2.886745, 3.869112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562434, -0.792362, 0.236287,
		0.598419, -0.192878, 0.777620,
		-0.570582, 0.578758, 0.582645,
		1.407248, 3.060373, 4.043906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.706815, 2.233554, 4.295187>,  <1.806655, 2.655242, 3.636054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.706815, 2.233554, 4.295187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423309, 2.512707, 4.253971>,  <1.253206, 2.680198, 4.229242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423309, 2.512707, 4.253971>,  <1.706815, 2.233554, 4.295187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.423309, 2.512707, 4.253971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703818, -0.689625, 0.170464,
		0.047905, 0.193339, 0.979962,
		-0.708763, 0.697881, -0.103039,
		1.210680, 2.722071, 4.223059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
