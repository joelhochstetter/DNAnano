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
	<1.037420, -0.642115, 1.988984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.012939, -0.804649, 2.353653>,  <0.998251, -0.902170, 2.572454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.012939, -0.804649, 2.353653>,  <1.037420, -0.642115, 1.988984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.012939, -0.804649, 2.353653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194140, 0.891093, 0.410198,
		-0.979063, 0.202097, 0.024349,
		-0.061202, -0.406336, 0.911671,
		0.994579, -0.926550, 2.627154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.470653, -0.362513, 2.423912>,  <1.037420, -0.642115, 1.988984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.470653, -0.362513, 2.423912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.771057, -0.500412, 2.649170>,  <0.951300, -0.583151, 2.784325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.771057, -0.500412, 2.649170>,  <0.470653, -0.362513, 2.423912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.771057, -0.500412, 2.649170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133873, 0.914663, 0.381406,
		-0.646576, -0.211050, 0.733074,
		0.751011, -0.344747, 0.563145,
		0.996361, -0.603836, 2.818113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.369023, -0.228786, 3.105913>,  <0.470653, -0.362513, 2.423912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.369023, -0.228786, 3.105913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.762215, -0.242950, 3.033806>,  <0.998130, -0.251449, 2.990542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.762215, -0.242950, 3.033806>,  <0.369023, -0.228786, 3.105913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.762215, -0.242950, 3.033806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123289, 0.854620, 0.504404,
		0.136198, -0.518044, 0.844440,
		0.982980, -0.035411, -0.180267,
		1.057109, -0.253574, 2.979726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.837266, -0.196440, 3.727334>,  <0.369023, -0.228786, 3.105913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.837266, -0.196440, 3.727334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.007141, -0.028381, 3.406555>,  <1.109066, 0.072454, 3.214088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.007141, -0.028381, 3.406555>,  <0.837266, -0.196440, 3.727334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.007141, -0.028381, 3.406555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274955, 0.784100, 0.556405,
		0.862577, -0.456798, 0.217477,
		0.424689, 0.420146, -0.801946,
		1.134548, 0.097662, 3.165972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.543293, -0.199190, 3.816077>,  <0.837266, -0.196440, 3.727334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.543293, -0.199190, 3.816077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.413353, 0.107803, 3.595009>,  <1.335389, 0.291999, 3.462368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.413353, 0.107803, 3.595009>,  <1.543293, -0.199190, 3.816077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.413353, 0.107803, 3.595009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306320, 0.638243, 0.706267,
		0.894785, 0.060137, -0.442429,
		-0.324850, 0.767482, -0.552669,
		1.315898, 0.338048, 3.429208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.113672, 0.206319, 3.806909>,  <1.543293, -0.199190, 3.816077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.113672, 0.206319, 3.806909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802071, 0.438751, 3.712677>,  <1.615110, 0.578211, 3.656138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802071, 0.438751, 3.712677>,  <2.113672, 0.206319, 3.806909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.802071, 0.438751, 3.712677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323745, 0.694510, 0.642530,
		0.536975, 0.424265, -0.729148,
		-0.779004, 0.581080, -0.235580,
		1.568369, 0.613075, 3.642003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.417425, 0.773431, 3.525282>,  <2.113672, 0.206319, 3.806909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.417425, 0.773431, 3.525282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.055191, 0.903610, 3.634094>,  <1.837851, 0.981718, 3.699382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.055191, 0.903610, 3.634094>,  <2.417425, 0.773431, 3.525282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.055191, 0.903610, 3.634094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419613, 0.593630, 0.686680,
		0.061993, 0.735994, -0.674144,
		-0.905584, 0.325449, 0.272031,
		1.783516, 1.001245, 3.715704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.291143, 1.488419, 3.414598>,  <2.417425, 0.773431, 3.525282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.291143, 1.488419, 3.414598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.064102, 1.369827, 3.721825>,  <1.927877, 1.298672, 3.906161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.064102, 1.369827, 3.721825>,  <2.291143, 1.488419, 3.414598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.064102, 1.369827, 3.721825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481409, 0.637285, 0.601759,
		-0.667886, 0.711315, -0.218997,
		-0.567603, -0.296479, 0.768067,
		1.893821, 1.280884, 3.952245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.636289, 2.186954, 5.466337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.358814, 1.918381, 5.570625>,  <2.192329, 1.757237, 5.633199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.358814, 1.918381, 5.570625>,  <2.636289, 2.186954, 5.466337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.358814, 1.918381, 5.570625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332289, -0.022833, -0.942901,
		0.639049, -0.740713, -0.207271,
		-0.693686, -0.671434, 0.260722,
		2.150708, 1.716951, 5.648842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.608081, 1.588477, 5.076280>,  <2.636289, 2.186954, 5.466337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.608081, 1.588477, 5.076280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.226170, 1.601868, 5.194450>,  <1.997023, 1.609902, 5.265352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.226170, 1.601868, 5.194450>,  <2.608081, 1.588477, 5.076280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.226170, 1.601868, 5.194450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295543, -0.215224, -0.930770,
		0.032426, -0.975991, 0.215385,
		-0.954779, 0.033475, 0.295426,
		1.939736, 1.611910, 5.283078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.168621, 1.040390, 4.891388>,  <2.608081, 1.588477, 5.076280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.168621, 1.040390, 4.891388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.896641, 1.330780, 4.932625>,  <1.733453, 1.505014, 4.957367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.896641, 1.330780, 4.932625>,  <2.168621, 1.040390, 4.891388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.896641, 1.330780, 4.932625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499080, -0.355198, -0.790413,
		-0.537203, -0.588892, 0.603837,
		-0.679950, 0.725975, 0.103091,
		1.692656, 1.548573, 4.963552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.469724, 0.674658, 4.996709>,  <2.168621, 1.040390, 4.891388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.469724, 0.674658, 4.996709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.473835, 1.043442, 4.841850>,  <1.476301, 1.264712, 4.748935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.473835, 1.043442, 4.841850>,  <1.469724, 0.674658, 4.996709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.473835, 1.043442, 4.841850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342873, -0.360447, -0.867477,
		-0.939325, 0.141657, 0.312411,
		0.010277, 0.921960, -0.387148,
		1.476918, 1.320030, 4.725706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.858485, 0.745087, 4.511128>,  <1.469724, 0.674658, 4.996709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.858485, 0.745087, 4.511128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140018, 0.990967, 4.368713>,  <1.308939, 1.138495, 4.283265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140018, 0.990967, 4.368713>,  <0.858485, 0.745087, 4.511128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.140018, 0.990967, 4.368713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213533, -0.294945, -0.931349,
		-0.677512, 0.731540, -0.076334,
		0.703833, 0.614700, -0.356037,
		1.351169, 1.175377, 4.261902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.531685, 1.242625, 4.026268>,  <0.858485, 0.745087, 4.511128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.531685, 1.242625, 4.026268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.917492, 1.165131, 3.954521>,  <1.148976, 1.118634, 3.911474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.917492, 1.165131, 3.954521>,  <0.531685, 1.242625, 4.026268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.917492, 1.165131, 3.954521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245567, -0.408781, -0.878974,
		0.096968, 0.891832, -0.441852,
		0.964518, -0.193737, -0.179366,
		1.206847, 1.107010, 3.900712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.589298, 1.415251, 3.269327>,  <0.531685, 1.242625, 4.026268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.589298, 1.415251, 3.269327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.889622, 1.181396, 3.392281>,  <1.069816, 1.041084, 3.466053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.889622, 1.181396, 3.392281>,  <0.589298, 1.415251, 3.269327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.889622, 1.181396, 3.392281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154286, -0.607722, -0.779019,
		0.642246, 0.537470, -0.546484,
		0.750810, -0.584637, 0.307383,
		1.114865, 1.006005, 3.484496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.043327, 1.346284, 2.721693>,  <0.589298, 1.415251, 3.269327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.043327, 1.346284, 2.721693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.082695, 1.019089, 2.948395>,  <1.106316, 0.822772, 3.084416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.082695, 1.019089, 2.948395>,  <1.043327, 1.346284, 2.721693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.082695, 1.019089, 2.948395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093453, -0.574600, -0.813081,
		0.990747, 0.027059, -0.132996,
		0.098421, -0.817987, 0.566755,
		1.112221, 0.773693, 3.118421>
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
