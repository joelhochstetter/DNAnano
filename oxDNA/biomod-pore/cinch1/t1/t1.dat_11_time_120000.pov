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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.070473, 31.822258, 22.337132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909473, 31.941616, 22.683300>,  <42.812874, 32.013229, 22.891003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909473, 31.941616, 22.683300>,  <43.070473, 31.822258, 22.337132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909473, 31.941616, 22.683300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911689, -0.215956, -0.349551,
		0.082589, -0.929690, 0.358965,
		-0.402495, 0.298396, 0.865423,
		42.788727, 32.031136, 22.942926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622074, 31.262106, 22.528837>,  <43.070473, 31.822258, 22.337132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622074, 31.262106, 22.528837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478096, 31.597576, 22.692333>,  <42.391708, 31.798859, 22.790430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478096, 31.597576, 22.692333>,  <42.622074, 31.262106, 22.528837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478096, 31.597576, 22.692333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928200, -0.277637, -0.247712,
		-0.094268, -0.468554, 0.878390,
		-0.359941, 0.838674, 0.408740,
		42.370113, 31.849178, 22.814955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957722, 31.183712, 22.896687>,  <42.622074, 31.262106, 22.528837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957722, 31.183712, 22.896687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973141, 31.574242, 22.811550>,  <41.982391, 31.808559, 22.760468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973141, 31.574242, 22.811550>,  <41.957722, 31.183712, 22.896687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973141, 31.574242, 22.811550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849405, -0.080176, -0.521616,
		-0.526332, 0.200898, 0.826205,
		0.038550, 0.976326, -0.212843,
		41.984707, 31.867140, 22.747698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272163, 31.402143, 22.841869>,  <41.957722, 31.183712, 22.896687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272163, 31.402143, 22.841869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493202, 31.689514, 22.672874>,  <41.625828, 31.861937, 22.571478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493202, 31.689514, 22.672874>,  <41.272163, 31.402143, 22.841869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493202, 31.689514, 22.672874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694271, 0.116340, -0.710248,
		-0.461108, 0.685805, 0.563072,
		0.552600, 0.718426, -0.422489,
		41.658981, 31.905043, 22.546127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905148, 31.745535, 22.170630>,  <41.272163, 31.402143, 22.841869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905148, 31.745535, 22.170630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783051, 31.809383, 22.546150>,  <40.709793, 31.847692, 22.771463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783051, 31.809383, 22.546150>,  <40.905148, 31.745535, 22.170630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783051, 31.809383, 22.546150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272796, 0.929878, -0.246800,
		-0.912365, -0.331435, -0.240293,
		-0.305241, 0.159621, 0.938802,
		40.691479, 31.857269, 22.827791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167957, 32.004807, 22.231760>,  <40.905148, 31.745535, 22.170630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167957, 32.004807, 22.231760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438522, 32.157642, 22.483624>,  <40.600861, 32.249344, 22.634743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438522, 32.157642, 22.483624>,  <40.167957, 32.004807, 22.231760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438522, 32.157642, 22.483624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274730, 0.924100, -0.265636,
		-0.683366, 0.006693, 0.730045,
		0.676412, 0.382092, 0.629660,
		40.641445, 32.272270, 22.672522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760792, 32.658039, 21.969353>,  <40.167957, 32.004807, 22.231760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760792, 32.658039, 21.969353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453655, 32.913853, 21.954235>,  <39.269375, 33.067341, 21.945164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453655, 32.913853, 21.954235>,  <39.760792, 32.658039, 21.969353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453655, 32.913853, 21.954235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520987, 0.589001, -0.617779,
		-0.372826, -0.494044, -0.785443,
		-0.767837, 0.639530, -0.037796,
		39.223305, 33.105713, 21.942896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729156, 32.811176, 21.280914>,  <39.760792, 32.658039, 21.969353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729156, 32.811176, 21.280914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534954, 33.099648, 21.478577>,  <39.418434, 33.272728, 21.597174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534954, 33.099648, 21.478577>,  <39.729156, 32.811176, 21.280914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534954, 33.099648, 21.478577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417205, 0.687857, -0.593964,
		-0.768263, -0.082206, -0.634834,
		-0.485502, 0.721177, 0.494158,
		39.389305, 33.316002, 21.626823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607853, 33.245750, 20.760635>,  <39.729156, 32.811176, 21.280914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607853, 33.245750, 20.760635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575790, 33.485836, 21.078960>,  <39.556553, 33.629887, 21.269957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575790, 33.485836, 21.078960>,  <39.607853, 33.245750, 20.760635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575790, 33.485836, 21.078960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478251, 0.723644, -0.497609,
		-0.874557, 0.340712, -0.345058,
		-0.080158, 0.600211, 0.795815,
		39.551743, 33.665901, 21.317705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182671, 33.809906, 20.635944>,  <39.607853, 33.245750, 20.760635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182671, 33.809906, 20.635944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406387, 33.917274, 20.949669>,  <39.540619, 33.981693, 21.137903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406387, 33.917274, 20.949669>,  <39.182671, 33.809906, 20.635944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406387, 33.917274, 20.949669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355845, 0.776784, -0.519597,
		-0.748710, 0.569699, 0.338933,
		0.559292, 0.268419, 0.784311,
		39.574173, 33.997799, 21.184961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045883, 34.557148, 20.717028>,  <39.182671, 33.809906, 20.635944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045883, 34.557148, 20.717028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390579, 34.489349, 20.908306>,  <39.597397, 34.448669, 21.023073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390579, 34.489349, 20.908306>,  <39.045883, 34.557148, 20.717028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390579, 34.489349, 20.908306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358604, 0.870237, -0.337773,
		-0.358893, 0.462556, 0.810702,
		0.861742, -0.169497, 0.478196,
		39.649101, 34.438499, 21.051765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161285, 35.229027, 21.022840>,  <39.045883, 34.557148, 20.717028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161285, 35.229027, 21.022840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495289, 35.008934, 21.024014>,  <39.695690, 34.876877, 21.024717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495289, 35.008934, 21.024014>,  <39.161285, 35.229027, 21.022840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495289, 35.008934, 21.024014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524643, 0.794542, -0.305700,
		0.165877, 0.256799, 0.952123,
		0.835006, -0.550233, 0.002932,
		39.745792, 34.843864, 21.024893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621239, 35.600056, 21.298143>,  <39.161285, 35.229027, 21.022840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621239, 35.600056, 21.298143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841000, 35.339222, 21.089165>,  <39.972855, 35.182724, 20.963778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841000, 35.339222, 21.089165>,  <39.621239, 35.600056, 21.298143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841000, 35.339222, 21.089165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518476, 0.756381, -0.398836,
		0.655244, -0.051757, 0.753642,
		0.549398, -0.652080, -0.522449,
		40.005817, 35.143597, 20.932430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426304, 35.817081, 21.334023>,  <39.621239, 35.600056, 21.298143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426304, 35.817081, 21.334023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378372, 35.588024, 21.009624>,  <40.349613, 35.450588, 20.814985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378372, 35.588024, 21.009624>,  <40.426304, 35.817081, 21.334023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378372, 35.588024, 21.009624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460098, 0.691832, -0.556488,
		0.879745, -0.439823, 0.180570,
		-0.119832, -0.572647, -0.810996,
		40.342422, 35.416229, 20.766325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950798, 35.938961, 20.962076>,  <40.426304, 35.817081, 21.334023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950798, 35.938961, 20.962076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716312, 35.786102, 20.676331>,  <40.575623, 35.694386, 20.504883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716312, 35.786102, 20.676331>,  <40.950798, 35.938961, 20.962076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716312, 35.786102, 20.676331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406574, 0.623917, -0.667402,
		0.700753, -0.681681, -0.210374,
		-0.586211, -0.382150, -0.714365,
		40.540447, 35.671459, 20.462021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338108, 35.915123, 20.244215>,  <40.950798, 35.938961, 20.962076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338108, 35.915123, 20.244215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964657, 35.867924, 20.108917>,  <40.740585, 35.839603, 20.027739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964657, 35.867924, 20.108917>,  <41.338108, 35.915123, 20.244215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964657, 35.867924, 20.108917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255149, 0.443736, -0.859068,
		0.251460, -0.888355, -0.384178,
		-0.933631, -0.117998, -0.338245,
		40.684566, 35.832523, 20.007444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414921, 35.637016, 19.585081>,  <41.338108, 35.915123, 20.244215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414921, 35.637016, 19.585081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052197, 35.805115, 19.598297>,  <40.834564, 35.905975, 19.606228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052197, 35.805115, 19.598297>,  <41.414921, 35.637016, 19.585081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052197, 35.805115, 19.598297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130127, 0.353614, -0.926296,
		-0.400960, -0.835672, -0.375345,
		-0.906806, 0.420250, 0.033042,
		40.780155, 35.931190, 19.608210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165195, 35.549603, 18.864668>,  <41.414921, 35.637016, 19.585081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165195, 35.549603, 18.864668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913685, 35.808865, 19.036499>,  <40.762779, 35.964424, 19.139597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913685, 35.808865, 19.036499>,  <41.165195, 35.549603, 18.864668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913685, 35.808865, 19.036499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050558, 0.517203, -0.854368,
		-0.775945, -0.558921, -0.292433,
		-0.628772, 0.648158, 0.429578,
		40.725052, 36.003311, 19.165373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463295, 35.639637, 18.404016>,  <41.165195, 35.549603, 18.864668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463295, 35.639637, 18.404016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506927, 35.963383, 18.634853>,  <40.533108, 36.157631, 18.773355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506927, 35.963383, 18.634853>,  <40.463295, 35.639637, 18.404016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506927, 35.963383, 18.634853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128430, 0.587166, -0.799213,
		-0.985702, 0.013060, 0.167992,
		0.109077, 0.809361, 0.577093,
		40.539650, 36.206192, 18.807981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993225, 36.117165, 18.092333>,  <40.463295, 35.639637, 18.404016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993225, 36.117165, 18.092333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220776, 36.350018, 18.324711>,  <40.357307, 36.489731, 18.464138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220776, 36.350018, 18.324711>,  <39.993225, 36.117165, 18.092333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220776, 36.350018, 18.324711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161221, 0.771615, -0.615320,
		-0.806465, 0.256381, 0.532807,
		0.568878, 0.582133, 0.580947,
		40.391438, 36.524658, 18.498995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578827, 36.651634, 18.201097>,  <39.993225, 36.117165, 18.092333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578827, 36.651634, 18.201097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940414, 36.805443, 18.275906>,  <40.157368, 36.897728, 18.320789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940414, 36.805443, 18.275906>,  <39.578827, 36.651634, 18.201097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940414, 36.805443, 18.275906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206725, 0.775885, -0.596043,
		-0.374296, 0.500145, 0.780869,
		0.903973, 0.384522, 0.187018,
		40.211605, 36.920799, 18.332010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498878, 37.390900, 18.417269>,  <39.578827, 36.651634, 18.201097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498878, 37.390900, 18.417269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871346, 37.380814, 18.271778>,  <40.094826, 37.374763, 18.184483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871346, 37.380814, 18.271778>,  <39.498878, 37.390900, 18.417269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871346, 37.380814, 18.271778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250415, 0.680861, -0.688273,
		0.265001, 0.731978, 0.627680,
		0.931164, -0.025212, -0.363727,
		40.150696, 37.373249, 18.162661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695614, 38.100220, 18.322474>,  <39.498878, 37.390900, 18.417269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695614, 38.100220, 18.322474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959660, 37.879360, 18.118755>,  <40.118088, 37.746845, 17.996525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959660, 37.879360, 18.118755>,  <39.695614, 38.100220, 18.322474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959660, 37.879360, 18.118755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010105, 0.684468, -0.728972,
		0.751100, 0.476056, 0.457404,
		0.660111, -0.552153, -0.509294,
		40.157692, 37.713715, 17.965967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137550, 38.582474, 18.057444>,  <39.695614, 38.100220, 18.322474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137550, 38.582474, 18.057444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184036, 38.262238, 17.822311>,  <40.211929, 38.070095, 17.681232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184036, 38.262238, 17.822311>,  <40.137550, 38.582474, 18.057444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184036, 38.262238, 17.822311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068323, 0.583994, -0.808878,
		0.990871, 0.134165, 0.013169,
		0.116214, -0.800594, -0.587829,
		40.218899, 38.022060, 17.645962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806568, 38.610958, 17.641159>,  <40.137550, 38.582474, 18.057444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806568, 38.610958, 17.641159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572453, 38.366970, 17.427475>,  <40.431984, 38.220577, 17.299265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572453, 38.366970, 17.427475>,  <40.806568, 38.610958, 17.641159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572453, 38.366970, 17.427475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058023, 0.625650, -0.777943,
		0.808749, -0.486315, -0.330791,
		-0.585284, -0.609967, -0.534211,
		40.396866, 38.183979, 17.267212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034393, 38.614506, 16.923828>,  <40.806568, 38.610958, 17.641159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034393, 38.614506, 16.923828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657574, 38.483753, 16.893620>,  <40.431484, 38.405304, 16.875494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657574, 38.483753, 16.893620>,  <41.034393, 38.614506, 16.923828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657574, 38.483753, 16.893620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088193, 0.458481, -0.884318,
		0.323686, -0.826407, -0.460738,
		-0.942045, -0.326875, -0.075520,
		40.374962, 38.385689, 16.870964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935516, 38.294724, 16.324844>,  <41.034393, 38.614506, 16.923828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935516, 38.294724, 16.324844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569286, 38.422390, 16.422710>,  <40.349548, 38.498989, 16.481430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569286, 38.422390, 16.422710>,  <40.935516, 38.294724, 16.324844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569286, 38.422390, 16.422710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057976, 0.497276, -0.865653,
		-0.397955, -0.806752, -0.436788,
		-0.915571, 0.319167, 0.244666,
		40.294617, 38.518139, 16.496111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242077, 38.014263, 15.921311>,  <40.935516, 38.294724, 16.324844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242077, 38.014263, 15.921311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291214, 38.409634, 15.956899>,  <40.320698, 38.646858, 15.978251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291214, 38.409634, 15.956899>,  <40.242077, 38.014263, 15.921311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291214, 38.409634, 15.956899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065095, 0.097479, -0.993106,
		-0.990289, 0.116208, 0.076317,
		0.122846, 0.988430, 0.088967,
		40.328068, 38.706161, 15.983589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666950, 38.407581, 15.645852>,  <40.242077, 38.014263, 15.921311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666950, 38.407581, 15.645852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013927, 38.598824, 15.590774>,  <40.222115, 38.713570, 15.557727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013927, 38.598824, 15.590774>,  <39.666950, 38.407581, 15.645852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013927, 38.598824, 15.590774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084719, -0.130775, -0.987786,
		-0.490274, 0.868511, -0.072935,
		0.867441, 0.478107, -0.137695,
		40.274158, 38.742256, 15.549465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656937, 39.154148, 15.233954>,  <39.666950, 38.407581, 15.645852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656937, 39.154148, 15.233954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969791, 38.908394, 15.192378>,  <40.157505, 38.760941, 15.167432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969791, 38.908394, 15.192378>,  <39.656937, 39.154148, 15.233954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969791, 38.908394, 15.192378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086195, 0.058529, -0.994557,
		0.617122, 0.786835, -0.007180,
		0.782132, -0.614382, -0.103941,
		40.204430, 38.724079, 15.161196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756275, 39.191505, 14.501869>,  <39.656937, 39.154148, 15.233954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756275, 39.191505, 14.501869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746937, 39.499916, 14.247321>,  <39.741333, 39.684963, 14.094592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746937, 39.499916, 14.247321>,  <39.756275, 39.191505, 14.501869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746937, 39.499916, 14.247321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425889, 0.583563, 0.691428,
		0.904474, -0.254884, -0.341995,
		-0.023342, 0.771030, -0.636370,
		39.739933, 39.731224, 14.056410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265488, 38.843769, 14.201733>,  <39.756275, 39.191505, 14.501869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265488, 38.843769, 14.201733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063606, 38.859711, 13.856784>,  <38.942478, 38.869274, 13.649815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063606, 38.859711, 13.856784>,  <39.265488, 38.843769, 14.201733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063606, 38.859711, 13.856784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209193, -0.974808, 0.077380,
		-0.837563, 0.219456, 0.500326,
		-0.504703, 0.039855, -0.862373,
		38.912197, 38.871666, 13.598072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521496, 38.660336, 14.258712>,  <39.265488, 38.843769, 14.201733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521496, 38.660336, 14.258712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664795, 38.562843, 13.898211>,  <38.750774, 38.504349, 13.681911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664795, 38.562843, 13.898211>,  <38.521496, 38.660336, 14.258712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664795, 38.562843, 13.898211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492898, -0.869207, 0.039132,
		-0.792911, 0.430206, -0.431527,
		0.358251, -0.243727, -0.901251,
		38.772270, 38.489727, 13.627836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023430, 38.658730, 13.670325>,  <38.521496, 38.660336, 14.258712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023430, 38.658730, 13.670325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324524, 38.397171, 13.639857>,  <38.505180, 38.240234, 13.621576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324524, 38.397171, 13.639857>,  <38.023430, 38.658730, 13.670325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324524, 38.397171, 13.639857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652460, -0.756431, 0.045919,
		-0.087645, 0.015133, -0.996037,
		0.752738, -0.653898, -0.076171,
		38.550346, 38.201000, 13.617006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722633, 38.046120, 13.371200>,  <38.023430, 38.658730, 13.670325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722633, 38.046120, 13.371200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073048, 37.940132, 13.532374>,  <38.283295, 37.876537, 13.629079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073048, 37.940132, 13.532374>,  <37.722633, 38.046120, 13.371200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073048, 37.940132, 13.532374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412276, -0.844961, 0.340691,
		0.250193, -0.464577, -0.849454,
		0.876032, -0.264971, 0.402937,
		38.335857, 37.860641, 13.653255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737881, 37.292984, 13.182946>,  <37.722633, 38.046120, 13.371200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737881, 37.292984, 13.182946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908787, 37.395260, 13.529832>,  <38.011330, 37.456627, 13.737964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908787, 37.395260, 13.529832>,  <37.737881, 37.292984, 13.182946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908787, 37.395260, 13.529832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337721, -0.844612, 0.415421,
		0.838680, -0.470374, -0.274525,
		0.427270, 0.255692, 0.867215,
		38.036968, 37.471966, 13.789996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489033, 37.326832, 13.892900>,  <37.737881, 37.292984, 13.182946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489033, 37.326832, 13.892900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870869, 37.275837, 14.000602>,  <38.099972, 37.245239, 14.065223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870869, 37.275837, 14.000602>,  <37.489033, 37.326832, 13.892900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870869, 37.275837, 14.000602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289370, -0.611648, 0.736310,
		0.070819, -0.780791, -0.620766,
		0.954594, -0.127486, 0.269254,
		38.157246, 37.237591, 14.081378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728039, 36.541843, 13.939301>,  <37.489033, 37.326832, 13.892900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728039, 36.541843, 13.939301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969826, 36.750381, 14.180238>,  <38.114899, 36.875504, 14.324800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969826, 36.750381, 14.180238>,  <37.728039, 36.541843, 13.939301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969826, 36.750381, 14.180238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248921, -0.594645, 0.764484,
		0.756738, -0.612044, -0.229672,
		0.604471, 0.521345, 0.602341,
		38.151169, 36.906784, 14.360940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043560, 36.048553, 14.376749>,  <37.728039, 36.541843, 13.939301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043560, 36.048553, 14.376749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123219, 36.390530, 14.568341>,  <38.171013, 36.595715, 14.683296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123219, 36.390530, 14.568341>,  <38.043560, 36.048553, 14.376749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123219, 36.390530, 14.568341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146431, -0.457322, 0.877163,
		0.968969, -0.244817, 0.034118,
		0.199142, 0.854939, 0.478980,
		38.182961, 36.647011, 14.712035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378117, 35.798904, 14.947098>,  <38.043560, 36.048553, 14.376749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378117, 35.798904, 14.947098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269947, 36.165165, 15.066060>,  <38.205044, 36.384922, 15.137438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269947, 36.165165, 15.066060>,  <38.378117, 35.798904, 14.947098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269947, 36.165165, 15.066060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141323, -0.343324, 0.928524,
		0.952311, 0.209068, 0.222247,
		-0.270427, 0.915652, 0.297406,
		38.188820, 36.439861, 15.155282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785858, 36.064331, 15.558818>,  <38.378117, 35.798904, 14.947098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785858, 36.064331, 15.558818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447994, 36.278419, 15.562762>,  <38.245277, 36.406872, 15.565129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447994, 36.278419, 15.562762>,  <38.785858, 36.064331, 15.558818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447994, 36.278419, 15.562762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056318, -0.107167, 0.992645,
		0.532339, 0.837888, 0.120661,
		-0.844656, 0.535219, 0.009861,
		38.194599, 36.438984, 15.565721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851273, 36.507942, 16.227505>,  <38.785858, 36.064331, 15.558818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851273, 36.507942, 16.227505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465839, 36.542488, 16.126278>,  <38.234577, 36.563217, 16.065542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465839, 36.542488, 16.126278>,  <38.851273, 36.507942, 16.227505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465839, 36.542488, 16.126278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255311, -0.015844, 0.966729,
		0.079483, 0.996137, 0.037317,
		-0.963586, 0.086366, -0.253066,
		38.176762, 36.568398, 16.050358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469418, 37.000507, 16.750069>,  <38.851273, 36.507942, 16.227505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469418, 37.000507, 16.750069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215096, 36.739040, 16.585884>,  <38.062504, 36.582161, 16.487373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215096, 36.739040, 16.585884>,  <38.469418, 37.000507, 16.750069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215096, 36.739040, 16.585884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387312, -0.189797, 0.902201,
		-0.667641, 0.732598, -0.132499,
		-0.635802, -0.653665, -0.410461,
		38.024353, 36.542942, 16.462746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884785, 37.144260, 17.066969>,  <38.469418, 37.000507, 16.750069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884785, 37.144260, 17.066969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843201, 36.766769, 16.941387>,  <37.818253, 36.540276, 16.866039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843201, 36.766769, 16.941387>,  <37.884785, 37.144260, 17.066969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843201, 36.766769, 16.941387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441890, -0.238970, 0.864654,
		-0.891025, 0.228620, -0.392182,
		-0.103958, -0.943730, -0.313953,
		37.812012, 36.483650, 16.847200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231911, 37.017254, 17.303923>,  <37.884785, 37.144260, 17.066969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231911, 37.017254, 17.303923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373928, 36.653973, 17.215282>,  <37.459137, 36.436005, 17.162098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373928, 36.653973, 17.215282>,  <37.231911, 37.017254, 17.303923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373928, 36.653973, 17.215282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354110, -0.350033, 0.867227,
		-0.865189, -0.229429, -0.445881,
		0.355040, -0.908207, -0.221602,
		37.480438, 36.381512, 17.148802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735275, 36.566959, 17.552876>,  <37.231911, 37.017254, 17.303923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735275, 36.566959, 17.552876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070930, 36.351913, 17.519833>,  <37.272324, 36.222885, 17.500008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070930, 36.351913, 17.519833>,  <36.735275, 36.566959, 17.552876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070930, 36.351913, 17.519833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273394, -0.548180, 0.790414,
		-0.470217, -0.640682, -0.606978,
		0.839138, -0.537611, -0.082605,
		37.322670, 36.190632, 17.495050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565929, 35.837894, 17.536333>,  <36.735275, 36.566959, 17.552876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565929, 35.837894, 17.536333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942253, 35.877232, 17.666077>,  <37.168045, 35.900833, 17.743923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942253, 35.877232, 17.666077>,  <36.565929, 35.837894, 17.536333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942253, 35.877232, 17.666077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182405, -0.659674, 0.729080,
		0.285675, -0.745089, -0.602687,
		0.940807, 0.098347, 0.324360,
		37.224495, 35.906734, 17.763384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720158, 35.147408, 17.627029>,  <36.565929, 35.837894, 17.536333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720158, 35.147408, 17.627029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981583, 35.378838, 17.822212>,  <37.138435, 35.517696, 17.939322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981583, 35.378838, 17.822212>,  <36.720158, 35.147408, 17.627029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981583, 35.378838, 17.822212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151211, -0.531894, 0.833201,
		0.741616, -0.618332, -0.260137,
		0.653561, 0.578580, 0.487959,
		37.177650, 35.552410, 17.968599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011925, 34.642563, 17.940496>,  <36.720158, 35.147408, 17.627029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011925, 34.642563, 17.940496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080612, 34.985058, 18.135380>,  <37.121826, 35.190556, 18.252310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080612, 34.985058, 18.135380>,  <37.011925, 34.642563, 17.940496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080612, 34.985058, 18.135380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083885, -0.480050, 0.873221,
		0.981568, -0.190821, -0.010609,
		0.171722, 0.856236, 0.487209,
		37.132130, 35.241928, 18.281542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561832, 34.496410, 18.461214>,  <37.011925, 34.642563, 17.940496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561832, 34.496410, 18.461214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411423, 34.844898, 18.587437>,  <37.321178, 35.053993, 18.663170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411423, 34.844898, 18.587437>,  <37.561832, 34.496410, 18.461214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411423, 34.844898, 18.587437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042016, -0.356232, 0.933452,
		0.925657, 0.337741, 0.170557,
		-0.376023, 0.871223, 0.315559,
		37.298615, 35.106266, 18.682104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003948, 34.560600, 19.014616>,  <37.561832, 34.496410, 18.461214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003948, 34.560600, 19.014616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678127, 34.788349, 19.059002>,  <37.482635, 34.924999, 19.085634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678127, 34.788349, 19.059002>,  <38.003948, 34.560600, 19.014616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678127, 34.788349, 19.059002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137741, -0.375663, 0.916463,
		0.563498, 0.731224, 0.384424,
		-0.814553, 0.569376, 0.110966,
		37.433762, 34.959164, 19.092291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057892, 34.823586, 19.645002>,  <38.003948, 34.560600, 19.014616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057892, 34.823586, 19.645002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668968, 34.841900, 19.553341>,  <37.435612, 34.852886, 19.498344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668968, 34.841900, 19.553341>,  <38.057892, 34.823586, 19.645002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668968, 34.841900, 19.553341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216800, -0.542701, 0.811464,
		-0.087212, 0.838678, 0.537600,
		-0.972313, 0.045782, -0.229155,
		37.377274, 34.855633, 19.484594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710194, 35.217537, 20.223711>,  <38.057892, 34.823586, 19.645002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710194, 35.217537, 20.223711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428226, 35.007870, 20.032574>,  <37.259045, 34.882069, 19.917891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428226, 35.007870, 20.032574>,  <37.710194, 35.217537, 20.223711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428226, 35.007870, 20.032574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352383, -0.325861, 0.877292,
		-0.615558, 0.786806, 0.044998,
		-0.704922, -0.524167, -0.477843,
		37.216751, 34.850620, 19.889221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056244, 35.369942, 20.688169>,  <37.710194, 35.217537, 20.223711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056244, 35.369942, 20.688169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016659, 35.042900, 20.461281>,  <36.992908, 34.846676, 20.325148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016659, 35.042900, 20.461281>,  <37.056244, 35.369942, 20.688169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016659, 35.042900, 20.461281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500021, -0.451972, 0.738715,
		-0.860340, 0.356725, -0.364090,
		-0.098960, -0.817599, -0.567220,
		36.986969, 34.797619, 20.291115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509445, 35.078712, 20.904158>,  <37.056244, 35.369942, 20.688169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509445, 35.078712, 20.904158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680111, 34.765896, 20.722446>,  <36.782513, 34.578205, 20.613419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680111, 34.765896, 20.722446>,  <36.509445, 35.078712, 20.904158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680111, 34.765896, 20.722446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439010, -0.618236, 0.651962,
		-0.790711, -0.078739, -0.607105,
		0.426669, -0.782039, -0.454279,
		36.808113, 34.531284, 20.586163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986916, 34.692856, 20.697104>,  <36.509445, 35.078712, 20.904158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986916, 34.692856, 20.697104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314400, 34.465973, 20.732830>,  <36.510891, 34.329842, 20.754267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314400, 34.465973, 20.732830>,  <35.986916, 34.692856, 20.697104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314400, 34.465973, 20.732830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507233, -0.641523, 0.575468,
		-0.269112, -0.516449, -0.812932,
		0.818714, -0.567211, 0.089319,
		36.560013, 34.295811, 20.759626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655716, 33.989864, 20.613247>,  <35.986916, 34.692856, 20.697104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655716, 33.989864, 20.613247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006557, 33.905312, 20.785763>,  <36.217060, 33.854580, 20.889273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006557, 33.905312, 20.785763>,  <35.655716, 33.989864, 20.613247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006557, 33.905312, 20.785763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424717, -0.760675, 0.490906,
		0.224303, -0.613751, -0.756967,
		0.877099, -0.211385, 0.431292,
		36.269688, 33.841896, 20.915150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916065, 33.201534, 20.535892>,  <35.655716, 33.989864, 20.613247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916065, 33.201534, 20.535892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034172, 33.405411, 20.859135>,  <36.105038, 33.527737, 21.053080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034172, 33.405411, 20.859135>,  <35.916065, 33.201534, 20.535892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034172, 33.405411, 20.859135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233693, -0.781595, 0.578357,
		0.926393, -0.359619, -0.111670,
		0.295268, 0.509690, 0.808105,
		36.122753, 33.558319, 21.101566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518166, 32.808788, 20.850636>,  <35.916065, 33.201534, 20.535892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518166, 32.808788, 20.850636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279968, 33.023357, 21.089848>,  <36.137051, 33.152100, 21.233376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279968, 33.023357, 21.089848>,  <36.518166, 32.808788, 20.850636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279968, 33.023357, 21.089848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225849, -0.826170, 0.516173,
		0.770964, 0.172311, 0.613126,
		-0.595489, 0.536425, 0.598031,
		36.101322, 33.184284, 21.269257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623730, 32.696278, 21.592396>,  <36.518166, 32.808788, 20.850636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623730, 32.696278, 21.592396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253529, 32.783039, 21.468208>,  <36.031406, 32.835094, 21.393696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253529, 32.783039, 21.468208>,  <36.623730, 32.696278, 21.592396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253529, 32.783039, 21.468208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352368, -0.793652, 0.495937,
		-0.138836, 0.568393, 0.810959,
		-0.925506, 0.216902, -0.310471,
		35.975876, 32.848110, 21.375067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137428, 32.979317, 22.138990>,  <36.623730, 32.696278, 21.592396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137428, 32.979317, 22.138990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961559, 32.736984, 21.873764>,  <35.856037, 32.591583, 21.714628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961559, 32.736984, 21.873764>,  <36.137428, 32.979317, 22.138990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961559, 32.736984, 21.873764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218908, -0.643704, 0.733297,
		-0.871074, 0.467559, 0.150395,
		-0.439670, -0.605833, -0.663066,
		35.829659, 32.555233, 21.674845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341274, 32.793060, 22.159582>,  <36.137428, 32.979317, 22.138990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341274, 32.793060, 22.159582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542187, 32.494667, 21.984669>,  <35.662735, 32.315632, 21.879721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542187, 32.494667, 21.984669>,  <35.341274, 32.793060, 22.159582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542187, 32.494667, 21.984669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390459, -0.646881, 0.655047,
		-0.771527, -0.158278, -0.616194,
		0.502284, -0.745985, -0.437285,
		35.692871, 32.270870, 21.853483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805977, 32.305439, 22.150116>,  <35.341274, 32.793060, 22.159582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805977, 32.305439, 22.150116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165886, 32.130894, 22.150169>,  <35.381832, 32.026169, 22.150202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165886, 32.130894, 22.150169>,  <34.805977, 32.305439, 22.150116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165886, 32.130894, 22.150169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335850, -0.692329, 0.638660,
		-0.278594, -0.574692, -0.769489,
		0.899772, -0.436360, 0.000132,
		35.435818, 31.999985, 22.150209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891823, 31.616934, 21.850523>,  <34.805977, 32.305439, 22.150116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891823, 31.616934, 21.850523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125141, 31.707458, 22.162560>,  <35.265133, 31.761774, 22.349781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125141, 31.707458, 22.162560>,  <34.891823, 31.616934, 21.850523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125141, 31.707458, 22.162560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563207, -0.579346, 0.589199,
		0.585287, -0.783033, -0.210471,
		0.583298, 0.226312, 0.780094,
		35.300129, 31.775352, 22.396587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806717, 31.079622, 22.318769>,  <34.891823, 31.616934, 21.850523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806717, 31.079622, 22.318769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985928, 31.364681, 22.534698>,  <35.093452, 31.535717, 22.664257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985928, 31.364681, 22.534698>,  <34.806717, 31.079622, 22.318769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985928, 31.364681, 22.534698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376590, -0.397198, 0.836908,
		0.810835, -0.578247, 0.090420,
		0.448025, 0.712646, 0.539824,
		35.120335, 31.578474, 22.696646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097141, 30.761555, 22.960588>,  <34.806717, 31.079622, 22.318769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097141, 30.761555, 22.960588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075104, 31.153324, 23.038250>,  <35.061882, 31.388386, 23.084846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075104, 31.153324, 23.038250>,  <35.097141, 30.761555, 22.960588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075104, 31.153324, 23.038250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367264, -0.200695, 0.908206,
		0.928484, -0.021273, 0.370762,
		-0.055090, 0.979423, 0.194155,
		35.058578, 31.447151, 23.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314201, 30.789156, 23.577438>,  <35.097141, 30.761555, 22.960588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314201, 30.789156, 23.577438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108601, 31.131718, 23.557980>,  <34.985241, 31.337255, 23.546305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108601, 31.131718, 23.557980>,  <35.314201, 30.789156, 23.577438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108601, 31.131718, 23.557980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335289, -0.148387, 0.930356,
		0.789544, 0.494520, 0.363415,
		-0.514006, 0.856406, -0.048649,
		34.954399, 31.388639, 23.543385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399879, 31.192665, 24.244644>,  <35.314201, 30.789156, 23.577438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399879, 31.192665, 24.244644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070763, 31.349915, 24.080467>,  <34.873291, 31.444265, 23.981960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070763, 31.349915, 24.080467>,  <35.399879, 31.192665, 24.244644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070763, 31.349915, 24.080467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441229, 0.013351, 0.897295,
		0.358230, 0.919388, 0.162473,
		-0.822793, 0.393126, -0.410444,
		34.823925, 31.467852, 23.957335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081348, 31.327559, 24.801952>,  <35.399879, 31.192665, 24.244644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081348, 31.327559, 24.801952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791626, 31.419853, 24.542065>,  <34.617790, 31.475231, 24.386131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791626, 31.419853, 24.542065>,  <35.081348, 31.327559, 24.801952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791626, 31.419853, 24.542065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665858, 0.010442, 0.746006,
		0.178916, 0.972960, 0.146076,
		-0.724308, 0.230738, -0.649721,
		34.574333, 31.489075, 24.347149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653709, 31.827343, 25.142494>,  <35.081348, 31.327559, 24.801952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653709, 31.827343, 25.142494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418690, 31.654625, 24.868755>,  <34.277676, 31.550993, 24.704512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418690, 31.654625, 24.868755>,  <34.653709, 31.827343, 25.142494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418690, 31.654625, 24.868755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732379, -0.075861, 0.676657,
		-0.344094, 0.898775, -0.271666,
		-0.587554, -0.431797, -0.684348,
		34.242424, 31.525085, 24.663450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007015, 32.121071, 25.362049>,  <34.653709, 31.827343, 25.142494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007015, 32.121071, 25.362049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939304, 31.812603, 25.116562>,  <33.898678, 31.627523, 24.969269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939304, 31.812603, 25.116562>,  <34.007015, 32.121071, 25.362049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939304, 31.812603, 25.116562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676453, -0.361959, 0.641402,
		-0.716768, 0.523727, -0.460385,
		-0.169279, -0.771165, -0.613717,
		33.888519, 31.581253, 24.932447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208488, 32.069992, 25.158302>,  <34.007015, 32.121071, 25.362049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208488, 32.069992, 25.158302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372906, 31.707821, 25.115898>,  <33.471558, 31.490519, 25.090456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372906, 31.707821, 25.115898>,  <33.208488, 32.069992, 25.158302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372906, 31.707821, 25.115898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667049, -0.377994, 0.642002,
		-0.621359, -0.193179, -0.759339,
		0.411047, -0.905429, -0.106010,
		33.496220, 31.436192, 25.084095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608452, 31.566231, 25.114250>,  <33.208488, 32.069992, 25.158302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608452, 31.566231, 25.114250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911766, 31.314041, 25.180584>,  <33.093754, 31.162727, 25.220385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911766, 31.314041, 25.180584>,  <32.608452, 31.566231, 25.114250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911766, 31.314041, 25.180584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513777, -0.421370, 0.747316,
		-0.401280, -0.651887, -0.643442,
		0.758292, -0.630468, 0.165837,
		33.139252, 31.124899, 25.230333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299240, 30.871449, 25.210291>,  <32.608452, 31.566231, 25.114250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299240, 30.871449, 25.210291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652306, 30.852692, 25.397358>,  <32.864143, 30.841438, 25.509598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652306, 30.852692, 25.397358>,  <32.299240, 30.871449, 25.210291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652306, 30.852692, 25.397358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444971, -0.403807, 0.799338,
		0.151366, -0.913642, -0.377289,
		0.882661, -0.046890, 0.467667,
		32.917103, 30.838625, 25.537659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387703, 30.101910, 25.433002>,  <32.299240, 30.871449, 25.210291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387703, 30.101910, 25.433002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630886, 30.341743, 25.641190>,  <32.776798, 30.485643, 25.766102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630886, 30.341743, 25.641190>,  <32.387703, 30.101910, 25.433002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630886, 30.341743, 25.641190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274533, -0.456342, 0.846394,
		0.744994, -0.657459, -0.112833,
		0.607960, 0.599582, 0.520466,
		32.813274, 30.521618, 25.797329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654209, 29.667065, 25.926052>,  <32.387703, 30.101910, 25.433002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654209, 29.667065, 25.926052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711277, 30.032204, 26.079079>,  <32.745518, 30.251287, 26.170895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711277, 30.032204, 26.079079>,  <32.654209, 29.667065, 25.926052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711277, 30.032204, 26.079079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227643, -0.345897, 0.910238,
		0.963237, -0.216950, 0.158455,
		0.142666, 0.912846, 0.382568,
		32.754078, 30.306057, 26.193850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112049, 29.548115, 26.494144>,  <32.654209, 29.667065, 25.926052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112049, 29.548115, 26.494144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926193, 29.891735, 26.580067>,  <32.814678, 30.097908, 26.631620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926193, 29.891735, 26.580067>,  <33.112049, 29.548115, 26.494144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926193, 29.891735, 26.580067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209520, -0.342348, 0.915914,
		0.860355, 0.380566, 0.339057,
		-0.464641, 0.859050, 0.214805,
		32.786800, 30.149450, 26.644508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498497, 29.891527, 27.064154>,  <33.112049, 29.548115, 26.494144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498497, 29.891527, 27.064154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119873, 30.020538, 27.065144>,  <32.892700, 30.097946, 27.065737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119873, 30.020538, 27.065144>,  <33.498497, 29.891527, 27.064154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119873, 30.020538, 27.065144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055851, -0.171452, 0.983608,
		0.317667, 0.930902, 0.180303,
		-0.946556, 0.322530, 0.002473,
		32.835907, 30.117298, 27.065886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515366, 30.382524, 27.643906>,  <33.498497, 29.891527, 27.064154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515366, 30.382524, 27.643906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131908, 30.292107, 27.574734>,  <32.901833, 30.237856, 27.533230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131908, 30.292107, 27.574734>,  <33.515366, 30.382524, 27.643906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131908, 30.292107, 27.574734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102365, -0.293101, 0.950586,
		-0.265562, 0.928975, 0.257840,
		-0.958644, -0.226046, -0.172932,
		32.844315, 30.224293, 27.522854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128834, 30.840645, 27.989180>,  <33.515366, 30.382524, 27.643906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128834, 30.840645, 27.989180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920685, 30.503906, 27.931904>,  <32.795795, 30.301863, 27.897537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920685, 30.503906, 27.931904>,  <33.128834, 30.840645, 27.989180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920685, 30.503906, 27.931904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096915, -0.224822, 0.969568,
		-0.848422, 0.490659, 0.198579,
		-0.520372, -0.841849, -0.143192,
		32.764572, 30.251352, 27.888947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692554, 30.806383, 28.557217>,  <33.128834, 30.840645, 27.989180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692554, 30.806383, 28.557217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666615, 30.433887, 28.413780>,  <32.651051, 30.210390, 28.327719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666615, 30.433887, 28.413780>,  <32.692554, 30.806383, 28.557217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666615, 30.433887, 28.413780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011961, -0.360045, 0.932859,
		-0.997824, 0.056203, 0.034486,
		-0.064846, -0.931240, -0.358589,
		32.647160, 30.154516, 28.306204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277397, 30.584543, 29.044258>,  <32.692554, 30.806383, 28.557217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277397, 30.584543, 29.044258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464500, 30.276833, 28.870167>,  <32.576763, 30.092207, 28.765713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464500, 30.276833, 28.870167>,  <32.277397, 30.584543, 29.044258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464500, 30.276833, 28.870167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229087, -0.370068, 0.900316,
		-0.853654, -0.520831, 0.003130,
		0.467754, -0.769275, -0.435226,
		32.604828, 30.046049, 28.739599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917734, 30.011442, 29.222614>,  <32.277397, 30.584543, 29.044258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917734, 30.011442, 29.222614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289959, 29.893574, 29.135689>,  <32.513294, 29.822853, 29.083532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289959, 29.893574, 29.135689>,  <31.917734, 30.011442, 29.222614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289959, 29.893574, 29.135689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109837, -0.341529, 0.933431,
		-0.349306, -0.892474, -0.285440,
		0.930549, -0.294701, -0.217324,
		32.569126, 29.805172, 29.070494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948050, 29.328543, 29.432585>,  <31.917734, 30.011442, 29.222614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948050, 29.328543, 29.432585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334106, 29.431824, 29.415459>,  <32.565739, 29.493792, 29.405184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334106, 29.431824, 29.415459>,  <31.948050, 29.328543, 29.432585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334106, 29.431824, 29.415459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107730, -0.242823, 0.964070,
		0.238527, -0.935077, -0.262174,
		0.965141, 0.258201, -0.042816,
		32.623650, 29.509285, 29.402615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275024, 28.836786, 29.828732>,  <31.948050, 29.328543, 29.432585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275024, 28.836786, 29.828732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541718, 29.133808, 29.803196>,  <32.701733, 29.312021, 29.787874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541718, 29.133808, 29.803196>,  <32.275024, 28.836786, 29.828732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541718, 29.133808, 29.803196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158062, -0.057172, 0.985773,
		0.728339, -0.667342, -0.155489,
		0.666737, 0.742554, -0.063841,
		32.741737, 29.356575, 29.784044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964817, 28.529291, 30.168736>,  <32.275024, 28.836786, 29.828732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964817, 28.529291, 30.168736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959576, 28.929256, 30.169548>,  <32.956432, 29.169235, 30.170034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959576, 28.929256, 30.169548>,  <32.964817, 28.529291, 30.168736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959576, 28.929256, 30.169548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217731, 0.000871, 0.976009,
		0.975921, 0.013228, -0.217724,
		-0.013100, 0.999912, 0.002030,
		32.955647, 29.229231, 30.170156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452030, 28.611149, 30.582767>,  <32.964817, 28.529291, 30.168736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452030, 28.611149, 30.582767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236877, 28.947205, 30.554897>,  <33.107788, 29.148838, 30.538176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236877, 28.947205, 30.554897>,  <33.452030, 28.611149, 30.582767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236877, 28.947205, 30.554897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207688, 0.212163, 0.954910,
		0.817039, 0.499153, -0.288605,
		-0.537878, 0.840138, -0.069677,
		33.075516, 29.199245, 30.533995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740788, 29.069492, 31.067028>,  <33.452030, 28.611149, 30.582767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740788, 29.069492, 31.067028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389896, 29.249500, 31.000153>,  <33.179363, 29.357506, 30.960028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389896, 29.249500, 31.000153>,  <33.740788, 29.069492, 31.067028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389896, 29.249500, 31.000153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027591, 0.300425, 0.953406,
		0.479279, 0.840968, -0.251125,
		-0.877229, 0.450019, -0.167190,
		33.126728, 29.384506, 30.949995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759323, 29.601549, 31.433535>,  <33.740788, 29.069492, 31.067028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759323, 29.601549, 31.433535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366169, 29.573284, 31.365490>,  <33.130276, 29.556326, 31.324663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366169, 29.573284, 31.365490>,  <33.759323, 29.601549, 31.433535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366169, 29.573284, 31.365490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182932, 0.266032, 0.946447,
		-0.021623, 0.961371, -0.274406,
		-0.982888, -0.070663, -0.170113,
		33.071304, 29.552086, 31.314457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444710, 30.185743, 31.709518>,  <33.759323, 29.601549, 31.433535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444710, 30.185743, 31.709518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180153, 29.886551, 31.687313>,  <33.021420, 29.707035, 31.673990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180153, 29.886551, 31.687313>,  <33.444710, 30.185743, 31.709518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180153, 29.886551, 31.687313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183724, 0.089807, 0.978867,
		-0.727190, 0.657614, -0.196821,
		-0.661393, -0.747983, -0.055513,
		32.981735, 29.662155, 31.670660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866554, 30.353836, 32.160950>,  <33.444710, 30.185743, 31.709518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866554, 30.353836, 32.160950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853111, 29.955231, 32.130417>,  <32.845047, 29.716066, 32.112095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853111, 29.955231, 32.130417>,  <32.866554, 30.353836, 32.160950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853111, 29.955231, 32.130417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233201, -0.066453, 0.970155,
		-0.971848, 0.050402, -0.230156,
		-0.033603, -0.996516, -0.076336,
		32.843029, 29.656277, 32.107517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207680, 30.154655, 32.454109>,  <32.866554, 30.353836, 32.160950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207680, 30.154655, 32.454109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457771, 29.842552, 32.460953>,  <32.607826, 29.655291, 32.465057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457771, 29.842552, 32.460953>,  <32.207680, 30.154655, 32.454109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457771, 29.842552, 32.460953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258924, -0.186700, 0.947682,
		-0.736242, -0.596944, -0.318757,
		0.625225, -0.780257, 0.017107,
		32.645340, 29.608475, 32.466084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863518, 29.653326, 32.881905>,  <32.207680, 30.154655, 32.454109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863518, 29.653326, 32.881905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245022, 29.533115, 32.883923>,  <32.473923, 29.460989, 32.885132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245022, 29.533115, 32.883923>,  <31.863518, 29.653326, 32.881905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245022, 29.533115, 32.883923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055929, -0.160960, 0.985375,
		-0.295324, -0.940092, -0.170325,
		0.953759, -0.300531, 0.005043,
		32.531151, 29.442957, 32.885437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882732, 28.982832, 33.216949>,  <31.863518, 29.653326, 32.881905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882732, 28.982832, 33.216949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274094, 29.060760, 33.244572>,  <32.508911, 29.107517, 33.261147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274094, 29.060760, 33.244572>,  <31.882732, 28.982832, 33.216949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274094, 29.060760, 33.244572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002447, -0.323166, 0.946339,
		0.206687, -0.926071, -0.315710,
		0.978404, 0.194823, 0.069060,
		32.567616, 29.119207, 33.265289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191280, 28.343174, 33.541447>,  <31.882732, 28.982832, 33.216949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191280, 28.343174, 33.541447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419800, 28.666370, 33.599091>,  <32.556911, 28.860289, 33.633678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419800, 28.666370, 33.599091>,  <32.191280, 28.343174, 33.541447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419800, 28.666370, 33.599091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010216, -0.182575, 0.983139,
		0.820680, -0.560192, -0.112559,
		0.571297, 0.807992, 0.144113,
		32.591190, 28.908768, 33.642323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598568, 28.127966, 34.024250>,  <32.191280, 28.343174, 33.541447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598568, 28.127966, 34.024250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631878, 28.525482, 34.053761>,  <32.651863, 28.763992, 34.071468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631878, 28.525482, 34.053761>,  <32.598568, 28.127966, 34.024250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631878, 28.525482, 34.053761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032540, -0.071285, 0.996925,
		0.995996, -0.085416, 0.026402,
		0.083272, 0.993792, 0.073779,
		32.656860, 28.823620, 34.075893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077660, 28.349312, 34.584175>,  <32.598568, 28.127966, 34.024250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077660, 28.349312, 34.584175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832657, 28.657661, 34.514214>,  <32.685654, 28.842670, 34.472237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832657, 28.657661, 34.514214>,  <33.077660, 28.349312, 34.584175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832657, 28.657661, 34.514214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179250, 0.080050, 0.980541,
		0.769873, 0.631940, 0.089147,
		-0.612507, 0.770872, -0.174904,
		32.648907, 28.888924, 34.461742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268719, 28.754362, 35.137756>,  <33.077660, 28.349312, 34.584175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268719, 28.754362, 35.137756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917675, 28.873672, 34.987644>,  <32.707050, 28.945259, 34.897575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917675, 28.873672, 34.987644>,  <33.268719, 28.754362, 35.137756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917675, 28.873672, 34.987644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357319, 0.114865, 0.926892,
		0.319578, 0.947542, 0.005774,
		-0.877606, 0.298278, -0.375283,
		32.654392, 28.963156, 34.875061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132248, 29.307783, 35.500996>,  <33.268719, 28.754362, 35.137756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132248, 29.307783, 35.500996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762230, 29.227562, 35.371960>,  <32.540218, 29.179428, 35.294537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762230, 29.227562, 35.371960>,  <33.132248, 29.307783, 35.500996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762230, 29.227562, 35.371960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367301, 0.255763, 0.894246,
		-0.096838, 0.945708, -0.310257,
		-0.925047, -0.200555, -0.322592,
		32.484715, 29.167397, 35.275181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675266, 29.918770, 35.665409>,  <33.132248, 29.307783, 35.500996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675266, 29.918770, 35.665409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436550, 29.603828, 35.603550>,  <32.293320, 29.414864, 35.566437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436550, 29.603828, 35.603550>,  <32.675266, 29.918770, 35.665409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436550, 29.603828, 35.603550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346436, 0.078994, 0.934742,
		-0.723756, 0.611420, -0.319911,
		-0.596791, -0.787353, -0.154645,
		32.257511, 29.367622, 35.557156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037998, 30.119602, 36.183533>,  <32.675266, 29.918770, 35.665409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037998, 30.119602, 36.183533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991453, 29.741486, 36.061626>,  <31.963528, 29.514616, 35.988483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991453, 29.741486, 36.061626>,  <32.037998, 30.119602, 36.183533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991453, 29.741486, 36.061626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475542, -0.216365, 0.852670,
		-0.871964, 0.244144, -0.424350,
		-0.116360, -0.945293, -0.304763,
		31.956545, 29.457897, 35.970196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400560, 29.918652, 36.406189>,  <32.037998, 30.119602, 36.183533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400560, 29.918652, 36.406189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564524, 29.559662, 36.341057>,  <31.662903, 29.344269, 36.301979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564524, 29.559662, 36.341057>,  <31.400560, 29.918652, 36.406189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564524, 29.559662, 36.341057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261453, -0.286632, 0.921675,
		-0.873851, -0.335232, -0.352141,
		0.409910, -0.897475, -0.162826,
		31.687496, 29.290419, 36.292210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993757, 29.394775, 36.766594>,  <31.400560, 29.918652, 36.406189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993757, 29.394775, 36.766594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357607, 29.233849, 36.725166>,  <31.575916, 29.137293, 36.700310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357607, 29.233849, 36.725166>,  <30.993757, 29.394775, 36.766594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357607, 29.233849, 36.725166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007479, -0.265128, 0.964184,
		-0.415368, -0.876269, -0.244176,
		0.909622, -0.402318, -0.103572,
		31.630493, 29.113153, 36.694096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964418, 28.749388, 37.186531>,  <30.993757, 29.394775, 36.766594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964418, 28.749388, 37.186531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353277, 28.839645, 37.161201>,  <31.586594, 28.893801, 37.146004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353277, 28.839645, 37.161201>,  <30.964418, 28.749388, 37.186531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353277, 28.839645, 37.161201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157795, -0.430423, 0.888728,
		0.173282, -0.873968, -0.454041,
		0.972149, 0.225647, -0.063323,
		31.644922, 28.907339, 37.142204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243555, 28.260126, 37.533787>,  <30.964418, 28.749388, 37.186531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243555, 28.260126, 37.533787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566538, 28.494804, 37.509121>,  <31.760326, 28.635612, 37.494320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566538, 28.494804, 37.509121>,  <31.243555, 28.260126, 37.533787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566538, 28.494804, 37.509121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183649, -0.150648, 0.971379,
		0.560615, -0.795671, -0.229388,
		0.807455, 0.586697, -0.061669,
		31.808775, 28.670813, 37.490620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931337, 27.942070, 37.703915>,  <31.243555, 28.260126, 37.533787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931337, 27.942070, 37.703915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944433, 28.331707, 37.793427>,  <31.952291, 28.565489, 37.847134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944433, 28.331707, 37.793427>,  <31.931337, 27.942070, 37.703915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944433, 28.331707, 37.793427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167690, -0.226077, 0.959567,
		0.985296, 0.006109, -0.170747,
		0.032740, 0.974090, 0.223777,
		31.954256, 28.623934, 37.860561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431694, 27.994482, 38.194912>,  <31.931337, 27.942070, 37.703915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431694, 27.994482, 38.194912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235859, 28.334335, 38.273319>,  <32.118359, 28.538248, 38.320362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235859, 28.334335, 38.273319>,  <32.431694, 27.994482, 38.194912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235859, 28.334335, 38.273319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026853, -0.239389, 0.970552,
		0.871539, 0.469909, 0.140018,
		-0.489590, 0.849634, 0.196019,
		32.088982, 28.589226, 38.332127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864326, 28.282719, 38.817257>,  <32.431694, 27.994482, 38.194912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864326, 28.282719, 38.817257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487869, 28.416283, 38.796257>,  <32.261993, 28.496420, 38.783657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487869, 28.416283, 38.796257>,  <32.864326, 28.282719, 38.817257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487869, 28.416283, 38.796257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136239, -0.232595, 0.962984,
		0.309338, 0.913458, 0.264396,
		-0.941142, 0.333909, -0.052498,
		32.205528, 28.516455, 38.780506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618813, 28.749084, 39.392803>,  <32.864326, 28.282719, 38.817257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618813, 28.749084, 39.392803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316792, 28.543800, 39.229584>,  <32.135578, 28.420630, 39.131653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316792, 28.543800, 39.229584>,  <32.618813, 28.749084, 39.392803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316792, 28.543800, 39.229584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273601, -0.318947, 0.907422,
		-0.595845, 0.796798, 0.100408,
		-0.755057, -0.513211, -0.408048,
		32.090275, 28.389837, 39.107170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946163, 29.059111, 39.598644>,  <32.618813, 28.749084, 39.392803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946163, 29.059111, 39.598644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976561, 28.667965, 39.520664>,  <31.994799, 28.433277, 39.473877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976561, 28.667965, 39.520664>,  <31.946163, 29.059111, 39.598644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976561, 28.667965, 39.520664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241777, -0.207750, 0.947831,
		-0.967352, -0.024893, -0.252212,
		0.075991, -0.977865, -0.194948,
		31.999357, 28.374605, 39.462181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211735, 28.965742, 39.678429>,  <31.946163, 29.059111, 39.598644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211735, 28.965742, 39.678429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152142, 29.060970, 39.294529>,  <31.116385, 29.118107, 39.064190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152142, 29.060970, 39.294529>,  <31.211735, 28.965742, 39.678429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152142, 29.060970, 39.294529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104426, 0.961370, 0.254682,
		0.983310, 0.138167, -0.118369,
		-0.148985, 0.238070, -0.959753,
		31.107447, 29.132391, 39.006603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912592, 29.513512, 39.986927>,  <31.211735, 28.965742, 39.678429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912592, 29.513512, 39.986927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144142, 29.272160, 40.206322>,  <31.283073, 29.127348, 40.337959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144142, 29.272160, 40.206322>,  <30.912592, 29.513512, 39.986927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144142, 29.272160, 40.206322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760339, -0.156400, 0.630415,
		-0.294596, -0.781967, -0.549309,
		0.578876, -0.603379, 0.548485,
		31.317804, 29.091146, 40.370869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671171, 29.660860, 40.316151>,  <30.912592, 29.513512, 39.986927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671171, 29.660860, 40.316151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687927, 30.042080, 40.436115>,  <31.697981, 30.270811, 40.508095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687927, 30.042080, 40.436115>,  <31.671171, 29.660860, 40.316151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687927, 30.042080, 40.436115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355097, 0.266371, -0.896076,
		-0.933890, 0.144034, -0.327266,
		0.041891, 0.953048, 0.299907,
		31.700495, 30.327995, 40.526089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433977, 30.165525, 39.838318>,  <31.671171, 29.660860, 40.316151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433977, 30.165525, 39.838318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685974, 30.381462, 40.061630>,  <31.837173, 30.511024, 40.195618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685974, 30.381462, 40.061630>,  <31.433977, 30.165525, 39.838318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685974, 30.381462, 40.061630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279063, 0.513500, -0.811444,
		-0.724728, 0.667002, 0.172853,
		0.629995, 0.539839, 0.558283,
		31.874973, 30.543413, 40.229115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276848, 30.845974, 39.808388>,  <31.433977, 30.165525, 39.838318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276848, 30.845974, 39.808388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664886, 30.828537, 39.903896>,  <31.897709, 30.818075, 39.961201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664886, 30.828537, 39.903896>,  <31.276848, 30.845974, 39.808388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664886, 30.828537, 39.903896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227302, 0.508200, -0.830702,
		-0.085132, 0.860135, 0.502912,
		0.970096, -0.043594, 0.238774,
		31.955915, 30.815458, 39.975529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577009, 31.351330, 39.494053>,  <31.276848, 30.845974, 39.808388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577009, 31.351330, 39.494053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865011, 31.074997, 39.520428>,  <32.037811, 30.909197, 39.536251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865011, 31.074997, 39.520428>,  <31.577009, 31.351330, 39.494053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865011, 31.074997, 39.520428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268549, 0.189757, -0.944391,
		0.639902, 0.697672, 0.322147,
		0.720005, -0.690830, 0.065933,
		32.081013, 30.867748, 39.540207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315975, 31.643116, 39.472931>,  <31.577009, 31.351330, 39.494053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315975, 31.643116, 39.472931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261536, 31.271946, 39.334114>,  <32.228870, 31.049244, 39.250824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261536, 31.271946, 39.334114>,  <32.315975, 31.643116, 39.472931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261536, 31.271946, 39.334114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386980, 0.272673, -0.880849,
		0.911988, -0.254181, 0.321977,
		-0.136101, -0.927923, -0.347037,
		32.220707, 30.993568, 39.230003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961102, 31.500437, 39.228348>,  <32.315975, 31.643116, 39.472931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961102, 31.500437, 39.228348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687717, 31.270939, 39.047817>,  <32.523685, 31.133240, 38.939499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687717, 31.270939, 39.047817>,  <32.961102, 31.500437, 39.228348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687717, 31.270939, 39.047817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419746, 0.196956, -0.886015,
		0.597238, -0.795000, 0.106215,
		-0.683462, -0.573744, -0.451328,
		32.482677, 31.098816, 38.912418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307575, 31.257233, 38.702320>,  <32.961102, 31.500437, 39.228348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307575, 31.257233, 38.702320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938477, 31.182178, 38.567657>,  <32.717018, 31.137146, 38.486858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938477, 31.182178, 38.567657>,  <33.307575, 31.257233, 38.702320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938477, 31.182178, 38.567657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312263, 0.148043, -0.938390,
		0.225921, -0.971017, -0.078012,
		-0.922741, -0.187641, -0.336659,
		32.661655, 31.125887, 38.466660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410942, 30.853161, 38.118275>,  <33.307575, 31.257233, 38.702320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410942, 30.853161, 38.118275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041378, 31.005558, 38.104191>,  <32.819641, 31.096996, 38.095741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041378, 31.005558, 38.104191>,  <33.410942, 30.853161, 38.118275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041378, 31.005558, 38.104191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181776, 0.356099, -0.916597,
		-0.336682, -0.853250, -0.398258,
		-0.923906, 0.380995, -0.035208,
		32.764206, 31.119856, 38.093628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114571, 30.633646, 37.516724>,  <33.410942, 30.853161, 38.118275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114571, 30.633646, 37.516724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898037, 30.957714, 37.606682>,  <32.768116, 31.152155, 37.660656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898037, 30.957714, 37.606682>,  <33.114571, 30.633646, 37.516724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898037, 30.957714, 37.606682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181151, 0.373577, -0.909739,
		-0.821059, -0.451737, -0.348994,
		-0.541339, 0.810169, 0.224896,
		32.735634, 31.200766, 37.674152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658157, 30.699018, 36.936169>,  <33.114571, 30.633646, 37.516724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658157, 30.699018, 36.936169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658257, 31.055603, 37.117409>,  <32.658318, 31.269554, 37.226151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658257, 31.055603, 37.117409>,  <32.658157, 30.699018, 36.936169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658257, 31.055603, 37.117409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249903, 0.438666, -0.863204,
		-0.968271, 0.113449, -0.222668,
		0.000252, 0.891461, 0.453099,
		32.658333, 31.323042, 37.253338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314049, 31.031660, 36.500179>,  <32.658157, 30.699018, 36.936169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314049, 31.031660, 36.500179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494366, 31.321388, 36.708851>,  <32.602554, 31.495224, 36.834053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494366, 31.321388, 36.708851>,  <32.314049, 31.031660, 36.500179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494366, 31.321388, 36.708851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194274, 0.490810, -0.849331,
		-0.871232, 0.484219, 0.080537,
		0.450791, 0.724318, 0.521681,
		32.629604, 31.538683, 36.865356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085411, 31.604654, 36.296947>,  <32.314049, 31.031660, 36.500179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085411, 31.604654, 36.296947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429081, 31.745605, 36.445351>,  <32.635284, 31.830175, 36.534393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429081, 31.745605, 36.445351>,  <32.085411, 31.604654, 36.296947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429081, 31.745605, 36.445351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154843, 0.512033, -0.844894,
		-0.487691, 0.783360, 0.385362,
		0.859175, 0.352376, 0.371011,
		32.686832, 31.851318, 36.556656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142200, 32.359390, 36.193268>,  <32.085411, 31.604654, 36.296947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142200, 32.359390, 36.193268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521259, 32.243198, 36.246323>,  <32.748695, 32.173481, 36.278156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521259, 32.243198, 36.246323>,  <32.142200, 32.359390, 36.193268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521259, 32.243198, 36.246323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255961, 0.442606, -0.859409,
		0.190936, 0.848363, 0.493785,
		0.947643, -0.290482, 0.132638,
		32.805553, 32.156055, 36.286114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600864, 32.932938, 36.044804>,  <32.142200, 32.359390, 36.193268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600864, 32.932938, 36.044804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843262, 32.615555, 36.022213>,  <32.988701, 32.425125, 36.008659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843262, 32.615555, 36.022213>,  <32.600864, 32.932938, 36.044804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843262, 32.615555, 36.022213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321907, 0.309537, -0.894742,
		0.727422, 0.524032, 0.442999,
		0.605997, -0.793459, -0.056474,
		33.025063, 32.377518, 36.005272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142910, 33.115040, 35.725910>,  <32.600864, 32.932938, 36.044804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142910, 33.115040, 35.725910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185989, 32.718884, 35.691219>,  <33.211838, 32.481190, 35.670406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185989, 32.718884, 35.691219>,  <33.142910, 33.115040, 35.725910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185989, 32.718884, 35.691219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254970, 0.111831, -0.960460,
		0.960932, 0.081331, 0.264565,
		0.107702, -0.990393, -0.086725,
		33.218300, 32.421764, 35.665203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720249, 33.096809, 35.303581>,  <33.142910, 33.115040, 35.725910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720249, 33.096809, 35.303581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588463, 32.719570, 35.285622>,  <33.509392, 32.493225, 35.274845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588463, 32.719570, 35.285622>,  <33.720249, 33.096809, 35.303581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588463, 32.719570, 35.285622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125400, 0.003427, -0.992100,
		0.935803, -0.332492, 0.117136,
		-0.329464, -0.943100, -0.044902,
		33.489624, 32.436642, 35.272152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211594, 32.860401, 34.855820>,  <33.720249, 33.096809, 35.303581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211594, 32.860401, 34.855820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885090, 32.629417, 34.849361>,  <33.689186, 32.490826, 34.845486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885090, 32.629417, 34.849361>,  <34.211594, 32.860401, 34.855820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885090, 32.629417, 34.849361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112479, -0.131449, -0.984921,
		0.566630, -0.805767, 0.172249,
		-0.816259, -0.577460, -0.016149,
		33.640213, 32.456181, 34.844517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439350, 32.321510, 34.473911>,  <34.211594, 32.860401, 34.855820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439350, 32.321510, 34.473911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041767, 32.280220, 34.459019>,  <33.803215, 32.255444, 34.450085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041767, 32.280220, 34.459019>,  <34.439350, 32.321510, 34.473911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041767, 32.280220, 34.459019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059993, -0.227092, -0.972024,
		0.091886, -0.968387, 0.231913,
		-0.993961, -0.103228, -0.037230,
		33.743580, 32.249252, 34.447849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258659, 31.647169, 34.266834>,  <34.439350, 32.321510, 34.473911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258659, 31.647169, 34.266834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924061, 31.854763, 34.196491>,  <33.723301, 31.979321, 34.154285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924061, 31.854763, 34.196491>,  <34.258659, 31.647169, 34.266834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924061, 31.854763, 34.196491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065449, -0.223997, -0.972390,
		-0.544049, -0.824911, 0.153405,
		-0.836497, 0.518987, -0.175855,
		33.673111, 32.010460, 34.143734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715012, 31.221533, 33.933952>,  <34.258659, 31.647169, 34.266834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715012, 31.221533, 33.933952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630203, 31.599842, 33.835514>,  <33.579319, 31.826828, 33.776451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630203, 31.599842, 33.835514>,  <33.715012, 31.221533, 33.933952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630203, 31.599842, 33.835514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178643, -0.285081, -0.941709,
		-0.960800, -0.155695, 0.229397,
		-0.212016, 0.945774, -0.246092,
		33.566597, 31.883574, 33.761688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144203, 31.129791, 33.488754>,  <33.715012, 31.221533, 33.933952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144203, 31.129791, 33.488754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306084, 31.490307, 33.426926>,  <33.403214, 31.706615, 33.389828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306084, 31.490307, 33.426926>,  <33.144203, 31.129791, 33.488754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306084, 31.490307, 33.426926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048178, -0.189813, -0.980637,
		-0.913178, 0.389421, -0.120241,
		0.404704, 0.901289, -0.154572,
		33.427494, 31.760695, 33.380554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818378, 31.312859, 32.839493>,  <33.144203, 31.129791, 33.488754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818378, 31.312859, 32.839493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125549, 31.566479, 32.875858>,  <33.309853, 31.718651, 32.897678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125549, 31.566479, 32.875858>,  <32.818378, 31.312859, 32.839493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125549, 31.566479, 32.875858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166618, -0.060687, -0.984152,
		-0.618487, 0.770905, -0.152248,
		0.767927, 0.634053, 0.090912,
		33.355927, 31.756695, 32.903133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747791, 31.750864, 32.333809>,  <32.818378, 31.312859, 32.839493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747791, 31.750864, 32.333809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134846, 31.807224, 32.417545>,  <33.367077, 31.841042, 32.467789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134846, 31.807224, 32.417545>,  <32.747791, 31.750864, 32.333809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134846, 31.807224, 32.417545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218337, -0.051553, -0.974511,
		-0.126518, 0.988680, -0.080649,
		0.967637, 0.140902, 0.209343,
		33.425137, 31.849495, 32.480347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932091, 32.315514, 31.912046>,  <32.747791, 31.750864, 32.333809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932091, 32.315514, 31.912046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277542, 32.139809, 32.010998>,  <33.484814, 32.034386, 32.070370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277542, 32.139809, 32.010998>,  <32.932091, 32.315514, 31.912046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277542, 32.139809, 32.010998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351367, 0.172601, -0.920190,
		0.361506, 0.881623, 0.303405,
		0.863629, -0.439261, 0.247377,
		33.536633, 32.008030, 32.085209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445133, 32.724701, 31.621603>,  <32.932091, 32.315514, 31.912046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445133, 32.724701, 31.621603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633518, 32.379749, 31.695896>,  <33.746548, 32.172779, 31.740471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633518, 32.379749, 31.695896>,  <33.445133, 32.724701, 31.621603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633518, 32.379749, 31.695896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387969, 0.013396, -0.921575,
		0.792261, 0.506083, 0.340886,
		0.470960, -0.862381, 0.185731,
		33.774807, 32.121037, 31.751616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192074, 32.888672, 31.527601>,  <33.445133, 32.724701, 31.621603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192074, 32.888672, 31.527601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135483, 32.494877, 31.486111>,  <34.101528, 32.258598, 31.461216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135483, 32.494877, 31.486111>,  <34.192074, 32.888672, 31.527601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135483, 32.494877, 31.486111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430405, 0.033186, -0.902025,
		0.891479, -0.172263, 0.419035,
		-0.141479, -0.984492, -0.103727,
		34.093040, 32.199528, 31.454992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782108, 32.637573, 31.221451>,  <34.192074, 32.888672, 31.527601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782108, 32.637573, 31.221451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516979, 32.350639, 31.135571>,  <34.357903, 32.178478, 31.084042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516979, 32.350639, 31.135571>,  <34.782108, 32.637573, 31.221451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516979, 32.350639, 31.135571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311084, -0.002992, -0.950378,
		0.681097, -0.696722, 0.225134,
		-0.662822, -0.717335, -0.214701,
		34.318134, 32.135437, 31.071159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154560, 32.251949, 30.811897>,  <34.782108, 32.637573, 31.221451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154560, 32.251949, 30.811897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782696, 32.131458, 30.727055>,  <34.559578, 32.059166, 30.676149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782696, 32.131458, 30.727055>,  <35.154560, 32.251949, 30.811897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782696, 32.131458, 30.727055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278759, -0.198727, -0.939575,
		0.240873, -0.932615, 0.268718,
		-0.929664, -0.301225, -0.212107,
		34.503796, 32.041092, 30.663422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265503, 31.676983, 30.342333>,  <35.154560, 32.251949, 30.811897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265503, 31.676983, 30.342333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887074, 31.793518, 30.285656>,  <34.660015, 31.863440, 30.251650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887074, 31.793518, 30.285656>,  <35.265503, 31.676983, 30.342333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887074, 31.793518, 30.285656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116347, -0.102648, -0.987890,
		-0.302353, -0.951097, 0.063216,
		-0.946069, 0.291336, -0.141693,
		34.603252, 31.880919, 30.243149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939896, 31.122101, 29.972090>,  <35.265503, 31.676983, 30.342333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939896, 31.122101, 29.972090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728939, 31.460190, 29.937538>,  <34.602367, 31.663042, 29.916807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728939, 31.460190, 29.937538>,  <34.939896, 31.122101, 29.972090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728939, 31.460190, 29.937538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033955, -0.122553, -0.991881,
		-0.848945, -0.520175, 0.093333,
		-0.527389, 0.845221, -0.086378,
		34.570721, 31.713757, 29.911625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495644, 30.912205, 29.453026>,  <34.939896, 31.122101, 29.972090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495644, 30.912205, 29.453026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469166, 31.310722, 29.475002>,  <34.453278, 31.549833, 29.488188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469166, 31.310722, 29.475002>,  <34.495644, 30.912205, 29.453026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469166, 31.310722, 29.475002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023564, 0.056609, -0.998118,
		-0.997528, -0.064774, -0.027224,
		-0.066193, 0.996293, 0.054943,
		34.449306, 31.609610, 29.491486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881481, 31.094778, 29.038237>,  <34.495644, 30.912205, 29.453026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881481, 31.094778, 29.038237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108341, 31.423485, 29.060303>,  <34.244457, 31.620708, 29.073542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108341, 31.423485, 29.060303>,  <33.881481, 31.094778, 29.038237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108341, 31.423485, 29.060303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014670, 0.077045, -0.996920,
		-0.823485, 0.564593, 0.055751,
		0.567149, 0.821766, 0.055163,
		34.278484, 31.670015, 29.076851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492062, 31.570066, 28.603268>,  <33.881481, 31.094778, 29.038237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492062, 31.570066, 28.603268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861870, 31.722511, 28.605232>,  <34.083755, 31.813978, 28.606411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861870, 31.722511, 28.605232>,  <33.492062, 31.570066, 28.603268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861870, 31.722511, 28.605232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065914, 0.172568, -0.982790,
		-0.375400, 0.908281, 0.184663,
		0.924516, 0.381111, 0.004913,
		34.139225, 31.836845, 28.606707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543434, 32.220406, 28.181051>,  <33.492062, 31.570066, 28.603268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543434, 32.220406, 28.181051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929184, 32.115646, 28.195946>,  <34.160633, 32.052792, 28.204882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929184, 32.115646, 28.195946>,  <33.543434, 32.220406, 28.181051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929184, 32.115646, 28.195946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078426, 0.148631, -0.985778,
		0.252643, 0.953581, 0.163876,
		0.964376, -0.261902, 0.037235,
		34.218498, 32.037075, 28.207117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986538, 32.850475, 27.947905>,  <33.543434, 32.220406, 28.181051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986538, 32.850475, 27.947905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235981, 32.538067, 27.934513>,  <34.385647, 32.350624, 27.926479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235981, 32.538067, 27.934513>,  <33.986538, 32.850475, 27.947905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235981, 32.538067, 27.934513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289523, 0.270527, -0.918146,
		0.726144, 0.562874, 0.394826,
		0.623611, -0.781018, -0.033477,
		34.423065, 32.303761, 27.924471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664879, 33.168915, 27.921385>,  <33.986538, 32.850475, 27.947905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664879, 33.168915, 27.921385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685188, 32.810272, 27.745422>,  <34.697372, 32.595085, 27.639845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685188, 32.810272, 27.745422>,  <34.664879, 33.168915, 27.921385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685188, 32.810272, 27.745422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312692, 0.432602, -0.845624,
		0.948497, -0.094620, 0.302326,
		0.050774, -0.896606, -0.439908,
		34.700420, 32.541290, 27.613449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216656, 33.262421, 27.604845>,  <34.664879, 33.168915, 27.921385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216656, 33.262421, 27.604845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063900, 32.940258, 27.423523>,  <34.972248, 32.746960, 27.314730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063900, 32.940258, 27.423523>,  <35.216656, 33.262421, 27.604845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063900, 32.940258, 27.423523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422309, 0.284211, -0.860743,
		0.822082, -0.520140, 0.231594,
		-0.381885, -0.805406, -0.453305,
		34.949333, 32.698635, 27.287531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738338, 32.797043, 27.183197>,  <35.216656, 33.262421, 27.604845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738338, 32.797043, 27.183197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382149, 32.733440, 27.012657>,  <35.168434, 32.695278, 26.910334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382149, 32.733440, 27.012657>,  <35.738338, 32.797043, 27.183197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382149, 32.733440, 27.012657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429087, 0.018455, -0.903075,
		0.151469, -0.987104, 0.051797,
		-0.890473, -0.159013, -0.426349,
		35.115005, 32.685738, 26.884752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931610, 32.473377, 26.593601>,  <35.738338, 32.797043, 27.183197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931610, 32.473377, 26.593601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563717, 32.604919, 26.507858>,  <35.342979, 32.683846, 26.456413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563717, 32.604919, 26.507858>,  <35.931610, 32.473377, 26.593601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563717, 32.604919, 26.507858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277144, 0.157257, -0.947872,
		-0.278000, -0.931196, -0.235773,
		-0.919732, 0.328852, -0.214358,
		35.287796, 32.703575, 26.443550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689457, 32.201473, 25.872190>,  <35.931610, 32.473377, 26.593601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689457, 32.201473, 25.872190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479542, 32.525982, 25.975288>,  <35.353592, 32.720688, 26.037148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479542, 32.525982, 25.975288>,  <35.689457, 32.201473, 25.872190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479542, 32.525982, 25.975288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300608, 0.459907, -0.835536,
		-0.796387, -0.360999, -0.485229,
		-0.524788, 0.811274, 0.257745,
		35.322105, 32.769363, 26.052612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443275, 32.350182, 25.158070>,  <35.689457, 32.201473, 25.872190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443275, 32.350182, 25.158070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351124, 32.675003, 25.372543>,  <35.295834, 32.869896, 25.501228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351124, 32.675003, 25.372543>,  <35.443275, 32.350182, 25.158070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351124, 32.675003, 25.372543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114504, 0.569801, -0.813766,
		-0.966341, -0.126076, -0.224252,
		-0.230376, 0.812054, 0.536186,
		35.282013, 32.918621, 25.533400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877918, 32.709732, 24.801792>,  <35.443275, 32.350182, 25.158070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877918, 32.709732, 24.801792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034531, 32.990204, 25.040138>,  <35.128498, 33.158485, 25.183146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034531, 32.990204, 25.040138>,  <34.877918, 32.709732, 24.801792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034531, 32.990204, 25.040138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025409, 0.639080, -0.768720,
		-0.919815, 0.316117, 0.232403,
		0.391530, 0.701175, 0.595867,
		35.151989, 33.200558, 25.218899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492275, 33.152576, 24.505381>,  <34.877918, 32.709732, 24.801792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492275, 33.152576, 24.505381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808769, 33.311104, 24.691662>,  <34.998665, 33.406219, 24.803431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808769, 33.311104, 24.691662>,  <34.492275, 33.152576, 24.505381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808769, 33.311104, 24.691662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163606, 0.596597, -0.785687,
		-0.589222, 0.697853, 0.407207,
		0.791233, 0.396323, 0.465701,
		35.046139, 33.430000, 24.831371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433811, 33.966030, 24.620718>,  <34.492275, 33.152576, 24.505381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433811, 33.966030, 24.620718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808327, 33.826103, 24.608150>,  <35.033035, 33.742149, 24.600609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808327, 33.826103, 24.608150>,  <34.433811, 33.966030, 24.620718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808327, 33.826103, 24.608150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233981, 0.687970, -0.686986,
		0.261933, 0.635868, 0.725991,
		0.936293, -0.349813, -0.031421,
		35.089214, 33.721161, 24.598724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746487, 33.733891, 24.531952>,  <34.433811, 33.966030, 24.620718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746487, 33.733891, 24.531952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418312, 33.961887, 24.514107>,  <33.221409, 34.098686, 24.503399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418312, 33.961887, 24.514107>,  <33.746487, 33.733891, 24.531952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418312, 33.961887, 24.514107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110434, 0.234549, 0.965811,
		0.560971, 0.787460, -0.255379,
		-0.820436, 0.569995, -0.044613,
		33.172180, 34.132885, 24.500723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863091, 34.519516, 24.902170>,  <33.746487, 33.733891, 24.531952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863091, 34.519516, 24.902170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476788, 34.421959, 24.866795>,  <33.245007, 34.363422, 24.845570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476788, 34.421959, 24.866795>,  <33.863091, 34.519516, 24.902170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476788, 34.421959, 24.866795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156997, 0.278036, 0.947654,
		-0.206539, 0.929091, -0.306807,
		-0.965760, -0.243895, -0.088439,
		33.187057, 34.348789, 24.840263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612427, 35.128082, 25.140093>,  <33.863091, 34.519516, 24.902170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612427, 35.128082, 25.140093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335224, 34.842453, 25.179783>,  <33.168903, 34.671074, 25.203598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335224, 34.842453, 25.179783>,  <33.612427, 35.128082, 25.140093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335224, 34.842453, 25.179783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195880, 0.318958, 0.927306,
		-0.693814, 0.623190, -0.360912,
		-0.693003, -0.714073, 0.099227,
		33.127323, 34.628231, 25.209551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929592, 35.367500, 25.294880>,  <33.612427, 35.128082, 25.140093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929592, 35.367500, 25.294880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899128, 34.987984, 25.417515>,  <32.880848, 34.760273, 25.491095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899128, 34.987984, 25.417515>,  <32.929592, 35.367500, 25.294880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899128, 34.987984, 25.417515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334425, 0.313976, 0.888582,
		-0.939340, -0.034853, -0.341213,
		-0.076163, -0.948791, 0.306586,
		32.876278, 34.703346, 25.509491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316822, 35.374565, 25.646473>,  <32.929592, 35.367500, 25.294880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316822, 35.374565, 25.646473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546249, 35.078487, 25.786835>,  <32.683907, 34.900841, 25.871052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546249, 35.078487, 25.786835>,  <32.316822, 35.374565, 25.646473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546249, 35.078487, 25.786835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277158, 0.227748, 0.933442,
		-0.770843, -0.632651, -0.074520,
		0.573572, -0.740192, 0.350902,
		32.718323, 34.856430, 25.892105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917505, 35.198204, 26.192017>,  <32.316822, 35.374565, 25.646473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917505, 35.198204, 26.192017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239845, 34.968311, 26.248993>,  <32.433250, 34.830376, 26.283178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239845, 34.968311, 26.248993>,  <31.917505, 35.198204, 26.192017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239845, 34.968311, 26.248993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179716, -0.008193, 0.983684,
		-0.564186, -0.818302, -0.109891,
		0.805851, -0.574730, 0.142440,
		32.481602, 34.795891, 26.291725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758884, 34.553555, 26.487848>,  <31.917505, 35.198204, 26.192017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758884, 34.553555, 26.487848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138359, 34.603146, 26.604210>,  <32.366043, 34.632900, 26.674026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138359, 34.603146, 26.604210>,  <31.758884, 34.553555, 26.487848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138359, 34.603146, 26.604210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269628, -0.163503, 0.948982,
		0.165217, -0.978722, -0.121684,
		0.948685, 0.123978, 0.290904,
		32.422966, 34.640339, 26.691481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820253, 34.035416, 27.016619>,  <31.758884, 34.553555, 26.487848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820253, 34.035416, 27.016619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123798, 34.290634, 27.068802>,  <32.305927, 34.443768, 27.100113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123798, 34.290634, 27.068802>,  <31.820253, 34.035416, 27.016619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123798, 34.290634, 27.068802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049211, -0.143569, 0.988416,
		0.649388, -0.756493, -0.077550,
		0.758864, 0.638049, 0.130459,
		32.351456, 34.482048, 27.107939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215527, 33.762009, 27.570951>,  <31.820253, 34.035416, 27.016619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215527, 33.762009, 27.570951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302326, 34.152431, 27.564877>,  <32.354404, 34.386684, 27.561232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302326, 34.152431, 27.564877>,  <32.215527, 33.762009, 27.570951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302326, 34.152431, 27.564877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129720, 0.044254, 0.990563,
		0.967515, -0.212977, 0.136217,
		0.216995, 0.976054, -0.015189,
		32.367424, 34.445248, 27.560320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736244, 33.831249, 28.030500>,  <32.215527, 33.762009, 27.570951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736244, 33.831249, 28.030500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554298, 34.186127, 27.999565>,  <32.445129, 34.399055, 27.981005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554298, 34.186127, 27.999565>,  <32.736244, 33.831249, 28.030500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554298, 34.186127, 27.999565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011847, 0.092861, 0.995609,
		0.890482, 0.451950, -0.052749,
		-0.454864, 0.887197, -0.077337,
		32.417839, 34.452286, 27.976364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991161, 34.338955, 28.567966>,  <32.736244, 33.831249, 28.030500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991161, 34.338955, 28.567966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636887, 34.485615, 28.454037>,  <32.424320, 34.573608, 28.385679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636887, 34.485615, 28.454037>,  <32.991161, 34.338955, 28.567966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636887, 34.485615, 28.454037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287832, 0.047733, 0.956491,
		0.364289, 0.929135, 0.063256,
		-0.885690, 0.366646, -0.284824,
		32.371181, 34.595608, 28.368589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797237, 34.760429, 29.141411>,  <32.991161, 34.338955, 28.567966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797237, 34.760429, 29.141411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437088, 34.735405, 28.969170>,  <32.221001, 34.720390, 28.865824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437088, 34.735405, 28.969170>,  <32.797237, 34.760429, 29.141411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437088, 34.735405, 28.969170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426256, -0.071969, 0.901735,
		-0.087406, 0.995443, 0.038131,
		-0.900370, -0.062564, -0.430604,
		32.166977, 34.716637, 28.839989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464436, 35.343525, 29.318760>,  <32.797237, 34.760429, 29.141411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464436, 35.343525, 29.318760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204178, 35.058098, 29.214855>,  <32.048023, 34.886841, 29.152512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204178, 35.058098, 29.214855>,  <32.464436, 35.343525, 29.318760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204178, 35.058098, 29.214855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195581, -0.173065, 0.965296,
		-0.733760, 0.678874, -0.026956,
		-0.650649, -0.713568, -0.259763,
		32.008984, 34.844028, 29.136927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819786, 35.486996, 29.706287>,  <32.464436, 35.343525, 29.318760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819786, 35.486996, 29.706287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789633, 35.100258, 29.608700>,  <31.771540, 34.868214, 29.550148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789633, 35.100258, 29.608700>,  <31.819786, 35.486996, 29.706287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789633, 35.100258, 29.608700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434160, -0.188430, 0.880908,
		-0.897676, 0.172329, -0.405563,
		-0.075385, -0.966849, -0.243968,
		31.767017, 34.810204, 29.535509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128153, 35.205994, 29.895605>,  <31.819786, 35.486996, 29.706287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128153, 35.205994, 29.895605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344532, 34.872658, 29.850147>,  <31.474360, 34.672657, 29.822872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344532, 34.872658, 29.850147>,  <31.128153, 35.205994, 29.895605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344532, 34.872658, 29.850147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287601, -0.310258, 0.906105,
		-0.790356, -0.457470, -0.407503,
		0.540947, -0.833344, -0.113646,
		31.506817, 34.622654, 29.816053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674578, 34.711235, 30.177290>,  <31.128153, 35.205994, 29.895605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674578, 34.711235, 30.177290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035362, 34.538929, 30.165215>,  <31.251833, 34.435547, 30.157970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035362, 34.538929, 30.165215>,  <30.674578, 34.711235, 30.177290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035362, 34.538929, 30.165215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187536, -0.453729, 0.871183,
		-0.388965, -0.780114, -0.490030,
		0.901962, -0.430758, -0.030185,
		31.305950, 34.409702, 30.156158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513910, 34.051327, 30.382662>,  <30.674578, 34.711235, 30.177290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513910, 34.051327, 30.382662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910847, 34.083748, 30.419941>,  <31.149010, 34.103203, 30.442308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910847, 34.083748, 30.419941>,  <30.513910, 34.051327, 30.382662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910847, 34.083748, 30.419941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033726, -0.548060, 0.835759,
		0.118820, -0.832502, -0.541130,
		0.992343, 0.081055, 0.093197,
		31.208549, 34.108063, 30.447901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794266, 33.295902, 30.474199>,  <30.513910, 34.051327, 30.382662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794266, 33.295902, 30.474199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037180, 33.561256, 30.649067>,  <31.182928, 33.720470, 30.753988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037180, 33.561256, 30.649067>,  <30.794266, 33.295902, 30.474199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037180, 33.561256, 30.649067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101725, -0.480802, 0.870908,
		0.787943, -0.573363, -0.224502,
		0.607287, 0.663388, 0.437170,
		31.219366, 33.760273, 30.780218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180977, 32.966717, 30.908705>,  <30.794266, 33.295902, 30.474199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180977, 32.966717, 30.908705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258867, 33.329456, 31.058216>,  <31.305601, 33.547100, 31.147923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258867, 33.329456, 31.058216>,  <31.180977, 32.966717, 30.908705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258867, 33.329456, 31.058216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034936, -0.387243, 0.921316,
		0.980235, -0.166346, -0.107088,
		0.194726, 0.906847, 0.373777,
		31.317286, 33.601509, 31.170349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677689, 32.835903, 31.457891>,  <31.180977, 32.966717, 30.908705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677689, 32.835903, 31.457891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519346, 33.196663, 31.527023>,  <31.424341, 33.413120, 31.568502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519346, 33.196663, 31.527023>,  <31.677689, 32.835903, 31.457891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519346, 33.196663, 31.527023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079959, -0.221341, 0.971913,
		0.914826, 0.370916, 0.159734,
		-0.395854, 0.901903, 0.172831,
		31.400591, 33.467236, 31.578873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179768, 33.068359, 31.951212>,  <31.677689, 32.835903, 31.457891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179768, 33.068359, 31.951212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857176, 33.301971, 31.988083>,  <31.663620, 33.442139, 32.010204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857176, 33.301971, 31.988083>,  <32.179768, 33.068359, 31.951212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857176, 33.301971, 31.988083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088722, -0.034601, 0.995455,
		0.584568, 0.810992, -0.023912,
		-0.806479, 0.584033, 0.092179,
		31.615232, 33.477180, 32.015736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296925, 33.465691, 32.596478>,  <32.179768, 33.068359, 31.951212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296925, 33.465691, 32.596478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904982, 33.465515, 32.516602>,  <31.669815, 33.465408, 32.468678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904982, 33.465515, 32.516602>,  <32.296925, 33.465691, 32.596478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904982, 33.465515, 32.516602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197104, -0.158240, 0.967528,
		-0.032028, 0.987401, 0.154965,
		-0.979859, -0.000443, -0.199689,
		31.611023, 33.465382, 32.456696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978518, 33.869335, 33.084248>,  <32.296925, 33.465691, 32.596478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978518, 33.869335, 33.084248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677406, 33.645275, 32.945946>,  <31.496738, 33.510838, 32.862965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677406, 33.645275, 32.945946>,  <31.978518, 33.869335, 33.084248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677406, 33.645275, 32.945946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353428, -0.099199, 0.930187,
		-0.555347, 0.822427, -0.123299,
		-0.752780, -0.560154, -0.345759,
		31.451572, 33.477230, 32.842216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435501, 34.055893, 33.466187>,  <31.978518, 33.869335, 33.084248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435501, 34.055893, 33.466187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360399, 33.691818, 33.318508>,  <31.315338, 33.473373, 33.229900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360399, 33.691818, 33.318508>,  <31.435501, 34.055893, 33.466187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360399, 33.691818, 33.318508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432094, -0.261014, 0.863231,
		-0.882067, 0.321603, -0.344280,
		-0.187755, -0.910189, -0.369195,
		31.304073, 33.418762, 33.207748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724209, 33.837265, 33.568340>,  <31.435501, 34.055893, 33.466187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724209, 33.837265, 33.568340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918119, 33.489037, 33.534626>,  <31.034466, 33.280102, 33.514397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918119, 33.489037, 33.534626>,  <30.724209, 33.837265, 33.568340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918119, 33.489037, 33.534626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448352, -0.330088, 0.830676,
		-0.750982, -0.364902, -0.550340,
		0.484775, -0.870568, -0.084286,
		31.063553, 33.227867, 33.509342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373064, 33.329342, 33.960438>,  <30.724209, 33.837265, 33.568340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373064, 33.329342, 33.960438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711166, 33.120605, 33.914448>,  <30.914028, 32.995361, 33.886852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711166, 33.120605, 33.914448>,  <30.373064, 33.329342, 33.960438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711166, 33.120605, 33.914448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180375, -0.481175, 0.857867,
		-0.503007, -0.704372, -0.500843,
		0.845251, -0.521852, -0.114983,
		30.964743, 32.964054, 33.879955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124031, 32.563751, 34.053623>,  <30.373064, 33.329342, 33.960438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124031, 32.563751, 34.053623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513582, 32.629742, 34.116039>,  <30.747313, 32.669334, 34.153488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513582, 32.629742, 34.116039>,  <30.124031, 32.563751, 34.053623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513582, 32.629742, 34.116039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046889, -0.526276, 0.849020,
		0.222187, -0.834157, -0.504792,
		0.973876, 0.164972, 0.156044,
		30.805744, 32.679234, 34.162853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281868, 31.918842, 34.255177>,  <30.124031, 32.563751, 34.053623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281868, 31.918842, 34.255177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545731, 32.184196, 34.396469>,  <30.704048, 32.343410, 34.481243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545731, 32.184196, 34.396469>,  <30.281868, 31.918842, 34.255177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545731, 32.184196, 34.396469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114237, -0.376024, 0.919541,
		0.742833, -0.646935, -0.172264,
		0.659658, 0.663386, 0.353227,
		30.743628, 32.383213, 34.502438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629103, 31.561340, 34.702850>,  <30.281868, 31.918842, 34.255177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629103, 31.561340, 34.702850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707888, 31.936478, 34.817150>,  <30.755157, 32.161560, 34.885731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707888, 31.936478, 34.817150>,  <30.629103, 31.561340, 34.702850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707888, 31.936478, 34.817150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199314, -0.247069, 0.948278,
		0.959938, -0.243727, 0.138263,
		0.196960, 0.937846, 0.285749,
		30.766975, 32.217831, 34.902874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197519, 31.628714, 35.042797>,  <30.629103, 31.561340, 34.702850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197519, 31.628714, 35.042797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953402, 31.916222, 35.176010>,  <30.806931, 32.088726, 35.255939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953402, 31.916222, 35.176010>,  <31.197519, 31.628714, 35.042797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953402, 31.916222, 35.176010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095881, -0.484338, 0.869611,
		0.786350, 0.498788, 0.364506,
		-0.610296, 0.718768, 0.333035,
		30.770313, 32.131851, 35.275921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258699, 31.591095, 35.741810>,  <31.197519, 31.628714, 35.042797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258699, 31.591095, 35.741810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948265, 31.842659, 35.723225>,  <30.762005, 31.993597, 35.712074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948265, 31.842659, 35.723225>,  <31.258699, 31.591095, 35.741810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948265, 31.842659, 35.723225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299137, -0.302271, 0.905069,
		0.555162, 0.716313, 0.422719,
		-0.776088, 0.628911, -0.046466,
		30.715439, 32.031334, 35.709286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207199, 31.721138, 36.368748>,  <31.258699, 31.591095, 35.741810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207199, 31.721138, 36.368748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845234, 31.811337, 36.224369>,  <30.628056, 31.865456, 36.137741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845234, 31.811337, 36.224369>,  <31.207199, 31.721138, 36.368748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845234, 31.811337, 36.224369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421514, -0.357663, 0.833309,
		0.058808, 0.906217, 0.418702,
		-0.904913, 0.225494, -0.360949,
		30.573759, 31.878984, 36.116085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820122, 32.146187, 36.875420>,  <31.207199, 31.721138, 36.368748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820122, 32.146187, 36.875420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545782, 31.996307, 36.625870>,  <30.381178, 31.906382, 36.476139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545782, 31.996307, 36.625870>,  <30.820122, 32.146187, 36.875420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545782, 31.996307, 36.625870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426385, -0.487818, 0.761728,
		-0.589750, 0.788440, 0.174806,
		-0.685850, -0.374694, -0.623870,
		30.340027, 31.883900, 36.438709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250214, 32.213821, 37.290230>,  <30.820122, 32.146187, 36.875420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250214, 32.213821, 37.290230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141705, 31.953377, 37.006691>,  <30.076599, 31.797110, 36.836567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141705, 31.953377, 37.006691>,  <30.250214, 32.213821, 37.290230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141705, 31.953377, 37.006691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443509, -0.569060, 0.692438,
		-0.854231, 0.502219, -0.134403,
		-0.271272, -0.651112, -0.708848,
		30.060324, 31.758043, 36.794037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512957, 32.022343, 37.363533>,  <30.250214, 32.213821, 37.290230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512957, 32.022343, 37.363533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634485, 31.725758, 37.124226>,  <29.707403, 31.547806, 36.980640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634485, 31.725758, 37.124226>,  <29.512957, 32.022343, 37.363533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634485, 31.725758, 37.124226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344165, -0.670962, 0.656781,
		-0.888393, 0.006359, -0.459039,
		0.303821, -0.741465, -0.598266,
		29.725632, 31.503319, 36.944744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852924, 31.630939, 37.112789>,  <29.512957, 32.022343, 37.363533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852924, 31.630939, 37.112789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182146, 31.405262, 37.086655>,  <29.379679, 31.269855, 37.070972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182146, 31.405262, 37.086655>,  <28.852924, 31.630939, 37.112789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182146, 31.405262, 37.086655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467649, -0.738467, 0.485768,
		-0.322314, -0.369260, -0.871643,
		0.823055, -0.564193, -0.065335,
		29.429062, 31.236004, 37.067055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688961, 30.977274, 37.036392>,  <28.852924, 31.630939, 37.112789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688961, 30.977274, 37.036392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061802, 30.942379, 37.177006>,  <29.285507, 30.921442, 37.261375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061802, 30.942379, 37.177006>,  <28.688961, 30.977274, 37.036392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061802, 30.942379, 37.177006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269860, -0.814621, 0.513390,
		0.241580, -0.573396, -0.782851,
		0.932102, -0.087235, 0.351533,
		29.341433, 30.916208, 37.282467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771912, 30.259134, 37.135563>,  <28.688961, 30.977274, 37.036392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771912, 30.259134, 37.135563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074001, 30.399780, 37.356834>,  <29.255255, 30.484169, 37.489597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074001, 30.399780, 37.356834>,  <28.771912, 30.259134, 37.135563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074001, 30.399780, 37.356834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317120, -0.542591, 0.777837,
		0.573648, -0.762864, -0.298274,
		0.755224, 0.351616, 0.553176,
		29.300568, 30.505264, 37.522785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299618, 30.154373, 37.730953>,  <28.771912, 30.259134, 37.135563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299618, 30.154373, 37.730953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917051, 30.052441, 37.673923>,  <27.687511, 29.991282, 37.639706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917051, 30.052441, 37.673923>,  <28.299618, 30.154373, 37.730953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917051, 30.052441, 37.673923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016301, 0.534103, -0.845262,
		0.291547, -0.806100, -0.514980,
		-0.956418, -0.254829, -0.142576,
		27.630127, 29.975992, 37.631149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171352, 29.748997, 37.084850>,  <28.299618, 30.154373, 37.730953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171352, 29.748997, 37.084850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829733, 29.933102, 37.181812>,  <27.624762, 30.043564, 37.239990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829733, 29.933102, 37.181812>,  <28.171352, 29.748997, 37.084850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829733, 29.933102, 37.181812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091329, 0.326078, -0.940921,
		-0.512112, -0.825731, -0.236451,
		-0.854049, 0.460262, 0.242402,
		27.573519, 30.071180, 37.254532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800711, 29.695341, 36.451462>,  <28.171352, 29.748997, 37.084850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800711, 29.695341, 36.451462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596809, 29.973522, 36.654045>,  <27.474468, 30.140430, 36.775593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596809, 29.973522, 36.654045>,  <27.800711, 29.695341, 36.451462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596809, 29.973522, 36.654045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256540, 0.439027, -0.861071,
		-0.821181, -0.568860, -0.045384,
		-0.509754, 0.695452, 0.506456,
		27.443884, 30.182158, 36.805981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107161, 29.805979, 36.156013>,  <27.800711, 29.695341, 36.451462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107161, 29.805979, 36.156013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226217, 30.143543, 36.334549>,  <27.297651, 30.346083, 36.441669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226217, 30.143543, 36.334549>,  <27.107161, 29.805979, 36.156013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226217, 30.143543, 36.334549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189305, 0.510422, -0.838828,
		-0.935720, 0.165177, 0.311681,
		0.297644, 0.843911, 0.446343,
		27.315510, 30.396717, 36.468452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612303, 30.337509, 36.007717>,  <27.107161, 29.805979, 36.156013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612303, 30.337509, 36.007717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939205, 30.540062, 36.117752>,  <27.135347, 30.661592, 36.183773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939205, 30.540062, 36.117752>,  <26.612303, 30.337509, 36.007717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939205, 30.540062, 36.117752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165884, 0.663866, -0.729222,
		-0.551884, 0.550328, 0.626549,
		0.817256, 0.506380, 0.275086,
		27.184381, 30.691977, 36.200279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637381, 30.922472, 35.691792>,  <26.612303, 30.337509, 36.007717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637381, 30.922472, 35.691792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012819, 30.960815, 35.824364>,  <27.238083, 30.983822, 35.903908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012819, 30.960815, 35.824364>,  <26.637381, 30.922472, 35.691792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012819, 30.960815, 35.824364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251268, 0.468356, -0.847058,
		-0.236424, 0.878324, 0.415511,
		0.938599, 0.095860, 0.331426,
		27.294399, 30.989573, 35.923790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715904, 31.619741, 35.554913>,  <26.637381, 30.922472, 35.691792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715904, 31.619741, 35.554913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081894, 31.463871, 35.596817>,  <27.301487, 31.370348, 35.621960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081894, 31.463871, 35.596817>,  <26.715904, 31.619741, 35.554913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081894, 31.463871, 35.596817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294205, 0.466566, -0.834122,
		0.276161, 0.794020, 0.541541,
		0.914974, -0.389677, 0.104757,
		27.356386, 31.346968, 35.628242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292328, 32.095978, 35.556110>,  <26.715904, 31.619741, 35.554913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292328, 32.095978, 35.556110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474400, 31.756248, 35.449184>,  <27.583643, 31.552410, 35.385029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474400, 31.756248, 35.449184>,  <27.292328, 32.095978, 35.556110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474400, 31.756248, 35.449184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341571, 0.443810, -0.828469,
		0.822277, 0.285796, 0.492119,
		0.455181, -0.849325, -0.267315,
		27.610954, 31.501451, 35.368988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933334, 32.251579, 35.404240>,  <27.292328, 32.095978, 35.556110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933334, 32.251579, 35.404240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921904, 31.885773, 35.242821>,  <27.915045, 31.666290, 35.145969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921904, 31.885773, 35.242821>,  <27.933334, 32.251579, 35.404240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921904, 31.885773, 35.242821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356780, 0.367787, -0.858744,
		0.933751, -0.168519, 0.315769,
		-0.028578, -0.914513, -0.403546,
		27.913330, 31.611420, 35.121758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524822, 32.238777, 34.999519>,  <27.933334, 32.251579, 35.404240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524822, 32.238777, 34.999519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285631, 31.952621, 34.854942>,  <28.142117, 31.780930, 34.768196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285631, 31.952621, 34.854942>,  <28.524822, 32.238777, 34.999519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285631, 31.952621, 34.854942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271178, 0.243783, -0.931146,
		0.754244, -0.654822, 0.048220,
		-0.597979, -0.715387, -0.361445,
		28.106237, 31.738005, 34.746510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999971, 31.858904, 34.446640>,  <28.524822, 32.238777, 34.999519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999971, 31.858904, 34.446640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614189, 31.775593, 34.381596>,  <28.382719, 31.725607, 34.342567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614189, 31.775593, 34.381596>,  <28.999971, 31.858904, 34.446640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614189, 31.775593, 34.381596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108669, 0.248309, -0.962566,
		0.240842, -0.946029, -0.216853,
		-0.964462, -0.208261, -0.162607,
		28.324852, 31.713110, 34.332813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059029, 31.512615, 33.879517>,  <28.999971, 31.858904, 34.446640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059029, 31.512615, 33.879517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701151, 31.686142, 33.922081>,  <28.486423, 31.790258, 33.947620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701151, 31.686142, 33.922081>,  <29.059029, 31.512615, 33.879517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701151, 31.686142, 33.922081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009783, 0.257208, -0.966307,
		-0.446569, -0.863509, -0.234367,
		-0.894696, 0.433815, 0.106413,
		28.432741, 31.816286, 33.954006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618557, 31.204264, 33.432625>,  <29.059029, 31.512615, 33.879517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618557, 31.204264, 33.432625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485352, 31.576729, 33.492008>,  <28.405428, 31.800207, 33.527637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485352, 31.576729, 33.492008>,  <28.618557, 31.204264, 33.432625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485352, 31.576729, 33.492008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112366, 0.195510, -0.974243,
		-0.936203, -0.307756, -0.169738,
		-0.333015, 0.931162, 0.148456,
		28.385447, 31.856077, 33.536545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155090, 31.402563, 32.892319>,  <28.618557, 31.204264, 33.432625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155090, 31.402563, 32.892319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311729, 31.743134, 33.031876>,  <28.405712, 31.947475, 33.115608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311729, 31.743134, 33.031876>,  <28.155090, 31.402563, 32.892319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311729, 31.743134, 33.031876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042443, 0.395480, -0.917494,
		-0.919158, 0.344479, 0.191005,
		0.391596, 0.851428, 0.348888,
		28.429209, 31.998562, 33.136543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849998, 31.859983, 32.444366>,  <28.155090, 31.402563, 32.892319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849998, 31.859983, 32.444366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174541, 32.045097, 32.587212>,  <28.369268, 32.156166, 32.672916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174541, 32.045097, 32.587212>,  <27.849998, 31.859983, 32.444366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174541, 32.045097, 32.587212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214526, 0.332549, -0.918362,
		-0.543760, 0.821731, 0.170538,
		0.811359, 0.462784, 0.357110,
		28.417950, 32.183933, 32.694344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676126, 32.641815, 32.452488>,  <27.849998, 31.859983, 32.444366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676126, 32.641815, 32.452488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065378, 32.557575, 32.415257>,  <28.298929, 32.507030, 32.392918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065378, 32.557575, 32.415257>,  <27.676126, 32.641815, 32.452488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065378, 32.557575, 32.415257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042558, 0.561778, -0.826193,
		0.226285, 0.800033, 0.555646,
		0.973131, -0.210602, -0.093074,
		28.357317, 32.494396, 32.387333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885429, 33.219448, 32.119629>,  <27.676126, 32.641815, 32.452488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885429, 33.219448, 32.119629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198555, 32.973366, 32.082287>,  <28.386431, 32.825714, 32.059879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198555, 32.973366, 32.082287>,  <27.885429, 33.219448, 32.119629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198555, 32.973366, 32.082287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105567, 0.279162, -0.954424,
		0.613233, 0.737282, 0.283478,
		0.782816, -0.615210, -0.093358,
		28.433399, 32.788803, 32.054279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317898, 33.547371, 31.704298>,  <27.885429, 33.219448, 32.119629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317898, 33.547371, 31.704298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518894, 33.202251, 31.682098>,  <28.639492, 32.995178, 31.668777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518894, 33.202251, 31.682098>,  <28.317898, 33.547371, 31.704298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518894, 33.202251, 31.682098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253152, 0.208208, -0.944756,
		0.826690, 0.460681, 0.323043,
		0.502491, -0.862799, -0.055501,
		28.669641, 32.943413, 31.665447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004580, 33.744732, 31.353216>,  <28.317898, 33.547371, 31.704298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004580, 33.744732, 31.353216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927460, 33.356373, 31.296387>,  <28.881187, 33.123356, 31.262289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927460, 33.356373, 31.296387>,  <29.004580, 33.744732, 31.353216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927460, 33.356373, 31.296387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270204, 0.086662, -0.958895,
		0.943302, -0.223263, 0.245632,
		-0.192799, -0.970898, -0.142075,
		28.869619, 33.065102, 31.253765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628149, 33.468018, 31.041191>,  <29.004580, 33.744732, 31.353216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628149, 33.468018, 31.041191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326258, 33.220619, 30.953701>,  <29.145123, 33.072178, 30.901207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326258, 33.220619, 30.953701>,  <29.628149, 33.468018, 31.041191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326258, 33.220619, 30.953701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304973, -0.035589, -0.951696,
		0.580839, -0.784979, 0.215486,
		-0.754730, -0.618499, -0.218726,
		29.099838, 33.035069, 30.888083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905977, 32.806370, 30.788200>,  <29.628149, 33.468018, 31.041191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905977, 32.806370, 30.788200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540501, 32.860542, 30.634930>,  <29.321215, 32.893044, 30.542967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540501, 32.860542, 30.634930>,  <29.905977, 32.806370, 30.788200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540501, 32.860542, 30.634930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383315, -0.026108, -0.923249,
		-0.135039, -0.990443, -0.028057,
		-0.913693, 0.135429, -0.383177,
		29.266394, 32.901169, 30.519976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148699, 32.702606, 30.089718>,  <29.905977, 32.806370, 30.788200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148699, 32.702606, 30.089718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769444, 32.828236, 30.070137>,  <29.541891, 32.903614, 30.058388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769444, 32.828236, 30.070137>,  <30.148699, 32.702606, 30.089718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769444, 32.828236, 30.070137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082917, 0.095701, -0.991951,
		-0.306859, -0.944563, -0.116780,
		-0.948136, 0.314072, -0.048953,
		29.485003, 32.922459, 30.055450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840935, 32.301849, 29.536118>,  <30.148699, 32.702606, 30.089718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840935, 32.301849, 29.536118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670689, 32.658039, 29.600494>,  <29.568541, 32.871754, 29.639120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670689, 32.658039, 29.600494>,  <29.840935, 32.301849, 29.536118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670689, 32.658039, 29.600494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122876, 0.233083, -0.964662,
		-0.896522, -0.390800, -0.208622,
		-0.425617, 0.890476, 0.160944,
		29.543003, 32.925182, 29.648777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974291, 32.625343, 28.868731>,  <29.840935, 32.301849, 29.536118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974291, 32.625343, 28.868731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781538, 32.926502, 29.048035>,  <29.665886, 33.107197, 29.155617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781538, 32.926502, 29.048035>,  <29.974291, 32.625343, 28.868731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781538, 32.926502, 29.048035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166400, 0.580893, -0.796790,
		-0.860291, -0.309370, -0.405204,
		-0.481883, 0.752897, 0.448258,
		29.636972, 33.152370, 29.182512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344286, 32.801460, 28.444553>,  <29.974291, 32.625343, 28.868731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344286, 32.801460, 28.444553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463490, 33.107738, 28.672554>,  <29.535011, 33.291504, 28.809355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463490, 33.107738, 28.672554>,  <29.344286, 32.801460, 28.444553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463490, 33.107738, 28.672554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020685, 0.591816, -0.805808,
		-0.954339, 0.251929, 0.160528,
		0.298009, 0.765693, 0.570004,
		29.552893, 33.337448, 28.843555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894482, 33.263912, 28.239910>,  <29.344286, 32.801460, 28.444553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894482, 33.263912, 28.239910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191788, 33.472466, 28.407585>,  <29.370171, 33.597599, 28.508190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191788, 33.472466, 28.407585>,  <28.894482, 33.263912, 28.239910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191788, 33.472466, 28.407585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093122, 0.701121, -0.706935,
		-0.662484, 0.486405, 0.569670,
		0.743265, 0.521383, 0.419187,
		29.414766, 33.628880, 28.533340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671898, 33.936012, 28.555807>,  <28.894482, 33.263912, 28.239910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671898, 33.936012, 28.555807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056965, 33.948479, 28.448250>,  <29.288004, 33.955959, 28.383715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056965, 33.948479, 28.448250>,  <28.671898, 33.936012, 28.555807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056965, 33.948479, 28.448250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219788, 0.669853, -0.709218,
		0.158016, 0.741839, 0.651694,
		0.962665, 0.031166, -0.268895,
		29.345764, 33.957829, 28.367582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738853, 34.681049, 28.317053>,  <28.671898, 33.936012, 28.555807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738853, 34.681049, 28.317053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059057, 34.496624, 28.163895>,  <29.251179, 34.385971, 28.072001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059057, 34.496624, 28.163895>,  <28.738853, 34.681049, 28.317053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059057, 34.496624, 28.163895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031685, 0.670545, -0.741192,
		0.598482, 0.581199, 0.551386,
		0.800509, -0.461061, -0.382894,
		29.299210, 34.358307, 28.049026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132259, 35.216114, 28.052137>,  <28.738853, 34.681049, 28.317053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132259, 35.216114, 28.052137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213636, 34.874527, 27.860573>,  <29.262463, 34.669575, 27.745634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213636, 34.874527, 27.860573>,  <29.132259, 35.216114, 28.052137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213636, 34.874527, 27.860573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022804, 0.484877, -0.874285,
		0.978821, 0.188788, 0.079170,
		0.203442, -0.853964, -0.478913,
		29.274670, 34.618340, 27.716900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496708, 35.449749, 27.313494>,  <29.132259, 35.216114, 28.052137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496708, 35.449749, 27.313494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324398, 35.088902, 27.303619>,  <29.221012, 34.872391, 27.297695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324398, 35.088902, 27.303619>,  <29.496708, 35.449749, 27.313494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324398, 35.088902, 27.303619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307939, 0.172649, -0.935610,
		0.848296, -0.395436, -0.352171,
		-0.430776, -0.902121, -0.024688,
		29.195166, 34.818264, 27.296213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737053, 35.197735, 26.661764>,  <29.496708, 35.449749, 27.313494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737053, 35.197735, 26.661764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417288, 34.966686, 26.727844>,  <29.225430, 34.828056, 26.767492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417288, 34.966686, 26.727844>,  <29.737053, 35.197735, 26.661764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417288, 34.966686, 26.727844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309809, 0.160751, -0.937111,
		0.514742, -0.800319, -0.307459,
		-0.799412, -0.577624, 0.165200,
		29.177464, 34.793400, 26.777405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696722, 34.796822, 26.077888>,  <29.737053, 35.197735, 26.661764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696722, 34.796822, 26.077888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337994, 34.742058, 26.246159>,  <29.122757, 34.709202, 26.347120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337994, 34.742058, 26.246159>,  <29.696722, 34.796822, 26.077888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337994, 34.742058, 26.246159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435944, 0.111746, -0.893009,
		0.075251, -0.984261, -0.159900,
		-0.896822, -0.136907, 0.420674,
		29.068947, 34.700985, 26.372360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357285, 34.281082, 25.755945>,  <29.696722, 34.796822, 26.077888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357285, 34.281082, 25.755945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072430, 34.518864, 25.905334>,  <28.901516, 34.661533, 25.994968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072430, 34.518864, 25.905334>,  <29.357285, 34.281082, 25.755945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072430, 34.518864, 25.905334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416940, 0.069874, -0.906244,
		-0.564818, -0.801087, 0.198093,
		-0.712139, 0.594456, 0.373471,
		28.858788, 34.697201, 26.017376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672869, 34.127277, 25.467743>,  <29.357285, 34.281082, 25.755945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672869, 34.127277, 25.467743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576494, 34.475040, 25.640293>,  <28.518669, 34.683697, 25.743824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576494, 34.475040, 25.640293>,  <28.672869, 34.127277, 25.467743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576494, 34.475040, 25.640293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647938, 0.186827, -0.738426,
		-0.722584, -0.457417, 0.518308,
		-0.240934, 0.869405, 0.431376,
		28.504213, 34.735863, 25.769707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980457, 34.201332, 25.300911>,  <28.672869, 34.127277, 25.467743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980457, 34.201332, 25.300911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083902, 34.578827, 25.383350>,  <28.145969, 34.805325, 25.432814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083902, 34.578827, 25.383350>,  <27.980457, 34.201332, 25.300911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083902, 34.578827, 25.383350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643309, 0.327423, -0.692060,
		-0.720605, 0.046391, 0.691792,
		0.258615, 0.943738, 0.206099,
		28.161488, 34.861950, 25.445181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412655, 34.511463, 25.385778>,  <27.980457, 34.201332, 25.300911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412655, 34.511463, 25.385778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659340, 34.817570, 25.311989>,  <27.807352, 35.001232, 25.267715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659340, 34.817570, 25.311989>,  <27.412655, 34.511463, 25.385778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659340, 34.817570, 25.311989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665329, 0.381487, -0.641720,
		-0.420713, 0.518493, 0.744423,
		0.616715, 0.765266, -0.184472,
		27.844355, 35.047150, 25.256647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049934, 35.017574, 25.298920>,  <27.412655, 34.511463, 25.385778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049934, 35.017574, 25.298920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376858, 35.171497, 25.127373>,  <27.573011, 35.263851, 25.024445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376858, 35.171497, 25.127373>,  <27.049934, 35.017574, 25.298920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376858, 35.171497, 25.127373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575426, 0.506497, -0.642142,
		-0.029884, 0.771609, 0.635395,
		0.817308, 0.384812, -0.428867,
		27.622049, 35.286942, 24.998713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951077, 35.679070, 25.181999>,  <27.049934, 35.017574, 25.298920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951077, 35.679070, 25.181999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251766, 35.614296, 24.926285>,  <27.432180, 35.575432, 24.772856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251766, 35.614296, 24.926285>,  <26.951077, 35.679070, 25.181999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251766, 35.614296, 24.926285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512983, 0.465608, -0.721150,
		0.414435, 0.870050, 0.266940,
		0.751726, -0.161934, -0.639285,
		27.477283, 35.565716, 24.734499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172575, 36.339539, 24.929527>,  <26.951077, 35.679070, 25.181999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172575, 36.339539, 24.929527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302216, 36.073547, 24.660378>,  <27.380001, 35.913952, 24.498888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302216, 36.073547, 24.660378>,  <27.172575, 36.339539, 24.929527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302216, 36.073547, 24.660378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272982, 0.615272, -0.739542,
		0.905781, 0.423369, 0.017884,
		0.324102, -0.664981, -0.672873,
		27.399446, 35.874054, 24.458515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454571, 36.801884, 24.341751>,  <27.172575, 36.339539, 24.929527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454571, 36.801884, 24.341751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396040, 36.434708, 24.194252>,  <27.360922, 36.214401, 24.105753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396040, 36.434708, 24.194252>,  <27.454571, 36.801884, 24.341751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396040, 36.434708, 24.194252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403975, 0.395712, -0.824752,
		0.902991, 0.028282, -0.428727,
		-0.146326, -0.917939, -0.368750,
		27.352142, 36.159325, 24.083628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799473, 36.790131, 23.733482>,  <27.454571, 36.801884, 24.341751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799473, 36.790131, 23.733482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475666, 36.555531, 23.722874>,  <27.281382, 36.414772, 23.716509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475666, 36.555531, 23.722874>,  <27.799473, 36.790131, 23.733482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475666, 36.555531, 23.722874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309784, 0.465085, -0.829295,
		0.498718, -0.663109, -0.558181,
		-0.809515, -0.586501, -0.026525,
		27.232811, 36.379581, 23.714916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646671, 36.793774, 23.048283>,  <27.799473, 36.790131, 23.733482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646671, 36.793774, 23.048283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331234, 36.611500, 23.213432>,  <27.141972, 36.502136, 23.312523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331234, 36.611500, 23.213432>,  <27.646671, 36.793774, 23.048283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331234, 36.611500, 23.213432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578364, 0.321628, -0.749700,
		0.208837, -0.830002, -0.517188,
		-0.788595, -0.455688, 0.412876,
		27.094656, 36.474792, 23.337296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390245, 36.263203, 22.674553>,  <27.646671, 36.793774, 23.048283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390245, 36.263203, 22.674553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132505, 36.496227, 22.872719>,  <26.977861, 36.636044, 22.991619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132505, 36.496227, 22.872719>,  <27.390245, 36.263203, 22.674553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132505, 36.496227, 22.872719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291515, 0.411798, -0.863389,
		-0.706988, -0.700746, -0.095517,
		-0.644350, 0.582561, 0.495414,
		26.939199, 36.670994, 23.021343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135740, 36.718475, 22.208750>,  <27.390245, 36.263203, 22.674553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135740, 36.718475, 22.208750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948730, 36.891716, 22.516994>,  <26.836525, 36.995659, 22.701942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948730, 36.891716, 22.516994>,  <27.135740, 36.718475, 22.208750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948730, 36.891716, 22.516994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290807, 0.747877, -0.596751,
		-0.834777, -0.503095, -0.223703,
		-0.467525, 0.433099, 0.770614,
		26.808474, 37.021645, 22.748178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407198, 36.883629, 22.065313>,  <27.135740, 36.718475, 22.208750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407198, 36.883629, 22.065313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547653, 37.143353, 22.335159>,  <26.631926, 37.299187, 22.497066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547653, 37.143353, 22.335159>,  <26.407198, 36.883629, 22.065313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547653, 37.143353, 22.335159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328107, 0.760135, -0.560839,
		-0.876953, -0.024413, 0.479955,
		0.351139, 0.649306, 0.674614,
		26.652994, 37.338142, 22.537544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723484, 37.238678, 22.161814>,  <26.407198, 36.883629, 22.065313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723484, 37.238678, 22.161814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350964, 37.351006, 22.254604>,  <25.127451, 37.418404, 22.310278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350964, 37.351006, 22.254604>,  <25.723484, 37.238678, 22.161814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350964, 37.351006, 22.254604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151684, -0.280018, 0.947936,
		0.331160, 0.918002, 0.218186,
		-0.931303, 0.280823, 0.231977,
		25.071573, 37.435253, 22.324198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738482, 37.621738, 22.783922>,  <25.723484, 37.238678, 22.161814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738482, 37.621738, 22.783922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399538, 37.410957, 22.757671>,  <25.196171, 37.284489, 22.741920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399538, 37.410957, 22.757671>,  <25.738482, 37.621738, 22.783922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399538, 37.410957, 22.757671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022235, -0.158687, 0.987079,
		-0.530554, 0.834951, 0.146181,
		-0.847360, -0.526948, -0.065627,
		25.145330, 37.252872, 22.737984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182114, 38.253872, 22.706717>,  <25.738482, 37.621738, 22.783922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182114, 38.253872, 22.706717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838055, 38.377064, 22.544090>,  <24.631618, 38.450977, 22.446514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838055, 38.377064, 22.544090>,  <25.182114, 38.253872, 22.706717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838055, 38.377064, 22.544090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503818, 0.388837, -0.771345,
		-0.079470, -0.868306, -0.489622,
		-0.860147, 0.307979, -0.406567,
		24.580011, 38.469456, 22.422119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338921, 38.008316, 22.023573>,  <25.182114, 38.253872, 22.706717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338921, 38.008316, 22.023573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028841, 38.259808, 21.999031>,  <24.842793, 38.410702, 21.984306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028841, 38.259808, 21.999031>,  <25.338921, 38.008316, 22.023573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028841, 38.259808, 21.999031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471698, 0.511496, -0.718244,
		-0.420198, -0.585723, -0.693082,
		-0.775200, 0.628730, -0.061355,
		24.796282, 38.448425, 21.980625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275009, 38.030773, 21.296181>,  <25.338921, 38.008316, 22.023573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275009, 38.030773, 21.296181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073540, 38.340115, 21.450191>,  <24.952658, 38.525719, 21.542599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073540, 38.340115, 21.450191>,  <25.275009, 38.030773, 21.296181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073540, 38.340115, 21.450191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277171, 0.566787, -0.775841,
		-0.818225, -0.284050, -0.499824,
		-0.503671, 0.773349, 0.385028,
		24.922438, 38.572121, 21.565701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716669, 38.318584, 20.750265>,  <25.275009, 38.030773, 21.296181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716669, 38.318584, 20.750265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795158, 38.611946, 21.010609>,  <24.842251, 38.787964, 21.166815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795158, 38.611946, 21.010609>,  <24.716669, 38.318584, 20.750265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795158, 38.611946, 21.010609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098198, 0.645731, -0.757225,
		-0.975630, 0.212496, 0.054688,
		0.196221, 0.733401, 0.650861,
		24.854025, 38.831966, 21.205868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.359005, 38.871090, 20.465366>,  <24.716669, 38.318584, 20.750265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.359005, 38.871090, 20.465366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626989, 39.011730, 20.726910>,  <24.787779, 39.096115, 20.883835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626989, 39.011730, 20.726910>,  <24.359005, 38.871090, 20.465366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.626989, 39.011730, 20.726910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036983, 0.863839, -0.502408,
		-0.741476, 0.360775, 0.565735,
		0.669960, 0.351601, 0.653858,
		24.827978, 39.117210, 20.923067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.122206, 39.489517, 20.652021>,  <24.359005, 38.871090, 20.465366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.122206, 39.489517, 20.652021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513269, 39.511051, 20.733295>,  <24.747908, 39.523972, 20.782061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513269, 39.511051, 20.733295>,  <24.122206, 39.489517, 20.652021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513269, 39.511051, 20.733295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086715, 0.777244, -0.623195,
		-0.191477, 0.626892, 0.755211,
		0.977659, 0.053839, 0.203185,
		24.806566, 39.527203, 20.794250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247814, 40.220516, 20.946877>,  <24.122206, 39.489517, 20.652021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247814, 40.220516, 20.946877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583963, 40.069225, 20.791588>,  <24.785654, 39.978451, 20.698414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583963, 40.069225, 20.791588>,  <24.247814, 40.220516, 20.946877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583963, 40.069225, 20.791588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110767, 0.820996, -0.560085,
		0.530568, 0.427679, 0.731839,
		0.840374, -0.378227, -0.388222,
		24.836075, 39.955757, 20.675121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.834455, 40.755539, 21.047216>,  <24.247814, 40.220516, 20.946877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.834455, 40.755539, 21.047216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984024, 40.503227, 20.775246>,  <25.073765, 40.351841, 20.612064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984024, 40.503227, 20.775246>,  <24.834455, 40.755539, 21.047216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984024, 40.503227, 20.775246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134009, 0.762156, -0.633372,
		0.917729, 0.145715, 0.369515,
		0.373920, -0.630782, -0.679925,
		25.096199, 40.313992, 20.571268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312933, 41.158409, 20.874350>,  <24.834455, 40.755539, 21.047216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312933, 41.158409, 20.874350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248552, 40.896606, 20.578861>,  <25.209923, 40.739525, 20.401567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248552, 40.896606, 20.578861>,  <25.312933, 41.158409, 20.874350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248552, 40.896606, 20.578861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005679, 0.747855, -0.663838,
		0.986946, -0.111042, -0.116653,
		-0.160953, -0.654509, -0.738723,
		25.200266, 40.700253, 20.357244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800592, 41.312370, 20.210258>,  <25.312933, 41.158409, 20.874350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800592, 41.312370, 20.210258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495459, 41.100140, 20.062431>,  <25.312378, 40.972801, 19.973736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495459, 41.100140, 20.062431>,  <25.800592, 41.312370, 20.210258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495459, 41.100140, 20.062431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156404, 0.705995, -0.690731,
		0.627393, -0.469112, -0.621541,
		-0.762834, -0.530571, -0.369565,
		25.266609, 40.940968, 19.951561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837296, 41.462574, 19.447678>,  <25.800592, 41.312370, 20.210258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837296, 41.462574, 19.447678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466814, 41.320068, 19.497021>,  <25.244524, 41.234566, 19.526627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466814, 41.320068, 19.497021>,  <25.837296, 41.462574, 19.447678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466814, 41.320068, 19.497021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325914, 0.592108, -0.737013,
		0.189532, -0.722830, -0.664526,
		-0.926206, -0.356266, 0.123357,
		25.188951, 41.213188, 19.534027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639277, 41.363022, 18.728483>,  <25.837296, 41.462574, 19.447678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639277, 41.363022, 18.728483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286543, 41.346115, 18.916348>,  <25.074902, 41.335972, 19.029066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286543, 41.346115, 18.916348>,  <25.639277, 41.363022, 18.728483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286543, 41.346115, 18.916348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449174, 0.378502, -0.809308,
		-0.143559, -0.924635, -0.352762,
		-0.881835, -0.042268, 0.469659,
		25.021992, 41.333435, 19.057245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156990, 41.028065, 18.276100>,  <25.639277, 41.363022, 18.728483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156990, 41.028065, 18.276100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961378, 41.268921, 18.528538>,  <24.844011, 41.413433, 18.680000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961378, 41.268921, 18.528538>,  <25.156990, 41.028065, 18.276100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961378, 41.268921, 18.528538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282135, 0.575423, -0.767651,
		-0.825379, -0.553457, -0.111514,
		-0.489029, 0.602141, 0.631092,
		24.814669, 41.449562, 18.717865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562263, 41.240299, 17.855473>,  <25.156990, 41.028065, 18.276100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562263, 41.240299, 17.855473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518904, 41.482670, 18.170712>,  <24.492887, 41.628094, 18.359856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518904, 41.482670, 18.170712>,  <24.562263, 41.240299, 17.855473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518904, 41.482670, 18.170712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506430, 0.648529, -0.568277,
		-0.855440, -0.460718, 0.236561,
		-0.108398, 0.605928, 0.788099,
		24.486383, 41.664448, 18.407141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.805098, 41.412685, 17.931616>,  <24.562263, 41.240299, 17.855473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.805098, 41.412685, 17.931616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.025072, 41.690876, 18.116608>,  <24.157057, 41.857788, 18.227602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.025072, 41.690876, 18.116608>,  <23.805098, 41.412685, 17.931616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.025072, 41.690876, 18.116608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409514, 0.707131, -0.576424,
		-0.727921, 0.127605, 0.673683,
		0.549936, 0.695473, 0.462479,
		24.190052, 41.899517, 18.255352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.338282, 41.911152, 18.180763>,  <23.805098, 41.412685, 17.931616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.338282, 41.911152, 18.180763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.698563, 42.083614, 18.159447>,  <23.914732, 42.187092, 18.146656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.698563, 42.083614, 18.159447>,  <23.338282, 41.911152, 18.180763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.698563, 42.083614, 18.159447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350552, 0.648847, -0.675360,
		-0.256605, 0.626981, 0.735560,
		0.900704, 0.431153, -0.053292,
		23.968773, 42.212959, 18.143459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.230001, 42.682842, 18.201565>,  <23.338282, 41.911152, 18.180763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.230001, 42.682842, 18.201565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.604296, 42.656761, 18.062916>,  <23.828873, 42.641113, 17.979727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.604296, 42.656761, 18.062916>,  <23.230001, 42.682842, 18.201565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.604296, 42.656761, 18.062916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223585, 0.650412, -0.725930,
		0.272780, 0.756778, 0.594035,
		0.935735, -0.065202, -0.346624,
		23.885015, 42.637199, 17.958929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477283, 43.347794, 18.020481>,  <23.230001, 42.682842, 18.201565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477283, 43.347794, 18.020481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.701424, 43.094101, 17.807407>,  <23.835907, 42.941883, 17.679564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.701424, 43.094101, 17.807407>,  <23.477283, 43.347794, 18.020481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.701424, 43.094101, 17.807407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041086, 0.621066, -0.782681,
		0.827236, 0.460462, 0.321957,
		0.560351, -0.634234, -0.532686,
		23.869530, 42.903831, 17.647602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.986620, 43.794788, 17.722277>,  <23.477283, 43.347794, 18.020481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.986620, 43.794788, 17.722277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996954, 43.457279, 17.507847>,  <24.003155, 43.254772, 17.379189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996954, 43.457279, 17.507847>,  <23.986620, 43.794788, 17.722277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.996954, 43.457279, 17.507847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092109, 0.531965, -0.841742,
		0.995414, 0.071125, -0.063976,
		0.025836, -0.843774, -0.536077,
		24.004705, 43.204147, 17.347023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456846, 43.947971, 17.142553>,  <23.986620, 43.794788, 17.722277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456846, 43.947971, 17.142553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233187, 43.634899, 17.033188>,  <24.098991, 43.447056, 16.967567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233187, 43.634899, 17.033188>,  <24.456846, 43.947971, 17.142553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.233187, 43.634899, 17.033188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096496, 0.388985, -0.916176,
		0.823432, -0.485896, -0.293027,
		-0.559149, -0.782685, -0.273415,
		24.065441, 43.400093, 16.951162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687832, 43.695068, 16.466446>,  <24.456846, 43.947971, 17.142553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687832, 43.695068, 16.466446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308565, 43.569637, 16.487049>,  <24.081005, 43.494377, 16.499411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308565, 43.569637, 16.487049>,  <24.687832, 43.695068, 16.466446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.308565, 43.569637, 16.487049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102878, 0.149537, -0.983389,
		0.300667, -0.937714, -0.174046,
		-0.948164, -0.313578, 0.051509,
		24.024117, 43.475563, 16.502502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722738, 43.097359, 16.049671>,  <24.687832, 43.695068, 16.466446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722738, 43.097359, 16.049671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374773, 43.294628, 16.047421>,  <24.165993, 43.412991, 16.046070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374773, 43.294628, 16.047421>,  <24.722738, 43.097359, 16.049671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.374773, 43.294628, 16.047421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082370, 0.134030, -0.987548,
		-0.486275, -0.859546, -0.157217,
		-0.869915, 0.493170, -0.005625,
		24.113798, 43.442577, 16.045732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.384583, 42.912964, 15.393123>,  <24.722738, 43.097359, 16.049671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.384583, 42.912964, 15.393123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205637, 43.242847, 15.531528>,  <24.098270, 43.440777, 15.614571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205637, 43.242847, 15.531528>,  <24.384583, 42.912964, 15.393123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205637, 43.242847, 15.531528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121353, 0.439282, -0.890115,
		-0.886081, -0.356215, -0.296599,
		-0.447363, 0.824707, 0.346012,
		24.071428, 43.490261, 15.635331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.976116, 43.057159, 14.885382>,  <24.384583, 42.912964, 15.393123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.976116, 43.057159, 14.885382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.055319, 43.399281, 15.076900>,  <24.102840, 43.604553, 15.191811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.055319, 43.399281, 15.076900>,  <23.976116, 43.057159, 14.885382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.055319, 43.399281, 15.076900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276632, 0.419849, -0.864408,
		-0.940355, 0.303608, -0.153472,
		0.198006, 0.855306, 0.478796,
		24.114721, 43.655872, 15.220538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.683857, 43.655716, 14.549135>,  <23.976116, 43.057159, 14.885382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.683857, 43.655716, 14.549135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.979130, 43.799297, 14.777604>,  <24.156294, 43.885445, 14.914685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.979130, 43.799297, 14.777604>,  <23.683857, 43.655716, 14.549135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.979130, 43.799297, 14.777604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414241, 0.427062, -0.803755,
		-0.532436, 0.829922, 0.166557,
		0.738184, 0.358953, 0.571171,
		24.200584, 43.906982, 14.948956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.219509, 44.138100, 14.442306>,  <23.683857, 43.655716, 14.549135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.219509, 44.138100, 14.442306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.989120, 44.363888, 14.678824>,  <22.850887, 44.499359, 14.820736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.989120, 44.363888, 14.678824>,  <23.219509, 44.138100, 14.442306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.989120, 44.363888, 14.678824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770490, -0.133176, -0.623385,
		-0.273137, -0.814639, 0.511625,
		-0.575970, 0.564471, 0.591296,
		22.816330, 44.533230, 14.856214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.569979, 43.806141, 14.552193>,  <23.219509, 44.138100, 14.442306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.569979, 43.806141, 14.552193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.505245, 44.199047, 14.590077>,  <22.466406, 44.434792, 14.612808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.505245, 44.199047, 14.590077>,  <22.569979, 43.806141, 14.552193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.505245, 44.199047, 14.590077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779350, -0.068346, -0.622850,
		-0.605329, -0.174610, 0.776587,
		-0.161832, 0.982263, 0.094711,
		22.456696, 44.493725, 14.618490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.829367, 43.991898, 14.618872>,  <22.569979, 43.806141, 14.552193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.829367, 43.991898, 14.618872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.994959, 44.321957, 14.465119>,  <22.094315, 44.519993, 14.372869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.994959, 44.321957, 14.465119>,  <21.829367, 43.991898, 14.618872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.994959, 44.321957, 14.465119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651588, -0.026251, -0.758118,
		-0.635652, 0.564303, 0.526791,
		0.413980, 0.825150, -0.384380,
		22.119152, 44.569500, 14.349806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874678, 43.438374, 15.106398>,  <21.829367, 43.991898, 14.618872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874678, 43.438374, 15.106398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.581833, 43.325222, 14.858531>,  <21.406126, 43.257332, 14.709811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.581833, 43.325222, 14.858531>,  <21.874678, 43.438374, 15.106398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.581833, 43.325222, 14.858531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473785, -0.442141, 0.761603,
		-0.489425, 0.851169, 0.189672,
		-0.732114, -0.282883, -0.619666,
		21.362198, 43.240356, 14.672631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.236271, 43.676311, 15.396839>,  <21.874678, 43.438374, 15.106398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.236271, 43.676311, 15.396839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218191, 43.331097, 15.195592>,  <21.207344, 43.123970, 15.074843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218191, 43.331097, 15.195592>,  <21.236271, 43.676311, 15.396839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218191, 43.331097, 15.195592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245117, -0.478656, 0.843093,
		-0.968439, 0.161429, -0.189910,
		-0.045198, -0.863035, -0.503119,
		21.204632, 43.072186, 15.044657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.648581, 43.329159, 15.607093>,  <21.236271, 43.676311, 15.396839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.648581, 43.329159, 15.607093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.858206, 43.049194, 15.412986>,  <20.983980, 42.881218, 15.296521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.858206, 43.049194, 15.412986>,  <20.648581, 43.329159, 15.607093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.858206, 43.049194, 15.412986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164796, -0.642344, 0.748490,
		-0.835584, -0.312285, -0.451970,
		0.524062, -0.699909, -0.485269,
		21.015425, 42.839222, 15.267406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.246246, 42.644646, 15.672840>,  <20.648581, 43.329159, 15.607093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.246246, 42.644646, 15.672840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.636076, 42.571938, 15.620433>,  <20.869974, 42.528313, 15.588988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.636076, 42.571938, 15.620433>,  <20.246246, 42.644646, 15.672840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.636076, 42.571938, 15.620433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005890, -0.605302, 0.795974,
		-0.223992, -0.774963, -0.590982,
		0.974573, -0.181772, -0.131018,
		20.928448, 42.517406, 15.581127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.431250, 41.817005, 15.545919>,  <20.246246, 42.644646, 15.672840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.431250, 41.817005, 15.545919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.762825, 41.984344, 15.694432>,  <20.961771, 42.084747, 15.783540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.762825, 41.984344, 15.694432>,  <20.431250, 41.817005, 15.545919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.762825, 41.984344, 15.694432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081218, -0.566725, 0.819894,
		0.553413, -0.709796, -0.435802,
		0.828938, 0.418345, 0.371281,
		21.011507, 42.109848, 15.805817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.867311, 41.320976, 15.661748>,  <20.431250, 41.817005, 15.545919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.867311, 41.320976, 15.661748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.029907, 41.595970, 15.902455>,  <21.127464, 41.760967, 16.046881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.029907, 41.595970, 15.902455>,  <20.867311, 41.320976, 15.661748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.029907, 41.595970, 15.902455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048208, -0.641583, 0.765538,
		0.912383, -0.340192, -0.227653,
		0.406488, 0.687489, 0.601769,
		21.151854, 41.802216, 16.082987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.399454, 40.996624, 16.045002>,  <20.867311, 41.320976, 15.661748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.399454, 40.996624, 16.045002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.322098, 41.321083, 16.265778>,  <21.275684, 41.515759, 16.398243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.322098, 41.321083, 16.265778>,  <21.399454, 40.996624, 16.045002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322098, 41.321083, 16.265778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049359, -0.553803, 0.831184,
		0.979880, 0.187986, 0.067062,
		-0.193390, 0.811150, 0.551939,
		21.264080, 41.564426, 16.431358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.936134, 41.070820, 16.551174>,  <21.399454, 40.996624, 16.045002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.936134, 41.070820, 16.551174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.622902, 41.276646, 16.690895>,  <21.434961, 41.400139, 16.774727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.622902, 41.276646, 16.690895>,  <21.936134, 41.070820, 16.551174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.622902, 41.276646, 16.690895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213920, -0.304520, 0.928173,
		0.583970, 0.801558, 0.128390,
		-0.783082, 0.514560, 0.349300,
		21.387978, 41.431015, 16.795685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169573, 41.459633, 17.075237>,  <21.936134, 41.070820, 16.551174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169573, 41.459633, 17.075237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775383, 41.421860, 17.131702>,  <21.538870, 41.399197, 17.165581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775383, 41.421860, 17.131702>,  <22.169573, 41.459633, 17.075237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.775383, 41.421860, 17.131702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157697, -0.200219, 0.966977,
		-0.063047, 0.975190, 0.212202,
		-0.985473, -0.094429, 0.141161,
		21.479740, 41.393532, 17.174051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.140627, 41.687252, 17.699848>,  <22.169573, 41.459633, 17.075237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.140627, 41.687252, 17.699848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793312, 41.495831, 17.647591>,  <21.584923, 41.380978, 17.616236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793312, 41.495831, 17.647591>,  <22.140627, 41.687252, 17.699848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.793312, 41.495831, 17.647591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047735, -0.342738, 0.938218,
		-0.493763, 0.808405, 0.320438,
		-0.868286, -0.478553, -0.130642,
		21.532825, 41.352264, 17.608398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779875, 41.844845, 18.347933>,  <22.140627, 41.687252, 17.699848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779875, 41.844845, 18.347933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.646872, 41.510689, 18.172863>,  <21.567070, 41.310196, 18.067822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.646872, 41.510689, 18.172863>,  <21.779875, 41.844845, 18.347933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.646872, 41.510689, 18.172863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040704, -0.476359, 0.878308,
		-0.942222, 0.274228, 0.192396,
		-0.332506, -0.835393, -0.437674,
		21.547119, 41.260071, 18.041561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.325558, 41.599888, 18.849131>,  <21.779875, 41.844845, 18.347933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.325558, 41.599888, 18.849131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405045, 41.281994, 18.619728>,  <21.452736, 41.091259, 18.482086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.405045, 41.281994, 18.619728>,  <21.325558, 41.599888, 18.849131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405045, 41.281994, 18.619728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120557, -0.560912, 0.819050,
		-0.972614, -0.231898, -0.015651,
		0.198715, -0.794733, -0.573508,
		21.464659, 41.043575, 18.447676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.874260, 41.125946, 19.096092>,  <21.325558, 41.599888, 18.849131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.874260, 41.125946, 19.096092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.147846, 40.903774, 18.906910>,  <21.311998, 40.770470, 18.793402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.147846, 40.903774, 18.906910>,  <20.874260, 41.125946, 19.096092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.147846, 40.903774, 18.906910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128612, -0.729966, 0.671274,
		-0.718074, -0.398312, -0.570716,
		0.683980, -0.555425, -0.472942,
		21.353035, 40.737144, 18.765024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.588203, 40.304520, 18.948172>,  <20.874260, 41.125946, 19.096092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.588203, 40.304520, 18.948172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.986244, 40.339931, 18.965786>,  <21.225069, 40.361179, 18.976355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.986244, 40.339931, 18.965786>,  <20.588203, 40.304520, 18.948172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.986244, 40.339931, 18.965786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035724, -0.737189, 0.674742,
		0.092194, -0.669863, -0.736739,
		0.995100, 0.088526, 0.044034,
		21.284775, 40.366489, 18.978996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.701908, 39.731094, 19.283533>,  <20.588203, 40.304520, 18.948172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.701908, 39.731094, 19.283533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078705, 39.864498, 19.268421>,  <21.304783, 39.944542, 19.259354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078705, 39.864498, 19.268421>,  <20.701908, 39.731094, 19.283533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.078705, 39.864498, 19.268421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285622, -0.737392, 0.612105,
		0.176284, -0.587388, -0.789873,
		0.941990, 0.333509, -0.037780,
		21.361301, 39.964550, 19.257088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.179136, 39.104134, 19.257870>,  <20.701908, 39.731094, 19.283533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.179136, 39.104134, 19.257870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.377954, 39.413216, 19.415791>,  <21.497246, 39.598667, 19.510544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.377954, 39.413216, 19.415791>,  <21.179136, 39.104134, 19.257870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.377954, 39.413216, 19.415791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357810, -0.597018, 0.718012,
		0.790518, -0.215620, -0.573227,
		0.497045, 0.772707, 0.394803,
		21.527069, 39.645027, 19.534231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.798351, 38.860996, 19.329073>,  <21.179136, 39.104134, 19.257870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.798351, 38.860996, 19.329073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768314, 39.172798, 19.577824>,  <21.750292, 39.359879, 19.727074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768314, 39.172798, 19.577824>,  <21.798351, 38.860996, 19.329073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.768314, 39.172798, 19.577824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302793, -0.576369, 0.759023,
		0.950094, 0.245296, -0.192749,
		-0.075091, 0.779505, 0.621878,
		21.745787, 39.406651, 19.764387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.401115, 38.829407, 19.634069>,  <21.798351, 38.860996, 19.329073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.401115, 38.829407, 19.634069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143555, 39.021053, 19.872677>,  <21.989017, 39.136044, 20.015841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143555, 39.021053, 19.872677>,  <22.401115, 38.829407, 19.634069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143555, 39.021053, 19.872677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218508, -0.632023, 0.743506,
		0.733241, 0.609090, 0.302271,
		-0.643904, 0.479120, 0.596516,
		21.950384, 39.164791, 20.051632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.793629, 39.007641, 20.259623>,  <22.401115, 38.829407, 19.634069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.793629, 39.007641, 20.259623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417400, 39.056313, 20.386444>,  <22.191664, 39.085514, 20.462538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417400, 39.056313, 20.386444>,  <22.793629, 39.007641, 20.259623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.417400, 39.056313, 20.386444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259490, -0.344771, 0.902108,
		0.219078, 0.930767, 0.292707,
		-0.940569, 0.121678, 0.317056,
		22.135229, 39.092815, 20.481562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.926275, 39.214680, 20.917063>,  <22.793629, 39.007641, 20.259623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.926275, 39.214680, 20.917063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.539825, 39.111500, 20.913811>,  <22.307955, 39.049591, 20.911860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.539825, 39.111500, 20.913811>,  <22.926275, 39.214680, 20.917063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.539825, 39.111500, 20.913811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102126, -0.411052, 0.905873,
		-0.237010, 0.874357, 0.423471,
		-0.966125, -0.257948, -0.008129,
		22.249989, 39.034115, 20.911371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.649059, 39.434685, 21.513779>,  <22.926275, 39.214680, 20.917063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.649059, 39.434685, 21.513779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402521, 39.142109, 21.397083>,  <22.254599, 38.966564, 21.327066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.402521, 39.142109, 21.397083>,  <22.649059, 39.434685, 21.513779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402521, 39.142109, 21.397083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095177, -0.436948, 0.894437,
		-0.781704, 0.523515, 0.338927,
		-0.616345, -0.731443, -0.291737,
		22.217617, 38.922676, 21.309563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029142, 39.324791, 22.046753>,  <22.649059, 39.434685, 21.513779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029142, 39.324791, 22.046753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053074, 38.982510, 21.841152>,  <22.067432, 38.777142, 21.717793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053074, 38.982510, 21.841152>,  <22.029142, 39.324791, 22.046753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.053074, 38.982510, 21.841152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252986, -0.511110, 0.821441,
		-0.965618, 0.080887, -0.247060,
		0.059831, -0.855701, -0.514000,
		22.071024, 38.725800, 21.686953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.627327, 38.833946, 22.446070>,  <22.029142, 39.324791, 22.046753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.627327, 38.833946, 22.446070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.858765, 38.622620, 22.197517>,  <21.997627, 38.495823, 22.048386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.858765, 38.622620, 22.197517>,  <21.627327, 38.833946, 22.446070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.858765, 38.622620, 22.197517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097014, -0.711868, 0.695581,
		-0.809825, -0.462742, -0.360630,
		0.578595, -0.528312, -0.621380,
		22.032343, 38.464127, 22.011103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.296461, 38.113140, 22.329866>,  <21.627327, 38.833946, 22.446070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.296461, 38.113140, 22.329866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682449, 38.054562, 22.242794>,  <21.914042, 38.019413, 22.190552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682449, 38.054562, 22.242794>,  <21.296461, 38.113140, 22.329866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.682449, 38.054562, 22.242794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040713, -0.903248, 0.427183,
		-0.259177, -0.403357, -0.877570,
		0.964971, -0.146445, -0.217679,
		21.971941, 38.010628, 22.177490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.690207, 37.922878, 22.762968>,  <21.296461, 38.113140, 22.329866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.690207, 37.922878, 22.762968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.633057, 37.642433, 23.042404>,  <20.598766, 37.474167, 23.210066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.633057, 37.642433, 23.042404>,  <20.690207, 37.922878, 22.762968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.633057, 37.642433, 23.042404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985600, 0.165285, -0.035692,
		-0.090442, -0.693629, -0.714632,
		-0.142875, -0.701113, 0.698589,
		20.590195, 37.432098, 23.251982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.155500, 37.468845, 22.627420>,  <20.690207, 37.922878, 22.762968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.155500, 37.468845, 22.627420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.163366, 37.456619, 23.027157>,  <20.168087, 37.449284, 23.266998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.163366, 37.456619, 23.027157>,  <20.155500, 37.468845, 22.627420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163366, 37.456619, 23.027157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951328, 0.306894, 0.028107,
		-0.307551, -0.951252, -0.023053,
		0.019662, -0.030575, 0.999339,
		20.169266, 37.447449, 23.326958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.496777, 37.214294, 22.832348>,  <20.155500, 37.468845, 22.627420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.496777, 37.214294, 22.832348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628914, 37.401192, 23.160385>,  <19.708197, 37.513332, 23.357208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628914, 37.401192, 23.160385>,  <19.496777, 37.214294, 22.832348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.628914, 37.401192, 23.160385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924076, 0.337074, 0.180181,
		-0.192243, -0.817350, 0.543122,
		0.330343, 0.467247, 0.820094,
		19.728018, 37.541367, 23.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998232, 36.982422, 23.338102>,  <19.496777, 37.214294, 22.832348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.998232, 36.982422, 23.338102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171700, 37.324547, 23.451504>,  <19.275780, 37.529819, 23.519545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171700, 37.324547, 23.451504>,  <18.998232, 36.982422, 23.338102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171700, 37.324547, 23.451504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887884, 0.459254, -0.027355,
		-0.153597, -0.239856, 0.958581,
		0.433671, 0.855310, 0.283504,
		19.301802, 37.581139, 23.536554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411623, 37.522438, 23.250835>,  <18.998232, 36.982422, 23.338102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411623, 37.522438, 23.250835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172375, 37.495312, 22.931423>,  <18.028826, 37.479034, 22.739775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172375, 37.495312, 22.931423>,  <18.411623, 37.522438, 23.250835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172375, 37.495312, 22.931423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102075, 0.981851, -0.159842,
		0.794879, -0.177115, -0.580342,
		-0.598120, -0.067816, -0.798532,
		17.992939, 37.474968, 22.691864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.950949, 28.702490, 30.219982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.338961, 28.793781, 30.253345>,  <29.571768, 28.848557, 30.273363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.338961, 28.793781, 30.253345>,  <28.950949, 28.702490, 30.219982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338961, 28.793781, 30.253345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000685, 0.345828, -0.938298,
		-0.242993, 0.910118, 0.335619,
		0.970028, 0.228229, 0.083410,
		29.629969, 28.862249, 30.278368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982824, 29.280947, 29.837622>,  <28.950949, 28.702490, 30.219982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982824, 29.280947, 29.837622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.362183, 29.155041, 29.852940>,  <29.589798, 29.079498, 29.862131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.362183, 29.155041, 29.852940>,  <28.982824, 29.280947, 29.837622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362183, 29.155041, 29.852940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115499, 0.230452, -0.966205,
		0.295301, 0.920769, 0.254915,
		0.948397, -0.314764, 0.038295,
		29.646702, 29.060612, 29.864428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282621, 29.763519, 29.424576>,  <28.982824, 29.280947, 29.837622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282621, 29.763519, 29.424576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.567364, 29.485241, 29.463078>,  <29.738209, 29.318274, 29.486177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.567364, 29.485241, 29.463078>,  <29.282621, 29.763519, 29.424576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567364, 29.485241, 29.463078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291568, 0.168057, -0.941672,
		0.638942, 0.698400, 0.322475,
		0.711858, -0.695697, 0.096252,
		29.780922, 29.276531, 29.491953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013268, 30.073170, 29.375929>,  <29.282621, 29.763519, 29.424576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013268, 30.073170, 29.375929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.998997, 29.687397, 29.271160>,  <29.990435, 29.455935, 29.208300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.998997, 29.687397, 29.271160>,  <30.013268, 30.073170, 29.375929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998997, 29.687397, 29.271160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326075, 0.236509, -0.915280,
		0.944670, -0.118060, 0.306039,
		-0.035677, -0.964430, -0.261920,
		29.988293, 29.398067, 29.192585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507639, 30.114210, 28.883827>,  <30.013268, 30.073170, 29.375929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507639, 30.114210, 28.883827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321535, 29.767120, 28.813869>,  <30.209873, 29.558867, 28.771894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321535, 29.767120, 28.813869>,  <30.507639, 30.114210, 28.883827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321535, 29.767120, 28.813869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273526, 0.046977, -0.960717,
		0.841852, -0.494823, 0.215488,
		-0.465262, -0.867723, -0.174895,
		30.181957, 29.506804, 28.761400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004358, 29.614391, 28.631723>,  <30.507639, 30.114210, 28.883827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004358, 29.614391, 28.631723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.644917, 29.478298, 28.520908>,  <30.429251, 29.396643, 28.454420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.644917, 29.478298, 28.520908>,  <31.004358, 29.614391, 28.631723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644917, 29.478298, 28.520908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268033, 0.074217, -0.960547,
		0.347373, -0.937407, 0.024503,
		-0.898605, -0.340236, -0.277037,
		30.375336, 29.376228, 28.437798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145380, 29.059530, 28.171289>,  <31.004358, 29.614391, 28.631723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145380, 29.059530, 28.171289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.770914, 29.180840, 28.100163>,  <30.546234, 29.253626, 28.057486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.770914, 29.180840, 28.100163>,  <31.145380, 29.059530, 28.171289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770914, 29.180840, 28.100163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222061, 0.117981, -0.967868,
		-0.272549, -0.945572, -0.177795,
		-0.936166, 0.303273, -0.177819,
		30.490065, 29.271822, 28.046816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899858, 28.535414, 27.720762>,  <31.145380, 29.059530, 28.171289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899858, 28.535414, 27.720762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.681179, 28.866592, 27.670761>,  <30.549971, 29.065300, 27.640760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.681179, 28.866592, 27.670761>,  <30.899858, 28.535414, 27.720762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681179, 28.866592, 27.670761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030029, -0.129803, -0.991085,
		-0.836789, -0.545581, 0.046101,
		-0.546701, 0.827945, -0.125001,
		30.517168, 29.114975, 27.633261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625309, 28.510525, 27.110788>,  <30.899858, 28.535414, 27.720762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625309, 28.510525, 27.110788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.525570, 28.896130, 27.147671>,  <30.465727, 29.127493, 27.169800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.525570, 28.896130, 27.147671>,  <30.625309, 28.510525, 27.110788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525570, 28.896130, 27.147671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066513, 0.112037, -0.991475,
		-0.966127, -0.241091, -0.092056,
		-0.249350, 0.964014, 0.092207,
		30.450766, 29.185333, 27.175333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170313, 28.676691, 26.553673>,  <30.625309, 28.510525, 27.110788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170313, 28.676691, 26.553673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321348, 29.028637, 26.669098>,  <30.411968, 29.239805, 26.738352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.321348, 29.028637, 26.669098>,  <30.170313, 28.676691, 26.553673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321348, 29.028637, 26.669098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001348, 0.312152, -0.950031,
		-0.925973, 0.358330, 0.119051,
		0.377587, 0.879864, 0.288561,
		30.434624, 29.292597, 26.755667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702909, 29.180372, 26.283306>,  <30.170313, 28.676691, 26.553673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702909, 29.180372, 26.283306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.015442, 29.421780, 26.346912>,  <30.202961, 29.566624, 26.385077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.015442, 29.421780, 26.346912>,  <29.702909, 29.180372, 26.283306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015442, 29.421780, 26.346912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251540, 0.537688, -0.804748,
		-0.571182, 0.588776, 0.571921,
		0.781331, 0.603519, 0.159018,
		30.249842, 29.602835, 26.394617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524965, 29.912769, 26.164173>,  <29.702909, 29.180372, 26.283306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524965, 29.912769, 26.164173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.923773, 29.925346, 26.135990>,  <30.163057, 29.932892, 26.119080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.923773, 29.925346, 26.135990>,  <29.524965, 29.912769, 26.164173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923773, 29.925346, 26.135990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068553, 0.780053, -0.621947,
		0.035406, 0.624923, 0.779883,
		0.997019, 0.031443, -0.070459,
		30.222879, 29.934780, 26.114853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669088, 30.539772, 26.304012>,  <29.524965, 29.912769, 26.164173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669088, 30.539772, 26.304012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.969948, 30.393875, 26.084473>,  <30.150463, 30.306337, 25.952749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.969948, 30.393875, 26.084473>,  <29.669088, 30.539772, 26.304012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969948, 30.393875, 26.084473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054554, 0.795538, -0.603443,
		0.656732, 0.483820, 0.578464,
		0.752148, -0.364743, -0.548850,
		30.195593, 30.284452, 25.919817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159857, 31.147905, 26.169052>,  <29.669088, 30.539772, 26.304012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159857, 31.147905, 26.169052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.234835, 30.867672, 25.893646>,  <30.279821, 30.699532, 25.728403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.234835, 30.867672, 25.893646>,  <30.159857, 31.147905, 26.169052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234835, 30.867672, 25.893646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081257, 0.687475, -0.721648,
		0.978909, 0.191214, 0.071936,
		0.187443, -0.700582, -0.688513,
		30.291067, 30.657497, 25.687092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773092, 31.447685, 25.796219>,  <30.159857, 31.147905, 26.169052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773092, 31.447685, 25.796219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602230, 31.170750, 25.563599>,  <30.499712, 31.004587, 25.424026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602230, 31.170750, 25.563599>,  <30.773092, 31.447685, 25.796219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602230, 31.170750, 25.563599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139592, 0.685967, -0.714117,
		0.893337, -0.223860, -0.389661,
		-0.427157, -0.692340, -0.581551,
		30.474083, 30.963047, 25.389133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138666, 31.550304, 25.209536>,  <30.773092, 31.447685, 25.796219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138666, 31.550304, 25.209536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.789850, 31.375252, 25.121876>,  <30.580561, 31.270220, 25.069281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.789850, 31.375252, 25.121876>,  <31.138666, 31.550304, 25.209536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789850, 31.375252, 25.121876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189651, 0.714918, -0.672997,
		0.451196, -0.545319, -0.706434,
		-0.872041, -0.437630, -0.219147,
		30.528238, 31.243963, 25.056131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993946, 31.916790, 24.592487>,  <31.138666, 31.550304, 25.209536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993946, 31.916790, 24.592487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.645529, 31.726826, 24.642677>,  <30.436478, 31.612846, 24.672791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.645529, 31.726826, 24.642677>,  <30.993946, 31.916790, 24.592487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645529, 31.726826, 24.642677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443936, 0.651768, -0.614915,
		0.210250, -0.591320, -0.778548,
		-0.871043, -0.474911, 0.125474,
		30.384216, 31.584352, 24.680319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702248, 31.834866, 23.864700>,  <30.993946, 31.916790, 24.592487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702248, 31.834866, 23.864700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.388445, 31.797295, 24.109886>,  <30.200163, 31.774752, 24.256998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.388445, 31.797295, 24.109886>,  <30.702248, 31.834866, 23.864700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388445, 31.797295, 24.109886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488757, 0.702014, -0.517970,
		-0.381658, -0.705942, -0.596643,
		-0.784508, -0.093926, 0.612963,
		30.153091, 31.769117, 24.293776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187120, 31.977612, 23.494263>,  <30.702248, 31.834866, 23.864700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187120, 31.977612, 23.494263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.050383, 32.050274, 23.863075>,  <29.968340, 32.093872, 24.084362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.050383, 32.050274, 23.863075>,  <30.187120, 31.977612, 23.494263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050383, 32.050274, 23.863075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334446, 0.893388, -0.300007,
		-0.878230, -0.410926, -0.244648,
		-0.341846, 0.181654, 0.922032,
		29.947828, 32.104771, 24.139685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552301, 32.267056, 23.339390>,  <30.187120, 31.977612, 23.494263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552301, 32.267056, 23.339390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.681896, 32.409252, 23.690083>,  <29.759653, 32.494568, 23.900497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.681896, 32.409252, 23.690083>,  <29.552301, 32.267056, 23.339390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681896, 32.409252, 23.690083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077538, 0.933579, -0.349884,
		-0.942878, 0.045379, 0.330033,
		0.323989, 0.355488, 0.876732,
		29.779093, 32.515900, 23.953102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077452, 32.843525, 23.459961>,  <29.552301, 32.267056, 23.339390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077452, 32.843525, 23.459961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.389372, 32.914478, 23.700111>,  <29.576523, 32.957050, 23.844202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.389372, 32.914478, 23.700111>,  <29.077452, 32.843525, 23.459961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389372, 32.914478, 23.700111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104986, 0.908383, -0.404744,
		-0.617165, 0.378650, 0.689733,
		0.779798, 0.177381, 0.600375,
		29.623312, 32.967693, 23.880224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074106, 33.510860, 23.815443>,  <29.077452, 32.843525, 23.459961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074106, 33.510860, 23.815443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.464285, 33.423912, 23.801289>,  <29.698393, 33.371742, 23.792795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.464285, 33.423912, 23.801289>,  <29.074106, 33.510860, 23.815443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464285, 33.423912, 23.801289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188017, 0.905595, -0.380194,
		0.114689, 0.364206, 0.924230,
		0.975446, -0.217375, -0.035385,
		29.756918, 33.358700, 23.790672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525358, 33.611229, 23.197718>,  <29.074106, 33.510860, 23.815443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525358, 33.611229, 23.197718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.126719, 33.579327, 23.206051>,  <27.887535, 33.560184, 23.211052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.126719, 33.579327, 23.206051>,  <28.525358, 33.611229, 23.197718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126719, 33.579327, 23.206051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045442, -0.320695, 0.946092,
		-0.068772, 0.943819, 0.323228,
		-0.996597, -0.079752, 0.020834,
		27.827740, 33.555401, 23.212301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288700, 33.860798, 23.786264>,  <28.525358, 33.611229, 23.197718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288700, 33.860798, 23.786264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.991539, 33.614712, 23.680733>,  <27.813242, 33.467060, 23.617414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.991539, 33.614712, 23.680733>,  <28.288700, 33.860798, 23.786264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991539, 33.614712, 23.680733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023951, -0.418303, 0.907992,
		-0.668972, 0.668230, 0.325493,
		-0.742902, -0.615216, -0.263828,
		27.768669, 33.430145, 23.601583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903519, 33.818314, 24.371109>,  <28.288700, 33.860798, 23.786264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903519, 33.818314, 24.371109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.797146, 33.504333, 24.147274>,  <27.733322, 33.315945, 24.012972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.797146, 33.504333, 24.147274>,  <27.903519, 33.818314, 24.371109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797146, 33.504333, 24.147274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043739, -0.570069, 0.820432,
		-0.962999, 0.242655, 0.117267,
		-0.265932, -0.784946, -0.559589,
		27.717367, 33.268848, 23.979397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320879, 33.542778, 24.747219>,  <27.903519, 33.818314, 24.371109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320879, 33.542778, 24.747219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.443493, 33.253853, 24.499252>,  <27.517061, 33.080498, 24.350473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.443493, 33.253853, 24.499252>,  <27.320879, 33.542778, 24.747219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443493, 33.253853, 24.499252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238611, -0.688784, 0.684574,
		-0.921468, -0.061926, -0.383488,
		0.306533, -0.722317, -0.619916,
		27.535454, 33.037159, 24.313278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800127, 33.046574, 24.762978>,  <27.320879, 33.542778, 24.747219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800127, 33.046574, 24.762978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.123491, 32.842785, 24.645061>,  <27.317511, 32.720512, 24.574312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.123491, 32.842785, 24.645061>,  <26.800127, 33.046574, 24.762978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123491, 32.842785, 24.645061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200661, -0.709359, 0.675681,
		-0.553356, -0.487077, -0.675688,
		0.808414, -0.509476, -0.294791,
		27.366014, 32.689941, 24.556623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673061, 32.302483, 24.614132>,  <26.800127, 33.046574, 24.762978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673061, 32.302483, 24.614132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.058096, 32.348492, 24.712273>,  <27.289116, 32.376099, 24.771156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.058096, 32.348492, 24.712273>,  <26.673061, 32.302483, 24.614132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058096, 32.348492, 24.712273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122660, -0.622405, 0.773024,
		0.241626, -0.774197, -0.585009,
		0.962586, 0.115025, 0.245352,
		27.346872, 32.382999, 24.785879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913828, 31.565081, 24.714462>,  <26.673061, 32.302483, 24.614132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913828, 31.565081, 24.714462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.203756, 31.765774, 24.903313>,  <27.377714, 31.886189, 25.016623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.203756, 31.765774, 24.903313>,  <26.913828, 31.565081, 24.714462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203756, 31.765774, 24.903313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013479, -0.674835, 0.737845,
		0.688806, -0.541169, -0.482372,
		0.724820, 0.501730, 0.472125,
		27.421202, 31.916292, 25.044950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444426, 30.985743, 24.994822>,  <26.913828, 31.565081, 24.714462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444426, 30.985743, 24.994822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.545977, 31.321331, 25.187351>,  <27.606907, 31.522684, 25.302870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.545977, 31.321331, 25.187351>,  <27.444426, 30.985743, 24.994822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545977, 31.321331, 25.187351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205757, -0.533083, 0.820662,
		0.945098, -0.109311, -0.307962,
		0.253877, 0.838971, 0.481324,
		27.622139, 31.573023, 25.331749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124599, 30.887039, 25.361643>,  <27.444426, 30.985743, 24.994822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124599, 30.887039, 25.361643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.926453, 31.190804, 25.530357>,  <27.807566, 31.373062, 25.631586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.926453, 31.190804, 25.530357>,  <28.124599, 30.887039, 25.361643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926453, 31.190804, 25.530357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089270, -0.438476, 0.894299,
		0.864085, 0.480658, 0.149413,
		-0.495366, 0.759412, 0.421789,
		27.777843, 31.418627, 25.656895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431040, 30.964748, 26.102625>,  <28.124599, 30.887039, 25.361643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431040, 30.964748, 26.102625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.119732, 31.215862, 26.108059>,  <27.932947, 31.366531, 26.111319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.119732, 31.215862, 26.108059>,  <28.431040, 30.964748, 26.102625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119732, 31.215862, 26.108059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068428, -0.106297, 0.991977,
		0.624192, 0.771095, 0.125685,
		-0.778268, 0.627785, 0.013585,
		27.886251, 31.404198, 26.112135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635948, 31.513754, 26.689949>,  <28.431040, 30.964748, 26.102625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635948, 31.513754, 26.689949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.244537, 31.535332, 26.610374>,  <28.009691, 31.548279, 26.562630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.244537, 31.535332, 26.610374>,  <28.635948, 31.513754, 26.689949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244537, 31.535332, 26.610374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197646, 0.028308, 0.979865,
		0.058490, 0.998143, -0.017038,
		-0.978527, 0.053945, -0.198935,
		27.950979, 31.551516, 26.550694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336996, 32.013535, 27.102013>,  <28.635948, 31.513754, 26.689949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336996, 32.013535, 27.102013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.039572, 31.765289, 27.002449>,  <27.861118, 31.616341, 26.942711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.039572, 31.765289, 27.002449>,  <28.336996, 32.013535, 27.102013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039572, 31.765289, 27.002449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222017, -0.121989, 0.967381,
		-0.630737, 0.774567, -0.047082,
		-0.743559, -0.620616, -0.248910,
		27.816504, 31.579105, 26.927776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833118, 32.183575, 27.507154>,  <28.336996, 32.013535, 27.102013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833118, 32.183575, 27.507154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.719440, 31.809601, 27.422180>,  <27.651234, 31.585217, 27.371197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.719440, 31.809601, 27.422180>,  <27.833118, 32.183575, 27.507154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719440, 31.809601, 27.422180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227704, -0.149413, 0.962199,
		-0.931335, 0.321823, -0.170427,
		-0.284193, -0.934936, -0.212435,
		27.634182, 31.529119, 27.358450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375765, 32.103497, 28.038429>,  <27.833118, 32.183575, 27.507154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375765, 32.103497, 28.038429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.459761, 31.732700, 27.914116>,  <27.510159, 31.510221, 27.839529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.459761, 31.732700, 27.914116>,  <27.375765, 32.103497, 28.038429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459761, 31.732700, 27.914116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039451, -0.309577, 0.950055,
		-0.976907, -0.211762, -0.028437,
		0.209989, -0.926995, -0.310782,
		27.522757, 31.454601, 27.820881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053663, 31.789886, 28.509422>,  <27.375765, 32.103497, 28.038429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053663, 31.789886, 28.509422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.261589, 31.490849, 28.344067>,  <27.386345, 31.311424, 28.244852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.261589, 31.490849, 28.344067>,  <27.053663, 31.789886, 28.509422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261589, 31.490849, 28.344067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082169, -0.437907, 0.895257,
		-0.850318, -0.499336, -0.166201,
		0.519814, -0.747597, -0.413390,
		27.417534, 31.266569, 28.220049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725079, 31.108278, 28.721830>,  <27.053663, 31.789886, 28.509422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725079, 31.108278, 28.721830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.108492, 31.042614, 28.628651>,  <27.338539, 31.003216, 28.572742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.108492, 31.042614, 28.628651>,  <26.725079, 31.108278, 28.721830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108492, 31.042614, 28.628651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119510, -0.510513, 0.851524,
		-0.258709, -0.844054, -0.469725,
		0.958534, -0.164160, -0.232947,
		27.396051, 30.993366, 28.558767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776358, 30.440605, 28.876806>,  <26.725079, 31.108278, 28.721830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776358, 30.440605, 28.876806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.144770, 30.595413, 28.894348>,  <27.365816, 30.688297, 28.904873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.144770, 30.595413, 28.894348>,  <26.776358, 30.440605, 28.876806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144770, 30.595413, 28.894348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120762, -0.390794, 0.912522,
		0.370302, -0.835163, -0.406670,
		0.921028, 0.387019, 0.043856,
		27.421078, 30.711519, 28.907505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112049, 29.899143, 28.909174>,  <26.776358, 30.440605, 28.876806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112049, 29.899143, 28.909174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.348898, 30.194496, 29.038280>,  <27.491007, 30.371708, 29.115744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.348898, 30.194496, 29.038280>,  <27.112049, 29.899143, 28.909174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348898, 30.194496, 29.038280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181097, -0.512212, 0.839549,
		0.785234, -0.438666, -0.437012,
		0.592124, 0.738384, 0.322766,
		27.526535, 30.416012, 29.135111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.556135, 29.478502, 29.324959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.620392, 29.857433, 29.435787>,  <27.658945, 30.084791, 29.502283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.620392, 29.857433, 29.435787>,  <27.556135, 29.478502, 29.324959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620392, 29.857433, 29.435787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031416, -0.285481, 0.957870,
		0.986513, -0.145168, -0.075621,
		0.160640, 0.947326, 0.277070,
		27.668585, 30.141632, 29.518908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124966, 29.406466, 29.691866>,  <27.556135, 29.478502, 29.324959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124966, 29.406466, 29.691866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.957109, 29.737511, 29.840973>,  <27.856396, 29.936138, 29.930437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.957109, 29.737511, 29.840973>,  <28.124966, 29.406466, 29.691866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957109, 29.737511, 29.840973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171542, -0.330965, 0.927920,
		0.891333, 0.453338, -0.003084,
		-0.419641, 0.827615, 0.372766,
		27.831217, 29.985796, 29.952803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507654, 29.562056, 30.284994>,  <28.124966, 29.406466, 29.691866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507654, 29.562056, 30.284994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.151680, 29.742687, 30.310577>,  <27.938095, 29.851067, 30.325928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.151680, 29.742687, 30.310577>,  <28.507654, 29.562056, 30.284994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151680, 29.742687, 30.310577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023439, -0.185335, 0.982396,
		0.455486, 0.872769, 0.175520,
		-0.889934, 0.451581, 0.063960,
		27.884699, 29.878162, 30.329765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562424, 30.057112, 30.774565>,  <28.507654, 29.562056, 30.284994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562424, 30.057112, 30.774565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.168541, 29.988148, 30.764565>,  <27.932211, 29.946770, 30.758564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.168541, 29.988148, 30.764565>,  <28.562424, 30.057112, 30.774565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168541, 29.988148, 30.764565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002094, -0.131782, 0.991277,
		-0.174201, 0.976170, 0.129405,
		-0.984708, -0.172410, -0.025001,
		27.873129, 29.936424, 30.757065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154043, 30.427444, 31.257935>,  <28.562424, 30.057112, 30.774565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154043, 30.427444, 31.257935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.910299, 30.114811, 31.204556>,  <27.764053, 29.927231, 31.172527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.910299, 30.114811, 31.204556>,  <28.154043, 30.427444, 31.257935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910299, 30.114811, 31.204556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128944, -0.263746, 0.955935,
		-0.782341, 0.565299, 0.261496,
		-0.609357, -0.781585, -0.133447,
		27.727491, 29.880335, 31.164522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653242, 30.352106, 31.855286>,  <28.154043, 30.427444, 31.257935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653242, 30.352106, 31.855286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.650579, 29.999912, 31.665676>,  <27.648981, 29.788595, 31.551910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.650579, 29.999912, 31.665676>,  <27.653242, 30.352106, 31.855286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650579, 29.999912, 31.665676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008523, -0.473968, 0.880501,
		-0.999942, 0.009902, -0.004349,
		-0.006657, -0.880486, -0.474025,
		27.648582, 29.735765, 31.523468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269932, 29.961754, 32.336109>,  <27.653242, 30.352106, 31.855286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269932, 29.961754, 32.336109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.407370, 29.700420, 32.066265>,  <27.489832, 29.543621, 31.904358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.407370, 29.700420, 32.066265>,  <27.269932, 29.961754, 32.336109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407370, 29.700420, 32.066265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025849, -0.711494, 0.702217,
		-0.938762, -0.258717, -0.227578,
		0.343596, -0.653331, -0.674611,
		27.510448, 29.504421, 31.863882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803604, 29.451151, 32.410595>,  <27.269932, 29.961754, 32.336109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803604, 29.451151, 32.410595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.135727, 29.294315, 32.252174>,  <27.335001, 29.200214, 32.157124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.135727, 29.294315, 32.252174>,  <26.803604, 29.451151, 32.410595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135727, 29.294315, 32.252174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002102, -0.708442, 0.705766,
		-0.557299, -0.586836, -0.587402,
		0.830309, -0.392088, -0.396048,
		27.384819, 29.176689, 32.133362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691662, 28.770664, 32.415558>,  <26.803604, 29.451151, 32.410595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691662, 28.770664, 32.415558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.088974, 28.815365, 32.403488>,  <27.327360, 28.842186, 32.396248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.088974, 28.815365, 32.403488>,  <26.691662, 28.770664, 32.415558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088974, 28.815365, 32.403488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087640, -0.555749, 0.826718,
		0.075618, -0.823805, -0.561807,
		0.993278, 0.111751, -0.030174,
		27.386957, 28.848890, 32.394436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901127, 28.154966, 32.524845>,  <26.691662, 28.770664, 32.415558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901127, 28.154966, 32.524845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.223061, 28.375839, 32.611877>,  <27.416220, 28.508362, 32.664097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.223061, 28.375839, 32.611877>,  <26.901127, 28.154966, 32.524845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223061, 28.375839, 32.611877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192543, -0.589696, 0.784338,
		0.561401, -0.589368, -0.580926,
		0.804833, 0.552181, 0.217578,
		27.464510, 28.541494, 32.677151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426474, 27.691223, 32.806072>,  <26.901127, 28.154966, 32.524845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426474, 27.691223, 32.806072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.526239, 28.050526, 32.950809>,  <27.586100, 28.266108, 33.037651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.526239, 28.050526, 32.950809>,  <27.426474, 27.691223, 32.806072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526239, 28.050526, 32.950809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084394, -0.352070, 0.932161,
		0.964712, -0.263033, -0.012005,
		0.249416, 0.898254, 0.361844,
		27.601065, 28.320002, 33.059364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935902, 27.553364, 33.372345>,  <27.426474, 27.691223, 32.806072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935902, 27.553364, 33.372345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.834909, 27.936340, 33.428288>,  <27.774313, 28.166126, 33.461853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.834909, 27.936340, 33.428288>,  <27.935902, 27.553364, 33.372345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834909, 27.936340, 33.428288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071182, -0.125772, 0.989502,
		0.964980, 0.259787, -0.036397,
		-0.252483, 0.957440, 0.139859,
		27.759165, 28.223572, 33.470245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383846, 27.761404, 33.900112>,  <27.935902, 27.553364, 33.372345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383846, 27.761404, 33.900112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.099417, 28.039318, 33.943279>,  <27.928759, 28.206066, 33.969177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.099417, 28.039318, 33.943279>,  <28.383846, 27.761404, 33.900112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099417, 28.039318, 33.943279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064507, -0.088368, 0.993997,
		0.700151, 0.713767, 0.018018,
		-0.711075, 0.694786, 0.107914,
		27.886095, 28.247753, 33.975655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662052, 28.252947, 34.365967>,  <28.383846, 27.761404, 33.900112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662052, 28.252947, 34.365967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.262619, 28.273205, 34.359425>,  <28.022959, 28.285358, 34.355499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.262619, 28.273205, 34.359425>,  <28.662052, 28.252947, 34.365967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262619, 28.273205, 34.359425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017061, -0.013576, 0.999762,
		0.050409, 0.998625, 0.014421,
		-0.998583, 0.050643, -0.016353,
		27.963043, 28.288397, 34.354519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590540, 28.824883, 34.782719>,  <28.662052, 28.252947, 34.365967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590540, 28.824883, 34.782719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.248791, 28.619038, 34.753822>,  <28.043741, 28.495531, 34.736485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.248791, 28.619038, 34.753822>,  <28.590540, 28.824883, 34.782719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248791, 28.619038, 34.753822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049073, -0.058490, 0.997081,
		-0.517334, 0.855426, 0.024719,
		-0.854375, -0.514611, -0.072237,
		27.992477, 28.464655, 34.732151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137255, 29.189438, 35.259865>,  <28.590540, 28.824883, 34.782719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137255, 29.189438, 35.259865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.969324, 28.828419, 35.221588>,  <27.868567, 28.611807, 35.198624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.969324, 28.828419, 35.221588>,  <28.137255, 29.189438, 35.259865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969324, 28.828419, 35.221588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161763, -0.178150, 0.970616,
		-0.893073, 0.392010, 0.220791,
		-0.419825, -0.902547, -0.095689,
		27.843376, 28.557655, 35.192883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470135, 29.195045, 35.739700>,  <28.137255, 29.189438, 35.259865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470135, 29.195045, 35.739700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578697, 28.825169, 35.632904>,  <27.643835, 28.603243, 35.568825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578697, 28.825169, 35.632904>,  <27.470135, 29.195045, 35.739700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578697, 28.825169, 35.632904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060754, -0.260389, 0.963590,
		-0.960545, -0.277745, -0.014493,
		0.271406, -0.924692, -0.266989,
		27.660120, 28.547762, 35.552807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052944, 28.689198, 36.269642>,  <27.470135, 29.195045, 35.739700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052944, 28.689198, 36.269642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.352673, 28.476883, 36.111259>,  <27.532511, 28.349495, 36.016228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.352673, 28.476883, 36.111259>,  <27.052944, 28.689198, 36.269642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352673, 28.476883, 36.111259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125921, -0.472822, 0.872114,
		-0.650123, -0.703354, -0.287459,
		0.749322, -0.530785, -0.395960,
		27.577469, 28.317648, 35.992470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004719, 28.011015, 36.595982>,  <27.052944, 28.689198, 36.269642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004719, 28.011015, 36.595982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.385916, 28.032593, 36.476723>,  <27.614634, 28.045540, 36.405167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.385916, 28.032593, 36.476723>,  <27.004719, 28.011015, 36.595982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385916, 28.032593, 36.476723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293622, -0.407246, 0.864834,
		-0.074768, -0.911724, -0.403942,
		0.952993, 0.053944, -0.298151,
		27.671814, 28.048777, 36.387276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305841, 27.318331, 36.679222>,  <27.004719, 28.011015, 36.595982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305841, 27.318331, 36.679222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578447, 27.610092, 36.702915>,  <27.742010, 27.785149, 36.717133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578447, 27.610092, 36.702915>,  <27.305841, 27.318331, 36.679222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578447, 27.610092, 36.702915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309317, -0.360471, 0.879991,
		0.663220, -0.581405, -0.471283,
		0.681515, 0.729403, 0.059233,
		27.782902, 27.828913, 36.720684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736868, 26.954613, 37.134151>,  <27.305841, 27.318331, 36.679222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736868, 26.954613, 37.134151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.882111, 27.325069, 37.093334>,  <27.969255, 27.547344, 37.068844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.882111, 27.325069, 37.093334>,  <27.736868, 26.954613, 37.134151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882111, 27.325069, 37.093334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507985, -0.104967, 0.854946,
		0.781092, -0.362272, -0.508581,
		0.363107, 0.926143, -0.102040,
		27.991043, 27.602913, 37.062721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465164, 26.942280, 37.016026>,  <27.736868, 26.954613, 37.134151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465164, 26.942280, 37.016026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.387894, 27.305820, 37.163906>,  <28.341532, 27.523945, 37.252632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.387894, 27.305820, 37.163906>,  <28.465164, 26.942280, 37.016026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387894, 27.305820, 37.163906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325906, -0.295965, 0.897881,
		0.925456, 0.293934, -0.239026,
		-0.193175, 0.908849, 0.369698,
		28.329941, 27.578476, 37.274815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044897, 27.233633, 37.397961>,  <28.465164, 26.942280, 37.016026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044897, 27.233633, 37.397961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.691462, 27.336090, 37.554760>,  <28.479401, 27.397564, 37.648838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.691462, 27.336090, 37.554760>,  <29.044897, 27.233633, 37.397961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691462, 27.336090, 37.554760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301741, -0.328701, 0.894935,
		0.358080, 0.909036, 0.213148,
		-0.883590, 0.256142, 0.391994,
		28.426384, 27.412933, 37.672359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216721, 27.649017, 38.017780>,  <29.044897, 27.233633, 37.397961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216721, 27.649017, 38.017780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872318, 27.447266, 38.043930>,  <28.665678, 27.326214, 38.059620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.872318, 27.447266, 38.043930>,  <29.216721, 27.649017, 38.017780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872318, 27.447266, 38.043930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363152, -0.519682, 0.773338,
		-0.356081, 0.689588, 0.630615,
		-0.861004, -0.504380, 0.065376,
		28.614017, 27.295952, 38.063541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624063, 26.970478, 37.764217>,  <29.216721, 27.649017, 38.017780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624063, 26.970478, 37.764217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019180, 26.971291, 37.826519>,  <30.256250, 26.971779, 37.863899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019180, 26.971291, 37.826519>,  <29.624063, 26.970478, 37.764217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019180, 26.971291, 37.826519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145861, 0.338768, -0.929495,
		-0.054652, 0.940868, 0.334336,
		0.987794, 0.002032, 0.155750,
		30.315519, 26.971901, 37.873245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886610, 27.556038, 37.565258>,  <29.624063, 26.970478, 37.764217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886610, 27.556038, 37.565258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.196863, 27.304192, 37.547497>,  <30.383015, 27.153084, 37.536839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.196863, 27.304192, 37.547497>,  <29.886610, 27.556038, 37.565258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196863, 27.304192, 37.547497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250947, 0.372165, -0.893599,
		0.579151, 0.681963, 0.446665,
		0.775635, -0.629618, -0.044404,
		30.429554, 27.115307, 37.534176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313330, 27.879780, 37.129513>,  <29.886610, 27.556038, 37.565258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313330, 27.879780, 37.129513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470205, 27.512123, 37.144291>,  <30.564331, 27.291529, 37.153156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470205, 27.512123, 37.144291>,  <30.313330, 27.879780, 37.129513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470205, 27.512123, 37.144291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329177, 0.102730, -0.938663,
		0.858971, 0.380293, 0.342850,
		0.392188, -0.919143, 0.036942,
		30.587862, 27.236380, 37.155373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968056, 27.972366, 36.874859>,  <30.313330, 27.879780, 37.129513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968056, 27.972366, 36.874859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.895567, 27.582985, 36.818935>,  <30.852074, 27.349356, 36.785381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.895567, 27.582985, 36.818935>,  <30.968056, 27.972366, 36.874859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895567, 27.582985, 36.818935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237473, 0.094644, -0.966772,
		0.954340, -0.208403, 0.214018,
		-0.181222, -0.973453, -0.139812,
		30.841200, 27.290949, 36.776993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408665, 27.761925, 36.446789>,  <30.968056, 27.972366, 36.874859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408665, 27.761925, 36.446789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140999, 27.467178, 36.408325>,  <30.980400, 27.290331, 36.385246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.140999, 27.467178, 36.408325>,  <31.408665, 27.761925, 36.446789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140999, 27.467178, 36.408325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227694, -0.080142, -0.970429,
		0.707371, -0.671271, 0.221409,
		-0.669165, -0.736867, -0.096155,
		30.940248, 27.246119, 36.379478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667439, 27.229053, 35.993557>,  <31.408665, 27.761925, 36.446789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667439, 27.229053, 35.993557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.268049, 27.210583, 35.981438>,  <31.028416, 27.199501, 35.974167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.268049, 27.210583, 35.981438>,  <31.667439, 27.229053, 35.993557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268049, 27.210583, 35.981438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026313, 0.084576, -0.996069,
		0.048550, -0.995347, -0.083232,
		-0.998474, -0.046169, -0.030297,
		30.968508, 27.196730, 35.972347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562784, 26.808582, 35.421932>,  <31.667439, 27.229053, 35.993557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562784, 26.808582, 35.421932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224798, 27.009087, 35.496521>,  <31.022007, 27.129389, 35.541275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.224798, 27.009087, 35.496521>,  <31.562784, 26.808582, 35.421932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224798, 27.009087, 35.496521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176692, 0.067454, -0.981952,
		-0.504794, -0.862662, 0.031573,
		-0.844963, 0.501262, 0.186476,
		30.971310, 27.159466, 35.552464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065308, 26.426428, 35.073662>,  <31.562784, 26.808582, 35.421932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065308, 26.426428, 35.073662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.884829, 26.779858, 35.123802>,  <30.776541, 26.991917, 35.153885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.884829, 26.779858, 35.123802>,  <31.065308, 26.426428, 35.073662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884829, 26.779858, 35.123802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293222, -0.014116, -0.955940,
		-0.842876, -0.468075, 0.265453,
		-0.451199, 0.883576, 0.125352,
		30.749470, 27.044931, 35.161407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446951, 26.429222, 34.605267>,  <31.065308, 26.426428, 35.073662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446951, 26.429222, 34.605267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.502617, 26.810398, 34.712997>,  <30.536016, 27.039104, 34.777637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.502617, 26.810398, 34.712997>,  <30.446951, 26.429222, 34.605267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502617, 26.810398, 34.712997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375603, 0.302449, -0.876040,
		-0.916272, 0.020754, 0.400018,
		0.139166, 0.952940, 0.269331,
		30.544367, 27.096279, 34.793797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777294, 26.791464, 34.403339>,  <30.446951, 26.429222, 34.605267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777294, 26.791464, 34.403339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.045383, 27.083206, 34.458241>,  <30.206238, 27.258251, 34.491180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.045383, 27.083206, 34.458241>,  <29.777294, 26.791464, 34.403339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045383, 27.083206, 34.458241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270458, 0.412255, -0.869999,
		-0.691124, 0.545972, 0.473564,
		0.670224, 0.729356, 0.137256,
		30.246450, 27.302013, 34.499416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386274, 27.396595, 34.231163>,  <29.777294, 26.791464, 34.403339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386274, 27.396595, 34.231163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761501, 27.526386, 34.182598>,  <29.986637, 27.604261, 34.153458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761501, 27.526386, 34.182598>,  <29.386274, 27.396595, 34.231163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761501, 27.526386, 34.182598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236026, 0.341996, -0.909577,
		-0.253614, 0.881902, 0.397401,
		0.938068, 0.324479, -0.121417,
		30.042921, 27.623730, 34.146172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340256, 28.097904, 34.068275>,  <29.386274, 27.396595, 34.231163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340256, 28.097904, 34.068275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687504, 27.973064, 33.913891>,  <29.895853, 27.898161, 33.821262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687504, 27.973064, 33.913891>,  <29.340256, 28.097904, 34.068275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687504, 27.973064, 33.913891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213707, 0.466799, -0.858154,
		0.447996, 0.827461, 0.338538,
		0.868118, -0.312101, -0.385958,
		29.947939, 27.879435, 33.798103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618212, 28.687149, 33.755669>,  <29.340256, 28.097904, 34.068275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618212, 28.687149, 33.755669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832348, 28.387909, 33.598824>,  <29.960829, 28.208364, 33.504715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832348, 28.387909, 33.598824>,  <29.618212, 28.687149, 33.755669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832348, 28.387909, 33.598824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079926, 0.417292, -0.905251,
		0.840847, 0.515956, 0.163600,
		0.535339, -0.748102, -0.392117,
		29.992950, 28.163479, 33.481190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073050, 29.063271, 33.418827>,  <29.618212, 28.687149, 33.755669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073050, 29.063271, 33.418827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062998, 28.690983, 33.272881>,  <30.056967, 28.467609, 33.185314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062998, 28.690983, 33.272881>,  <30.073050, 29.063271, 33.418827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062998, 28.690983, 33.272881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188320, 0.362855, -0.912618,
		0.981786, 0.045777, -0.184393,
		-0.025131, -0.930721, -0.364866,
		30.055458, 28.411766, 33.163422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500315, 29.112925, 32.911327>,  <30.073050, 29.063271, 33.418827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500315, 29.112925, 32.911327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276117, 28.791294, 32.832027>,  <30.141600, 28.598316, 32.784447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276117, 28.791294, 32.832027>,  <30.500315, 29.112925, 32.911327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276117, 28.791294, 32.832027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019899, 0.252398, -0.967419,
		0.827920, -0.538287, -0.157468,
		-0.560493, -0.804078, -0.198254,
		30.107969, 28.550070, 32.772552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766695, 28.768242, 32.286919>,  <30.500315, 29.112925, 32.911327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766695, 28.768242, 32.286919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380527, 28.666023, 32.307571>,  <30.148827, 28.604692, 32.319962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380527, 28.666023, 32.307571>,  <30.766695, 28.768242, 32.286919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380527, 28.666023, 32.307571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102035, 0.188106, -0.976834,
		0.239918, -0.948320, -0.207676,
		-0.965416, -0.255550, 0.051632,
		30.090902, 28.589359, 32.323063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628922, 28.157139, 31.946209>,  <30.766695, 28.768242, 32.286919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628922, 28.157139, 31.946209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.277338, 28.346996, 31.927677>,  <30.066389, 28.460911, 31.916557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.277338, 28.346996, 31.927677>,  <30.628922, 28.157139, 31.946209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277338, 28.346996, 31.927677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066925, 0.026580, -0.997404,
		-0.472181, -0.879776, -0.055128,
		-0.878957, 0.474645, -0.046329,
		30.013651, 28.489389, 31.913778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099903, 27.692614, 31.591866>,  <30.628922, 28.157139, 31.946209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099903, 27.692614, 31.591866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.969666, 28.069946, 31.566208>,  <29.891523, 28.296347, 31.550814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.969666, 28.069946, 31.566208>,  <30.099903, 27.692614, 31.591866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969666, 28.069946, 31.566208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066295, -0.090452, -0.993692,
		-0.943183, -0.319286, 0.091988,
		-0.325592, 0.943332, -0.064146,
		29.871988, 28.352945, 31.546965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687408, 27.785692, 31.011181>,  <30.099903, 27.692614, 31.591866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687408, 27.785692, 31.011181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760036, 28.175846, 31.061226>,  <29.803614, 28.409939, 31.091253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760036, 28.175846, 31.061226>,  <29.687408, 27.785692, 31.011181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760036, 28.175846, 31.061226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142916, 0.152051, -0.977986,
		-0.972937, 0.159694, 0.167006,
		0.181572, 0.975387, 0.125113,
		29.814508, 28.468462, 31.098761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237801, 28.076612, 30.570892>,  <29.687408, 27.785692, 31.011181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237801, 28.076612, 30.570892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488243, 28.377274, 30.653851>,  <29.638508, 28.557671, 30.703627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488243, 28.377274, 30.653851>,  <29.237801, 28.076612, 30.570892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488243, 28.377274, 30.653851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148391, 0.375983, -0.914668,
		-0.765489, 0.541902, 0.346943,
		0.626105, 0.751651, 0.207397,
		29.676075, 28.602770, 30.716070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.887756, 42.890484, 16.686884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250765, 43.028812, 16.591541>,  <23.468571, 43.111809, 16.534336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250765, 43.028812, 16.591541>,  <22.887756, 42.890484, 16.686884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.250765, 43.028812, 16.591541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398463, -0.529485, 0.748914,
		0.132784, -0.774632, -0.618316,
		0.907522, 0.345819, -0.238355,
		23.523022, 43.132557, 16.520035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.365387, 42.336655, 16.603722>,  <22.887756, 42.890484, 16.686884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.365387, 42.336655, 16.603722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.591696, 42.655231, 16.689125>,  <23.727482, 42.846378, 16.740368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.591696, 42.655231, 16.689125>,  <23.365387, 42.336655, 16.603722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.591696, 42.655231, 16.689125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364545, -0.473859, 0.801602,
		0.739601, -0.375690, -0.558434,
		0.565772, 0.796439, 0.213510,
		23.761427, 42.894165, 16.753178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.009048, 42.066055, 16.695086>,  <23.365387, 42.336655, 16.603722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.009048, 42.066055, 16.695086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.029272, 42.414764, 16.890003>,  <24.041407, 42.623989, 17.006954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.029272, 42.414764, 16.890003>,  <24.009048, 42.066055, 16.695086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.029272, 42.414764, 16.890003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414652, -0.462202, 0.783858,
		0.908574, 0.162429, -0.384850,
		0.050557, 0.871772, 0.487296,
		24.044439, 42.676296, 17.036192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.647686, 42.080616, 16.991409>,  <24.009048, 42.066055, 16.695086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.647686, 42.080616, 16.991409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.429029, 42.352051, 17.187653>,  <24.297834, 42.514912, 17.305399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.429029, 42.352051, 17.187653>,  <24.647686, 42.080616, 16.991409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429029, 42.352051, 17.187653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290362, -0.395933, 0.871164,
		0.785412, 0.618670, 0.019397,
		-0.546643, 0.678590, 0.490609,
		24.265038, 42.555630, 17.334835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064838, 42.354111, 17.511600>,  <24.647686, 42.080616, 16.991409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064838, 42.354111, 17.511600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.692902, 42.440441, 17.630806>,  <24.469740, 42.492237, 17.702330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.692902, 42.440441, 17.630806>,  <25.064838, 42.354111, 17.511600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692902, 42.440441, 17.630806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211519, -0.349212, 0.912859,
		0.301085, 0.911851, 0.279062,
		-0.929843, 0.215821, 0.298016,
		24.413948, 42.505188, 17.720211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179062, 42.701054, 18.095987>,  <25.064838, 42.354111, 17.511600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179062, 42.701054, 18.095987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.812487, 42.541035, 18.091869>,  <24.592541, 42.445023, 18.089397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.812487, 42.541035, 18.091869>,  <25.179062, 42.701054, 18.095987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812487, 42.541035, 18.091869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218912, -0.522700, 0.823931,
		-0.334989, 0.752828, 0.566597,
		-0.916439, -0.400043, -0.010296,
		24.537556, 42.421021, 18.088781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018141, 42.750233, 18.786083>,  <25.179062, 42.701054, 18.095987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018141, 42.750233, 18.786083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.741272, 42.492203, 18.656609>,  <24.575151, 42.337383, 18.578924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.741272, 42.492203, 18.656609>,  <25.018141, 42.750233, 18.786083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.741272, 42.492203, 18.656609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233219, -0.624338, 0.745527,
		-0.683014, 0.440542, 0.582593,
		-0.692172, -0.645077, -0.323689,
		24.533621, 42.298679, 18.559502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699492, 42.532360, 19.393867>,  <25.018141, 42.750233, 18.786083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699492, 42.532360, 19.393867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.602385, 42.265522, 19.112144>,  <24.544121, 42.105419, 18.943111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.602385, 42.265522, 19.112144>,  <24.699492, 42.532360, 19.393867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602385, 42.265522, 19.112144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179256, -0.744372, 0.643256,
		-0.953378, 0.029911, 0.300291,
		-0.242769, -0.667095, -0.704306,
		24.529554, 42.065392, 18.900852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.237722, 42.080193, 19.729595>,  <24.699492, 42.532360, 19.393867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.237722, 42.080193, 19.729595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.396814, 41.898842, 19.410530>,  <24.492270, 41.790031, 19.219091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.396814, 41.898842, 19.410530>,  <24.237722, 42.080193, 19.729595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.396814, 41.898842, 19.410530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069916, -0.851879, 0.519051,
		-0.914835, -0.262210, -0.307118,
		0.397728, -0.453374, -0.797662,
		24.516132, 41.762829, 19.171232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.947008, 41.411266, 19.725464>,  <24.237722, 42.080193, 19.729595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.947008, 41.411266, 19.725464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.291592, 41.396420, 19.522877>,  <24.498343, 41.387512, 19.401323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.291592, 41.396420, 19.522877>,  <23.947008, 41.411266, 19.725464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291592, 41.396420, 19.522877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272211, -0.808194, 0.522229,
		-0.428706, -0.587745, -0.686124,
		0.861459, -0.037112, -0.506469,
		24.550030, 41.385284, 19.370935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.972561, 40.792114, 19.574409>,  <23.947008, 41.411266, 19.725464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.972561, 40.792114, 19.574409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.355946, 40.905430, 19.587643>,  <24.585976, 40.973419, 19.595583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.355946, 40.905430, 19.587643>,  <23.972561, 40.792114, 19.574409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355946, 40.905430, 19.587643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216612, -0.798462, 0.561728,
		0.185550, -0.531229, -0.826660,
		0.958462, 0.283293, 0.033084,
		24.643484, 40.990417, 19.597569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332842, 40.205723, 19.466009>,  <23.972561, 40.792114, 19.574409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.332842, 40.205723, 19.466009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.620346, 40.438408, 19.618320>,  <24.792849, 40.578018, 19.709707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.620346, 40.438408, 19.618320>,  <24.332842, 40.205723, 19.466009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620346, 40.438408, 19.618320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282823, -0.744950, 0.604203,
		0.635134, -0.326584, -0.699962,
		0.718760, 0.581716, 0.380777,
		24.835974, 40.612923, 19.732553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953766, 39.780216, 19.417093>,  <24.332842, 40.205723, 19.466009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953766, 39.780216, 19.417093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.018818, 40.060902, 19.694553>,  <25.057850, 40.229313, 19.861031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.018818, 40.060902, 19.694553>,  <24.953766, 39.780216, 19.417093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018818, 40.060902, 19.694553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297093, -0.705211, 0.643749,
		0.940897, 0.101386, -0.323163,
		0.162631, 0.701711, 0.693652,
		25.067608, 40.271416, 19.902649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619816, 39.649044, 19.603502>,  <24.953766, 39.780216, 19.417093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619816, 39.649044, 19.603502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.420864, 39.849529, 19.886742>,  <25.301493, 39.969818, 20.056684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.420864, 39.849529, 19.886742>,  <25.619816, 39.649044, 19.603502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420864, 39.849529, 19.886742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416125, -0.578358, 0.701671,
		0.761218, 0.643654, 0.079097,
		-0.497380, 0.501210, 0.708097,
		25.271650, 39.999893, 20.099171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988615, 39.514439, 20.294632>,  <25.619816, 39.649044, 19.603502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988615, 39.514439, 20.294632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.646582, 39.669395, 20.432476>,  <25.441360, 39.762371, 20.515182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.646582, 39.669395, 20.432476>,  <25.988615, 39.514439, 20.294632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646582, 39.669395, 20.432476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057076, -0.590273, 0.805183,
		0.515338, 0.708169, 0.482622,
		-0.855084, 0.387396, 0.344609,
		25.390057, 39.785614, 20.535858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099304, 39.554932, 21.061440>,  <25.988615, 39.514439, 20.294632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099304, 39.554932, 21.061440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.710550, 39.545116, 20.967770>,  <25.477299, 39.539227, 20.911568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.710550, 39.545116, 20.967770>,  <26.099304, 39.554932, 21.061440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710550, 39.545116, 20.967770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191473, -0.496436, 0.846693,
		-0.137029, 0.867726, 0.477780,
		-0.971885, -0.024540, -0.234173,
		25.418985, 39.537754, 20.897518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635006, 39.747005, 21.727585>,  <26.099304, 39.554932, 21.061440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635006, 39.747005, 21.727585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.391428, 39.561272, 21.470345>,  <25.245281, 39.449833, 21.316000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.391428, 39.561272, 21.470345>,  <25.635006, 39.747005, 21.727585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391428, 39.561272, 21.470345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518532, -0.380505, 0.765729,
		-0.600257, 0.799756, -0.009065,
		-0.608947, -0.464335, -0.643099,
		25.208744, 39.421970, 21.277414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934290, 39.854218, 22.024551>,  <25.635006, 39.747005, 21.727585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934290, 39.854218, 22.024551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.907030, 39.548759, 21.767738>,  <24.890675, 39.365486, 21.613651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.907030, 39.548759, 21.767738>,  <24.934290, 39.854218, 22.024551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907030, 39.548759, 21.767738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549635, -0.508325, 0.662952,
		-0.832620, 0.398062, -0.385084,
		-0.068149, -0.763644, -0.642031,
		24.886585, 39.319668, 21.575129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278820, 39.630192, 21.983171>,  <24.934290, 39.854218, 22.024551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278820, 39.630192, 21.983171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.487411, 39.311428, 21.861191>,  <24.612566, 39.120171, 21.788002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.487411, 39.311428, 21.861191>,  <24.278820, 39.630192, 21.983171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487411, 39.311428, 21.861191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577644, -0.592756, 0.561220,
		-0.628005, -0.116508, -0.769439,
		0.521476, -0.796911, -0.304953,
		24.643854, 39.072353, 21.769707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.852335, 39.218113, 21.677792>,  <24.278820, 39.630192, 21.983171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.852335, 39.218113, 21.677792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.149416, 38.992722, 21.822502>,  <24.327663, 38.857487, 21.909328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.149416, 38.992722, 21.822502>,  <23.852335, 39.218113, 21.677792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.149416, 38.992722, 21.822502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662332, -0.538658, 0.520734,
		-0.098551, -0.626366, -0.773274,
		0.742700, -0.563483, 0.361777,
		24.372227, 38.823677, 21.931036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.409893, 38.638153, 21.844175>,  <23.852335, 39.218113, 21.677792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.409893, 38.638153, 21.844175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.762032, 38.576950, 22.023766>,  <23.973314, 38.540230, 22.131519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.762032, 38.576950, 22.023766>,  <23.409893, 38.638153, 21.844175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.762032, 38.576950, 22.023766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439132, -0.620741, 0.649495,
		0.179321, -0.768940, -0.613657,
		0.880345, -0.153008, 0.448978,
		24.026134, 38.531048, 22.158459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.239428, 37.864864, 21.951073>,  <23.409893, 38.638153, 21.844175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.239428, 37.864864, 21.951073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.843395, 37.879967, 22.005207>,  <22.605776, 37.889027, 22.037687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.843395, 37.879967, 22.005207>,  <23.239428, 37.864864, 21.951073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.843395, 37.879967, 22.005207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074582, 0.675083, -0.733962,
		-0.119073, -0.736775, -0.665571,
		-0.990081, 0.037755, 0.135334,
		22.546371, 37.891293, 22.045807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.714312, 37.688114, 21.277683>,  <23.239428, 37.864864, 21.951073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.714312, 37.688114, 21.277683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492847, 37.924419, 21.512444>,  <22.359970, 38.066204, 21.653299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492847, 37.924419, 21.512444>,  <22.714312, 37.688114, 21.277683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492847, 37.924419, 21.512444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201749, 0.588627, -0.782825,
		-0.807935, -0.551825, -0.206713,
		-0.553659, 0.590768, 0.586903,
		22.326750, 38.101650, 21.688515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.050957, 37.708221, 20.865503>,  <22.714312, 37.688114, 21.277683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.050957, 37.708221, 20.865503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.050543, 38.023491, 21.111683>,  <22.050295, 38.212654, 21.259392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.050543, 38.023491, 21.111683>,  <22.050957, 37.708221, 20.865503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.050543, 38.023491, 21.111683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411598, 0.560566, -0.718577,
		-0.911365, -0.254061, 0.323832,
		-0.001033, 0.788175, 0.615451,
		22.050232, 38.259945, 21.296318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.494776, 38.030258, 20.761908>,  <22.050957, 37.708221, 20.865503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.494776, 38.030258, 20.761908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.686790, 38.323620, 20.954441>,  <21.801998, 38.499638, 21.069962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.686790, 38.323620, 20.954441>,  <21.494776, 38.030258, 20.761908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686790, 38.323620, 20.954441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287790, 0.649978, -0.703353,
		-0.828699, 0.199112, 0.523079,
		0.480036, 0.733405, 0.481334,
		21.830801, 38.543640, 21.098841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.032108, 38.549408, 20.884262>,  <21.494776, 38.030258, 20.761908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.032108, 38.549408, 20.884262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.392006, 38.723972, 20.883480>,  <21.607944, 38.828712, 20.883011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.392006, 38.723972, 20.883480>,  <21.032108, 38.549408, 20.884262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392006, 38.723972, 20.883480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339487, 0.697081, -0.631527,
		-0.274246, 0.568876, 0.775351,
		0.899743, 0.436416, -0.001954,
		21.661928, 38.854897, 20.882895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.888174, 39.288795, 20.809557>,  <21.032108, 38.549408, 20.884262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.888174, 39.288795, 20.809557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.278337, 39.243469, 20.733944>,  <21.512436, 39.216274, 20.688576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.278337, 39.243469, 20.733944>,  <20.888174, 39.288795, 20.809557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.278337, 39.243469, 20.733944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046504, 0.732570, -0.679101,
		0.215435, 0.671193, 0.709286,
		0.975410, -0.113317, -0.189035,
		21.570961, 39.209473, 20.677233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.342699, 39.853519, 20.965454>,  <20.888174, 39.288795, 20.809557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.342699, 39.853519, 20.965454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.521194, 39.647530, 20.672695>,  <21.628292, 39.523933, 20.497040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.521194, 39.647530, 20.672695>,  <21.342699, 39.853519, 20.965454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.521194, 39.647530, 20.672695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010647, 0.820836, -0.571065,
		0.894852, 0.247038, 0.371771,
		0.446237, -0.514977, -0.731896,
		21.655066, 39.493038, 20.453127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626806, 40.442093, 20.569994>,  <21.342699, 39.853519, 20.965454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626806, 40.442093, 20.569994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.688683, 40.121418, 20.339043>,  <21.725809, 39.929012, 20.200472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.688683, 40.121418, 20.339043>,  <21.626806, 40.442093, 20.569994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.688683, 40.121418, 20.339043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127060, 0.595705, -0.793090,
		0.979758, 0.049323, 0.194013,
		0.154692, -0.801687, -0.577380,
		21.735090, 39.880913, 20.165829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176237, 40.643784, 20.070818>,  <21.626806, 40.442093, 20.569994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176237, 40.643784, 20.070818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.997114, 40.330299, 19.898643>,  <21.889641, 40.142208, 19.795340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.997114, 40.330299, 19.898643>,  <22.176237, 40.643784, 20.070818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.997114, 40.330299, 19.898643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077743, 0.513704, -0.854438,
		0.890745, -0.349158, -0.290967,
		-0.447805, -0.783707, -0.430434,
		21.862772, 40.095188, 19.769514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.538021, 40.474625, 19.451941>,  <22.176237, 40.643784, 20.070818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.538021, 40.474625, 19.451941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.170015, 40.323929, 19.408783>,  <21.949211, 40.233513, 19.382889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.170015, 40.323929, 19.408783>,  <22.538021, 40.474625, 19.451941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.170015, 40.323929, 19.408783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089508, 0.470058, -0.878085,
		0.381523, -0.798195, -0.466182,
		-0.920016, -0.376737, -0.107894,
		21.894011, 40.210907, 19.376415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529436, 40.313366, 18.760958>,  <22.538021, 40.474625, 19.451941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529436, 40.313366, 18.760958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.141808, 40.368782, 18.842648>,  <21.909231, 40.402031, 18.891661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.141808, 40.368782, 18.842648>,  <22.529436, 40.313366, 18.760958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.141808, 40.368782, 18.842648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173812, 0.204303, -0.963353,
		-0.175184, -0.969055, -0.173905,
		-0.969072, 0.138538, 0.204224,
		21.851086, 40.410343, 18.903915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.233339, 40.068142, 18.124207>,  <22.529436, 40.313366, 18.760958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.233339, 40.068142, 18.124207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.958248, 40.271057, 18.331932>,  <21.793194, 40.392807, 18.456568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.958248, 40.271057, 18.331932>,  <22.233339, 40.068142, 18.124207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.958248, 40.271057, 18.331932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315807, 0.435053, -0.843205,
		-0.653677, -0.743900, -0.138994,
		-0.687730, 0.507289, 0.519312,
		21.751928, 40.423244, 18.487726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.643091, 40.039349, 17.671541>,  <22.233339, 40.068142, 18.124207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.643091, 40.039349, 17.671541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.554375, 40.338917, 17.921318>,  <21.501144, 40.518658, 18.071184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.554375, 40.338917, 17.921318>,  <21.643091, 40.039349, 17.671541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.554375, 40.338917, 17.921318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414875, 0.507059, -0.755493,
		-0.882432, -0.426628, 0.198246,
		-0.221792, 0.748919, 0.624443,
		21.487837, 40.563591, 18.108650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.954754, 40.178497, 17.563572>,  <21.643091, 40.039349, 17.671541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.954754, 40.178497, 17.563572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.146957, 40.498795, 17.706638>,  <21.262280, 40.690971, 17.792479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.146957, 40.498795, 17.706638>,  <20.954754, 40.178497, 17.563572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.146957, 40.498795, 17.706638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226764, 0.507406, -0.831334,
		-0.847166, 0.318357, 0.425392,
		0.480507, 0.800742, 0.357666,
		21.291109, 40.739017, 17.813938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.488932, 40.650116, 17.555593>,  <20.954754, 40.178497, 17.563572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.488932, 40.650116, 17.555593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.792271, 40.907494, 17.597324>,  <20.974274, 41.061920, 17.622362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.792271, 40.907494, 17.597324>,  <20.488932, 40.650116, 17.555593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792271, 40.907494, 17.597324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124256, 0.299807, -0.945873,
		-0.639898, 0.704337, 0.307310,
		0.758347, 0.643448, 0.104328,
		21.019775, 41.100529, 17.628622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.227551, 41.409023, 17.361145>,  <20.488932, 40.650116, 17.555593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.227551, 41.409023, 17.361145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626135, 41.413521, 17.327812>,  <20.865286, 41.416218, 17.307814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626135, 41.413521, 17.327812>,  <20.227551, 41.409023, 17.361145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626135, 41.413521, 17.327812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082042, 0.347152, -0.934213,
		0.018423, 0.937742, 0.346845,
		0.996459, 0.011244, -0.083330,
		20.925072, 41.416893, 17.302813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.430132, 42.185738, 17.307159>,  <20.227551, 41.409023, 17.361145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.430132, 42.185738, 17.307159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.722879, 41.955814, 17.160759>,  <20.898529, 41.817860, 17.072918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.722879, 41.955814, 17.160759>,  <20.430132, 42.185738, 17.307159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.722879, 41.955814, 17.160759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054090, 0.584404, -0.809659,
		0.679294, 0.572768, 0.458799,
		0.731870, -0.574813, -0.366001,
		20.942440, 41.783371, 17.050959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.963772, 42.649094, 17.100965>,  <20.430132, 42.185738, 17.307159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.963772, 42.649094, 17.100965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.048813, 42.319168, 16.891403>,  <21.099838, 42.121212, 16.765665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.048813, 42.319168, 16.891403>,  <20.963772, 42.649094, 17.100965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.048813, 42.319168, 16.891403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239525, 0.563799, -0.790417,
		0.947326, 0.042557, 0.317430,
		0.212605, -0.824815, -0.523908,
		21.112595, 42.071724, 16.734230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.648045, 42.663265, 16.876976>,  <20.963772, 42.649094, 17.100965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.648045, 42.663265, 16.876976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.465260, 42.414799, 16.622311>,  <21.355589, 42.265720, 16.469511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.465260, 42.414799, 16.622311>,  <21.648045, 42.663265, 16.876976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465260, 42.414799, 16.622311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277560, 0.580445, -0.765536,
		0.845071, -0.526533, -0.092831,
		-0.456963, -0.621166, -0.636661,
		21.328171, 42.228451, 16.431313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.997931, 42.743332, 16.301451>,  <21.648045, 42.663265, 16.876976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.997931, 42.743332, 16.301451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.693375, 42.549995, 16.128632>,  <21.510641, 42.433994, 16.024940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.693375, 42.549995, 16.128632>,  <21.997931, 42.743332, 16.301451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.693375, 42.549995, 16.128632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085788, 0.585459, -0.806150,
		0.642593, -0.650859, -0.404297,
		-0.761389, -0.483343, -0.432048,
		21.464958, 42.404991, 15.999018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.251810, 42.551010, 15.607506>,  <21.997931, 42.743332, 16.301451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.251810, 42.551010, 15.607506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.852036, 42.549789, 15.620864>,  <21.612171, 42.549057, 15.628879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.852036, 42.549789, 15.620864>,  <22.251810, 42.551010, 15.607506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.852036, 42.549789, 15.620864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027370, 0.649615, -0.759770,
		-0.019376, -0.760257, -0.649333,
		-0.999438, -0.003051, 0.033395,
		21.552204, 42.548874, 15.630882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.841780, 30.767382, 26.608028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135410, 31.003563, 26.742191>,  <27.311588, 31.145271, 26.822689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135410, 31.003563, 26.742191>,  <26.841780, 30.767382, 26.608028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135410, 31.003563, 26.742191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148623, 0.342254, -0.927779,
		-0.662605, 0.730909, 0.163485,
		0.734075, 0.590453, 0.335409,
		27.355633, 31.180698, 26.842813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625578, 31.416342, 26.320194>,  <26.841780, 30.767382, 26.608028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625578, 31.416342, 26.320194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011148, 31.466995, 26.413841>,  <27.242491, 31.497387, 26.470030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011148, 31.466995, 26.413841>,  <26.625578, 31.416342, 26.320194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011148, 31.466995, 26.413841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180223, 0.336759, -0.924182,
		-0.195874, 0.933037, 0.301788,
		0.963926, 0.126634, 0.234117,
		27.300325, 31.504986, 26.484076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748535, 32.009544, 26.100416>,  <26.625578, 31.416342, 26.320194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748535, 32.009544, 26.100416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100609, 31.820248, 26.114948>,  <27.311853, 31.706669, 26.123667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100609, 31.820248, 26.114948>,  <26.748535, 32.009544, 26.100416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100609, 31.820248, 26.114948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252436, 0.401938, -0.880183,
		0.401938, 0.783892, 0.473243,
		0.880183, -0.473243, 0.036329,
		27.364664, 31.678274, 26.125847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300425, 32.535912, 26.173693>,  <26.748535, 32.009544, 26.100416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300425, 32.535912, 26.173693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443186, 32.197960, 26.014294>,  <27.528843, 31.995190, 25.918653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443186, 32.197960, 26.014294>,  <27.300425, 32.535912, 26.173693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443186, 32.197960, 26.014294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196978, 0.485069, -0.852002,
		0.913138, 0.225586, 0.339545,
		0.356902, -0.844878, -0.398500,
		27.550257, 31.944496, 25.894743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979330, 32.691147, 26.015024>,  <27.300425, 32.535912, 26.173693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979330, 32.691147, 26.015024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842278, 32.380108, 25.804146>,  <27.760046, 32.193485, 25.677618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842278, 32.380108, 25.804146>,  <27.979330, 32.691147, 26.015024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842278, 32.380108, 25.804146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242902, 0.468760, -0.849272,
		0.907525, -0.419046, 0.028269,
		-0.342633, -0.777602, -0.527198,
		27.739487, 32.146828, 25.645987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427673, 32.625252, 25.423820>,  <27.979330, 32.691147, 26.015024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427673, 32.625252, 25.423820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101648, 32.416603, 25.322956>,  <27.906034, 32.291412, 25.262438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101648, 32.416603, 25.322956>,  <28.427673, 32.625252, 25.423820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101648, 32.416603, 25.322956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051885, 0.499198, -0.864933,
		0.577049, -0.691889, -0.433941,
		-0.815060, -0.521624, -0.252163,
		27.857130, 32.260117, 25.247307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613783, 32.305710, 24.761414>,  <28.427673, 32.625252, 25.423820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613783, 32.305710, 24.761414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216837, 32.346966, 24.788460>,  <27.978668, 32.371719, 24.804688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216837, 32.346966, 24.788460>,  <28.613783, 32.305710, 24.761414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216837, 32.346966, 24.788460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032845, 0.307440, -0.951001,
		-0.118871, -0.945962, -0.301705,
		-0.992366, 0.103137, 0.067615,
		27.919127, 32.377907, 24.808744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479071, 32.154987, 24.117487>,  <28.613783, 32.305710, 24.761414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479071, 32.154987, 24.117487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152475, 32.337734, 24.258694>,  <27.956518, 32.447384, 24.343418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152475, 32.337734, 24.258694>,  <28.479071, 32.154987, 24.117487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152475, 32.337734, 24.258694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197820, 0.353059, -0.914449,
		-0.542418, -0.816469, -0.197890,
		-0.816486, 0.456867, 0.353019,
		27.907530, 32.474792, 24.364599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941549, 31.999939, 23.680664>,  <28.479071, 32.154987, 24.117487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941549, 31.999939, 23.680664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831264, 32.338562, 23.862797>,  <27.765093, 32.541737, 23.972076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831264, 32.338562, 23.862797>,  <27.941549, 31.999939, 23.680664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831264, 32.338562, 23.862797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209528, 0.409371, -0.887983,
		-0.938126, -0.340233, 0.064508,
		-0.275713, 0.846556, 0.455330,
		27.748550, 32.592529, 23.999395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317387, 32.274429, 23.328161>,  <27.941549, 31.999939, 23.680664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317387, 32.274429, 23.328161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446098, 32.593864, 23.531616>,  <27.523325, 32.785526, 23.653688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446098, 32.593864, 23.531616>,  <27.317387, 32.274429, 23.328161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446098, 32.593864, 23.531616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315223, 0.596919, -0.737781,
		-0.892801, 0.077068, 0.443810,
		0.321778, 0.798591, 0.508636,
		27.542631, 32.833443, 23.684208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726841, 32.776379, 23.312328>,  <27.317387, 32.274429, 23.328161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726841, 32.776379, 23.312328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038359, 33.007130, 23.410873>,  <27.225269, 33.145580, 23.469999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038359, 33.007130, 23.410873>,  <26.726841, 32.776379, 23.312328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038359, 33.007130, 23.410873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317645, 0.701351, -0.638128,
		-0.540905, 0.418716, 0.729451,
		0.778796, 0.576874, 0.246361,
		27.271997, 33.180191, 23.484781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515980, 33.463734, 23.254019>,  <26.726841, 32.776379, 23.312328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515980, 33.463734, 23.254019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914272, 33.468803, 23.217445>,  <27.153248, 33.471844, 23.195501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914272, 33.468803, 23.217445>,  <26.515980, 33.463734, 23.254019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914272, 33.468803, 23.217445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075995, 0.674820, -0.734059,
		0.052400, 0.737874, 0.672902,
		0.995730, 0.012672, -0.091435,
		27.212992, 33.472607, 23.190016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610350, 34.191765, 23.263086>,  <26.515980, 33.463734, 23.254019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610350, 34.191765, 23.263086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884933, 33.958706, 23.089054>,  <27.049685, 33.818871, 22.984634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884933, 33.958706, 23.089054>,  <26.610350, 34.191765, 23.263086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884933, 33.958706, 23.089054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046911, 0.561595, -0.826082,
		0.725652, 0.587484, 0.358180,
		0.686461, -0.582645, -0.435082,
		27.090872, 33.783913, 22.958530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291832, 34.598614, 23.025370>,  <26.610350, 34.191765, 23.263086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291832, 34.598614, 23.025370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257486, 34.262653, 22.811008>,  <27.236879, 34.061077, 22.682392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257486, 34.262653, 22.811008>,  <27.291832, 34.598614, 23.025370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257486, 34.262653, 22.811008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205215, 0.511445, -0.834452,
		0.974943, -0.181625, 0.128446,
		-0.085864, -0.839903, -0.535902,
		27.231728, 34.010681, 22.650238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083284, 34.899544, 23.632915>,  <27.291832, 34.598614, 23.025370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083284, 34.899544, 23.632915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184349, 35.272186, 23.737434>,  <27.244987, 35.495770, 23.800146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184349, 35.272186, 23.737434>,  <27.083284, 34.899544, 23.632915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184349, 35.272186, 23.737434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712671, -0.361846, 0.600972,
		0.654418, 0.034379, -0.755351,
		0.252660, 0.931604, 0.261300,
		27.260147, 35.551666, 23.815825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889332, 34.934589, 23.695782>,  <27.083284, 34.899544, 23.632915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889332, 34.934589, 23.695782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754652, 35.244202, 23.910263>,  <27.673845, 35.429970, 24.038952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754652, 35.244202, 23.910263>,  <27.889332, 34.934589, 23.695782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754652, 35.244202, 23.910263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607157, -0.256796, 0.751942,
		0.719719, 0.578738, -0.383493,
		-0.336698, 0.774027, 0.536206,
		27.653643, 35.476410, 24.071125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412205, 35.268730, 23.913155>,  <27.889332, 34.934589, 23.695782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412205, 35.268730, 23.913155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117146, 35.358410, 24.167904>,  <27.940109, 35.412216, 24.320753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117146, 35.358410, 24.167904>,  <28.412205, 35.268730, 23.913155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117146, 35.358410, 24.167904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610037, -0.182935, 0.770966,
		0.289355, 0.957220, -0.001827,
		-0.737650, 0.224197, 0.636873,
		27.895851, 35.425671, 24.358965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778786, 35.601818, 24.493841>,  <28.412205, 35.268730, 23.913155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778786, 35.601818, 24.493841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421934, 35.525673, 24.657726>,  <28.207823, 35.479984, 24.756058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421934, 35.525673, 24.657726>,  <28.778786, 35.601818, 24.493841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421934, 35.525673, 24.657726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450216, -0.299245, 0.841284,
		-0.037544, 0.934994, 0.352670,
		-0.892130, -0.190363, 0.409714,
		28.154295, 35.468563, 24.780640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669889, 36.016891, 25.143787>,  <28.778786, 35.601818, 24.493841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669889, 36.016891, 25.143787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413939, 35.709839, 25.158226>,  <28.260368, 35.525608, 25.166889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413939, 35.709839, 25.158226>,  <28.669889, 36.016891, 25.143787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413939, 35.709839, 25.158226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448301, -0.334716, 0.828849,
		-0.624166, 0.546544, 0.558306,
		-0.639877, -0.767629, 0.036098,
		28.221975, 35.479549, 25.169056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409348, 36.107056, 25.766567>,  <28.669889, 36.016891, 25.143787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409348, 36.107056, 25.766567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361448, 35.730236, 25.641212>,  <28.332708, 35.504147, 25.566000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361448, 35.730236, 25.641212>,  <28.409348, 36.107056, 25.766567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361448, 35.730236, 25.641212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497605, -0.330099, 0.802137,
		-0.859098, -0.059888, 0.508295,
		-0.119749, -0.942045, -0.313388,
		28.325523, 35.447624, 25.547195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300407, 35.819275, 26.425640>,  <28.409348, 36.107056, 25.766567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300407, 35.819275, 26.425640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366983, 35.490536, 26.207699>,  <28.406929, 35.293293, 26.076935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366983, 35.490536, 26.207699>,  <28.300407, 35.819275, 26.425640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366983, 35.490536, 26.207699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415479, -0.442663, 0.794624,
		-0.894246, -0.358630, 0.267785,
		0.166438, -0.821848, -0.544853,
		28.416916, 35.243980, 26.044243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869678, 35.283470, 26.596298>,  <28.300407, 35.819275, 26.425640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869678, 35.283470, 26.596298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177227, 35.093472, 26.425083>,  <28.361757, 34.979473, 26.322353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177227, 35.093472, 26.425083>,  <27.869678, 35.283470, 26.596298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177227, 35.093472, 26.425083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369509, -0.216254, 0.903713,
		-0.521821, -0.853005, 0.009242,
		0.768873, -0.474992, -0.428039,
		28.407888, 34.950974, 26.296671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911366, 34.594986, 26.934723>,  <27.869678, 35.283470, 26.596298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911366, 34.594986, 26.934723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265572, 34.619629, 26.750519>,  <28.478094, 34.634415, 26.639996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265572, 34.619629, 26.750519>,  <27.911366, 34.594986, 26.934723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265572, 34.619629, 26.750519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458285, -0.278860, 0.843927,
		-0.076423, -0.958353, -0.275170,
		0.885514, 0.061610, -0.460510,
		28.531225, 34.638111, 26.612366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260208, 33.942039, 27.044983>,  <27.911366, 34.594986, 26.934723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260208, 33.942039, 27.044983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549822, 34.201927, 26.952343>,  <28.723591, 34.357861, 26.896759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549822, 34.201927, 26.952343>,  <28.260208, 33.942039, 27.044983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549822, 34.201927, 26.952343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428939, -0.161164, 0.888840,
		0.540172, -0.742893, -0.395379,
		0.724034, 0.649720, -0.231600,
		28.767033, 34.396843, 26.882862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796673, 33.558670, 27.212879>,  <28.260208, 33.942039, 27.044983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796673, 33.558670, 27.212879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934338, 33.933064, 27.183262>,  <29.016935, 34.157700, 27.165491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934338, 33.933064, 27.183262>,  <28.796673, 33.558670, 27.212879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934338, 33.933064, 27.183262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709479, -0.207598, 0.673455,
		0.614973, -0.284311, -0.735510,
		0.344161, 0.935986, -0.074046,
		29.037586, 34.213860, 27.161049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571203, 33.545181, 27.199551>,  <28.796673, 33.558670, 27.212879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571203, 33.545181, 27.199551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507959, 33.911797, 27.346500>,  <29.470013, 34.131763, 27.434671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507959, 33.911797, 27.346500>,  <29.571203, 33.545181, 27.199551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507959, 33.911797, 27.346500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494348, -0.248597, 0.832958,
		0.854764, 0.313311, -0.413781,
		-0.158110, 0.916534, 0.367377,
		29.460526, 34.186756, 27.456713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278957, 33.745777, 27.510876>,  <29.571203, 33.545181, 27.199551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278957, 33.745777, 27.510876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975716, 33.940887, 27.684013>,  <29.793770, 34.057953, 27.787895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975716, 33.940887, 27.684013>,  <30.278957, 33.745777, 27.510876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975716, 33.940887, 27.684013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209587, -0.446283, 0.870003,
		0.617535, 0.750272, 0.236099,
		-0.758106, 0.487773, 0.432843,
		29.748283, 34.087219, 27.813866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631294, 33.975933, 28.138212>,  <30.278957, 33.745777, 27.510876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631294, 33.975933, 28.138212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234396, 33.982937, 28.187431>,  <29.996258, 33.987141, 28.216963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234396, 33.982937, 28.187431>,  <30.631294, 33.975933, 28.138212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234396, 33.982937, 28.187431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092963, -0.552546, 0.828282,
		0.082492, 0.833299, 0.546634,
		-0.992247, 0.017510, 0.123046,
		29.936722, 33.988190, 28.224346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019676, 34.585758, 28.264170>,  <30.631294, 33.975933, 28.138212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019676, 34.585758, 28.264170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379410, 34.624958, 28.434628>,  <31.595249, 34.648479, 28.536901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379410, 34.624958, 28.434628>,  <31.019676, 34.585758, 28.264170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379410, 34.624958, 28.434628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405963, 0.174970, -0.896984,
		-0.162468, 0.979684, 0.117571,
		0.899332, 0.098002, 0.426142,
		31.649210, 34.654358, 28.562469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296417, 35.172005, 27.997801>,  <31.019676, 34.585758, 28.264170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296417, 35.172005, 27.997801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620493, 34.974895, 28.124779>,  <31.814938, 34.856628, 28.200966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620493, 34.974895, 28.124779>,  <31.296417, 35.172005, 27.997801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620493, 34.974895, 28.124779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481319, 0.250174, -0.840086,
		0.334555, 0.833420, 0.439868,
		0.810188, -0.492772, 0.317444,
		31.863550, 34.827065, 28.220013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902151, 35.636101, 27.855164>,  <31.296417, 35.172005, 27.997801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902151, 35.636101, 27.855164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051868, 35.266602, 27.887657>,  <32.141701, 35.044903, 27.907154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051868, 35.266602, 27.887657>,  <31.902151, 35.636101, 27.855164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051868, 35.266602, 27.887657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632040, 0.190030, -0.751275,
		0.678550, 0.332540, 0.654971,
		0.374293, -0.923745, 0.081234,
		32.164158, 34.989479, 27.912027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576607, 35.716080, 27.537254>,  <31.902151, 35.636101, 27.855164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576607, 35.716080, 27.537254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512959, 35.321316, 27.547695>,  <32.474770, 35.084457, 27.553959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512959, 35.321316, 27.547695>,  <32.576607, 35.716080, 27.537254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512959, 35.321316, 27.547695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625253, -0.121201, -0.770954,
		0.764028, -0.106354, 0.636356,
		-0.159121, -0.986914, 0.026103,
		32.465221, 35.025242, 27.555527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199955, 35.445183, 27.340567>,  <32.576607, 35.716080, 27.537254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199955, 35.445183, 27.340567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928551, 35.158943, 27.274181>,  <32.765709, 34.987198, 27.234350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928551, 35.158943, 27.274181>,  <33.199955, 35.445183, 27.340567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928551, 35.158943, 27.274181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465197, -0.243720, -0.850995,
		0.568525, -0.654611, 0.498261,
		-0.678507, -0.715601, -0.165962,
		32.724998, 34.944263, 27.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579784, 34.910400, 27.123150>,  <33.199955, 35.445183, 27.340567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579784, 34.910400, 27.123150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215313, 34.835091, 26.976559>,  <32.996632, 34.789906, 26.888603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215313, 34.835091, 26.976559>,  <33.579784, 34.910400, 27.123150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215313, 34.835091, 26.976559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409332, -0.312343, -0.857257,
		0.046935, -0.931125, 0.361668,
		-0.911178, -0.188278, -0.366479,
		32.941959, 34.778606, 26.866615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709560, 34.312141, 26.647627>,  <33.579784, 34.910400, 27.123150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709560, 34.312141, 26.647627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351017, 34.450893, 26.537197>,  <33.135891, 34.534145, 26.470940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351017, 34.450893, 26.537197>,  <33.709560, 34.312141, 26.647627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351017, 34.450893, 26.537197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087336, -0.472358, -0.877069,
		-0.434643, -0.810280, 0.393107,
		-0.896358, 0.346879, -0.276073,
		33.082111, 34.554958, 26.454374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315098, 33.717094, 26.329527>,  <33.709560, 34.312141, 26.647627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315098, 33.717094, 26.329527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169472, 34.068783, 26.206615>,  <33.082096, 34.279797, 26.132868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169472, 34.068783, 26.206615>,  <33.315098, 33.717094, 26.329527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169472, 34.068783, 26.206615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078337, -0.357659, -0.930561,
		-0.928073, -0.314715, 0.199088,
		-0.364067, 0.879224, -0.307280,
		33.060253, 34.332550, 26.114431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872616, 33.464611, 25.840643>,  <33.315098, 33.717094, 26.329527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872616, 33.464611, 25.840643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865284, 33.853600, 25.747723>,  <32.860886, 34.086994, 25.691971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865284, 33.853600, 25.747723>,  <32.872616, 33.464611, 25.840643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865284, 33.853600, 25.747723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106911, -0.232913, -0.966603,
		-0.994100, 0.007120, 0.108236,
		-0.018328, 0.972471, -0.232300,
		32.859787, 34.145340, 25.678032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369572, 33.570438, 25.383478>,  <32.872616, 33.464611, 25.840643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369572, 33.570438, 25.383478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573429, 33.908188, 25.317390>,  <32.695744, 34.110836, 25.277739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573429, 33.908188, 25.317390>,  <32.369572, 33.570438, 25.383478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573429, 33.908188, 25.317390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209626, -0.064384, -0.975660,
		-0.834457, 0.531875, 0.144189,
		0.509645, 0.844372, -0.165220,
		32.726322, 34.161499, 25.267824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921211, 34.030491, 24.853746>,  <32.369572, 33.570438, 25.383478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921211, 34.030491, 24.853746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295448, 34.171581, 24.847462>,  <32.519993, 34.256237, 24.843691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295448, 34.171581, 24.847462>,  <31.921211, 34.030491, 24.853746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295448, 34.171581, 24.847462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075456, 0.156271, -0.984828,
		-0.344920, 0.922585, 0.172822,
		0.935594, 0.352727, -0.015713,
		32.576126, 34.277401, 24.842749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005062, 34.659283, 24.329212>,  <31.921211, 34.030491, 24.853746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005062, 34.659283, 24.329212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367439, 34.498039, 24.381023>,  <32.584866, 34.401295, 24.412111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367439, 34.498039, 24.381023>,  <32.005062, 34.659283, 24.329212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367439, 34.498039, 24.381023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120127, -0.048646, -0.991566,
		0.406011, 0.913858, 0.004354,
		0.905939, -0.403109, 0.129530,
		32.639221, 34.377106, 24.419882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.483736, 34.142723, 32.157120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.825281, 33.938229, 32.118015>,  <31.030209, 33.815533, 32.094551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.825281, 33.938229, 32.118015>,  <30.483736, 34.142723, 32.157120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825281, 33.938229, 32.118015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148479, 0.419269, -0.895638,
		0.498868, 0.750237, 0.433906,
		0.853864, -0.511232, -0.097766,
		31.081440, 33.784859, 32.088684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862820, 34.595398, 31.863138>,  <30.483736, 34.142723, 32.157120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862820, 34.595398, 31.863138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.079201, 34.265976, 31.794868>,  <31.209030, 34.068321, 31.753906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.079201, 34.265976, 31.794868>,  <30.862820, 34.595398, 31.863138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079201, 34.265976, 31.794868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143176, 0.290138, -0.946214,
		0.828777, 0.487420, 0.274864,
		0.540952, -0.823554, -0.170673,
		31.241486, 34.018909, 31.743668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501675, 34.806648, 31.583776>,  <30.862820, 34.595398, 31.863138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501675, 34.806648, 31.583776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.466320, 34.426060, 31.465866>,  <31.445107, 34.197708, 31.395121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.466320, 34.426060, 31.465866>,  <31.501675, 34.806648, 31.583776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466320, 34.426060, 31.465866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195154, 0.273656, -0.941821,
		0.976782, -0.140771, 0.161496,
		-0.088387, -0.951470, -0.294774,
		31.439804, 34.140617, 31.377434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090855, 34.597443, 31.227514>,  <31.501675, 34.806648, 31.583776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090855, 34.597443, 31.227514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.771276, 34.388611, 31.108097>,  <31.579531, 34.263313, 31.036448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.771276, 34.388611, 31.108097>,  <32.090855, 34.597443, 31.227514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771276, 34.388611, 31.108097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327205, 0.039169, -0.944141,
		0.504607, -0.851999, 0.139532,
		-0.798943, -0.522076, -0.298543,
		31.531593, 34.231987, 31.018534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441872, 34.218567, 30.682259>,  <32.090855, 34.597443, 31.227514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441872, 34.218567, 30.682259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.057438, 34.152412, 30.593754>,  <31.826777, 34.112720, 30.540651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.057438, 34.152412, 30.593754>,  <32.441872, 34.218567, 30.682259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057438, 34.152412, 30.593754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192095, 0.175471, -0.965562,
		0.198525, -0.970492, -0.136871,
		-0.961087, -0.165395, -0.221262,
		31.769112, 34.102798, 30.527376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467609, 33.714699, 30.163532>,  <32.441872, 34.218567, 30.682259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467609, 33.714699, 30.163532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.136150, 33.937439, 30.140720>,  <31.937275, 34.071083, 30.127033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.136150, 33.937439, 30.140720>,  <32.467609, 33.714699, 30.163532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136150, 33.937439, 30.140720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175889, 0.162303, -0.970938,
		-0.531415, -0.814599, -0.232436,
		-0.828650, 0.556854, -0.057029,
		31.887556, 34.104496, 30.123611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087662, 33.543961, 29.530556>,  <32.467609, 33.714699, 30.163532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087662, 33.543961, 29.530556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.919413, 33.891331, 29.635559>,  <31.818462, 34.099754, 29.698561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.919413, 33.891331, 29.635559>,  <32.087662, 33.543961, 29.530556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919413, 33.891331, 29.635559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037689, 0.272375, -0.961453,
		-0.906451, -0.414306, -0.081838,
		-0.420626, 0.868425, 0.262509,
		31.793224, 34.151859, 29.714312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562317, 33.604347, 29.131042>,  <32.087662, 33.543961, 29.530556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562317, 33.604347, 29.131042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.649645, 33.973827, 29.256973>,  <31.702042, 34.195515, 29.332533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.649645, 33.973827, 29.256973>,  <31.562317, 33.604347, 29.131042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649645, 33.973827, 29.256973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065282, 0.308064, -0.949123,
		-0.973691, 0.227765, 0.006955,
		0.218320, 0.923699, 0.314828,
		31.715141, 34.250938, 29.351421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079035, 34.010334, 28.814636>,  <31.562317, 33.604347, 29.131042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079035, 34.010334, 28.814636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.371765, 34.265942, 28.909359>,  <31.547403, 34.419308, 28.966192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.371765, 34.265942, 28.909359>,  <31.079035, 34.010334, 28.814636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371765, 34.265942, 28.909359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146804, 0.191504, -0.970451,
		-0.665490, 0.744967, 0.046336,
		0.731828, 0.639023, 0.236808,
		31.591314, 34.457649, 28.980402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438400, 34.327293, 28.913811>,  <31.079035, 34.010334, 28.814636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438400, 34.327293, 28.913811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.114712, 34.117531, 28.807861>,  <29.920498, 33.991673, 28.744291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.114712, 34.117531, 28.807861>,  <30.438400, 34.327293, 28.913811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114712, 34.117531, 28.807861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113992, -0.302125, 0.946428,
		-0.576339, 0.796063, 0.184708,
		-0.809222, -0.524408, -0.264871,
		29.871944, 33.960209, 28.728399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853640, 34.485104, 29.375320>,  <30.438400, 34.327293, 28.913811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853640, 34.485104, 29.375320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.777069, 34.127647, 29.212959>,  <29.731127, 33.913174, 29.115543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.777069, 34.127647, 29.212959>,  <29.853640, 34.485104, 29.375320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777069, 34.127647, 29.212959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328731, -0.331293, 0.884410,
		-0.924820, 0.302730, -0.230351,
		-0.191424, -0.893644, -0.405903,
		29.719643, 33.859554, 29.091188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333475, 34.204330, 29.842819>,  <29.853640, 34.485104, 29.375320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333475, 34.204330, 29.842819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.401854, 33.870232, 29.633766>,  <29.442881, 33.669773, 29.508335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.401854, 33.870232, 29.633766>,  <29.333475, 34.204330, 29.842819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401854, 33.870232, 29.633766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496394, -0.531210, 0.686592,
		-0.851100, 0.142062, -0.505418,
		0.170945, -0.835245, -0.522632,
		29.453136, 33.619659, 29.476976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712246, 33.912708, 29.484436>,  <29.333475, 34.204330, 29.842819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712246, 33.912708, 29.484436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.943571, 33.594097, 29.554974>,  <29.082365, 33.402931, 29.597296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.943571, 33.594097, 29.554974>,  <28.712246, 33.912708, 29.484436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943571, 33.594097, 29.554974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606780, -0.275478, 0.745607,
		-0.545320, -0.538193, -0.642630,
		0.578311, -0.796530, 0.176341,
		29.117065, 33.355137, 29.607876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299568, 33.509018, 29.791405>,  <28.712246, 33.912708, 29.484436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299568, 33.509018, 29.791405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.637184, 33.311840, 29.875881>,  <28.839754, 33.193531, 29.926567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.637184, 33.311840, 29.875881>,  <28.299568, 33.509018, 29.791405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637184, 33.311840, 29.875881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456086, -0.452652, 0.766219,
		-0.282108, -0.743041, -0.606882,
		0.844038, -0.492947, 0.211193,
		28.890396, 33.163956, 29.939240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114716, 32.719048, 30.053997>,  <28.299568, 33.509018, 29.791405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114716, 32.719048, 30.053997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.484648, 32.790775, 30.188179>,  <28.706608, 32.833813, 30.268688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.484648, 32.790775, 30.188179>,  <28.114716, 32.719048, 30.053997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484648, 32.790775, 30.188179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270408, -0.310297, 0.911370,
		0.267521, -0.933573, -0.238482,
		0.924831, 0.179323, 0.335457,
		28.762096, 32.844570, 30.288816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116491, 32.220406, 30.476622>,  <28.114716, 32.719048, 30.053997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116491, 32.220406, 30.476622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.400021, 32.470600, 30.607059>,  <28.570139, 32.620716, 30.685322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.400021, 32.470600, 30.607059>,  <28.116491, 32.220406, 30.476622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400021, 32.470600, 30.607059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184394, -0.281912, 0.941554,
		0.680857, -0.727526, -0.084491,
		0.708825, 0.625484, 0.326094,
		28.612669, 32.658245, 30.704887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543533, 31.848089, 31.061306>,  <28.116491, 32.220406, 30.476622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543533, 31.848089, 31.061306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.655834, 32.225319, 31.132626>,  <28.723215, 32.451656, 31.175417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.655834, 32.225319, 31.132626>,  <28.543533, 31.848089, 31.061306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655834, 32.225319, 31.132626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035722, -0.195910, 0.979971,
		0.959115, -0.268760, -0.088690,
		0.280753, 0.943073, 0.178299,
		28.740061, 32.508240, 31.186115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179523, 31.821943, 31.445328>,  <28.543533, 31.848089, 31.061306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179523, 31.821943, 31.445328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.014435, 32.178028, 31.522461>,  <28.915382, 32.391678, 31.568741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.014435, 32.178028, 31.522461>,  <29.179523, 31.821943, 31.445328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014435, 32.178028, 31.522461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147700, -0.143497, 0.978567,
		0.898802, 0.432357, -0.072260,
		-0.412721, 0.890211, 0.192834,
		28.890619, 32.445091, 31.580311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455582, 32.049530, 32.076729>,  <29.179523, 31.821943, 31.445328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455582, 32.049530, 32.076729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.138273, 32.291557, 32.049572>,  <28.947887, 32.436775, 32.033279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.138273, 32.291557, 32.049572>,  <29.455582, 32.049530, 32.076729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138273, 32.291557, 32.049572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069151, 0.021244, 0.997380,
		0.604929, 0.795888, 0.024989,
		-0.793271, 0.605072, -0.067888,
		28.900291, 32.473080, 32.029205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650816, 32.644176, 32.518105>,  <29.455582, 32.049530, 32.076729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650816, 32.644176, 32.518105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.255484, 32.596485, 32.480179>,  <29.018284, 32.567871, 32.457424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.255484, 32.596485, 32.480179>,  <29.650816, 32.644176, 32.518105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255484, 32.596485, 32.480179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069834, -0.198524, 0.977605,
		-0.135381, 0.972817, 0.187881,
		-0.988330, -0.119228, -0.094812,
		28.958984, 32.560715, 32.451736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307625, 33.097515, 33.019577>,  <29.650816, 32.644176, 32.518105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307625, 33.097515, 33.019577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.034729, 32.818085, 32.933285>,  <28.870991, 32.650425, 32.881508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.034729, 32.818085, 32.933285>,  <29.307625, 33.097515, 33.019577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034729, 32.818085, 32.933285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330077, 0.031007, 0.943445,
		-0.652380, 0.714863, -0.251738,
		-0.682239, -0.698577, -0.215731,
		28.830057, 32.608513, 32.868565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832268, 33.176723, 33.492203>,  <29.307625, 33.097515, 33.019577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832268, 33.176723, 33.492203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.696369, 32.816849, 33.382557>,  <28.614830, 32.600925, 33.316769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.696369, 32.816849, 33.382557>,  <28.832268, 33.176723, 33.492203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696369, 32.816849, 33.382557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334872, -0.156640, 0.929153,
		-0.878881, 0.407473, -0.248061,
		-0.339749, -0.899683, -0.274119,
		28.594444, 32.546944, 33.300320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088207, 33.088615, 33.745010>,  <28.832268, 33.176723, 33.492203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088207, 33.088615, 33.745010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.234993, 32.720268, 33.692329>,  <28.323063, 32.499260, 33.660721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.234993, 32.720268, 33.692329>,  <28.088207, 33.088615, 33.745010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234993, 32.720268, 33.692329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282785, -0.245311, 0.927284,
		-0.886212, -0.303034, -0.350427,
		0.366962, -0.920865, -0.131704,
		28.345081, 32.444008, 33.652817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.458668, 28.537573, 32.391342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227638, 28.862171, 32.426868>,  <33.089020, 29.056931, 32.448185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227638, 28.862171, 32.426868>,  <33.458668, 28.537573, 32.391342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227638, 28.862171, 32.426868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217061, -0.047784, -0.974988,
		-0.786953, -0.582404, 0.203743,
		-0.577572, 0.811494, 0.088813,
		33.054367, 29.105619, 32.453514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808678, 28.380693, 31.999004>,  <33.458668, 28.537573, 32.391342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808678, 28.380693, 31.999004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.789696, 28.779175, 32.028206>,  <32.778309, 29.018263, 32.045727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.789696, 28.779175, 32.028206>,  <32.808678, 28.380693, 31.999004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789696, 28.779175, 32.028206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290039, 0.056197, -0.955364,
		-0.955838, -0.066509, 0.286270,
		-0.047452, 0.996202, 0.073005,
		32.775459, 29.078035, 32.050106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081310, 28.648552, 31.731873>,  <32.808678, 28.380693, 31.999004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081310, 28.648552, 31.731873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365246, 28.929428, 31.709736>,  <32.535606, 29.097954, 31.696455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365246, 28.929428, 31.709736>,  <32.081310, 28.648552, 31.731873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365246, 28.929428, 31.709736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181340, 0.106264, -0.977662,
		-0.680625, 0.704014, 0.202765,
		0.709835, 0.702191, -0.055340,
		32.578197, 29.140085, 31.693134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784184, 29.331345, 31.294321>,  <32.081310, 28.648552, 31.731873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784184, 29.331345, 31.294321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.181973, 29.372532, 31.286129>,  <32.420647, 29.397243, 31.281214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.181973, 29.372532, 31.286129>,  <31.784184, 29.331345, 31.294321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181973, 29.372532, 31.286129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039481, 0.186048, -0.981747,
		-0.097277, 0.977131, 0.189085,
		0.994474, 0.102967, -0.020480,
		32.480316, 29.403421, 31.279985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959112, 29.920212, 30.808046>,  <31.784184, 29.331345, 31.294321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959112, 29.920212, 30.808046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313545, 29.742558, 30.861111>,  <32.526207, 29.635965, 30.892948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313545, 29.742558, 30.861111>,  <31.959112, 29.920212, 30.808046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313545, 29.742558, 30.861111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238148, 0.190670, -0.952329,
		0.397669, 0.875436, 0.274720,
		0.886084, -0.444136, 0.132659,
		32.579369, 29.609316, 30.900909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364967, 30.356163, 30.507008>,  <31.959112, 29.920212, 30.808046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364967, 30.356163, 30.507008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.564037, 30.009216, 30.506741>,  <32.683479, 29.801048, 30.506580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.564037, 30.009216, 30.506741>,  <32.364967, 30.356163, 30.507008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564037, 30.009216, 30.506741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304774, 0.175592, -0.936099,
		0.812057, 0.465666, 0.351737,
		0.497671, -0.867366, -0.000668,
		32.713337, 29.749006, 30.506540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967979, 30.532183, 30.231680>,  <32.364967, 30.356163, 30.507008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967979, 30.532183, 30.231680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946327, 30.132980, 30.218693>,  <32.933334, 29.893459, 30.210899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946327, 30.132980, 30.218693>,  <32.967979, 30.532183, 30.231680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946327, 30.132980, 30.218693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286395, 0.015633, -0.957984,
		0.956581, -0.061158, 0.284978,
		-0.054133, -0.998006, -0.032470,
		32.930088, 29.833578, 30.208952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651230, 30.284880, 29.858925>,  <32.967979, 30.532183, 30.231680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651230, 30.284880, 29.858925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.379295, 29.993210, 29.827625>,  <33.216133, 29.818209, 29.808846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.379295, 29.993210, 29.827625>,  <33.651230, 30.284880, 29.858925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379295, 29.993210, 29.827625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097154, 0.016213, -0.995137,
		0.726897, -0.684136, 0.059820,
		-0.679840, -0.729174, -0.078251,
		33.175343, 29.774458, 29.804150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849339, 29.943380, 29.231176>,  <33.651230, 30.284880, 29.858925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849339, 29.943380, 29.231176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484886, 29.784016, 29.273350>,  <33.266216, 29.688396, 29.298655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484886, 29.784016, 29.273350>,  <33.849339, 29.943380, 29.231176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484886, 29.784016, 29.273350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142652, 0.064867, -0.987645,
		0.386650, -0.914910, -0.115936,
		-0.911127, -0.398412, 0.105433,
		33.211548, 29.664492, 29.304979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727783, 29.385715, 28.710253>,  <33.849339, 29.943380, 29.231176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727783, 29.385715, 28.710253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374569, 29.544365, 28.810600>,  <33.162640, 29.639555, 28.870810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374569, 29.544365, 28.810600>,  <33.727783, 29.385715, 28.710253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374569, 29.544365, 28.810600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235106, 0.088775, -0.967907,
		-0.406166, -0.913679, 0.014857,
		-0.883037, 0.396624, 0.250868,
		33.109657, 29.663351, 28.885860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275162, 29.047300, 28.296204>,  <33.727783, 29.385715, 28.710253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275162, 29.047300, 28.296204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056152, 29.361851, 28.410622>,  <32.924747, 29.550581, 28.479273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056152, 29.361851, 28.410622>,  <33.275162, 29.047300, 28.296204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056152, 29.361851, 28.410622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182460, 0.221418, -0.957958,
		-0.816653, -0.576700, 0.022251,
		-0.547528, 0.786378, 0.286046,
		32.891895, 29.597765, 28.496435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562901, 28.946356, 27.927824>,  <33.275162, 29.047300, 28.296204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562901, 28.946356, 27.927824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565075, 29.324886, 28.057091>,  <32.566380, 29.552004, 28.134651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565075, 29.324886, 28.057091>,  <32.562901, 28.946356, 27.927824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565075, 29.324886, 28.057091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216045, 0.316652, -0.923611,
		-0.976368, -0.064798, 0.206170,
		0.005436, 0.946326, 0.323168,
		32.566708, 29.608784, 28.154041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992981, 29.242601, 27.572275>,  <32.562901, 28.946356, 27.927824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992981, 29.242601, 27.572275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.219875, 29.549740, 27.691376>,  <32.356010, 29.734024, 27.762836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.219875, 29.549740, 27.691376>,  <31.992981, 29.242601, 27.572275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219875, 29.549740, 27.691376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070520, 0.405501, -0.911370,
		-0.820532, 0.495963, 0.284163,
		0.567235, 0.767847, 0.297751,
		32.390045, 29.780094, 27.780701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575920, 29.871912, 27.482710>,  <31.992981, 29.242601, 27.572275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575920, 29.871912, 27.482710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966665, 29.953266, 27.456268>,  <32.201111, 30.002079, 27.440403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966665, 29.953266, 27.456268>,  <31.575920, 29.871912, 27.482710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966665, 29.953266, 27.456268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164904, 0.519543, -0.838380,
		-0.136171, 0.829885, 0.541062,
		0.976864, 0.203387, -0.066105,
		32.259724, 30.014282, 27.436438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065884, 30.342730, 27.195887>,  <31.575920, 29.871912, 27.482710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065884, 30.342730, 27.195887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.883385, 30.020962, 27.043705>,  <30.773886, 29.827900, 26.952396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.883385, 30.020962, 27.043705>,  <31.065884, 30.342730, 27.195887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883385, 30.020962, 27.043705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332533, -0.242445, 0.911395,
		-0.825385, 0.542335, -0.156882,
		-0.456247, -0.804421, -0.380455,
		30.746511, 29.779636, 26.929569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270769, 30.434610, 27.312193>,  <31.065884, 30.342730, 27.195887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270769, 30.434610, 27.312193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.326473, 30.039658, 27.282032>,  <30.359896, 29.802687, 27.263935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.326473, 30.039658, 27.282032>,  <30.270769, 30.434610, 27.312193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326473, 30.039658, 27.282032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375135, -0.123070, 0.918764,
		-0.916450, -0.099661, -0.387540,
		0.139259, -0.987381, -0.075401,
		30.368252, 29.743443, 27.259411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674091, 30.106190, 27.604378>,  <30.270769, 30.434610, 27.312193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674091, 30.106190, 27.604378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.932863, 29.801193, 27.600613>,  <30.088125, 29.618195, 27.598354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.932863, 29.801193, 27.600613>,  <29.674091, 30.106190, 27.604378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932863, 29.801193, 27.600613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338190, -0.297952, 0.892666,
		-0.683456, -0.574308, -0.450621,
		0.646928, -0.762493, -0.009412,
		30.126942, 29.572445, 27.597790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250624, 29.563553, 27.694304>,  <29.674091, 30.106190, 27.604378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250624, 29.563553, 27.694304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625799, 29.488483, 27.810955>,  <29.850904, 29.443441, 27.880945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625799, 29.488483, 27.810955>,  <29.250624, 29.563553, 27.694304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625799, 29.488483, 27.810955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338781, -0.316097, 0.886177,
		-0.074131, -0.929979, -0.360061,
		0.937940, -0.187675, 0.291627,
		29.907181, 29.432180, 27.898443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231991, 28.883223, 28.075907>,  <29.250624, 29.563553, 27.694304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231991, 28.883223, 28.075907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.580139, 29.047192, 28.185024>,  <29.789028, 29.145573, 28.250496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.580139, 29.047192, 28.185024>,  <29.231991, 28.883223, 28.075907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580139, 29.047192, 28.185024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071245, -0.443344, 0.893516,
		0.487215, -0.797125, -0.356669,
		0.870371, 0.409923, 0.272795,
		29.841251, 29.170168, 28.266863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516592, 28.338224, 28.559500>,  <29.231991, 28.883223, 28.075907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516592, 28.338224, 28.559500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.718946, 28.678520, 28.616524>,  <29.840359, 28.882698, 28.650738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.718946, 28.678520, 28.616524>,  <29.516592, 28.338224, 28.559500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718946, 28.678520, 28.616524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001076, -0.165892, 0.986143,
		0.862600, -0.498722, -0.084837,
		0.505886, 0.850739, 0.142562,
		29.870712, 28.933743, 28.659292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203262, 28.209442, 28.861485>,  <29.516592, 28.338224, 28.559500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203262, 28.209442, 28.861485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.135359, 28.588924, 28.968170>,  <30.094616, 28.816614, 29.032181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.135359, 28.588924, 28.968170>,  <30.203262, 28.209442, 28.861485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135359, 28.588924, 28.968170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159943, -0.240530, 0.957373,
		0.972419, 0.205183, -0.110907,
		-0.169760, 0.948707, 0.266714,
		30.084431, 28.873537, 29.048183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646355, 28.340137, 29.450157>,  <30.203262, 28.209442, 28.861485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646355, 28.340137, 29.450157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374010, 28.630974, 29.485413>,  <30.210604, 28.805475, 29.506565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374010, 28.630974, 29.485413>,  <30.646355, 28.340137, 29.450157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374010, 28.630974, 29.485413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072929, -0.187042, 0.979641,
		0.728773, 0.660571, 0.180375,
		-0.680861, 0.727091, 0.088137,
		30.169752, 28.849100, 29.511854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915346, 28.761543, 29.968025>,  <30.646355, 28.340137, 29.450157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915346, 28.761543, 29.968025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526215, 28.851318, 29.945301>,  <30.292736, 28.905184, 29.931667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526215, 28.851318, 29.945301>,  <30.915346, 28.761543, 29.968025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526215, 28.851318, 29.945301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037020, 0.091426, 0.995124,
		0.228538, 0.970190, -0.080633,
		-0.972831, 0.224439, -0.056810,
		30.234365, 28.918650, 29.928259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821518, 29.293907, 30.385672>,  <30.915346, 28.761543, 29.968025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821518, 29.293907, 30.385672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.456285, 29.132572, 30.361660>,  <30.237146, 29.035770, 30.347252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.456285, 29.132572, 30.361660>,  <30.821518, 29.293907, 30.385672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456285, 29.132572, 30.361660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124868, 0.136409, 0.982752,
		-0.388194, 0.904826, -0.174916,
		-0.913079, -0.403339, -0.060030,
		30.182362, 29.011570, 30.343651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467606, 29.584230, 30.977760>,  <30.821518, 29.293907, 30.385672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467606, 29.584230, 30.977760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.236937, 29.267239, 30.898335>,  <30.098536, 29.077044, 30.850679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.236937, 29.267239, 30.898335>,  <30.467606, 29.584230, 30.977760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236937, 29.267239, 30.898335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228935, -0.076562, 0.970426,
		-0.784244, 0.605076, -0.137275,
		-0.576671, -0.792478, -0.198566,
		30.063934, 29.029495, 30.838764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883617, 29.745644, 31.239227>,  <30.467606, 29.584230, 30.977760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883617, 29.745644, 31.239227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.875002, 29.346714, 31.211277>,  <29.869833, 29.107357, 31.194506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.875002, 29.346714, 31.211277>,  <29.883617, 29.745644, 31.239227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875002, 29.346714, 31.211277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267107, -0.061612, 0.961695,
		-0.963426, 0.039377, -0.265065,
		-0.021537, -0.997323, -0.069877,
		29.868542, 29.047518, 31.190313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455034, 29.587484, 31.760635>,  <29.883617, 29.745644, 31.239227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455034, 29.587484, 31.760635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.596056, 29.226002, 31.663460>,  <29.680670, 29.009111, 31.605154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.596056, 29.226002, 31.663460>,  <29.455034, 29.587484, 31.760635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596056, 29.226002, 31.663460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378383, -0.375104, 0.846241,
		-0.855881, -0.206422, -0.474192,
		0.352554, -0.903707, -0.242938,
		29.701822, 28.954889, 31.590578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948784, 29.204832, 31.840103>,  <29.455034, 29.587484, 31.760635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948784, 29.204832, 31.840103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.272358, 28.970322, 31.857552>,  <29.466503, 28.829615, 31.868021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.272358, 28.970322, 31.857552>,  <28.948784, 29.204832, 31.840103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272358, 28.970322, 31.857552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304763, -0.354739, 0.883901,
		-0.502736, -0.728313, -0.465636,
		0.808936, -0.586277, 0.043623,
		29.515039, 28.794439, 31.870638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519339, 28.615616, 31.665415>,  <28.948784, 29.204832, 31.840103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519339, 28.615616, 31.665415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.183060, 28.786289, 31.798782>,  <27.981293, 28.888693, 31.878803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.183060, 28.786289, 31.798782>,  <28.519339, 28.615616, 31.665415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183060, 28.786289, 31.798782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030533, 0.577393, -0.815896,
		-0.540644, -0.696102, -0.472385,
		-0.840698, 0.426686, 0.333417,
		27.930851, 28.914295, 31.898808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115738, 28.577406, 31.130157>,  <28.519339, 28.615616, 31.665415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115738, 28.577406, 31.130157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.927422, 28.854530, 31.348648>,  <27.814432, 29.020805, 31.479742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.927422, 28.854530, 31.348648>,  <28.115738, 28.577406, 31.130157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927422, 28.854530, 31.348648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172550, 0.534870, -0.827128,
		-0.865206, -0.483656, -0.132267,
		-0.470791, 0.692813, 0.546228,
		27.786184, 29.062374, 31.512516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409027, 28.630762, 30.908764>,  <28.115738, 28.577406, 31.130157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409027, 28.630762, 30.908764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.482231, 28.965889, 31.114510>,  <27.526154, 29.166965, 31.237957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.482231, 28.965889, 31.114510>,  <27.409027, 28.630762, 30.908764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482231, 28.965889, 31.114510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296682, 0.545874, -0.783583,
		-0.937276, -0.009197, 0.348467,
		0.183012, 0.837817, 0.514363,
		27.537134, 29.217234, 31.268818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859024, 29.023630, 30.794512>,  <27.409027, 28.630762, 30.908764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859024, 29.023630, 30.794512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.143772, 29.278591, 30.912468>,  <27.314621, 29.431568, 30.983242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.143772, 29.278591, 30.912468>,  <26.859024, 29.023630, 30.794512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143772, 29.278591, 30.912468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133007, 0.534643, -0.834545,
		-0.689602, 0.554865, 0.465375,
		0.711870, 0.637402, 0.294890,
		27.357332, 29.469812, 31.000935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569859, 29.702906, 30.652981>,  <26.859024, 29.023630, 30.794512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569859, 29.702906, 30.652981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.962893, 29.769722, 30.685532>,  <27.198713, 29.809813, 30.705063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.962893, 29.769722, 30.685532>,  <26.569859, 29.702906, 30.652981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962893, 29.769722, 30.685532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046939, 0.646908, -0.761122,
		-0.179785, 0.744048, 0.643483,
		0.982585, 0.167043, 0.081379,
		27.257668, 29.819836, 30.709946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710434, 30.371494, 30.485777>,  <26.569859, 29.702906, 30.652981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710434, 30.371494, 30.485777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.083504, 30.238926, 30.428818>,  <27.307346, 30.159384, 30.394642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.083504, 30.238926, 30.428818>,  <26.710434, 30.371494, 30.485777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083504, 30.238926, 30.428818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142589, 0.701343, -0.698417,
		0.331340, 0.631091, 0.701383,
		0.932675, -0.331423, -0.142396,
		27.363306, 30.139500, 30.386099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159311, 30.983097, 30.382250>,  <26.710434, 30.371494, 30.485777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159311, 30.983097, 30.382250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.382673, 30.676682, 30.254898>,  <27.516691, 30.492832, 30.178488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.382673, 30.676682, 30.254898>,  <27.159311, 30.983097, 30.382250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382673, 30.676682, 30.254898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297502, 0.543183, -0.785140,
		0.774387, 0.343708, 0.531215,
		0.558406, -0.766040, -0.318380,
		27.550196, 30.446869, 30.159384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513466, 31.368006, 29.850838>,  <27.159311, 30.983097, 30.382250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513466, 31.368006, 29.850838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.603575, 30.987003, 29.768875>,  <27.657640, 30.758402, 29.719698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.603575, 30.987003, 29.768875>,  <27.513466, 31.368006, 29.850838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603575, 30.987003, 29.768875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089066, 0.229565, -0.969210,
		0.970217, 0.200084, 0.136550,
		0.225270, -0.952505, -0.204907,
		27.671156, 30.701252, 29.707403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188074, 31.406887, 29.556498>,  <27.513466, 31.368006, 29.850838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188074, 31.406887, 29.556498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.012810, 31.070282, 29.430084>,  <27.907652, 30.868319, 29.354237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.012810, 31.070282, 29.430084>,  <28.188074, 31.406887, 29.556498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012810, 31.070282, 29.430084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169668, 0.267836, -0.948407,
		0.882740, -0.469174, 0.025423,
		-0.438159, -0.841511, -0.316033,
		27.881363, 30.817829, 29.335274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597643, 31.195314, 28.947491>,  <28.188074, 31.406887, 29.556498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597643, 31.195314, 28.947491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.241764, 31.013573, 28.929611>,  <28.028236, 30.904528, 28.918884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.241764, 31.013573, 28.929611>,  <28.597643, 31.195314, 28.947491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241764, 31.013573, 28.929611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067591, 0.227911, -0.971333,
		0.451518, -0.861172, -0.233482,
		-0.889698, -0.454356, -0.044698,
		27.974854, 30.877266, 28.916203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619469, 30.724112, 28.397539>,  <28.597643, 31.195314, 28.947491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619469, 30.724112, 28.397539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.232410, 30.813629, 28.444153>,  <28.000175, 30.867340, 28.472122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.232410, 30.813629, 28.444153>,  <28.619469, 30.724112, 28.397539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232410, 30.813629, 28.444153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079183, 0.169190, -0.982398,
		-0.239572, -0.959839, -0.145995,
		-0.967644, 0.223795, 0.116536,
		27.942118, 30.880768, 28.479115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217730, 30.274357, 27.961628>,  <28.619469, 30.724112, 28.397539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217730, 30.274357, 27.961628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.974958, 30.587601, 28.015862>,  <27.829296, 30.775547, 28.048401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.974958, 30.587601, 28.015862>,  <28.217730, 30.274357, 27.961628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974958, 30.587601, 28.015862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102262, 0.092229, -0.990473,
		-0.788152, -0.615008, 0.024106,
		-0.606926, 0.783108, 0.135583,
		27.792881, 30.822533, 28.056536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779551, 30.168102, 27.470680>,  <28.217730, 30.274357, 27.961628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779551, 30.168102, 27.470680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.679882, 30.546043, 27.555691>,  <27.620081, 30.772808, 27.606697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.679882, 30.546043, 27.555691>,  <27.779551, 30.168102, 27.470680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679882, 30.546043, 27.555691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217710, 0.159181, -0.962945,
		-0.943672, -0.286206, 0.166041,
		-0.249170, 0.944853, 0.212524,
		27.605131, 30.829500, 27.619448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123171, 30.306904, 27.209423>,  <27.779551, 30.168102, 27.470680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123171, 30.306904, 27.209423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.307425, 30.661163, 27.232883>,  <27.417976, 30.873720, 27.246960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.307425, 30.661163, 27.232883>,  <27.123171, 30.306904, 27.209423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307425, 30.661163, 27.232883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038385, 0.085894, -0.995565,
		-0.886759, 0.456341, 0.073562,
		0.460635, 0.885650, 0.058650,
		27.445616, 30.926859, 27.250479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.226402, 37.908108, 16.640654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.591972, 38.050575, 16.718506>,  <39.811314, 38.136055, 16.765217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.591972, 38.050575, 16.718506>,  <39.226402, 37.908108, 16.640654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591972, 38.050575, 16.718506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125407, -0.703870, 0.699172,
		0.386015, -0.614585, -0.687952,
		0.913929, 0.356165, 0.194631,
		39.866150, 38.157425, 16.776896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631397, 37.222084, 16.764887>,  <39.226402, 37.908108, 16.640654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631397, 37.222084, 16.764887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.871391, 37.508369, 16.907864>,  <40.015388, 37.680141, 16.993649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.871391, 37.508369, 16.907864>,  <39.631397, 37.222084, 16.764887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871391, 37.508369, 16.907864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346067, -0.635024, 0.690639,
		0.721286, -0.290676, -0.628693,
		0.599987, 0.715718, 0.357440,
		40.051388, 37.723083, 17.015095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316135, 36.964436, 16.931156>,  <39.631397, 37.222084, 16.764887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316135, 36.964436, 16.931156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.320797, 37.297306, 17.152912>,  <40.323593, 37.497028, 17.285965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.320797, 37.297306, 17.152912>,  <40.316135, 36.964436, 16.931156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320797, 37.297306, 17.152912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540553, -0.471675, 0.696652,
		0.841229, 0.291559, -0.455332,
		0.011654, 0.832175, 0.554390,
		40.324291, 37.546959, 17.319229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031166, 37.069721, 17.203423>,  <40.316135, 36.964436, 16.931156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031166, 37.069721, 17.203423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.775383, 37.274612, 17.432758>,  <40.621914, 37.397549, 17.570360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.775383, 37.274612, 17.432758>,  <41.031166, 37.069721, 17.203423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775383, 37.274612, 17.432758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283653, -0.535938, 0.795180,
		0.714590, 0.671110, 0.197412,
		-0.639454, 0.512232, 0.573339,
		40.583546, 37.428284, 17.604759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352722, 37.293209, 17.720648>,  <41.031166, 37.069721, 17.203423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352722, 37.293209, 17.720648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978241, 37.296513, 17.861195>,  <40.753551, 37.298492, 17.945522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978241, 37.296513, 17.861195>,  <41.352722, 37.293209, 17.720648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978241, 37.296513, 17.861195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286742, -0.560159, 0.777175,
		0.203237, 0.828344, 0.522054,
		-0.936202, 0.008256, 0.351366,
		40.697380, 37.298988, 17.966604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399448, 37.340248, 18.497610>,  <41.352722, 37.293209, 17.720648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399448, 37.340248, 18.497610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.023216, 37.213421, 18.448982>,  <40.797478, 37.137325, 18.419806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.023216, 37.213421, 18.448982>,  <41.399448, 37.340248, 18.497610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023216, 37.213421, 18.448982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136419, -0.680664, 0.719782,
		-0.310968, 0.660427, 0.683472,
		-0.940579, -0.317068, -0.121570,
		40.741043, 37.118301, 18.412512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136932, 37.292660, 19.203119>,  <41.399448, 37.340248, 18.497610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136932, 37.292660, 19.203119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918167, 37.040413, 18.982861>,  <40.786907, 36.889065, 18.850706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918167, 37.040413, 18.982861>,  <41.136932, 37.292660, 19.203119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918167, 37.040413, 18.982861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011038, -0.652241, 0.757931,
		-0.837119, 0.420598, 0.349757,
		-0.546910, -0.630617, -0.550646,
		40.754093, 36.851227, 18.817667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637798, 37.120441, 19.677841>,  <41.136932, 37.292660, 19.203119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637798, 37.120441, 19.677841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.597195, 36.848557, 19.387272>,  <40.572830, 36.685425, 19.212931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.597195, 36.848557, 19.387272>,  <40.637798, 37.120441, 19.677841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597195, 36.848557, 19.387272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325220, -0.667400, 0.669932,
		-0.940174, 0.304253, -0.153306,
		-0.101513, -0.679711, -0.726421,
		40.566742, 36.644642, 19.169346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966141, 36.922787, 19.735889>,  <40.637798, 37.120441, 19.677841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966141, 36.922787, 19.735889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.194706, 36.645000, 19.560982>,  <40.331844, 36.478329, 19.456038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.194706, 36.645000, 19.560982>,  <39.966141, 36.922787, 19.735889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194706, 36.645000, 19.560982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291386, -0.669796, 0.682984,
		-0.767192, -0.262849, -0.585086,
		0.571411, -0.694466, -0.437272,
		40.366131, 36.436661, 19.429800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560184, 36.409069, 19.642513>,  <39.966141, 36.922787, 19.735889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560184, 36.409069, 19.642513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.934864, 36.269058, 19.639267>,  <40.159672, 36.185051, 19.637320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.934864, 36.269058, 19.639267>,  <39.560184, 36.409069, 19.642513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934864, 36.269058, 19.639267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270167, -0.737339, 0.619145,
		-0.222703, -0.577763, -0.785235,
		0.936704, -0.350030, -0.008115,
		40.215874, 36.164051, 19.636833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443928, 35.696968, 19.660181>,  <39.560184, 36.409069, 19.642513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443928, 35.696968, 19.660181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826447, 35.745918, 19.766403>,  <40.055958, 35.775288, 19.830137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826447, 35.745918, 19.766403>,  <39.443928, 35.696968, 19.660181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826447, 35.745918, 19.766403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091552, -0.737220, 0.669421,
		0.277694, -0.664478, -0.693797,
		0.956297, 0.122376, 0.265556,
		40.113335, 35.782631, 19.846069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781784, 35.038616, 19.582283>,  <39.443928, 35.696968, 19.660181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781784, 35.038616, 19.582283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.001171, 35.228210, 19.857826>,  <40.132801, 35.341969, 20.023151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.001171, 35.228210, 19.857826>,  <39.781784, 35.038616, 19.582283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001171, 35.228210, 19.857826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017407, -0.830114, 0.557321,
		0.835993, -0.293680, -0.463539,
		0.548464, 0.473985, 0.688858,
		40.165710, 35.370407, 20.064484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354786, 34.589832, 19.843840>,  <39.781784, 35.038616, 19.582283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354786, 34.589832, 19.843840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.323215, 34.854553, 20.142044>,  <40.304272, 35.013386, 20.320967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.323215, 34.854553, 20.142044>,  <40.354786, 34.589832, 19.843840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323215, 34.854553, 20.142044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112983, -0.737086, 0.666287,
		0.990457, 0.136818, -0.016597,
		-0.078927, 0.661804, 0.745511,
		40.299538, 35.053093, 20.365698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854103, 34.329964, 20.371380>,  <40.354786, 34.589832, 19.843840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854103, 34.329964, 20.371380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.596870, 34.578594, 20.550308>,  <40.442532, 34.727772, 20.657665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.596870, 34.578594, 20.550308>,  <40.854103, 34.329964, 20.371380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596870, 34.578594, 20.550308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042195, -0.611994, 0.789736,
		0.764636, 0.488989, 0.419788,
		-0.643080, 0.621573, 0.447320,
		40.403946, 34.765068, 20.684504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929337, 34.241314, 21.081657>,  <40.854103, 34.329964, 20.371380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929337, 34.241314, 21.081657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.566700, 34.408581, 21.058933>,  <40.349117, 34.508942, 21.045300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.566700, 34.408581, 21.058933>,  <40.929337, 34.241314, 21.081657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566700, 34.408581, 21.058933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338106, -0.639177, 0.690751,
		0.252537, 0.645437, 0.720858,
		-0.906592, 0.418167, -0.056810,
		40.294724, 34.534031, 21.041889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754524, 34.276573, 21.688227>,  <40.929337, 34.241314, 21.081657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754524, 34.276573, 21.688227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.406876, 34.327503, 21.497055>,  <40.198288, 34.358063, 21.382353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.406876, 34.327503, 21.497055>,  <40.754524, 34.276573, 21.688227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406876, 34.327503, 21.497055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477624, -0.467038, 0.744144,
		-0.128463, 0.875022, 0.466726,
		-0.869122, 0.127324, -0.477929,
		40.146137, 34.365700, 21.353676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252476, 34.285812, 22.216499>,  <40.754524, 34.276573, 21.688227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252476, 34.285812, 22.216499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.057560, 34.208420, 21.875885>,  <39.940609, 34.161983, 21.671516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.057560, 34.208420, 21.875885>,  <40.252476, 34.285812, 22.216499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057560, 34.208420, 21.875885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621599, -0.608038, 0.493867,
		-0.613322, 0.769970, 0.176021,
		-0.487290, -0.193485, -0.851535,
		39.911373, 34.150375, 21.620424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552746, 34.443466, 22.329893>,  <40.252476, 34.285812, 22.216499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552746, 34.443466, 22.329893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.536034, 34.205032, 22.009159>,  <39.526009, 34.061974, 21.816719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.536034, 34.205032, 22.009159>,  <39.552746, 34.443466, 22.329893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536034, 34.205032, 22.009159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749880, -0.511635, 0.419417,
		-0.660254, 0.618804, -0.425613,
		-0.041778, -0.596080, -0.801837,
		39.523499, 34.026207, 21.768608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866402, 34.336769, 22.230108>,  <39.552746, 34.443466, 22.329893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866402, 34.336769, 22.230108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.025829, 34.017658, 22.049133>,  <39.121487, 33.826191, 21.940548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.025829, 34.017658, 22.049133>,  <38.866402, 34.336769, 22.230108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025829, 34.017658, 22.049133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797303, -0.545201, 0.258966,
		-0.453266, 0.257514, -0.853368,
		0.398569, -0.797773, -0.452438,
		39.145401, 33.778328, 21.913403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271255, 34.034542, 21.877253>,  <38.866402, 34.336769, 22.230108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271255, 34.034542, 21.877253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.545742, 33.744644, 21.902077>,  <38.710434, 33.570705, 21.916971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.545742, 33.744644, 21.902077>,  <38.271255, 34.034542, 21.877253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545742, 33.744644, 21.902077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709870, -0.648629, 0.274527,
		-0.158705, -0.232442, -0.959575,
		0.686220, -0.724742, 0.062063,
		38.751610, 33.527222, 21.920696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171402, 33.433167, 21.439957>,  <38.271255, 34.034542, 21.877253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171402, 33.433167, 21.439957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359798, 33.309437, 21.770409>,  <38.472836, 33.235199, 21.968679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359798, 33.309437, 21.770409>,  <38.171402, 33.433167, 21.439957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359798, 33.309437, 21.770409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742482, -0.644691, 0.181917,
		0.476327, -0.699067, -0.533309,
		0.470992, -0.309321, 0.826128,
		38.501095, 33.216640, 22.018248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442959, 33.488159, 21.381058>,  <38.171402, 33.433167, 21.439957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442959, 33.488159, 21.381058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089699, 33.583519, 21.219456>,  <36.877743, 33.640736, 21.122494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089699, 33.583519, 21.219456>,  <37.442959, 33.488159, 21.381058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089699, 33.583519, 21.219456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392731, 0.846750, -0.358853,
		0.256542, -0.475585, -0.841430,
		-0.883147, 0.238395, -0.404004,
		36.824757, 33.655037, 21.098255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507107, 33.398602, 20.683519>,  <37.442959, 33.488159, 21.381058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507107, 33.398602, 20.683519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.187702, 33.639332, 20.689056>,  <36.996059, 33.783768, 20.692379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.187702, 33.639332, 20.689056>,  <37.507107, 33.398602, 20.683519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187702, 33.639332, 20.689056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345364, 0.476826, -0.808308,
		-0.493057, -0.640662, -0.588598,
		-0.798510, 0.601823, 0.013841,
		36.948151, 33.819878, 20.693209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207478, 33.471107, 19.996347>,  <37.507107, 33.398602, 20.683519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207478, 33.471107, 19.996347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090492, 33.799198, 20.193001>,  <37.020302, 33.996052, 20.310993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.090492, 33.799198, 20.193001>,  <37.207478, 33.471107, 19.996347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090492, 33.799198, 20.193001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318810, 0.568327, -0.758528,
		-0.901569, -0.065102, -0.427708,
		-0.292460, 0.820223, 0.491631,
		37.002754, 34.045265, 20.340490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671883, 33.756226, 19.487091>,  <37.207478, 33.471107, 19.996347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671883, 33.756226, 19.487091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774895, 34.071766, 19.710300>,  <36.836700, 34.261089, 19.844225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774895, 34.071766, 19.710300>,  <36.671883, 33.756226, 19.487091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774895, 34.071766, 19.710300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017110, 0.573688, -0.818895,
		-0.966119, 0.220436, 0.134244,
		0.257528, 0.788854, 0.558022,
		36.852154, 34.308422, 19.877707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337967, 34.243370, 19.136402>,  <36.671883, 33.756226, 19.487091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337967, 34.243370, 19.136402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583481, 34.435356, 19.387131>,  <36.730789, 34.550549, 19.537567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583481, 34.435356, 19.387131>,  <36.337967, 34.243370, 19.136402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583481, 34.435356, 19.387131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288796, 0.602442, -0.744084,
		-0.734755, 0.637731, 0.231159,
		0.613785, 0.479962, 0.626821,
		36.767616, 34.579346, 19.575176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125439, 34.930347, 19.178846>,  <36.337967, 34.243370, 19.136402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125439, 34.930347, 19.178846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.508358, 34.939377, 19.294136>,  <36.738110, 34.944794, 19.363310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.508358, 34.939377, 19.294136>,  <36.125439, 34.930347, 19.178846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508358, 34.939377, 19.294136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196570, 0.680232, -0.706148,
		-0.211999, 0.732649, 0.646747,
		0.957297, 0.022571, 0.288225,
		36.795547, 34.946148, 19.380604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279911, 35.680038, 19.170471>,  <36.125439, 34.930347, 19.178846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279911, 35.680038, 19.170471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.611866, 35.459702, 19.135029>,  <36.811039, 35.327499, 19.113764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.611866, 35.459702, 19.135029>,  <36.279911, 35.680038, 19.170471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611866, 35.459702, 19.135029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276819, 0.544413, -0.791824,
		0.484411, 0.632600, 0.604288,
		0.829890, -0.550847, -0.088605,
		36.860832, 35.294449, 19.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826424, 36.178444, 19.132492>,  <36.279911, 35.680038, 19.170471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826424, 36.178444, 19.132492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.981556, 35.834377, 19.000004>,  <37.074635, 35.627937, 18.920511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.981556, 35.834377, 19.000004>,  <36.826424, 36.178444, 19.132492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981556, 35.834377, 19.000004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380973, 0.476807, -0.792158,
		0.839313, 0.181037, 0.512619,
		0.387830, -0.860163, -0.331220,
		37.097904, 35.576328, 18.900639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494469, 36.381443, 18.875658>,  <36.826424, 36.178444, 19.132492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494469, 36.381443, 18.875658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.402287, 36.028347, 18.711876>,  <37.346977, 35.816490, 18.613605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.402287, 36.028347, 18.711876>,  <37.494469, 36.381443, 18.875658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402287, 36.028347, 18.711876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360313, 0.313463, -0.878587,
		0.903916, -0.350011, 0.245824,
		-0.230458, -0.882742, -0.409457,
		37.333149, 35.763523, 18.589039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100544, 36.059887, 18.620409>,  <37.494469, 36.381443, 18.875658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100544, 36.059887, 18.620409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.771667, 35.944225, 18.424290>,  <37.574341, 35.874828, 18.306618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.771667, 35.944225, 18.424290>,  <38.100544, 36.059887, 18.620409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771667, 35.944225, 18.424290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390396, 0.340388, -0.855410,
		0.414241, -0.894719, -0.166977,
		-0.822190, -0.289159, -0.490298,
		37.525009, 35.857479, 18.277201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485764, 35.983994, 18.025301>,  <38.100544, 36.059887, 18.620409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485764, 35.983994, 18.025301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101734, 35.927982, 17.928421>,  <37.871319, 35.894375, 17.870293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101734, 35.927982, 17.928421>,  <38.485764, 35.983994, 18.025301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101734, 35.927982, 17.928421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190274, 0.307845, -0.932216,
		0.205093, -0.941076, -0.268910,
		-0.960069, -0.140024, -0.242199,
		37.813713, 35.885975, 17.855761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438702, 35.435280, 17.474669>,  <38.485764, 35.983994, 18.025301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438702, 35.435280, 17.474669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121845, 35.679352, 17.469105>,  <37.931732, 35.825794, 17.465767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121845, 35.679352, 17.469105>,  <38.438702, 35.435280, 17.474669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121845, 35.679352, 17.469105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244244, 0.296032, -0.923423,
		-0.559334, -0.734880, -0.383532,
		-0.792143, 0.610177, -0.013910,
		37.884201, 35.862404, 17.464931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116241, 35.316132, 16.793022>,  <38.438702, 35.435280, 17.474669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116241, 35.316132, 16.793022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.909039, 35.636745, 16.912498>,  <37.784718, 35.829113, 16.984184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.909039, 35.636745, 16.912498>,  <38.116241, 35.316132, 16.793022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909039, 35.636745, 16.912498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021528, 0.336863, -0.941308,
		-0.855104, -0.494037, -0.157243,
		-0.518010, 0.801530, 0.298689,
		37.753635, 35.877205, 17.002106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606415, 35.357483, 16.284773>,  <38.116241, 35.316132, 16.793022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606415, 35.357483, 16.284773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660080, 35.712547, 16.460983>,  <37.692280, 35.925587, 16.566710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660080, 35.712547, 16.460983>,  <37.606415, 35.357483, 16.284773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660080, 35.712547, 16.460983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089426, 0.431887, -0.897483,
		-0.986915, 0.159808, -0.021434,
		0.134168, 0.887657, 0.440527,
		37.700329, 35.978844, 16.593142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138256, 35.781857, 15.910269>,  <37.606415, 35.357483, 16.284773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138256, 35.781857, 15.910269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.406105, 36.015835, 16.093327>,  <37.566814, 36.156223, 16.203161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.406105, 36.015835, 16.093327>,  <37.138256, 35.781857, 15.910269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406105, 36.015835, 16.093327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070011, 0.563730, -0.822986,
		-0.739392, 0.583133, 0.336536,
		0.669626, 0.584948, 0.457643,
		37.606995, 36.191319, 16.230619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916664, 36.432980, 15.665860>,  <37.138256, 35.781857, 15.910269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916664, 36.432980, 15.665860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295338, 36.483181, 15.784549>,  <37.522541, 36.513302, 15.855762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295338, 36.483181, 15.784549>,  <36.916664, 36.432980, 15.665860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295338, 36.483181, 15.784549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192480, 0.518238, -0.833295,
		-0.258352, 0.845978, 0.466450,
		0.946681, 0.125501, 0.296721,
		37.579342, 36.520832, 15.873565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039574, 37.029575, 15.388804>,  <36.916664, 36.432980, 15.665860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039574, 37.029575, 15.388804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404491, 36.880703, 15.457152>,  <37.623444, 36.791378, 15.498161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404491, 36.880703, 15.457152>,  <37.039574, 37.029575, 15.388804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404491, 36.880703, 15.457152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355789, 0.513669, -0.780742,
		0.202808, 0.773061, 0.601037,
		0.912295, -0.372183, 0.170871,
		37.678181, 36.769047, 15.508413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638306, 37.560787, 15.438013>,  <37.039574, 37.029575, 15.388804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638306, 37.560787, 15.438013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.817070, 37.217075, 15.338489>,  <37.924328, 37.010849, 15.278773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.817070, 37.217075, 15.338489>,  <37.638306, 37.560787, 15.438013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817070, 37.217075, 15.338489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462879, 0.460126, -0.757646,
		0.765515, 0.223430, 0.603378,
		0.446911, -0.859281, -0.248812,
		37.951141, 36.959290, 15.263844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253601, 37.812099, 15.144120>,  <37.638306, 37.560787, 15.438013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253601, 37.812099, 15.144120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.262974, 37.428131, 15.032411>,  <38.268597, 37.197750, 14.965384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.262974, 37.428131, 15.032411>,  <38.253601, 37.812099, 15.144120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262974, 37.428131, 15.032411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590131, 0.238771, -0.771190,
		0.806968, -0.146737, 0.572076,
		0.023433, -0.959925, -0.279275,
		38.270004, 37.140152, 14.948628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961922, 37.565720, 15.077140>,  <38.253601, 37.812099, 15.144120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961922, 37.565720, 15.077140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.705460, 37.368694, 14.841752>,  <38.551582, 37.250477, 14.700520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.705460, 37.368694, 14.841752>,  <38.961922, 37.565720, 15.077140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705460, 37.368694, 14.841752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522767, 0.281044, -0.804816,
		0.561812, -0.823645, 0.077305,
		-0.641156, -0.492567, -0.588469,
		38.513111, 37.220924, 14.665212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283016, 37.136513, 14.655267>,  <38.961922, 37.565720, 15.077140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283016, 37.136513, 14.655267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.947182, 37.206898, 14.449691>,  <38.745682, 37.249126, 14.326345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.947182, 37.206898, 14.449691>,  <39.283016, 37.136513, 14.655267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947182, 37.206898, 14.449691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542620, 0.226946, -0.808740,
		-0.025669, -0.957880, -0.286020,
		-0.839586, 0.175959, -0.513939,
		38.695305, 37.259686, 14.295509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.223951, 32.252220, 34.040432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.576925, 32.070538, 33.991432>,  <27.788710, 31.961527, 33.962032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.576925, 32.070538, 33.991432>,  <27.223951, 32.252220, 34.040432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576925, 32.070538, 33.991432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192357, -0.586000, 0.787148,
		-0.429311, -0.671044, -0.604477,
		0.882435, -0.454207, -0.122496,
		27.841656, 31.934275, 33.954681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050425, 31.574265, 34.000454>,  <27.223951, 32.252220, 34.040432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050425, 31.574265, 34.000454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.435081, 31.610924, 34.103870>,  <27.665876, 31.632919, 34.165920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.435081, 31.610924, 34.103870>,  <27.050425, 31.574265, 34.000454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435081, 31.610924, 34.103870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150460, -0.611853, 0.776530,
		0.229359, -0.785644, -0.574594,
		0.961643, 0.091651, 0.258542,
		27.723574, 31.638418, 34.181435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378170, 30.880585, 34.152180>,  <27.050425, 31.574265, 34.000454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378170, 30.880585, 34.152180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.583387, 31.154480, 34.359222>,  <27.706518, 31.318817, 34.483448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.583387, 31.154480, 34.359222>,  <27.378170, 30.880585, 34.152180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583387, 31.154480, 34.359222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068134, -0.568631, 0.819766,
		0.855656, -0.455841, -0.245077,
		0.513041, 0.684739, 0.517611,
		27.737299, 31.359901, 34.514507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833515, 30.537670, 34.482510>,  <27.378170, 30.880585, 34.152180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833515, 30.537670, 34.482510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.802416, 30.875858, 34.693840>,  <27.783756, 31.078772, 34.820641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.802416, 30.875858, 34.693840>,  <27.833515, 30.537670, 34.482510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802416, 30.875858, 34.693840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068498, -0.524151, 0.848866,
		0.994617, 0.102189, -0.017160,
		-0.077750, 0.845472, 0.528329,
		27.779091, 31.129499, 34.852341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268278, 30.402012, 35.061703>,  <27.833515, 30.537670, 34.482510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268278, 30.402012, 35.061703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.084639, 30.739586, 35.172699>,  <27.974455, 30.942131, 35.239296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.084639, 30.739586, 35.172699>,  <28.268278, 30.402012, 35.061703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084639, 30.739586, 35.172699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102329, -0.360510, 0.927125,
		0.882473, 0.397245, 0.251868,
		-0.459097, 0.843937, 0.277491,
		27.946909, 30.992767, 35.255947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568306, 30.840218, 35.637497>,  <28.268278, 30.402012, 35.061703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568306, 30.840218, 35.637497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.190262, 30.968845, 35.660694>,  <27.963436, 31.046022, 35.674614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.190262, 30.968845, 35.660694>,  <28.568306, 30.840218, 35.637497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190262, 30.968845, 35.660694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015914, -0.222580, 0.974785,
		0.326370, 0.920354, 0.215480,
		-0.945108, 0.321570, 0.057997,
		27.906729, 31.065317, 35.678093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512257, 31.162794, 36.279728>,  <28.568306, 30.840218, 35.637497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512257, 31.162794, 36.279728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.141788, 31.089172, 36.148071>,  <27.919508, 31.044998, 36.069077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.141788, 31.089172, 36.148071>,  <28.512257, 31.162794, 36.279728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141788, 31.089172, 36.148071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262509, -0.311956, 0.913111,
		-0.270742, 0.932098, 0.240608,
		-0.926168, -0.184055, -0.329144,
		27.863937, 31.033957, 36.049328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150497, 31.380682, 36.797714>,  <28.512257, 31.162794, 36.279728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150497, 31.380682, 36.797714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.873276, 31.173580, 36.597073>,  <27.706944, 31.049320, 36.476688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.873276, 31.173580, 36.597073>,  <28.150497, 31.380682, 36.797714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873276, 31.173580, 36.597073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338274, -0.380883, 0.860523,
		-0.636592, 0.766068, 0.088830,
		-0.693053, -0.517752, -0.501608,
		27.665359, 31.018255, 36.446590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515285, 31.514742, 37.095772>,  <28.150497, 31.380682, 36.797714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515285, 31.514742, 37.095772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.466011, 31.164501, 36.908947>,  <27.436445, 30.954357, 36.796852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.466011, 31.164501, 36.908947>,  <27.515285, 31.514742, 37.095772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466011, 31.164501, 36.908947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213243, -0.436300, 0.874168,
		-0.969202, 0.207285, -0.132969,
		-0.123187, -0.875600, -0.467065,
		27.429054, 30.901821, 36.768829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950569, 31.188488, 37.477295>,  <27.515285, 31.514742, 37.095772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950569, 31.188488, 37.477295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.104977, 30.866135, 37.297722>,  <27.197622, 30.672722, 37.189980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.104977, 30.866135, 37.297722>,  <26.950569, 31.188488, 37.477295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104977, 30.866135, 37.297722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231183, -0.555632, 0.798641,
		-0.893052, -0.204506, -0.400792,
		0.386020, -0.805885, -0.448930,
		27.220783, 30.624369, 37.163044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440218, 30.607370, 37.489025>,  <26.950569, 31.188488, 37.477295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440218, 30.607370, 37.489025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.806881, 30.459045, 37.429379>,  <27.026878, 30.370050, 37.393589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.806881, 30.459045, 37.429379>,  <26.440218, 30.607370, 37.489025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806881, 30.459045, 37.429379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174692, -0.707299, 0.684990,
		-0.359473, -0.601852, -0.713129,
		0.916658, -0.370813, -0.149117,
		27.081879, 30.347801, 37.384644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381306, 29.807470, 37.499851>,  <26.440218, 30.607370, 37.489025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381306, 29.807470, 37.499851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.766935, 29.894836, 37.560318>,  <26.998314, 29.947256, 37.596600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.766935, 29.894836, 37.560318>,  <26.381306, 29.807470, 37.499851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766935, 29.894836, 37.560318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013805, -0.609527, 0.792646,
		0.265269, -0.762083, -0.590645,
		0.964076, 0.218418, 0.151168,
		27.056158, 29.960361, 37.605667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693968, 29.155550, 37.476414>,  <26.381306, 29.807470, 37.499851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693968, 29.155550, 37.476414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.873444, 29.441151, 37.691402>,  <26.981129, 29.612511, 37.820396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.873444, 29.441151, 37.691402>,  <26.693968, 29.155550, 37.476414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873444, 29.441151, 37.691402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258794, -0.471836, 0.842850,
		0.855398, -0.517271, -0.026928,
		0.448688, 0.714003, 0.537474,
		27.008049, 29.655352, 37.852646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281160, 28.887505, 37.836983>,  <26.693968, 29.155550, 37.476414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281160, 28.887505, 37.836983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.138662, 29.215630, 38.015949>,  <27.053164, 29.412504, 38.123329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.138662, 29.215630, 38.015949>,  <27.281160, 28.887505, 37.836983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138662, 29.215630, 38.015949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373411, -0.563913, 0.736591,
		0.856537, 0.095337, 0.507204,
		-0.356243, 0.820313, 0.447412,
		27.031790, 29.461723, 38.150173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997063, 28.730909, 37.831078>,  <27.281160, 28.887505, 37.836983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997063, 28.730909, 37.831078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.124607, 28.387665, 37.670094>,  <28.201134, 28.181719, 37.573502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.124607, 28.387665, 37.670094>,  <27.997063, 28.730909, 37.831078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124607, 28.387665, 37.670094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132131, 0.460723, -0.877653,
		0.938547, 0.226670, 0.260289,
		0.318859, -0.858111, -0.402460,
		28.220264, 28.130232, 37.549355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406351, 28.900806, 37.252438>,  <27.997063, 28.730909, 37.831078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406351, 28.900806, 37.252438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.343117, 28.513741, 37.173817>,  <28.305176, 28.281502, 37.126644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.343117, 28.513741, 37.173817>,  <28.406351, 28.900806, 37.252438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343117, 28.513741, 37.173817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066077, 0.208978, -0.975686,
		0.985212, -0.141256, -0.096977,
		-0.158088, -0.967665, -0.196554,
		28.295691, 28.223442, 37.114849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667089, 28.793587, 36.555939>,  <28.406351, 28.900806, 37.252438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667089, 28.793587, 36.555939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.422762, 28.482666, 36.616211>,  <28.276165, 28.296114, 36.652374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.422762, 28.482666, 36.616211>,  <28.667089, 28.793587, 36.555939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422762, 28.482666, 36.616211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278074, 0.032414, -0.960013,
		0.741335, -0.628293, -0.235946,
		-0.610817, -0.777302, 0.150682,
		28.239517, 28.249475, 36.661415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861710, 28.164913, 36.020134>,  <28.667089, 28.793587, 36.555939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861710, 28.164913, 36.020134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.487324, 28.110134, 36.149879>,  <28.262691, 28.077267, 36.227726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.487324, 28.110134, 36.149879>,  <28.861710, 28.164913, 36.020134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487324, 28.110134, 36.149879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328920, 0.011438, -0.944288,
		0.125610, -0.990512, -0.055751,
		-0.935966, -0.136950, 0.324363,
		28.206533, 28.069050, 36.247189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531759, 27.554235, 35.676163>,  <28.861710, 28.164913, 36.020134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531759, 27.554235, 35.676163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.242104, 27.813908, 35.769276>,  <28.068310, 27.969711, 35.825142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.242104, 27.813908, 35.769276>,  <28.531759, 27.554235, 35.676163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242104, 27.813908, 35.769276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310124, -0.005044, -0.950683,
		-0.615990, -0.760618, 0.204979,
		-0.724141, 0.649180, 0.232779,
		28.024862, 28.008661, 35.839108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956646, 27.288477, 35.311054>,  <28.531759, 27.554235, 35.676163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956646, 27.288477, 35.311054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.831938, 27.658596, 35.397423>,  <27.757113, 27.880667, 35.449245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.831938, 27.658596, 35.397423>,  <27.956646, 27.288477, 35.311054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831938, 27.658596, 35.397423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443042, 0.059463, -0.894527,
		-0.840543, -0.374549, 0.391407,
		-0.311770, 0.925298, 0.215922,
		27.738407, 27.936186, 35.462200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344891, 27.373148, 35.046631>,  <27.956646, 27.288477, 35.311054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344891, 27.373148, 35.046631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.490631, 27.743340, 35.088081>,  <27.578075, 27.965454, 35.112949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.490631, 27.743340, 35.088081>,  <27.344891, 27.373148, 35.046631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490631, 27.743340, 35.088081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406180, 0.258058, -0.876598,
		-0.838013, 0.277299, 0.469935,
		0.364351, 0.925479, 0.103623,
		27.599936, 28.020983, 35.119167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772942, 27.858925, 34.815601>,  <27.344891, 27.373148, 35.046631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772942, 27.858925, 34.815601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.128420, 28.039406, 34.783009>,  <27.341707, 28.147694, 34.763454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.128420, 28.039406, 34.783009>,  <26.772942, 27.858925, 34.815601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128420, 28.039406, 34.783009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225105, 0.274547, -0.934854,
		-0.399438, 0.849141, 0.345556,
		0.888694, 0.451203, -0.081482,
		27.395027, 28.174767, 34.758564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668219, 28.503099, 34.449780>,  <26.772942, 27.858925, 34.815601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668219, 28.503099, 34.449780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.060207, 28.430470, 34.417080>,  <27.295401, 28.386892, 34.397461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.060207, 28.430470, 34.417080>,  <26.668219, 28.503099, 34.449780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060207, 28.430470, 34.417080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028543, 0.278221, -0.960093,
		0.197074, 0.943199, 0.267466,
		0.979973, -0.181576, -0.081751,
		27.354198, 28.375998, 34.392555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875679, 29.011465, 34.026043>,  <26.668219, 28.503099, 34.449780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875679, 29.011465, 34.026043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.185926, 28.760155, 34.001759>,  <27.372074, 28.609369, 33.987186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.185926, 28.760155, 34.001759>,  <26.875679, 29.011465, 34.026043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185926, 28.760155, 34.001759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070433, 0.181736, -0.980822,
		0.627260, 0.756467, 0.185209,
		0.775619, -0.628275, -0.060715,
		27.418612, 28.571672, 33.983543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328815, 29.440113, 33.685566>,  <26.875679, 29.011465, 34.026043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328815, 29.440113, 33.685566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.465641, 29.068199, 33.631172>,  <27.547737, 28.845051, 33.598537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.465641, 29.068199, 33.631172>,  <27.328815, 29.440113, 33.685566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465641, 29.068199, 33.631172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043215, 0.128993, -0.990703,
		0.938682, 0.344761, 0.003943,
		0.342065, -0.929785, -0.135982,
		27.568260, 28.789263, 33.590378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076498, 29.466072, 33.469048>,  <27.328815, 29.440113, 33.685566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076498, 29.466072, 33.469048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.905008, 29.121861, 33.359001>,  <27.802114, 28.915335, 33.292973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.905008, 29.121861, 33.359001>,  <28.076498, 29.466072, 33.469048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905008, 29.121861, 33.359001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132646, 0.241263, -0.961352,
		0.893645, -0.448648, 0.010710,
		-0.428724, -0.860528, -0.275114,
		27.776390, 28.863703, 33.276466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546064, 29.190386, 33.047009>,  <28.076498, 29.466072, 33.469048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546064, 29.190386, 33.047009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.202408, 29.014545, 32.942223>,  <27.996214, 28.909040, 32.879353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.202408, 29.014545, 32.942223>,  <28.546064, 29.190386, 33.047009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202408, 29.014545, 32.942223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107467, 0.345503, -0.932244,
		0.500327, -0.829082, -0.249593,
		-0.859141, -0.439603, -0.261964,
		27.944666, 28.882666, 32.863632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685553, 28.933149, 32.439770>,  <28.546064, 29.190386, 33.047009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685553, 28.933149, 32.439770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.285843, 28.939869, 32.426109>,  <28.046017, 28.943901, 32.417915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.285843, 28.939869, 32.426109>,  <28.685553, 28.933149, 32.439770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285843, 28.939869, 32.426109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038032, 0.409575, -0.911483,
		-0.001325, -0.912122, -0.409917,
		-0.999276, 0.016797, -0.034148,
		27.986061, 28.944908, 32.415867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884365, 28.159143, 32.618935>,  <28.685553, 28.933149, 32.439770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884365, 28.159143, 32.618935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260771, 28.232143, 32.504967>,  <29.486614, 28.275944, 32.436584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260771, 28.232143, 32.504967>,  <28.884365, 28.159143, 32.618935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260771, 28.232143, 32.504967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338170, -0.535534, 0.773850,
		-0.011358, -0.824559, -0.565662,
		0.941016, 0.182501, -0.284924,
		29.543076, 28.286894, 32.419491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383331, 27.467052, 32.488106>,  <28.884365, 28.159143, 32.618935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383331, 27.467052, 32.488106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.594101, 27.795799, 32.574715>,  <29.720562, 27.993048, 32.626682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.594101, 27.795799, 32.574715>,  <29.383331, 27.467052, 32.488106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594101, 27.795799, 32.574715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368660, -0.450567, 0.813067,
		0.765794, -0.348600, -0.540405,
		0.526924, 0.821868, 0.216527,
		29.752178, 28.042360, 32.639671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962864, 27.162821, 32.776150>,  <29.383331, 27.467052, 32.488106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962864, 27.162821, 32.776150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025640, 27.545582, 32.873890>,  <30.063307, 27.775238, 32.932533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025640, 27.545582, 32.873890>,  <29.962864, 27.162821, 32.776150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025640, 27.545582, 32.873890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561411, -0.289993, 0.775063,
		0.812519, 0.015541, -0.582727,
		0.156941, 0.956903, 0.244350,
		30.072723, 27.832653, 32.947193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662621, 27.150290, 33.002918>,  <29.962864, 27.162821, 32.776150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662621, 27.150290, 33.002918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469927, 27.467785, 33.151463>,  <30.354311, 27.658281, 33.240589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469927, 27.467785, 33.151463>,  <30.662621, 27.150290, 33.002918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469927, 27.467785, 33.151463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193961, -0.316690, 0.928486,
		0.854581, 0.519316, -0.001393,
		-0.481737, 0.793737, 0.371364,
		30.325405, 27.705906, 33.262871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102016, 27.347759, 33.442726>,  <30.662621, 27.150290, 33.002918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102016, 27.347759, 33.442726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.756668, 27.523743, 33.541538>,  <30.549459, 27.629333, 33.600826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.756668, 27.523743, 33.541538>,  <31.102016, 27.347759, 33.442726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756668, 27.523743, 33.541538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273395, -0.003590, 0.961895,
		0.424081, 0.898011, -0.117183,
		-0.863372, 0.439959, 0.247034,
		30.497656, 27.655731, 33.615650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347094, 27.832581, 33.968121>,  <31.102016, 27.347759, 33.442726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347094, 27.832581, 33.968121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.953794, 27.776836, 34.015114>,  <30.717815, 27.743389, 34.043308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.953794, 27.776836, 34.015114>,  <31.347094, 27.832581, 33.968121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953794, 27.776836, 34.015114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137430, -0.143425, 0.980073,
		-0.119733, 0.979800, 0.160175,
		-0.983248, -0.139360, 0.117481,
		30.658819, 27.735027, 34.050358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154442, 28.205393, 34.626362>,  <31.347094, 27.832581, 33.968121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154442, 28.205393, 34.626362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.867931, 27.933784, 34.562019>,  <30.696024, 27.770819, 34.523415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.867931, 27.933784, 34.562019>,  <31.154442, 28.205393, 34.626362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867931, 27.933784, 34.562019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001064, -0.229452, 0.973319,
		-0.697815, 0.697338, 0.163628,
		-0.716277, -0.679023, -0.160857,
		30.653048, 27.730078, 34.513763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365412, 28.847710, 34.752605>,  <31.154442, 28.205393, 34.626362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365412, 28.847710, 34.752605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708204, 28.972614, 34.916595>,  <31.913879, 29.047558, 35.014988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708204, 28.972614, 34.916595>,  <31.365412, 28.847710, 34.752605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708204, 28.972614, 34.916595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429985, 0.005256, -0.902821,
		-0.284070, 0.949982, -0.129763,
		0.856981, 0.312261, 0.409971,
		31.965300, 29.066292, 35.039585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536840, 29.552866, 34.543060>,  <31.365412, 28.847710, 34.752605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536840, 29.552866, 34.543060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878370, 29.358608, 34.618034>,  <32.083290, 29.242054, 34.663017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878370, 29.358608, 34.618034>,  <31.536840, 29.552866, 34.543060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878370, 29.358608, 34.618034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265520, 0.096596, -0.959254,
		0.447750, 0.868804, 0.211424,
		0.853826, -0.485643, 0.187434,
		32.134518, 29.212915, 34.674263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981981, 29.991804, 34.253426>,  <31.536840, 29.552866, 34.543060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981981, 29.991804, 34.253426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179436, 29.650906, 34.322708>,  <32.297909, 29.446367, 34.364277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179436, 29.650906, 34.322708>,  <31.981981, 29.991804, 34.253426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179436, 29.650906, 34.322708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490037, 0.108047, -0.864979,
		0.718460, 0.511864, 0.470968,
		0.493638, -0.852245, 0.173205,
		32.327526, 29.395231, 34.374668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671509, 30.145149, 34.147636>,  <31.981981, 29.991804, 34.253426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671509, 30.145149, 34.147636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665737, 29.746498, 34.115334>,  <32.662273, 29.507307, 34.095951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665737, 29.746498, 34.115334>,  <32.671509, 30.145149, 34.147636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665737, 29.746498, 34.115334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440257, 0.066180, -0.895429,
		0.897756, -0.048477, 0.437818,
		-0.014433, -0.996629, -0.080756,
		32.661407, 29.447510, 34.091106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241737, 30.007151, 33.802284>,  <32.671509, 30.145149, 34.147636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241737, 30.007151, 33.802284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049084, 29.658077, 33.770161>,  <32.933491, 29.448633, 33.750885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049084, 29.658077, 33.770161>,  <33.241737, 30.007151, 33.802284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049084, 29.658077, 33.770161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265176, -0.057781, -0.962467,
		0.835291, -0.484852, 0.259244,
		-0.481633, -0.872685, -0.080308,
		32.904594, 29.396271, 33.746067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776573, 29.662598, 33.418335>,  <33.241737, 30.007151, 33.802284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776573, 29.662598, 33.418335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413437, 29.496563, 33.394550>,  <33.195557, 29.396942, 33.380280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413437, 29.496563, 33.394550>,  <33.776573, 29.662598, 33.418335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413437, 29.496563, 33.394550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040719, 0.053863, -0.997718,
		0.417342, -0.908186, -0.031997,
		-0.907837, -0.415087, -0.059460,
		33.141087, 29.372038, 33.376713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773907, 29.089750, 32.815136>,  <33.776573, 29.662598, 33.418335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773907, 29.089750, 32.815136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386169, 29.175713, 32.862793>,  <33.153526, 29.227289, 32.891388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386169, 29.175713, 32.862793>,  <33.773907, 29.089750, 32.815136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386169, 29.175713, 32.862793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147114, -0.119195, -0.981911,
		-0.196822, -0.969333, 0.147157,
		-0.969339, 0.214911, 0.119142,
		33.095367, 29.240185, 32.898537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.258423, 30.947268, 38.238010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.970137, 30.797256, 38.004799>,  <29.797165, 30.707251, 37.864872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.970137, 30.797256, 38.004799>,  <30.258423, 30.947268, 38.238010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970137, 30.797256, 38.004799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291624, 0.598979, -0.745775,
		0.628912, -0.707515, -0.322324,
		-0.720712, -0.375029, -0.583033,
		29.753922, 30.684748, 37.829891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593594, 30.708418, 37.610676>,  <30.258423, 30.947268, 38.238010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593594, 30.708418, 37.610676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209919, 30.751495, 37.506088>,  <29.979713, 30.777342, 37.443336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209919, 30.751495, 37.506088>,  <30.593594, 30.708418, 37.610676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209919, 30.751495, 37.506088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270983, 0.614306, -0.741078,
		0.080809, -0.781684, -0.618417,
		-0.959186, 0.107695, -0.261464,
		29.922163, 30.783804, 37.427650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508789, 30.547596, 36.923946>,  <30.593594, 30.708418, 37.610676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508789, 30.547596, 36.923946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.175808, 30.761589, 36.981663>,  <29.976019, 30.889984, 37.016293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.175808, 30.761589, 36.981663>,  <30.508789, 30.547596, 36.923946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175808, 30.761589, 36.981663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191448, 0.522063, -0.831142,
		-0.519973, -0.664262, -0.537014,
		-0.832452, 0.534982, 0.144287,
		29.926073, 30.922083, 37.024948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175879, 30.519754, 36.287045>,  <30.508789, 30.547596, 36.923946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175879, 30.519754, 36.287045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.031176, 30.831242, 36.492073>,  <29.944353, 31.018133, 36.615089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.031176, 30.831242, 36.492073>,  <30.175879, 30.519754, 36.287045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031176, 30.831242, 36.492073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151011, 0.591494, -0.792042,
		-0.919961, -0.209122, -0.331572,
		-0.361757, 0.778718, 0.512572,
		29.922649, 31.064857, 36.645844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745211, 30.894550, 35.817822>,  <30.175879, 30.519754, 36.287045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745211, 30.894550, 35.817822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.826159, 31.151787, 36.113247>,  <29.874727, 31.306128, 36.290504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.826159, 31.151787, 36.113247>,  <29.745211, 30.894550, 35.817822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826159, 31.151787, 36.113247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134590, 0.728752, -0.671421,
		-0.970017, 0.235279, 0.060924,
		0.202370, 0.643090, 0.738567,
		29.886869, 31.344713, 36.334816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386549, 31.519934, 35.664097>,  <29.745211, 30.894550, 35.817822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386549, 31.519934, 35.664097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.681122, 31.627174, 35.912544>,  <29.857864, 31.691519, 36.061611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.681122, 31.627174, 35.912544>,  <29.386549, 31.519934, 35.664097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681122, 31.627174, 35.912544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222929, 0.770667, -0.596971,
		-0.638727, 0.578094, 0.507775,
		0.736431, 0.268103, 0.621120,
		29.902052, 31.707605, 36.098881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414942, 32.188950, 35.601082>,  <29.386549, 31.519934, 35.664097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414942, 32.188950, 35.601082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.768040, 32.118446, 35.775299>,  <29.979898, 32.076145, 35.879829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.768040, 32.118446, 35.775299>,  <29.414942, 32.188950, 35.601082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768040, 32.118446, 35.775299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448887, 0.590201, -0.670942,
		-0.138794, 0.787778, 0.600118,
		0.882744, -0.176262, 0.435540,
		30.032864, 32.065567, 35.905960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717199, 32.806278, 35.750137>,  <29.414942, 32.188950, 35.601082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717199, 32.806278, 35.750137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.024229, 32.552181, 35.715981>,  <30.208447, 32.399723, 35.695488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.024229, 32.552181, 35.715981>,  <29.717199, 32.806278, 35.750137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024229, 32.552181, 35.715981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439783, 0.618878, -0.650831,
		0.466282, 0.462009, 0.754406,
		0.767575, -0.635245, -0.085388,
		30.254501, 32.361607, 35.690365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314837, 33.297344, 35.658867>,  <29.717199, 32.806278, 35.750137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314837, 33.297344, 35.658867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.443110, 32.939751, 35.533676>,  <30.520073, 32.725193, 35.458561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.443110, 32.939751, 35.533676>,  <30.314837, 33.297344, 35.658867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443110, 32.939751, 35.533676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474692, 0.437627, -0.763642,
		0.819652, 0.096317, 0.564706,
		0.320683, -0.893983, -0.312981,
		30.539314, 32.671555, 35.439781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990507, 33.390491, 35.392944>,  <30.314837, 33.297344, 35.658867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990507, 33.390491, 35.392944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926508, 33.031948, 35.227566>,  <30.888109, 32.816822, 35.128338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926508, 33.031948, 35.227566>,  <30.990507, 33.390491, 35.392944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926508, 33.031948, 35.227566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542334, 0.270141, -0.795548,
		0.824787, -0.351512, 0.442905,
		-0.159998, -0.896361, -0.413446,
		30.878510, 32.763039, 35.103531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568497, 33.322502, 34.862537>,  <30.990507, 33.390491, 35.392944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568497, 33.322502, 34.862537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.329536, 33.027130, 34.737427>,  <31.186159, 32.849907, 34.662361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.329536, 33.027130, 34.737427>,  <31.568497, 33.322502, 34.862537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329536, 33.027130, 34.737427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342216, 0.117985, -0.932184,
		0.725258, -0.663926, 0.182219,
		-0.597402, -0.738432, -0.312776,
		31.150316, 32.805599, 34.643593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033001, 32.836384, 34.462048>,  <31.568497, 33.322502, 34.862537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033001, 32.836384, 34.462048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648855, 32.828541, 34.350822>,  <31.418367, 32.823833, 34.284088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648855, 32.828541, 34.350822>,  <32.033001, 32.836384, 34.462048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648855, 32.828541, 34.350822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277713, 0.018889, -0.960478,
		0.024115, -0.999629, -0.012686,
		-0.960361, -0.019639, -0.278065,
		31.360746, 32.822659, 34.267403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457867, 32.311184, 34.459789>,  <32.033001, 32.836384, 34.462048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457867, 32.311184, 34.459789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857094, 32.333454, 34.448746>,  <33.096630, 32.346817, 34.442120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857094, 32.333454, 34.448746>,  <32.457867, 32.311184, 34.459789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857094, 32.333454, 34.448746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038185, -0.198892, 0.979277,
		0.049028, -0.978439, -0.200633,
		0.998067, 0.055673, -0.027611,
		33.156513, 32.350155, 34.440464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601395, 31.700928, 34.760834>,  <32.457867, 32.311184, 34.459789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601395, 31.700928, 34.760834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.948563, 31.899006, 34.776295>,  <33.156864, 32.017853, 34.785572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.948563, 31.899006, 34.776295>,  <32.601395, 31.700928, 34.760834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948563, 31.899006, 34.776295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098895, -0.248545, 0.963558,
		0.486760, -0.832469, -0.264690,
		0.867920, 0.495198, 0.038655,
		33.208939, 32.047565, 34.787891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002708, 31.327394, 35.058441>,  <32.601395, 31.700928, 34.760834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002708, 31.327394, 35.058441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.181004, 31.679268, 35.124741>,  <33.287979, 31.890392, 35.164520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.181004, 31.679268, 35.124741>,  <33.002708, 31.327394, 35.058441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181004, 31.679268, 35.124741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022734, -0.173979, 0.984487,
		0.894876, -0.442588, -0.057550,
		0.445735, 0.879686, 0.165752,
		33.314724, 31.943174, 35.174465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503681, 31.164202, 35.474426>,  <33.002708, 31.327394, 35.058441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503681, 31.164202, 35.474426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.427971, 31.552315, 35.534725>,  <33.382545, 31.785183, 35.570904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.427971, 31.552315, 35.534725>,  <33.503681, 31.164202, 35.474426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427971, 31.552315, 35.534725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069944, -0.166458, 0.983565,
		0.979429, 0.175622, 0.099372,
		-0.189277, 0.970283, 0.150750,
		33.371189, 31.843399, 35.579948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926666, 31.379320, 35.974567>,  <33.503681, 31.164202, 35.474426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926666, 31.379320, 35.974567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665123, 31.680515, 36.004173>,  <33.508198, 31.861233, 36.021938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665123, 31.680515, 36.004173>,  <33.926666, 31.379320, 35.974567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665123, 31.680515, 36.004173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009334, -0.105846, 0.994339,
		0.756558, 0.649467, 0.076237,
		-0.653860, 0.752987, 0.074016,
		33.468964, 31.906412, 36.026379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068455, 31.832464, 36.594067>,  <33.926666, 31.379320, 35.974567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068455, 31.832464, 36.594067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.691425, 31.928852, 36.501560>,  <33.465206, 31.986685, 36.446056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.691425, 31.928852, 36.501560>,  <34.068455, 31.832464, 36.594067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691425, 31.928852, 36.501560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247325, -0.038259, 0.968177,
		0.224452, 0.969779, 0.095659,
		-0.942577, 0.240968, -0.231263,
		33.408653, 32.001144, 36.432182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831219, 32.189457, 37.116302>,  <34.068455, 31.832464, 36.594067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831219, 32.189457, 37.116302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.482666, 32.086411, 36.949295>,  <33.273533, 32.024582, 36.849091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.482666, 32.086411, 36.949295>,  <33.831219, 32.189457, 37.116302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482666, 32.086411, 36.949295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388422, -0.157605, 0.907904,
		-0.299691, 0.953308, 0.037272,
		-0.871386, -0.257614, -0.417518,
		33.221249, 32.009125, 36.824039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283455, 32.510960, 37.426071>,  <33.831219, 32.189457, 37.116302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283455, 32.510960, 37.426071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.101170, 32.192776, 37.266289>,  <32.991798, 32.001865, 37.170422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.101170, 32.192776, 37.266289>,  <33.283455, 32.510960, 37.426071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101170, 32.192776, 37.266289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466676, -0.168624, 0.868205,
		-0.757982, 0.582070, -0.294378,
		-0.455717, -0.795463, -0.399452,
		32.964455, 31.954138, 37.146454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574623, 32.520161, 37.697926>,  <33.283455, 32.510960, 37.426071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574623, 32.520161, 37.697926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.624237, 32.140724, 37.581455>,  <32.654007, 31.913061, 37.511574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.624237, 32.140724, 37.581455>,  <32.574623, 32.520161, 37.697926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624237, 32.140724, 37.581455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442813, -0.315514, 0.839266,
		-0.887993, 0.024836, -0.459186,
		0.124036, -0.948596, -0.291172,
		32.661449, 31.856146, 37.494102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014168, 32.212345, 38.000713>,  <32.574623, 32.520161, 37.697926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014168, 32.212345, 38.000713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.260891, 31.913975, 37.900196>,  <32.408924, 31.734953, 37.839886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.260891, 31.913975, 37.900196>,  <32.014168, 32.212345, 38.000713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260891, 31.913975, 37.900196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191569, -0.451915, 0.871249,
		-0.763450, -0.489250, -0.421639,
		0.616803, -0.745927, -0.251289,
		32.445930, 31.690197, 37.824810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582626, 31.659174, 38.057156>,  <32.014168, 32.212345, 38.000713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582626, 31.659174, 38.057156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951479, 31.504642, 38.065338>,  <32.172791, 31.411922, 38.070248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951479, 31.504642, 38.065338>,  <31.582626, 31.659174, 38.057156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951479, 31.504642, 38.065338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290775, -0.657229, 0.695341,
		-0.255184, -0.647147, -0.718388,
		0.922134, -0.386329, 0.020459,
		32.228119, 31.388744, 38.071476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407433, 30.942312, 38.125149>,  <31.582626, 31.659174, 38.057156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407433, 30.942312, 38.125149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.776838, 31.017597, 38.258831>,  <31.998482, 31.062769, 38.339043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.776838, 31.017597, 38.258831>,  <31.407433, 30.942312, 38.125149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776838, 31.017597, 38.258831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139162, -0.647543, 0.749214,
		0.357428, -0.738420, -0.571823,
		0.923515, 0.188214, 0.334210,
		32.053894, 31.074062, 38.359093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644077, 30.360859, 38.262669>,  <31.407433, 30.942312, 38.125149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644077, 30.360859, 38.262669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884184, 30.603989, 38.470604>,  <32.028248, 30.749866, 38.595364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884184, 30.603989, 38.470604>,  <31.644077, 30.360859, 38.262669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884184, 30.603989, 38.470604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058235, -0.615015, 0.786362,
		0.797676, -0.502300, -0.333777,
		0.600268, 0.607825, 0.519834,
		32.064262, 30.786337, 38.626553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082401, 29.870939, 38.626400>,  <31.644077, 30.360859, 38.262669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082401, 29.870939, 38.626400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.090782, 30.223095, 38.815918>,  <32.095810, 30.434387, 38.929626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.090782, 30.223095, 38.815918>,  <32.082401, 29.870939, 38.626400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090782, 30.223095, 38.815918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096768, -0.469885, 0.877408,
		0.995086, -0.064227, 0.075351,
		0.020947, 0.880388, 0.473791,
		32.097065, 30.487211, 38.958054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100395, 29.884661, 37.851051>,  <32.082401, 29.870939, 38.626400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100395, 29.884661, 37.851051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.058968, 29.487553, 37.875320>,  <32.034111, 29.249289, 37.889881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.058968, 29.487553, 37.875320>,  <32.100395, 29.884661, 37.851051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058968, 29.487553, 37.875320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039693, -0.065073, -0.997091,
		0.993830, -0.100857, 0.046146,
		-0.103567, -0.992771, 0.060668,
		32.027897, 29.189722, 37.893520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766449, 29.577028, 37.608700>,  <32.100395, 29.884661, 37.851051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766449, 29.577028, 37.608700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.453541, 29.330975, 37.569370>,  <32.265797, 29.183342, 37.545773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.453541, 29.330975, 37.569370>,  <32.766449, 29.577028, 37.608700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453541, 29.330975, 37.569370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173315, -0.063303, -0.982830,
		0.598349, -0.785876, 0.156131,
		-0.782266, -0.615135, -0.098327,
		32.218861, 29.146435, 37.539871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902122, 29.087770, 36.991783>,  <32.766449, 29.577028, 37.608700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902122, 29.087770, 36.991783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506443, 29.073029, 37.048527>,  <32.269035, 29.064184, 37.082573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506443, 29.073029, 37.048527>,  <32.902122, 29.087770, 36.991783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506443, 29.073029, 37.048527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136704, -0.116998, -0.983679,
		0.052850, -0.992448, 0.110696,
		-0.989201, -0.036855, 0.141855,
		32.209682, 29.061972, 37.091084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771496, 28.556936, 36.587772>,  <32.902122, 29.087770, 36.991783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771496, 28.556936, 36.587772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.412216, 28.729748, 36.620262>,  <32.196648, 28.833435, 36.639755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.412216, 28.729748, 36.620262>,  <32.771496, 28.556936, 36.587772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412216, 28.729748, 36.620262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149652, -0.126777, -0.980577,
		-0.413341, -0.892904, 0.178525,
		-0.898194, 0.432029, 0.081223,
		32.142757, 28.859356, 36.644630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253826, 28.105360, 36.238640>,  <32.771496, 28.556936, 36.587772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253826, 28.105360, 36.238640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.098103, 28.473801, 36.240242>,  <32.004669, 28.694864, 36.241203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.098103, 28.473801, 36.240242>,  <32.253826, 28.105360, 36.238640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098103, 28.473801, 36.240242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189015, -0.075632, -0.979057,
		-0.901507, -0.381909, 0.203545,
		-0.389305, 0.921100, 0.004003,
		31.981312, 28.750132, 36.241444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019409, 28.151823, 35.556431>,  <32.253826, 28.105360, 36.238640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019409, 28.151823, 35.556431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.955057, 28.519123, 35.701168>,  <31.916447, 28.739504, 35.788010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.955057, 28.519123, 35.701168>,  <32.019409, 28.151823, 35.556431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955057, 28.519123, 35.701168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054010, 0.357881, -0.932204,
		-0.985496, -0.169512, -0.007980,
		-0.160875, 0.918252, 0.361846,
		31.906794, 28.794600, 35.809723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313560, 28.488396, 35.396313>,  <32.019409, 28.151823, 35.556431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313560, 28.488396, 35.396313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623466, 28.737823, 35.438072>,  <31.809410, 28.887480, 35.463127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623466, 28.737823, 35.438072>,  <31.313560, 28.488396, 35.396313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623466, 28.737823, 35.438072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035335, 0.122160, -0.991881,
		-0.631260, 0.772165, 0.072612,
		0.774766, 0.623569, 0.104400,
		31.855896, 28.924894, 35.469391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660425, 28.378218, 35.114437>,  <31.313560, 28.488396, 35.396313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660425, 28.378218, 35.114437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.640505, 27.991871, 35.012756>,  <30.628551, 27.760063, 34.951748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.640505, 27.991871, 35.012756>,  <30.660425, 28.378218, 35.114437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640505, 27.991871, 35.012756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059925, -0.251172, 0.966086,
		-0.996960, 0.063347, -0.045371,
		-0.049803, -0.965867, -0.254205,
		30.625565, 27.702110, 34.936497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111357, 28.091120, 35.518879>,  <30.660425, 28.378218, 35.114437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111357, 28.091120, 35.518879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.303534, 27.762619, 35.395771>,  <30.418840, 27.565519, 35.321907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.303534, 27.762619, 35.395771>,  <30.111357, 28.091120, 35.518879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303534, 27.762619, 35.395771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099257, -0.399584, 0.911307,
		-0.871392, -0.407282, -0.273492,
		0.480442, -0.821252, -0.307768,
		30.447666, 27.516243, 35.303440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667112, 27.601343, 35.702003>,  <30.111357, 28.091120, 35.518879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667112, 27.601343, 35.702003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.041372, 27.462780, 35.674992>,  <30.265928, 27.379642, 35.658783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.041372, 27.462780, 35.674992>,  <29.667112, 27.601343, 35.702003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041372, 27.462780, 35.674992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053620, -0.328646, 0.942930,
		-0.348841, -0.878628, -0.326071,
		0.935647, -0.346417, -0.067533,
		30.322067, 27.358858, 35.654732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678968, 27.020235, 36.045353>,  <29.667112, 27.601343, 35.702003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678968, 27.020235, 36.045353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074806, 27.061199, 36.004932>,  <30.312309, 27.085777, 35.980679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074806, 27.061199, 36.004932>,  <29.678968, 27.020235, 36.045353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074806, 27.061199, 36.004932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122778, -0.234963, 0.964219,
		0.075003, -0.966594, -0.245092,
		0.989596, 0.102411, -0.101053,
		30.371685, 27.091923, 35.974617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011827, 26.352562, 36.242046>,  <29.678968, 27.020235, 36.045353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011827, 26.352562, 36.242046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.293568, 26.631573, 36.294724>,  <30.462612, 26.798979, 36.326332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.293568, 26.631573, 36.294724>,  <30.011827, 26.352562, 36.242046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293568, 26.631573, 36.294724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011130, -0.196356, 0.980469,
		0.709764, -0.689130, -0.146067,
		0.704352, 0.697527, 0.131697,
		30.504873, 26.840832, 36.334232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337177, 26.041998, 36.718960>,  <30.011827, 26.352562, 36.242046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337177, 26.041998, 36.718960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.505203, 26.404804, 36.730736>,  <30.606018, 26.622488, 36.737801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.505203, 26.404804, 36.730736>,  <30.337177, 26.041998, 36.718960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505203, 26.404804, 36.730736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147316, -0.100168, 0.984004,
		0.895457, -0.409008, -0.175695,
		0.420064, 0.907017, 0.029443,
		30.631222, 26.676908, 36.739567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980860, 26.026161, 37.071503>,  <30.337177, 26.041998, 36.718960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980860, 26.026161, 37.071503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.855145, 26.404465, 37.104397>,  <30.779716, 26.631447, 37.124134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.855145, 26.404465, 37.104397>,  <30.980860, 26.026161, 37.071503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855145, 26.404465, 37.104397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153537, -0.034845, 0.987528,
		0.936830, 0.322994, -0.134258,
		-0.314287, 0.945759, 0.082235,
		30.760859, 26.688192, 37.129066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419266, 26.315760, 37.594769>,  <30.980860, 26.026161, 37.071503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419266, 26.315760, 37.594769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116676, 26.576225, 37.570328>,  <30.935123, 26.732504, 37.555664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116676, 26.576225, 37.570328>,  <31.419266, 26.315760, 37.594769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116676, 26.576225, 37.570328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006991, 0.101476, 0.994813,
		0.653988, 0.752122, -0.081316,
		-0.756473, 0.651164, -0.061106,
		30.889734, 26.771574, 37.551994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591991, 26.895420, 38.080563>,  <31.419266, 26.315760, 37.594769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591991, 26.895420, 38.080563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196428, 26.912235, 38.023579>,  <30.959091, 26.922323, 37.989388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196428, 26.912235, 38.023579>,  <31.591991, 26.895420, 38.080563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196428, 26.912235, 38.023579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129028, 0.232023, 0.964115,
		0.073582, 0.971802, -0.224025,
		-0.988907, 0.042036, -0.142463,
		30.899755, 26.924847, 37.980839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.630972, 33.481617, 24.055101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240452, 33.472416, 24.141182>,  <30.006140, 33.466896, 24.192831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240452, 33.472416, 24.141182>,  <30.630972, 33.481617, 24.055101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240452, 33.472416, 24.141182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099248, -0.931211, 0.350708,
		0.192329, 0.363754, 0.911423,
		-0.976299, -0.023005, 0.215201,
		29.947561, 33.465515, 24.205742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572357, 33.231842, 24.744963>,  <30.630972, 33.481617, 24.055101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572357, 33.231842, 24.744963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268131, 33.148121, 24.499123>,  <30.085596, 33.097889, 24.351620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268131, 33.148121, 24.499123>,  <30.572357, 33.231842, 24.744963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268131, 33.148121, 24.499123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005704, -0.944421, 0.328690,
		-0.649236, 0.253496, 0.717100,
		-0.760566, -0.209307, -0.614598,
		30.039961, 33.085327, 24.314743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001472, 32.874790, 25.160973>,  <30.572357, 33.231842, 24.744963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001472, 32.874790, 25.160973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947020, 32.785645, 24.774853>,  <29.914349, 32.732159, 24.543180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947020, 32.785645, 24.774853>,  <30.001472, 32.874790, 25.160973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947020, 32.785645, 24.774853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079152, -0.968807, 0.234837,
		-0.987524, 0.108374, 0.114244,
		-0.136131, -0.222864, -0.965298,
		29.906179, 32.718784, 24.485264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370300, 32.543350, 25.242683>,  <30.001472, 32.874790, 25.160973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370300, 32.543350, 25.242683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582006, 32.422764, 24.925446>,  <29.709030, 32.350414, 24.735104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582006, 32.422764, 24.925446>,  <29.370300, 32.543350, 25.242683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582006, 32.422764, 24.925446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024792, -0.928856, 0.369611,
		-0.848092, -0.215286, -0.484140,
		0.529268, -0.301461, -0.793093,
		29.740788, 32.332325, 24.687517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151768, 31.830994, 25.213406>,  <29.370300, 32.543350, 25.242683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151768, 31.830994, 25.213406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451937, 31.809452, 24.949902>,  <29.632038, 31.796528, 24.791800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451937, 31.809452, 24.949902>,  <29.151768, 31.830994, 25.213406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451937, 31.809452, 24.949902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251261, -0.898608, 0.359681,
		-0.611338, -0.435434, -0.660805,
		0.750422, -0.053852, -0.658761,
		29.677063, 31.793297, 24.752274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198143, 31.153917, 24.863350>,  <29.151768, 31.830994, 25.213406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198143, 31.153917, 24.863350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571400, 31.289875, 24.816498>,  <29.795353, 31.371450, 24.788387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571400, 31.289875, 24.816498>,  <29.198143, 31.153917, 24.863350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571400, 31.289875, 24.816498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359005, -0.898266, 0.253442,
		-0.019069, -0.278547, -0.960233,
		0.933141, 0.339895, -0.117129,
		29.851341, 31.391844, 24.781359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523924, 30.559679, 24.641287>,  <29.198143, 31.153917, 24.863350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523924, 30.559679, 24.641287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832727, 30.780041, 24.768101>,  <30.018009, 30.912258, 24.844189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832727, 30.780041, 24.768101>,  <29.523924, 30.559679, 24.641287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832727, 30.780041, 24.768101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370943, -0.795530, 0.479096,
		0.516145, -0.252265, -0.818509,
		0.772008, 0.550903, 0.317033,
		30.064329, 30.945312, 24.863211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114973, 30.076889, 24.498552>,  <29.523924, 30.559679, 24.641287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114973, 30.076889, 24.498552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224049, 30.343437, 24.776138>,  <30.289494, 30.503366, 24.942690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224049, 30.343437, 24.776138>,  <30.114973, 30.076889, 24.498552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224049, 30.343437, 24.776138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311416, -0.743606, 0.591668,
		0.910308, 0.054771, -0.410292,
		0.272689, 0.666371, 0.693967,
		30.305855, 30.543348, 24.984329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710575, 29.846462, 24.764887>,  <30.114973, 30.076889, 24.498552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710575, 29.846462, 24.764887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576483, 30.101067, 25.042728>,  <30.496027, 30.253828, 25.209435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576483, 30.101067, 25.042728>,  <30.710575, 29.846462, 24.764887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576483, 30.101067, 25.042728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241731, -0.654476, 0.716399,
		0.910598, 0.408065, 0.065535,
		-0.335229, 0.636509, 0.694606,
		30.475914, 30.292019, 25.251110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201849, 29.723280, 25.279367>,  <30.710575, 29.846462, 24.764887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201849, 29.723280, 25.279367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897638, 29.904602, 25.465321>,  <30.715113, 30.013395, 25.576893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897638, 29.904602, 25.465321>,  <31.201849, 29.723280, 25.279367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897638, 29.904602, 25.465321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087485, -0.637902, 0.765132,
		0.643389, 0.622572, 0.445483,
		-0.760524, 0.453304, 0.464885,
		30.669481, 30.040594, 25.604786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454657, 29.832928, 25.967617>,  <31.201849, 29.723280, 25.279367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454657, 29.832928, 25.967617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061905, 29.892132, 26.014954>,  <30.826254, 29.927654, 26.043356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061905, 29.892132, 26.014954>,  <31.454657, 29.832928, 25.967617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061905, 29.892132, 26.014954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055130, -0.374374, 0.925638,
		0.181308, 0.915389, 0.359430,
		-0.981880, 0.148010, 0.118343,
		30.767342, 29.936535, 26.050457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461981, 30.124445, 26.631207>,  <31.454657, 29.832928, 25.967617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461981, 30.124445, 26.631207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095024, 29.983612, 26.556984>,  <30.874849, 29.899113, 26.512451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095024, 29.983612, 26.556984>,  <31.461981, 30.124445, 26.631207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095024, 29.983612, 26.556984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043239, -0.375303, 0.925893,
		-0.395630, 0.857430, 0.329076,
		-0.917392, -0.352082, -0.185556,
		30.819807, 29.877987, 26.501318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722006, 30.735273, 26.918812>,  <31.461981, 30.124445, 26.631207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722006, 30.735273, 26.918812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078941, 30.577286, 27.006203>,  <32.293102, 30.482494, 27.058638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078941, 30.577286, 27.006203>,  <31.722006, 30.735273, 26.918812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078941, 30.577286, 27.006203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418276, 0.541681, -0.729128,
		0.169637, 0.742013, 0.648568,
		0.892339, -0.394968, 0.218477,
		32.346642, 30.458796, 27.071745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175995, 31.247089, 26.772099>,  <31.722006, 30.735273, 26.918812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175995, 31.247089, 26.772099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415825, 30.926968, 26.770004>,  <32.559723, 30.734894, 26.768747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415825, 30.926968, 26.770004>,  <32.175995, 31.247089, 26.772099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415825, 30.926968, 26.770004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577219, 0.436954, -0.689848,
		0.554377, 0.410589, 0.723936,
		0.599571, -0.800305, -0.005237,
		32.595695, 30.686876, 26.768433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970325, 31.483126, 26.803333>,  <32.175995, 31.247089, 26.772099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970325, 31.483126, 26.803333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873150, 31.142330, 26.617821>,  <32.814842, 30.937853, 26.506514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873150, 31.142330, 26.617821>,  <32.970325, 31.483126, 26.803333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873150, 31.142330, 26.617821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683919, 0.188614, -0.704755,
		0.687920, -0.488403, 0.536870,
		-0.242943, -0.851991, -0.463779,
		32.800266, 30.886734, 26.478687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570976, 31.342571, 26.572559>,  <32.970325, 31.483126, 26.803333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570976, 31.342571, 26.572559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327641, 31.113781, 26.352463>,  <33.181641, 30.976507, 26.220406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327641, 31.113781, 26.352463>,  <33.570976, 31.342571, 26.572559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327641, 31.113781, 26.352463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494809, 0.268735, -0.826405,
		0.620555, -0.774998, 0.119538,
		-0.608339, -0.571978, -0.550241,
		33.145138, 30.942188, 26.187391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018681, 30.959415, 26.228886>,  <33.570976, 31.342571, 26.572559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018681, 30.959415, 26.228886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682941, 30.908981, 26.017380>,  <33.481499, 30.878721, 25.890476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682941, 30.908981, 26.017380>,  <34.018681, 30.959415, 26.228886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682941, 30.908981, 26.017380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469375, 0.322526, -0.821988,
		0.274182, -0.938125, -0.211531,
		-0.839352, -0.126087, -0.528763,
		33.431137, 30.871155, 25.858751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216484, 30.563848, 25.554226>,  <34.018681, 30.959415, 26.228886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216484, 30.563848, 25.554226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864479, 30.719494, 25.445286>,  <33.653278, 30.812881, 25.379923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864479, 30.719494, 25.445286>,  <34.216484, 30.563848, 25.554226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864479, 30.719494, 25.445286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393498, 0.276197, -0.876855,
		-0.265974, -0.878809, -0.396172,
		-0.880010, 0.389114, -0.272349,
		33.600475, 30.836227, 25.363581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069584, 30.324924, 24.896877>,  <34.216484, 30.563848, 25.554226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069584, 30.324924, 24.896877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875195, 30.672932, 24.930119>,  <33.758560, 30.881735, 24.950064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875195, 30.672932, 24.930119>,  <34.069584, 30.324924, 24.896877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875195, 30.672932, 24.930119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422388, 0.317044, -0.849159,
		-0.765129, -0.377564, -0.521558,
		-0.485969, 0.870016, 0.083102,
		33.729404, 30.933937, 24.955050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714653, 30.467079, 24.215923>,  <34.069584, 30.324924, 24.896877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714653, 30.467079, 24.215923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743267, 30.809135, 24.421299>,  <33.760437, 31.014368, 24.544525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743267, 30.809135, 24.421299>,  <33.714653, 30.467079, 24.215923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743267, 30.809135, 24.421299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455073, 0.430078, -0.779706,
		-0.887576, 0.289430, -0.358384,
		0.071537, 0.855139, 0.513439,
		33.764729, 31.065678, 24.575331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453159, 30.985926, 23.755287>,  <33.714653, 30.467079, 24.215923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453159, 30.985926, 23.755287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677166, 31.171158, 24.030079>,  <33.811569, 31.282297, 24.194954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677166, 31.171158, 24.030079>,  <33.453159, 30.985926, 23.755287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677166, 31.171158, 24.030079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523268, 0.445175, -0.726643,
		-0.642321, 0.766404, 0.006988,
		0.560013, 0.463081, 0.686980,
		33.845169, 31.310081, 24.236174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561188, 31.640554, 23.515240>,  <33.453159, 30.985926, 23.755287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561188, 31.640554, 23.515240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865208, 31.627239, 23.774845>,  <34.047619, 31.619249, 23.930609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865208, 31.627239, 23.774845>,  <33.561188, 31.640554, 23.515240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865208, 31.627239, 23.774845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555045, 0.552690, -0.621658,
		-0.338009, 0.832722, 0.438547,
		0.760049, -0.033287, 0.649012,
		34.093224, 31.617252, 23.969549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820389, 32.233116, 23.582853>,  <33.561188, 31.640554, 23.515240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820389, 32.233116, 23.582853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119789, 31.985703, 23.678486>,  <34.299431, 31.837254, 23.735865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119789, 31.985703, 23.678486>,  <33.820389, 32.233116, 23.582853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119789, 31.985703, 23.678486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580114, 0.436092, -0.687962,
		0.321268, 0.653635, 0.685236,
		0.748502, -0.618535, 0.239080,
		34.344341, 31.800142, 23.750210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345936, 32.516426, 23.485096>,  <33.820389, 32.233116, 23.582853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345936, 32.516426, 23.485096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557785, 32.177418, 23.499020>,  <34.684895, 31.974014, 23.507374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557785, 32.177418, 23.499020>,  <34.345936, 32.516426, 23.485096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557785, 32.177418, 23.499020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604291, 0.348195, -0.716653,
		0.595256, 0.400592, 0.696560,
		0.529624, -0.847518, 0.034809,
		34.716671, 31.923162, 23.509462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016563, 32.684872, 23.436274>,  <34.345936, 32.516426, 23.485096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016563, 32.684872, 23.436274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026188, 32.297218, 23.338135>,  <35.031963, 32.064625, 23.279251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026188, 32.297218, 23.338135>,  <35.016563, 32.684872, 23.436274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026188, 32.297218, 23.338135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597567, 0.210693, -0.773642,
		0.801458, -0.127994, 0.584194,
		0.024064, -0.969137, -0.245347,
		35.033405, 32.006477, 23.264530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764950, 32.458290, 23.412136>,  <35.016563, 32.684872, 23.436274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764950, 32.458290, 23.412136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561184, 32.192936, 23.192898>,  <35.438923, 32.033722, 23.061354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561184, 32.192936, 23.192898>,  <35.764950, 32.458290, 23.412136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561184, 32.192936, 23.192898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537138, 0.252481, -0.804821,
		0.672293, -0.704393, 0.227714,
		-0.509417, -0.663388, -0.548097,
		35.408360, 31.993919, 23.028469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981007, 33.111153, 23.821812>,  <35.764950, 32.458290, 23.412136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981007, 33.111153, 23.821812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876518, 33.496571, 23.844975>,  <35.813828, 33.727821, 23.858873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876518, 33.496571, 23.844975>,  <35.981007, 33.111153, 23.821812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876518, 33.496571, 23.844975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205188, -0.114048, 0.972055,
		0.943219, 0.242037, 0.227498,
		-0.261219, 0.963541, 0.057909,
		35.798153, 33.785633, 23.862347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100044, 33.193470, 24.481445>,  <35.981007, 33.111153, 23.821812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100044, 33.193470, 24.481445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887806, 33.513489, 24.369450>,  <35.760464, 33.705502, 24.302252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887806, 33.513489, 24.369450>,  <36.100044, 33.193470, 24.481445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887806, 33.513489, 24.369450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335383, 0.105209, 0.936189,
		0.778451, 0.590643, 0.212498,
		-0.530596, 0.800045, -0.279991,
		35.728626, 33.753502, 24.285452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298985, 33.683319, 24.946775>,  <36.100044, 33.193470, 24.481445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298985, 33.683319, 24.946775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931080, 33.752583, 24.805893>,  <35.710335, 33.794140, 24.721363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931080, 33.752583, 24.805893>,  <36.298985, 33.683319, 24.946775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931080, 33.752583, 24.805893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366629, -0.058848, 0.928504,
		0.140050, 0.983134, 0.117611,
		-0.919766, 0.173157, -0.352204,
		35.655151, 33.804531, 24.700232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016644, 34.205944, 25.306673>,  <36.298985, 33.683319, 24.946775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016644, 34.205944, 25.306673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724266, 33.967442, 25.173889>,  <35.548840, 33.824341, 25.094219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724266, 33.967442, 25.173889>,  <36.016644, 34.205944, 25.306673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724266, 33.967442, 25.173889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319684, -0.130590, 0.938482,
		-0.602924, 0.792104, -0.095158,
		-0.730948, -0.596253, -0.331959,
		35.504982, 33.788567, 25.074301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621315, 34.098053, 25.973452>,  <36.016644, 34.205944, 25.306673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621315, 34.098053, 25.973452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458015, 33.822895, 25.733406>,  <35.360035, 33.657803, 25.589378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458015, 33.822895, 25.733406>,  <35.621315, 34.098053, 25.973452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458015, 33.822895, 25.733406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413291, -0.446884, 0.793401,
		-0.813956, 0.571926, -0.101860,
		-0.408247, -0.687892, -0.600116,
		35.335541, 33.616528, 25.553371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928787, 34.012699, 26.191910>,  <35.621315, 34.098053, 25.973452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928787, 34.012699, 26.191910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032730, 33.687325, 25.983761>,  <35.095097, 33.492100, 25.858871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032730, 33.687325, 25.983761>,  <34.928787, 34.012699, 26.191910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032730, 33.687325, 25.983761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334887, -0.581356, 0.741536,
		-0.905718, -0.018426, -0.423479,
		0.259856, -0.813440, -0.520374,
		35.110687, 33.443291, 25.827648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327854, 33.658062, 26.165707>,  <34.928787, 34.012699, 26.191910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327854, 33.658062, 26.165707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638210, 33.406315, 26.148361>,  <34.824425, 33.255264, 26.137955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638210, 33.406315, 26.148361>,  <34.327854, 33.658062, 26.165707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638210, 33.406315, 26.148361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480477, -0.634080, 0.605874,
		-0.408815, -0.449260, -0.794378,
		0.775894, -0.629371, -0.043363,
		34.870979, 33.217503, 26.135353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057411, 33.144287, 26.349792>,  <34.327854, 33.658062, 26.165707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057411, 33.144287, 26.349792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419563, 32.974487, 26.346123>,  <34.636856, 32.872608, 26.343920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419563, 32.974487, 26.346123>,  <34.057411, 33.144287, 26.349792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419563, 32.974487, 26.346123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299589, -0.653985, 0.694658,
		-0.300882, -0.626182, -0.719281,
		0.905382, -0.424500, -0.009175,
		34.691177, 32.847137, 26.343370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979725, 32.423523, 26.383158>,  <34.057411, 33.144287, 26.349792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979725, 32.423523, 26.383158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342445, 32.487164, 26.539314>,  <34.560078, 32.525349, 26.633009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342445, 32.487164, 26.539314>,  <33.979725, 32.423523, 26.383158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342445, 32.487164, 26.539314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323360, -0.331646, 0.886256,
		0.270476, -0.929892, -0.249288,
		0.906797, 0.159101, 0.390392,
		34.614483, 32.534893, 26.656431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275425, 31.765514, 26.645290>,  <33.979725, 32.423523, 26.383158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275425, 31.765514, 26.645290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514294, 32.017826, 26.843483>,  <34.657616, 32.169212, 26.962399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514294, 32.017826, 26.843483>,  <34.275425, 31.765514, 26.645290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514294, 32.017826, 26.843483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341613, -0.358896, 0.868617,
		0.725733, -0.687976, 0.001161,
		0.597171, 0.630780, 0.495484,
		34.693443, 32.207062, 26.992128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610752, 31.346928, 27.145355>,  <34.275425, 31.765514, 26.645290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610752, 31.346928, 27.145355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635414, 31.725567, 27.271942>,  <34.650211, 31.952751, 27.347895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635414, 31.725567, 27.271942>,  <34.610752, 31.346928, 27.145355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635414, 31.725567, 27.271942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075338, -0.311752, 0.947172,
		0.995250, -0.082240, 0.052093,
		0.061655, 0.946598, 0.316467,
		34.653912, 32.009544, 27.366882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040058, 31.240118, 27.730059>,  <34.610752, 31.346928, 27.145355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040058, 31.240118, 27.730059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876431, 31.598965, 27.796810>,  <34.778255, 31.814272, 27.836861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876431, 31.598965, 27.796810>,  <35.040058, 31.240118, 27.730059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876431, 31.598965, 27.796810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081235, -0.217958, 0.972572,
		0.908882, 0.384290, 0.162036,
		-0.409067, 0.897115, 0.166881,
		34.753712, 31.868099, 27.846874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434086, 31.612679, 28.331642>,  <35.040058, 31.240118, 27.730059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434086, 31.612679, 28.331642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061138, 31.755875, 28.311512>,  <34.837372, 31.841793, 28.299435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061138, 31.755875, 28.311512>,  <35.434086, 31.612679, 28.331642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061138, 31.755875, 28.311512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064997, -0.029063, 0.997462,
		0.355621, 0.933272, 0.050366,
		-0.932367, 0.357992, -0.050325,
		34.781429, 31.863272, 28.296415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399025, 32.193729, 28.838579>,  <35.434086, 31.612679, 28.331642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399025, 32.193729, 28.838579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014984, 32.106495, 28.768555>,  <34.784561, 32.054153, 28.726540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014984, 32.106495, 28.768555>,  <35.399025, 32.193729, 28.838579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014984, 32.106495, 28.768555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185440, 0.027909, 0.982259,
		-0.209329, 0.975531, -0.067237,
		-0.960101, -0.218084, -0.175061,
		34.726955, 32.041069, 28.716036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966473, 32.750015, 29.070606>,  <35.399025, 32.193729, 28.838579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966473, 32.750015, 29.070606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781761, 32.395256, 29.075928>,  <34.670933, 32.182400, 29.079121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781761, 32.395256, 29.075928>,  <34.966473, 32.750015, 29.070606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781761, 32.395256, 29.075928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175854, 0.106245, 0.978666,
		-0.869386, 0.449591, -0.205026,
		-0.461782, -0.886894, 0.013305,
		34.643227, 32.129189, 29.079920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499439, 32.898338, 29.539639>,  <34.966473, 32.750015, 29.070606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499439, 32.898338, 29.539639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464241, 32.500980, 29.510178>,  <34.443123, 32.262566, 29.492502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464241, 32.500980, 29.510178>,  <34.499439, 32.898338, 29.539639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464241, 32.500980, 29.510178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386830, -0.034058, 0.921522,
		-0.917943, 0.109579, -0.381278,
		-0.087994, -0.993394, -0.073651,
		34.437843, 32.202961, 29.488083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851658, 32.830914, 29.783031>,  <34.499439, 32.898338, 29.539639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851658, 32.830914, 29.783031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048130, 32.483665, 29.811615>,  <34.166016, 32.275318, 29.828766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048130, 32.483665, 29.811615>,  <33.851658, 32.830914, 29.783031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048130, 32.483665, 29.811615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244371, -0.058590, 0.967910,
		-0.836076, -0.492883, -0.240922,
		0.491182, -0.868121, 0.071460,
		34.195484, 32.223228, 29.833054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414562, 32.388149, 30.060047>,  <33.851658, 32.830914, 29.783031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414562, 32.388149, 30.060047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774136, 32.225643, 30.125614>,  <33.989880, 32.128139, 30.164955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774136, 32.225643, 30.125614>,  <33.414562, 32.388149, 30.060047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774136, 32.225643, 30.125614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234675, -0.130606, 0.963260,
		-0.369928, -0.904374, -0.212746,
		0.898933, -0.406263, 0.163920,
		34.043816, 32.103764, 30.174789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339325, 31.651377, 30.381186>,  <33.414562, 32.388149, 30.060047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339325, 31.651377, 30.381186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696121, 31.808762, 30.470215>,  <33.910198, 31.903193, 30.523632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696121, 31.808762, 30.470215>,  <33.339325, 31.651377, 30.381186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696121, 31.808762, 30.470215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158778, -0.188301, 0.969192,
		0.423253, -0.899849, -0.105489,
		0.891990, 0.393464, 0.222575,
		33.963718, 31.926800, 30.536987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610161, 31.123371, 30.792311>,  <33.339325, 31.651377, 30.381186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610161, 31.123371, 30.792311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809299, 31.457809, 30.884476>,  <33.928783, 31.658472, 30.939774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809299, 31.457809, 30.884476>,  <33.610161, 31.123371, 30.792311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809299, 31.457809, 30.884476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184119, -0.157726, 0.970167,
		0.847496, -0.525417, 0.075418,
		0.497846, 0.836098, 0.230411,
		33.958652, 31.708639, 30.953600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758095, 30.949213, 31.387571>,  <33.610161, 31.123371, 30.792311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758095, 30.949213, 31.387571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851639, 31.337662, 31.406452>,  <33.907764, 31.570732, 31.417782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851639, 31.337662, 31.406452>,  <33.758095, 30.949213, 31.387571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851639, 31.337662, 31.406452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136700, -0.015226, 0.990495,
		0.962612, -0.238090, 0.129192,
		0.233860, 0.971124, 0.047204,
		33.921795, 31.629000, 31.420612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366600, 30.996511, 31.827797>,  <33.758095, 30.949213, 31.387571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366600, 30.996511, 31.827797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159164, 31.338474, 31.822136>,  <34.034702, 31.543652, 31.818739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159164, 31.338474, 31.822136>,  <34.366600, 30.996511, 31.827797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159164, 31.338474, 31.822136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050670, 0.047253, 0.997597,
		0.853519, 0.516628, -0.067823,
		-0.518592, 0.854905, -0.014153,
		34.003586, 31.594946, 31.817890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641712, 31.346436, 32.309204>,  <34.366600, 30.996511, 31.827797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641712, 31.346436, 32.309204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318680, 31.573517, 32.245304>,  <34.124859, 31.709766, 32.206963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318680, 31.573517, 32.245304>,  <34.641712, 31.346436, 32.309204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318680, 31.573517, 32.245304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079210, 0.164010, 0.983273,
		0.584410, 0.806729, -0.087484,
		-0.807583, 0.567705, -0.159750,
		34.076405, 31.743828, 32.197380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661682, 32.017242, 32.677471>,  <34.641712, 31.346436, 32.309204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661682, 32.017242, 32.677471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268200, 31.971035, 32.622372>,  <34.032108, 31.943310, 32.589314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268200, 31.971035, 32.622372>,  <34.661682, 32.017242, 32.677471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268200, 31.971035, 32.622372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171059, 0.365768, 0.914851,
		-0.055303, 0.923509, -0.379570,
		-0.983707, -0.115523, -0.137746,
		33.973087, 31.936378, 32.581047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318886, 32.608154, 32.952847>,  <34.661682, 32.017242, 32.677471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318886, 32.608154, 32.952847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021675, 32.340717, 32.940861>,  <33.843349, 32.180256, 32.933670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021675, 32.340717, 32.940861>,  <34.318886, 32.608154, 32.952847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021675, 32.340717, 32.940861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309661, 0.303754, 0.901024,
		-0.593314, 0.678764, -0.432734,
		-0.743026, -0.668591, -0.029965,
		33.798767, 32.140141, 32.931870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765610, 32.927315, 33.051952>,  <34.318886, 32.608154, 32.952847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765610, 32.927315, 33.051952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635616, 32.564972, 33.160625>,  <33.557621, 32.347565, 33.225830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635616, 32.564972, 33.160625>,  <33.765610, 32.927315, 33.051952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635616, 32.564972, 33.160625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336375, 0.379210, 0.862004,
		-0.883878, 0.188744, -0.427943,
		-0.324979, -0.905856, 0.271687,
		33.538124, 32.293217, 33.242130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261887, 33.061584, 33.494911>,  <33.765610, 32.927315, 33.051952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261887, 33.061584, 33.494911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328568, 32.677586, 33.584900>,  <33.368576, 32.447186, 33.638893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328568, 32.677586, 33.584900>,  <33.261887, 33.061584, 33.494911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328568, 32.677586, 33.584900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330594, 0.160540, 0.930019,
		-0.928934, -0.229412, -0.290607,
		0.166703, -0.959998, 0.224973,
		33.378578, 32.389587, 33.652393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632542, 32.838226, 33.897701>,  <33.261887, 33.061584, 33.494911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632542, 32.838226, 33.897701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965645, 32.625614, 33.959648>,  <33.165508, 32.498047, 33.996815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965645, 32.625614, 33.959648>,  <32.632542, 32.838226, 33.897701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965645, 32.625614, 33.959648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156411, 0.042455, 0.986779,
		-0.531081, -0.845973, -0.047783,
		0.832760, -0.531533, 0.154867,
		33.215473, 32.466156, 34.006107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122459, 32.391857, 33.784489>,  <32.632542, 32.838226, 33.897701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122459, 32.391857, 33.784489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766134, 32.570702, 33.816837>,  <31.552340, 32.678009, 33.836246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766134, 32.570702, 33.816837>,  <32.122459, 32.391857, 33.784489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766134, 32.570702, 33.816837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042335, 0.258896, -0.964977,
		-0.452391, -0.856191, -0.249557,
		-0.890814, 0.447112, 0.080876,
		31.498890, 32.704834, 33.841099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655005, 32.096481, 33.339962>,  <32.122459, 32.391857, 33.784489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655005, 32.096481, 33.339962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476244, 32.447296, 33.410480>,  <31.368988, 32.657787, 33.452793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476244, 32.447296, 33.410480>,  <31.655005, 32.096481, 33.339962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476244, 32.447296, 33.410480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198558, 0.094912, -0.975483,
		-0.872269, -0.470950, 0.131726,
		-0.446902, 0.877039, 0.176299,
		31.342173, 32.710407, 33.463371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064812, 32.186138, 32.810242>,  <31.655005, 32.096481, 33.339962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064812, 32.186138, 32.810242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122051, 32.560040, 32.940323>,  <31.156395, 32.784382, 33.018372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122051, 32.560040, 32.940323>,  <31.064812, 32.186138, 32.810242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122051, 32.560040, 32.940323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205883, 0.349515, -0.914030,
		-0.968057, 0.063843, 0.242465,
		0.143099, 0.934753, 0.325206,
		31.164982, 32.840466, 33.037884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571743, 32.565472, 32.472996>,  <31.064812, 32.186138, 32.810242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571743, 32.565472, 32.472996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848457, 32.828598, 32.592133>,  <31.014486, 32.986473, 32.663616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848457, 32.828598, 32.592133>,  <30.571743, 32.565472, 32.472996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848457, 32.828598, 32.592133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035109, 0.442616, -0.896024,
		-0.721251, 0.609398, 0.329290,
		0.691784, 0.657819, 0.297841,
		31.055992, 33.025944, 32.681484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324400, 33.193859, 32.335648>,  <30.571743, 32.565472, 32.472996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324400, 33.193859, 32.335648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716604, 33.271732, 32.346195>,  <30.951927, 33.318459, 32.352524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716604, 33.271732, 32.346195>,  <30.324400, 33.193859, 32.335648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716604, 33.271732, 32.346195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071021, 0.476402, -0.876354,
		-0.183180, 0.857402, 0.480945,
		0.980511, 0.194688, 0.026373,
		31.010757, 33.330139, 32.354107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
