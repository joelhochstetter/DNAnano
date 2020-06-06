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
	<24.703062, 35.035931, 35.430271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386765, 34.913609, 35.218155>,  <24.196985, 34.840214, 35.090885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386765, 34.913609, 35.218155>,  <24.703062, 35.035931, 35.430271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386765, 34.913609, 35.218155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594026, -0.592538, -0.544088,
		-0.147831, -0.745239, 0.650203,
		-0.790746, -0.305805, -0.530287,
		24.149540, 34.821869, 35.059071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733036, 34.291996, 35.473953>,  <24.703062, 35.035931, 35.430271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733036, 34.291996, 35.473953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544252, 34.457676, 35.162647>,  <24.430983, 34.557083, 34.975864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544252, 34.457676, 35.162647>,  <24.733036, 34.291996, 35.473953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544252, 34.457676, 35.162647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436700, -0.657024, -0.614501,
		-0.765864, -0.629887, 0.129207,
		-0.471959, 0.414200, -0.778263,
		24.402664, 34.581936, 34.929169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397278, 33.728367, 35.102291>,  <24.733036, 34.291996, 35.473953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397278, 33.728367, 35.102291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481800, 34.056690, 34.890015>,  <24.532513, 34.253685, 34.762650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481800, 34.056690, 34.890015>,  <24.397278, 33.728367, 35.102291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481800, 34.056690, 34.890015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500992, -0.557155, -0.662258,
		-0.839260, -0.125933, -0.528946,
		0.211305, 0.820804, -0.530689,
		24.545191, 34.302933, 34.730808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.936005, 33.912663, 34.473808>,  <24.397278, 33.728367, 35.102291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.936005, 33.912663, 34.473808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326920, 33.992947, 34.446609>,  <24.561468, 34.041115, 34.430290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326920, 33.992947, 34.446609>,  <23.936005, 33.912663, 34.473808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326920, 33.992947, 34.446609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106050, -0.741017, -0.663059,
		-0.183469, 0.640789, -0.745472,
		0.977288, 0.200708, -0.067998,
		24.620106, 34.053158, 34.426208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.052534, 33.766296, 33.859825>,  <23.936005, 33.912663, 34.473808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.052534, 33.766296, 33.859825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424212, 33.748478, 34.006584>,  <24.647219, 33.737785, 34.094639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424212, 33.748478, 34.006584>,  <24.052534, 33.766296, 33.859825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424212, 33.748478, 34.006584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220892, -0.728968, -0.647930,
		0.296323, 0.683097, -0.667511,
		0.929193, -0.044549, 0.366901,
		24.702969, 33.735115, 34.116653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.492647, 33.694340, 33.185165>,  <24.052534, 33.766296, 33.859825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.492647, 33.694340, 33.185165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714697, 33.590324, 33.501198>,  <24.847927, 33.527916, 33.690815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714697, 33.590324, 33.501198>,  <24.492647, 33.694340, 33.185165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714697, 33.590324, 33.501198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549440, -0.598494, -0.583027,
		0.624464, 0.757751, -0.189363,
		0.555122, -0.260036, 0.790076,
		24.881233, 33.512314, 33.738220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146723, 33.733208, 32.934200>,  <24.492647, 33.694340, 33.185165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146723, 33.733208, 32.934200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144638, 33.479481, 33.243420>,  <25.143387, 33.327244, 33.428951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144638, 33.479481, 33.243420>,  <25.146723, 33.733208, 32.934200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144638, 33.479481, 33.243420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602375, -0.619056, -0.503899,
		0.798196, 0.463039, 0.385327,
		-0.005214, -0.634322, 0.773051,
		25.143074, 33.289185, 33.475334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748873, 33.487957, 32.997952>,  <25.146723, 33.733208, 32.934200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748873, 33.487957, 32.997952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530293, 33.204712, 33.176823>,  <25.399143, 33.034767, 33.284145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530293, 33.204712, 33.176823>,  <25.748873, 33.487957, 32.997952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530293, 33.204712, 33.176823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538361, -0.706023, -0.460107,
		0.641527, -0.010681, 0.767027,
		-0.546453, -0.708108, 0.447182,
		25.366356, 32.992279, 33.310978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204927, 32.953552, 33.344383>,  <25.748873, 33.487957, 32.997952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204927, 32.953552, 33.344383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862261, 32.769859, 33.250378>,  <25.656662, 32.659645, 33.193974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862261, 32.769859, 33.250378>,  <26.204927, 32.953552, 33.344383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862261, 32.769859, 33.250378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514327, -0.725064, -0.457985,
		0.039922, -0.513213, 0.857332,
		-0.856664, -0.459233, -0.235013,
		25.605261, 32.632088, 33.179874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508608, 32.319271, 33.230427>,  <26.204927, 32.953552, 33.344383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508608, 32.319271, 33.230427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140314, 32.332535, 33.074917>,  <25.919338, 32.340492, 32.981613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140314, 32.332535, 33.074917>,  <26.508608, 32.319271, 33.230427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140314, 32.332535, 33.074917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266310, -0.674807, -0.688269,
		-0.285172, -0.737249, 0.612487,
		-0.920736, 0.033164, -0.388773,
		25.864094, 32.342484, 32.958286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474529, 31.716974, 33.031601>,  <26.508608, 32.319271, 33.230427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474529, 31.716974, 33.031601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157436, 31.865007, 32.837852>,  <25.967180, 31.953827, 32.721603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157436, 31.865007, 32.837852>,  <26.474529, 31.716974, 33.031601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157436, 31.865007, 32.837852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235041, -0.547593, -0.803055,
		-0.562436, -0.750454, 0.347109,
		-0.792731, 0.370082, -0.484373,
		25.919617, 31.976032, 32.692539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232399, 31.163052, 32.693012>,  <26.474529, 31.716974, 33.031601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232399, 31.163052, 32.693012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087166, 31.471508, 32.483818>,  <26.000025, 31.656582, 32.358303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087166, 31.471508, 32.483818>,  <26.232399, 31.163052, 32.693012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087166, 31.471508, 32.483818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296021, -0.436738, -0.849489,
		-0.883482, -0.463250, -0.069700,
		-0.363085, 0.771141, -0.522982,
		25.978241, 31.702850, 32.326923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746910, 30.971392, 32.311901>,  <26.232399, 31.163052, 32.693012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746910, 30.971392, 32.311901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886322, 31.285362, 32.106995>,  <25.969969, 31.473743, 31.984051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886322, 31.285362, 32.106995>,  <25.746910, 30.971392, 32.311901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886322, 31.285362, 32.106995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195654, -0.595424, -0.779224,
		-0.916649, 0.171356, -0.361098,
		0.348531, 0.784925, -0.512268,
		25.990881, 31.520840, 31.953314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535303, 30.840380, 31.705351>,  <25.746910, 30.971392, 32.311901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535303, 30.840380, 31.705351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812077, 31.123329, 31.647587>,  <25.978140, 31.293098, 31.612928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812077, 31.123329, 31.647587>,  <25.535303, 30.840380, 31.705351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812077, 31.123329, 31.647587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303353, -0.466370, -0.830949,
		-0.655138, 0.531153, -0.537281,
		0.691932, 0.707372, -0.144410,
		26.019657, 31.335541, 31.604263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428955, 31.015553, 31.057961>,  <25.535303, 30.840380, 31.705351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428955, 31.015553, 31.057961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800354, 31.118196, 31.165325>,  <26.023193, 31.179783, 31.229744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800354, 31.118196, 31.165325>,  <25.428955, 31.015553, 31.057961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800354, 31.118196, 31.165325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370805, -0.601863, -0.707294,
		-0.019951, 0.756249, -0.653980,
		0.928496, 0.256610, 0.268413,
		26.078903, 31.195179, 31.245850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798798, 30.988564, 30.407949>,  <25.428955, 31.015553, 31.057961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798798, 30.988564, 30.407949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082220, 30.992546, 30.690184>,  <26.252274, 30.994936, 30.859524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082220, 30.992546, 30.690184>,  <25.798798, 30.988564, 30.407949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082220, 30.992546, 30.690184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626742, -0.468347, -0.622773,
		0.324257, 0.883489, -0.338091,
		0.708556, 0.009957, 0.705584,
		26.294786, 30.995533, 30.901859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418900, 31.378799, 30.106836>,  <25.798798, 30.988564, 30.407949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418900, 31.378799, 30.106836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550985, 31.139694, 30.399038>,  <26.630238, 30.996231, 30.574360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550985, 31.139694, 30.399038>,  <26.418900, 31.378799, 30.106836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550985, 31.139694, 30.399038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700693, -0.363311, -0.614031,
		0.632445, 0.714623, 0.298877,
		0.330215, -0.597762, 0.730506,
		26.650049, 30.960365, 30.618191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245584, 31.328569, 30.042814>,  <26.418900, 31.378799, 30.106836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245584, 31.328569, 30.042814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150152, 31.029652, 30.290890>,  <27.092894, 30.850302, 30.439735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150152, 31.029652, 30.290890>,  <27.245584, 31.328569, 30.042814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150152, 31.029652, 30.290890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821155, -0.496178, -0.281980,
		0.518445, 0.441997, 0.732020,
		-0.238578, -0.747293, 0.620189,
		27.078579, 30.805464, 30.476946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869030, 31.131765, 30.390070>,  <27.245584, 31.328569, 30.042814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869030, 31.131765, 30.390070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629395, 30.812860, 30.419636>,  <27.485613, 30.621517, 30.437376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629395, 30.812860, 30.419636>,  <27.869030, 31.131765, 30.390070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629395, 30.812860, 30.419636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744143, -0.588482, -0.316133,
		0.295540, -0.134387, 0.945831,
		-0.599088, -0.797264, 0.073917,
		27.449669, 30.573681, 30.441811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313128, 30.620911, 30.631838>,  <27.869030, 31.131765, 30.390070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313128, 30.620911, 30.631838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006750, 30.430328, 30.459177>,  <27.822924, 30.315979, 30.355581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006750, 30.430328, 30.459177>,  <28.313128, 30.620911, 30.631838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006750, 30.430328, 30.459177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629756, -0.691143, -0.354583,
		-0.129388, -0.543424, 0.829427,
		-0.765941, -0.476458, -0.431650,
		27.776968, 30.287392, 30.329681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498419, 29.892046, 30.806517>,  <28.313128, 30.620911, 30.631838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498419, 29.892046, 30.806517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242697, 29.879854, 30.499176>,  <28.089264, 29.872540, 30.314772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242697, 29.879854, 30.499176>,  <28.498419, 29.892046, 30.806517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242697, 29.879854, 30.499176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659882, -0.534734, -0.527840,
		-0.394773, -0.844470, 0.361973,
		-0.639305, -0.030482, -0.768349,
		28.050905, 29.870710, 30.268671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414839, 29.200724, 30.611629>,  <28.498419, 29.892046, 30.806517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414839, 29.200724, 30.611629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301310, 29.390024, 30.278048>,  <28.233192, 29.503605, 30.077898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301310, 29.390024, 30.278048>,  <28.414839, 29.200724, 30.611629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301310, 29.390024, 30.278048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523439, -0.652233, -0.548274,
		-0.803403, -0.592135, -0.062601,
		-0.283822, 0.473253, -0.833953,
		28.216164, 29.532000, 30.027863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198416, 28.759861, 30.142061>,  <28.414839, 29.200724, 30.611629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198416, 28.759861, 30.142061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304234, 29.070061, 29.912762>,  <28.367725, 29.256180, 29.775183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304234, 29.070061, 29.912762>,  <28.198416, 28.759861, 30.142061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304234, 29.070061, 29.912762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536358, -0.612326, -0.580842,
		-0.801458, -0.153807, -0.577934,
		0.264546, 0.775500, -0.573249,
		28.383598, 29.302711, 29.740788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157124, 28.532267, 29.443268>,  <28.198416, 28.759861, 30.142061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157124, 28.532267, 29.443268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400742, 28.849487, 29.447849>,  <28.546913, 29.039820, 29.450598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400742, 28.849487, 29.447849>,  <28.157124, 28.532267, 29.443268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400742, 28.849487, 29.447849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638434, -0.481630, -0.600363,
		-0.470603, 0.372961, -0.799646,
		0.609045, 0.793053, 0.011454,
		28.583454, 29.087402, 29.451286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246515, 28.734232, 28.638746>,  <28.157124, 28.532267, 29.443268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246515, 28.734232, 28.638746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520075, 28.815990, 28.918890>,  <28.684210, 28.865046, 29.086977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520075, 28.815990, 28.918890>,  <28.246515, 28.734232, 28.638746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520075, 28.815990, 28.918890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668037, -0.561321, -0.488514,
		0.293276, 0.801960, -0.520432,
		0.683898, 0.204398, 0.700361,
		28.725245, 28.877310, 29.128998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866192, 28.853039, 28.253708>,  <28.246515, 28.734232, 28.638746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866192, 28.853039, 28.253708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962282, 28.754011, 28.629154>,  <29.019936, 28.694593, 28.854422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962282, 28.754011, 28.629154>,  <28.866192, 28.853039, 28.253708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962282, 28.754011, 28.629154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768817, -0.541796, -0.339671,
		0.592631, 0.803222, 0.060184,
		0.240224, -0.247570, 0.938617,
		29.034349, 28.679741, 28.910740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623253, 29.033741, 28.409822>,  <28.866192, 28.853039, 28.253708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623253, 29.033741, 28.409822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510237, 28.704624, 28.607079>,  <29.442427, 28.507154, 28.725431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510237, 28.704624, 28.607079>,  <29.623253, 29.033741, 28.409822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510237, 28.704624, 28.607079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726801, -0.519128, -0.449740,
		0.626044, 0.231346, 0.744680,
		-0.282539, -0.822791, 0.493139,
		29.425474, 28.457787, 28.755020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121429, 28.905159, 28.930162>,  <29.623253, 29.033741, 28.409822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121429, 28.905159, 28.930162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932117, 28.566851, 28.831631>,  <29.818531, 28.363865, 28.772512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932117, 28.566851, 28.831631>,  <30.121429, 28.905159, 28.930162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932117, 28.566851, 28.831631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875333, -0.420100, -0.239391,
		0.098987, -0.328920, 0.939156,
		-0.473280, -0.845771, -0.246330,
		29.790134, 28.313120, 28.757732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343628, 29.428020, 28.540102>,  <30.121429, 28.905159, 28.930162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343628, 29.428020, 28.540102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964525, 29.507530, 28.440306>,  <29.737064, 29.555235, 28.380428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964525, 29.507530, 28.440306>,  <30.343628, 29.428020, 28.540102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964525, 29.507530, 28.440306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242273, 0.957317, -0.157632,
		0.207509, -0.209842, -0.955461,
		-0.947757, 0.198772, -0.249491,
		29.680199, 29.567162, 28.365458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347548, 30.152838, 28.140980>,  <30.343628, 29.428020, 28.540102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347548, 30.152838, 28.140980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963011, 30.075212, 28.219116>,  <29.732288, 30.028637, 28.265999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963011, 30.075212, 28.219116>,  <30.347548, 30.152838, 28.140980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963011, 30.075212, 28.219116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204313, 0.978330, -0.033566,
		-0.184594, -0.072179, -0.980161,
		-0.961344, -0.194063, 0.195341,
		29.674608, 30.016993, 28.277718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896906, 30.391106, 27.532560>,  <30.347548, 30.152838, 28.140980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896906, 30.391106, 27.532560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695080, 30.392332, 27.877907>,  <29.573984, 30.393068, 28.085115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695080, 30.392332, 27.877907>,  <29.896906, 30.391106, 27.532560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695080, 30.392332, 27.877907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193062, 0.974271, -0.116286,
		-0.841511, -0.225358, -0.490991,
		-0.504565, 0.003065, 0.863368,
		29.543711, 30.393251, 28.136917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186152, 30.536974, 27.443865>,  <29.896906, 30.391106, 27.532560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186152, 30.536974, 27.443865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293324, 30.665648, 27.807125>,  <29.357626, 30.742851, 28.025082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293324, 30.665648, 27.807125>,  <29.186152, 30.536974, 27.443865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293324, 30.665648, 27.807125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148315, 0.945147, -0.291031,
		-0.951954, -0.056716, 0.300944,
		0.267930, 0.321683, 0.908148,
		29.373703, 30.762152, 28.079569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378685, 31.058918, 27.197186>,  <29.186152, 30.536974, 27.443865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378685, 31.058918, 27.197186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663275, 31.257639, 26.998392>,  <29.834028, 31.376871, 26.879116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663275, 31.257639, 26.998392>,  <29.378685, 31.058918, 27.197186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663275, 31.257639, 26.998392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263678, 0.844299, 0.466511,
		0.651367, -0.200866, 0.731692,
		0.711474, 0.496801, -0.496985,
		29.876717, 31.406679, 26.849297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062634, 31.078339, 27.467180>,  <29.378685, 31.058918, 27.197186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062634, 31.078339, 27.467180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974907, 31.416328, 27.272072>,  <29.922270, 31.619122, 27.155006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974907, 31.416328, 27.272072>,  <30.062634, 31.078339, 27.467180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974907, 31.416328, 27.272072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273843, 0.426533, 0.862020,
		0.936434, 0.322630, 0.137843,
		-0.219319, 0.844973, -0.487770,
		29.909111, 31.669821, 27.125740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560305, 31.611582, 27.598396>,  <30.062634, 31.078339, 27.467180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560305, 31.611582, 27.598396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193399, 31.758018, 27.535654>,  <29.973257, 31.845881, 27.498009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193399, 31.758018, 27.535654>,  <30.560305, 31.611582, 27.598396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193399, 31.758018, 27.535654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046755, 0.490089, 0.870418,
		0.395527, 0.791068, -0.466657,
		-0.917264, 0.366092, -0.156856,
		29.918221, 31.867846, 27.488598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481817, 32.303528, 27.924734>,  <30.560305, 31.611582, 27.598396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481817, 32.303528, 27.924734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090500, 32.225441, 27.896929>,  <29.855709, 32.178589, 27.880245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090500, 32.225441, 27.896929>,  <30.481817, 32.303528, 27.924734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090500, 32.225441, 27.896929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126928, 0.299324, 0.945672,
		-0.163808, 0.933967, -0.317605,
		-0.978293, -0.195221, -0.069514,
		29.797012, 32.166874, 27.876074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068735, 32.918777, 28.286289>,  <30.481817, 32.303528, 27.924734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068735, 32.918777, 28.286289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835743, 32.593864, 28.298372>,  <29.695948, 32.398918, 28.305622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835743, 32.593864, 28.298372>,  <30.068735, 32.918777, 28.286289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835743, 32.593864, 28.298372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327542, 0.268562, 0.905864,
		-0.743931, 0.517754, -0.422489,
		-0.582480, -0.812284, 0.030206,
		29.660999, 32.350178, 28.307434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437397, 33.215176, 28.442352>,  <30.068735, 32.918777, 28.286289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437397, 33.215176, 28.442352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416624, 32.825241, 28.529068>,  <29.404160, 32.591282, 28.581099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416624, 32.825241, 28.529068>,  <29.437397, 33.215176, 28.442352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416624, 32.825241, 28.529068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410726, 0.218724, 0.885135,
		-0.910279, -0.043073, -0.411749,
		-0.051934, -0.974836, 0.216791,
		29.401043, 32.532791, 28.594105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870115, 33.180408, 28.822599>,  <29.437397, 33.215176, 28.442352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870115, 33.180408, 28.822599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047192, 32.835808, 28.922075>,  <29.153437, 32.629047, 28.981762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047192, 32.835808, 28.922075>,  <28.870115, 33.180408, 28.822599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047192, 32.835808, 28.922075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408517, 0.053120, 0.911204,
		-0.798211, -0.504975, -0.328420,
		0.442690, -0.861498, 0.248692,
		29.179998, 32.577358, 28.996683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411898, 32.922478, 29.303806>,  <28.870115, 33.180408, 28.822599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411898, 32.922478, 29.303806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733484, 32.686291, 29.332054>,  <28.926435, 32.544579, 29.349003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733484, 32.686291, 29.332054>,  <28.411898, 32.922478, 29.303806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733484, 32.686291, 29.332054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193343, -0.147235, 0.970021,
		-0.562369, -0.793517, -0.232534,
		0.803964, -0.590469, 0.070621,
		28.974674, 32.509151, 29.353241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138102, 32.198116, 29.525608>,  <28.411898, 32.922478, 29.303806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138102, 32.198116, 29.525608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507120, 32.279472, 29.656780>,  <28.728531, 32.328285, 29.735483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507120, 32.279472, 29.656780>,  <28.138102, 32.198116, 29.525608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507120, 32.279472, 29.656780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327194, -0.038234, 0.944183,
		0.204576, -0.978351, 0.031275,
		0.922547, 0.203391, 0.327933,
		28.783884, 32.340488, 29.755159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321573, 31.764805, 30.144587>,  <28.138102, 32.198116, 29.525608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321573, 31.764805, 30.144587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576391, 32.070461, 30.185106>,  <28.729282, 32.253857, 30.209419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576391, 32.070461, 30.185106>,  <28.321573, 31.764805, 30.144587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576391, 32.070461, 30.185106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303649, 0.127980, 0.944149,
		0.708500, -0.632224, 0.313560,
		0.637043, 0.764143, 0.101300,
		28.767504, 32.299706, 30.215496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610106, 31.708872, 30.801830>,  <28.321573, 31.764805, 30.144587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610106, 31.708872, 30.801830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676254, 32.093662, 30.714876>,  <28.715942, 32.324535, 30.662704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676254, 32.093662, 30.714876>,  <28.610106, 31.708872, 30.801830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676254, 32.093662, 30.714876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324169, 0.261192, 0.909227,
		0.931433, -0.079890, 0.355036,
		0.165370, 0.961975, -0.217385,
		28.725866, 32.382256, 30.649660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040184, 31.924105, 31.372372>,  <28.610106, 31.708872, 30.801830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040184, 31.924105, 31.372372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881321, 32.254566, 31.212502>,  <28.786003, 32.452843, 31.116579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881321, 32.254566, 31.212502>,  <29.040184, 31.924105, 31.372372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881321, 32.254566, 31.212502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237010, 0.328390, 0.914323,
		0.886619, 0.457855, 0.065384,
		-0.397156, 0.826153, -0.399673,
		28.762175, 32.502411, 31.092600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393755, 32.399773, 31.689306>,  <29.040184, 31.924105, 31.372372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393755, 32.399773, 31.689306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049650, 32.559486, 31.562485>,  <28.843187, 32.655315, 31.486391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049650, 32.559486, 31.562485>,  <29.393755, 32.399773, 31.689306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049650, 32.559486, 31.562485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183040, 0.338542, 0.922977,
		0.475863, 0.852036, -0.218151,
		-0.860262, 0.399280, -0.317056,
		28.791571, 32.679272, 31.467367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421350, 33.031963, 31.954702>,  <29.393755, 32.399773, 31.689306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421350, 33.031963, 31.954702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031492, 33.016460, 31.866556>,  <28.797577, 33.007160, 31.813669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031492, 33.016460, 31.866556>,  <29.421350, 33.031963, 31.954702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031492, 33.016460, 31.866556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213485, 0.455930, 0.864032,
		0.066985, 0.889172, -0.452645,
		-0.974647, -0.038755, -0.220365,
		28.739098, 33.004833, 31.800447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236845, 33.628918, 32.131664>,  <29.421350, 33.031963, 31.954702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236845, 33.628918, 32.131664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881224, 33.448284, 32.101566>,  <28.667850, 33.339905, 32.083508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881224, 33.448284, 32.101566>,  <29.236845, 33.628918, 32.131664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881224, 33.448284, 32.101566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337131, 0.534610, 0.774942,
		-0.309725, 0.714329, -0.627538,
		-0.889052, -0.451581, -0.075241,
		28.614508, 33.312809, 32.078995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820341, 34.110756, 32.319187>,  <29.236845, 33.628918, 32.131664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820341, 34.110756, 32.319187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583771, 33.789623, 32.349342>,  <28.441828, 33.596943, 32.367435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583771, 33.789623, 32.349342>,  <28.820341, 34.110756, 32.319187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583771, 33.789623, 32.349342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198698, 0.235710, 0.951294,
		-0.781496, 0.547639, -0.298925,
		-0.591425, -0.802828, 0.075391,
		28.406343, 33.548775, 32.371960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257977, 34.296135, 32.728104>,  <28.820341, 34.110756, 32.319187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257977, 34.296135, 32.728104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257557, 33.896332, 32.740700>,  <28.257305, 33.656452, 32.748257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257557, 33.896332, 32.740700>,  <28.257977, 34.296135, 32.728104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257557, 33.896332, 32.740700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369221, 0.029656, 0.928868,
		-0.929341, -0.010655, -0.369069,
		-0.001048, -0.999503, 0.031495,
		28.257242, 33.596481, 32.750149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650175, 34.194035, 33.022785>,  <28.257977, 34.296135, 32.728104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650175, 34.194035, 33.022785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905453, 33.893127, 33.088261>,  <28.058620, 33.712582, 33.127544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905453, 33.893127, 33.088261>,  <27.650175, 34.194035, 33.022785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905453, 33.893127, 33.088261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289624, -0.037605, 0.956401,
		-0.713319, -0.657778, -0.241876,
		0.638196, -0.752272, 0.163685,
		28.096912, 33.667446, 33.137367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285980, 33.712402, 33.364349>,  <27.650175, 34.194035, 33.022785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285980, 33.712402, 33.364349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668114, 33.630558, 33.449646>,  <27.897394, 33.581451, 33.500824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668114, 33.630558, 33.449646>,  <27.285980, 33.712402, 33.364349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668114, 33.630558, 33.449646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265196, -0.275144, 0.924103,
		-0.130406, -0.939378, -0.317116,
		0.955335, -0.204606, 0.213238,
		27.954714, 33.569176, 33.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249271, 32.998249, 33.609035>,  <27.285980, 33.712402, 33.364349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249271, 32.998249, 33.609035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581533, 33.169449, 33.751488>,  <27.780891, 33.272167, 33.836960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581533, 33.169449, 33.751488>,  <27.249271, 32.998249, 33.609035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581533, 33.169449, 33.751488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305181, -0.185006, 0.934150,
		0.465700, -0.884642, -0.023059,
		0.830655, 0.427997, 0.356133,
		27.830730, 33.297848, 33.858326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611969, 32.529877, 33.985001>,  <27.249271, 32.998249, 33.609035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611969, 32.529877, 33.985001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718271, 32.878296, 34.150242>,  <27.782053, 33.087345, 34.249386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718271, 32.878296, 34.150242>,  <27.611969, 32.529877, 33.985001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718271, 32.878296, 34.150242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419269, -0.281438, 0.863137,
		0.868095, -0.402585, 0.290408,
		0.265754, 0.871044, 0.413107,
		27.797998, 33.139610, 34.274174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786430, 32.411438, 34.729301>,  <27.611969, 32.529877, 33.985001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786430, 32.411438, 34.729301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785807, 32.811096, 34.745792>,  <27.785433, 33.050892, 34.755688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785807, 32.811096, 34.745792>,  <27.786430, 32.411438, 34.729301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785807, 32.811096, 34.745792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358312, -0.039053, 0.932785,
		0.933601, -0.013318, 0.358068,
		-0.001561, 0.999148, 0.041232,
		27.785339, 33.110840, 34.758163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250507, 32.586899, 35.310810>,  <27.786430, 32.411438, 34.729301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250507, 32.586899, 35.310810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976070, 32.861763, 35.215240>,  <27.811409, 33.026680, 35.157898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976070, 32.861763, 35.215240>,  <28.250507, 32.586899, 35.310810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976070, 32.861763, 35.215240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347738, -0.021278, 0.937351,
		0.639027, 0.726194, 0.253551,
		-0.686093, 0.687161, -0.238928,
		27.770243, 33.067913, 35.143562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219925, 33.001637, 35.903042>,  <28.250507, 32.586899, 35.310810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219925, 33.001637, 35.903042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886852, 33.082752, 35.696926>,  <27.687010, 33.131420, 35.573257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886852, 33.082752, 35.696926>,  <28.219925, 33.001637, 35.903042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886852, 33.082752, 35.696926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524884, 0.007507, 0.851141,
		0.176467, 0.979194, 0.100188,
		-0.832680, 0.202785, -0.515288,
		27.637049, 33.143589, 35.542339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878359, 33.682728, 36.096214>,  <28.219925, 33.001637, 35.903042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878359, 33.682728, 36.096214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622608, 33.405804, 35.962410>,  <27.469158, 33.239647, 35.882126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622608, 33.405804, 35.962410>,  <27.878359, 33.682728, 36.096214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622608, 33.405804, 35.962410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491405, 0.033317, 0.870294,
		-0.591371, 0.720827, -0.361508,
		-0.639376, -0.692314, -0.334515,
		27.430796, 33.198109, 35.862057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514217, 33.749908, 36.496944>,  <27.878359, 33.682728, 36.096214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514217, 33.749908, 36.496944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906773, 33.702618, 36.436409>,  <29.142305, 33.674244, 36.400089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906773, 33.702618, 36.436409>,  <28.514217, 33.749908, 36.496944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906773, 33.702618, 36.436409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094144, 0.983025, -0.157474,
		0.167385, 0.140295, 0.975858,
		0.981387, -0.118230, -0.151335,
		29.201189, 33.667149, 36.391006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869390, 34.250862, 36.964050>,  <28.514217, 33.749908, 36.496944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869390, 34.250862, 36.964050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141314, 34.136280, 36.693996>,  <29.304468, 34.067532, 36.531963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141314, 34.136280, 36.693996>,  <28.869390, 34.250862, 36.964050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141314, 34.136280, 36.693996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256644, 0.955277, -0.146900,
		0.687018, -0.073404, 0.722923,
		0.679809, -0.286457, -0.675131,
		29.345257, 34.050343, 36.491459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534990, 34.614361, 37.098167>,  <28.869390, 34.250862, 36.964050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534990, 34.614361, 37.098167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478159, 34.523575, 36.712772>,  <29.444059, 34.469105, 36.481537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478159, 34.523575, 36.712772>,  <29.534990, 34.614361, 37.098167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478159, 34.523575, 36.712772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362292, 0.893895, -0.263998,
		0.921172, -0.386571, -0.044774,
		-0.142078, -0.226966, -0.963484,
		29.435535, 34.455486, 36.423729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312157, 34.532612, 36.651592>,  <29.534990, 34.614361, 37.098167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312157, 34.532612, 36.651592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974121, 34.674385, 36.491489>,  <29.771299, 34.759449, 36.395428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974121, 34.674385, 36.491489>,  <30.312157, 34.532612, 36.651592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974121, 34.674385, 36.491489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449484, 0.876383, -0.172968,
		0.289470, -0.326081, -0.899933,
		-0.845087, 0.354436, -0.400254,
		29.720594, 34.780716, 36.371414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574377, 34.932793, 36.106251>,  <30.312157, 34.532612, 36.651592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574377, 34.932793, 36.106251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209002, 35.082066, 36.171200>,  <29.989777, 35.171631, 36.210167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209002, 35.082066, 36.171200>,  <30.574377, 34.932793, 36.106251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209002, 35.082066, 36.171200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402516, 0.887329, 0.225006,
		-0.060107, 0.270886, -0.960733,
		-0.913438, 0.373186, 0.162370,
		29.934971, 35.194023, 36.219910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465849, 35.626591, 35.770798>,  <30.574377, 34.932793, 36.106251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465849, 35.626591, 35.770798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235964, 35.584755, 36.095455>,  <30.098032, 35.559654, 36.290249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235964, 35.584755, 36.095455>,  <30.465849, 35.626591, 35.770798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235964, 35.584755, 36.095455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393892, 0.834003, 0.386378,
		-0.717323, 0.541756, -0.438118,
		-0.574715, -0.104587, 0.811643,
		30.063549, 35.553379, 36.338947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987719, 36.205833, 35.854481>,  <30.465849, 35.626591, 35.770798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987719, 36.205833, 35.854481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080399, 36.045219, 36.208900>,  <30.136005, 35.948853, 36.421555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080399, 36.045219, 36.208900>,  <29.987719, 36.205833, 35.854481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080399, 36.045219, 36.208900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200037, 0.911039, 0.360546,
		-0.951998, 0.093705, 0.291408,
		0.231699, -0.401531, 0.886052,
		30.149908, 35.924759, 36.474716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568319, 36.436222, 36.317413>,  <29.987719, 36.205833, 35.854481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568319, 36.436222, 36.317413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894402, 36.320019, 36.517830>,  <30.090052, 36.250298, 36.638081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894402, 36.320019, 36.517830>,  <29.568319, 36.436222, 36.317413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894402, 36.320019, 36.517830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163661, 0.945393, 0.281865,
		-0.555564, -0.147778, 0.818236,
		0.815208, -0.290508, 0.501041,
		30.138964, 36.232868, 36.668140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498243, 36.542938, 37.066360>,  <29.568319, 36.436222, 36.317413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498243, 36.542938, 37.066360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898092, 36.532402, 37.069553>,  <30.138000, 36.526081, 37.071468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898092, 36.532402, 37.069553>,  <29.498243, 36.542938, 37.066360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898092, 36.532402, 37.069553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020001, 0.894519, 0.446582,
		-0.018906, -0.446253, 0.894707,
		0.999621, -0.026338, 0.007986,
		30.197979, 36.524502, 37.071949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725100, 36.897209, 37.786480>,  <29.498243, 36.542938, 37.066360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725100, 36.897209, 37.786480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069315, 36.868160, 37.584808>,  <30.275845, 36.850731, 37.463806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069315, 36.868160, 37.584808>,  <29.725100, 36.897209, 37.786480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069315, 36.868160, 37.584808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365666, 0.777150, 0.512178,
		0.354631, -0.625111, 0.695322,
		0.860538, -0.072622, -0.504183,
		30.327477, 36.846375, 37.433552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312010, 36.833176, 38.263908>,  <29.725100, 36.897209, 37.786480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312010, 36.833176, 38.263908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463106, 36.991016, 37.928860>,  <30.553764, 37.085720, 37.727833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463106, 36.991016, 37.928860>,  <30.312010, 36.833176, 38.263908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463106, 36.991016, 37.928860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371431, 0.764082, 0.527463,
		0.848146, -0.510361, 0.142057,
		0.377740, 0.394601, -0.837618,
		30.576427, 37.109398, 37.677574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106468, 36.979195, 38.355427>,  <30.312010, 36.833176, 38.263908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106468, 36.979195, 38.355427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987867, 37.202980, 38.045822>,  <30.916706, 37.337250, 37.860062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987867, 37.202980, 38.045822>,  <31.106468, 36.979195, 38.355427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987867, 37.202980, 38.045822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556904, 0.759681, 0.335772,
		0.775850, -0.331490, -0.536815,
		-0.296503, 0.559463, -0.774007,
		30.898916, 37.370819, 37.813622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772408, 37.245293, 38.015415>,  <31.106468, 36.979195, 38.355427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772408, 37.245293, 38.015415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468422, 37.470253, 37.885086>,  <31.286030, 37.605228, 37.806889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468422, 37.470253, 37.885086>,  <31.772408, 37.245293, 38.015415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468422, 37.470253, 37.885086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420599, 0.807710, 0.413158,
		0.495527, 0.176947, -0.850378,
		-0.759966, 0.562400, -0.325819,
		31.240433, 37.638973, 37.787342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124115, 37.867176, 37.722527>,  <31.772408, 37.245293, 38.015415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124115, 37.867176, 37.722527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740873, 37.966782, 37.779129>,  <31.510927, 38.026543, 37.813091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740873, 37.966782, 37.779129>,  <32.124115, 37.867176, 37.722527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740873, 37.966782, 37.779129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286405, 0.835840, 0.468341,
		-0.001658, 0.489249, -0.872142,
		-0.958107, 0.249010, 0.141509,
		31.453442, 38.041485, 37.821583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088127, 38.638329, 37.641220>,  <32.124115, 37.867176, 37.722527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088127, 38.638329, 37.641220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786028, 38.498486, 37.862988>,  <31.604769, 38.414581, 37.996048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786028, 38.498486, 37.862988>,  <32.088127, 38.638329, 37.641220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786028, 38.498486, 37.862988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094226, 0.779171, 0.619689,
		-0.648634, 0.520258, -0.555523,
		-0.755245, -0.349607, 0.554419,
		31.559454, 38.393604, 38.029312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781197, 39.260056, 37.868137>,  <32.088127, 38.638329, 37.641220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781197, 39.260056, 37.868137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656582, 38.979755, 38.124851>,  <31.581814, 38.811573, 38.278881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656582, 38.979755, 38.124851>,  <31.781197, 39.260056, 37.868137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656582, 38.979755, 38.124851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181593, 0.619046, 0.764072,
		-0.932721, 0.354580, -0.065603,
		-0.311536, -0.700753, 0.641787,
		31.563122, 38.769531, 38.317387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790543, 39.608665, 38.423130>,  <31.781197, 39.260056, 37.868137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790543, 39.608665, 38.423130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738239, 39.254658, 38.601852>,  <31.706858, 39.042252, 38.709087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738239, 39.254658, 38.601852>,  <31.790543, 39.608665, 38.423130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738239, 39.254658, 38.601852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215273, 0.414577, 0.884185,
		-0.967760, 0.211799, 0.136313,
		-0.130757, -0.885024, 0.446806,
		31.699013, 38.989151, 38.735893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196751, 39.620670, 39.042427>,  <31.790543, 39.608665, 38.423130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196751, 39.620670, 39.042427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457811, 39.326569, 39.115574>,  <31.614447, 39.150108, 39.159462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457811, 39.326569, 39.115574>,  <31.196751, 39.620670, 39.042427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457811, 39.326569, 39.115574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149559, 0.361636, 0.920245,
		-0.742751, -0.573248, 0.345987,
		0.652650, -0.735259, 0.182871,
		31.653606, 39.105991, 39.170437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139017, 39.526146, 39.718555>,  <31.196751, 39.620670, 39.042427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139017, 39.526146, 39.718555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475599, 39.326103, 39.636726>,  <31.677547, 39.206078, 39.587631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475599, 39.326103, 39.636726>,  <31.139017, 39.526146, 39.718555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475599, 39.326103, 39.636726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167985, -0.117709, 0.978737,
		-0.513554, -0.857926, -0.015037,
		0.841454, -0.500108, -0.204568,
		31.728035, 39.176071, 39.575356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134142, 39.016727, 40.152840>,  <31.139017, 39.526146, 39.718555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134142, 39.016727, 40.152840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519224, 39.068684, 40.057907>,  <31.750273, 39.099857, 40.000946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519224, 39.068684, 40.057907>,  <31.134142, 39.016727, 40.152840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519224, 39.068684, 40.057907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223861, 0.110208, 0.968370,
		0.151938, -0.985384, 0.077021,
		0.962705, 0.129891, -0.237334,
		31.808037, 39.107651, 39.986706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353899, 38.683937, 40.704494>,  <31.134142, 39.016727, 40.152840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353899, 38.683937, 40.704494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661961, 38.888783, 40.552391>,  <31.846798, 39.011692, 40.461128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661961, 38.888783, 40.552391>,  <31.353899, 38.683937, 40.704494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661961, 38.888783, 40.552391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272029, 0.275512, 0.922005,
		0.576941, -0.813528, 0.072877,
		0.770156, 0.512118, -0.380257,
		31.893007, 39.042419, 40.438313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957150, 38.371964, 40.867535>,  <31.353899, 38.683937, 40.704494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957150, 38.371964, 40.867535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016857, 38.765060, 40.823837>,  <32.052681, 39.000919, 40.797619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016857, 38.765060, 40.823837>,  <31.957150, 38.371964, 40.867535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016857, 38.765060, 40.823837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200037, 0.078185, 0.976664,
		0.968351, -0.167639, -0.184914,
		0.149270, 0.982743, -0.109245,
		32.061638, 39.059883, 40.791065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477505, 38.517769, 41.350735>,  <31.957150, 38.371964, 40.867535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477505, 38.517769, 41.350735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320438, 38.872284, 41.252506>,  <32.226200, 39.084995, 41.193569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320438, 38.872284, 41.252506>,  <32.477505, 38.517769, 41.350735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320438, 38.872284, 41.252506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037278, 0.282131, 0.958651,
		0.918927, 0.367272, -0.143821,
		-0.392662, 0.886292, -0.245567,
		32.202641, 39.138172, 41.178837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920162, 38.963821, 41.716904>,  <32.477505, 38.517769, 41.350735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920162, 38.963821, 41.716904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588326, 39.174210, 41.641926>,  <32.389225, 39.300442, 41.596939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588326, 39.174210, 41.641926>,  <32.920162, 38.963821, 41.716904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588326, 39.174210, 41.641926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003675, 0.340829, 0.940118,
		0.558365, 0.779221, -0.284681,
		-0.829587, 0.525975, -0.187444,
		32.339451, 39.332001, 41.585693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917282, 39.418789, 42.271820>,  <32.920162, 38.963821, 41.716904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917282, 39.418789, 42.271820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560246, 39.502857, 42.112267>,  <32.346024, 39.553299, 42.016533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560246, 39.502857, 42.112267>,  <32.917282, 39.418789, 42.271820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560246, 39.502857, 42.112267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194581, 0.618502, 0.761311,
		0.406718, 0.757154, -0.511173,
		-0.892591, 0.210174, -0.398883,
		32.292469, 39.565910, 41.992603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840561, 40.169476, 42.223858>,  <32.917282, 39.418789, 42.271820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840561, 40.169476, 42.223858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472328, 40.013329, 42.228699>,  <32.251389, 39.919640, 42.231602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472328, 40.013329, 42.228699>,  <32.840561, 40.169476, 42.223858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472328, 40.013329, 42.228699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206841, 0.513587, 0.832733,
		-0.331290, 0.764093, -0.553542,
		-0.920578, -0.390372, 0.012101,
		32.196156, 39.896217, 42.232330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342575, 40.729782, 42.169273>,  <32.840561, 40.169476, 42.223858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342575, 40.729782, 42.169273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143135, 40.428368, 42.340664>,  <32.023472, 40.247520, 42.443497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143135, 40.428368, 42.340664>,  <32.342575, 40.729782, 42.169273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143135, 40.428368, 42.340664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457240, 0.648563, 0.608520,
		-0.736432, 0.107491, -0.667917,
		-0.498597, -0.753532, 0.428474,
		31.993555, 40.202309, 42.469208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599895, 40.924618, 42.383640>,  <32.342575, 40.729782, 42.169273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599895, 40.924618, 42.383640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666924, 40.612900, 42.625175>,  <31.707140, 40.425869, 42.770096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666924, 40.612900, 42.625175>,  <31.599895, 40.924618, 42.383640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666924, 40.612900, 42.625175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490851, 0.465228, 0.736633,
		-0.854977, -0.419832, -0.304560,
		0.167572, -0.779298, 0.603834,
		31.717196, 40.379112, 42.806324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052040, 40.952507, 42.816433>,  <31.599895, 40.924618, 42.383640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052040, 40.952507, 42.816433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288261, 40.696335, 43.012836>,  <31.429995, 40.542629, 43.130680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288261, 40.696335, 43.012836>,  <31.052040, 40.952507, 42.816433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288261, 40.696335, 43.012836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323311, 0.369710, 0.871083,
		-0.739402, -0.673170, 0.011274,
		0.590555, -0.640435, 0.491008,
		31.465427, 40.504204, 43.160137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686871, 40.518890, 43.383739>,  <31.052040, 40.952507, 42.816433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686871, 40.518890, 43.383739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070892, 40.499813, 43.494030>,  <31.301306, 40.488365, 43.560204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070892, 40.499813, 43.494030>,  <30.686871, 40.518890, 43.383739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070892, 40.499813, 43.494030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263107, 0.181594, 0.947522,
		-0.095261, -0.982216, 0.161792,
		0.960052, -0.047694, 0.275727,
		31.358908, 40.485504, 43.576748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614731, 40.126175, 43.961185>,  <30.686871, 40.518890, 43.383739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614731, 40.126175, 43.961185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963692, 40.320858, 43.979225>,  <31.173067, 40.437668, 43.990047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963692, 40.320858, 43.979225>,  <30.614731, 40.126175, 43.961185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963692, 40.320858, 43.979225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216413, 0.301877, 0.928459,
		0.438274, -0.819747, 0.368688,
		0.872400, 0.486708, 0.045099,
		31.225412, 40.466869, 43.992756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671143, 40.354713, 44.688171>,  <30.614731, 40.126175, 43.961185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671143, 40.354713, 44.688171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966866, 40.572124, 44.529171>,  <31.144300, 40.702572, 44.433773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966866, 40.572124, 44.529171>,  <30.671143, 40.354713, 44.688171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966866, 40.572124, 44.529171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106403, 0.488599, 0.865996,
		0.664908, -0.682533, 0.303392,
		0.739308, 0.543526, -0.397497,
		31.188658, 40.735184, 44.409924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160841, 40.333794, 45.156639>,  <30.671143, 40.354713, 44.688171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160841, 40.333794, 45.156639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264923, 40.662052, 44.953140>,  <31.327374, 40.859009, 44.831039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264923, 40.662052, 44.953140>,  <31.160841, 40.333794, 45.156639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264923, 40.662052, 44.953140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008981, 0.528935, 0.848615,
		0.965511, -0.216247, 0.145002,
		0.260207, 0.820650, -0.508750,
		31.342985, 40.908249, 44.800514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774250, 40.609222, 45.499767>,  <31.160841, 40.333794, 45.156639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774250, 40.609222, 45.499767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575792, 40.890198, 45.295643>,  <31.456718, 41.058784, 45.173168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575792, 40.890198, 45.295643>,  <31.774250, 40.609222, 45.499767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575792, 40.890198, 45.295643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060362, 0.558429, 0.827353,
		0.866141, 0.441288, -0.234660,
		-0.496142, 0.702440, -0.510315,
		31.426950, 41.100929, 45.142548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123192, 41.249958, 45.640331>,  <31.774250, 40.609222, 45.499767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123192, 41.249958, 45.640331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747562, 41.320793, 45.522491>,  <31.522186, 41.363293, 45.451790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747562, 41.320793, 45.522491>,  <32.123192, 41.249958, 45.640331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747562, 41.320793, 45.522491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136886, 0.593497, 0.793110,
		0.315293, 0.785112, -0.533094,
		-0.939070, 0.177089, -0.294596,
		31.465841, 41.373920, 45.434113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030373, 41.981201, 45.577423>,  <32.123192, 41.249958, 45.640331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030373, 41.981201, 45.577423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661888, 41.826870, 45.597416>,  <31.440796, 41.734272, 45.609413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661888, 41.826870, 45.597416>,  <32.030373, 41.981201, 45.577423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661888, 41.826870, 45.597416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161537, 0.496206, 0.853045,
		-0.353934, 0.777763, -0.519438,
		-0.921215, -0.385830, 0.049986,
		31.385523, 41.711121, 45.612411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695217, 42.546051, 45.628078>,  <32.030373, 41.981201, 45.577423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695217, 42.546051, 45.628078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449785, 42.259563, 45.761078>,  <31.302526, 42.087673, 45.840878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449785, 42.259563, 45.761078>,  <31.695217, 42.546051, 45.628078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449785, 42.259563, 45.761078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264824, 0.583342, 0.767842,
		-0.743903, 0.383076, -0.547596,
		-0.613578, -0.716216, 0.332502,
		31.265713, 42.044697, 45.860828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186489, 42.947140, 46.028393>,  <31.695217, 42.546051, 45.628078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186489, 42.947140, 46.028393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109823, 42.570454, 46.138988>,  <31.063824, 42.344444, 46.205345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109823, 42.570454, 46.138988>,  <31.186489, 42.947140, 46.028393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109823, 42.570454, 46.138988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334148, 0.327490, 0.883796,
		-0.922827, 0.077006, -0.377439,
		-0.191665, -0.941711, 0.276485,
		31.052324, 42.287941, 46.221935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430725, 42.795944, 46.303795>,  <31.186489, 42.947140, 46.028393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430725, 42.795944, 46.303795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677073, 42.525341, 46.465309>,  <30.824881, 42.362980, 46.562218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677073, 42.525341, 46.465309>,  <30.430725, 42.795944, 46.303795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677073, 42.525341, 46.465309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333261, 0.240713, 0.911589,
		-0.713892, -0.695987, -0.077205,
		0.615871, -0.676505, 0.403788,
		30.861834, 42.322388, 46.586445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041073, 42.632927, 46.859360>,  <30.430725, 42.795944, 46.303795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041073, 42.632927, 46.859360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394308, 42.473003, 46.957584>,  <30.606249, 42.377048, 47.016518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394308, 42.473003, 46.957584>,  <30.041073, 42.632927, 46.859360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394308, 42.473003, 46.957584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129399, 0.295539, 0.946527,
		-0.451007, -0.867644, 0.209252,
		0.883090, -0.399814, 0.245562,
		30.659235, 42.353058, 47.031254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890022, 42.364216, 47.492046>,  <30.041073, 42.632927, 46.859360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890022, 42.364216, 47.492046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288469, 42.395378, 47.475658>,  <30.527538, 42.414074, 47.465824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288469, 42.395378, 47.475658>,  <29.890022, 42.364216, 47.492046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288469, 42.395378, 47.475658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030118, 0.135738, 0.990287,
		0.082705, -0.987677, 0.132865,
		0.996119, 0.077900, -0.040973,
		30.587305, 42.418751, 47.463367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102201, 41.939682, 48.038872>,  <29.890022, 42.364216, 47.492046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102201, 41.939682, 48.038872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411474, 42.174927, 47.943947>,  <30.597038, 42.316074, 47.886993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411474, 42.174927, 47.943947>,  <30.102201, 41.939682, 48.038872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411474, 42.174927, 47.943947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247239, 0.065064, 0.966768,
		0.584006, -0.806160, -0.095097,
		0.773182, 0.588109, -0.237312,
		30.643429, 42.351360, 47.872753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619001, 41.637833, 48.378361>,  <30.102201, 41.939682, 48.038872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619001, 41.637833, 48.378361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717108, 42.022835, 48.332008>,  <30.775970, 42.253838, 48.304199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717108, 42.022835, 48.332008>,  <30.619001, 41.637833, 48.378361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717108, 42.022835, 48.332008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170320, 0.074890, 0.982539,
		0.954378, -0.260718, -0.145566,
		0.245264, 0.962506, -0.115879,
		30.790688, 42.311588, 48.297245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232853, 41.719643, 48.749859>,  <30.619001, 41.637833, 48.378361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232853, 41.719643, 48.749859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082134, 42.088493, 48.714745>,  <30.991703, 42.309803, 48.693676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082134, 42.088493, 48.714745>,  <31.232853, 41.719643, 48.749859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082134, 42.088493, 48.714745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131747, 0.147163, 0.980299,
		0.916879, 0.357807, -0.176938,
		-0.376797, 0.922126, -0.087790,
		30.969095, 42.365131, 48.688408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564079, 42.204536, 49.177948>,  <31.232853, 41.719643, 48.749859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564079, 42.204536, 49.177948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234346, 42.416649, 49.098679>,  <31.036507, 42.543919, 49.051117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234346, 42.416649, 49.098679>,  <31.564079, 42.204536, 49.177948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234346, 42.416649, 49.098679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147651, 0.136550, 0.979568,
		0.546511, 0.836751, -0.034266,
		-0.824333, 0.530285, -0.198173,
		30.987047, 42.575733, 49.039227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633307, 42.881897, 49.637753>,  <31.564079, 42.204536, 49.177948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633307, 42.881897, 49.637753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245419, 42.836163, 49.551430>,  <31.012686, 42.808723, 49.499638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245419, 42.836163, 49.551430>,  <31.633307, 42.881897, 49.637753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245419, 42.836163, 49.551430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238823, 0.259112, 0.935855,
		-0.051084, 0.959056, -0.278572,
		-0.969718, -0.114337, -0.215808,
		30.954502, 42.801861, 49.486687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296825, 43.347805, 50.102631>,  <31.633307, 42.881897, 49.637753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296825, 43.347805, 50.102631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986441, 43.129105, 49.976803>,  <30.800209, 42.997887, 49.901306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986441, 43.129105, 49.976803>,  <31.296825, 43.347805, 50.102631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986441, 43.129105, 49.976803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547402, 0.335886, 0.766506,
		-0.313426, 0.766973, -0.559925,
		-0.775961, -0.546747, -0.314567,
		30.753653, 42.965080, 49.882431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777302, 43.804939, 49.995316>,  <31.296825, 43.347805, 50.102631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777302, 43.804939, 49.995316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652601, 43.431854, 50.067833>,  <30.577782, 43.208004, 50.111343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652601, 43.431854, 50.067833>,  <30.777302, 43.804939, 49.995316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652601, 43.431854, 50.067833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237753, 0.261308, 0.935517,
		-0.919938, 0.248544, -0.303216,
		-0.311749, -0.932708, 0.181295,
		30.559076, 43.152042, 50.122223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103458, 43.722637, 50.199398>,  <30.777302, 43.804939, 49.995316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103458, 43.722637, 50.199398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323809, 43.438667, 50.374916>,  <30.456018, 43.268284, 50.480228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323809, 43.438667, 50.374916>,  <30.103458, 43.722637, 50.199398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323809, 43.438667, 50.374916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389403, 0.246393, 0.887500,
		-0.738175, -0.659771, -0.140715,
		0.550875, -0.709925, 0.438798,
		30.489071, 43.225689, 50.506554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674286, 43.514851, 50.692978>,  <30.103458, 43.722637, 50.199398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674286, 43.514851, 50.692978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044544, 43.393559, 50.783516>,  <30.266699, 43.320786, 50.837841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044544, 43.393559, 50.783516>,  <29.674286, 43.514851, 50.692978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044544, 43.393559, 50.783516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217916, 0.061835, 0.974007,
		-0.309340, -0.950910, -0.008840,
		0.925646, -0.303226, 0.226347,
		30.322239, 43.302589, 50.851421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618216, 42.997581, 51.164036>,  <29.674286, 43.514851, 50.692978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618216, 42.997581, 51.164036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988670, 43.136425, 51.223080>,  <30.210943, 43.219730, 51.258507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988670, 43.136425, 51.223080>,  <29.618216, 42.997581, 51.164036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988670, 43.136425, 51.223080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153782, -0.009862, 0.988056,
		0.344420, -0.937772, 0.044246,
		0.926135, 0.347111, 0.147609,
		30.266510, 43.240559, 51.267361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336897, 42.693420, 51.898479>,  <29.618216, 42.997581, 51.164036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336897, 42.693420, 51.898479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315485, 43.090855, 51.938339>,  <29.302637, 43.329315, 51.962257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315485, 43.090855, 51.938339>,  <29.336897, 42.693420, 51.898479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315485, 43.090855, 51.938339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633897, 0.110921, -0.765423,
		-0.771563, 0.022198, -0.635765,
		-0.053529, 0.993581, 0.099653,
		29.299427, 43.388927, 51.968235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759724, 41.953064, 51.656670>,  <29.336897, 42.693420, 51.898479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759724, 41.953064, 51.656670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997480, 42.080143, 51.952175>,  <30.140135, 42.156391, 52.129478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997480, 42.080143, 51.952175>,  <29.759724, 41.953064, 51.656670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997480, 42.080143, 51.952175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587139, -0.799188, -0.128711,
		0.549517, 0.510259, -0.661564,
		0.594390, 0.317701, 0.738760,
		30.175797, 42.175453, 52.173801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556833, 42.300735, 51.607342>,  <29.759724, 41.953064, 51.656670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556833, 42.300735, 51.607342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461771, 42.064407, 51.915745>,  <30.404734, 41.922611, 52.100788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461771, 42.064407, 51.915745>,  <30.556833, 42.300735, 51.607342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461771, 42.064407, 51.915745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694450, -0.658327, -0.290420,
		0.679161, 0.466406, 0.566751,
		-0.237654, -0.590822, 0.771006,
		30.390474, 41.887161, 52.147045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049267, 42.845032, 51.353951>,  <30.556833, 42.300735, 51.607342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049267, 42.845032, 51.353951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387909, 42.663857, 51.465740>,  <31.591093, 42.555153, 51.532814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387909, 42.663857, 51.465740>,  <31.049267, 42.845032, 51.353951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387909, 42.663857, 51.465740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451943, -0.889140, -0.071954,
		0.281085, -0.065391, -0.957452,
		0.846604, -0.452939, 0.279477,
		31.641890, 42.527973, 51.549583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348408, 42.328854, 50.924595>,  <31.049267, 42.845032, 51.353951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348408, 42.328854, 50.924595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459106, 42.195274, 51.285015>,  <31.525526, 42.115128, 51.501266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459106, 42.195274, 51.285015>,  <31.348408, 42.328854, 50.924595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459106, 42.195274, 51.285015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344714, -0.909765, -0.231302,
		0.896986, -0.246592, -0.366892,
		0.276748, -0.333947, 0.901049,
		31.542131, 42.095089, 51.555328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896048, 41.795879, 51.003269>,  <31.348408, 42.328854, 50.924595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896048, 41.795879, 51.003269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642923, 41.737919, 51.307522>,  <31.491049, 41.703144, 51.490074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642923, 41.737919, 51.307522>,  <31.896048, 41.795879, 51.003269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642923, 41.737919, 51.307522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227627, -0.904117, -0.361606,
		0.740093, -0.401967, 0.539151,
		-0.632810, -0.144897, 0.760629,
		31.453081, 41.694450, 51.535709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022854, 41.128502, 51.221161>,  <31.896048, 41.795879, 51.003269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022854, 41.128502, 51.221161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656908, 41.208542, 51.361439>,  <31.437340, 41.256565, 51.445606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656908, 41.208542, 51.361439>,  <32.022854, 41.128502, 51.221161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656908, 41.208542, 51.361439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319676, -0.889533, -0.326403,
		0.246638, -0.410722, 0.877768,
		-0.914864, 0.200098, 0.350691,
		31.382448, 41.268570, 51.466644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791538, 40.489307, 51.609451>,  <32.022854, 41.128502, 51.221161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791538, 40.489307, 51.609451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497868, 40.697109, 51.434589>,  <31.321665, 40.821789, 51.329674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497868, 40.697109, 51.434589>,  <31.791538, 40.489307, 51.609451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497868, 40.697109, 51.434589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050500, -0.683860, -0.727863,
		-0.677065, -0.512313, 0.528317,
		-0.734188, 0.519491, -0.437146,
		31.277615, 40.852959, 51.303444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347404, 39.936302, 51.334503>,  <31.791538, 40.489307, 51.609451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347404, 39.936302, 51.334503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234425, 40.271873, 51.148415>,  <31.166636, 40.473217, 51.036762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234425, 40.271873, 51.148415>,  <31.347404, 39.936302, 51.334503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234425, 40.271873, 51.148415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192533, -0.524673, -0.829246,
		-0.939762, -0.144652, 0.309715,
		-0.282452, 0.838924, -0.465217,
		31.149689, 40.523552, 51.008850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665033, 39.917000, 51.132259>,  <31.347404, 39.936302, 51.334503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665033, 39.917000, 51.132259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916960, 40.126301, 50.902637>,  <31.068115, 40.251881, 50.764866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916960, 40.126301, 50.902637>,  <30.665033, 39.917000, 51.132259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916960, 40.126301, 50.902637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201956, -0.603317, -0.771506,
		-0.750030, 0.601841, -0.274305,
		0.629817, 0.523255, -0.574051,
		31.105906, 40.283276, 50.730423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361912, 40.070034, 50.511120>,  <30.665033, 39.917000, 51.132259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361912, 40.070034, 50.511120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752674, 40.070072, 50.425648>,  <30.987131, 40.070095, 50.374363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752674, 40.070072, 50.425648>,  <30.361912, 40.070034, 50.511120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752674, 40.070072, 50.425648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196425, -0.393275, -0.898194,
		-0.084124, 0.919421, -0.384172,
		0.976903, 0.000099, -0.213681,
		31.045746, 40.070103, 50.361542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408802, 39.941158, 49.817871>,  <30.361912, 40.070034, 50.511120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408802, 39.941158, 49.817871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804623, 39.905533, 49.863232>,  <31.042114, 39.884159, 49.890450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804623, 39.905533, 49.863232>,  <30.408802, 39.941158, 49.817871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804623, 39.905533, 49.863232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036011, -0.608887, -0.792439,
		0.139626, 0.788241, -0.599317,
		0.989549, -0.089063, 0.113402,
		31.101488, 39.878815, 49.897251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735106, 40.157581, 49.142742>,  <30.408802, 39.941158, 49.817871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735106, 40.157581, 49.142742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974220, 39.918854, 49.356831>,  <31.117689, 39.775620, 49.485283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974220, 39.918854, 49.356831>,  <30.735106, 40.157581, 49.142742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974220, 39.918854, 49.356831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203230, -0.533013, -0.821337,
		0.775468, 0.599756, -0.197336,
		0.597785, -0.596816, 0.535223,
		31.153555, 39.739807, 49.517399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351826, 40.030235, 48.654808>,  <30.735106, 40.157581, 49.142742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351826, 40.030235, 48.654808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352716, 39.749523, 48.939766>,  <31.353251, 39.581097, 49.110741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352716, 39.749523, 48.939766>,  <31.351826, 40.030235, 48.654808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352716, 39.749523, 48.939766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426260, -0.643764, -0.635508,
		0.904598, 0.305080, 0.297706,
		0.002228, -0.701779, 0.712391,
		31.353384, 39.538990, 49.153484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957609, 39.878063, 48.602505>,  <31.351826, 40.030235, 48.654808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957609, 39.878063, 48.602505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809233, 39.549782, 48.776329>,  <31.720207, 39.352814, 48.880623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809233, 39.549782, 48.776329>,  <31.957609, 39.878063, 48.602505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809233, 39.549782, 48.776329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430085, -0.566559, -0.702878,
		0.823062, -0.073826, 0.563133,
		-0.370939, -0.820707, 0.434562,
		31.697950, 39.303570, 48.906696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508308, 39.432781, 48.636631>,  <31.957609, 39.878063, 48.602505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508308, 39.432781, 48.636631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200836, 39.178486, 48.664825>,  <32.016354, 39.025909, 48.681744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200836, 39.178486, 48.664825>,  <32.508308, 39.432781, 48.636631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200836, 39.178486, 48.664825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348592, -0.508763, -0.787174,
		0.536298, -0.580514, 0.612690,
		-0.768679, -0.635739, 0.070486,
		31.970232, 38.987762, 48.685970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836830, 38.840836, 48.533360>,  <32.508308, 39.432781, 48.636631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836830, 38.840836, 48.533360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448414, 38.768890, 48.470467>,  <32.215363, 38.725723, 48.432732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448414, 38.768890, 48.470467>,  <32.836830, 38.840836, 48.533360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448414, 38.768890, 48.470467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230683, -0.534834, -0.812858,
		0.062115, -0.825591, 0.560840,
		-0.971045, -0.179867, -0.157228,
		32.157101, 38.714931, 48.423298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710228, 38.121861, 48.561382>,  <32.836830, 38.840836, 48.533360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710228, 38.121861, 48.561382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422592, 38.287663, 48.338280>,  <32.250011, 38.387146, 48.204418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422592, 38.287663, 48.338280>,  <32.710228, 38.121861, 48.561382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422592, 38.287663, 48.338280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365252, -0.457369, -0.810805,
		-0.591187, -0.786763, 0.177489,
		-0.719089, 0.414509, -0.557757,
		32.206863, 38.412014, 48.170952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396164, 37.566189, 48.297535>,  <32.710228, 38.121861, 48.561382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396164, 37.566189, 48.297535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308598, 37.862263, 48.043228>,  <32.256058, 38.039906, 47.890644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308598, 37.862263, 48.043228>,  <32.396164, 37.566189, 48.297535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308598, 37.862263, 48.043228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384202, -0.533548, -0.753468,
		-0.896919, -0.409213, -0.167576,
		-0.218919, 0.740183, -0.635770,
		32.242920, 38.084316, 47.852497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044132, 37.224113, 47.703049>,  <32.396164, 37.566189, 48.297535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044132, 37.224113, 47.703049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159618, 37.577686, 47.555916>,  <32.228909, 37.789829, 47.467636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159618, 37.577686, 47.555916>,  <32.044132, 37.224113, 47.703049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159618, 37.577686, 47.555916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298090, -0.448090, -0.842827,
		-0.909829, 0.133686, -0.392861,
		0.288711, 0.883936, -0.367835,
		32.246231, 37.842869, 47.445564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778685, 37.226353, 47.055984>,  <32.044132, 37.224113, 47.703049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778685, 37.226353, 47.055984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065388, 37.504551, 47.035816>,  <32.237411, 37.671471, 47.023716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065388, 37.504551, 47.035816>,  <31.778685, 37.226353, 47.055984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065388, 37.504551, 47.035816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178349, -0.252737, -0.950955,
		-0.674127, 0.672615, -0.305193,
		0.716760, 0.695495, -0.050417,
		32.280415, 37.713200, 47.020691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655729, 37.716614, 46.523724>,  <31.778685, 37.226353, 47.055984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655729, 37.716614, 46.523724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051933, 37.761280, 46.555767>,  <32.289658, 37.788078, 46.574993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051933, 37.761280, 46.555767>,  <31.655729, 37.716614, 46.523724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051933, 37.761280, 46.555767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099949, -0.185238, -0.977597,
		-0.094322, 0.976329, -0.194641,
		0.990512, 0.111664, 0.080111,
		32.349087, 37.794781, 46.579800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959057, 38.165417, 45.942905>,  <31.655729, 37.716614, 46.523724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959057, 38.165417, 45.942905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270649, 37.963646, 46.091904>,  <32.457603, 37.842583, 46.181301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270649, 37.963646, 46.091904>,  <31.959057, 38.165417, 45.942905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270649, 37.963646, 46.091904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277349, -0.255605, -0.926145,
		0.562380, 0.824757, -0.059209,
		0.778978, -0.504423, 0.372492,
		32.504341, 37.812321, 46.203651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562447, 38.390785, 45.584866>,  <31.959057, 38.165417, 45.942905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562447, 38.390785, 45.584866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639210, 38.029270, 45.737888>,  <32.685268, 37.812363, 45.829700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639210, 38.029270, 45.737888>,  <32.562447, 38.390785, 45.584866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639210, 38.029270, 45.737888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398371, -0.284504, -0.871985,
		0.896923, 0.319740, 0.305442,
		0.191909, -0.903783, 0.382553,
		32.696781, 37.758137, 45.852654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237194, 38.225323, 45.290199>,  <32.562447, 38.390785, 45.584866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237194, 38.225323, 45.290199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061653, 37.882759, 45.398994>,  <32.956329, 37.677219, 45.464272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061653, 37.882759, 45.398994>,  <33.237194, 38.225323, 45.290199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061653, 37.882759, 45.398994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379197, -0.450926, -0.808008,
		0.814629, -0.251458, 0.522636,
		-0.438850, -0.856408, 0.271985,
		32.929996, 37.625835, 45.480591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582855, 37.727188, 44.928085>,  <33.237194, 38.225323, 45.290199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582855, 37.727188, 44.928085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273224, 37.507477, 45.054005>,  <33.087444, 37.375648, 45.129555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273224, 37.507477, 45.054005>,  <33.582855, 37.727188, 44.928085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273224, 37.507477, 45.054005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056813, -0.555496, -0.829576,
		0.630536, -0.624272, 0.461203,
		-0.774078, -0.549280, 0.314794,
		33.041000, 37.342693, 45.148441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645840, 36.968067, 44.865753>,  <33.582855, 37.727188, 44.928085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645840, 36.968067, 44.865753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249115, 37.016281, 44.882633>,  <33.011082, 37.045208, 44.892761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249115, 37.016281, 44.882633>,  <33.645840, 36.968067, 44.865753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249115, 37.016281, 44.882633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103183, -0.561660, -0.820909,
		-0.075245, -0.818542, 0.569498,
		-0.991812, 0.120532, 0.042198,
		32.951572, 37.052441, 44.895294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303574, 36.373707, 44.712128>,  <33.645840, 36.968067, 44.865753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303574, 36.373707, 44.712128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998211, 36.621151, 44.637802>,  <32.814991, 36.769619, 44.593208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998211, 36.621151, 44.637802>,  <33.303574, 36.373707, 44.712128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998211, 36.621151, 44.637802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094598, -0.391648, -0.915239,
		-0.638951, -0.681125, 0.357507,
		-0.763409, 0.618612, -0.185811,
		32.769188, 36.806736, 44.582058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744366, 35.901180, 44.605804>,  <33.303574, 36.373707, 44.712128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744366, 35.901180, 44.605804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644939, 36.252861, 44.443214>,  <32.585285, 36.463867, 44.345661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644939, 36.252861, 44.443214>,  <32.744366, 35.901180, 44.605804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644939, 36.252861, 44.443214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130386, -0.446198, -0.885385,
		-0.959799, -0.167077, 0.225545,
		-0.248566, 0.879200, -0.406476,
		32.570370, 36.516621, 44.321270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158962, 35.747612, 44.266590>,  <32.744366, 35.901180, 44.605804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158962, 35.747612, 44.266590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284412, 36.093262, 44.109154>,  <32.359684, 36.300652, 44.014690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284412, 36.093262, 44.109154>,  <32.158962, 35.747612, 44.266590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284412, 36.093262, 44.109154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241729, -0.328193, -0.913157,
		-0.918261, 0.381537, 0.105954,
		0.313630, 0.864129, -0.393595,
		32.378502, 36.352501, 43.991074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698345, 35.881847, 43.732887>,  <32.158962, 35.747612, 44.266590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698345, 35.881847, 43.732887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001205, 36.120991, 43.627602>,  <32.182922, 36.264477, 43.564430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001205, 36.120991, 43.627602>,  <31.698345, 35.881847, 43.732887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001205, 36.120991, 43.627602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093024, -0.300149, -0.949346,
		-0.646580, 0.743285, -0.171643,
		0.757153, 0.597861, -0.263213,
		32.228352, 36.300350, 43.548637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527744, 36.385708, 43.112690>,  <31.698345, 35.881847, 43.732887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527744, 36.385708, 43.112690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921598, 36.315899, 43.110172>,  <32.157909, 36.274014, 43.108662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921598, 36.315899, 43.110172>,  <31.527744, 36.385708, 43.112690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921598, 36.315899, 43.110172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044237, -0.214389, -0.975746,
		0.168939, 0.961031, -0.218815,
		0.984633, -0.174521, -0.006294,
		32.216988, 36.263542, 43.108284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717207, 36.692001, 42.472229>,  <31.527744, 36.385708, 43.112690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717207, 36.692001, 42.472229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044056, 36.473389, 42.545559>,  <32.240166, 36.342220, 42.589558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044056, 36.473389, 42.545559>,  <31.717207, 36.692001, 42.472229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044056, 36.473389, 42.545559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143892, -0.114583, -0.982938,
		0.558214, 0.829562, -0.014987,
		0.817125, -0.546533, 0.183329,
		32.289192, 36.309429, 42.600559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302505, 37.026165, 42.155285>,  <31.717207, 36.692001, 42.472229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302505, 37.026165, 42.155285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391308, 36.638294, 42.196163>,  <32.444592, 36.405571, 42.220692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391308, 36.638294, 42.196163>,  <32.302505, 37.026165, 42.155285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391308, 36.638294, 42.196163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232999, -0.049015, -0.971241,
		0.946796, 0.239437, 0.215052,
		0.222010, -0.969674, 0.102196,
		32.457912, 36.347393, 42.226822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831081, 36.893616, 41.667942>,  <32.302505, 37.026165, 42.155285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831081, 36.893616, 41.667942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714039, 36.527779, 41.779591>,  <32.643814, 36.308277, 41.846581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714039, 36.527779, 41.779591>,  <32.831081, 36.893616, 41.667942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714039, 36.527779, 41.779591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065801, -0.310461, -0.948306,
		0.953967, -0.259111, 0.151023,
		-0.292603, -0.914590, 0.279120,
		32.626259, 36.253403, 41.863327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214840, 36.418774, 41.270912>,  <32.831081, 36.893616, 41.667942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214840, 36.418774, 41.270912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915932, 36.180115, 41.387939>,  <32.736588, 36.036919, 41.458157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915932, 36.180115, 41.387939>,  <33.214840, 36.418774, 41.270912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915932, 36.180115, 41.387939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058563, -0.497695, -0.865373,
		0.661932, -0.629536, 0.406855,
		-0.747273, -0.596644, 0.292573,
		32.691750, 36.001122, 41.475712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460518, 35.678547, 41.235455>,  <33.214840, 36.418774, 41.270912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460518, 35.678547, 41.235455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061649, 35.707516, 41.227390>,  <32.822327, 35.724895, 41.222549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061649, 35.707516, 41.227390>,  <33.460518, 35.678547, 41.235455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061649, 35.707516, 41.227390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027608, -0.602255, -0.797826,
		-0.069923, -0.795012, 0.602550,
		-0.997170, 0.072422, -0.020163,
		32.762497, 35.729244, 41.221340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147038, 35.104496, 40.764339>,  <33.460518, 35.678547, 41.235455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147038, 35.104496, 40.764339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813465, 35.315411, 40.829487>,  <32.613319, 35.441959, 40.868576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813465, 35.315411, 40.829487>,  <33.147038, 35.104496, 40.764339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813465, 35.315411, 40.829487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404159, -0.382579, -0.830836,
		-0.375779, -0.758685, 0.532153,
		-0.833934, 0.527286, 0.162864,
		32.563286, 35.473595, 40.878349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655800, 34.596535, 40.711948>,  <33.147038, 35.104496, 40.764339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655800, 34.596535, 40.711948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474083, 34.950813, 40.673664>,  <32.365055, 35.163380, 40.650692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474083, 34.950813, 40.673664>,  <32.655800, 34.596535, 40.711948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474083, 34.950813, 40.673664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306910, -0.256463, -0.916533,
		-0.836318, -0.386997, 0.388337,
		-0.454289, 0.885698, -0.095711,
		32.337795, 35.216522, 40.644951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977150, 34.387508, 40.392086>,  <32.655800, 34.596535, 40.711948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977150, 34.387508, 40.392086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056046, 34.775867, 40.337738>,  <32.103382, 35.008881, 40.305130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056046, 34.775867, 40.337738>,  <31.977150, 34.387508, 40.392086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056046, 34.775867, 40.337738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178898, -0.100619, -0.978709,
		-0.963894, 0.217348, 0.153845,
		0.197240, 0.970894, -0.135870,
		32.115219, 35.067135, 40.296978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496088, 34.556538, 39.949627>,  <31.977150, 34.387508, 40.392086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496088, 34.556538, 39.949627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749966, 34.863857, 39.916454>,  <31.902292, 35.048248, 39.896553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749966, 34.863857, 39.916454>,  <31.496088, 34.556538, 39.949627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749966, 34.863857, 39.916454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171167, 0.035126, -0.984616,
		-0.753570, 0.639122, 0.153803,
		0.634692, 0.768303, -0.082927,
		31.940372, 35.094349, 39.891575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164299, 35.156216, 39.534737>,  <31.496088, 34.556538, 39.949627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164299, 35.156216, 39.534737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563251, 35.174522, 39.512329>,  <31.802622, 35.185505, 39.498886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563251, 35.174522, 39.512329>,  <31.164299, 35.156216, 39.534737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563251, 35.174522, 39.512329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046544, -0.186745, -0.981305,
		-0.055373, 0.981342, -0.184126,
		0.997380, 0.045768, -0.056016,
		31.862465, 35.188251, 39.495525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349909, 35.656914, 38.953045>,  <31.164299, 35.156216, 39.534737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349909, 35.656914, 38.953045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681213, 35.444351, 39.024143>,  <31.879995, 35.316814, 39.066803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681213, 35.444351, 39.024143>,  <31.349909, 35.656914, 38.953045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681213, 35.444351, 39.024143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058316, -0.233741, -0.970549,
		0.557299, 0.814233, -0.162609,
		0.828261, -0.531403, 0.177746,
		31.929691, 35.284931, 39.077469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793139, 35.891224, 38.510071>,  <31.349909, 35.656914, 38.953045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793139, 35.891224, 38.510071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920864, 35.525917, 38.611248>,  <31.997499, 35.306732, 38.671955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920864, 35.525917, 38.611248>,  <31.793139, 35.891224, 38.510071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920864, 35.525917, 38.611248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060793, -0.286108, -0.956267,
		0.945696, 0.289974, -0.146879,
		0.319315, -0.913267, 0.252943,
		32.016659, 35.251938, 38.687130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114189, 35.793587, 37.875992>,  <31.793139, 35.891224, 38.510071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114189, 35.793587, 37.875992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143593, 35.441761, 38.064018>,  <32.161236, 35.230667, 38.176834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143593, 35.441761, 38.064018>,  <32.114189, 35.793587, 37.875992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143593, 35.441761, 38.064018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263698, -0.437422, -0.859724,
		0.961800, 0.187156, 0.199784,
		0.073512, -0.879565, 0.470065,
		32.165646, 35.177891, 38.205036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726871, 35.538021, 37.642239>,  <32.114189, 35.793587, 37.875992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726871, 35.538021, 37.642239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511375, 35.224480, 37.765743>,  <32.382076, 35.036354, 37.839844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511375, 35.224480, 37.765743>,  <32.726871, 35.538021, 37.642239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511375, 35.224480, 37.765743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160320, -0.455183, -0.875846,
		0.827076, -0.422355, 0.370893,
		-0.538742, -0.783853, 0.308759,
		32.349754, 34.989323, 37.858372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074024, 34.784828, 37.604282>,  <32.726871, 35.538021, 37.642239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074024, 34.784828, 37.604282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679211, 34.720673, 37.601627>,  <32.442322, 34.682178, 37.600033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679211, 34.720673, 37.601627>,  <33.074024, 34.784828, 37.604282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679211, 34.720673, 37.601627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095066, -0.550704, -0.829269,
		0.129353, -0.819145, 0.558810,
		-0.987031, -0.160392, -0.006637,
		32.383102, 34.672554, 37.599636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469852, 35.101707, 38.326328>,  <33.074024, 34.784828, 37.604282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469852, 35.101707, 38.326328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864361, 35.040447, 38.351009>,  <34.101067, 35.003689, 38.365818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864361, 35.040447, 38.351009>,  <33.469852, 35.101707, 38.326328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864361, 35.040447, 38.351009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015043, 0.455507, 0.890105,
		-0.164430, -0.876959, 0.451559,
		0.986274, -0.153153, 0.061707,
		34.160244, 34.994503, 38.369522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637142, 34.935421, 39.031895>,  <33.469852, 35.101707, 38.326328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637142, 34.935421, 39.031895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973217, 35.072899, 38.864105>,  <34.174862, 35.155384, 38.763432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973217, 35.072899, 38.864105>,  <33.637142, 34.935421, 39.031895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973217, 35.072899, 38.864105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095137, 0.668096, 0.737968,
		0.533882, -0.659940, 0.528629,
		0.840189, 0.343695, -0.419470,
		34.225273, 35.176006, 38.738266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073448, 34.897320, 39.567944>,  <33.637142, 34.935421, 39.031895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073448, 34.897320, 39.567944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258980, 35.151062, 39.320572>,  <34.370300, 35.303307, 39.172150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258980, 35.151062, 39.320572>,  <34.073448, 34.897320, 39.567944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258980, 35.151062, 39.320572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200668, 0.604686, 0.770771,
		0.862898, -0.481606, 0.153178,
		0.463832, 0.634358, -0.618425,
		34.398129, 35.341370, 39.135044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692108, 35.157837, 39.948658>,  <34.073448, 34.897320, 39.567944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692108, 35.157837, 39.948658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632359, 35.417397, 39.650230>,  <34.596508, 35.573132, 39.471172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632359, 35.417397, 39.650230>,  <34.692108, 35.157837, 39.948658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632359, 35.417397, 39.650230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267537, 0.752915, 0.601284,
		0.951899, -0.109785, -0.286070,
		-0.149374, 0.648896, -0.746071,
		34.587547, 35.612064, 39.426411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283787, 35.521988, 39.933792>,  <34.692108, 35.157837, 39.948658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283787, 35.521988, 39.933792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009014, 35.753674, 39.758236>,  <34.844151, 35.892685, 39.652901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009014, 35.753674, 39.758236>,  <35.283787, 35.521988, 39.933792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009014, 35.753674, 39.758236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096332, 0.671185, 0.735004,
		0.720305, 0.462621, -0.516858,
		-0.686935, 0.579217, -0.438893,
		34.802933, 35.927441, 39.626568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512291, 36.163578, 39.900333>,  <35.283787, 35.521988, 39.933792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512291, 36.163578, 39.900333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123631, 36.240669, 39.845554>,  <34.890434, 36.286922, 39.812687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123631, 36.240669, 39.845554>,  <35.512291, 36.163578, 39.900333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123631, 36.240669, 39.845554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006652, 0.601285, 0.799007,
		0.236331, 0.775444, -0.585521,
		-0.971650, 0.192724, -0.136944,
		34.832134, 36.298485, 39.804470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484608, 36.853230, 39.941441>,  <35.512291, 36.163578, 39.900333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484608, 36.853230, 39.941441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110870, 36.725857, 40.005432>,  <34.886627, 36.649433, 40.043827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110870, 36.725857, 40.005432>,  <35.484608, 36.853230, 39.941441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110870, 36.725857, 40.005432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075621, 0.615876, 0.784206,
		-0.348246, 0.720623, -0.599523,
		-0.934348, -0.318434, 0.159982,
		34.830566, 36.630325, 40.053429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144753, 37.499184, 40.055454>,  <35.484608, 36.853230, 39.941441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144753, 37.499184, 40.055454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936825, 37.201092, 40.222507>,  <34.812069, 37.022236, 40.322739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936825, 37.201092, 40.222507>,  <35.144753, 37.499184, 40.055454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936825, 37.201092, 40.222507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075205, 0.447056, 0.891339,
		-0.850962, 0.494740, -0.176341,
		-0.519815, -0.745234, 0.417635,
		34.780880, 36.977520, 40.347797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562588, 37.849636, 40.521099>,  <35.144753, 37.499184, 40.055454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562588, 37.849636, 40.521099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634464, 37.480682, 40.657875>,  <34.677589, 37.259312, 40.739941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634464, 37.480682, 40.657875>,  <34.562588, 37.849636, 40.521099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634464, 37.480682, 40.657875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036198, 0.353563, 0.934710,
		-0.983057, -0.155581, 0.096920,
		0.179691, -0.922381, 0.341940,
		34.688370, 37.203968, 40.760456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277447, 37.867317, 41.231632>,  <34.562588, 37.849636, 40.521099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277447, 37.867317, 41.231632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517635, 37.547520, 41.225368>,  <34.661747, 37.355640, 41.221611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517635, 37.547520, 41.225368>,  <34.277447, 37.867317, 41.231632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517635, 37.547520, 41.225368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144451, 0.089194, 0.985484,
		-0.786490, -0.594017, 0.169046,
		0.600472, -0.799492, -0.015656,
		34.697777, 37.307671, 41.220673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164879, 37.541275, 41.738773>,  <34.277447, 37.867317, 41.231632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164879, 37.541275, 41.738773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528969, 37.392868, 41.665184>,  <34.747421, 37.303825, 41.621033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528969, 37.392868, 41.665184>,  <34.164879, 37.541275, 41.738773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528969, 37.392868, 41.665184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247809, 0.132049, 0.959768,
		-0.331798, -0.919189, 0.212136,
		0.910220, -0.371018, -0.183969,
		34.802036, 37.281563, 41.609993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249817, 36.880878, 42.092934>,  <34.164879, 37.541275, 41.738773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249817, 36.880878, 42.092934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617638, 37.015526, 42.011822>,  <34.838329, 37.096313, 41.963154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617638, 37.015526, 42.011822>,  <34.249817, 36.880878, 42.092934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617638, 37.015526, 42.011822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271170, -0.170041, 0.947393,
		0.284428, -0.926161, -0.247642,
		0.919548, 0.336618, -0.202783,
		34.893501, 37.116512, 41.950985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610283, 36.364246, 42.237259>,  <34.249817, 36.880878, 42.092934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610283, 36.364246, 42.237259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845757, 36.687016, 42.256592>,  <34.987041, 36.880676, 42.268192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845757, 36.687016, 42.256592>,  <34.610283, 36.364246, 42.237259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845757, 36.687016, 42.256592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154036, -0.170673, 0.973213,
		0.793555, -0.565465, -0.224766,
		0.588680, 0.806920, 0.048337,
		35.022362, 36.929092, 42.271091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033005, 36.256809, 42.758053>,  <34.610283, 36.364246, 42.237259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033005, 36.256809, 42.758053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130398, 36.640682, 42.701885>,  <35.188835, 36.871006, 42.668186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130398, 36.640682, 42.701885>,  <35.033005, 36.256809, 42.758053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130398, 36.640682, 42.701885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524379, -0.008459, 0.851443,
		0.815930, -0.280947, -0.505299,
		0.243485, 0.959686, -0.140421,
		35.203442, 36.928589, 42.659760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735031, 36.348717, 42.909676>,  <35.033005, 36.256809, 42.758053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735031, 36.348717, 42.909676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557133, 36.704361, 42.952927>,  <35.450394, 36.917747, 42.978878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557133, 36.704361, 42.952927>,  <35.735031, 36.348717, 42.909676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557133, 36.704361, 42.952927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479557, 0.134421, 0.867154,
		0.756459, 0.437514, -0.486160,
		-0.444742, 0.889108, 0.108129,
		35.423710, 36.971092, 42.985367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131428, 36.675034, 43.490074>,  <35.735031, 36.348717, 42.909676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131428, 36.675034, 43.490074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802036, 36.900639, 43.465488>,  <35.604401, 37.036003, 43.450737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802036, 36.900639, 43.465488>,  <36.131428, 36.675034, 43.490074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802036, 36.900639, 43.465488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042746, 0.169703, 0.984568,
		0.565741, 0.808139, -0.163855,
		-0.823474, 0.564015, -0.061464,
		35.554993, 37.069843, 43.447048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233822, 37.259617, 43.855919>,  <36.131428, 36.675034, 43.490074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233822, 37.259617, 43.855919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834103, 37.263680, 43.841537>,  <35.594269, 37.266117, 43.832909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834103, 37.263680, 43.841537>,  <36.233822, 37.259617, 43.855919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834103, 37.263680, 43.841537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030554, 0.331750, 0.942873,
		0.021508, 0.943313, -0.331208,
		-0.999302, 0.010160, -0.035957,
		35.534313, 37.266727, 43.830750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992096, 37.973682, 44.093079>,  <36.233822, 37.259617, 43.855919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992096, 37.973682, 44.093079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708977, 37.697830, 44.154308>,  <35.539104, 37.532318, 44.191048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708977, 37.697830, 44.154308>,  <35.992096, 37.973682, 44.093079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708977, 37.697830, 44.154308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177069, 0.382975, 0.906629,
		-0.683867, 0.614601, -0.393181,
		-0.707794, -0.689634, 0.153077,
		35.496639, 37.490940, 44.200230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504433, 38.365845, 44.456364>,  <35.992096, 37.973682, 44.093079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504433, 38.365845, 44.456364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367825, 37.994148, 44.512741>,  <35.285858, 37.771130, 44.546570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367825, 37.994148, 44.512741>,  <35.504433, 38.365845, 44.456364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367825, 37.994148, 44.512741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325003, 0.257471, 0.909990,
		-0.881894, 0.264973, -0.389939,
		-0.341521, -0.929246, 0.140946,
		35.265369, 37.715374, 44.555023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831310, 38.424553, 44.674175>,  <35.504433, 38.365845, 44.456364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831310, 38.424553, 44.674175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937897, 38.056744, 44.789745>,  <35.001846, 37.836060, 44.859085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937897, 38.056744, 44.789745>,  <34.831310, 38.424553, 44.674175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937897, 38.056744, 44.789745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434593, 0.152938, 0.887547,
		-0.860306, -0.362062, -0.358866,
		0.266463, -0.919522, 0.288923,
		35.017838, 37.780888, 44.876423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265076, 38.126007, 45.066467>,  <34.831310, 38.424553, 44.674175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265076, 38.126007, 45.066467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609531, 37.948448, 45.165573>,  <34.816204, 37.841911, 45.225037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609531, 37.948448, 45.165573>,  <34.265076, 38.126007, 45.066467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609531, 37.948448, 45.165573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125363, 0.286898, 0.949723,
		-0.492667, -0.848906, 0.191411,
		0.861141, -0.443901, 0.247767,
		34.867874, 37.815277, 45.239902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115887, 37.562473, 45.685448>,  <34.265076, 38.126007, 45.066467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115887, 37.562473, 45.685448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504311, 37.658001, 45.684650>,  <34.737366, 37.715317, 45.684174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504311, 37.658001, 45.684650>,  <34.115887, 37.562473, 45.685448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504311, 37.658001, 45.684650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014843, 0.068667, 0.997529,
		0.238364, -0.968634, 0.070224,
		0.971063, 0.238817, -0.001991,
		34.795628, 37.729645, 45.684052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400692, 37.240334, 46.228889>,  <34.115887, 37.562473, 45.685448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400692, 37.240334, 46.228889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677143, 37.523357, 46.169960>,  <34.843014, 37.693172, 46.134602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677143, 37.523357, 46.169960>,  <34.400692, 37.240334, 46.228889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677143, 37.523357, 46.169960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035760, 0.170118, 0.984774,
		0.721849, -0.685872, 0.092271,
		0.691126, 0.707559, -0.147326,
		34.884480, 37.735626, 46.125763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880810, 37.110340, 46.789642>,  <34.400692, 37.240334, 46.228889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880810, 37.110340, 46.789642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927818, 37.488678, 46.668602>,  <34.956024, 37.715679, 46.595978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927818, 37.488678, 46.668602>,  <34.880810, 37.110340, 46.789642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927818, 37.488678, 46.668602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023743, 0.307305, 0.951315,
		0.992786, -0.104617, 0.058573,
		0.117524, 0.945843, -0.302604,
		34.963074, 37.772430, 46.577820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407883, 37.332413, 47.321869>,  <34.880810, 37.110340, 46.789642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407883, 37.332413, 47.321869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249695, 37.666431, 47.168877>,  <35.154781, 37.866844, 47.077080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249695, 37.666431, 47.168877>,  <35.407883, 37.332413, 47.321869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249695, 37.666431, 47.168877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017851, 0.409363, 0.912197,
		0.918305, 0.367575, -0.146985,
		-0.395471, 0.835051, -0.382482,
		35.131054, 37.916946, 47.054131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754562, 37.962341, 47.512676>,  <35.407883, 37.332413, 47.321869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754562, 37.962341, 47.512676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407898, 38.128056, 47.401489>,  <35.199898, 38.227482, 47.334778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407898, 38.128056, 47.401489>,  <35.754562, 37.962341, 47.512676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407898, 38.128056, 47.401489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021445, 0.525715, 0.850390,
		0.498432, 0.742964, -0.446734,
		-0.866664, 0.414281, -0.277966,
		35.147900, 38.252338, 47.318100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759499, 38.703506, 47.665798>,  <35.754562, 37.962341, 47.512676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759499, 38.703506, 47.665798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370502, 38.611771, 47.649521>,  <35.137104, 38.556728, 47.639755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370502, 38.611771, 47.649521>,  <35.759499, 38.703506, 47.665798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370502, 38.611771, 47.649521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166627, 0.562931, 0.809533,
		-0.162754, 0.794047, -0.585662,
		-0.972495, -0.229342, -0.040690,
		35.078754, 38.542969, 47.637314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395248, 39.357773, 47.789825>,  <35.759499, 38.703506, 47.665798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395248, 39.357773, 47.789825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124470, 39.069630, 47.850262>,  <34.962002, 38.896744, 47.886524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124470, 39.069630, 47.850262>,  <35.395248, 39.357773, 47.789825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124470, 39.069630, 47.850262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256654, 0.423413, 0.868822,
		-0.689836, 0.549367, -0.471510,
		-0.676945, -0.720359, 0.151088,
		34.921387, 38.853523, 47.895588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759518, 39.704113, 47.837234>,  <35.395248, 39.357773, 47.789825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759518, 39.704113, 47.837234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723137, 39.346844, 48.013401>,  <34.701309, 39.132481, 48.119102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723137, 39.346844, 48.013401>,  <34.759518, 39.704113, 47.837234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723137, 39.346844, 48.013401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506408, 0.422285, 0.751815,
		-0.857484, -0.154653, -0.490718,
		-0.090952, -0.893173, 0.440420,
		34.695850, 39.078892, 48.145527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018215, 39.524632, 48.021370>,  <34.759518, 39.704113, 47.837234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018215, 39.524632, 48.021370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263489, 39.327511, 48.268318>,  <34.410652, 39.209240, 48.416489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263489, 39.327511, 48.268318>,  <34.018215, 39.524632, 48.021370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263489, 39.327511, 48.268318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474456, 0.395111, 0.786625,
		-0.631580, -0.775265, 0.008465,
		0.613187, -0.492800, 0.617373,
		34.447445, 39.179672, 48.453529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598366, 39.331608, 48.638432>,  <34.018215, 39.524632, 48.021370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598366, 39.331608, 48.638432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968788, 39.252018, 48.766697>,  <34.191040, 39.204266, 48.843658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968788, 39.252018, 48.766697>,  <33.598366, 39.331608, 48.638432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968788, 39.252018, 48.766697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294272, 0.151249, 0.943678,
		-0.236268, -0.968263, 0.081513,
		0.926057, -0.198974, 0.320668,
		34.246605, 39.192326, 48.862896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450943, 39.096920, 49.226162>,  <33.598366, 39.331608, 48.638432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450943, 39.096920, 49.226162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829884, 39.220970, 49.258030>,  <34.057247, 39.295399, 49.277153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829884, 39.220970, 49.258030>,  <33.450943, 39.096920, 49.226162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829884, 39.220970, 49.258030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175610, 0.295166, 0.939169,
		0.267732, -0.903718, 0.334086,
		0.947355, 0.310115, 0.079676,
		34.114090, 39.314007, 49.281933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558136, 39.112663, 49.907612>,  <33.450943, 39.096920, 49.226162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558136, 39.112663, 49.907612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893150, 39.293968, 49.785572>,  <34.094158, 39.402752, 49.712349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893150, 39.293968, 49.785572>,  <33.558136, 39.112663, 49.907612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893150, 39.293968, 49.785572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047438, 0.495976, 0.867039,
		0.544319, -0.740651, 0.393896,
		0.837536, 0.453260, -0.305104,
		34.144413, 39.429947, 49.694042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082504, 39.091476, 50.437527>,  <33.558136, 39.112663, 49.907612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082504, 39.091476, 50.437527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152077, 39.405415, 50.199615>,  <34.193821, 39.593777, 50.056870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152077, 39.405415, 50.199615>,  <34.082504, 39.091476, 50.437527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152077, 39.405415, 50.199615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000172, 0.604007, 0.796979,
		0.984758, -0.138517, 0.105190,
		0.173931, 0.784850, -0.594777,
		34.204254, 39.640869, 50.021183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459015, 39.482311, 50.824348>,  <34.082504, 39.091476, 50.437527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459015, 39.482311, 50.824348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321301, 39.740074, 50.551231>,  <34.238670, 39.894733, 50.387360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321301, 39.740074, 50.551231>,  <34.459015, 39.482311, 50.824348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321301, 39.740074, 50.551231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101857, 0.697326, 0.709480,
		0.933324, 0.313810, -0.174442,
		-0.344285, 0.644407, -0.682794,
		34.218014, 39.933395, 50.346394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676838, 40.072155, 51.156837>,  <34.459015, 39.482311, 50.824348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676838, 40.072155, 51.156837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467567, 40.207340, 50.843895>,  <34.342007, 40.288452, 50.656132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467567, 40.207340, 50.843895>,  <34.676838, 40.072155, 51.156837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467567, 40.207340, 50.843895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394696, 0.717533, 0.573900,
		0.755318, 0.609040, -0.242002,
		-0.523172, 0.337959, -0.782352,
		34.310616, 40.308727, 50.609188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777397, 40.869720, 51.057564>,  <34.676838, 40.072155, 51.156837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777397, 40.869720, 51.057564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421631, 40.769951, 50.904339>,  <34.208172, 40.710091, 50.812405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421631, 40.769951, 50.904339>,  <34.777397, 40.869720, 51.057564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421631, 40.769951, 50.904339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436420, 0.712589, 0.549322,
		0.135951, 0.655749, -0.742638,
		-0.889413, -0.249421, -0.383059,
		34.154808, 40.695126, 50.789421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425205, 41.512707, 50.838379>,  <34.777397, 40.869720, 51.057564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425205, 41.512707, 50.838379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144779, 41.236618, 50.910038>,  <33.976524, 41.070965, 50.953033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144779, 41.236618, 50.910038>,  <34.425205, 41.512707, 50.838379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144779, 41.236618, 50.910038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516911, 0.664957, 0.539106,
		-0.491230, 0.285346, -0.822965,
		-0.701068, -0.690224, 0.179149,
		33.934460, 41.029552, 50.963783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081898, 42.012321, 50.420212>,  <34.425205, 41.512707, 50.838379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081898, 42.012321, 50.420212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357048, 42.302589, 50.426247>,  <34.522141, 42.476749, 50.429867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357048, 42.302589, 50.426247>,  <34.081898, 42.012321, 50.420212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357048, 42.302589, 50.426247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362934, -0.325881, -0.872972,
		-0.628571, 0.605976, -0.487537,
		0.687879, 0.725668, 0.015090,
		34.563412, 42.520290, 50.430775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149891, 42.259098, 49.682098>,  <34.081898, 42.012321, 50.420212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149891, 42.259098, 49.682098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504356, 42.325294, 49.855221>,  <34.717037, 42.365013, 49.959095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504356, 42.325294, 49.855221>,  <34.149891, 42.259098, 49.682098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504356, 42.325294, 49.855221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462902, -0.274265, -0.842912,
		-0.020794, 0.947307, -0.319652,
		0.886166, 0.165495, 0.432807,
		34.770206, 42.374943, 49.985062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537395, 42.516209, 49.124916>,  <34.149891, 42.259098, 49.682098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537395, 42.516209, 49.124916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796902, 42.398560, 49.405659>,  <34.952606, 42.327969, 49.574104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796902, 42.398560, 49.405659>,  <34.537395, 42.516209, 49.124916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796902, 42.398560, 49.405659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646862, -0.272663, -0.712197,
		0.400845, 0.916048, 0.013365,
		0.648763, -0.294126, 0.701853,
		34.991531, 42.310322, 49.616215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987465, 42.973389, 49.020992>,  <34.537395, 42.516209, 49.124916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987465, 42.973389, 49.020992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163589, 42.678410, 49.225853>,  <35.269264, 42.501423, 49.348770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163589, 42.678410, 49.225853>,  <34.987465, 42.973389, 49.020992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163589, 42.678410, 49.225853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506317, -0.267130, -0.819930,
		0.741467, 0.620332, 0.255763,
		0.440307, -0.737448, 0.512153,
		35.295681, 42.457176, 49.379498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624859, 43.061817, 48.807640>,  <34.987465, 42.973389, 49.020992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624859, 43.061817, 48.807640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583420, 42.690784, 48.951225>,  <35.558556, 42.468163, 49.037376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583420, 42.690784, 48.951225>,  <35.624859, 43.061817, 48.807640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583420, 42.690784, 48.951225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311845, -0.373000, -0.873855,
		0.944468, 0.021411, 0.327905,
		-0.103599, -0.927584, 0.358964,
		35.552341, 42.412510, 49.058914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179153, 42.712864, 48.613297>,  <35.624859, 43.061817, 48.807640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179153, 42.712864, 48.613297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907562, 42.433537, 48.703926>,  <35.744606, 42.265938, 48.758305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907562, 42.433537, 48.703926>,  <36.179153, 42.712864, 48.613297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907562, 42.433537, 48.703926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089690, -0.385210, -0.918460,
		0.728660, -0.603292, 0.324181,
		-0.678978, -0.698321, 0.226578,
		35.703869, 42.224041, 48.771900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455841, 42.114910, 48.296753>,  <36.179153, 42.712864, 48.613297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455841, 42.114910, 48.296753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071770, 42.031666, 48.371319>,  <35.841328, 41.981720, 48.416058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071770, 42.031666, 48.371319>,  <36.455841, 42.114910, 48.296753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071770, 42.031666, 48.371319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106671, -0.343593, -0.933041,
		0.258230, -0.915768, 0.307710,
		-0.960176, -0.208115, 0.186412,
		35.783718, 41.969231, 48.427242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397381, 41.480247, 48.138527>,  <36.455841, 42.114910, 48.296753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397381, 41.480247, 48.138527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030483, 41.637135, 48.110741>,  <35.810345, 41.731266, 48.094070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030483, 41.637135, 48.110741>,  <36.397381, 41.480247, 48.138527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030483, 41.637135, 48.110741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054781, -0.296944, -0.953322,
		-0.394542, -0.870623, 0.293856,
		-0.917243, 0.392224, -0.069463,
		35.755310, 41.754803, 48.089901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998550, 40.940678, 47.915985>,  <36.397381, 41.480247, 48.138527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998550, 40.940678, 47.915985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832611, 41.280128, 47.784695>,  <35.733047, 41.483799, 47.705921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832611, 41.280128, 47.784695>,  <35.998550, 40.940678, 47.915985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832611, 41.280128, 47.784695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022645, -0.370244, -0.928658,
		-0.909609, -0.377818, 0.172812,
		-0.414847, 0.848629, -0.328222,
		35.708157, 41.534718, 47.686230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369373, 40.696747, 47.598389>,  <35.998550, 40.940678, 47.915985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369373, 40.696747, 47.598389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441952, 41.069122, 47.471626>,  <35.485500, 41.292549, 47.395569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441952, 41.069122, 47.471626>,  <35.369373, 40.696747, 47.598389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441952, 41.069122, 47.471626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091791, -0.304820, -0.947976,
		-0.979108, 0.201095, 0.030144,
		0.181445, 0.930938, -0.316911,
		35.496384, 41.348404, 47.376553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813580, 40.818947, 47.102955>,  <35.369373, 40.696747, 47.598389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813580, 40.818947, 47.102955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088680, 41.098560, 47.024612>,  <35.253738, 41.266327, 46.977608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088680, 41.098560, 47.024612>,  <34.813580, 40.818947, 47.102955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088680, 41.098560, 47.024612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016498, -0.284771, -0.958454,
		-0.725760, 0.655945, -0.207384,
		0.687750, 0.699029, -0.195853,
		35.295006, 41.308270, 46.965855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715801, 41.020477, 46.404499>,  <34.813580, 40.818947, 47.102955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715801, 41.020477, 46.404499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088089, 41.156342, 46.458755>,  <35.311462, 41.237862, 46.491310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088089, 41.156342, 46.458755>,  <34.715801, 41.020477, 46.404499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088089, 41.156342, 46.458755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246193, -0.307548, -0.919132,
		-0.270476, 0.888845, -0.369862,
		0.930716, 0.339660, 0.135643,
		35.367302, 41.258240, 46.499447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804642, 41.467583, 45.854313>,  <34.715801, 41.020477, 46.404499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804642, 41.467583, 45.854313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170254, 41.397717, 46.000759>,  <35.389622, 41.355797, 46.088627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170254, 41.397717, 46.000759>,  <34.804642, 41.467583, 45.854313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170254, 41.397717, 46.000759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373698, 0.011483, -0.927479,
		0.157792, 0.984561, 0.075767,
		0.914030, -0.174663, 0.366117,
		35.444462, 41.345318, 46.110596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273273, 41.840759, 45.402138>,  <34.804642, 41.467583, 45.854313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273273, 41.840759, 45.402138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515770, 41.565399, 45.561424>,  <35.661270, 41.400185, 45.656998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515770, 41.565399, 45.561424>,  <35.273273, 41.840759, 45.402138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515770, 41.565399, 45.561424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349990, -0.218690, -0.910869,
		0.714127, 0.691580, 0.108353,
		0.606243, -0.688398, 0.398218,
		35.697643, 41.358879, 45.680889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870735, 41.930557, 45.027252>,  <35.273273, 41.840759, 45.402138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870735, 41.930557, 45.027252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912697, 41.574184, 45.203995>,  <35.937874, 41.360363, 45.310040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912697, 41.574184, 45.203995>,  <35.870735, 41.930557, 45.027252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912697, 41.574184, 45.203995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410741, -0.365830, -0.835141,
		0.905697, 0.269098, 0.327566,
		0.104901, -0.890929, 0.441861,
		35.944168, 41.306904, 45.336552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585350, 41.696529, 44.922836>,  <35.870735, 41.930557, 45.027252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585350, 41.696529, 44.922836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404896, 41.351994, 45.016289>,  <36.296623, 41.145271, 45.072361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404896, 41.351994, 45.016289>,  <36.585350, 41.696529, 44.922836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404896, 41.351994, 45.016289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507285, -0.462866, -0.726923,
		0.734263, -0.209420, 0.645756,
		-0.451131, -0.861335, 0.233630,
		36.269558, 41.093594, 45.086376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060551, 41.150238, 44.873287>,  <36.585350, 41.696529, 44.922836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060551, 41.150238, 44.873287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709354, 40.970985, 44.805981>,  <36.498638, 40.863434, 44.765598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709354, 40.970985, 44.805981>,  <37.060551, 41.150238, 44.873287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709354, 40.970985, 44.805981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434361, -0.598121, -0.673485,
		0.201170, -0.664399, 0.719795,
		-0.877987, -0.448136, -0.168265,
		36.445957, 40.836544, 44.755501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125938, 40.432755, 44.972198>,  <37.060551, 41.150238, 44.873287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125938, 40.432755, 44.972198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803883, 40.483688, 44.740498>,  <36.610649, 40.514248, 44.601479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803883, 40.483688, 44.740498>,  <37.125938, 40.432755, 44.972198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803883, 40.483688, 44.740498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410488, -0.585293, -0.699236,
		-0.428068, -0.800760, 0.418976,
		-0.805144, 0.127337, -0.579248,
		36.562340, 40.521889, 44.566723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024319, 39.784222, 44.747704>,  <37.125938, 40.432755, 44.972198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024319, 39.784222, 44.747704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817551, 40.024200, 44.503456>,  <36.693489, 40.168186, 44.356907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817551, 40.024200, 44.503456>,  <37.024319, 39.784222, 44.747704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817551, 40.024200, 44.503456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138011, -0.645576, -0.751122,
		-0.844834, -0.472544, 0.250913,
		-0.516922, 0.599945, -0.610621,
		36.662476, 40.204185, 44.320271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541794, 39.352314, 44.331585>,  <37.024319, 39.784222, 44.747704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541794, 39.352314, 44.331585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554859, 39.681953, 44.105381>,  <36.562698, 39.879738, 43.969658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554859, 39.681953, 44.105381>,  <36.541794, 39.352314, 44.331585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554859, 39.681953, 44.105381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205209, -0.559287, -0.803173,
		-0.978173, -0.089816, -0.187378,
		0.032660, 0.824094, -0.565511,
		36.564655, 39.929180, 43.935726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141403, 39.182949, 43.771778>,  <36.541794, 39.352314, 44.331585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141403, 39.182949, 43.771778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363037, 39.488476, 43.639374>,  <36.496017, 39.671791, 43.559933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363037, 39.488476, 43.639374>,  <36.141403, 39.182949, 43.771778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363037, 39.488476, 43.639374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246497, -0.530336, -0.811161,
		-0.795129, 0.367859, -0.482131,
		0.554085, 0.763821, -0.331009,
		36.529263, 39.717621, 43.540070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918816, 39.318043, 43.111111>,  <36.141403, 39.182949, 43.771778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918816, 39.318043, 43.111111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294094, 39.454742, 43.132969>,  <36.519260, 39.536762, 43.146084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294094, 39.454742, 43.132969>,  <35.918816, 39.318043, 43.111111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294094, 39.454742, 43.132969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191266, -0.380388, -0.904833,
		-0.288440, 0.859367, -0.422246,
		0.938200, 0.341751, 0.054648,
		36.575554, 39.557266, 43.149364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038925, 39.627533, 42.403824>,  <35.918816, 39.318043, 43.111111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038925, 39.627533, 42.403824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401852, 39.570065, 42.561878>,  <36.619606, 39.535583, 42.656712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401852, 39.570065, 42.561878>,  <36.038925, 39.627533, 42.403824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401852, 39.570065, 42.561878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334656, -0.322142, -0.885567,
		0.254522, 0.935726, -0.244205,
		0.907317, -0.143672, 0.395139,
		36.674046, 39.526962, 42.680420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472527, 39.914345, 41.961510>,  <36.038925, 39.627533, 42.403824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472527, 39.914345, 41.961510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696350, 39.655632, 42.168804>,  <36.830643, 39.500404, 42.293179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696350, 39.655632, 42.168804>,  <36.472527, 39.914345, 41.961510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696350, 39.655632, 42.168804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301473, -0.423612, -0.854206,
		0.772018, 0.634209, -0.042045,
		0.559556, -0.646786, 0.518233,
		36.864216, 39.461597, 42.324272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036209, 39.780628, 41.488514>,  <36.472527, 39.914345, 41.961510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036209, 39.780628, 41.488514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046822, 39.491806, 41.765045>,  <37.053188, 39.318512, 41.930965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046822, 39.491806, 41.765045>,  <37.036209, 39.780628, 41.488514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046822, 39.491806, 41.765045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418302, -0.620098, -0.663703,
		0.907920, 0.306792, 0.285586,
		0.026527, -0.722051, 0.691331,
		37.054779, 39.275192, 41.972446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680164, 39.568745, 41.514736>,  <37.036209, 39.780628, 41.488514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680164, 39.568745, 41.514736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480137, 39.257793, 41.667374>,  <37.360123, 39.071224, 41.758957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480137, 39.257793, 41.667374>,  <37.680164, 39.568745, 41.514736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480137, 39.257793, 41.667374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310248, -0.572223, -0.759149,
		0.808505, -0.261236, 0.527329,
		-0.500067, -0.777378, 0.381597,
		37.330116, 39.024578, 41.781853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093231, 39.050289, 41.605820>,  <37.680164, 39.568745, 41.514736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093231, 39.050289, 41.605820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731670, 38.882973, 41.570049>,  <37.514732, 38.782585, 41.548588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731670, 38.882973, 41.570049>,  <38.093231, 39.050289, 41.605820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731670, 38.882973, 41.570049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317269, -0.515418, -0.796043,
		0.286882, -0.747917, 0.598597,
		-0.903902, -0.418287, -0.089427,
		37.460499, 38.757488, 41.543221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189117, 38.343124, 41.453480>,  <38.093231, 39.050289, 41.605820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189117, 38.343124, 41.453480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813717, 38.405422, 41.330223>,  <37.588474, 38.442802, 41.256268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813717, 38.405422, 41.330223>,  <38.189117, 38.343124, 41.453480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813717, 38.405422, 41.330223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141811, -0.639842, -0.755309,
		-0.314795, -0.752560, 0.578410,
		-0.938506, 0.155743, -0.308140,
		37.532166, 38.452145, 41.237782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881977, 37.726822, 41.521576>,  <38.189117, 38.343124, 41.453480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881977, 37.726822, 41.521576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693523, 37.944004, 41.243515>,  <37.580452, 38.074314, 41.076679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693523, 37.944004, 41.243515>,  <37.881977, 37.726822, 41.521576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693523, 37.944004, 41.243515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153146, -0.725775, -0.670669,
		-0.868667, -0.422432, 0.258783,
		-0.471130, 0.542957, -0.695150,
		37.552185, 38.106892, 41.034969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669960, 37.209332, 41.227100>,  <37.881977, 37.726822, 41.521576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669960, 37.209332, 41.227100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586411, 37.506859, 40.973137>,  <37.536282, 37.685375, 40.820759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586411, 37.506859, 40.973137>,  <37.669960, 37.209332, 41.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586411, 37.506859, 40.973137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173414, -0.610768, -0.772586,
		-0.962444, -0.271477, -0.001414,
		-0.208876, 0.743816, -0.634908,
		37.523746, 37.730003, 40.782665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150387, 36.999817, 40.759659>,  <37.669960, 37.209332, 41.227100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150387, 36.999817, 40.759659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312355, 37.310287, 40.566334>,  <37.409534, 37.496571, 40.450340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312355, 37.310287, 40.566334>,  <37.150387, 36.999817, 40.759659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312355, 37.310287, 40.566334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217205, -0.595102, -0.773741,
		-0.888179, 0.208326, -0.409559,
		0.404920, 0.776179, -0.483308,
		37.433830, 37.543140, 40.421341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002476, 36.927399, 40.032021>,  <37.150387, 36.999817, 40.759659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002476, 36.927399, 40.032021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304020, 37.190205, 40.030083>,  <37.484947, 37.347889, 40.028919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304020, 37.190205, 40.030083>,  <37.002476, 36.927399, 40.032021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304020, 37.190205, 40.030083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334801, -0.390468, -0.857580,
		-0.565337, 0.644872, -0.514328,
		0.753858, 0.657019, -0.004842,
		37.530178, 37.387310, 40.028629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005157, 37.263477, 39.414997>,  <37.002476, 36.927399, 40.032021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005157, 37.263477, 39.414997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378204, 37.302704, 39.553905>,  <37.602032, 37.326241, 39.637253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378204, 37.302704, 39.553905>,  <37.005157, 37.263477, 39.414997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378204, 37.302704, 39.553905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360207, -0.195313, -0.912197,
		-0.021627, 0.975826, -0.217476,
		0.932622, 0.098064, 0.347275,
		37.657990, 37.332123, 39.658089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373322, 37.560848, 38.773182>,  <37.005157, 37.263477, 39.414997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373322, 37.560848, 38.773182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674831, 37.440994, 39.007122>,  <37.855736, 37.369083, 39.147488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674831, 37.440994, 39.007122>,  <37.373322, 37.560848, 38.773182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674831, 37.440994, 39.007122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478842, -0.359078, -0.801107,
		0.450045, 0.883902, -0.127186,
		0.753770, -0.299632, 0.584851,
		37.900963, 37.351105, 39.182579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957924, 37.912689, 38.611156>,  <37.373322, 37.560848, 38.773182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957924, 37.912689, 38.611156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114315, 37.607449, 38.816998>,  <38.208149, 37.424305, 38.940502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114315, 37.607449, 38.816998>,  <37.957924, 37.912689, 38.611156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114315, 37.607449, 38.816998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661894, -0.155389, -0.733315,
		0.639557, 0.627320, 0.444340,
		0.390977, -0.763102, 0.514599,
		38.231609, 37.378517, 38.971378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700989, 37.959763, 38.400150>,  <37.957924, 37.912689, 38.611156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700989, 37.959763, 38.400150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624802, 37.585400, 38.518677>,  <38.579090, 37.360783, 38.589794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624802, 37.585400, 38.518677>,  <38.700989, 37.959763, 38.400150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624802, 37.585400, 38.518677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663988, -0.345148, -0.663319,
		0.723077, 0.070411, 0.687170,
		-0.190471, -0.935903, 0.296320,
		38.567661, 37.304630, 38.607574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323837, 37.707661, 38.671040>,  <38.700989, 37.959763, 38.400150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323837, 37.707661, 38.671040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098354, 37.391354, 38.575611>,  <38.963062, 37.201569, 38.518353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098354, 37.391354, 38.575611>,  <39.323837, 37.707661, 38.671040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098354, 37.391354, 38.575611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758157, -0.380756, -0.529360,
		0.327762, -0.479283, 0.814162,
		-0.563710, -0.790767, -0.238574,
		38.929241, 37.154125, 38.504040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813129, 37.088188, 38.773849>,  <39.323837, 37.707661, 38.671040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813129, 37.088188, 38.773849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503242, 37.004860, 38.535046>,  <39.317310, 36.954865, 38.391762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503242, 37.004860, 38.535046>,  <39.813129, 37.088188, 38.773849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503242, 37.004860, 38.535046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625547, -0.390239, -0.675577,
		-0.092243, -0.896837, 0.432636,
		-0.774714, -0.208317, -0.597011,
		39.270828, 36.942364, 38.355942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928192, 36.431141, 38.567951>,  <39.813129, 37.088188, 38.773849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928192, 36.431141, 38.567951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690582, 36.592262, 38.289417>,  <39.548016, 36.688934, 38.122299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690582, 36.592262, 38.289417>,  <39.928192, 36.431141, 38.567951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690582, 36.592262, 38.289417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574121, -0.394046, -0.717713,
		-0.563486, -0.826121, 0.002815,
		-0.594027, 0.402805, -0.696333,
		39.512375, 36.713104, 38.080517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709930, 35.865105, 38.065063>,  <39.928192, 36.431141, 38.567951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709930, 35.865105, 38.065063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669003, 36.216675, 37.878719>,  <39.644444, 36.427616, 37.766914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669003, 36.216675, 37.878719>,  <39.709930, 35.865105, 38.065063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669003, 36.216675, 37.878719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436386, -0.381186, -0.815024,
		-0.893923, -0.286690, -0.344545,
		-0.102323, 0.878923, -0.465858,
		39.638306, 36.480350, 37.738960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392765, 35.774151, 37.298061>,  <39.709930, 35.865105, 38.065063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392765, 35.774151, 37.298061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636074, 36.082661, 37.373043>,  <39.782059, 36.267765, 37.418034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636074, 36.082661, 37.373043>,  <39.392765, 35.774151, 37.298061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636074, 36.082661, 37.373043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573123, -0.263403, -0.775982,
		-0.549117, 0.579447, -0.602256,
		0.608276, 0.771272, 0.187456,
		39.818558, 36.314041, 37.429279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485134, 36.494373, 36.778187>,  <39.392765, 35.774151, 37.298061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485134, 36.494373, 36.778187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806652, 36.377304, 36.985359>,  <39.999561, 36.307060, 37.109665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806652, 36.377304, 36.985359>,  <39.485134, 36.494373, 36.778187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806652, 36.377304, 36.985359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490738, -0.165939, -0.855360,
		0.336288, 0.941704, 0.010246,
		0.803795, -0.292675, 0.517933,
		40.047791, 36.289501, 37.140739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095703, 36.926037, 36.625305>,  <39.485134, 36.494373, 36.778187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095703, 36.926037, 36.625305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206390, 36.558414, 36.737560>,  <40.272800, 36.337841, 36.804913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206390, 36.558414, 36.737560>,  <40.095703, 36.926037, 36.625305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206390, 36.558414, 36.737560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466766, -0.126730, -0.875254,
		0.839976, 0.373189, 0.393918,
		0.276714, -0.919059, 0.280642,
		40.289406, 36.282696, 36.821754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754765, 36.848907, 36.334957>,  <40.095703, 36.926037, 36.625305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754765, 36.848907, 36.334957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563610, 36.503227, 36.397919>,  <40.448917, 36.295818, 36.435696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563610, 36.503227, 36.397919>,  <40.754765, 36.848907, 36.334957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563610, 36.503227, 36.397919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322840, -0.339446, -0.883488,
		0.816943, -0.371391, 0.441216,
		-0.477889, -0.864202, 0.157408,
		40.420242, 36.243965, 36.445141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204632, 36.793316, 36.862686>,  <40.754765, 36.848907, 36.334957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204632, 36.793316, 36.862686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386879, 36.477135, 37.026443>,  <41.496227, 36.287426, 37.124699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386879, 36.477135, 37.026443>,  <41.204632, 36.793316, 36.862686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386879, 36.477135, 37.026443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888864, -0.379045, 0.257382,
		-0.048270, -0.481162, -0.875302,
		0.455621, -0.790448, 0.409391,
		41.523563, 36.240002, 37.149261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542213, 37.060612, 36.276768>,  <41.204632, 36.793316, 36.862686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542213, 37.060612, 36.276768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809338, 37.355175, 36.233448>,  <41.969612, 37.531914, 36.207458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809338, 37.355175, 36.233448>,  <41.542213, 37.060612, 36.276768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809338, 37.355175, 36.233448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115605, -0.246344, -0.962263,
		-0.735299, 0.630090, -0.249644,
		0.667810, 0.736411, -0.108295,
		42.009682, 37.576099, 36.200958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437145, 37.371792, 35.607079>,  <41.542213, 37.060612, 36.276768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437145, 37.371792, 35.607079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809399, 37.483700, 35.701435>,  <42.032753, 37.550842, 35.758049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809399, 37.483700, 35.701435>,  <41.437145, 37.371792, 35.607079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809399, 37.483700, 35.701435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294134, -0.188369, -0.937018,
		-0.217711, 0.941408, -0.257592,
		0.930638, 0.279765, 0.235891,
		42.088589, 37.567631, 35.772202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569435, 37.921650, 35.166576>,  <41.437145, 37.371792, 35.607079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569435, 37.921650, 35.166576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888237, 37.716961, 35.294899>,  <42.079517, 37.594147, 35.371891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888237, 37.716961, 35.294899>,  <41.569435, 37.921650, 35.166576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888237, 37.716961, 35.294899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244681, -0.212053, -0.946131,
		0.552189, 0.832568, -0.043798,
		0.797006, -0.511726, 0.320807,
		42.127338, 37.563442, 35.391140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049160, 38.106537, 34.752575>,  <41.569435, 37.921650, 35.166576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049160, 38.106537, 34.752575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205208, 37.775780, 34.914585>,  <42.298836, 37.577324, 35.011791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205208, 37.775780, 34.914585>,  <42.049160, 38.106537, 34.752575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205208, 37.775780, 34.914585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552390, -0.141748, -0.821446,
		0.736662, 0.544199, 0.401469,
		0.390122, -0.826895, 0.405030,
		42.322243, 37.527710, 35.036095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750725, 38.116669, 34.661800>,  <42.049160, 38.106537, 34.752575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750725, 38.116669, 34.661800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656876, 37.730015, 34.702938>,  <42.600567, 37.498024, 34.727619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656876, 37.730015, 34.702938>,  <42.750725, 38.116669, 34.661800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656876, 37.730015, 34.702938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321969, -0.177098, -0.930039,
		0.917219, -0.185092, 0.352776,
		-0.234618, -0.966632, 0.102843,
		42.586491, 37.440025, 34.733791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340206, 37.700901, 34.445122>,  <42.750725, 38.116669, 34.661800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340206, 37.700901, 34.445122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016037, 37.471424, 34.397636>,  <42.821537, 37.333736, 34.369144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016037, 37.471424, 34.397636>,  <43.340206, 37.700901, 34.445122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016037, 37.471424, 34.397636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270214, -0.186254, -0.944613,
		0.519807, -0.797613, 0.305965,
		-0.810423, -0.573692, -0.118710,
		42.772911, 37.299316, 34.362022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510754, 37.090523, 34.105522>,  <43.340206, 37.700901, 34.445122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510754, 37.090523, 34.105522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117023, 37.085655, 34.035156>,  <42.880783, 37.082733, 33.992935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117023, 37.085655, 34.035156>,  <43.510754, 37.090523, 34.105522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117023, 37.085655, 34.035156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176211, -0.105604, -0.978671,
		-0.006666, -0.994334, 0.106094,
		-0.984330, -0.012171, -0.175917,
		42.821724, 37.082005, 33.982380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424973, 36.669704, 33.542294>,  <43.510754, 37.090523, 34.105522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424973, 36.669704, 33.542294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078522, 36.869480, 33.534473>,  <42.870651, 36.989346, 33.529781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078522, 36.869480, 33.534473>,  <43.424973, 36.669704, 33.542294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078522, 36.869480, 33.534473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022031, -0.077230, -0.996770,
		-0.499333, -0.862902, 0.077895,
		-0.866130, 0.499436, -0.019553,
		42.818684, 37.019310, 33.528606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159870, 36.382362, 32.986942>,  <43.424973, 36.669704, 33.542294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159870, 36.382362, 32.986942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980965, 36.735294, 33.045528>,  <42.873623, 36.947052, 33.080681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980965, 36.735294, 33.045528>,  <43.159870, 36.382362, 32.986942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980965, 36.735294, 33.045528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256158, 0.283269, -0.924198,
		-0.856936, -0.375840, -0.352711,
		-0.447263, 0.882328, 0.146469,
		42.846786, 36.999992, 33.089470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985870, 36.596954, 32.302120>,  <43.159870, 36.382362, 32.986942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985870, 36.596954, 32.302120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933926, 36.950867, 32.481144>,  <42.902760, 37.163212, 32.588558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933926, 36.950867, 32.481144>,  <42.985870, 36.596954, 32.302120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933926, 36.950867, 32.481144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232730, 0.465967, -0.853646,
		-0.963832, -0.006694, -0.266425,
		-0.129859, 0.884777, 0.447556,
		42.894966, 37.216301, 32.615410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658558, 37.006058, 31.797375>,  <42.985870, 36.596954, 32.302120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658558, 37.006058, 31.797375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820766, 37.282223, 32.037003>,  <42.918091, 37.447922, 32.180779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820766, 37.282223, 32.037003>,  <42.658558, 37.006058, 31.797375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820766, 37.282223, 32.037003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350902, 0.487581, -0.799458,
		-0.844049, 0.534414, -0.044541,
		0.405524, 0.690411, 0.599068,
		42.942425, 37.489346, 32.216724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406559, 37.576519, 31.679092>,  <42.658558, 37.006058, 31.797375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406559, 37.576519, 31.679092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739494, 37.702202, 31.861734>,  <42.939255, 37.777611, 31.971319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739494, 37.702202, 31.861734>,  <42.406559, 37.576519, 31.679092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739494, 37.702202, 31.861734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088895, 0.737459, -0.669516,
		-0.547091, 0.597854, 0.585885,
		0.832339, 0.314204, 0.456604,
		42.989197, 37.796463, 31.998716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372650, 38.279819, 31.636322>,  <42.406559, 37.576519, 31.679092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372650, 38.279819, 31.636322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757187, 38.186672, 31.695103>,  <42.987907, 38.130783, 31.730371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757187, 38.186672, 31.695103>,  <42.372650, 38.279819, 31.636322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757187, 38.186672, 31.695103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274823, 0.844754, -0.459199,
		-0.017203, 0.481832, 0.876095,
		0.961341, -0.232871, 0.146951,
		43.045589, 38.116810, 31.739187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702160, 38.852150, 32.008202>,  <42.372650, 38.279819, 31.636322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702160, 38.852150, 32.008202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976864, 38.654202, 31.795237>,  <43.141685, 38.535435, 31.667458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976864, 38.654202, 31.795237>,  <42.702160, 38.852150, 32.008202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976864, 38.654202, 31.795237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322785, 0.863905, -0.386623,
		0.651283, 0.093663, 0.753032,
		0.686761, -0.494869, -0.532414,
		43.182892, 38.505741, 31.635513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160412, 39.298565, 31.878067>,  <42.702160, 38.852150, 32.008202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160412, 39.298565, 31.878067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278225, 39.013515, 31.623377>,  <43.348911, 38.842487, 31.470562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278225, 39.013515, 31.623377>,  <43.160412, 39.298565, 31.878067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278225, 39.013515, 31.623377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464368, 0.689057, -0.556384,
		0.835232, -0.131802, 0.533868,
		0.294533, -0.712621, -0.636727,
		43.366585, 38.799728, 31.432358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892467, 39.462849, 31.707243>,  <43.160412, 39.298565, 31.878067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892467, 39.462849, 31.707243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740513, 39.223614, 31.424973>,  <43.649342, 39.080070, 31.255611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740513, 39.223614, 31.424973>,  <43.892467, 39.462849, 31.707243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740513, 39.223614, 31.424973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327567, 0.626455, -0.707287,
		0.865095, -0.499841, -0.042064,
		-0.379883, -0.598092, -0.705674,
		43.626549, 39.044186, 31.213270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428368, 39.192184, 31.334856>,  <43.892467, 39.462849, 31.707243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428368, 39.192184, 31.334856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094746, 39.203793, 31.114487>,  <43.894573, 39.210758, 30.982265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094746, 39.203793, 31.114487>,  <44.428368, 39.192184, 31.334856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094746, 39.203793, 31.114487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457190, 0.595265, -0.660785,
		0.308766, -0.803005, -0.509752,
		-0.834051, 0.029025, -0.550923,
		43.844532, 39.212502, 30.949209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676193, 39.008495, 30.757189>,  <44.428368, 39.192184, 31.334856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676193, 39.008495, 30.757189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306828, 39.113693, 30.645372>,  <44.085209, 39.176811, 30.578283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306828, 39.113693, 30.645372>,  <44.676193, 39.008495, 30.757189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306828, 39.113693, 30.645372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383455, 0.600870, -0.701368,
		-0.016489, -0.754843, -0.655698,
		-0.923412, 0.262996, -0.279540,
		44.029804, 39.192593, 30.561510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615105, 38.860741, 30.039038>,  <44.676193, 39.008495, 30.757189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615105, 38.860741, 30.039038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338062, 39.146473, 30.079075>,  <44.171837, 39.317913, 30.103098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338062, 39.146473, 30.079075>,  <44.615105, 38.860741, 30.039038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338062, 39.146473, 30.079075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364359, 0.466238, -0.806142,
		-0.622523, -0.521871, -0.583195,
		-0.692609, 0.714334, 0.100095,
		44.130280, 39.360775, 30.109104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131599, 38.911842, 29.450775>,  <44.615105, 38.860741, 30.039038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131599, 38.911842, 29.450775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105629, 39.272366, 29.622091>,  <44.090046, 39.488678, 29.724882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105629, 39.272366, 29.622091>,  <44.131599, 38.911842, 29.450775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105629, 39.272366, 29.622091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234381, 0.430964, -0.871399,
		-0.969975, 0.043811, -0.239228,
		-0.064921, 0.901305, 0.428292,
		44.086151, 39.542759, 29.750580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770824, 39.290215, 29.024057>,  <44.131599, 38.911842, 29.450775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770824, 39.290215, 29.024057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958710, 39.563713, 29.247435>,  <44.071442, 39.727814, 29.381462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958710, 39.563713, 29.247435>,  <43.770824, 39.290215, 29.024057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958710, 39.563713, 29.247435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177375, 0.546577, -0.818408,
		-0.864818, 0.483470, 0.135454,
		0.469712, 0.683748, 0.558445,
		44.099625, 39.768837, 29.414968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455643, 39.850178, 28.741894>,  <43.770824, 39.290215, 29.024057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455643, 39.850178, 28.741894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807613, 39.963249, 28.894636>,  <44.018795, 40.031094, 28.986280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807613, 39.963249, 28.894636>,  <43.455643, 39.850178, 28.741894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807613, 39.963249, 28.894636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084869, 0.697283, -0.711754,
		-0.467460, 0.658702, 0.589570,
		0.879931, 0.282680, 0.381855,
		44.071594, 40.048054, 29.009193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555836, 40.716362, 28.837326>,  <43.455643, 39.850178, 28.741894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555836, 40.716362, 28.837326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886440, 40.503025, 28.765299>,  <44.084805, 40.375023, 28.722082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886440, 40.503025, 28.765299>,  <43.555836, 40.716362, 28.837326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886440, 40.503025, 28.765299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285025, 0.672355, -0.683154,
		0.485422, 0.513313, 0.707725,
		0.826515, -0.533338, -0.180069,
		44.134396, 40.343025, 28.711279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131413, 41.200634, 28.972521>,  <43.555836, 40.716362, 28.837326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131413, 41.200634, 28.972521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512970, 41.295742, 28.899258>,  <44.741905, 41.352806, 28.855301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512970, 41.295742, 28.899258>,  <44.131413, 41.200634, 28.972521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512970, 41.295742, 28.899258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065492, 0.760437, 0.646101,
		0.292903, -0.604318, 0.740950,
		0.953897, 0.237771, -0.183157,
		44.799137, 41.367073, 28.844311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351967, 41.393414, 29.599918>,  <44.131413, 41.200634, 28.972521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351967, 41.393414, 29.599918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614578, 41.571636, 29.356461>,  <44.772144, 41.678570, 29.210386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614578, 41.571636, 29.356461>,  <44.351967, 41.393414, 29.599918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614578, 41.571636, 29.356461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009132, 0.811535, 0.584232,
		0.754247, -0.378006, 0.536864,
		0.656527, 0.445558, -0.608646,
		44.811535, 41.705303, 29.173866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822994, 41.890915, 29.555618>,  <44.351967, 41.393414, 29.599918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822994, 41.890915, 29.555618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894241, 41.743965, 29.920761>,  <43.936989, 41.655796, 30.139847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894241, 41.743965, 29.920761>,  <43.822994, 41.890915, 29.555618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894241, 41.743965, 29.920761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967249, 0.235858, -0.093812,
		-0.180841, 0.899670, 0.397355,
		0.178119, -0.367376, 0.912857,
		43.947678, 41.633751, 30.194618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103996, 42.464218, 29.838667>,  <43.822994, 41.890915, 29.555618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103996, 42.464218, 29.838667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248707, 42.175018, 30.074087>,  <44.335533, 42.001499, 30.215340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248707, 42.175018, 30.074087>,  <44.103996, 42.464218, 29.838667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248707, 42.175018, 30.074087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907369, 0.417997, -0.044268,
		-0.214007, 0.550048, 0.807247,
		0.361776, -0.722998, 0.588551,
		44.357239, 41.958118, 30.250652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346325, 42.792145, 30.403309>,  <44.103996, 42.464218, 29.838667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346325, 42.792145, 30.403309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518166, 42.462574, 30.255478>,  <44.621269, 42.264832, 30.166780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518166, 42.462574, 30.255478>,  <44.346325, 42.792145, 30.403309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518166, 42.462574, 30.255478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796312, 0.538652, -0.275209,
		0.425824, -0.176067, 0.887510,
		0.429604, -0.823926, -0.369576,
		44.647045, 42.215397, 30.144606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083820, 42.988419, 30.521297>,  <44.346325, 42.792145, 30.403309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083820, 42.988419, 30.521297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038811, 42.710201, 30.237448>,  <45.011806, 42.543270, 30.067139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038811, 42.710201, 30.237448>,  <45.083820, 42.988419, 30.521297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038811, 42.710201, 30.237448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833950, 0.322181, -0.448026,
		0.540246, -0.642203, 0.543792,
		-0.112524, -0.695539, -0.709622,
		45.005054, 42.501541, 30.024561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502232, 42.714500, 29.910955>,  <45.083820, 42.988419, 30.521297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502232, 42.714500, 29.910955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352654, 43.053959, 30.060602>,  <45.262905, 43.257633, 30.150391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352654, 43.053959, 30.060602>,  <45.502232, 42.714500, 29.910955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352654, 43.053959, 30.060602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919191, -0.392839, -0.027661,
		0.123493, -0.354228, 0.926969,
		-0.373948, 0.848646, 0.374116,
		45.240471, 43.308552, 30.172836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723289, 42.167633, 30.346489>,  <45.502232, 42.714500, 29.910955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723289, 42.167633, 30.346489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989681, 42.377407, 30.558691>,  <46.149517, 42.503273, 30.686012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989681, 42.377407, 30.558691>,  <45.723289, 42.167633, 30.346489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989681, 42.377407, 30.558691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155938, -0.793324, 0.588490,
		0.729486, -0.309198, -0.610120,
		0.665983, 0.524436, 0.530504,
		46.189476, 42.534737, 30.717842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429661, 41.818298, 30.395092>,  <45.723289, 42.167633, 30.346489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429661, 41.818298, 30.395092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352726, 42.042694, 30.717159>,  <46.306564, 42.177334, 30.910398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352726, 42.042694, 30.717159>,  <46.429661, 41.818298, 30.395092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352726, 42.042694, 30.717159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248922, -0.765760, 0.593000,
		0.949233, 0.314481, 0.007642,
		-0.192339, 0.560993, 0.805166,
		46.295025, 42.210991, 30.958710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.070045, 41.965008, 30.880953>,  <46.429661, 41.818298, 30.395092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.070045, 41.965008, 30.880953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683933, 41.907707, 30.968323>,  <46.452267, 41.873325, 31.020744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683933, 41.907707, 30.968323>,  <47.070045, 41.965008, 30.880953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683933, 41.907707, 30.968323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171142, -0.978567, 0.114527,
		0.197337, 0.147932, 0.969110,
		-0.965282, -0.143255, 0.218425,
		46.394348, 41.864731, 31.033850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928131, 41.789093, 31.645899>,  <47.070045, 41.965008, 30.880953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928131, 41.789093, 31.645899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642227, 41.616817, 31.425493>,  <46.470684, 41.513451, 31.293251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642227, 41.616817, 31.425493>,  <46.928131, 41.789093, 31.645899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642227, 41.616817, 31.425493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174438, -0.872764, 0.455910,
		-0.677262, 0.229751, 0.698950,
		-0.714765, -0.430693, -0.551013,
		46.427799, 41.487610, 31.260189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437988, 41.505905, 32.110897>,  <46.928131, 41.789093, 31.645899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437988, 41.505905, 32.110897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361000, 41.311008, 31.770180>,  <46.314808, 41.194073, 31.565748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361000, 41.311008, 31.770180>,  <46.437988, 41.505905, 32.110897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.361000, 41.311008, 31.770180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012066, -0.866784, 0.498537,
		-0.981229, 0.106231, 0.160950,
		-0.192469, -0.487237, -0.851796,
		46.303261, 41.164837, 31.514641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779835, 41.174606, 32.207104>,  <46.437988, 41.505905, 32.110897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779835, 41.174606, 32.207104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983879, 40.973927, 31.927652>,  <46.106308, 40.853519, 31.759983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983879, 40.973927, 31.927652>,  <45.779835, 41.174606, 32.207104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983879, 40.973927, 31.927652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248085, -0.863558, 0.439000,
		-0.823550, -0.050623, -0.564980,
		0.510116, -0.501701, -0.698625,
		46.136913, 40.823418, 31.718065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412529, 40.634525, 31.884974>,  <45.779835, 41.174606, 32.207104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412529, 40.634525, 31.884974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783459, 40.512482, 31.798277>,  <46.006016, 40.439255, 31.746258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783459, 40.512482, 31.798277>,  <45.412529, 40.634525, 31.884974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783459, 40.512482, 31.798277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229651, -0.921166, 0.314186,
		-0.295519, -0.241577, -0.924288,
		0.927324, -0.305112, -0.216744,
		46.061657, 40.420948, 31.733253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279980, 39.946976, 31.918884>,  <45.412529, 40.634525, 31.884974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279980, 39.946976, 31.918884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.675705, 39.985031, 31.874695>,  <45.913139, 40.007866, 31.848181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.675705, 39.985031, 31.874695>,  <45.279980, 39.946976, 31.918884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.675705, 39.985031, 31.874695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130915, -0.913180, 0.385959,
		-0.064162, -0.396297, -0.915878,
		0.989315, 0.095138, -0.110473,
		45.972500, 40.013573, 31.841553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479134, 39.408222, 31.598900>,  <45.279980, 39.946976, 31.918884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479134, 39.408222, 31.598900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768269, 39.569950, 31.823055>,  <45.941750, 39.666985, 31.957548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768269, 39.569950, 31.823055>,  <45.479134, 39.408222, 31.598900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768269, 39.569950, 31.823055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156152, -0.885556, 0.437501,
		0.673145, -0.228736, -0.703247,
		0.722836, 0.404315, 0.560390,
		45.985119, 39.691246, 31.991173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.910484, 38.794388, 31.683176>,  <45.479134, 39.408222, 31.598900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.910484, 38.794388, 31.683176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022823, 39.054119, 31.965878>,  <46.090229, 39.209957, 32.135498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022823, 39.054119, 31.965878>,  <45.910484, 38.794388, 31.683176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.022823, 39.054119, 31.965878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221058, -0.760358, 0.610729,
		0.933947, -0.015290, -0.357085,
		0.280850, 0.649324, 0.706754,
		46.107079, 39.248917, 32.177902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422104, 38.477959, 32.064396>,  <45.910484, 38.794388, 31.683176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422104, 38.477959, 32.064396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324490, 38.772156, 32.317219>,  <46.265923, 38.948673, 32.468914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324490, 38.772156, 32.317219>,  <46.422104, 38.477959, 32.064396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324490, 38.772156, 32.317219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006355, -0.652960, 0.757366,
		0.969746, 0.180805, 0.164018,
		-0.244033, 0.735495, 0.632056,
		46.251278, 38.992805, 32.506836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.822273, 38.309509, 32.542995>,  <46.422104, 38.477959, 32.064396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.822273, 38.309509, 32.542995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543064, 38.527546, 32.728741>,  <46.375538, 38.658367, 32.840187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543064, 38.527546, 32.728741>,  <46.822273, 38.309509, 32.542995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543064, 38.527546, 32.728741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041407, -0.678124, 0.733780,
		0.714873, 0.492971, 0.495920,
		-0.698027, 0.545094, 0.464360,
		46.333656, 38.691074, 32.868050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.056141, 38.282818, 33.221462>,  <46.822273, 38.309509, 32.542995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.056141, 38.282818, 33.221462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678154, 38.400524, 33.278652>,  <46.451363, 38.471149, 33.312965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678154, 38.400524, 33.278652>,  <47.056141, 38.282818, 33.221462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678154, 38.400524, 33.278652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150445, -0.778913, 0.608819,
		0.290517, 0.553806, 0.780319,
		-0.944969, 0.294268, 0.142970,
		46.394665, 38.488804, 33.321545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981724, 38.249825, 33.938446>,  <47.056141, 38.282818, 33.221462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981724, 38.249825, 33.938446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601646, 38.270576, 33.815525>,  <46.373600, 38.283028, 33.741772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601646, 38.270576, 33.815525>,  <46.981724, 38.249825, 33.938446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.601646, 38.270576, 33.815525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270119, -0.628910, 0.729046,
		-0.155440, 0.775745, 0.611603,
		-0.950197, 0.051883, -0.307301,
		46.316586, 38.286140, 33.723335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.459469, 38.430080, 34.532425>,  <46.981724, 38.249825, 33.938446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.459469, 38.430080, 34.532425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263321, 38.233131, 34.244785>,  <46.145630, 38.114960, 34.072201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263321, 38.233131, 34.244785>,  <46.459469, 38.430080, 34.532425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263321, 38.233131, 34.244785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550929, -0.464201, 0.693538,
		-0.675286, 0.736264, -0.043632,
		-0.490373, -0.492375, -0.719098,
		46.116211, 38.085419, 34.029057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730759, 38.269451, 34.801998>,  <46.459469, 38.430080, 34.532425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730759, 38.269451, 34.801998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804306, 38.030186, 34.490002>,  <45.848434, 37.886627, 34.302803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804306, 38.030186, 34.490002>,  <45.730759, 38.269451, 34.801998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804306, 38.030186, 34.490002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454037, -0.755481, 0.472333,
		-0.871804, 0.267299, -0.410498,
		0.183869, -0.598163, -0.779996,
		45.859467, 37.850739, 34.256004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027157, 37.951275, 34.725754>,  <45.730759, 38.269451, 34.801998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027157, 37.951275, 34.725754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272636, 37.740265, 34.490776>,  <45.419922, 37.613659, 34.349789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272636, 37.740265, 34.490776>,  <45.027157, 37.951275, 34.725754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272636, 37.740265, 34.490776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516970, -0.830839, 0.206029,
		-0.596759, 0.177253, -0.782599,
		0.613695, -0.527529, -0.587445,
		45.456745, 37.582005, 34.314541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656010, 37.485477, 34.328560>,  <45.027157, 37.951275, 34.725754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656010, 37.485477, 34.328560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022400, 37.325535, 34.341888>,  <45.242233, 37.229568, 34.349884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022400, 37.325535, 34.341888>,  <44.656010, 37.485477, 34.328560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022400, 37.325535, 34.341888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395910, -0.887191, 0.236953,
		-0.065186, -0.230234, -0.970950,
		0.915973, -0.399855, 0.033320,
		45.297192, 37.205578, 34.351883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612644, 36.829491, 34.010796>,  <44.656010, 37.485477, 34.328560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612644, 36.829491, 34.010796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943436, 36.796482, 34.233253>,  <45.141911, 36.776676, 34.366726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943436, 36.796482, 34.233253>,  <44.612644, 36.829491, 34.010796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.943436, 36.796482, 34.233253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332649, -0.869273, 0.365663,
		0.453263, -0.487396, -0.746323,
		0.826981, -0.082522, 0.556141,
		45.191528, 36.771725, 34.400097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712925, 36.140507, 34.105877>,  <44.612644, 36.829491, 34.010796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712925, 36.140507, 34.105877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959370, 36.265942, 34.394894>,  <45.107235, 36.341202, 34.568306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959370, 36.265942, 34.394894>,  <44.712925, 36.140507, 34.105877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959370, 36.265942, 34.394894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090047, -0.883276, 0.460125,
		0.782497, -0.348550, -0.515957,
		0.616109, 0.313586, 0.722546,
		45.144203, 36.360016, 34.611656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051636, 35.641594, 34.343697>,  <44.712925, 36.140507, 34.105877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051636, 35.641594, 34.343697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115234, 35.848408, 34.680122>,  <45.153393, 35.972496, 34.881977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115234, 35.848408, 34.680122>,  <45.051636, 35.641594, 34.343697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115234, 35.848408, 34.680122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333540, -0.773683, 0.538670,
		0.929231, -0.366176, 0.049439,
		0.158998, 0.517039, 0.841065,
		45.162933, 36.003521, 34.932442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409458, 35.145462, 34.912979>,  <45.051636, 35.641594, 34.343697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409458, 35.145462, 34.912979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238815, 35.435738, 35.128895>,  <45.136429, 35.609905, 35.258446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238815, 35.435738, 35.128895>,  <45.409458, 35.145462, 34.912979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238815, 35.435738, 35.128895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621026, -0.668927, 0.408489,
		0.657519, -0.160959, 0.736044,
		-0.426610, 0.725691, 0.539792,
		45.110832, 35.653446, 35.290833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475143, 35.009640, 35.716427>,  <45.409458, 35.145462, 34.912979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475143, 35.009640, 35.716427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162441, 35.251858, 35.656860>,  <44.974819, 35.397190, 35.621120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162441, 35.251858, 35.656860>,  <45.475143, 35.009640, 35.716427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162441, 35.251858, 35.656860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576342, -0.610440, 0.543317,
		0.238098, 0.510567, 0.826215,
		-0.781754, 0.605544, -0.148917,
		44.927914, 35.433521, 35.612186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683502, 35.642544, 35.562824>,  <45.475143, 35.009640, 35.716427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683502, 35.642544, 35.562824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842506, 35.385483, 35.300835>,  <45.937908, 35.231247, 35.143642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842506, 35.385483, 35.300835>,  <45.683502, 35.642544, 35.562824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.842506, 35.385483, 35.300835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914919, 0.332095, 0.229425,
		0.070073, -0.690444, 0.719983,
		0.397508, -0.642650, -0.654972,
		45.961758, 35.192688, 35.104343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255436, 35.243793, 35.896488>,  <45.683502, 35.642544, 35.562824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255436, 35.243793, 35.896488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320148, 35.235653, 35.501842>,  <46.358974, 35.230770, 35.265053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320148, 35.235653, 35.501842>,  <46.255436, 35.243793, 35.896488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320148, 35.235653, 35.501842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961435, 0.228588, 0.152935,
		0.222417, -0.973310, 0.056544,
		0.161779, -0.020348, -0.986617,
		46.368683, 35.229549, 35.205856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802265, 34.727463, 35.735760>,  <46.255436, 35.243793, 35.896488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802265, 34.727463, 35.735760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787868, 35.025650, 35.469532>,  <46.779232, 35.204563, 35.309795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787868, 35.025650, 35.469532>,  <46.802265, 34.727463, 35.735760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787868, 35.025650, 35.469532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955613, 0.220547, 0.195352,
		0.292418, -0.628998, -0.720315,
		-0.035987, 0.745467, -0.665570,
		46.777073, 35.249290, 35.269859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344036, 34.564011, 35.407269>,  <46.802265, 34.727463, 35.735760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344036, 34.564011, 35.407269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.297974, 34.956017, 35.342377>,  <47.270336, 35.191219, 35.303440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.297974, 34.956017, 35.342377>,  <47.344036, 34.564011, 35.407269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.297974, 34.956017, 35.342377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987900, 0.130065, 0.084482,
		0.103895, -0.150542, -0.983129,
		-0.115153, 0.980010, -0.162234,
		47.263428, 35.250019, 35.293705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.583481, 34.914619, 34.684177>,  <47.344036, 34.564011, 35.407269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.583481, 34.914619, 34.684177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635761, 35.140919, 35.009838>,  <47.667130, 35.276699, 35.205235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635761, 35.140919, 35.009838>,  <47.583481, 34.914619, 34.684177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.635761, 35.140919, 35.009838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990054, -0.117615, -0.077206,
		0.052077, 0.816144, -0.575498,
		0.130698, 0.565753, 0.814151,
		47.674973, 35.310646, 35.254082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.363194, 42.584221, 43.025242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.009884, 42.397732, 43.005398>,  <33.797897, 42.285839, 42.993492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.009884, 42.397732, 43.005398>,  <34.363194, 42.584221, 43.025242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009884, 42.397732, 43.005398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307454, -0.496081, -0.812019,
		0.353967, -0.732492, 0.581518,
		-0.883278, -0.466218, -0.049611,
		33.744900, 42.257866, 42.990513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434799, 41.857441, 42.914997>,  <34.363194, 42.584221, 43.025242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434799, 41.857441, 42.914997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053680, 41.901489, 42.801819>,  <33.825008, 41.927917, 42.733913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053680, 41.901489, 42.801819>,  <34.434799, 41.857441, 42.914997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053680, 41.901489, 42.801819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153693, -0.628748, -0.762269,
		-0.261844, -0.769772, 0.582142,
		-0.952794, 0.110124, -0.282943,
		33.767841, 41.934528, 42.716934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198593, 41.181583, 42.659428>,  <34.434799, 41.857441, 42.914997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198593, 41.181583, 42.659428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926731, 41.427372, 42.499184>,  <33.763615, 41.574844, 42.403038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926731, 41.427372, 42.499184>,  <34.198593, 41.181583, 42.659428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926731, 41.427372, 42.499184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039119, -0.515001, -0.856296,
		-0.732488, -0.597657, 0.325985,
		-0.679655, 0.614475, -0.400612,
		33.722836, 41.611713, 42.379002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833820, 40.692261, 42.312878>,  <34.198593, 41.181583, 42.659428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833820, 40.692261, 42.312878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.731758, 41.042168, 42.148113>,  <33.670521, 41.252113, 42.049255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.731758, 41.042168, 42.148113>,  <33.833820, 40.692261, 42.312878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731758, 41.042168, 42.148113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045589, -0.414657, -0.908835,
		-0.965825, -0.250671, 0.065921,
		-0.255154, 0.874771, -0.411914,
		33.655212, 41.304600, 42.024540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328205, 40.517231, 41.740402>,  <33.833820, 40.692261, 42.312878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328205, 40.517231, 41.740402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471066, 40.880093, 41.651390>,  <33.556782, 41.097809, 41.597984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471066, 40.880093, 41.651390>,  <33.328205, 40.517231, 41.740402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471066, 40.880093, 41.651390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004927, -0.236408, -0.971641,
		-0.934035, 0.348115, -0.079963,
		0.357147, 0.907153, -0.222529,
		33.578209, 41.152237, 41.584633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905613, 40.659412, 41.154976>,  <33.328205, 40.517231, 41.740402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905613, 40.659412, 41.154976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.242455, 40.873455, 41.128105>,  <33.444561, 41.001881, 41.111984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.242455, 40.873455, 41.128105>,  <32.905613, 40.659412, 41.154976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242455, 40.873455, 41.128105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183754, -0.401795, -0.897104,
		-0.507038, 0.743115, -0.436683,
		0.842109, 0.535108, -0.067175,
		33.495087, 41.033989, 41.107952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852215, 40.911140, 40.454006>,  <32.905613, 40.659412, 41.154976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852215, 40.911140, 40.454006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234219, 40.914158, 40.572594>,  <33.463421, 40.915966, 40.643745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234219, 40.914158, 40.572594>,  <32.852215, 40.911140, 40.454006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234219, 40.914158, 40.572594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261395, -0.493587, -0.829484,
		0.140076, 0.869664, -0.473354,
		0.955014, 0.007542, 0.296466,
		33.520721, 40.916420, 40.661533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191120, 41.083736, 39.795712>,  <32.852215, 40.911140, 40.454006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191120, 41.083736, 39.795712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461906, 40.931877, 40.047928>,  <33.624378, 40.840759, 40.199257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461906, 40.931877, 40.047928>,  <33.191120, 41.083736, 39.795712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461906, 40.931877, 40.047928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414729, -0.510978, -0.752928,
		0.608043, 0.771211, -0.188461,
		0.676966, -0.379653, 0.630540,
		33.664997, 40.817982, 40.237091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748615, 41.076488, 39.340778>,  <33.191120, 41.083736, 39.795712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748615, 41.076488, 39.340778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.843945, 40.830097, 39.641117>,  <33.901142, 40.682262, 39.821320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.843945, 40.830097, 39.641117>,  <33.748615, 41.076488, 39.340778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843945, 40.830097, 39.641117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505168, -0.581676, -0.637540,
		0.829463, 0.531242, 0.172550,
		0.238320, -0.615982, 0.750846,
		33.915440, 40.645302, 39.866371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474434, 41.152889, 39.488232>,  <33.748615, 41.076488, 39.340778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474434, 41.152889, 39.488232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.337158, 40.793652, 39.598251>,  <34.254791, 40.578110, 39.664261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.337158, 40.793652, 39.598251>,  <34.474434, 41.152889, 39.488232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337158, 40.793652, 39.598251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477930, -0.419060, -0.771992,
		0.808582, -0.133486, 0.573042,
		-0.343189, -0.898093, 0.275047,
		34.234200, 40.524223, 39.680767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149719, 40.679626, 39.465023>,  <34.474434, 41.152889, 39.488232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149719, 40.679626, 39.465023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814613, 40.462631, 39.440163>,  <34.613552, 40.332436, 39.425247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814613, 40.462631, 39.440163>,  <35.149719, 40.679626, 39.465023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814613, 40.462631, 39.440163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437021, -0.597912, -0.671948,
		0.327363, -0.590094, 0.737986,
		-0.837762, -0.542486, -0.062150,
		34.563286, 40.299885, 39.421516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430012, 40.105808, 39.506775>,  <35.149719, 40.679626, 39.465023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430012, 40.105808, 39.506775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066082, 39.995220, 39.382980>,  <34.847725, 39.928867, 39.308704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066082, 39.995220, 39.382980>,  <35.430012, 40.105808, 39.506775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066082, 39.995220, 39.382980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413895, -0.550444, -0.725053,
		0.030098, -0.787768, 0.615236,
		-0.909827, -0.276466, -0.309486,
		34.793133, 39.912281, 39.290134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449348, 39.431732, 39.445518>,  <35.430012, 40.105808, 39.506775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449348, 39.431732, 39.445518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168236, 39.568161, 39.195793>,  <34.999569, 39.650017, 39.045956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168236, 39.568161, 39.195793>,  <35.449348, 39.431732, 39.445518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168236, 39.568161, 39.195793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474605, -0.428959, -0.768599,
		-0.529954, -0.836459, 0.139589,
		-0.702780, 0.341072, -0.624316,
		34.957401, 39.670483, 39.008499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270020, 38.862984, 39.007725>,  <35.449348, 39.431732, 39.445518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270020, 38.862984, 39.007725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167809, 39.188580, 38.799061>,  <35.106483, 39.383938, 38.673862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167809, 39.188580, 38.799061>,  <35.270020, 38.862984, 39.007725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167809, 39.188580, 38.799061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492924, -0.354490, -0.794583,
		-0.831705, -0.460176, -0.310653,
		-0.255525, 0.813987, -0.521663,
		35.091152, 39.432777, 38.642563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010342, 38.560467, 38.529919>,  <35.270020, 38.862984, 39.007725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010342, 38.560467, 38.529919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.070057, 38.938309, 38.412998>,  <35.105885, 39.165012, 38.342846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.070057, 38.938309, 38.412998>,  <35.010342, 38.560467, 38.529919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070057, 38.938309, 38.412998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358790, -0.327219, -0.874184,
		-0.921403, 0.025626, -0.387763,
		0.149285, 0.944601, -0.292306,
		35.114841, 39.221687, 38.325306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950520, 38.602459, 37.842052>,  <35.010342, 38.560467, 38.529919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950520, 38.602459, 37.842052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157284, 38.939144, 37.904430>,  <35.281342, 39.141155, 37.941856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157284, 38.939144, 37.904430>,  <34.950520, 38.602459, 37.842052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157284, 38.939144, 37.904430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581352, -0.211445, -0.785698,
		-0.628361, 0.496793, -0.598631,
		0.516907, 0.841717, 0.155948,
		35.312355, 39.191658, 37.951214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088974, 38.877918, 37.214462>,  <34.950520, 38.602459, 37.842052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088974, 38.877918, 37.214462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361794, 39.078453, 37.427429>,  <35.525486, 39.198776, 37.555210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361794, 39.078453, 37.427429>,  <35.088974, 38.877918, 37.214462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361794, 39.078453, 37.427429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582796, 0.067178, -0.809837,
		-0.441771, 0.862638, -0.246362,
		0.682046, 0.501341, 0.532419,
		35.566406, 39.228855, 37.587154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308762, 39.351337, 36.750759>,  <35.088974, 38.877918, 37.214462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308762, 39.351337, 36.750759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595680, 39.331474, 37.028755>,  <35.767834, 39.319557, 37.195553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595680, 39.331474, 37.028755>,  <35.308762, 39.351337, 36.750759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595680, 39.331474, 37.028755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687777, -0.109243, -0.717655,
		0.111563, 0.992774, -0.044204,
		0.717298, -0.049661, 0.694994,
		35.810871, 39.316574, 37.237255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830803, 39.770351, 36.607246>,  <35.308762, 39.351337, 36.750759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830803, 39.770351, 36.607246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057480, 39.525925, 36.828320>,  <36.193485, 39.379269, 36.960964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057480, 39.525925, 36.828320>,  <35.830803, 39.770351, 36.607246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057480, 39.525925, 36.828320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577014, -0.184498, -0.795623,
		0.588144, 0.769781, 0.248038,
		0.566693, -0.611063, 0.552686,
		36.227489, 39.342606, 36.994125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540966, 39.879818, 36.453972>,  <35.830803, 39.770351, 36.607246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540966, 39.879818, 36.453972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551029, 39.509254, 36.604244>,  <36.557068, 39.286915, 36.694408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551029, 39.509254, 36.604244>,  <36.540966, 39.879818, 36.453972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551029, 39.509254, 36.604244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726808, -0.241073, -0.643144,
		0.686380, 0.289228, 0.667256,
		0.025158, -0.926408, 0.375680,
		36.558575, 39.231331, 36.716949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249153, 39.770607, 36.406750>,  <36.540966, 39.879818, 36.453972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249153, 39.770607, 36.406750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062534, 39.418945, 36.445560>,  <36.950562, 39.207947, 36.468849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062534, 39.418945, 36.445560>,  <37.249153, 39.770607, 36.406750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062534, 39.418945, 36.445560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628150, -0.406562, -0.663427,
		0.622706, -0.248570, 0.741923,
		-0.466546, -0.879159, 0.097030,
		36.922569, 39.155197, 36.474670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750999, 39.190914, 36.651249>,  <37.249153, 39.770607, 36.406750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750999, 39.190914, 36.651249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444592, 39.027000, 36.453144>,  <37.260746, 38.928654, 36.334282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444592, 39.027000, 36.453144>,  <37.750999, 39.190914, 36.651249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444592, 39.027000, 36.453144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642746, -0.477148, -0.599340,
		0.009286, -0.777436, 0.628893,
		-0.766023, -0.409784, -0.495263,
		37.214783, 38.904064, 36.304565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087467, 38.531418, 36.328606>,  <37.750999, 39.190914, 36.651249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087467, 38.531418, 36.328606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469719, 38.613365, 36.413269>,  <38.699070, 38.662533, 36.464066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469719, 38.613365, 36.413269>,  <38.087467, 38.531418, 36.328606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469719, 38.613365, 36.413269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293625, 0.605014, 0.740096,
		0.023567, -0.769406, 0.638325,
		0.955630, 0.204869, 0.211659,
		38.756409, 38.674828, 36.476765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166187, 38.609409, 37.161446>,  <38.087467, 38.531418, 36.328606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166187, 38.609409, 37.161446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531830, 38.729664, 37.052608>,  <38.751213, 38.801815, 36.987305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531830, 38.729664, 37.052608>,  <38.166187, 38.609409, 37.161446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531830, 38.729664, 37.052608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038763, 0.732752, 0.679391,
		0.403627, -0.610485, 0.681464,
		0.914102, 0.300636, -0.272095,
		38.806061, 38.819855, 36.970982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604664, 38.700676, 37.791805>,  <38.166187, 38.609409, 37.161446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604664, 38.700676, 37.791805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738121, 38.939705, 37.500164>,  <38.818195, 39.083122, 37.325180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738121, 38.939705, 37.500164>,  <38.604664, 38.700676, 37.791805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738121, 38.939705, 37.500164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103990, 0.792027, 0.601564,
		0.936946, -0.124890, 0.326397,
		0.333645, 0.597574, -0.729099,
		38.838215, 39.118977, 37.281433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047073, 39.090370, 38.198658>,  <38.604664, 38.700676, 37.791805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047073, 39.090370, 38.198658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001686, 39.297714, 37.859619>,  <38.974453, 39.422123, 37.656197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.001686, 39.297714, 37.859619>,  <39.047073, 39.090370, 38.198658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001686, 39.297714, 37.859619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111311, 0.841104, 0.529295,
		0.987286, 0.154407, -0.037742,
		-0.113472, 0.518365, -0.847598,
		38.967644, 39.453224, 37.605339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294117, 39.789055, 38.332329>,  <39.047073, 39.090370, 38.198658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294117, 39.789055, 38.332329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072662, 39.842537, 38.003548>,  <38.939789, 39.874626, 37.806278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072662, 39.842537, 38.003548>,  <39.294117, 39.789055, 38.332329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072662, 39.842537, 38.003548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239485, 0.919769, 0.310922,
		0.797577, 0.368984, -0.477202,
		-0.553641, 0.133701, -0.821952,
		38.906570, 39.882648, 37.756962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555531, 40.398335, 37.885506>,  <39.294117, 39.789055, 38.332329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555531, 40.398335, 37.885506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161934, 40.343765, 37.839642>,  <38.925777, 40.311024, 37.812122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.161934, 40.343765, 37.839642>,  <39.555531, 40.398335, 37.885506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161934, 40.343765, 37.839642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175038, 0.860734, 0.478015,
		0.033482, 0.490433, -0.870835,
		-0.983992, -0.136424, -0.114663,
		38.866737, 40.302837, 37.805244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299088, 41.154354, 37.685249>,  <39.555531, 40.398335, 37.885506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299088, 41.154354, 37.685249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.986958, 40.926285, 37.788013>,  <38.799679, 40.789444, 37.849674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.986958, 40.926285, 37.788013>,  <39.299088, 41.154354, 37.685249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986958, 40.926285, 37.788013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395489, 0.768141, 0.503535,
		-0.484446, 0.291313, -0.824893,
		-0.780321, -0.570172, 0.256912,
		38.752861, 40.755234, 37.865086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620094, 41.652149, 37.545300>,  <39.299088, 41.154354, 37.685249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620094, 41.652149, 37.545300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.544754, 41.350685, 37.797180>,  <38.499550, 41.169807, 37.948307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.544754, 41.350685, 37.797180>,  <38.620094, 41.652149, 37.545300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544754, 41.350685, 37.797180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564809, 0.607659, 0.558338,
		-0.803440, -0.250501, -0.540123,
		-0.188346, -0.753658, 0.629703,
		38.488251, 41.124588, 37.986092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982265, 41.768955, 37.799976>,  <38.620094, 41.652149, 37.545300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982265, 41.768955, 37.799976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109745, 41.499557, 38.066761>,  <38.186234, 41.337921, 38.226833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109745, 41.499557, 38.066761>,  <37.982265, 41.768955, 37.799976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109745, 41.499557, 38.066761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691075, 0.316493, 0.649806,
		-0.648728, -0.668015, -0.364567,
		0.318697, -0.673490, 0.666966,
		38.205353, 41.297512, 38.266850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401096, 41.356293, 38.123238>,  <37.982265, 41.768955, 37.799976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401096, 41.356293, 38.123238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690720, 41.336807, 38.398445>,  <37.864494, 41.325115, 38.563568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690720, 41.336807, 38.398445>,  <37.401096, 41.356293, 38.123238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690720, 41.336807, 38.398445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638472, 0.330045, 0.695287,
		-0.260946, -0.942707, 0.207870,
		0.724059, -0.048714, 0.688016,
		37.907936, 41.322193, 38.604851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128407, 40.952168, 38.755032>,  <37.401096, 41.356293, 38.123238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128407, 40.952168, 38.755032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439819, 41.179081, 38.862427>,  <37.626667, 41.315228, 38.926865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439819, 41.179081, 38.862427>,  <37.128407, 40.952168, 38.755032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439819, 41.179081, 38.862427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600472, 0.548831, 0.581565,
		0.182556, -0.613984, 0.767917,
		0.778528, 0.567281, 0.268488,
		37.673378, 41.349266, 38.942974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078926, 40.905380, 39.435020>,  <37.128407, 40.952168, 38.755032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078926, 40.905380, 39.435020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330597, 41.213890, 39.396503>,  <37.481598, 41.398994, 39.373394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330597, 41.213890, 39.396503>,  <37.078926, 40.905380, 39.435020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330597, 41.213890, 39.396503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391700, 0.421633, 0.817799,
		0.671348, -0.476822, 0.567391,
		0.629176, 0.771275, -0.096291,
		37.519348, 41.445274, 39.367615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403034, 41.034512, 40.082085>,  <37.078926, 40.905380, 39.435020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403034, 41.034512, 40.082085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420040, 41.386391, 39.892635>,  <37.430244, 41.597519, 39.778965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420040, 41.386391, 39.892635>,  <37.403034, 41.034512, 40.082085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420040, 41.386391, 39.892635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207439, 0.471498, 0.857122,
		0.977324, 0.061806, 0.202530,
		0.042517, 0.879698, -0.473627,
		37.432796, 41.650299, 39.750546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664711, 41.401134, 40.583820>,  <37.403034, 41.034512, 40.082085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664711, 41.401134, 40.583820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495266, 41.671730, 40.342854>,  <37.393597, 41.834087, 40.198273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495266, 41.671730, 40.342854>,  <37.664711, 41.401134, 40.583820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495266, 41.671730, 40.342854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426395, 0.437836, 0.791509,
		0.799211, 0.592163, 0.102979,
		-0.423614, 0.676493, -0.602419,
		37.368183, 41.874680, 40.162128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779034, 42.067287, 40.836132>,  <37.664711, 41.401134, 40.583820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779034, 42.067287, 40.836132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494728, 42.199192, 40.587593>,  <37.324146, 42.278336, 40.438469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494728, 42.199192, 40.587593>,  <37.779034, 42.067287, 40.836132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494728, 42.199192, 40.587593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374289, 0.570590, 0.730982,
		0.595585, 0.752119, -0.282128,
		-0.710765, 0.329764, -0.621345,
		37.281498, 42.298122, 40.401188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617577, 42.770470, 41.026718>,  <37.779034, 42.067287, 40.836132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617577, 42.770470, 41.026718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.296078, 42.682732, 40.805492>,  <37.103180, 42.630089, 40.672756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.296078, 42.682732, 40.805492>,  <37.617577, 42.770470, 41.026718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296078, 42.682732, 40.805492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592360, 0.382050, 0.709329,
		0.055711, 0.897734, -0.437001,
		-0.803745, -0.219344, -0.553066,
		37.054955, 42.616928, 40.639572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105156, 43.441269, 40.964504>,  <37.617577, 42.770470, 41.026718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105156, 43.441269, 40.964504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916523, 43.094143, 40.901886>,  <36.803345, 42.885868, 40.864315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916523, 43.094143, 40.901886>,  <37.105156, 43.441269, 40.964504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916523, 43.094143, 40.901886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680017, 0.244861, 0.691100,
		-0.561415, 0.432365, -0.705601,
		-0.471582, -0.867815, -0.156547,
		36.775047, 42.833797, 40.854923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336929, 43.628792, 40.829674>,  <37.105156, 43.441269, 40.964504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336929, 43.628792, 40.829674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363251, 43.246075, 40.942966>,  <36.379044, 43.016445, 41.010941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363251, 43.246075, 40.942966>,  <36.336929, 43.628792, 40.829674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363251, 43.246075, 40.942966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635999, 0.178501, 0.750762,
		-0.768879, -0.229539, -0.596771,
		0.065805, -0.956791, 0.283232,
		36.382992, 42.959038, 41.027935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.618786, 43.350288, 40.824799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851501, 43.124779, 41.059296>,  <35.991131, 42.989471, 41.199993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851501, 43.124779, 41.059296>,  <35.618786, 43.350288, 40.824799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851501, 43.124779, 41.059296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586867, 0.208065, 0.782494,
		-0.563129, -0.799290, -0.209813,
		0.581784, -0.563777, 0.586244,
		36.026035, 42.955647, 41.235168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187336, 43.112614, 41.327557>,  <35.618786, 43.350288, 40.824799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187336, 43.112614, 41.327557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536743, 43.069546, 41.517452>,  <35.746387, 43.043705, 41.631390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536743, 43.069546, 41.517452>,  <35.187336, 43.112614, 41.327557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536743, 43.069546, 41.517452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454510, 0.168855, 0.874591,
		-0.174326, -0.979743, 0.098563,
		0.873517, -0.107666, 0.474739,
		35.798798, 43.037247, 41.659874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120720, 42.618416, 41.819557>,  <35.187336, 43.112614, 41.327557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120720, 42.618416, 41.819557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436695, 42.833511, 41.937428>,  <35.626282, 42.962570, 42.008148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436695, 42.833511, 41.937428>,  <35.120720, 42.618416, 41.819557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436695, 42.833511, 41.937428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342559, -0.011574, 0.939425,
		0.508578, -0.843031, 0.175065,
		0.789938, 0.537741, 0.294674,
		35.673676, 42.994835, 42.025829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237732, 42.362453, 42.543217>,  <35.120720, 42.618416, 41.819557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237732, 42.362453, 42.543217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452675, 42.699448, 42.527912>,  <35.581642, 42.901646, 42.518730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452675, 42.699448, 42.527912>,  <35.237732, 42.362453, 42.543217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452675, 42.699448, 42.527912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270833, 0.215353, 0.938229,
		0.798685, -0.493801, 0.343894,
		0.537356, 0.842487, -0.038262,
		35.613880, 42.952194, 42.516434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461781, 42.369743, 43.178509>,  <35.237732, 42.362453, 42.543217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461781, 42.369743, 43.178509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518707, 42.742729, 43.045692>,  <35.552864, 42.966522, 42.966003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518707, 42.742729, 43.045692>,  <35.461781, 42.369743, 43.178509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518707, 42.742729, 43.045692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292378, 0.360087, 0.885919,
		0.945654, -0.028999, 0.323879,
		0.142315, 0.932468, -0.332039,
		35.561401, 43.022469, 42.946079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946026, 42.659328, 43.682945>,  <35.461781, 42.369743, 43.178509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946026, 42.659328, 43.682945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767445, 42.962250, 43.492294>,  <35.660294, 43.144001, 43.377903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767445, 42.962250, 43.492294>,  <35.946026, 42.659328, 43.682945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767445, 42.962250, 43.492294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185677, 0.442659, 0.877255,
		0.875329, 0.480155, -0.057015,
		-0.446457, 0.757300, -0.476626,
		35.633507, 43.189442, 43.349308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396786, 43.326656, 43.796597>,  <35.946026, 42.659328, 43.682945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396786, 43.326656, 43.796597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026115, 43.443039, 43.701420>,  <35.803715, 43.512867, 43.644314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026115, 43.443039, 43.701420>,  <36.396786, 43.326656, 43.796597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026115, 43.443039, 43.701420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011735, 0.610353, 0.792043,
		0.375678, 0.736759, -0.562185,
		-0.926676, 0.290955, -0.237942,
		35.748112, 43.530327, 43.630035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474255, 43.979984, 43.992989>,  <36.396786, 43.326656, 43.796597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474255, 43.979984, 43.992989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.083538, 43.896748, 43.972702>,  <35.849106, 43.846806, 43.960529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.083538, 43.896748, 43.972702>,  <36.474255, 43.979984, 43.992989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083538, 43.896748, 43.972702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162320, 0.564737, 0.809151,
		-0.139735, 0.798606, -0.585409,
		-0.976794, -0.208090, -0.050716,
		35.790501, 43.834320, 43.957489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123219, 44.655960, 44.182617>,  <36.474255, 43.979984, 43.992989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123219, 44.655960, 44.182617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.837463, 44.382992, 44.244522>,  <35.666012, 44.219212, 44.281666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.837463, 44.382992, 44.244522>,  <36.123219, 44.655960, 44.182617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837463, 44.382992, 44.244522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155920, 0.370849, 0.915510,
		-0.682160, 0.629896, -0.371333,
		-0.714385, -0.682423, 0.154765,
		35.623146, 44.178265, 44.290951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650612, 45.048794, 44.380924>,  <36.123219, 44.655960, 44.182617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650612, 45.048794, 44.380924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.600132, 44.689011, 44.548279>,  <35.569843, 44.473141, 44.648693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.600132, 44.689011, 44.548279>,  <35.650612, 45.048794, 44.380924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600132, 44.689011, 44.548279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194152, 0.436002, 0.878753,
		-0.972820, 0.029668, -0.229656,
		-0.126201, -0.899457, 0.418391,
		35.562271, 44.419174, 44.673798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037384, 45.100269, 44.883854>,  <35.650612, 45.048794, 44.380924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037384, 45.100269, 44.883854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229279, 44.760166, 44.970493>,  <35.344418, 44.556107, 45.022476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229279, 44.760166, 44.970493>,  <35.037384, 45.100269, 44.883854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229279, 44.760166, 44.970493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076169, 0.205574, 0.975673,
		-0.874098, -0.484568, 0.033859,
		0.479740, -0.850255, 0.216601,
		35.373199, 44.505089, 45.035473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712753, 44.851231, 45.479897>,  <35.037384, 45.100269, 44.883854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712753, 44.851231, 45.479897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064194, 44.661175, 45.499104>,  <35.275059, 44.547142, 45.510628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064194, 44.661175, 45.499104>,  <34.712753, 44.851231, 45.479897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064194, 44.661175, 45.499104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035378, 0.035522, 0.998742,
		-0.476249, -0.879193, 0.014400,
		0.878598, -0.475141, 0.048021,
		35.327774, 44.518631, 45.513512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602055, 44.383118, 46.033970>,  <34.712753, 44.851231, 45.479897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602055, 44.383118, 46.033970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998875, 44.404404, 45.988361>,  <35.236969, 44.417175, 45.960999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998875, 44.404404, 45.988361>,  <34.602055, 44.383118, 46.033970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998875, 44.404404, 45.988361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113074, 0.020453, 0.993376,
		0.055201, -0.998373, 0.014272,
		0.992052, 0.053222, -0.114019,
		35.296490, 44.420368, 45.954155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873211, 43.847435, 46.432110>,  <34.602055, 44.383118, 46.033970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873211, 43.847435, 46.432110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152283, 44.132786, 46.405758>,  <35.319725, 44.303997, 46.389946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152283, 44.132786, 46.405758>,  <34.873211, 43.847435, 46.432110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152283, 44.132786, 46.405758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109135, -0.014941, 0.993915,
		0.708053, -0.700620, -0.088279,
		0.697676, 0.713378, -0.065884,
		35.361584, 44.346798, 46.385994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371887, 43.766109, 46.977863>,  <34.873211, 43.847435, 46.432110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371887, 43.766109, 46.977863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473545, 44.136383, 46.865776>,  <35.534542, 44.358547, 46.798523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473545, 44.136383, 46.865776>,  <35.371887, 43.766109, 46.977863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473545, 44.136383, 46.865776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222949, 0.225858, 0.948305,
		0.941118, -0.303483, -0.148979,
		0.254146, 0.925681, -0.280220,
		35.549789, 44.414089, 46.781712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057003, 43.863884, 47.306004>,  <35.371887, 43.766109, 46.977863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057003, 43.863884, 47.306004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932739, 44.236420, 47.230015>,  <35.858181, 44.459942, 47.184422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932739, 44.236420, 47.230015>,  <36.057003, 43.863884, 47.306004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932739, 44.236420, 47.230015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250848, 0.273109, 0.928701,
		0.916825, 0.240852, -0.318469,
		-0.310657, 0.931344, -0.189976,
		35.839542, 44.515823, 47.173023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417339, 44.208149, 47.660763>,  <36.057003, 43.863884, 47.306004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417339, 44.208149, 47.660763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122147, 44.471298, 47.600647>,  <35.945030, 44.629189, 47.564579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122147, 44.471298, 47.600647>,  <36.417339, 44.208149, 47.660763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122147, 44.471298, 47.600647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106301, 0.333253, 0.936826,
		0.666398, 0.675383, -0.315866,
		-0.737980, 0.657875, -0.150285,
		35.900753, 44.668659, 47.555561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593102, 44.870529, 47.890118>,  <36.417339, 44.208149, 47.660763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593102, 44.870529, 47.890118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193817, 44.846718, 47.892414>,  <35.954247, 44.832432, 47.893791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193817, 44.846718, 47.892414>,  <36.593102, 44.870529, 47.890118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193817, 44.846718, 47.892414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021723, 0.450411, 0.892557,
		-0.055716, 0.890835, -0.450898,
		-0.998210, -0.059525, 0.005743,
		35.894356, 44.828861, 47.894138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310867, 45.473106, 48.124481>,  <36.593102, 44.870529, 47.890118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310867, 45.473106, 48.124481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987640, 45.242920, 48.174870>,  <35.793705, 45.104809, 48.205105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987640, 45.242920, 48.174870>,  <36.310867, 45.473106, 48.124481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987640, 45.242920, 48.174870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123539, 0.374631, 0.918907,
		-0.575991, 0.726976, -0.373819,
		-0.808067, -0.575463, 0.125974,
		35.745220, 45.070282, 48.212662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941055, 45.856262, 48.542770>,  <36.310867, 45.473106, 48.124481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941055, 45.856262, 48.542770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732506, 45.516239, 48.572636>,  <35.607376, 45.312225, 48.590553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732506, 45.516239, 48.572636>,  <35.941055, 45.856262, 48.542770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732506, 45.516239, 48.572636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184186, 0.197533, 0.962838,
		-0.833214, 0.488247, -0.259557,
		-0.521373, -0.850056, 0.074659,
		35.576096, 45.261223, 48.595032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190098, 45.917759, 48.898808>,  <35.941055, 45.856262, 48.542770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190098, 45.917759, 48.898808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312122, 45.538895, 48.938446>,  <35.385338, 45.311577, 48.962227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312122, 45.538895, 48.938446>,  <35.190098, 45.917759, 48.898808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312122, 45.538895, 48.938446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211109, 0.034207, 0.976864,
		-0.928641, -0.318918, -0.189519,
		0.305057, -0.947165, 0.099093,
		35.403641, 45.254745, 48.968174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702118, 45.469368, 49.163715>,  <35.190098, 45.917759, 48.898808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702118, 45.469368, 49.163715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048981, 45.302540, 49.272594>,  <35.257099, 45.202442, 49.337921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048981, 45.302540, 49.272594>,  <34.702118, 45.469368, 49.163715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048981, 45.302540, 49.272594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321606, -0.051635, 0.945464,
		-0.380269, -0.907407, -0.178907,
		0.867159, -0.417068, 0.272193,
		35.309128, 45.177418, 49.354252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526546, 45.154064, 49.773491>,  <34.702118, 45.469368, 49.163715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526546, 45.154064, 49.773491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925003, 45.184502, 49.756023>,  <35.164078, 45.202766, 49.745541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925003, 45.184502, 49.756023>,  <34.526546, 45.154064, 49.773491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925003, 45.184502, 49.756023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030575, 0.165481, 0.985739,
		0.082237, -0.983273, 0.162516,
		0.996144, 0.076095, -0.043672,
		35.223846, 45.207333, 49.742920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864197, 45.625450, 49.949409>,  <34.526546, 45.154064, 49.773491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864197, 45.625450, 49.949409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635403, 45.442379, 50.221691>,  <33.498127, 45.332539, 50.385059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635403, 45.442379, 50.221691>,  <33.864197, 45.625450, 49.949409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635403, 45.442379, 50.221691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661873, -0.232666, -0.712595,
		0.484515, -0.858137, -0.169840,
		-0.571988, -0.457675, 0.680708,
		33.463806, 45.305077, 50.425903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856968, 44.916431, 49.819584>,  <33.864197, 45.625450, 49.949409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856968, 44.916431, 49.819584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516739, 45.033497, 49.994335>,  <33.312599, 45.103737, 50.099186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516739, 45.033497, 49.994335>,  <33.856968, 44.916431, 49.819584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516739, 45.033497, 49.994335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525850, -0.474942, -0.705629,
		0.000977, -0.829925, 0.557874,
		-0.850577, 0.292668, 0.436880,
		33.261566, 45.121296, 50.125401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601437, 44.342789, 49.909966>,  <33.856968, 44.916431, 49.819584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601437, 44.342789, 49.909966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287849, 44.590710, 49.924030>,  <33.099697, 44.739464, 49.932468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287849, 44.590710, 49.924030>,  <33.601437, 44.342789, 49.909966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287849, 44.590710, 49.924030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503554, -0.601753, -0.619940,
		-0.363079, -0.503722, 0.783860,
		-0.783968, 0.619804, 0.035167,
		33.052658, 44.776649, 49.934582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227730, 43.908817, 49.661072>,  <33.601437, 44.342789, 49.909966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227730, 43.908817, 49.661072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.994083, 44.231602, 49.626129>,  <32.853897, 44.425270, 49.605164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.994083, 44.231602, 49.626129>,  <33.227730, 43.908817, 49.661072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994083, 44.231602, 49.626129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547145, -0.470953, -0.691980,
		-0.599539, -0.356398, 0.716613,
		-0.584111, 0.806960, -0.087353,
		32.818851, 44.473690, 49.599922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428116, 43.669727, 49.650597>,  <33.227730, 43.908817, 49.661072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428116, 43.669727, 49.650597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.488789, 44.018505, 49.464390>,  <32.525192, 44.227772, 49.352665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.488789, 44.018505, 49.464390>,  <32.428116, 43.669727, 49.650597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488789, 44.018505, 49.464390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486692, -0.344034, -0.802976,
		-0.860305, 0.348357, 0.372186,
		0.151678, 0.871945, -0.465517,
		32.534290, 44.280090, 49.324734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816412, 43.646980, 49.203617>,  <32.428116, 43.669727, 49.650597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816412, 43.646980, 49.203617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.093044, 43.904518, 49.072659>,  <32.259022, 44.059040, 48.994083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.093044, 43.904518, 49.072659>,  <31.816412, 43.646980, 49.203617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093044, 43.904518, 49.072659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229765, -0.233627, -0.944789,
		-0.684782, 0.728620, -0.013639,
		0.691579, 0.643841, -0.327396,
		32.300518, 44.097672, 48.974442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498346, 44.003201, 48.646976>,  <31.816412, 43.646980, 49.203617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498346, 44.003201, 48.646976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.889286, 44.074669, 48.601612>,  <32.123852, 44.117550, 48.574394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.889286, 44.074669, 48.601612>,  <31.498346, 44.003201, 48.646976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889286, 44.074669, 48.601612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101010, -0.077092, -0.991894,
		-0.185968, 0.980884, -0.057298,
		0.977350, 0.178673, -0.113415,
		32.182491, 44.128269, 48.567589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598806, 44.636631, 48.143005>,  <31.498346, 44.003201, 48.646976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598806, 44.636631, 48.143005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961149, 44.469112, 48.168411>,  <32.178555, 44.368603, 48.183655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.961149, 44.469112, 48.168411>,  <31.598806, 44.636631, 48.143005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961149, 44.469112, 48.168411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053306, -0.036040, -0.997928,
		0.420213, 0.907366, -0.010323,
		0.905858, -0.418792, 0.063513,
		32.232906, 44.343475, 48.187466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981199, 44.973515, 47.530510>,  <31.598806, 44.636631, 48.143005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981199, 44.973515, 47.530510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195133, 44.655853, 47.645939>,  <32.323494, 44.465256, 47.715199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195133, 44.655853, 47.645939>,  <31.981199, 44.973515, 47.530510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195133, 44.655853, 47.645939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162179, -0.238694, -0.957457,
		0.829247, 0.558882, 0.001133,
		0.534835, -0.794151, 0.288575,
		32.355583, 44.417606, 47.732510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598244, 45.026768, 47.275158>,  <31.981199, 44.973515, 47.530510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598244, 45.026768, 47.275158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562901, 44.633060, 47.336353>,  <32.541695, 44.396835, 47.373070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562901, 44.633060, 47.336353>,  <32.598244, 45.026768, 47.275158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562901, 44.633060, 47.336353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090262, -0.160867, -0.982840,
		0.991991, -0.073034, 0.103056,
		-0.088359, -0.984270, 0.152987,
		32.536392, 44.337780, 47.382248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174706, 44.776249, 47.000568>,  <32.598244, 45.026768, 47.275158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174706, 44.776249, 47.000568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.919586, 44.468166, 47.000473>,  <32.766514, 44.283318, 47.000416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.919586, 44.468166, 47.000473>,  <33.174706, 44.776249, 47.000568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919586, 44.468166, 47.000473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280985, -0.232393, -0.931150,
		0.717123, -0.593949, 0.364636,
		-0.637795, -0.770206, -0.000236,
		32.728249, 44.237106, 47.000401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579384, 44.299870, 46.701336>,  <33.174706, 44.776249, 47.000568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579384, 44.299870, 46.701336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208450, 44.157078, 46.656406>,  <32.985889, 44.071404, 46.629448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208450, 44.157078, 46.656406>,  <33.579384, 44.299870, 46.701336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208450, 44.157078, 46.656406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277295, -0.453881, -0.846817,
		0.251310, -0.816431, 0.519888,
		-0.927335, -0.356976, -0.112328,
		32.930248, 44.049984, 46.622707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575901, 43.589142, 46.682980>,  <33.579384, 44.299870, 46.701336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575901, 43.589142, 46.682980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229752, 43.668079, 46.498726>,  <33.022064, 43.715443, 46.388172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229752, 43.668079, 46.498726>,  <33.575901, 43.589142, 46.682980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229752, 43.668079, 46.498726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328243, -0.471350, -0.818587,
		-0.378666, -0.859583, 0.343116,
		-0.865372, 0.197346, -0.460637,
		32.970139, 43.727283, 46.360535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327080, 42.978119, 46.470413>,  <33.575901, 43.589142, 46.682980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327080, 42.978119, 46.470413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152260, 43.247280, 46.231689>,  <33.047367, 43.408775, 46.088455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152260, 43.247280, 46.231689>,  <33.327080, 42.978119, 46.470413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152260, 43.247280, 46.231689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436876, -0.421192, -0.794819,
		-0.786210, -0.608109, -0.109894,
		-0.437050, 0.672904, -0.596814,
		33.021145, 43.449150, 46.052647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131634, 42.537510, 45.934307>,  <33.327080, 42.978119, 46.470413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131634, 42.537510, 45.934307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.080513, 42.904564, 45.783787>,  <33.049843, 43.124798, 45.693474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.080513, 42.904564, 45.783787>,  <33.131634, 42.537510, 45.934307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080513, 42.904564, 45.783787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129920, -0.360658, -0.923605,
		-0.983254, -0.166924, -0.073129,
		-0.127797, 0.917640, -0.376305,
		33.042175, 43.179855, 45.670895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679871, 42.448738, 45.405781>,  <33.131634, 42.537510, 45.934307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679871, 42.448738, 45.405781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.868389, 42.790657, 45.318882>,  <32.981499, 42.995808, 45.266743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.868389, 42.790657, 45.318882>,  <32.679871, 42.448738, 45.405781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868389, 42.790657, 45.318882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134522, -0.313109, -0.940141,
		-0.871656, 0.413859, -0.262557,
		0.471295, 0.854800, -0.217250,
		33.009777, 43.047096, 45.253708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448483, 42.689980, 44.849037>,  <32.679871, 42.448738, 45.405781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448483, 42.689980, 44.849037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807598, 42.865685, 44.861855>,  <33.023067, 42.971107, 44.869545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807598, 42.865685, 44.861855>,  <32.448483, 42.689980, 44.849037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807598, 42.865685, 44.861855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089877, -0.111495, -0.989692,
		-0.431165, 0.891411, -0.139578,
		0.897785, 0.439266, 0.032045,
		33.076935, 42.997463, 44.871468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385418, 43.188831, 44.421112>,  <32.448483, 42.689980, 44.849037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385418, 43.188831, 44.421112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763870, 43.060833, 44.440868>,  <32.990940, 42.984032, 44.452721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763870, 43.060833, 44.440868>,  <32.385418, 43.188831, 44.421112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763870, 43.060833, 44.440868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042925, -0.275146, -0.960444,
		0.320930, 0.906584, -0.274060,
		0.946130, -0.320000, 0.049388,
		33.047710, 42.964832, 44.455685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707111, 43.430698, 43.878582>,  <32.385418, 43.188831, 44.421112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707111, 43.430698, 43.878582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950188, 43.126263, 43.969322>,  <33.096035, 42.943604, 44.023766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950188, 43.126263, 43.969322>,  <32.707111, 43.430698, 43.878582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950188, 43.126263, 43.969322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021432, -0.301254, -0.953303,
		0.793884, 0.574452, -0.199381,
		0.607691, -0.761085, 0.226849,
		33.132496, 42.897938, 44.037376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196316, 43.468014, 43.382519>,  <32.707111, 43.430698, 43.878582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196316, 43.468014, 43.382519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231613, 43.094765, 43.521946>,  <33.252792, 42.870815, 43.605602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231613, 43.094765, 43.521946>,  <33.196316, 43.468014, 43.382519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231613, 43.094765, 43.521946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195149, -0.326955, -0.924671,
		0.976796, 0.149618, 0.153246,
		0.088242, -0.933121, 0.348567,
		33.258087, 42.814827, 43.626514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888111, 43.195923, 43.189457>,  <33.196316, 43.468014, 43.382519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888111, 43.195923, 43.189457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674477, 42.864090, 43.254639>,  <33.546295, 42.664989, 43.293747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674477, 42.864090, 43.254639>,  <33.888111, 43.195923, 43.189457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674477, 42.864090, 43.254639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420280, -0.427763, -0.800240,
		0.733568, -0.358909, 0.577116,
		-0.534082, -0.829581, 0.162951,
		33.514252, 42.615215, 43.303524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.305748, 39.761684, 28.958828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.987656, 40.002663, 28.931515>,  <44.796799, 40.147251, 28.915127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.987656, 40.002663, 28.931515>,  <45.305748, 39.761684, 28.958828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987656, 40.002663, 28.931515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163740, -0.104963, 0.980904,
		0.583773, 0.791229, 0.182114,
		-0.795234, 0.602445, -0.068281,
		44.749084, 40.183395, 28.911030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226715, 40.233898, 29.628824>,  <45.305748, 39.761684, 28.958828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226715, 40.233898, 29.628824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866314, 40.217773, 29.456049>,  <44.650074, 40.208099, 29.352385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866314, 40.217773, 29.456049>,  <45.226715, 40.233898, 29.628824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866314, 40.217773, 29.456049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377852, -0.416227, 0.827032,
		-0.213127, 0.908366, 0.359788,
		-0.901002, -0.040316, -0.431938,
		44.596012, 40.205677, 29.326468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747253, 40.633999, 30.125610>,  <45.226715, 40.233898, 29.628824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747253, 40.633999, 30.125610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.550129, 40.370430, 29.898293>,  <44.431854, 40.212288, 29.761902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.550129, 40.370430, 29.898293>,  <44.747253, 40.633999, 30.125610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550129, 40.370430, 29.898293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504413, -0.315844, 0.803623,
		-0.709016, 0.682692, -0.176715,
		-0.492813, -0.658919, -0.568297,
		44.402287, 40.172752, 29.727804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057911, 40.632191, 30.374348>,  <44.747253, 40.633999, 30.125610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057911, 40.632191, 30.374348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.065735, 40.290314, 30.166838>,  <44.070431, 40.085190, 30.042332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.065735, 40.290314, 30.166838>,  <44.057911, 40.632191, 30.374348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065735, 40.290314, 30.166838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564811, -0.437592, 0.699645,
		-0.824989, 0.279323, -0.491297,
		0.019561, -0.854688, -0.518773,
		44.071602, 40.033909, 30.011206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337906, 40.293987, 30.487146>,  <44.057911, 40.632191, 30.374348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337906, 40.293987, 30.487146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590561, 40.011959, 30.358212>,  <43.742153, 39.842743, 30.280851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590561, 40.011959, 30.358212>,  <43.337906, 40.293987, 30.487146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590561, 40.011959, 30.358212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389815, -0.648241, 0.654086,
		-0.670134, -0.287492, -0.684302,
		0.631637, -0.705076, -0.322340,
		43.780052, 39.800438, 30.261511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869602, 39.645752, 30.296852>,  <43.337906, 40.293987, 30.487146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869602, 39.645752, 30.296852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242889, 39.510975, 30.346762>,  <43.466862, 39.430111, 30.376707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242889, 39.510975, 30.346762>,  <42.869602, 39.645752, 30.296852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242889, 39.510975, 30.346762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344944, -0.742993, 0.573564,
		-0.100552, -0.578302, -0.809603,
		0.933222, -0.336940, 0.124772,
		43.522858, 39.409893, 30.384193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803604, 38.872055, 30.131584>,  <42.869602, 39.645752, 30.296852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803604, 38.872055, 30.131584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.130215, 38.966228, 30.342434>,  <43.326180, 39.022732, 30.468943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.130215, 38.966228, 30.342434>,  <42.803604, 38.872055, 30.131584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130215, 38.966228, 30.342434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149312, -0.795876, 0.586760,
		0.557668, -0.557809, -0.614699,
		0.816525, 0.235435, 0.527122,
		43.375172, 39.036858, 30.500570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233589, 38.283394, 30.198879>,  <42.803604, 38.872055, 30.131584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233589, 38.283394, 30.198879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326946, 38.506065, 30.517786>,  <43.382961, 38.639668, 30.709131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326946, 38.506065, 30.517786>,  <43.233589, 38.283394, 30.198879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326946, 38.506065, 30.517786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104352, -0.800838, 0.589719,
		0.966767, -0.220833, -0.128819,
		0.233392, 0.556678, 0.797269,
		43.396965, 38.673069, 30.756968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626915, 37.794102, 30.644413>,  <43.233589, 38.283394, 30.198879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626915, 37.794102, 30.644413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557568, 38.115185, 30.872660>,  <43.515957, 38.307835, 31.009607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557568, 38.115185, 30.872660>,  <43.626915, 37.794102, 30.644413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557568, 38.115185, 30.872660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028978, -0.574982, 0.817653,
		0.984430, 0.158294, 0.076426,
		-0.173373, 0.802707, 0.570617,
		43.505554, 38.355995, 31.043844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042797, 37.685120, 31.177006>,  <43.626915, 37.794102, 30.644413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042797, 37.685120, 31.177006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.791950, 37.960403, 31.322933>,  <43.641441, 38.125576, 31.410490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.791950, 37.960403, 31.322933>,  <44.042797, 37.685120, 31.177006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791950, 37.960403, 31.322933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152199, -0.567594, 0.809119,
		0.763914, 0.451884, 0.460691,
		-0.627113, 0.688214, 0.364816,
		43.603817, 38.166866, 31.432379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294868, 37.859997, 31.861732>,  <44.042797, 37.685120, 31.177006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294868, 37.859997, 31.861732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.902821, 37.933414, 31.831583>,  <43.667591, 37.977467, 31.813494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.902821, 37.933414, 31.831583>,  <44.294868, 37.859997, 31.861732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902821, 37.933414, 31.831583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160141, -0.507453, 0.846668,
		0.117152, 0.841904, 0.526757,
		-0.980117, 0.183545, -0.075374,
		43.608784, 37.988480, 31.808971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100365, 38.036823, 32.586155>,  <44.294868, 37.859997, 31.861732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100365, 38.036823, 32.586155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751602, 37.978951, 32.399033>,  <43.542343, 37.944225, 32.286758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751602, 37.978951, 32.399033>,  <44.100365, 38.036823, 32.586155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751602, 37.978951, 32.399033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381806, -0.397293, 0.834495,
		-0.306596, 0.906214, 0.291161,
		-0.871908, -0.144685, -0.467807,
		43.490028, 37.935543, 32.258690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552475, 38.274506, 33.038403>,  <44.100365, 38.036823, 32.586155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552475, 38.274506, 33.038403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342503, 38.052872, 32.779964>,  <43.216518, 37.919891, 32.624901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342503, 38.052872, 32.779964>,  <43.552475, 38.274506, 33.038403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342503, 38.052872, 32.779964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609449, -0.285211, 0.739747,
		-0.594155, 0.782079, -0.187969,
		-0.524930, -0.554082, -0.646097,
		43.185024, 37.886646, 32.586136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834732, 38.340252, 33.236874>,  <43.552475, 38.274506, 33.038403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834732, 38.340252, 33.236874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.855392, 37.986649, 33.051033>,  <42.867790, 37.774487, 32.939529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.855392, 37.986649, 33.051033>,  <42.834732, 38.340252, 33.236874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855392, 37.986649, 33.051033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561830, -0.410343, 0.718307,
		-0.825638, 0.223922, -0.517861,
		0.051656, -0.884012, -0.464602,
		42.870888, 37.721443, 32.911652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146305, 38.105217, 33.229012>,  <42.834732, 38.340252, 33.236874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146305, 38.105217, 33.229012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367928, 37.775177, 33.184772>,  <42.500900, 37.577152, 33.158230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367928, 37.775177, 33.184772>,  <42.146305, 38.105217, 33.229012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367928, 37.775177, 33.184772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426169, -0.395247, 0.813732,
		-0.715127, -0.403715, -0.570620,
		0.554052, -0.825102, -0.110601,
		42.534142, 37.527645, 33.151592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726479, 37.779922, 33.619774>,  <42.146305, 38.105217, 33.229012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726479, 37.779922, 33.619774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047497, 37.546230, 33.571445>,  <42.240108, 37.406013, 33.542450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047497, 37.546230, 33.571445>,  <41.726479, 37.779922, 33.619774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047497, 37.546230, 33.571445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234872, -0.495565, 0.836212,
		-0.548417, -0.642718, -0.534932,
		0.802542, -0.584234, -0.120820,
		42.288261, 37.370960, 33.535202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539188, 37.080833, 33.817738>,  <41.726479, 37.779922, 33.619774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539188, 37.080833, 33.817738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934753, 37.101490, 33.873428>,  <42.172092, 37.113884, 33.906845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934753, 37.101490, 33.873428>,  <41.539188, 37.080833, 33.817738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934753, 37.101490, 33.873428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125315, -0.212834, 0.969019,
		0.079676, -0.975723, -0.204003,
		0.988912, 0.051643, 0.139231,
		42.231426, 37.116982, 33.915199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667091, 36.569485, 34.262276>,  <41.539188, 37.080833, 33.817738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667091, 36.569485, 34.262276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996269, 36.795692, 34.284008>,  <42.193775, 36.931419, 34.297047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996269, 36.795692, 34.284008>,  <41.667091, 36.569485, 34.262276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996269, 36.795692, 34.284008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050733, -0.168393, 0.984413,
		0.565855, -0.807359, -0.167269,
		0.822942, 0.565522, 0.054327,
		42.243153, 36.965347, 34.300304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019844, 36.293045, 34.852932>,  <41.667091, 36.569485, 34.262276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019844, 36.293045, 34.852932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.204449, 36.644615, 34.804764>,  <42.315212, 36.855556, 34.775864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.204449, 36.644615, 34.804764>,  <42.019844, 36.293045, 34.852932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204449, 36.644615, 34.804764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004810, 0.138217, 0.990390,
		0.887122, -0.456495, 0.068016,
		0.461509, 0.878924, -0.120420,
		42.342903, 36.908291, 34.768639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536957, 36.314419, 35.384384>,  <42.019844, 36.293045, 34.852932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536957, 36.314419, 35.384384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501518, 36.697002, 35.273151>,  <42.480255, 36.926552, 35.206413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501518, 36.697002, 35.273151>,  <42.536957, 36.314419, 35.384384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501518, 36.697002, 35.273151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053411, 0.283341, 0.957531,
		0.994634, 0.069984, -0.076190,
		-0.088600, 0.956462, -0.278083,
		42.474937, 36.983940, 35.189728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029629, 36.683426, 35.639038>,  <42.536957, 36.314419, 35.384384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029629, 36.683426, 35.639038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757339, 36.971123, 35.583450>,  <42.593967, 37.143742, 35.550098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757339, 36.971123, 35.583450>,  <43.029629, 36.683426, 35.639038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757339, 36.971123, 35.583450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127874, 0.303472, 0.944221,
		0.721295, 0.624981, -0.298552,
		-0.680722, 0.719239, -0.138974,
		42.553123, 37.186893, 35.541759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179810, 35.948029, 35.333614>,  <43.029629, 36.683426, 35.639038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179810, 35.948029, 35.333614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039360, 36.131912, 35.659897>,  <42.955090, 36.242241, 35.855667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039360, 36.131912, 35.659897>,  <43.179810, 35.948029, 35.333614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039360, 36.131912, 35.659897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608222, -0.550366, 0.571982,
		0.711883, 0.696969, -0.086357,
		-0.351126, 0.459708, 0.815708,
		42.934021, 36.269825, 35.904610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887539, 36.145550, 35.490520>,  <43.179810, 35.948029, 35.333614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887539, 36.145550, 35.490520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218430, 35.924416, 35.530636>,  <44.416965, 35.791733, 35.554707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218430, 35.924416, 35.530636>,  <43.887539, 36.145550, 35.490520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218430, 35.924416, 35.530636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541932, 0.737955, -0.402160,
		0.148321, 0.387029, 0.910060,
		0.827231, -0.552839, 0.100289,
		44.466599, 35.758564, 35.560722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364777, 36.650429, 35.752300>,  <43.887539, 36.145550, 35.490520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364777, 36.650429, 35.752300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579113, 36.349323, 35.599346>,  <44.707714, 36.168659, 35.507576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579113, 36.349323, 35.599346>,  <44.364777, 36.650429, 35.752300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579113, 36.349323, 35.599346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629537, 0.658006, -0.413172,
		0.562630, -0.019327, 0.826483,
		0.535846, -0.752764, -0.382381,
		44.739868, 36.123493, 35.484631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990784, 36.817158, 35.847584>,  <44.364777, 36.650429, 35.752300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990784, 36.817158, 35.847584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.046135, 36.551575, 35.553642>,  <45.079346, 36.392223, 35.377277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.046135, 36.551575, 35.553642>,  <44.990784, 36.817158, 35.847584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046135, 36.551575, 35.553642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493327, 0.689600, -0.530170,
		0.858766, -0.289157, 0.422976,
		0.138382, -0.663958, -0.734854,
		45.087650, 36.352386, 35.333187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763268, 36.784035, 35.663864>,  <44.990784, 36.817158, 35.847584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763268, 36.784035, 35.663864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.555771, 36.671619, 35.340897>,  <45.431271, 36.604168, 35.147118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.555771, 36.671619, 35.340897>,  <45.763268, 36.784035, 35.663864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555771, 36.671619, 35.340897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545129, 0.618797, -0.565619,
		0.658591, -0.733556, -0.167791,
		-0.518742, -0.281044, -0.807417,
		45.400146, 36.587307, 35.098671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198063, 36.502449, 35.111080>,  <45.763268, 36.784035, 35.663864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198063, 36.502449, 35.111080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877018, 36.626419, 34.907215>,  <45.684391, 36.700802, 34.784897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877018, 36.626419, 34.907215>,  <46.198063, 36.502449, 35.111080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877018, 36.626419, 34.907215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595728, 0.460011, -0.658405,
		0.030393, -0.832066, -0.553843,
		-0.802611, 0.309929, -0.509666,
		45.636234, 36.719398, 34.754314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.461952, 36.696369, 34.500034>,  <46.198063, 36.502449, 35.111080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.461952, 36.696369, 34.500034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095520, 36.823006, 34.401596>,  <45.875660, 36.898987, 34.342533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095520, 36.823006, 34.401596>,  <46.461952, 36.696369, 34.500034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095520, 36.823006, 34.401596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400952, 0.714892, -0.572858,
		-0.005425, -0.623459, -0.781837,
		-0.916083, 0.316587, -0.246098,
		45.820694, 36.917980, 34.327766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469143, 36.870068, 33.815193>,  <46.461952, 36.696369, 34.500034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469143, 36.870068, 33.815193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.136017, 37.051735, 33.941776>,  <45.936142, 37.160736, 34.017727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.136017, 37.051735, 33.941776>,  <46.469143, 36.870068, 33.815193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136017, 37.051735, 33.941776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160372, 0.745134, -0.647346,
		-0.529811, -0.488368, -0.693395,
		-0.832816, 0.454172, 0.316459,
		45.886173, 37.187988, 34.036713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.112347, 37.143009, 33.240997>,  <46.469143, 36.870068, 33.815193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.112347, 37.143009, 33.240997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008217, 37.373337, 33.551010>,  <45.945740, 37.511532, 33.737019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008217, 37.373337, 33.551010>,  <46.112347, 37.143009, 33.240997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008217, 37.373337, 33.551010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157266, 0.817272, -0.554377,
		-0.952628, -0.022432, -0.303311,
		-0.260324, 0.575815, 0.775028,
		45.930119, 37.546082, 33.783520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619732, 37.588814, 32.992836>,  <46.112347, 37.143009, 33.240997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619732, 37.588814, 32.992836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738350, 37.760635, 33.334023>,  <45.809521, 37.863728, 33.538734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738350, 37.760635, 33.334023>,  <45.619732, 37.588814, 32.992836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738350, 37.760635, 33.334023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135850, 0.865082, -0.482886,
		-0.945306, 0.259074, 0.198183,
		0.296548, 0.429552, 0.852962,
		45.827312, 37.889500, 33.589912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243423, 38.161667, 33.009289>,  <45.619732, 37.588814, 32.992836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243423, 38.161667, 33.009289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.550945, 38.235847, 33.254089>,  <45.735458, 38.280354, 33.400970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.550945, 38.235847, 33.254089>,  <45.243423, 38.161667, 33.009289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550945, 38.235847, 33.254089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048979, 0.937139, -0.345503,
		-0.637602, 0.295600, 0.711396,
		0.768807, 0.185450, 0.612000,
		45.781586, 38.291481, 33.437691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141430, 38.789066, 33.449829>,  <45.243423, 38.161667, 33.009289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141430, 38.789066, 33.449829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531502, 38.714989, 33.401295>,  <45.765545, 38.670544, 33.372173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531502, 38.714989, 33.401295>,  <45.141430, 38.789066, 33.449829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531502, 38.714989, 33.401295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127880, 0.918508, -0.374151,
		0.180735, 0.349350, 0.919396,
		0.975183, -0.185195, -0.121332,
		45.824059, 38.659431, 33.364895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523991, 39.369141, 33.622917>,  <45.141430, 38.789066, 33.449829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523991, 39.369141, 33.622917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762077, 39.169964, 33.370640>,  <45.904930, 39.050457, 33.219273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762077, 39.169964, 33.370640>,  <45.523991, 39.369141, 33.622917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762077, 39.169964, 33.370640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261091, 0.862121, -0.434257,
		0.759965, 0.093810, 0.643158,
		0.595218, -0.497943, -0.630689,
		45.940643, 39.020580, 33.181435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858540, 39.835434, 33.382755>,  <45.523991, 39.369141, 33.622917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858540, 39.835434, 33.382755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.969482, 39.572971, 33.102032>,  <46.036049, 39.415493, 32.933598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.969482, 39.572971, 33.102032>,  <45.858540, 39.835434, 33.382755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969482, 39.572971, 33.102032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215194, 0.754335, -0.620218,
		0.936358, 0.020994, 0.350417,
		0.277353, -0.656154, -0.701810,
		46.052689, 39.376125, 32.891487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473183, 40.067665, 33.044510>,  <45.858540, 39.835434, 33.382755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473183, 40.067665, 33.044510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.364750, 39.806416, 32.761684>,  <46.299690, 39.649666, 32.591988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.364750, 39.806416, 32.761684>,  <46.473183, 40.067665, 33.044510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364750, 39.806416, 32.761684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288703, 0.645581, -0.707019,
		0.918240, -0.395791, 0.013554,
		-0.271082, -0.653126, -0.707065,
		46.283424, 39.610477, 32.549564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.982361, 40.046513, 32.592907>,  <46.473183, 40.067665, 33.044510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.982361, 40.046513, 32.592907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679253, 39.892559, 32.382137>,  <46.497387, 39.800186, 32.255676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679253, 39.892559, 32.382137>,  <46.982361, 40.046513, 32.592907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679253, 39.892559, 32.382137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181874, 0.650941, -0.737019,
		0.626666, -0.654323, -0.423262,
		-0.757768, -0.384884, -0.526927,
		46.451923, 39.777096, 32.224060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.284515, 39.943180, 31.911022>,  <46.982361, 40.046513, 32.592907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.284515, 39.943180, 31.911022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.887604, 39.979580, 31.877337>,  <46.649456, 40.001419, 31.857126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.887604, 39.979580, 31.877337>,  <47.284515, 39.943180, 31.911022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887604, 39.979580, 31.877337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121122, 0.566276, -0.815268,
		-0.026503, -0.819177, -0.572928,
		-0.992284, 0.091001, -0.084213,
		46.589920, 40.006882, 31.852072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.172985, 40.021946, 31.115404>,  <47.284515, 39.943180, 31.911022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.172985, 40.021946, 31.115404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.854610, 40.147125, 31.322691>,  <46.663586, 40.222233, 31.447063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.854610, 40.147125, 31.322691>,  <47.172985, 40.021946, 31.115404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854610, 40.147125, 31.322691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130560, 0.747136, -0.651722,
		-0.591139, -0.586386, -0.553811,
		-0.795933, 0.312953, 0.518219,
		46.615829, 40.241013, 31.478157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633186, 40.202694, 30.625980>,  <47.172985, 40.021946, 31.115404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633186, 40.202694, 30.625980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.484688, 40.378418, 30.953196>,  <46.395588, 40.483852, 31.149525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.484688, 40.378418, 30.953196>,  <46.633186, 40.202694, 30.625980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.484688, 40.378418, 30.953196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304708, 0.774569, -0.554252,
		-0.877115, -0.455025, -0.153693,
		-0.371244, 0.439312, 0.818036,
		46.373314, 40.510212, 31.198606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975372, 40.446281, 30.463303>,  <46.633186, 40.202694, 30.625980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975372, 40.446281, 30.463303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.071056, 40.666828, 30.782995>,  <46.128468, 40.799156, 30.974812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.071056, 40.666828, 30.782995>,  <45.975372, 40.446281, 30.463303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071056, 40.666828, 30.782995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266898, 0.828758, -0.491859,
		-0.933566, -0.095658, 0.345403,
		0.239205, 0.551371, 0.799232,
		46.142818, 40.832241, 31.022764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412636, 40.920578, 30.649954>,  <45.975372, 40.446281, 30.463303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412636, 40.920578, 30.649954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746849, 41.090137, 30.789776>,  <45.947376, 41.191875, 30.873669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746849, 41.090137, 30.789776>,  <45.412636, 40.920578, 30.649954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746849, 41.090137, 30.789776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330952, 0.896133, -0.295662,
		-0.438579, 0.131350, 0.889042,
		0.835535, 0.423901, 0.349555,
		45.997509, 41.217308, 30.894642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.263737, 42.508156, 39.277210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050079, 42.171974, 39.313732>,  <37.921886, 41.970264, 39.335644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050079, 42.171974, 39.313732>,  <38.263737, 42.508156, 39.277210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050079, 42.171974, 39.313732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639339, -0.472248, -0.606818,
		0.553117, -0.265755, 0.789580,
		-0.534142, -0.840450, 0.091301,
		37.889835, 41.919838, 39.341122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704781, 42.010075, 39.346478>,  <38.263737, 42.508156, 39.277210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704781, 42.010075, 39.346478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384365, 41.808609, 39.217075>,  <38.192116, 41.687729, 39.139435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384365, 41.808609, 39.217075>,  <38.704781, 42.010075, 39.346478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384365, 41.808609, 39.217075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591951, -0.586100, -0.553247,
		0.089048, -0.634670, 0.767636,
		-0.801040, -0.503668, -0.323502,
		38.144054, 41.657509, 39.120026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969475, 41.390938, 39.395298>,  <38.704781, 42.010075, 39.346478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969475, 41.390938, 39.395298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659603, 41.392162, 39.142361>,  <38.473679, 41.392899, 38.990597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659603, 41.392162, 39.142361>,  <38.969475, 41.390938, 39.395298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659603, 41.392162, 39.142361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466839, -0.671742, -0.575173,
		-0.426536, -0.740779, 0.518955,
		-0.774679, 0.003063, -0.632347,
		38.427200, 41.393082, 38.952656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724400, 40.668922, 39.225746>,  <38.969475, 41.390938, 39.395298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724400, 40.668922, 39.225746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595234, 40.876511, 38.909164>,  <38.517735, 41.001064, 38.719215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595234, 40.876511, 38.909164>,  <38.724400, 40.668922, 39.225746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595234, 40.876511, 38.909164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202520, -0.778993, -0.593427,
		-0.924508, -0.351909, 0.146442,
		-0.322910, 0.518971, -0.791453,
		38.498360, 41.032204, 38.671730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258102, 40.195824, 38.850189>,  <38.724400, 40.668922, 39.225746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258102, 40.195824, 38.850189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374649, 40.479134, 38.592987>,  <38.444576, 40.649120, 38.438667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374649, 40.479134, 38.592987>,  <38.258102, 40.195824, 38.850189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374649, 40.479134, 38.592987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147452, -0.697388, -0.701361,
		-0.945177, 0.109545, -0.307635,
		0.291371, 0.708273, -0.643003,
		38.462059, 40.691616, 38.400085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729240, 40.175858, 38.364361>,  <38.258102, 40.195824, 38.850189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729240, 40.175858, 38.364361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060246, 40.349747, 38.222240>,  <38.258850, 40.454079, 38.136971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060246, 40.349747, 38.222240>,  <37.729240, 40.175858, 38.364361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060246, 40.349747, 38.222240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000885, -0.633840, -0.773464,
		-0.561443, 0.639739, -0.524897,
		0.827515, 0.434720, -0.355298,
		38.308498, 40.480164, 38.115650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629635, 40.053814, 37.725437>,  <37.729240, 40.175858, 38.364361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629635, 40.053814, 37.725437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021523, 40.130306, 37.749390>,  <38.256653, 40.176201, 37.763760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021523, 40.130306, 37.749390>,  <37.629635, 40.053814, 37.725437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021523, 40.130306, 37.749390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177263, -0.687699, -0.704023,
		-0.093453, 0.700357, -0.707649,
		0.979717, 0.191233, 0.059880,
		38.315437, 40.187675, 37.767353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862576, 39.997120, 37.018093>,  <37.629635, 40.053814, 37.725437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862576, 39.997120, 37.018093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175232, 39.938713, 37.260651>,  <38.362827, 39.903671, 37.406185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175232, 39.938713, 37.260651>,  <37.862576, 39.997120, 37.018093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175232, 39.938713, 37.260651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364731, -0.681664, -0.634275,
		0.505971, 0.716948, -0.479562,
		0.781642, -0.146013, 0.606396,
		38.409725, 39.894909, 37.442570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529377, 40.090763, 36.580418>,  <37.862576, 39.997120, 37.018093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529377, 40.090763, 36.580418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642353, 39.877037, 36.899097>,  <38.710140, 39.748802, 37.090305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642353, 39.877037, 36.899097>,  <38.529377, 40.090763, 36.580418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642353, 39.877037, 36.899097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485697, -0.636545, -0.599090,
		0.827240, 0.556164, 0.079727,
		0.282442, -0.534314, 0.796702,
		38.727085, 39.716743, 37.138107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276394, 39.954548, 36.417610>,  <38.529377, 40.090763, 36.580418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276394, 39.954548, 36.417610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134331, 39.689125, 36.680992>,  <39.049095, 39.529873, 36.839020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134331, 39.689125, 36.680992>,  <39.276394, 39.954548, 36.417610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134331, 39.689125, 36.680992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345812, -0.747665, -0.566931,
		0.868493, 0.026354, 0.495000,
		-0.355154, -0.663553, 0.658455,
		39.027786, 39.490059, 36.878529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837738, 39.475853, 36.549217>,  <39.276394, 39.954548, 36.417610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837738, 39.475853, 36.549217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499409, 39.282623, 36.639748>,  <39.296413, 39.166683, 36.694065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499409, 39.282623, 36.639748>,  <39.837738, 39.475853, 36.549217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499409, 39.282623, 36.639748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332523, -0.809170, -0.484429,
		0.417152, -0.334482, 0.845048,
		-0.845821, -0.483078, 0.226324,
		39.245663, 39.137699, 36.707645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098366, 38.847141, 36.697815>,  <39.837738, 39.475853, 36.549217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098366, 38.847141, 36.697815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704304, 38.802929, 36.645275>,  <39.467865, 38.776402, 36.613750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704304, 38.802929, 36.645275>,  <40.098366, 38.847141, 36.697815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704304, 38.802929, 36.645275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160262, -0.866406, -0.472924,
		-0.061533, -0.486954, 0.871257,
		-0.985155, -0.110529, -0.131353,
		39.408756, 38.769772, 36.605869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965282, 38.188522, 36.941273>,  <40.098366, 38.847141, 36.697815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965282, 38.188522, 36.941273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664379, 38.283333, 36.695370>,  <39.483837, 38.340221, 36.547829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664379, 38.283333, 36.695370>,  <39.965282, 38.188522, 36.941273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664379, 38.283333, 36.695370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024504, -0.942469, -0.333395,
		-0.658416, -0.235734, 0.714785,
		-0.752255, 0.237028, -0.614760,
		39.438702, 38.354443, 36.510941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115345, 37.493050, 37.135109>,  <39.965282, 38.188522, 36.941273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115345, 37.493050, 37.135109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960789, 37.126659, 37.178341>,  <39.868053, 36.906826, 37.204281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960789, 37.126659, 37.178341>,  <40.115345, 37.493050, 37.135109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960789, 37.126659, 37.178341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562934, 0.327026, 0.759051,
		-0.730619, 0.232454, -0.641998,
		-0.386394, -0.915980, 0.108076,
		39.844872, 36.851864, 37.210762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289558, 37.476276, 37.052853>,  <40.115345, 37.493050, 37.135109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289558, 37.476276, 37.052853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416229, 37.161453, 37.264606>,  <39.492233, 36.972557, 37.391659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416229, 37.161453, 37.264606>,  <39.289558, 37.476276, 37.052853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416229, 37.161453, 37.264606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797605, 0.081098, 0.597703,
		-0.513362, -0.611520, -0.602082,
		0.316680, -0.787062, 0.529384,
		39.511234, 36.925335, 37.423420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754906, 36.919991, 37.116428>,  <39.289558, 37.476276, 37.052853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754906, 36.919991, 37.116428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990578, 36.876083, 37.436634>,  <39.131981, 36.849739, 37.628757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990578, 36.876083, 37.436634>,  <38.754906, 36.919991, 37.116428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990578, 36.876083, 37.436634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782491, 0.169490, 0.599151,
		-0.201445, -0.979400, 0.013970,
		0.589176, -0.109764, 0.800515,
		39.167332, 36.843155, 37.676788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462238, 36.428791, 37.495853>,  <38.754906, 36.919991, 37.116428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462238, 36.428791, 37.495853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696060, 36.632900, 37.748177>,  <38.836353, 36.755363, 37.899570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696060, 36.632900, 37.748177>,  <38.462238, 36.428791, 37.495853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696060, 36.632900, 37.748177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761665, 0.077207, 0.643355,
		0.279581, -0.856542, 0.433786,
		0.584552, 0.510270, 0.630812,
		38.871426, 36.785980, 37.937420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125557, 36.238987, 38.142281>,  <38.462238, 36.428791, 37.495853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125557, 36.238987, 38.142281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393265, 36.508015, 38.268597>,  <38.553890, 36.669434, 38.344387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393265, 36.508015, 38.268597>,  <38.125557, 36.238987, 38.142281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393265, 36.508015, 38.268597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489304, 0.079104, 0.868518,
		0.559161, -0.735791, 0.382035,
		0.669268, 0.672573, 0.315794,
		38.594044, 36.709785, 38.363335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501087, 36.079014, 38.797657>,  <38.125557, 36.238987, 38.142281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501087, 36.079014, 38.797657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507088, 36.477097, 38.758995>,  <38.510689, 36.715946, 38.735798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507088, 36.477097, 38.758995>,  <38.501087, 36.079014, 38.797657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507088, 36.477097, 38.758995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301298, 0.096675, 0.948617,
		0.953412, 0.014893, 0.301304,
		0.015000, 0.995205, -0.096658,
		38.511589, 36.775658, 38.729996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804420, 36.289158, 39.422398>,  <38.501087, 36.079014, 38.797657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804420, 36.289158, 39.422398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601330, 36.601856, 39.277573>,  <38.479473, 36.789474, 39.190678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601330, 36.601856, 39.277573>,  <38.804420, 36.289158, 39.422398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601330, 36.601856, 39.277573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310829, 0.225727, 0.923273,
		0.803489, 0.581313, 0.128380,
		-0.507731, 0.781743, -0.362059,
		38.449009, 36.836380, 39.168957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839748, 36.826981, 39.941711>,  <38.804420, 36.289158, 39.422398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839748, 36.826981, 39.941711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551929, 36.997524, 39.722450>,  <38.379238, 37.099850, 39.590893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551929, 36.997524, 39.722450>,  <38.839748, 36.826981, 39.941711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551929, 36.997524, 39.722450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234955, 0.593316, 0.769917,
		0.653489, 0.682782, -0.326744,
		-0.719548, 0.426362, -0.548148,
		38.336063, 37.125431, 39.558006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845928, 37.534912, 40.084038>,  <38.839748, 36.826981, 39.941711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845928, 37.534912, 40.084038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483551, 37.478493, 39.924347>,  <38.266125, 37.444641, 39.828533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483551, 37.478493, 39.924347>,  <38.845928, 37.534912, 40.084038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483551, 37.478493, 39.924347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387579, 0.655853, 0.647796,
		0.170464, 0.741595, -0.648829,
		-0.905939, -0.141047, -0.399226,
		38.211769, 37.436180, 39.804581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585239, 38.158489, 39.999596>,  <38.845928, 37.534912, 40.084038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585239, 38.158489, 39.999596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264538, 37.919998, 40.016087>,  <38.072117, 37.776905, 40.025982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264538, 37.919998, 40.016087>,  <38.585239, 38.158489, 39.999596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264538, 37.919998, 40.016087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452671, 0.650860, 0.609484,
		-0.390223, 0.469996, -0.791726,
		-0.801757, -0.596226, 0.041227,
		38.024010, 37.741131, 40.028454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991047, 38.555244, 39.788136>,  <38.585239, 38.158489, 39.999596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991047, 38.555244, 39.788136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825962, 38.252438, 39.990757>,  <37.726910, 38.070755, 40.112331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825962, 38.252438, 39.990757>,  <37.991047, 38.555244, 39.788136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825962, 38.252438, 39.990757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483372, 0.653385, 0.582615,
		-0.772021, -0.004399, -0.635582,
		-0.412716, -0.757013, 0.506553,
		37.702148, 38.025333, 40.142723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344067, 38.753937, 39.867664>,  <37.991047, 38.555244, 39.788136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344067, 38.753937, 39.867664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377651, 38.452854, 40.128857>,  <37.397800, 38.272205, 40.285572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377651, 38.452854, 40.128857>,  <37.344067, 38.753937, 39.867664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377651, 38.452854, 40.128857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387278, 0.579127, 0.717375,
		-0.918132, -0.313115, -0.242885,
		0.083960, -0.752709, 0.652977,
		37.402840, 38.227043, 40.324749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763344, 38.758827, 40.228951>,  <37.344067, 38.753937, 39.867664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763344, 38.758827, 40.228951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983715, 38.534775, 40.476410>,  <37.115940, 38.400345, 40.624886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983715, 38.534775, 40.476410>,  <36.763344, 38.758827, 40.228951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983715, 38.534775, 40.476410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353363, 0.514997, 0.780969,
		-0.756048, -0.648868, 0.085798,
		0.550932, -0.560132, 0.618648,
		37.148994, 38.366734, 40.662006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341106, 38.549400, 40.774189>,  <36.763344, 38.758827, 40.228951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341106, 38.549400, 40.774189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714272, 38.519241, 40.915031>,  <36.938171, 38.501148, 40.999538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714272, 38.519241, 40.915031>,  <36.341106, 38.549400, 40.774189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714272, 38.519241, 40.915031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306521, 0.346886, 0.886406,
		-0.188973, -0.934872, 0.300506,
		0.932917, -0.075396, 0.352110,
		36.994148, 38.496624, 41.020664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297531, 38.218655, 41.511871>,  <36.341106, 38.549400, 40.774189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297531, 38.218655, 41.511871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661037, 38.385506, 41.516762>,  <36.879139, 38.485619, 41.519695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661037, 38.385506, 41.516762>,  <36.297531, 38.218655, 41.511871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661037, 38.385506, 41.516762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209726, 0.431194, 0.877546,
		0.360778, -0.800048, 0.479336,
		0.908766, 0.417129, 0.012225,
		36.933666, 38.510647, 41.520428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107834, 37.399681, 41.634575>,  <36.297531, 38.218655, 41.511871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107834, 37.399681, 41.634575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738453, 37.293152, 41.745075>,  <35.516827, 37.229233, 41.811375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738453, 37.293152, 41.745075>,  <36.107834, 37.399681, 41.634575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738453, 37.293152, 41.745075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179888, -0.335449, -0.924724,
		0.338946, -0.903629, 0.261860,
		-0.923448, -0.266326, 0.276251,
		35.461418, 37.213253, 41.827950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960320, 36.691483, 41.420521>,  <36.107834, 37.399681, 41.634575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960320, 36.691483, 41.420521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606258, 36.871948, 41.466038>,  <35.393822, 36.980228, 41.493347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606258, 36.871948, 41.466038>,  <35.960320, 36.691483, 41.420521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606258, 36.871948, 41.466038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282108, -0.325896, -0.902334,
		-0.370023, -0.830805, 0.415747,
		-0.885154, 0.451170, 0.113788,
		35.340710, 37.007298, 41.500175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464088, 36.247368, 41.207558>,  <35.960320, 36.691483, 41.420521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464088, 36.247368, 41.207558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232117, 36.573215, 41.204216>,  <35.092934, 36.768726, 41.202209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232117, 36.573215, 41.204216>,  <35.464088, 36.247368, 41.207558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232117, 36.573215, 41.204216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400341, -0.293904, -0.867956,
		-0.709511, -0.500012, 0.496571,
		-0.579933, 0.814622, -0.008353,
		35.058136, 36.817600, 41.201710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826050, 35.972305, 41.165424>,  <35.464088, 36.247368, 41.207558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826050, 35.972305, 41.165424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788284, 36.350117, 41.039597>,  <34.765625, 36.576805, 40.964100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788284, 36.350117, 41.039597>,  <34.826050, 35.972305, 41.165424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788284, 36.350117, 41.039597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319550, -0.328013, -0.888985,
		-0.942854, 0.016591, 0.332792,
		-0.094411, 0.944527, -0.314570,
		34.759960, 36.633476, 40.945225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147568, 35.988487, 40.966267>,  <34.826050, 35.972305, 41.165424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147568, 35.988487, 40.966267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324238, 36.291012, 40.773224>,  <34.430241, 36.472527, 40.657398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324238, 36.291012, 40.773224>,  <34.147568, 35.988487, 40.966267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324238, 36.291012, 40.773224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342246, -0.355212, -0.869880,
		-0.829332, 0.549374, 0.101958,
		0.441674, 0.756315, -0.482610,
		34.456741, 36.517906, 40.628441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602291, 36.214195, 40.334969>,  <34.147568, 35.988487, 40.966267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602291, 36.214195, 40.334969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971493, 36.348576, 40.259930>,  <34.193016, 36.429203, 40.214905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971493, 36.348576, 40.259930>,  <33.602291, 36.214195, 40.334969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971493, 36.348576, 40.259930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051563, -0.375163, -0.925524,
		-0.381308, 0.863940, -0.328956,
		0.923009, 0.335948, -0.187601,
		34.248394, 36.449360, 40.203648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578022, 36.536484, 39.650841>,  <33.602291, 36.214195, 40.334969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578022, 36.536484, 39.650841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964134, 36.448555, 39.707279>,  <34.195801, 36.395798, 39.741142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964134, 36.448555, 39.707279>,  <33.578022, 36.536484, 39.650841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964134, 36.448555, 39.707279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021518, -0.471407, -0.881653,
		0.260322, 0.854080, -0.450311,
		0.965282, -0.219824, 0.141096,
		34.253719, 36.382607, 39.749607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844421, 36.654213, 39.040524>,  <33.578022, 36.536484, 39.650841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844421, 36.654213, 39.040524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120155, 36.427868, 39.221458>,  <34.285595, 36.292061, 39.330021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120155, 36.427868, 39.221458>,  <33.844421, 36.654213, 39.040524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120155, 36.427868, 39.221458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041677, -0.592389, -0.804574,
		0.723239, 0.573476, -0.384773,
		0.689339, -0.565862, 0.452339,
		34.326958, 36.258110, 39.357159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299496, 36.628632, 38.622204>,  <33.844421, 36.654213, 39.040524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299496, 36.628632, 38.622204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390633, 36.316345, 38.854954>,  <34.445312, 36.128975, 38.994602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390633, 36.316345, 38.854954>,  <34.299496, 36.628632, 38.622204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390633, 36.316345, 38.854954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147541, -0.563011, -0.813173,
		0.962456, 0.271124, -0.013090,
		0.227841, -0.780712, 0.581875,
		34.458984, 36.082130, 39.029514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887115, 36.242943, 38.306526>,  <34.299496, 36.628632, 38.622204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887115, 36.242943, 38.306526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737095, 35.964226, 38.551090>,  <34.647083, 35.796997, 38.697830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737095, 35.964226, 38.551090>,  <34.887115, 36.242943, 38.306526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737095, 35.964226, 38.551090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053036, -0.674603, -0.736273,
		0.925484, -0.243715, 0.289967,
		-0.375054, -0.696788, 0.611409,
		34.624580, 35.755188, 38.734512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300457, 35.718674, 38.133339>,  <34.887115, 36.242943, 38.306526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300457, 35.718674, 38.133339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978973, 35.559364, 38.310169>,  <34.786083, 35.463779, 38.416267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978973, 35.559364, 38.310169>,  <35.300457, 35.718674, 38.133339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978973, 35.559364, 38.310169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008618, -0.735083, -0.677922,
		0.594959, -0.548662, 0.587362,
		-0.803710, -0.398274, 0.442073,
		34.737862, 35.439880, 38.442791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354576, 34.950733, 38.278931>,  <35.300457, 35.718674, 38.133339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354576, 34.950733, 38.278931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963379, 35.010330, 38.220524>,  <34.728661, 35.046089, 38.185478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963379, 35.010330, 38.220524>,  <35.354576, 34.950733, 38.278931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963379, 35.010330, 38.220524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016367, -0.752572, -0.658306,
		-0.207972, -0.641432, 0.738453,
		-0.977998, 0.148996, -0.146016,
		34.669979, 35.055027, 38.176720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.007763, 37.202393, 45.408405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.650242, 37.374985, 45.359497>,  <35.435730, 37.478539, 45.330154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.650242, 37.374985, 45.359497>,  <36.007763, 37.202393, 45.408405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650242, 37.374985, 45.359497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139981, -0.527429, -0.837988,
		-0.426060, -0.731879, 0.531815,
		-0.893800, 0.431477, -0.122267,
		35.382103, 37.504429, 45.322815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440765, 36.612015, 45.183350>,  <36.007763, 37.202393, 45.408405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440765, 36.612015, 45.183350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.291134, 36.971504, 45.091824>,  <35.201355, 37.187199, 45.036907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.291134, 36.971504, 45.091824>,  <35.440765, 36.612015, 45.183350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291134, 36.971504, 45.091824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215165, -0.324101, -0.921229,
		-0.902093, -0.295376, 0.314613,
		-0.374076, 0.898728, -0.228814,
		35.178909, 37.241123, 45.023178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950695, 36.513748, 44.784763>,  <35.440765, 36.612015, 45.183350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950695, 36.513748, 44.784763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978340, 36.906643, 44.714985>,  <34.994926, 37.142380, 44.673119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.978340, 36.906643, 44.714985>,  <34.950695, 36.513748, 44.784763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978340, 36.906643, 44.714985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192937, -0.158405, -0.968340,
		-0.978774, 0.100580, 0.178563,
		0.069111, 0.982238, -0.174449,
		34.999073, 37.201313, 44.662651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379272, 36.852383, 44.396744>,  <34.950695, 36.513748, 44.784763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379272, 36.852383, 44.396744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.710567, 37.063259, 44.320755>,  <34.909344, 37.189785, 44.275162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.710567, 37.063259, 44.320755>,  <34.379272, 36.852383, 44.396744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710567, 37.063259, 44.320755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139629, -0.134170, -0.981072,
		-0.542699, 0.839089, -0.037513,
		0.828240, 0.527189, -0.189975,
		34.959038, 37.221416, 44.263763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249756, 37.207756, 43.816769>,  <34.379272, 36.852383, 44.396744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249756, 37.207756, 43.816769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649506, 37.204525, 43.830536>,  <34.889355, 37.202587, 43.838799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649506, 37.204525, 43.830536>,  <34.249756, 37.207756, 43.816769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649506, 37.204525, 43.830536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034566, 0.018290, -0.999235,
		0.007440, 0.999800, 0.018558,
		0.999375, -0.008076, 0.034423,
		34.949318, 37.202103, 43.840862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422237, 37.793381, 43.355484>,  <34.249756, 37.207756, 43.816769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422237, 37.793381, 43.355484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756878, 37.575565, 43.379402>,  <34.957664, 37.444878, 43.393753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756878, 37.575565, 43.379402>,  <34.422237, 37.793381, 43.355484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756878, 37.575565, 43.379402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096184, 0.038548, -0.994617,
		0.539299, 0.837851, 0.084625,
		0.836603, -0.544536, 0.059799,
		35.007858, 37.412205, 43.397343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964825, 38.169144, 43.092953>,  <34.422237, 37.793381, 43.355484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964825, 38.169144, 43.092953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.071251, 37.785892, 43.050610>,  <35.135109, 37.555943, 43.025204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.071251, 37.785892, 43.050610>,  <34.964825, 38.169144, 43.092953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071251, 37.785892, 43.050610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063560, 0.127010, -0.989863,
		0.961857, 0.256642, 0.094692,
		0.266068, -0.958125, -0.105853,
		35.151070, 37.498455, 43.018852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471367, 38.238762, 42.499413>,  <34.964825, 38.169144, 43.092953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471367, 38.238762, 42.499413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384743, 37.854828, 42.570759>,  <35.332767, 37.624466, 42.613567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384743, 37.854828, 42.570759>,  <35.471367, 38.238762, 42.499413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384743, 37.854828, 42.570759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095965, -0.160887, -0.982296,
		0.971541, -0.229845, -0.057268,
		-0.216562, -0.959837, 0.178365,
		35.319775, 37.566875, 42.624268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820564, 37.931019, 42.010494>,  <35.471367, 38.238762, 42.499413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820564, 37.931019, 42.010494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.562031, 37.644669, 42.116154>,  <35.406910, 37.472858, 42.179550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.562031, 37.644669, 42.116154>,  <35.820564, 37.931019, 42.010494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562031, 37.644669, 42.116154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036564, -0.316724, -0.947813,
		0.762179, -0.622261, 0.178534,
		-0.646333, -0.715875, 0.264153,
		35.368130, 37.429905, 42.195400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560959, 38.070831, 42.226433>,  <35.820564, 37.931019, 42.010494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560959, 38.070831, 42.226433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828709, 38.343258, 42.107716>,  <36.989361, 38.506714, 42.036488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828709, 38.343258, 42.107716>,  <36.560959, 38.070831, 42.226433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828709, 38.343258, 42.107716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253538, 0.584924, 0.770443,
		0.698322, -0.440469, 0.564210,
		0.669377, 0.681066, -0.296790,
		37.029522, 38.547577, 42.018681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954174, 38.257393, 42.773373>,  <36.560959, 38.070831, 42.226433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954174, 38.257393, 42.773373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.992306, 38.569321, 42.525894>,  <37.015186, 38.756477, 42.377407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.992306, 38.569321, 42.525894>,  <36.954174, 38.257393, 42.773373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992306, 38.569321, 42.525894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158658, 0.625487, 0.763933,
		0.982721, 0.025337, 0.183351,
		0.095328, 0.779823, -0.618699,
		37.020905, 38.803268, 42.340286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559742, 38.605339, 42.928894>,  <36.954174, 38.257393, 42.773373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559742, 38.605339, 42.928894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.315659, 38.872490, 42.758446>,  <37.169209, 39.032780, 42.656178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.315659, 38.872490, 42.758446>,  <37.559742, 38.605339, 42.928894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315659, 38.872490, 42.758446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157772, 0.629538, 0.760782,
		0.776370, 0.397008, -0.489524,
		-0.610211, 0.667882, -0.426118,
		37.132595, 39.072853, 42.630611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839722, 39.248871, 43.173576>,  <37.559742, 38.605339, 42.928894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839722, 39.248871, 43.173576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490536, 39.372425, 43.022568>,  <37.281025, 39.446560, 42.931961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490536, 39.372425, 43.022568>,  <37.839722, 39.248871, 43.173576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490536, 39.372425, 43.022568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094224, 0.652590, 0.751830,
		0.478597, 0.691892, -0.540584,
		-0.872965, 0.308887, -0.377520,
		37.228645, 39.465092, 42.909313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712795, 40.095253, 43.250572>,  <37.839722, 39.248871, 43.173576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712795, 40.095253, 43.250572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360271, 39.911293, 43.207134>,  <37.148758, 39.800919, 43.181072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360271, 39.911293, 43.207134>,  <37.712795, 40.095253, 43.250572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360271, 39.911293, 43.207134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423685, 0.667264, 0.612576,
		-0.209260, 0.585878, -0.782916,
		-0.881306, -0.459898, -0.108596,
		37.095879, 39.773323, 43.174557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269714, 40.684185, 43.207829>,  <37.712795, 40.095253, 43.250572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269714, 40.684185, 43.207829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.046692, 40.368374, 43.310421>,  <36.912880, 40.178886, 43.371975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.046692, 40.368374, 43.310421>,  <37.269714, 40.684185, 43.207829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046692, 40.368374, 43.310421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399057, 0.525825, 0.751173,
		-0.727934, 0.316469, -0.608242,
		-0.557553, -0.789528, 0.256477,
		36.879425, 40.131516, 43.387363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582668, 41.002693, 43.313225>,  <37.269714, 40.684185, 43.207829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582668, 41.002693, 43.313225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572109, 40.647758, 43.497372>,  <36.565773, 40.434799, 43.607861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572109, 40.647758, 43.497372>,  <36.582668, 41.002693, 43.313225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572109, 40.647758, 43.497372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395039, 0.432301, 0.810593,
		-0.918285, -0.160461, -0.361946,
		-0.026401, -0.887338, 0.460364,
		36.564190, 40.381557, 43.635483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878490, 40.799225, 43.513004>,  <36.582668, 41.002693, 43.313225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878490, 40.799225, 43.513004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124756, 40.624512, 43.775356>,  <36.272514, 40.519684, 43.932770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124756, 40.624512, 43.775356>,  <35.878490, 40.799225, 43.513004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124756, 40.624512, 43.775356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565356, 0.334982, 0.753764,
		-0.548937, -0.834872, -0.040700,
		0.615663, -0.436778, 0.655884,
		36.309456, 40.493477, 43.972122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407104, 40.444714, 44.011944>,  <35.878490, 40.799225, 43.513004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407104, 40.444714, 44.011944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766991, 40.475555, 44.183792>,  <35.982922, 40.494061, 44.286900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766991, 40.475555, 44.183792>,  <35.407104, 40.444714, 44.011944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766991, 40.475555, 44.183792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431063, 0.311631, 0.846800,
		-0.068589, -0.947069, 0.313616,
		0.899711, 0.077107, 0.429621,
		36.036903, 40.498688, 44.312679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303444, 40.246937, 44.700687>,  <35.407104, 40.444714, 44.011944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303444, 40.246937, 44.700687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659649, 40.428478, 44.713337>,  <35.873371, 40.537403, 44.720928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659649, 40.428478, 44.713337>,  <35.303444, 40.246937, 44.700687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659649, 40.428478, 44.713337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239616, 0.408790, 0.880611,
		0.386729, -0.791781, 0.472783,
		0.890519, 0.453845, 0.031632,
		35.926804, 40.564632, 44.722824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425663, 40.115299, 45.359097>,  <35.303444, 40.246937, 44.700687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425663, 40.115299, 45.359097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700447, 40.387264, 45.256496>,  <35.865318, 40.550446, 45.194935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700447, 40.387264, 45.256496>,  <35.425663, 40.115299, 45.359097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700447, 40.387264, 45.256496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022592, 0.332822, 0.942719,
		0.726340, -0.653409, 0.213276,
		0.686964, 0.679916, -0.256504,
		35.906536, 40.591240, 45.179546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037498, 39.998859, 45.802479>,  <35.425663, 40.115299, 45.359097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037498, 39.998859, 45.802479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008461, 40.376217, 45.673027>,  <35.991039, 40.602631, 45.595356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008461, 40.376217, 45.673027>,  <36.037498, 39.998859, 45.802479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008461, 40.376217, 45.673027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057597, 0.327914, 0.942950,
		0.995697, 0.049816, -0.078143,
		-0.072598, 0.943393, -0.323633,
		35.986683, 40.659233, 45.575935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327103, 40.353188, 46.294369>,  <36.037498, 39.998859, 45.802479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327103, 40.353188, 46.294369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.157578, 40.662319, 46.105431>,  <36.055862, 40.847797, 45.992065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.157578, 40.662319, 46.105431>,  <36.327103, 40.353188, 46.294369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157578, 40.662319, 46.105431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066902, 0.493367, 0.867244,
		0.903274, 0.399154, -0.157394,
		-0.423817, 0.772829, -0.472350,
		36.030434, 40.894169, 45.963726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641945, 41.043484, 46.456150>,  <36.327103, 40.353188, 46.294369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641945, 41.043484, 46.456150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269081, 41.138683, 46.347023>,  <36.045361, 41.195801, 46.281548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269081, 41.138683, 46.347023>,  <36.641945, 41.043484, 46.456150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269081, 41.138683, 46.347023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210986, 0.255268, 0.943569,
		0.294209, 0.937121, -0.187737,
		-0.932162, 0.237997, -0.272822,
		35.989433, 41.210083, 46.265175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.033064, 42.104946, 44.442776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184824, 41.803387, 44.657322>,  <31.275881, 41.622452, 44.786049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184824, 41.803387, 44.657322>,  <31.033064, 42.104946, 44.442776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184824, 41.803387, 44.657322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184032, -0.506635, -0.842290,
		0.906746, 0.418273, -0.053475,
		0.379400, -0.753902, 0.536365,
		31.298643, 41.577217, 44.818230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618292, 41.922844, 44.077736>,  <31.033064, 42.104946, 44.442776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618292, 41.922844, 44.077736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549650, 41.611435, 44.319218>,  <31.508465, 41.424591, 44.464108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549650, 41.611435, 44.319218>,  <31.618292, 41.922844, 44.077736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549650, 41.611435, 44.319218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318835, -0.623703, -0.713680,
		0.932146, 0.070012, 0.355248,
		-0.171603, -0.778520, 0.603705,
		31.498169, 41.377880, 44.500328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058605, 41.424355, 43.721642>,  <31.618292, 41.922844, 44.077736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058605, 41.424355, 43.721642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.829613, 41.208889, 43.968903>,  <31.692217, 41.079609, 44.117260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.829613, 41.208889, 43.968903>,  <32.058605, 41.424355, 43.721642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829613, 41.208889, 43.968903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086208, -0.789284, -0.607946,
		0.815374, -0.294748, 0.498286,
		-0.572480, -0.538660, 0.618152,
		31.657869, 41.047291, 44.154346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419861, 40.958290, 44.077473>,  <32.058605, 41.424355, 43.721642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419861, 40.958290, 44.077473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051155, 40.805363, 44.051579>,  <31.829933, 40.713608, 44.036041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051155, 40.805363, 44.051579>,  <32.419861, 40.958290, 44.077473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051155, 40.805363, 44.051579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337442, -0.708652, -0.619633,
		0.191019, -0.592999, 0.782217,
		-0.921762, -0.382315, -0.064737,
		31.774626, 40.690670, 44.032158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531437, 40.236816, 43.971104>,  <32.419861, 40.958290, 44.077473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531437, 40.236816, 43.971104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.166042, 40.315609, 43.828705>,  <31.946806, 40.362885, 43.743263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.166042, 40.315609, 43.828705>,  <32.531437, 40.236816, 43.971104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166042, 40.315609, 43.828705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151818, -0.646759, -0.747432,
		-0.377479, -0.736817, 0.560901,
		-0.913488, 0.196985, -0.356000,
		31.891996, 40.374706, 43.721905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344563, 39.597103, 43.673855>,  <32.531437, 40.236816, 43.971104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344563, 39.597103, 43.673855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089142, 39.869267, 43.530018>,  <31.935890, 40.032562, 43.443718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089142, 39.869267, 43.530018>,  <32.344563, 39.597103, 43.673855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089142, 39.869267, 43.530018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018507, -0.453541, -0.891043,
		-0.769359, -0.575629, 0.277016,
		-0.638549, 0.680405, -0.359589,
		31.897577, 40.073387, 43.422142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817146, 39.230736, 43.475079>,  <32.344563, 39.597103, 43.673855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817146, 39.230736, 43.475079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.784512, 39.571827, 43.268700>,  <31.764931, 39.776482, 43.144871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.784512, 39.571827, 43.268700>,  <31.817146, 39.230736, 43.475079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784512, 39.571827, 43.268700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013616, -0.518580, -0.854920,
		-0.996573, -0.062725, 0.053919,
		-0.081586, 0.852725, -0.515949,
		31.760036, 39.827644, 43.113914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316561, 39.109997, 42.915352>,  <31.817146, 39.230736, 43.475079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316561, 39.109997, 42.915352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505205, 39.440266, 42.791515>,  <31.618391, 39.638428, 42.717213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505205, 39.440266, 42.791515>,  <31.316561, 39.109997, 42.915352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505205, 39.440266, 42.791515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044911, -0.373124, -0.926694,
		-0.880663, 0.423133, -0.213051,
		0.471609, 0.825673, -0.309594,
		31.646688, 39.687969, 42.698639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039976, 39.330105, 42.284485>,  <31.316561, 39.109997, 42.915352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039976, 39.330105, 42.284485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.402903, 39.498215, 42.279644>,  <31.620659, 39.599083, 42.276737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.402903, 39.498215, 42.279644>,  <31.039976, 39.330105, 42.284485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402903, 39.498215, 42.279644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183127, -0.420931, -0.888415,
		-0.378476, 0.803856, -0.458881,
		0.907315, 0.420277, -0.012105,
		31.675097, 39.624298, 42.276012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060242, 39.719036, 41.689110>,  <31.039976, 39.330105, 42.284485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060242, 39.719036, 41.689110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.441910, 39.656151, 41.790970>,  <31.670910, 39.618420, 41.852085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.441910, 39.656151, 41.790970>,  <31.060242, 39.719036, 41.689110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441910, 39.656151, 41.790970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216180, -0.226331, -0.949758,
		0.206947, 0.961280, -0.181973,
		0.954170, -0.157211, 0.254648,
		31.728161, 39.608986, 41.867363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376383, 40.193108, 41.396481>,  <31.060242, 39.719036, 41.689110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376383, 40.193108, 41.396481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.629103, 39.887547, 41.449070>,  <31.780735, 39.704212, 41.480625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.629103, 39.887547, 41.449070>,  <31.376383, 40.193108, 41.396481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629103, 39.887547, 41.449070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084564, -0.100679, -0.991319,
		0.770506, 0.637432, 0.000989,
		0.631798, -0.763901, 0.131478,
		31.818642, 39.658375, 41.488514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907333, 40.336029, 40.849861>,  <31.376383, 40.193108, 41.396481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907333, 40.336029, 40.849861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999620, 39.963848, 40.963726>,  <32.054993, 39.740540, 41.032047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999620, 39.963848, 40.963726>,  <31.907333, 40.336029, 40.849861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999620, 39.963848, 40.963726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212009, -0.237457, -0.947980,
		0.949642, 0.279069, 0.142478,
		0.230719, -0.930449, 0.284665,
		32.068836, 39.684715, 41.049126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665524, 40.162472, 40.570232>,  <31.907333, 40.336029, 40.849861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665524, 40.162472, 40.570232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463936, 39.823303, 40.636017>,  <32.342983, 39.619801, 40.675488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463936, 39.823303, 40.636017>,  <32.665524, 40.162472, 40.570232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463936, 39.823303, 40.636017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048601, -0.217945, -0.974750,
		0.862354, -0.483249, 0.151047,
		-0.503967, -0.847921, 0.164460,
		32.312744, 39.568928, 40.685356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926743, 39.760849, 40.002483>,  <32.665524, 40.162472, 40.570232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926743, 39.760849, 40.002483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610874, 39.557865, 40.140415>,  <32.421352, 39.436073, 40.223175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610874, 39.557865, 40.140415>,  <32.926743, 39.760849, 40.002483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610874, 39.557865, 40.140415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058913, -0.496724, -0.865907,
		0.610696, -0.704096, 0.362353,
		-0.789671, -0.507459, 0.344828,
		32.373974, 39.405628, 40.243862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694603, 39.534458, 40.136608>,  <32.926743, 39.760849, 40.002483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694603, 39.534458, 40.136608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.926151, 39.826988, 39.992344>,  <34.065079, 40.002506, 39.905785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.926151, 39.826988, 39.992344>,  <33.694603, 39.534458, 40.136608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926151, 39.826988, 39.992344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117722, 0.512620, 0.850507,
		0.806876, -0.449877, 0.382834,
		0.578871, 0.731322, -0.360661,
		34.099812, 40.046383, 39.884144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233818, 39.683907, 40.661850>,  <33.694603, 39.534458, 40.136608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233818, 39.683907, 40.661850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157040, 40.002289, 40.432205>,  <34.110973, 40.193317, 40.294418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157040, 40.002289, 40.432205>,  <34.233818, 39.683907, 40.661850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157040, 40.002289, 40.432205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188105, 0.544308, 0.817524,
		0.963210, 0.264913, 0.045247,
		-0.191945, 0.795958, -0.574114,
		34.099457, 40.241077, 40.259972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633183, 40.219070, 40.884899>,  <34.233818, 39.683907, 40.661850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633183, 40.219070, 40.884899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323189, 40.397976, 40.706306>,  <34.137192, 40.505322, 40.599152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.323189, 40.397976, 40.706306>,  <34.633183, 40.219070, 40.884899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323189, 40.397976, 40.706306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129910, 0.578653, 0.805161,
		0.618481, 0.681992, -0.390344,
		-0.774987, 0.447268, -0.446483,
		34.090694, 40.532158, 40.572361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807072, 40.980675, 40.858570>,  <34.633183, 40.219070, 40.884899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807072, 40.980675, 40.858570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410503, 40.950005, 40.816227>,  <34.172562, 40.931602, 40.790821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410503, 40.950005, 40.816227>,  <34.807072, 40.980675, 40.858570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410503, 40.950005, 40.816227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128884, 0.708464, 0.693878,
		0.021793, 0.701569, -0.712268,
		-0.991420, -0.076678, -0.105861,
		34.113079, 40.927002, 40.784470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603596, 41.702560, 40.986324>,  <34.807072, 40.980675, 40.858570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603596, 41.702560, 40.986324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267891, 41.487602, 41.019421>,  <34.066467, 41.358627, 41.039276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267891, 41.487602, 41.019421>,  <34.603596, 41.702560, 40.986324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267891, 41.487602, 41.019421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289178, 0.570017, 0.769062,
		-0.460453, 0.621518, -0.633797,
		-0.839261, -0.537397, 0.082737,
		34.016113, 41.326382, 41.044243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120972, 42.246105, 41.363445>,  <34.603596, 41.702560, 40.986324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120972, 42.246105, 41.363445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.918274, 41.904011, 41.406864>,  <33.796654, 41.698753, 41.432915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.918274, 41.904011, 41.406864>,  <34.120972, 42.246105, 41.363445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918274, 41.904011, 41.406864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499281, 0.393786, 0.771785,
		-0.702801, 0.336903, -0.626551,
		-0.506744, -0.855236, 0.108544,
		33.766251, 41.647438, 41.439426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407463, 42.532646, 41.510860>,  <34.120972, 42.246105, 41.363445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407463, 42.532646, 41.510860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460995, 42.162975, 41.653965>,  <33.493114, 41.941174, 41.739826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460995, 42.162975, 41.653965>,  <33.407463, 42.532646, 41.510860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460995, 42.162975, 41.653965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300599, 0.306141, 0.903282,
		-0.944315, -0.228423, -0.236837,
		0.133825, -0.924176, 0.357757,
		33.501141, 41.885723, 41.761292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885429, 42.498306, 41.953003>,  <33.407463, 42.532646, 41.510860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885429, 42.498306, 41.953003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.128201, 42.211304, 42.089722>,  <33.273865, 42.039104, 42.171753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.128201, 42.211304, 42.089722>,  <32.885429, 42.498306, 41.953003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128201, 42.211304, 42.089722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185538, 0.290269, 0.938786,
		-0.772795, -0.633194, 0.043049,
		0.606930, -0.717502, 0.341800,
		33.310280, 41.996052, 42.192261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526424, 42.062828, 42.358006>,  <32.885429, 42.498306, 41.953003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526424, 42.062828, 42.358006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907108, 42.041965, 42.479015>,  <33.135521, 42.029449, 42.551620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907108, 42.041965, 42.479015>,  <32.526424, 42.062828, 42.358006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907108, 42.041965, 42.479015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279619, 0.259463, 0.924387,
		-0.126702, -0.964344, 0.232352,
		0.951714, -0.052152, 0.302523,
		33.192623, 42.026321, 42.569771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531406, 41.732845, 42.968227>,  <32.526424, 42.062828, 42.358006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531406, 41.732845, 42.968227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897636, 41.892952, 42.983742>,  <33.117374, 41.989014, 42.993050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897636, 41.892952, 42.983742>,  <32.531406, 41.732845, 42.968227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897636, 41.892952, 42.983742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191307, 0.348709, 0.917499,
		0.353740, -0.847452, 0.395845,
		0.915571, 0.400284, 0.038771,
		33.172310, 42.013031, 42.995377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839146, 41.532856, 43.507118>,  <32.531406, 41.732845, 42.968227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839146, 41.532856, 43.507118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038521, 41.873878, 43.444244>,  <33.158146, 42.078491, 43.406521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038521, 41.873878, 43.444244>,  <32.839146, 41.532856, 43.507118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038521, 41.873878, 43.444244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232973, 0.306364, 0.922965,
		0.835037, -0.423419, 0.351326,
		0.498435, 0.852559, -0.157180,
		33.188053, 42.129646, 43.397091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486210, 41.606068, 43.966568>,  <32.839146, 41.532856, 43.507118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486210, 41.606068, 43.966568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398724, 41.986912, 43.881111>,  <33.346233, 42.215420, 43.829838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398724, 41.986912, 43.881111>,  <33.486210, 41.606068, 43.966568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398724, 41.986912, 43.881111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037696, 0.227023, 0.973159,
		0.975061, 0.204789, -0.085544,
		-0.218713, 0.952114, -0.213641,
		33.333111, 42.272545, 43.817020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971657, 42.039188, 44.427647>,  <33.486210, 41.606068, 43.966568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971657, 42.039188, 44.427647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714699, 42.315094, 44.294048>,  <33.560524, 42.480637, 44.213890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714699, 42.315094, 44.294048>,  <33.971657, 42.039188, 44.427647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714699, 42.315094, 44.294048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032801, 0.460166, 0.887227,
		0.765669, 0.558997, -0.318234,
		-0.642398, 0.689760, -0.334000,
		33.521980, 42.522022, 44.193848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325729, 42.774410, 44.394581>,  <33.971657, 42.039188, 44.427647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325729, 42.774410, 44.394581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928501, 42.772350, 44.441528>,  <33.690163, 42.771114, 44.469696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928501, 42.772350, 44.441528>,  <34.325729, 42.774410, 44.394581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928501, 42.772350, 44.441528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100429, 0.481143, 0.870871,
		-0.060960, 0.876627, -0.477293,
		-0.993075, -0.005155, 0.117369,
		33.630577, 42.770805, 44.476738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506893, 43.510193, 44.000851>,  <34.325729, 42.774410, 44.394581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506893, 43.510193, 44.000851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891834, 43.618675, 43.993713>,  <35.122799, 43.683765, 43.989429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891834, 43.618675, 43.993713>,  <34.506893, 43.510193, 44.000851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891834, 43.618675, 43.993713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047164, -0.231294, -0.971740,
		-0.267667, 0.934319, -0.235378,
		0.962356, 0.271204, -0.017844,
		35.180542, 43.700035, 43.988361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547150, 43.845364, 43.335529>,  <34.506893, 43.510193, 44.000851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547150, 43.845364, 43.335529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922943, 43.753197, 43.436947>,  <35.148418, 43.697895, 43.497799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922943, 43.753197, 43.436947>,  <34.547150, 43.845364, 43.335529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922943, 43.753197, 43.436947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189772, -0.266167, -0.945062,
		0.285246, 0.935982, -0.206331,
		0.939479, -0.230420, 0.253546,
		35.204788, 43.684071, 43.513012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030304, 44.167603, 42.809994>,  <34.547150, 43.845364, 43.335529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030304, 44.167603, 42.809994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207546, 43.844769, 42.966084>,  <35.313892, 43.651070, 43.059738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207546, 43.844769, 42.966084>,  <35.030304, 44.167603, 42.809994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207546, 43.844769, 42.966084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064487, -0.405463, -0.911834,
		0.894148, 0.429200, -0.127615,
		0.443103, -0.807085, 0.390222,
		35.340477, 43.602642, 43.083149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652939, 44.271065, 42.515133>,  <35.030304, 44.167603, 42.809994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652939, 44.271065, 42.515133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629429, 43.898682, 42.659279>,  <35.615322, 43.675251, 42.745766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629429, 43.898682, 42.659279>,  <35.652939, 44.271065, 42.515133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629429, 43.898682, 42.659279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520633, -0.336594, -0.784631,
		0.851755, 0.141498, 0.504472,
		-0.058779, -0.930958, 0.360364,
		35.611794, 43.619392, 42.767387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339787, 44.027534, 42.368389>,  <35.652939, 44.271065, 42.515133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339787, 44.027534, 42.368389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110489, 43.705341, 42.428497>,  <35.972912, 43.512024, 42.464561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110489, 43.705341, 42.428497>,  <36.339787, 44.027534, 42.368389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110489, 43.705341, 42.428497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486498, -0.482154, -0.728592,
		0.659326, -0.344554, 0.668260,
		-0.573244, -0.805487, 0.150272,
		35.938515, 43.463696, 42.473579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762562, 43.486195, 42.394775>,  <36.339787, 44.027534, 42.368389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762562, 43.486195, 42.394775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424297, 43.295597, 42.298595>,  <36.221340, 43.181236, 42.240887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424297, 43.295597, 42.298595>,  <36.762562, 43.486195, 42.394775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424297, 43.295597, 42.298595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443083, -0.375594, -0.814006,
		0.297561, -0.794908, 0.528751,
		-0.845656, -0.476497, -0.240449,
		36.170601, 43.152649, 42.226460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971962, 42.830185, 42.176262>,  <36.762562, 43.486195, 42.394775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971962, 42.830185, 42.176262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.608353, 42.863499, 42.012924>,  <36.390186, 42.883488, 41.914921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.608353, 42.863499, 42.012924>,  <36.971962, 42.830185, 42.176262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608353, 42.863499, 42.012924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379055, -0.241973, -0.893178,
		-0.173193, -0.966702, 0.188391,
		-0.909022, 0.083282, -0.408341,
		36.335648, 42.888485, 41.890423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823055, 42.130966, 41.860870>,  <36.971962, 42.830185, 42.176262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823055, 42.130966, 41.860870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.592430, 42.402943, 41.679646>,  <36.454056, 42.566128, 41.570911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.592430, 42.402943, 41.679646>,  <36.823055, 42.130966, 41.860870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592430, 42.402943, 41.679646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279332, -0.357057, -0.891339,
		-0.767823, -0.640464, 0.015936,
		-0.576560, 0.679939, -0.453059,
		36.419460, 42.606926, 41.543728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551491, 41.716599, 41.364922>,  <36.823055, 42.130966, 41.860870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551491, 41.716599, 41.364922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500900, 42.099678, 41.261524>,  <36.470547, 42.329525, 41.199486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500900, 42.099678, 41.261524>,  <36.551491, 41.716599, 41.364922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500900, 42.099678, 41.261524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200212, -0.230581, -0.952233,
		-0.971556, -0.172184, -0.162581,
		-0.126471, 0.957698, -0.258496,
		36.462959, 42.386986, 41.183975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005161, 41.769897, 40.774551>,  <36.551491, 41.716599, 41.364922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005161, 41.769897, 40.774551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.246807, 42.088524, 40.783737>,  <36.391792, 42.279701, 40.789249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.246807, 42.088524, 40.783737>,  <36.005161, 41.769897, 40.774551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246807, 42.088524, 40.783737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232322, -0.148477, -0.961239,
		-0.762283, 0.586032, -0.274758,
		0.604112, 0.796568, 0.022967,
		36.428040, 42.327496, 40.790627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026535, 42.079414, 40.149231>,  <36.005161, 41.769897, 40.774551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026535, 42.079414, 40.149231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369041, 42.225475, 40.295364>,  <36.574547, 42.313110, 40.383045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369041, 42.225475, 40.295364>,  <36.026535, 42.079414, 40.149231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369041, 42.225475, 40.295364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466832, -0.244369, -0.849913,
		-0.221069, 0.898304, -0.379709,
		0.856269, 0.365150, 0.365334,
		36.625923, 42.335022, 40.404964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286270, 42.390873, 39.554352>,  <36.026535, 42.079414, 40.149231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286270, 42.390873, 39.554352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.594582, 42.389244, 39.809189>,  <36.779568, 42.388268, 39.962090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.594582, 42.389244, 39.809189>,  <36.286270, 42.390873, 39.554352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594582, 42.389244, 39.809189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626213, -0.179252, -0.758766,
		0.117289, 0.983795, -0.135614,
		0.770780, -0.004072, 0.637089,
		36.825817, 42.388023, 40.000317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893814, 42.750309, 39.372089>,  <36.286270, 42.390873, 39.554352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893814, 42.750309, 39.372089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036060, 42.457642, 39.604710>,  <37.121407, 42.282040, 39.744282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036060, 42.457642, 39.604710>,  <36.893814, 42.750309, 39.372089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036060, 42.457642, 39.604710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626462, -0.275159, -0.729268,
		0.693603, 0.623654, 0.360515,
		0.355612, -0.731672, 0.581547,
		37.142742, 42.238140, 39.779175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625984, 42.865402, 39.304497>,  <36.893814, 42.750309, 39.372089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625984, 42.865402, 39.304497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534187, 42.490589, 39.409801>,  <37.479107, 42.265701, 39.472984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534187, 42.490589, 39.409801>,  <37.625984, 42.865402, 39.304497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534187, 42.490589, 39.409801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664062, -0.348491, -0.661495,
		0.711585, 0.023013, 0.702223,
		-0.229495, -0.937030, 0.263263,
		37.465340, 42.209480, 39.488781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.467211, 29.682119, 29.635368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244173, 29.518345, 29.346521>,  <29.110352, 29.420080, 29.173214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244173, 29.518345, 29.346521>,  <29.467211, 29.682119, 29.635368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244173, 29.518345, 29.346521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745797, 0.629079, 0.219194,
		0.364521, 0.660772, -0.656128,
		-0.557594, -0.409438, -0.722115,
		29.076895, 29.395514, 29.129887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199780, 30.161289, 29.309385>,  <29.467211, 29.682119, 29.635368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199780, 30.161289, 29.309385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970297, 29.834486, 29.286215>,  <28.832607, 29.638405, 29.272312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970297, 29.834486, 29.286215>,  <29.199780, 30.161289, 29.309385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970297, 29.834486, 29.286215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767682, 0.511721, 0.385754,
		-0.285522, 0.265779, -0.920782,
		-0.573709, -0.817008, -0.057926,
		28.798183, 29.589384, 29.268837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545052, 30.303120, 28.961172>,  <29.199780, 30.161289, 29.309385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545052, 30.303120, 28.961172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498438, 29.994461, 29.211285>,  <28.470470, 29.809265, 29.361353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498438, 29.994461, 29.211285>,  <28.545052, 30.303120, 28.961172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498438, 29.994461, 29.211285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809537, 0.438531, 0.390309,
		-0.575387, -0.460705, -0.675781,
		-0.116533, -0.771648, 0.625283,
		28.463478, 29.762966, 29.398869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862921, 30.250158, 29.037874>,  <28.545052, 30.303120, 28.961172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862921, 30.250158, 29.037874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967583, 30.012144, 29.341839>,  <28.030380, 29.869335, 29.524218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967583, 30.012144, 29.341839>,  <27.862921, 30.250158, 29.037874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967583, 30.012144, 29.341839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783936, 0.328260, 0.526963,
		-0.563012, -0.733605, -0.380581,
		0.261653, -0.595037, 0.759914,
		28.046078, 29.833633, 29.569813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233479, 29.869858, 29.277370>,  <27.862921, 30.250158, 29.037874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233479, 29.869858, 29.277370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484350, 29.882153, 29.588678>,  <27.634874, 29.889530, 29.775463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484350, 29.882153, 29.588678>,  <27.233479, 29.869858, 29.277370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484350, 29.882153, 29.588678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738523, 0.340919, 0.581686,
		-0.247446, -0.939590, 0.236519,
		0.627180, 0.030739, 0.778268,
		27.672504, 29.891375, 29.822159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804266, 29.613705, 29.703253>,  <27.233479, 29.869858, 29.277370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804266, 29.613705, 29.703253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.084629, 29.816324, 29.904104>,  <27.252848, 29.937897, 30.024614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.084629, 29.816324, 29.904104>,  <26.804266, 29.613705, 29.703253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084629, 29.816324, 29.904104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709108, 0.419132, 0.567006,
		0.076758, -0.753483, 0.652971,
		0.700910, 0.506549, 0.502129,
		27.294903, 29.968288, 30.054743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692392, 29.512991, 30.435379>,  <26.804266, 29.613705, 29.703253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692392, 29.512991, 30.435379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926121, 29.836491, 30.462189>,  <27.066359, 30.030590, 30.478275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926121, 29.836491, 30.462189>,  <26.692392, 29.512991, 30.435379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926121, 29.836491, 30.462189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617336, 0.389373, 0.683582,
		0.526749, -0.440809, 0.726790,
		0.584322, 0.808750, 0.067025,
		27.101418, 30.079115, 30.482296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753590, 29.757492, 31.188591>,  <26.692392, 29.512991, 30.435379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753590, 29.757492, 31.188591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.844643, 30.081287, 30.972105>,  <26.899275, 30.275564, 30.842213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.844643, 30.081287, 30.972105>,  <26.753590, 29.757492, 31.188591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844643, 30.081287, 30.972105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534568, 0.568447, 0.625383,
		0.813893, 0.146959, 0.562122,
		0.227631, 0.809488, -0.541215,
		26.912931, 30.324133, 30.809740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074467, 30.310694, 31.661884>,  <26.753590, 29.757492, 31.188591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074467, 30.310694, 31.661884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943474, 30.504732, 31.337555>,  <26.864878, 30.621155, 31.142958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943474, 30.504732, 31.337555>,  <27.074467, 30.310694, 31.661884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943474, 30.504732, 31.337555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342989, 0.738575, 0.580402,
		0.880406, 0.468175, -0.075486,
		-0.327482, 0.485098, -0.810824,
		26.845230, 30.650261, 31.094307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200562, 31.064846, 31.853340>,  <27.074467, 30.310694, 31.661884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200562, 31.064846, 31.853340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925169, 31.027191, 31.565693>,  <26.759933, 31.004599, 31.393105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925169, 31.027191, 31.565693>,  <27.200562, 31.064846, 31.853340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925169, 31.027191, 31.565693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625095, 0.579817, 0.522560,
		0.367764, 0.809289, -0.458039,
		-0.688481, -0.094139, -0.719119,
		26.718624, 30.998949, 31.349957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209782, 31.710957, 31.489212>,  <27.200562, 31.064846, 31.853340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209782, 31.710957, 31.489212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.860834, 31.524595, 31.430004>,  <26.651466, 31.412779, 31.394480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.860834, 31.524595, 31.430004>,  <27.209782, 31.710957, 31.489212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860834, 31.524595, 31.430004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469620, 0.714618, 0.518438,
		-0.135763, 0.521783, -0.842206,
		-0.872368, -0.465901, -0.148021,
		26.599123, 31.384825, 31.385597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818933, 32.168922, 31.079924>,  <27.209782, 31.710957, 31.489212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818933, 32.168922, 31.079924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583914, 31.923521, 31.290977>,  <26.442902, 31.776279, 31.417610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583914, 31.923521, 31.290977>,  <26.818933, 32.168922, 31.079924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583914, 31.923521, 31.290977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318498, 0.774754, 0.546183,
		-0.743873, 0.152858, -0.650605,
		-0.587548, -0.613507, 0.527633,
		26.407650, 31.739470, 31.449268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278511, 32.648151, 31.289309>,  <26.818933, 32.168922, 31.079924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278511, 32.648151, 31.289309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.226248, 32.311909, 31.499567>,  <26.194889, 32.110161, 31.625723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.226248, 32.311909, 31.499567>,  <26.278511, 32.648151, 31.289309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226248, 32.311909, 31.499567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445980, 0.523354, 0.726087,
		-0.885455, -0.139559, -0.443275,
		-0.130658, -0.840609, 0.525647,
		26.187050, 32.059727, 31.657261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678757, 32.764156, 31.626514>,  <26.278511, 32.648151, 31.289309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678757, 32.764156, 31.626514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.771278, 32.448124, 31.853590>,  <25.826792, 32.258503, 31.989836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.771278, 32.448124, 31.853590>,  <25.678757, 32.764156, 31.626514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771278, 32.448124, 31.853590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519709, 0.392933, 0.758621,
		-0.822436, -0.470505, -0.319725,
		0.231304, -0.790081, 0.567688,
		25.840670, 32.211098, 32.023895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102125, 32.693783, 32.010918>,  <25.678757, 32.764156, 31.626514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102125, 32.693783, 32.010918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368242, 32.475399, 32.214611>,  <25.527912, 32.344368, 32.336826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368242, 32.475399, 32.214611>,  <25.102125, 32.693783, 32.010918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368242, 32.475399, 32.214611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396093, 0.320065, 0.860621,
		-0.632850, -0.774268, -0.003313,
		0.665291, -0.545956, 0.509234,
		25.567829, 32.311611, 32.367382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722017, 32.194534, 32.420971>,  <25.102125, 32.693783, 32.010918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722017, 32.194534, 32.420971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.075024, 32.243427, 32.602619>,  <25.286827, 32.272762, 32.711609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.075024, 32.243427, 32.602619>,  <24.722017, 32.194534, 32.420971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075024, 32.243427, 32.602619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469667, 0.278524, 0.837757,
		-0.024088, -0.952620, 0.303208,
		0.882515, 0.122227, 0.454123,
		25.339779, 32.280094, 32.738857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455969, 32.117352, 33.081680>,  <24.722017, 32.194534, 32.420971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455969, 32.117352, 33.081680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.829605, 32.250912, 33.132259>,  <25.053787, 32.331047, 33.162605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.829605, 32.250912, 33.132259>,  <24.455969, 32.117352, 33.081680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829605, 32.250912, 33.132259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267762, 0.420857, 0.866708,
		0.236176, -0.843441, 0.482523,
		0.934090, 0.333897, 0.126445,
		25.109833, 32.351082, 33.170193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631960, 32.072899, 33.861607>,  <24.455969, 32.117352, 33.081680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631960, 32.072899, 33.861607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.868431, 32.346565, 33.690765>,  <25.010313, 32.510765, 33.588261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.868431, 32.346565, 33.690765>,  <24.631960, 32.072899, 33.861607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.868431, 32.346565, 33.690765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077473, 0.575275, 0.814283,
		0.802813, -0.448296, 0.393094,
		0.591177, 0.684171, -0.427108,
		25.045784, 32.551815, 33.562634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237635, 32.282501, 34.264629>,  <24.631960, 32.072899, 33.861607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237635, 32.282501, 34.264629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.191933, 32.612446, 34.043163>,  <25.164513, 32.810413, 33.910286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.191933, 32.612446, 34.043163>,  <25.237635, 32.282501, 34.264629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191933, 32.612446, 34.043163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091095, 0.563663, 0.820967,
		0.989266, 0.043362, -0.139541,
		-0.114253, 0.824866, -0.553663,
		25.157658, 32.859905, 33.877064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557571, 32.839058, 34.644474>,  <25.237635, 32.282501, 34.264629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557571, 32.839058, 34.644474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.345354, 33.046352, 34.376160>,  <25.218023, 33.170731, 34.215172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.345354, 33.046352, 34.376160>,  <25.557571, 32.839058, 34.644474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345354, 33.046352, 34.376160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150076, 0.721409, 0.676052,
		0.834267, 0.459343, -0.304962,
		-0.530543, 0.518240, -0.670784,
		25.186192, 33.201824, 34.174923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896254, 33.487648, 34.486198>,  <25.557571, 32.839058, 34.644474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896254, 33.487648, 34.486198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.509794, 33.549885, 34.403889>,  <25.277918, 33.587227, 34.354504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.509794, 33.549885, 34.403889>,  <25.896254, 33.487648, 34.486198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509794, 33.549885, 34.403889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009211, 0.776341, 0.630246,
		0.257815, 0.610808, -0.748629,
		-0.966150, 0.155591, -0.205779,
		25.219950, 33.596561, 34.342155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619757, 33.526588, 34.751644>,  <25.896254, 33.487648, 34.486198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619757, 33.526588, 34.751644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912239, 33.437222, 35.009457>,  <27.087729, 33.383602, 35.164143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912239, 33.437222, 35.009457>,  <26.619757, 33.526588, 34.751644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912239, 33.437222, 35.009457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665076, 0.443583, -0.600756,
		-0.151685, 0.867940, 0.472940,
		0.731208, -0.223416, 0.644531,
		27.131601, 33.370197, 35.202816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006805, 34.100502, 34.954498>,  <26.619757, 33.526588, 34.751644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006805, 34.100502, 34.954498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263620, 33.797974, 35.004711>,  <27.417709, 33.616455, 35.034840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263620, 33.797974, 35.004711>,  <27.006805, 34.100502, 34.954498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263620, 33.797974, 35.004711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621254, 0.417293, -0.663258,
		0.449255, 0.503824, 0.737788,
		0.642039, -0.756325, 0.125531,
		27.456232, 33.571075, 35.042370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599438, 34.378662, 34.721966>,  <27.006805, 34.100502, 34.954498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599438, 34.378662, 34.721966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.657587, 33.983963, 34.750801>,  <27.692476, 33.747143, 34.768101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.657587, 33.983963, 34.750801>,  <27.599438, 34.378662, 34.721966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657587, 33.983963, 34.750801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642437, 0.038735, -0.765359,
		0.752424, 0.157572, 0.639554,
		0.145372, -0.986748, 0.072085,
		27.701199, 33.687939, 34.772427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258081, 34.294991, 34.672798>,  <27.599438, 34.378662, 34.721966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258081, 34.294991, 34.672798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115355, 33.936932, 34.565929>,  <28.029718, 33.722095, 34.501808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115355, 33.936932, 34.565929>,  <28.258081, 34.294991, 34.672798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115355, 33.936932, 34.565929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610475, -0.006954, -0.792005,
		0.707107, -0.445707, 0.548949,
		-0.356819, -0.895152, -0.267176,
		28.008308, 33.668385, 34.485775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893023, 33.830658, 34.374477>,  <28.258081, 34.294991, 34.672798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893023, 33.830658, 34.374477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562895, 33.694050, 34.194603>,  <28.364819, 33.612083, 34.086678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562895, 33.694050, 34.194603>,  <28.893023, 33.830658, 34.374477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562895, 33.694050, 34.194603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485410, -0.022236, -0.874004,
		0.288490, -0.939612, 0.184128,
		-0.825318, -0.341519, -0.449682,
		28.315300, 33.591595, 34.059700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141491, 33.282333, 33.933903>,  <28.893023, 33.830658, 34.374477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141491, 33.282333, 33.933903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779600, 33.386112, 33.798756>,  <28.562466, 33.448380, 33.717667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779600, 33.386112, 33.798756>,  <29.141491, 33.282333, 33.933903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779600, 33.386112, 33.798756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334397, -0.058812, -0.940596,
		-0.263905, -0.963965, -0.033549,
		-0.904728, 0.259447, -0.337868,
		28.508183, 33.463947, 33.697395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978029, 32.737320, 33.409519>,  <29.141491, 33.282333, 33.933903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978029, 32.737320, 33.409519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697056, 33.010555, 33.329544>,  <28.528471, 33.174496, 33.281559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697056, 33.010555, 33.329544>,  <28.978029, 32.737320, 33.409519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697056, 33.010555, 33.329544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151984, -0.130477, -0.979733,
		-0.695333, -0.718585, -0.012167,
		-0.702434, 0.683090, -0.199938,
		28.486326, 33.215481, 33.269562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489351, 32.379410, 33.003849>,  <28.978029, 32.737320, 33.409519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489351, 32.379410, 33.003849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379610, 32.754921, 32.920502>,  <28.313765, 32.980228, 32.870491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379610, 32.754921, 32.920502>,  <28.489351, 32.379410, 33.003849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379610, 32.754921, 32.920502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000361, -0.216585, -0.976264,
		-0.961629, -0.267916, 0.059082,
		-0.274353, 0.938782, -0.208371,
		28.297304, 33.036556, 32.857990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921076, 32.329308, 32.553997>,  <28.489351, 32.379410, 33.003849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921076, 32.329308, 32.553997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034037, 32.707413, 32.488594>,  <28.101814, 32.934277, 32.449352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034037, 32.707413, 32.488594>,  <27.921076, 32.329308, 32.553997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034037, 32.707413, 32.488594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065444, -0.151060, -0.986356,
		-0.957061, 0.289251, 0.019201,
		0.282403, 0.945259, -0.163504,
		28.118757, 32.990990, 32.439545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435925, 32.600697, 32.100410>,  <27.921076, 32.329308, 32.553997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435925, 32.600697, 32.100410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773817, 32.813694, 32.078934>,  <27.976553, 32.941490, 32.066048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773817, 32.813694, 32.078934>,  <27.435925, 32.600697, 32.100410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773817, 32.813694, 32.078934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023299, -0.063631, -0.997701,
		-0.534681, 0.844041, -0.041345,
		0.844732, 0.532489, -0.053688,
		28.027237, 32.973442, 32.062828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407808, 32.911732, 31.521486>,  <27.435925, 32.600697, 32.100410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407808, 32.911732, 31.521486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797853, 32.934410, 31.607220>,  <28.031881, 32.948017, 31.658659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797853, 32.934410, 31.607220>,  <27.407808, 32.911732, 31.521486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797853, 32.934410, 31.607220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209157, 0.085349, -0.974150,
		-0.073527, 0.994737, 0.071366,
		0.975114, 0.056700, 0.214332,
		28.090387, 32.951420, 31.671520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780270, 33.386314, 31.041845>,  <27.407808, 32.911732, 31.521486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780270, 33.386314, 31.041845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.097879, 33.182449, 31.174374>,  <28.288445, 33.060131, 31.253891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.097879, 33.182449, 31.174374>,  <27.780270, 33.386314, 31.041845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097879, 33.182449, 31.174374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305028, -0.137403, -0.942379,
		0.525817, 0.849333, 0.046359,
		0.794024, -0.509660, 0.331320,
		28.336086, 33.029552, 31.273769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413906, 33.653393, 30.635403>,  <27.780270, 33.386314, 31.041845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413906, 33.653393, 30.635403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.512287, 33.288486, 30.766417>,  <28.571316, 33.069542, 30.845024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.512287, 33.288486, 30.766417>,  <28.413906, 33.653393, 30.635403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512287, 33.288486, 30.766417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395390, -0.214094, -0.893214,
		0.884971, 0.349192, 0.308044,
		0.245953, -0.912266, 0.327534,
		28.586073, 33.014809, 30.864677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008299, 33.591774, 30.306038>,  <28.413906, 33.653393, 30.635403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008299, 33.591774, 30.306038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919346, 33.223660, 30.434795>,  <28.865974, 33.002789, 30.512049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919346, 33.223660, 30.434795>,  <29.008299, 33.591774, 30.306038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919346, 33.223660, 30.434795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510234, -0.391193, -0.765917,
		0.830786, -0.006088, 0.556558,
		-0.222385, -0.920288, 0.321892,
		28.852631, 32.947575, 30.531363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693363, 33.254978, 30.417933>,  <29.008299, 33.591774, 30.306038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693363, 33.254978, 30.417933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400167, 32.991478, 30.350080>,  <29.224251, 32.833378, 30.309370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400167, 32.991478, 30.350080>,  <29.693363, 33.254978, 30.417933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400167, 32.991478, 30.350080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500472, -0.353352, -0.790361,
		0.460712, -0.664221, 0.588690,
		-0.732989, -0.658751, -0.169630,
		29.180271, 32.793854, 30.299191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018614, 32.650665, 30.033958>,  <29.693363, 33.254978, 30.417933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018614, 32.650665, 30.033958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634647, 32.573879, 29.952267>,  <29.404266, 32.527809, 29.903252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634647, 32.573879, 29.952267>,  <30.018614, 32.650665, 30.033958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634647, 32.573879, 29.952267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260786, -0.344693, -0.901763,
		0.102708, -0.918878, 0.380938,
		-0.959918, -0.191961, -0.204228,
		29.346672, 32.516293, 29.890999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136282, 32.031994, 29.646996>,  <30.018614, 32.650665, 30.033958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136282, 32.031994, 29.646996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763514, 32.150890, 29.563885>,  <29.539852, 32.222229, 29.514019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763514, 32.150890, 29.563885>,  <30.136282, 32.031994, 29.646996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763514, 32.150890, 29.563885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193456, -0.077158, -0.978070,
		-0.306756, -0.951679, 0.014401,
		-0.931921, 0.297244, -0.207777,
		29.483938, 32.240063, 29.501553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751764, 31.461678, 29.276781>,  <30.136282, 32.031994, 29.646996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751764, 31.461678, 29.276781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571594, 31.809612, 29.196285>,  <29.463491, 32.018372, 29.147987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571594, 31.809612, 29.196285>,  <29.751764, 31.461678, 29.276781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571594, 31.809612, 29.196285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020785, -0.215121, -0.976366,
		-0.892571, -0.443964, 0.078816,
		-0.450426, 0.869838, -0.201239,
		29.436466, 32.070564, 29.135914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204695, 31.236931, 28.910421>,  <29.751764, 31.461678, 29.276781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204695, 31.236931, 28.910421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298904, 31.619526, 28.841537>,  <29.355431, 31.849083, 28.800207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298904, 31.619526, 28.841537>,  <29.204695, 31.236931, 28.910421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298904, 31.619526, 28.841537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053461, -0.189675, -0.980390,
		-0.970397, 0.221699, -0.095808,
		0.235524, 0.956490, -0.172208,
		29.369562, 31.906473, 28.789875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684837, 31.499138, 28.440845>,  <29.204695, 31.236931, 28.910421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684837, 31.499138, 28.440845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982910, 31.761198, 28.391083>,  <29.161755, 31.918434, 28.361225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982910, 31.761198, 28.391083>,  <28.684837, 31.499138, 28.440845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982910, 31.761198, 28.391083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116095, -0.056255, -0.991644,
		-0.656676, 0.753399, 0.034139,
		0.745183, 0.655152, -0.124407,
		29.206465, 31.957745, 28.353760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534914, 31.888218, 27.810299>,  <28.684837, 31.499138, 28.440845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534914, 31.888218, 27.810299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928579, 31.951632, 27.842022>,  <29.164778, 31.989679, 27.861055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928579, 31.951632, 27.842022>,  <28.534914, 31.888218, 27.810299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928579, 31.951632, 27.842022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071514, 0.054271, -0.995962,
		-0.162198, 0.985861, 0.042074,
		0.984163, 0.158534, 0.079306,
		29.223829, 31.999191, 27.865814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.548306, 41.774933, 46.693691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181667, 41.632339, 46.621281>,  <35.961685, 41.546783, 46.577835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181667, 41.632339, 46.621281>,  <36.548306, 41.774933, 46.693691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181667, 41.632339, 46.621281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324954, 0.400453, 0.856763,
		-0.232927, 0.844132, -0.482894,
		-0.916597, -0.356481, -0.181028,
		35.906689, 41.525394, 46.566971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157871, 42.298302, 46.771526>,  <36.548306, 41.774933, 46.693691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157871, 42.298302, 46.771526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917690, 41.983208, 46.826546>,  <35.773582, 41.794151, 46.859558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917690, 41.983208, 46.826546>,  <36.157871, 42.298302, 46.771526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917690, 41.983208, 46.826546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364723, 0.422861, 0.829558,
		-0.711640, 0.447946, -0.541215,
		-0.600456, -0.787740, 0.137549,
		35.737553, 41.746887, 46.867809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487141, 42.566082, 46.896141>,  <36.157871, 42.298302, 46.771526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487141, 42.566082, 46.896141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506645, 42.199780, 47.055645>,  <35.518349, 41.979996, 47.151348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506645, 42.199780, 47.055645>,  <35.487141, 42.566082, 46.896141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506645, 42.199780, 47.055645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328387, 0.362341, 0.872279,
		-0.943284, -0.173483, -0.283054,
		0.048764, -0.915758, 0.398760,
		35.521275, 41.925053, 47.175274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965313, 42.524960, 47.349789>,  <35.487141, 42.566082, 46.896141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965313, 42.524960, 47.349789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175724, 42.201488, 47.455112>,  <35.301971, 42.007404, 47.518307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175724, 42.201488, 47.455112>,  <34.965313, 42.524960, 47.349789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175724, 42.201488, 47.455112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237254, 0.157783, 0.958548,
		-0.816705, -0.566694, -0.108864,
		0.526027, -0.808679, 0.263313,
		35.333530, 41.958885, 47.534107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647408, 42.387512, 48.027283>,  <34.965313, 42.524960, 47.349789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647408, 42.387512, 48.027283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993198, 42.186661, 48.017963>,  <35.200672, 42.066151, 48.012371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993198, 42.186661, 48.017963>,  <34.647408, 42.387512, 48.027283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993198, 42.186661, 48.017963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015089, -0.020402, 0.999678,
		-0.502440, -0.864554, -0.010061,
		0.864481, -0.502126, -0.023296,
		35.252544, 42.036022, 48.010975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474445, 41.833012, 48.494709>,  <34.647408, 42.387512, 48.027283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474445, 41.833012, 48.494709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872257, 41.874546, 48.490345>,  <35.110947, 41.899467, 48.487728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872257, 41.874546, 48.490345>,  <34.474445, 41.833012, 48.494709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872257, 41.874546, 48.490345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010734, 0.205634, 0.978570,
		0.103857, -0.973105, 0.205624,
		0.994534, 0.103839, -0.010911,
		35.170616, 41.905697, 48.487072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859898, 41.332817, 49.067314>,  <34.474445, 41.833012, 48.494709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859898, 41.332817, 49.067314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105213, 41.634247, 48.972656>,  <35.252403, 41.815105, 48.915863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105213, 41.634247, 48.972656>,  <34.859898, 41.332817, 49.067314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105213, 41.634247, 48.972656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033749, 0.274328, 0.961044,
		0.789139, -0.597381, 0.142809,
		0.613286, 0.753578, -0.236644,
		35.289200, 41.860321, 48.901665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485855, 41.202751, 49.489517>,  <34.859898, 41.332817, 49.067314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485855, 41.202751, 49.489517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435696, 41.583542, 49.377789>,  <35.405602, 41.812016, 49.310753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435696, 41.583542, 49.377789>,  <35.485855, 41.202751, 49.489517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435696, 41.583542, 49.377789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062954, 0.288610, 0.955375,
		0.990107, 0.102219, -0.096122,
		-0.125400, 0.951975, -0.279319,
		35.398075, 41.869133, 49.293991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864410, 41.476181, 49.996868>,  <35.485855, 41.202751, 49.489517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864410, 41.476181, 49.996868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671806, 41.765518, 49.798908>,  <35.556244, 41.939121, 49.680130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671806, 41.765518, 49.798908>,  <35.864410, 41.476181, 49.996868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671806, 41.765518, 49.798908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041681, 0.545137, 0.837310,
		0.875450, 0.423799, -0.232338,
		-0.481508, 0.723339, -0.494904,
		35.527355, 41.982521, 49.650436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777805, 41.940510, 50.512287>,  <35.864410, 41.476181, 49.996868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777805, 41.940510, 50.512287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559174, 42.109509, 50.223083>,  <35.427994, 42.210907, 50.049561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559174, 42.109509, 50.223083>,  <35.777805, 41.940510, 50.512287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559174, 42.109509, 50.223083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508630, 0.518388, 0.687437,
		0.665239, 0.743486, -0.068448,
		-0.546582, 0.422496, -0.723011,
		35.395199, 42.236256, 50.006180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823681, 42.646004, 50.741325>,  <35.777805, 41.940510, 50.512287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823681, 42.646004, 50.741325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520374, 42.597775, 50.485046>,  <35.338390, 42.568836, 50.331280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520374, 42.597775, 50.485046>,  <35.823681, 42.646004, 50.741325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520374, 42.597775, 50.485046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552402, 0.640762, 0.533175,
		0.346249, 0.758212, -0.552473,
		-0.758263, -0.120575, -0.640701,
		35.292896, 42.561604, 50.292835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587345, 43.369892, 50.455475>,  <35.823681, 42.646004, 50.741325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587345, 43.369892, 50.455475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293377, 43.098713, 50.462162>,  <35.116997, 42.936005, 50.466175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293377, 43.098713, 50.462162>,  <35.587345, 43.369892, 50.455475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293377, 43.098713, 50.462162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568419, 0.629250, 0.530043,
		-0.369862, 0.380036, -0.847806,
		-0.734917, -0.677951, 0.016716,
		35.072903, 42.895329, 50.467178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965275, 43.961819, 50.724514>,  <35.587345, 43.369892, 50.455475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965275, 43.961819, 50.724514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877598, 44.038921, 50.341934>,  <35.824993, 44.085182, 50.112385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877598, 44.038921, 50.341934>,  <35.965275, 43.961819, 50.724514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877598, 44.038921, 50.341934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431807, 0.898225, 0.082067,
		0.874928, -0.395015, -0.280115,
		-0.219188, 0.192758, -0.956452,
		35.811840, 44.096748, 50.055000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577541, 44.108074, 50.218723>,  <35.965275, 43.961819, 50.724514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577541, 44.108074, 50.218723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231300, 44.304958, 50.181915>,  <36.023556, 44.423088, 50.159832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231300, 44.304958, 50.181915>,  <36.577541, 44.108074, 50.218723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231300, 44.304958, 50.181915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459047, 0.853430, 0.246848,
		0.200032, 0.171430, -0.964676,
		-0.865600, 0.492209, -0.092019,
		35.971619, 44.452621, 50.154308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232960, 44.308186, 49.526241>,  <36.577541, 44.108074, 50.218723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232960, 44.308186, 49.526241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941387, 44.575150, 49.465298>,  <35.766441, 44.735329, 49.428730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941387, 44.575150, 49.465298>,  <36.232960, 44.308186, 49.526241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941387, 44.575150, 49.465298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194230, -0.011788, -0.980885,
		-0.656453, -0.744593, -0.121039,
		-0.728933, 0.667414, -0.152360,
		35.722706, 44.775375, 49.419590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810658, 44.043259, 49.098358>,  <36.232960, 44.308186, 49.526241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810658, 44.043259, 49.098358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685230, 44.419479, 49.046139>,  <35.609974, 44.645210, 49.014809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685230, 44.419479, 49.046139>,  <35.810658, 44.043259, 49.098358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685230, 44.419479, 49.046139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054896, -0.155210, -0.986355,
		-0.947977, -0.302126, 0.100302,
		-0.313571, 0.940548, -0.130549,
		35.591160, 44.701645, 49.006973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166367, 44.019455, 48.761501>,  <35.810658, 44.043259, 49.098358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166367, 44.019455, 48.761501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300011, 44.390327, 48.693729>,  <35.380196, 44.612850, 48.653069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300011, 44.390327, 48.693729>,  <35.166367, 44.019455, 48.761501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300011, 44.390327, 48.693729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254268, -0.084429, -0.963441,
		-0.907590, 0.364974, 0.207544,
		0.334109, 0.927181, -0.169428,
		35.400242, 44.668484, 48.642902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677132, 44.387592, 48.369614>,  <35.166367, 44.019455, 48.761501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677132, 44.387592, 48.369614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018246, 44.589443, 48.315784>,  <35.222916, 44.710552, 48.283485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018246, 44.589443, 48.315784>,  <34.677132, 44.387592, 48.369614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018246, 44.589443, 48.315784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127531, -0.048672, -0.990640,
		-0.506452, 0.861966, 0.022848,
		0.852785, 0.504625, -0.134577,
		35.274082, 44.740829, 48.275410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648350, 44.739353, 47.725319>,  <34.677132, 44.387592, 48.369614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648350, 44.739353, 47.725319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035576, 44.810734, 47.795746>,  <35.267914, 44.853561, 47.838001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035576, 44.810734, 47.795746>,  <34.648350, 44.739353, 47.725319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035576, 44.810734, 47.795746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159872, 0.101496, -0.981906,
		-0.193091, 0.978700, 0.069726,
		0.968069, 0.178450, 0.176065,
		35.325996, 44.864269, 47.848564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822842, 45.310883, 47.489075>,  <34.648350, 44.739353, 47.725319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822842, 45.310883, 47.489075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170380, 45.112869, 47.486401>,  <35.378902, 44.994061, 47.484798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170380, 45.112869, 47.486401>,  <34.822842, 45.310883, 47.489075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170380, 45.112869, 47.486401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025147, 0.057608, -0.998023,
		0.494441, 0.866961, 0.062501,
		0.868847, -0.495035, -0.006682,
		35.431034, 44.964359, 47.484398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175274, 45.630043, 46.935822>,  <34.822842, 45.310883, 47.489075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175274, 45.630043, 46.935822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380592, 45.291496, 46.992668>,  <35.503784, 45.088367, 47.026775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380592, 45.291496, 46.992668>,  <35.175274, 45.630043, 46.935822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380592, 45.291496, 46.992668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090428, -0.111341, -0.989659,
		0.853436, 0.520838, 0.019385,
		0.513294, -0.846363, 0.142121,
		35.534580, 45.037586, 47.035305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828587, 45.634529, 46.471188>,  <35.175274, 45.630043, 46.935822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828587, 45.634529, 46.471188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726849, 45.255306, 46.547600>,  <35.665806, 45.027771, 46.593445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726849, 45.255306, 46.547600>,  <35.828587, 45.634529, 46.471188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726849, 45.255306, 46.547600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167998, -0.237831, -0.956668,
		0.952411, -0.211227, 0.219763,
		-0.254341, -0.948061, 0.191028,
		35.650547, 44.970886, 46.604908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229633, 45.246227, 46.076244>,  <35.828587, 45.634529, 46.471188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229633, 45.246227, 46.076244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951134, 44.975784, 46.172668>,  <35.784035, 44.813519, 46.230522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951134, 44.975784, 46.172668>,  <36.229633, 45.246227, 46.076244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951134, 44.975784, 46.172668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096557, -0.420997, -0.901908,
		0.711276, -0.604677, 0.358403,
		-0.696249, -0.676112, 0.241059,
		35.742260, 44.772949, 46.244987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538342, 44.610085, 45.898472>,  <36.229633, 45.246227, 46.076244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538342, 44.610085, 45.898472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146832, 44.528709, 45.908375>,  <35.911926, 44.479885, 45.914318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146832, 44.528709, 45.908375>,  <36.538342, 44.610085, 45.898472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146832, 44.528709, 45.908375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055506, -0.379465, -0.923540,
		0.197276, -0.902564, 0.382702,
		-0.978776, -0.203434, 0.024762,
		35.853199, 44.467678, 45.915802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518059, 43.974327, 45.593147>,  <36.538342, 44.610085, 45.898472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518059, 43.974327, 45.593147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154995, 44.140141, 45.566887>,  <35.937157, 44.239628, 45.551128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154995, 44.140141, 45.566887>,  <36.518059, 43.974327, 45.593147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154995, 44.140141, 45.566887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147668, -0.461849, -0.874580,
		-0.392861, -0.784130, 0.480417,
		-0.907664, 0.414530, -0.065652,
		35.882694, 44.264500, 45.547192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078388, 43.456177, 45.452049>,  <36.518059, 43.974327, 45.593147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078388, 43.456177, 45.452049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874031, 43.775459, 45.324390>,  <35.751415, 43.967030, 45.247795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874031, 43.775459, 45.324390>,  <36.078388, 43.456177, 45.452049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874031, 43.775459, 45.324390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256410, -0.495854, -0.829688,
		-0.820514, -0.342048, 0.457996,
		-0.510892, 0.798206, -0.319151,
		35.720764, 44.014919, 45.228645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343338, 43.213684, 45.205574>,  <36.078388, 43.456177, 45.452049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343338, 43.213684, 45.205574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401222, 43.571247, 45.035873>,  <35.435951, 43.785786, 44.934052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401222, 43.571247, 45.035873>,  <35.343338, 43.213684, 45.205574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401222, 43.571247, 45.035873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068745, -0.418648, -0.905543,
		-0.987084, 0.160203, 0.000871,
		0.144706, 0.893907, -0.424254,
		35.444633, 43.839420, 44.908596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820545, 43.268600, 44.709797>,  <35.343338, 43.213684, 45.205574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820545, 43.268600, 44.709797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073799, 43.544815, 44.569912>,  <35.225750, 43.710545, 44.485981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073799, 43.544815, 44.569912>,  <34.820545, 43.268600, 44.709797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073799, 43.544815, 44.569912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127098, -0.352927, -0.926978,
		-0.763534, 0.631352, -0.135685,
		0.633136, 0.690535, -0.349715,
		35.263741, 43.751976, 44.464996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143166, 43.501778, 44.805687>,  <34.820545, 43.268600, 44.709797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143166, 43.501778, 44.805687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751007, 43.466057, 44.735435>,  <33.515713, 43.444622, 44.693283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751007, 43.466057, 44.735435>,  <34.143166, 43.501778, 44.805687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751007, 43.466057, 44.735435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194207, 0.287659, 0.937836,
		-0.033233, 0.953560, -0.299364,
		-0.980398, -0.089306, -0.175628,
		33.456886, 43.439266, 44.682747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712997, 44.122387, 45.040218>,  <34.143166, 43.501778, 44.805687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712997, 44.122387, 45.040218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486408, 43.795685, 45.084068>,  <33.350456, 43.599663, 45.110378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486408, 43.795685, 45.084068>,  <33.712997, 44.122387, 45.040218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486408, 43.795685, 45.084068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323383, 0.342673, 0.882043,
		-0.757980, 0.464201, -0.458240,
		-0.566471, -0.816758, 0.109625,
		33.316467, 43.550659, 45.116955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957996, 44.361374, 45.160305>,  <33.712997, 44.122387, 45.040218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957996, 44.361374, 45.160305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973305, 43.991638, 45.312164>,  <32.982491, 43.769794, 45.403278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973305, 43.991638, 45.312164>,  <32.957996, 44.361374, 45.160305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973305, 43.991638, 45.312164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487722, 0.314318, 0.814452,
		-0.872160, -0.216328, -0.438793,
		0.038268, -0.924341, 0.379644,
		32.984787, 43.714336, 45.426056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341423, 44.356846, 45.464207>,  <32.957996, 44.361374, 45.160305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341423, 44.356846, 45.464207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548595, 44.061077, 45.636250>,  <32.672901, 43.883614, 45.739475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548595, 44.061077, 45.636250>,  <32.341423, 44.356846, 45.464207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548595, 44.061077, 45.636250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512479, 0.134368, 0.848122,
		-0.684915, -0.659694, -0.309346,
		0.517935, -0.739425, 0.430110,
		32.703976, 43.839249, 45.765282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865465, 43.986065, 45.775555>,  <32.341423, 44.356846, 45.464207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865465, 43.986065, 45.775555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213161, 43.927288, 45.964371>,  <32.421780, 43.892021, 46.077660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213161, 43.927288, 45.964371>,  <31.865465, 43.986065, 45.775555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213161, 43.927288, 45.964371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452418, 0.148554, 0.879346,
		-0.199338, -0.977926, 0.062649,
		0.869242, -0.146943, 0.472044,
		32.473934, 43.883205, 46.105984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712826, 43.633728, 46.448235>,  <31.865465, 43.986065, 45.775555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712826, 43.633728, 46.448235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090462, 43.753231, 46.504009>,  <32.317043, 43.824932, 46.537476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090462, 43.753231, 46.504009>,  <31.712826, 43.633728, 46.448235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090462, 43.753231, 46.504009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219697, 0.254723, 0.941727,
		0.245806, -0.919714, 0.306113,
		0.944094, 0.298734, 0.139446,
		32.373688, 43.842857, 46.545841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843147, 43.292358, 47.086437>,  <31.712826, 43.633728, 46.448235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843147, 43.292358, 47.086437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114433, 43.585068, 47.059502>,  <32.277206, 43.760693, 47.043339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114433, 43.585068, 47.059502>,  <31.843147, 43.292358, 47.086437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114433, 43.585068, 47.059502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136190, 0.215208, 0.967025,
		0.722134, -0.646680, 0.245617,
		0.678214, 0.731772, -0.067338,
		32.317898, 43.804600, 47.039299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879772, 42.561890, 47.410519>,  <31.843147, 43.292358, 47.086437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879772, 42.561890, 47.410519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.486320, 42.497524, 47.442974>,  <31.250250, 42.458904, 47.462448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.486320, 42.497524, 47.442974>,  <31.879772, 42.561890, 47.410519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486320, 42.497524, 47.442974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017851, -0.535017, -0.844653,
		0.179321, -0.829376, 0.529131,
		-0.983629, -0.160910, 0.081135,
		31.191233, 42.449253, 47.467316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772514, 41.814396, 47.450863>,  <31.879772, 42.561890, 47.410519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772514, 41.814396, 47.450863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440025, 41.985226, 47.308491>,  <31.240532, 42.087723, 47.223068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440025, 41.985226, 47.308491>,  <31.772514, 41.814396, 47.450863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440025, 41.985226, 47.308491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076672, -0.546040, -0.834243,
		-0.550651, -0.720719, 0.421126,
		-0.831207, 0.427088, -0.355937,
		31.190659, 42.113346, 47.201714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394840, 41.334106, 47.100204>,  <31.772514, 41.814396, 47.450863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394840, 41.334106, 47.100204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226416, 41.653667, 46.928406>,  <31.125360, 41.845402, 46.825325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226416, 41.653667, 46.928406>,  <31.394840, 41.334106, 47.100204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226416, 41.653667, 46.928406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099320, -0.511282, -0.853654,
		-0.901578, -0.316784, 0.294628,
		-0.421062, 0.798898, -0.429498,
		31.100098, 41.893337, 46.799557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045198, 41.058727, 46.569736>,  <31.394840, 41.334106, 47.100204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045198, 41.058727, 46.569736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.058945, 41.447651, 46.477272>,  <31.067192, 41.681004, 46.421795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.058945, 41.447651, 46.477272>,  <31.045198, 41.058727, 46.569736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058945, 41.447651, 46.477272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113154, -0.226026, -0.967527,
		-0.992983, 0.059407, 0.102253,
		0.034366, 0.972308, -0.231162,
		31.069254, 41.739342, 46.407925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414778, 41.056095, 46.166042>,  <31.045198, 41.058727, 46.569736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414778, 41.056095, 46.166042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689051, 41.341530, 46.108574>,  <30.853615, 41.512791, 46.074093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689051, 41.341530, 46.108574>,  <30.414778, 41.056095, 46.166042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689051, 41.341530, 46.108574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036131, -0.163766, -0.985837,
		-0.727005, 0.681161, -0.086508,
		0.685681, 0.713583, -0.143670,
		30.894754, 41.555603, 46.065472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192566, 41.361835, 45.591156>,  <30.414778, 41.056095, 46.166042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192566, 41.361835, 45.591156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.586063, 41.421852, 45.630623>,  <30.822163, 41.457863, 45.654305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.586063, 41.421852, 45.630623>,  <30.192566, 41.361835, 45.591156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586063, 41.421852, 45.630623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130281, -0.218175, -0.967174,
		-0.123589, 0.964307, -0.234176,
		0.983744, 0.150041, 0.098667,
		30.881187, 41.466866, 45.660221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330723, 41.641701, 44.985184>,  <30.192566, 41.361835, 45.591156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330723, 41.641701, 44.985184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689281, 41.542568, 45.132183>,  <30.904417, 41.483089, 45.220383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.689281, 41.542568, 45.132183>,  <30.330723, 41.641701, 44.985184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689281, 41.542568, 45.132183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335821, -0.161413, -0.927993,
		0.289305, 0.955262, -0.061463,
		0.896397, -0.247832, 0.367494,
		30.958200, 41.468220, 45.242432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.060860, 40.066219, 50.963875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314941, 40.374645, 50.946083>,  <33.467392, 40.559700, 50.935410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314941, 40.374645, 50.946083>,  <33.060860, 40.066219, 50.963875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314941, 40.374645, 50.946083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367124, -0.352103, -0.860955,
		-0.679510, 0.530554, -0.506734,
		0.635205, 0.771062, -0.044479,
		33.505505, 40.605965, 50.932739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974842, 40.412731, 50.294426>,  <33.060860, 40.066219, 50.963875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974842, 40.412731, 50.294426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.339329, 40.496086, 50.436562>,  <33.558022, 40.546101, 50.521843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.339329, 40.496086, 50.436562>,  <32.974842, 40.412731, 50.294426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339329, 40.496086, 50.436562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411715, -0.488904, -0.769067,
		0.013462, 0.847082, -0.531292,
		0.911213, 0.208388, 0.355338,
		33.612694, 40.558601, 50.543163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395004, 40.699646, 49.777031>,  <32.974842, 40.412731, 50.294426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395004, 40.699646, 49.777031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.669338, 40.562435, 50.033772>,  <33.833939, 40.480106, 50.187817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.669338, 40.562435, 50.033772>,  <33.395004, 40.699646, 49.777031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669338, 40.562435, 50.033772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398793, -0.560605, -0.725731,
		0.608770, 0.753693, -0.247682,
		0.685830, -0.343029, 0.641847,
		33.875088, 40.459526, 50.226326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956932, 40.774487, 49.407207>,  <33.395004, 40.699646, 49.777031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956932, 40.774487, 49.407207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.029716, 40.515171, 49.702938>,  <34.073387, 40.359581, 49.880379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.029716, 40.515171, 49.702938>,  <33.956932, 40.774487, 49.407207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029716, 40.515171, 49.702938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479839, -0.597740, -0.642231,
		0.858280, 0.471620, 0.202310,
		0.181960, -0.648291, 0.739331,
		34.084305, 40.320683, 49.924736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590401, 40.600857, 49.226368>,  <33.956932, 40.774487, 49.407207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590401, 40.600857, 49.226368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482723, 40.322807, 49.493004>,  <34.418118, 40.155979, 49.652985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482723, 40.322807, 49.493004>,  <34.590401, 40.600857, 49.226368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482723, 40.322807, 49.493004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575947, -0.670929, -0.467054,
		0.771892, 0.258190, 0.580965,
		-0.269197, -0.695121, 0.666588,
		34.401962, 40.114269, 49.692982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140530, 40.231441, 49.303478>,  <34.590401, 40.600857, 49.226368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140530, 40.231441, 49.303478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.849693, 39.977043, 49.406902>,  <34.675194, 39.824406, 49.468956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.849693, 39.977043, 49.406902>,  <35.140530, 40.231441, 49.303478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849693, 39.977043, 49.406902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438898, -0.720195, -0.537298,
		0.527932, -0.277181, 0.802782,
		-0.727088, -0.635996, 0.258560,
		34.631565, 39.786243, 49.484470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394131, 39.564205, 49.372147>,  <35.140530, 40.231441, 49.303478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394131, 39.564205, 49.372147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.004448, 39.481884, 49.335133>,  <34.770638, 39.432491, 49.312923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.004448, 39.481884, 49.335133>,  <35.394131, 39.564205, 49.372147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004448, 39.481884, 49.335133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219784, -0.772544, -0.595710,
		0.051113, -0.600683, 0.797852,
		-0.974209, -0.205804, -0.092534,
		34.712185, 39.420143, 49.307373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400566, 38.883736, 49.293400>,  <35.394131, 39.564205, 49.372147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400566, 38.883736, 49.293400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035286, 38.972790, 49.156876>,  <34.816116, 39.026222, 49.074959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035286, 38.972790, 49.156876>,  <35.400566, 38.883736, 49.293400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035286, 38.972790, 49.156876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087115, -0.711549, -0.697215,
		-0.398083, -0.666433, 0.630394,
		-0.913204, 0.222632, -0.341312,
		34.761326, 39.039581, 49.054482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062210, 38.242550, 49.079288>,  <35.400566, 38.883736, 49.293400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062210, 38.242550, 49.079288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.869267, 38.543545, 48.899910>,  <34.753502, 38.724140, 48.792282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.869267, 38.543545, 48.899910>,  <35.062210, 38.242550, 49.079288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869267, 38.543545, 48.899910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025060, -0.523578, -0.851609,
		-0.875617, -0.399539, 0.271408,
		-0.482355, 0.752485, -0.448442,
		34.724560, 38.769291, 48.765377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577145, 37.913036, 48.669762>,  <35.062210, 38.242550, 49.079288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577145, 37.913036, 48.669762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652431, 38.279125, 48.527245>,  <34.697605, 38.498779, 48.441734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652431, 38.279125, 48.527245>,  <34.577145, 37.913036, 48.669762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652431, 38.279125, 48.527245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147469, -0.385004, -0.911057,
		-0.970993, 0.118935, -0.207432,
		0.188219, 0.915219, -0.356296,
		34.708897, 38.553692, 48.420357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988766, 37.984833, 48.186661>,  <34.577145, 37.913036, 48.669762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988766, 37.984833, 48.186661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275429, 38.249710, 48.099106>,  <34.447426, 38.408634, 48.046574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275429, 38.249710, 48.099106>,  <33.988766, 37.984833, 48.186661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275429, 38.249710, 48.099106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053278, -0.364909, -0.929517,
		-0.695389, 0.654482, -0.296795,
		0.716656, 0.662189, -0.218884,
		34.490425, 38.448368, 48.033440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832127, 38.257271, 47.523098>,  <33.988766, 37.984833, 48.186661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832127, 38.257271, 47.523098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.218483, 38.348755, 47.571686>,  <34.450294, 38.403645, 47.600838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.218483, 38.348755, 47.571686>,  <33.832127, 38.257271, 47.523098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218483, 38.348755, 47.571686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180946, -0.260469, -0.948375,
		-0.185261, 0.938002, -0.292967,
		0.965886, 0.228708, 0.121473,
		34.508247, 38.417366, 47.608128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292526, 38.572712, 47.040371>,  <33.832127, 38.257271, 47.523098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292526, 38.572712, 47.040371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.007298, 38.292297, 47.036858>,  <32.836159, 38.124050, 47.034748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.007298, 38.292297, 47.036858>,  <33.292526, 38.572712, 47.040371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007298, 38.292297, 47.036858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499332, 0.499030, 0.708263,
		-0.492132, 0.509430, -0.705894,
		-0.713073, -0.701035, -0.008786,
		32.793377, 38.081985, 47.034222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702190, 38.950665, 46.951427>,  <33.292526, 38.572712, 47.040371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702190, 38.950665, 46.951427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.547436, 38.611580, 47.096592>,  <32.454582, 38.408131, 47.183689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.547436, 38.611580, 47.096592>,  <32.702190, 38.950665, 46.951427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547436, 38.611580, 47.096592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515967, 0.525189, 0.676723,
		-0.764264, 0.074562, -0.640579,
		-0.386883, -0.847713, 0.362911,
		32.431370, 38.357265, 47.205467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946522, 39.104317, 47.106308>,  <32.702190, 38.950665, 46.951427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946522, 39.104317, 47.106308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016659, 38.784431, 47.335995>,  <32.058739, 38.592503, 47.473804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016659, 38.784431, 47.335995>,  <31.946522, 39.104317, 47.106308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016659, 38.784431, 47.335995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428553, 0.463092, 0.775814,
		-0.886340, -0.382112, -0.261519,
		0.175341, -0.799710, 0.574212,
		32.069260, 38.544518, 47.508259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307489, 38.977505, 47.488712>,  <31.946522, 39.104317, 47.106308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307489, 38.977505, 47.488712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.585005, 38.778305, 47.696812>,  <31.751514, 38.658787, 47.821671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.585005, 38.778305, 47.696812>,  <31.307489, 38.977505, 47.488712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585005, 38.778305, 47.696812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372317, 0.370342, 0.851015,
		-0.616470, -0.784123, 0.071528,
		0.693790, -0.497995, 0.520247,
		31.793142, 38.628906, 47.852886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889488, 38.620029, 47.978146>,  <31.307489, 38.977505, 47.488712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889488, 38.620029, 47.978146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.257397, 38.647366, 48.132729>,  <31.478142, 38.663769, 48.225479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.257397, 38.647366, 48.132729>,  <30.889488, 38.620029, 47.978146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257397, 38.647366, 48.132729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383114, 0.369874, 0.846414,
		-0.085093, -0.926565, 0.366383,
		0.919773, 0.068343, 0.386454,
		31.533329, 38.667870, 48.248665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826315, 38.427830, 48.693726>,  <30.889488, 38.620029, 47.978146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826315, 38.427830, 48.693726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188135, 38.598206, 48.686050>,  <31.405228, 38.700432, 48.681446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188135, 38.598206, 48.686050>,  <30.826315, 38.427830, 48.693726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188135, 38.598206, 48.686050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178781, 0.419766, 0.889850,
		0.387072, -0.801484, 0.455849,
		0.904551, 0.425934, -0.019189,
		31.459499, 38.725986, 48.680294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076792, 38.228352, 49.320156>,  <30.826315, 38.427830, 48.693726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076792, 38.228352, 49.320156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.275248, 38.552872, 49.196449>,  <31.394321, 38.747581, 49.122227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.275248, 38.552872, 49.196449>,  <31.076792, 38.228352, 49.320156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275248, 38.552872, 49.196449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114626, 0.414282, 0.902902,
		0.860643, -0.412515, 0.298537,
		0.496139, 0.811296, -0.309264,
		31.424089, 38.796261, 49.103672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380636, 38.530441, 50.011696>,  <31.076792, 38.228352, 49.320156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380636, 38.530441, 50.011696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413675, 38.824909, 49.743004>,  <31.433498, 39.001591, 49.581787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413675, 38.824909, 49.743004>,  <31.380636, 38.530441, 50.011696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413675, 38.824909, 49.743004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033924, 0.671569, 0.740164,
		0.996005, -0.083924, 0.030496,
		0.082598, 0.736173, -0.671734,
		31.438454, 39.045761, 49.541485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031841, 38.957626, 50.213440>,  <31.380636, 38.530441, 50.011696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031841, 38.957626, 50.213440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.770990, 39.183659, 50.011284>,  <31.614481, 39.319279, 49.889988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.770990, 39.183659, 50.011284>,  <32.031841, 38.957626, 50.213440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770990, 39.183659, 50.011284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153930, 0.751454, 0.641578,
		0.742320, 0.340594, -0.577024,
		-0.652125, 0.565077, -0.505392,
		31.575354, 39.353180, 49.859665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298145, 39.660175, 50.199127>,  <32.031841, 38.957626, 50.213440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298145, 39.660175, 50.199127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916515, 39.735077, 50.105591>,  <31.687538, 39.780018, 50.049469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916515, 39.735077, 50.105591>,  <32.298145, 39.660175, 50.199127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916515, 39.735077, 50.105591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019147, 0.817090, 0.576192,
		0.298960, 0.545252, -0.783150,
		-0.954074, 0.187253, -0.233838,
		31.630293, 39.791252, 50.035439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284985, 40.430885, 50.116619>,  <32.298145, 39.660175, 50.199127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284985, 40.430885, 50.116619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906746, 40.324703, 50.191856>,  <31.679802, 40.260994, 50.237000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906746, 40.324703, 50.191856>,  <32.284985, 40.430885, 50.116619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906746, 40.324703, 50.191856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086068, 0.761656, 0.642240,
		-0.313749, 0.591112, -0.743067,
		-0.945597, -0.265457, 0.188093,
		31.623066, 40.245068, 50.248283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887133, 41.056637, 50.059834>,  <32.284985, 40.430885, 50.116619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887133, 41.056637, 50.059834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.629442, 40.827168, 50.262169>,  <31.474829, 40.689484, 50.383568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.629442, 40.827168, 50.262169>,  <31.887133, 41.056637, 50.059834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629442, 40.827168, 50.262169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172304, 0.753222, 0.634797,
		-0.745174, 0.321796, -0.584092,
		-0.644226, -0.573676, 0.505835,
		31.436174, 40.655064, 50.413918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067188, 41.457726, 50.138969>,  <31.887133, 41.056637, 50.059834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067188, 41.457726, 50.138969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.129435, 41.179893, 50.419922>,  <31.166782, 41.013195, 50.588493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.129435, 41.179893, 50.419922>,  <31.067188, 41.457726, 50.138969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129435, 41.179893, 50.419922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256970, 0.658103, 0.707720,
		-0.953808, -0.290625, -0.076073,
		0.155617, -0.694578, 0.702385,
		31.176119, 40.971519, 50.630638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852871, 41.843868, 50.651501>,  <31.067188, 41.457726, 50.138969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852871, 41.843868, 50.651501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.968836, 41.507473, 50.834229>,  <31.038414, 41.305634, 50.943867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.968836, 41.507473, 50.834229>,  <30.852871, 41.843868, 50.651501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968836, 41.507473, 50.834229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203224, 0.412339, 0.888075,
		-0.935228, -0.350301, -0.051367,
		0.289912, -0.840991, 0.456820,
		31.055809, 41.255177, 50.971275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246897, 41.911449, 50.220345>,  <30.852871, 41.843868, 50.651501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246897, 41.911449, 50.220345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.277306, 42.310108, 50.208233>,  <30.295551, 42.549305, 50.200966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.277306, 42.310108, 50.208233>,  <30.246897, 41.911449, 50.220345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277306, 42.310108, 50.208233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004833, -0.030001, -0.999538,
		-0.997095, 0.076131, 0.002536,
		0.076020, 0.996646, -0.030282,
		30.300112, 42.609100, 50.199150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871029, 42.061157, 49.690296>,  <30.246897, 41.911449, 50.220345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871029, 42.061157, 49.690296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091331, 42.392677, 49.729824>,  <30.223513, 42.591587, 49.753540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091331, 42.392677, 49.729824>,  <29.871029, 42.061157, 49.690296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091331, 42.392677, 49.729824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145838, 0.021013, -0.989085,
		-0.821827, 0.559156, -0.109297,
		0.550756, 0.828796, 0.098815,
		30.256557, 42.641315, 49.759468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709929, 42.517319, 49.166668>,  <29.871029, 42.061157, 49.690296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709929, 42.517319, 49.166668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.078548, 42.637722, 49.264759>,  <30.299721, 42.709965, 49.323612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.078548, 42.637722, 49.264759>,  <29.709929, 42.517319, 49.166668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078548, 42.637722, 49.264759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234249, 0.072646, -0.969459,
		-0.309633, 0.950849, -0.003565,
		0.921550, 0.301012, 0.245229,
		30.355013, 42.728027, 49.338329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865416, 43.106163, 48.743477>,  <29.709929, 42.517319, 49.166668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865416, 43.106163, 48.743477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.205240, 42.937927, 48.870823>,  <30.409134, 42.836987, 48.947231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.205240, 42.937927, 48.870823>,  <29.865416, 43.106163, 48.743477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205240, 42.937927, 48.870823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380074, 0.069560, -0.922337,
		0.365777, 0.904582, 0.218949,
		0.849559, -0.420586, 0.318365,
		30.460108, 42.811752, 48.966331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460667, 43.576996, 48.495682>,  <29.865416, 43.106163, 48.743477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460667, 43.576996, 48.495682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.603590, 43.206860, 48.546410>,  <30.689344, 42.984779, 48.576847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.603590, 43.206860, 48.546410>,  <30.460667, 43.576996, 48.495682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603590, 43.206860, 48.546410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439263, 0.046658, -0.897146,
		0.824245, 0.376265, 0.423137,
		0.357308, -0.925336, 0.126821,
		30.710783, 42.929260, 48.584457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099112, 43.529312, 48.070255>,  <30.460667, 43.576996, 48.495682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099112, 43.529312, 48.070255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000792, 43.147793, 48.139366>,  <30.941799, 42.918880, 48.180832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000792, 43.147793, 48.139366>,  <31.099112, 43.529312, 48.070255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000792, 43.147793, 48.139366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217125, -0.227897, -0.949168,
		0.944690, -0.195789, 0.263109,
		-0.245798, -0.953798, 0.172781,
		30.927052, 42.861652, 48.191200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651890, 43.176868, 47.855293>,  <31.099112, 43.529312, 48.070255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651890, 43.176868, 47.855293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.329596, 42.940266, 47.843204>,  <31.136219, 42.798306, 47.835949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.329596, 42.940266, 47.843204>,  <31.651890, 43.176868, 47.855293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329596, 42.940266, 47.843204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103450, -0.090306, -0.990527,
		0.583171, -0.801229, 0.133954,
		-0.805735, -0.591504, -0.030224,
		31.087875, 42.762814, 47.834137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408543, 43.087414, 47.624134>,  <31.651890, 43.176868, 47.855293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408543, 43.087414, 47.624134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.462875, 43.473541, 47.534946>,  <32.495476, 43.705215, 47.481434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.462875, 43.473541, 47.534946>,  <32.408543, 43.087414, 47.624134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462875, 43.473541, 47.534946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182487, 0.196825, 0.963306,
		0.973780, -0.171539, -0.149422,
		0.135834, 0.965316, -0.222968,
		32.503624, 43.763138, 47.468056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981152, 43.279640, 47.945732>,  <32.408543, 43.087414, 47.624134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981152, 43.279640, 47.945732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.775570, 43.618767, 47.893494>,  <32.652222, 43.822243, 47.862152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.775570, 43.618767, 47.893494>,  <32.981152, 43.279640, 47.945732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775570, 43.618767, 47.893494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228406, 0.281999, 0.931830,
		0.826848, 0.449092, -0.338582,
		-0.513958, 0.847816, -0.130595,
		32.621384, 43.873112, 47.854317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390976, 43.850376, 48.101456>,  <32.981152, 43.279640, 47.945732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390976, 43.850376, 48.101456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.012676, 43.966446, 48.159904>,  <32.785698, 44.036087, 48.194973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.012676, 43.966446, 48.159904>,  <33.390976, 43.850376, 48.101456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012676, 43.966446, 48.159904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255289, 0.385534, 0.886674,
		0.200958, 0.875876, -0.438698,
		-0.945750, 0.290179, 0.146125,
		32.728951, 44.053501, 48.203743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484062, 44.500122, 48.386627>,  <33.390976, 43.850376, 48.101456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484062, 44.500122, 48.386627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108776, 44.376419, 48.448753>,  <32.883606, 44.302197, 48.486027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108776, 44.376419, 48.448753>,  <33.484062, 44.500122, 48.386627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108776, 44.376419, 48.448753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036774, 0.535349, 0.843830,
		-0.344103, 0.785980, -0.513643,
		-0.938212, -0.309253, 0.155311,
		32.827312, 44.283642, 48.495346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010693, 45.051174, 48.487381>,  <33.484062, 44.500122, 48.386627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010693, 45.051174, 48.487381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804733, 44.742397, 48.636501>,  <32.681156, 44.557133, 48.725975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804733, 44.742397, 48.636501>,  <33.010693, 45.051174, 48.487381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804733, 44.742397, 48.636501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051235, 0.406390, 0.912262,
		-0.855716, 0.488826, -0.169701,
		-0.514903, -0.771943, 0.372800,
		32.650261, 44.510815, 48.748341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581303, 45.472816, 48.910408>,  <33.010693, 45.051174, 48.487381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581303, 45.472816, 48.910408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557858, 45.092796, 49.033028>,  <32.543793, 44.864784, 49.106598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557858, 45.092796, 49.033028>,  <32.581303, 45.472816, 48.910408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557858, 45.092796, 49.033028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119778, 0.298162, 0.946970,
		-0.991069, 0.092220, 0.096319,
		-0.058611, -0.950050, 0.306546,
		32.540276, 44.807781, 49.124992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026321, 45.459015, 49.354675>,  <32.581303, 45.472816, 48.910408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026321, 45.459015, 49.354675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.292583, 45.172607, 49.438786>,  <32.452343, 45.000763, 49.489250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.292583, 45.172607, 49.438786>,  <32.026321, 45.459015, 49.354675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292583, 45.172607, 49.438786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016294, 0.295653, 0.955156,
		-0.746079, -0.632381, 0.208471,
		0.665658, -0.716019, 0.210277,
		32.492279, 44.957802, 49.501869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952177, 45.380608, 50.048111>,  <32.026321, 45.459015, 49.354675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952177, 45.380608, 50.048111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304245, 45.194263, 50.011730>,  <32.515484, 45.082455, 49.989902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304245, 45.194263, 50.011730>,  <31.952177, 45.380608, 50.048111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304245, 45.194263, 50.011730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254839, 0.302141, 0.918569,
		-0.400449, -0.831674, 0.384656,
		0.880169, -0.465865, -0.090951,
		32.568295, 45.054504, 49.984444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156715, 45.285015, 50.753017>,  <31.952177, 45.380608, 50.048111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156715, 45.285015, 50.753017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.502377, 45.240509, 50.556709>,  <32.709774, 45.213806, 50.438927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.502377, 45.240509, 50.556709>,  <32.156715, 45.285015, 50.753017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502377, 45.240509, 50.556709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502315, 0.132192, 0.854520,
		-0.030206, -0.984959, 0.170126,
		0.864157, -0.111269, -0.490767,
		32.761623, 45.207127, 50.409481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.344482, 38.019291, 35.933002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619286, 38.281353, 36.058723>,  <36.784168, 38.438591, 36.134155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619286, 38.281353, 36.058723>,  <36.344482, 38.019291, 35.933002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619286, 38.281353, 36.058723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617875, 0.299067, 0.727179,
		0.382422, -0.693777, 0.610268,
		0.687011, 0.655159, 0.314298,
		36.825390, 38.477901, 36.153011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267372, 38.034439, 36.594254>,  <36.344482, 38.019291, 35.933002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267372, 38.034439, 36.594254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473190, 38.374367, 36.548550>,  <36.596680, 38.578323, 36.521126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473190, 38.374367, 36.548550>,  <36.267372, 38.034439, 36.594254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473190, 38.374367, 36.548550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330018, 0.319257, 0.888348,
		0.791413, -0.419385, 0.444727,
		0.514542, 0.849818, -0.114260,
		36.627552, 38.629311, 36.514271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652321, 38.005280, 37.155254>,  <36.267372, 38.034439, 36.594254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652321, 38.005280, 37.155254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604103, 38.381805, 37.029152>,  <36.575172, 38.607723, 36.953491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604103, 38.381805, 37.029152>,  <36.652321, 38.005280, 37.155254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604103, 38.381805, 37.029152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337705, 0.259748, 0.904702,
		0.933501, 0.215521, 0.286577,
		-0.120545, 0.941319, -0.315257,
		36.567940, 38.664200, 36.934574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827080, 38.462238, 37.764729>,  <36.652321, 38.005280, 37.155254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827080, 38.462238, 37.764729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639168, 38.730236, 37.534801>,  <36.526421, 38.891033, 37.396847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639168, 38.730236, 37.534801>,  <36.827080, 38.462238, 37.764729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639168, 38.730236, 37.534801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427661, 0.396905, 0.812141,
		0.772277, 0.627355, 0.100072,
		-0.469782, 0.669994, -0.574816,
		36.498234, 38.931232, 37.362358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852028, 39.116676, 38.042896>,  <36.827080, 38.462238, 37.764729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852028, 39.116676, 38.042896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531898, 39.170910, 37.809280>,  <36.339821, 39.203449, 37.669109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531898, 39.170910, 37.809280>,  <36.852028, 39.116676, 38.042896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531898, 39.170910, 37.809280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537431, 0.269631, 0.799041,
		0.265812, 0.953371, -0.142925,
		-0.800319, 0.135583, -0.584043,
		36.291801, 39.211586, 37.634068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528343, 39.764835, 38.280479>,  <36.852028, 39.116676, 38.042896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528343, 39.764835, 38.280479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238510, 39.598785, 38.060429>,  <36.064610, 39.499153, 37.928398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238510, 39.598785, 38.060429>,  <36.528343, 39.764835, 38.280479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238510, 39.598785, 38.060429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680426, 0.304048, 0.666765,
		-0.109526, 0.857452, -0.502772,
		-0.724586, -0.415128, -0.550131,
		36.021133, 39.474247, 37.895390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918701, 40.261440, 38.293446>,  <36.528343, 39.764835, 38.280479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918701, 40.261440, 38.293446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738838, 39.932713, 38.153488>,  <35.630920, 39.735477, 38.069515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738838, 39.932713, 38.153488>,  <35.918701, 40.261440, 38.293446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738838, 39.932713, 38.153488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842091, 0.259438, 0.472837,
		-0.297810, 0.507256, -0.808703,
		-0.449658, -0.821817, -0.349892,
		35.603939, 39.686169, 38.048519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303150, 40.544373, 38.001495>,  <35.918701, 40.261440, 38.293446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303150, 40.544373, 38.001495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248688, 40.156864, 38.084381>,  <35.216011, 39.924358, 38.134113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248688, 40.156864, 38.084381>,  <35.303150, 40.544373, 38.001495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248688, 40.156864, 38.084381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824656, 0.226740, 0.518200,
		-0.549003, -0.100329, -0.829777,
		-0.136153, -0.968774, 0.207218,
		35.207840, 39.866234, 38.146545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643421, 40.409023, 37.946938>,  <35.303150, 40.544373, 38.001495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643421, 40.409023, 37.946938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767776, 40.090061, 38.153820>,  <34.842388, 39.898685, 38.277950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767776, 40.090061, 38.153820>,  <34.643421, 40.409023, 37.946938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767776, 40.090061, 38.153820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772450, 0.105083, 0.626321,
		-0.553779, -0.594228, -0.583285,
		0.310885, -0.797402, 0.517204,
		34.861042, 39.850842, 38.308983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047997, 40.048183, 38.155949>,  <34.643421, 40.409023, 37.946938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047997, 40.048183, 38.155949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341331, 39.956722, 38.412056>,  <34.517330, 39.901848, 38.565720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341331, 39.956722, 38.412056>,  <34.047997, 40.048183, 38.155949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341331, 39.956722, 38.412056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586689, 0.263040, 0.765902,
		-0.343538, -0.937299, 0.058750,
		0.733333, -0.228649, 0.640267,
		34.561333, 39.888126, 38.604137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689362, 39.783264, 38.650005>,  <34.047997, 40.048183, 38.155949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689362, 39.783264, 38.650005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031277, 39.823982, 38.853565>,  <34.236423, 39.848412, 38.975700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031277, 39.823982, 38.853565>,  <33.689362, 39.783264, 38.650005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031277, 39.823982, 38.853565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518977, 0.162278, 0.839243,
		0.002844, -0.981481, 0.191540,
		0.854784, 0.101791, 0.508904,
		34.287712, 39.854519, 39.006237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607059, 39.471157, 39.299423>,  <33.689362, 39.783264, 38.650005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607059, 39.471157, 39.299423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881130, 39.762054, 39.315697>,  <34.045570, 39.936592, 39.325459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881130, 39.762054, 39.315697>,  <33.607059, 39.471157, 39.299423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881130, 39.762054, 39.315697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437274, 0.366028, 0.821471,
		0.582519, -0.580638, 0.568798,
		0.685174, 0.727243, 0.040680,
		34.086681, 39.980228, 39.327900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136101, 39.138649, 39.692112>,  <33.607059, 39.471157, 39.299423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136101, 39.138649, 39.692112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744316, 39.133137, 39.772572>,  <32.509247, 39.129829, 39.820847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744316, 39.133137, 39.772572>,  <33.136101, 39.138649, 39.692112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744316, 39.133137, 39.772572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175118, -0.436310, -0.882591,
		0.099930, -0.899691, 0.424935,
		-0.979463, -0.013783, 0.201153,
		32.450478, 39.129002, 39.832916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853664, 38.495106, 39.364063>,  <33.136101, 39.138649, 39.692112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853664, 38.495106, 39.364063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519657, 38.707550, 39.421570>,  <32.319252, 38.835014, 39.456074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519657, 38.707550, 39.421570>,  <32.853664, 38.495106, 39.364063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519657, 38.707550, 39.421570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390383, -0.387743, -0.835019,
		-0.387743, -0.753379, 0.531108,
		0.835019, -0.531108, -0.143762,
		32.269150, 38.866882, 39.464699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329624, 38.020355, 39.386543>,  <32.853664, 38.495106, 39.364063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329624, 38.020355, 39.386543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129398, 38.358063, 39.309978>,  <32.009262, 38.560688, 39.264038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129398, 38.358063, 39.309978>,  <32.329624, 38.020355, 39.386543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129398, 38.358063, 39.309978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540277, -0.477431, -0.692936,
		-0.676413, -0.243444, 0.695126,
		-0.500565, 0.844272, -0.191414,
		31.979229, 38.611343, 39.252556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681675, 37.840797, 39.329597>,  <32.329624, 38.020355, 39.386543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681675, 37.840797, 39.329597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680946, 38.190697, 39.135769>,  <31.680510, 38.400639, 39.019474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680946, 38.190697, 39.135769>,  <31.681675, 37.840797, 39.329597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680946, 38.190697, 39.135769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543389, -0.407651, -0.733859,
		-0.839479, 0.261974, 0.476072,
		-0.001820, 0.874752, -0.484568,
		31.680401, 38.453121, 38.990398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053345, 37.917950, 39.165138>,  <31.681675, 37.840797, 39.329597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053345, 37.917950, 39.165138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218643, 38.176399, 38.908466>,  <31.317823, 38.331467, 38.754463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218643, 38.176399, 38.908466>,  <31.053345, 37.917950, 39.165138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218643, 38.176399, 38.908466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630872, -0.305020, -0.713417,
		-0.656679, 0.699636, 0.281570,
		0.413248, 0.646121, -0.641681,
		31.342617, 38.370235, 38.715961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512344, 38.068428, 38.678871>,  <31.053345, 37.917950, 39.165138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512344, 38.068428, 38.678871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851120, 38.170956, 38.492542>,  <31.054386, 38.232471, 38.380745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851120, 38.170956, 38.492542>,  <30.512344, 38.068428, 38.678871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851120, 38.170956, 38.492542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409494, -0.244347, -0.878982,
		-0.339125, 0.935197, -0.101985,
		0.846941, 0.256323, -0.465821,
		31.105202, 38.247852, 38.352795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256086, 38.409264, 38.055073>,  <30.512344, 38.068428, 38.678871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256086, 38.409264, 38.055073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632721, 38.285374, 38.002186>,  <30.858702, 38.211040, 37.970455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632721, 38.285374, 38.002186>,  <30.256086, 38.409264, 38.055073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632721, 38.285374, 38.002186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253402, -0.393038, -0.883916,
		0.221810, 0.865788, -0.448566,
		0.941588, -0.309729, -0.132213,
		30.915197, 38.192455, 37.962521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355412, 38.563232, 37.396015>,  <30.256086, 38.409264, 38.055073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355412, 38.563232, 37.396015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624090, 38.286732, 37.502590>,  <30.785297, 38.120831, 37.566536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624090, 38.286732, 37.502590>,  <30.355412, 38.563232, 37.396015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624090, 38.286732, 37.502590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399315, -0.640760, -0.655723,
		0.623996, 0.334053, -0.706425,
		0.671696, -0.691256, 0.266440,
		30.825600, 38.079353, 37.582523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588163, 38.108238, 36.745701>,  <30.355412, 38.563232, 37.396015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588163, 38.108238, 36.745701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669502, 37.886547, 37.068558>,  <30.718306, 37.753532, 37.262272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669502, 37.886547, 37.068558>,  <30.588163, 38.108238, 36.745701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669502, 37.886547, 37.068558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085117, -0.831251, -0.549342,
		0.975400, 0.043005, -0.216207,
		0.203347, -0.554231, 0.807142,
		30.730507, 37.720280, 37.310699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048471, 37.575771, 36.507351>,  <30.588163, 38.108238, 36.745701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048471, 37.575771, 36.507351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885683, 37.446129, 36.848953>,  <30.788010, 37.368343, 37.053917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885683, 37.446129, 36.848953>,  <31.048471, 37.575771, 36.507351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885683, 37.446129, 36.848953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157271, -0.896111, -0.415032,
		0.899800, -0.303217, 0.313718,
		-0.406971, -0.324107, 0.854008,
		30.763592, 37.348896, 37.105156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302490, 37.017464, 36.606743>,  <31.048471, 37.575771, 36.507351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302490, 37.017464, 36.606743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018757, 36.959038, 36.882572>,  <30.848516, 36.923985, 37.048069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018757, 36.959038, 36.882572>,  <31.302490, 37.017464, 36.606743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018757, 36.959038, 36.882572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057891, -0.962918, -0.263509,
		0.702492, -0.226836, 0.674574,
		-0.709333, -0.146061, 0.689574,
		30.805958, 36.915218, 37.089443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420017, 36.332806, 36.918552>,  <31.302490, 37.017464, 36.606743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420017, 36.332806, 36.918552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030176, 36.408508, 36.966431>,  <30.796270, 36.453930, 36.995159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030176, 36.408508, 36.966431>,  <31.420017, 36.332806, 36.918552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030176, 36.408508, 36.966431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210234, -0.957388, -0.198016,
		0.077120, -0.218151, 0.972863,
		-0.974605, 0.189258, 0.119696,
		30.737795, 36.465286, 37.002338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110094, 35.875359, 37.390083>,  <31.420017, 36.332806, 36.918552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110094, 35.875359, 37.390083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788107, 35.980743, 37.177437>,  <30.594915, 36.043976, 37.049850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788107, 35.980743, 37.177437>,  <31.110094, 35.875359, 37.390083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788107, 35.980743, 37.177437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250545, -0.963138, -0.097945,
		-0.537823, 0.054351, 0.841304,
		-0.804968, 0.263462, -0.531615,
		30.546618, 36.059780, 37.017952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427433, 35.535461, 37.740322>,  <31.110094, 35.875359, 37.390083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427433, 35.535461, 37.740322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335453, 35.612034, 37.358646>,  <30.280266, 35.657978, 37.129642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335453, 35.612034, 37.358646>,  <30.427433, 35.535461, 37.740322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335453, 35.612034, 37.358646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333095, -0.936727, -0.107657,
		-0.914424, 0.293079, 0.279167,
		-0.229951, 0.191433, -0.954189,
		30.266468, 35.669464, 37.072392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736883, 35.223240, 37.553486>,  <30.427433, 35.535461, 37.740322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736883, 35.223240, 37.553486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917225, 35.275326, 37.200268>,  <30.025431, 35.306576, 36.988335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917225, 35.275326, 37.200268>,  <29.736883, 35.223240, 37.553486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917225, 35.275326, 37.200268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415181, -0.845176, -0.336604,
		-0.790161, 0.518385, -0.326990,
		0.450854, 0.130211, -0.883049,
		30.052481, 35.314388, 36.935352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408346, 34.833988, 37.905552>,  <29.736883, 35.223240, 37.553486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408346, 34.833988, 37.905552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389017, 34.436066, 37.941406>,  <30.377420, 34.197311, 37.962917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389017, 34.436066, 37.941406>,  <30.408346, 34.833988, 37.905552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389017, 34.436066, 37.941406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692774, -0.098025, -0.714462,
		0.719534, 0.027572, 0.693909,
		-0.048321, -0.994802, 0.089633,
		30.374521, 34.137627, 37.968296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068745, 34.660538, 37.653809>,  <30.408346, 34.833988, 37.905552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068745, 34.660538, 37.653809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467838, 34.638260, 37.638729>,  <31.707294, 34.624893, 37.629681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467838, 34.638260, 37.638729>,  <31.068745, 34.660538, 37.653809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467838, 34.638260, 37.638729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052014, 0.283611, 0.957528,
		-0.042634, -0.957320, 0.285866,
		0.997736, -0.055692, -0.037702,
		31.767159, 34.621552, 37.627419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306839, 34.226536, 38.270493>,  <31.068745, 34.660538, 37.653809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306839, 34.226536, 38.270493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616426, 34.447117, 38.145992>,  <31.802179, 34.579464, 38.071293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616426, 34.447117, 38.145992>,  <31.306839, 34.226536, 38.270493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616426, 34.447117, 38.145992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239727, 0.199774, 0.950064,
		0.586092, -0.809934, 0.022421,
		0.773968, 0.551450, -0.311249,
		31.848618, 34.612553, 38.052616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917257, 33.993774, 38.612022>,  <31.306839, 34.226536, 38.270493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917257, 33.993774, 38.612022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008556, 34.366650, 38.499653>,  <32.063335, 34.590374, 38.432232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008556, 34.366650, 38.499653>,  <31.917257, 33.993774, 38.612022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008556, 34.366650, 38.499653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259062, 0.219990, 0.940474,
		0.938504, -0.287439, -0.191283,
		0.228249, 0.932193, -0.280926,
		32.077030, 34.646309, 38.415375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492100, 34.118855, 38.938129>,  <31.917257, 33.993774, 38.612022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492100, 34.118855, 38.938129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340767, 34.481457, 38.863178>,  <32.249969, 34.699020, 38.818207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340767, 34.481457, 38.863178>,  <32.492100, 34.118855, 38.938129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340767, 34.481457, 38.863178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063975, 0.227546, 0.971664,
		0.923458, 0.355620, -0.144081,
		-0.378328, 0.906509, -0.187379,
		32.227268, 34.753410, 38.806965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976116, 34.549416, 39.292675>,  <32.492100, 34.118855, 38.938129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976116, 34.549416, 39.292675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644859, 34.768456, 39.244820>,  <32.446106, 34.899879, 39.216106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644859, 34.768456, 39.244820>,  <32.976116, 34.549416, 39.292675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644859, 34.768456, 39.244820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139972, 0.408716, 0.901864,
		0.542756, 0.730128, -0.415124,
		-0.828144, 0.547598, -0.119636,
		32.396416, 34.932735, 39.208927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161785, 35.219952, 39.541069>,  <32.976116, 34.549416, 39.292675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161785, 35.219952, 39.541069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761944, 35.210751, 39.547665>,  <32.522041, 35.205231, 39.551620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761944, 35.210751, 39.547665>,  <33.161785, 35.219952, 39.541069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761944, 35.210751, 39.547665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005029, 0.428990, 0.903295,
		-0.027847, 0.903016, -0.428703,
		-0.999600, -0.022999, 0.016487,
		32.462063, 35.203850, 39.552612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906322, 35.933571, 39.677448>,  <33.161785, 35.219952, 39.541069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906322, 35.933571, 39.677448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613991, 35.669605, 39.747192>,  <32.438591, 35.511227, 39.789040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613991, 35.669605, 39.747192>,  <32.906322, 35.933571, 39.677448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613991, 35.669605, 39.747192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112875, 0.368777, 0.922639,
		-0.673166, 0.654608, -0.344000,
		-0.730826, -0.659918, 0.174359,
		32.394741, 35.471630, 39.799500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410728, 36.343185, 39.892612>,  <32.906322, 35.933571, 39.677448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410728, 36.343185, 39.892612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353825, 35.970360, 40.025894>,  <32.319683, 35.746666, 40.105862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353825, 35.970360, 40.025894>,  <32.410728, 36.343185, 39.892612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353825, 35.970360, 40.025894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077157, 0.346045, 0.935040,
		-0.986818, 0.107307, -0.121142,
		-0.142257, -0.932061, 0.333204,
		32.311146, 35.690742, 40.125854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967075, 36.423977, 40.417240>,  <32.410728, 36.343185, 39.892612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967075, 36.423977, 40.417240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079716, 36.043705, 40.469250>,  <32.147301, 35.815540, 40.500458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079716, 36.043705, 40.469250>,  <31.967075, 36.423977, 40.417240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079716, 36.043705, 40.469250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048087, 0.121360, 0.991443,
		-0.958326, -0.285443, -0.011540,
		0.281600, -0.950681, 0.130028,
		32.164196, 35.758499, 40.508259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490675, 36.150349, 40.917114>,  <31.967075, 36.423977, 40.417240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490675, 36.150349, 40.917114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828573, 35.936287, 40.918602>,  <32.031311, 35.807850, 40.919495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828573, 35.936287, 40.918602>,  <31.490675, 36.150349, 40.917114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828573, 35.936287, 40.918602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017482, 0.034538, 0.999250,
		-0.534882, -0.844048, 0.038531,
		0.844746, -0.535155, 0.003718,
		32.081997, 35.775742, 40.919716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356323, 35.766830, 41.459450>,  <31.490675, 36.150349, 40.917114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356323, 35.766830, 41.459450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749929, 35.738304, 41.394184>,  <31.986094, 35.721188, 41.355022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749929, 35.738304, 41.394184>,  <31.356323, 35.766830, 41.459450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749929, 35.738304, 41.394184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175687, 0.239392, 0.954896,
		-0.029039, -0.968301, 0.248095,
		0.984018, -0.071316, -0.163166,
		32.045135, 35.716911, 41.345234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667524, 35.296181, 41.948669>,  <31.356323, 35.766830, 41.459450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667524, 35.296181, 41.948669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981087, 35.501446, 41.808868>,  <32.169224, 35.624607, 41.724987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981087, 35.501446, 41.808868>,  <31.667524, 35.296181, 41.948669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981087, 35.501446, 41.808868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334281, 0.125529, 0.934076,
		0.523209, -0.849061, -0.073138,
		0.783907, 0.513166, -0.349503,
		32.216259, 35.655396, 41.704018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290649, 35.092598, 42.216789>,  <31.667524, 35.296181, 41.948669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290649, 35.092598, 42.216789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390491, 35.459862, 42.093704>,  <32.450397, 35.680218, 42.019852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390491, 35.459862, 42.093704>,  <32.290649, 35.092598, 42.216789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390491, 35.459862, 42.093704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329785, 0.218179, 0.918499,
		0.910461, -0.330741, -0.248336,
		0.249604, 0.918155, -0.307717,
		32.465374, 35.735310, 42.001389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943367, 35.152737, 42.441875>,  <32.290649, 35.092598, 42.216789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943367, 35.152737, 42.441875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808983, 35.520176, 42.358627>,  <32.728352, 35.740639, 42.308678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808983, 35.520176, 42.358627>,  <32.943367, 35.152737, 42.441875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808983, 35.520176, 42.358627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214447, 0.289763, 0.932764,
		0.917139, 0.268738, -0.294339,
		-0.335958, 0.918595, -0.208123,
		32.708195, 35.795753, 42.296192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311462, 35.549305, 42.879135>,  <32.943367, 35.152737, 42.441875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311462, 35.549305, 42.879135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992512, 35.771248, 42.784210>,  <32.801140, 35.904415, 42.727253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992512, 35.771248, 42.784210>,  <33.311462, 35.549305, 42.879135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992512, 35.771248, 42.784210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010082, 0.405441, 0.914066,
		0.603396, 0.726463, -0.328884,
		-0.797378, 0.554860, -0.237317,
		32.753300, 35.937706, 42.713017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498466, 36.285618, 43.089386>,  <33.311462, 35.549305, 42.879135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498466, 36.285618, 43.089386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101700, 36.235912, 43.099686>,  <32.863640, 36.206089, 43.105865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101700, 36.235912, 43.099686>,  <33.498466, 36.285618, 43.089386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101700, 36.235912, 43.099686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036544, 0.473991, 0.879771,
		-0.121531, 0.871717, -0.474699,
		-0.991915, -0.124267, 0.025749,
		32.804127, 36.198631, 43.107410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268406, 36.952785, 43.300598>,  <33.498466, 36.285618, 43.089386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268406, 36.952785, 43.300598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922398, 36.766888, 43.376232>,  <32.714794, 36.655350, 43.421612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922398, 36.766888, 43.376232>,  <33.268406, 36.952785, 43.300598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922398, 36.766888, 43.376232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159416, 0.611901, 0.774703,
		-0.475741, 0.639989, -0.603393,
		-0.865018, -0.464749, 0.189082,
		32.662891, 36.627464, 43.432957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857708, 37.458260, 43.546555>,  <33.268406, 36.952785, 43.300598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857708, 37.458260, 43.546555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655342, 37.138123, 43.675243>,  <32.533924, 36.946041, 43.752457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655342, 37.138123, 43.675243>,  <32.857708, 37.458260, 43.546555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655342, 37.138123, 43.675243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150506, 0.449158, 0.880684,
		-0.849354, 0.397126, -0.347690,
		-0.505911, -0.800342, 0.321725,
		32.503571, 36.898022, 43.771759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259369, 37.677330, 43.844555>,  <32.857708, 37.458260, 43.546555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259369, 37.677330, 43.844555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347385, 37.317677, 43.995892>,  <32.400196, 37.101887, 44.086693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347385, 37.317677, 43.995892>,  <32.259369, 37.677330, 43.844555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347385, 37.317677, 43.995892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014830, 0.384723, 0.922913,
		-0.975378, -0.208690, 0.071321,
		0.220042, -0.899131, 0.378345,
		32.413399, 37.047935, 44.109394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821007, 37.689243, 44.468529>,  <32.259369, 37.677330, 43.844555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821007, 37.689243, 44.468529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103951, 37.407654, 44.494045>,  <32.273716, 37.238701, 44.509357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103951, 37.407654, 44.494045>,  <31.821007, 37.689243, 44.468529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103951, 37.407654, 44.494045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202518, 0.288302, 0.935878,
		-0.677221, -0.649083, 0.346500,
		0.707359, -0.703969, 0.063793,
		32.316158, 37.196465, 44.513184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651779, 37.254948, 45.021542>,  <31.821007, 37.689243, 44.468529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651779, 37.254948, 45.021542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046368, 37.219048, 44.966667>,  <32.283119, 37.197510, 44.933743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046368, 37.219048, 44.966667>,  <31.651779, 37.254948, 45.021542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046368, 37.219048, 44.966667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151375, 0.177472, 0.972414,
		-0.062927, -0.980025, 0.188657,
		0.986472, -0.089749, -0.137183,
		32.342308, 37.192123, 44.925510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969025, 36.659687, 45.443573>,  <31.651779, 37.254948, 45.021542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969025, 36.659687, 45.443573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299019, 36.870049, 45.360794>,  <32.497017, 36.996265, 45.311127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299019, 36.870049, 45.360794>,  <31.969025, 36.659687, 45.443573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299019, 36.870049, 45.360794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208782, 0.056666, 0.976319,
		0.525176, -0.848655, -0.063051,
		0.824985, 0.525903, -0.206943,
		32.546513, 37.027821, 45.298710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462082, 36.400932, 45.859390>,  <31.969025, 36.659687, 45.443573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462082, 36.400932, 45.859390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601395, 36.761284, 45.755760>,  <32.684982, 36.977493, 45.693581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601395, 36.761284, 45.755760>,  <32.462082, 36.400932, 45.859390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601395, 36.761284, 45.755760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272719, 0.167045, 0.947481,
		0.896840, -0.400648, -0.187507,
		0.348285, 0.900876, -0.259077,
		32.705879, 37.031548, 45.678036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983471, 36.637001, 46.438816>,  <32.462082, 36.400932, 45.859390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983471, 36.637001, 46.438816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905628, 36.976837, 46.242725>,  <32.858921, 37.180740, 46.125069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905628, 36.976837, 46.242725>,  <32.983471, 36.637001, 46.438816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905628, 36.976837, 46.242725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045114, 0.507010, 0.860759,
		0.979843, 0.145393, -0.136996,
		-0.194607, 0.849589, -0.490231,
		32.847248, 37.231712, 46.095657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520866, 37.163593, 46.728371>,  <32.983471, 36.637001, 46.438816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520866, 37.163593, 46.728371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189373, 37.333469, 46.582581>,  <32.990479, 37.435394, 46.495106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189373, 37.333469, 46.582581>,  <33.520866, 37.163593, 46.728371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189373, 37.333469, 46.582581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071329, 0.565788, 0.821460,
		0.555083, 0.706766, -0.438593,
		-0.828731, 0.424694, -0.364472,
		32.940754, 37.460876, 46.473240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560772, 37.957245, 46.754238>,  <33.520866, 37.163593, 46.728371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560772, 37.957245, 46.754238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171520, 37.866489, 46.738529>,  <32.937969, 37.812038, 46.729103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171520, 37.866489, 46.738529>,  <33.560772, 37.957245, 46.754238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171520, 37.866489, 46.738529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176367, 0.624811, 0.760596,
		-0.148031, 0.747084, -0.648037,
		-0.973130, -0.226884, -0.039270,
		32.879581, 37.798424, 46.726749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017136, 38.610870, 46.869892>,  <33.560772, 37.957245, 46.754238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017136, 38.610870, 46.869892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385822, 38.530632, 47.002682>,  <34.607033, 38.482491, 47.082355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385822, 38.530632, 47.002682>,  <34.017136, 38.610870, 46.869892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385822, 38.530632, 47.002682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298924, -0.178033, -0.937523,
		0.247163, 0.963362, -0.104133,
		0.921713, -0.200593, 0.331975,
		34.662334, 38.470455, 47.102276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536976, 38.984524, 46.442562>,  <34.017136, 38.610870, 46.869892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536976, 38.984524, 46.442562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721489, 38.669670, 46.606335>,  <34.832195, 38.480759, 46.704597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721489, 38.669670, 46.606335>,  <34.536976, 38.984524, 46.442562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721489, 38.669670, 46.606335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317555, -0.284426, -0.904577,
		0.828479, 0.547284, 0.118758,
		0.461283, -0.787135, 0.409434,
		34.859875, 38.433529, 46.729164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239044, 39.053310, 46.286289>,  <34.536976, 38.984524, 46.442562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239044, 39.053310, 46.286289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148514, 38.669415, 46.352840>,  <35.094196, 38.439079, 46.392769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148514, 38.669415, 46.352840>,  <35.239044, 39.053310, 46.286289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148514, 38.669415, 46.352840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221890, -0.217116, -0.950592,
		0.948441, -0.178229, 0.262095,
		-0.226329, -0.959737, 0.166375,
		35.080616, 38.381493, 46.402752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776184, 38.668308, 45.993809>,  <35.239044, 39.053310, 46.286289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776184, 38.668308, 45.993809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485054, 38.394478, 46.009953>,  <35.310375, 38.230179, 46.019638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485054, 38.394478, 46.009953>,  <35.776184, 38.668308, 45.993809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485054, 38.394478, 46.009953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239802, -0.309207, -0.920264,
		0.642469, -0.660113, 0.389211,
		-0.727825, -0.684574, 0.040359,
		35.266708, 38.189106, 46.022060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035770, 38.135540, 45.686798>,  <35.776184, 38.668308, 45.993809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035770, 38.135540, 45.686798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655251, 38.014191, 45.664928>,  <35.426937, 37.941380, 45.651806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655251, 38.014191, 45.664928>,  <36.035770, 38.135540, 45.686798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655251, 38.014191, 45.664928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161451, -0.339232, -0.926745,
		0.262606, -0.890440, 0.371692,
		-0.951300, -0.303378, -0.054678,
		35.369862, 37.923176, 45.648525>
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
