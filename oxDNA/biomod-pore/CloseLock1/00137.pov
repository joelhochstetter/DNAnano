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
	<24.590635, 35.488720, 35.146107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314623, 35.199234, 35.142372>,  <24.149015, 35.025543, 35.140129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314623, 35.199234, 35.142372>,  <24.590635, 35.488720, 35.146107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.314623, 35.199234, 35.142372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435704, 0.405051, 0.803801,
		-0.577943, 0.558717, -0.594825,
		-0.690032, -0.723719, -0.009339,
		24.107613, 34.982117, 35.139572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.090509, 35.570560, 34.591061>,  <24.590635, 35.488720, 35.146107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.090509, 35.570560, 34.591061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474554, 35.618103, 34.489822>,  <25.704981, 35.646629, 34.429081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474554, 35.618103, 34.489822>,  <25.090509, 35.570560, 34.591061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474554, 35.618103, 34.489822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265294, -0.101269, 0.958835,
		0.088330, -0.987734, -0.128761,
		0.960113, 0.118854, -0.253094,
		25.762589, 35.653759, 34.413895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563261, 34.903221, 34.762108>,  <25.090509, 35.570560, 34.591061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563261, 34.903221, 34.762108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729151, 35.267189, 34.764858>,  <25.828684, 35.485569, 34.766510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729151, 35.267189, 34.764858>,  <25.563261, 34.903221, 34.762108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729151, 35.267189, 34.764858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165266, -0.082750, 0.982772,
		0.894814, -0.406442, -0.184697,
		0.414723, 0.909922, 0.006875,
		25.853567, 35.540165, 34.766922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310179, 34.981369, 35.059925>,  <25.563261, 34.903221, 34.762108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310179, 34.981369, 35.059925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069700, 35.292347, 35.133827>,  <25.925413, 35.478935, 35.178169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069700, 35.292347, 35.133827>,  <26.310179, 34.981369, 35.059925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069700, 35.292347, 35.133827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322159, 0.024222, 0.946376,
		0.731282, 0.628481, -0.265024,
		-0.601199, 0.777448, 0.184758,
		25.889341, 35.525581, 35.189255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688860, 35.530613, 35.177368>,  <26.310179, 34.981369, 35.059925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688860, 35.530613, 35.177368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349672, 35.575836, 35.384510>,  <26.146160, 35.602970, 35.508793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349672, 35.575836, 35.384510>,  <26.688860, 35.530613, 35.177368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349672, 35.575836, 35.384510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525008, 0.044738, 0.849921,
		0.072919, 0.992581, -0.097290,
		-0.847968, 0.113054, 0.517850,
		26.095282, 35.609753, 35.539864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246321, 34.942272, 35.208347>,  <26.688860, 35.530613, 35.177368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246321, 34.942272, 35.208347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646009, 34.945843, 35.192978>,  <27.885822, 34.947987, 35.183758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646009, 34.945843, 35.192978>,  <27.246321, 34.942272, 35.208347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646009, 34.945843, 35.192978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010138, -0.999457, 0.031364,
		-0.038122, -0.031729, -0.998769,
		0.999222, 0.008930, -0.038423,
		27.945776, 34.948521, 35.181450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451641, 34.448963, 34.814850>,  <27.246321, 34.942272, 35.208347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451641, 34.448963, 34.814850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773188, 34.495716, 35.048134>,  <27.966116, 34.523769, 35.188103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773188, 34.495716, 35.048134>,  <27.451641, 34.448963, 34.814850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773188, 34.495716, 35.048134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170406, -0.984658, -0.037542,
		0.569874, 0.129561, -0.811454,
		0.803869, 0.116883, 0.583210,
		28.014349, 34.530781, 35.223095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029478, 34.269447, 34.488548>,  <27.451641, 34.448963, 34.814850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029478, 34.269447, 34.488548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092985, 34.177589, 34.872643>,  <28.131088, 34.122475, 35.103100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092985, 34.177589, 34.872643>,  <28.029478, 34.269447, 34.488548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092985, 34.177589, 34.872643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017886, -0.971745, -0.235355,
		0.987154, 0.054541, -0.150172,
		0.158766, -0.229646, 0.960238,
		28.140615, 34.108696, 35.160713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608721, 33.844585, 34.488037>,  <28.029478, 34.269447, 34.488548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608721, 33.844585, 34.488037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408621, 33.779274, 34.828178>,  <28.288561, 33.740086, 35.032261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408621, 33.779274, 34.828178>,  <28.608721, 33.844585, 34.488037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408621, 33.779274, 34.828178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193111, -0.978363, -0.074254,
		0.844074, 0.127066, 0.520954,
		-0.500248, -0.163278, 0.850349,
		28.258547, 33.730289, 35.083282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022604, 33.356651, 34.792652>,  <28.608721, 33.844585, 34.488037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022604, 33.356651, 34.792652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684246, 33.336670, 35.005054>,  <28.481232, 33.324680, 35.132496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684246, 33.336670, 35.005054>,  <29.022604, 33.356651, 34.792652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684246, 33.336670, 35.005054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119447, -0.988058, 0.097330,
		0.519800, 0.145758, 0.841762,
		-0.845896, -0.049954, 0.531003,
		28.430477, 33.321682, 35.164356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125912, 33.073334, 35.546841>,  <29.022604, 33.356651, 34.792652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125912, 33.073334, 35.546841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765890, 32.991825, 35.392761>,  <28.549877, 32.942921, 35.300312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765890, 32.991825, 35.392761>,  <29.125912, 33.073334, 35.546841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765890, 32.991825, 35.392761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134583, -0.970704, 0.199049,
		-0.414475, 0.127314, 0.901111,
		-0.900054, -0.203775, -0.385199,
		28.495874, 32.930691, 35.277203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997078, 32.533672, 35.878948>,  <29.125912, 33.073334, 35.546841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997078, 32.533672, 35.878948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693680, 32.527431, 35.618351>,  <28.511641, 32.523689, 35.461994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693680, 32.527431, 35.618351>,  <28.997078, 32.533672, 35.878948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693680, 32.527431, 35.618351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088160, -0.988067, 0.126297,
		-0.645687, 0.153231, 0.748070,
		-0.758496, -0.015598, -0.651491,
		28.466131, 32.522751, 35.422905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540493, 32.061157, 36.160461>,  <28.997078, 32.533672, 35.878948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540493, 32.061157, 36.160461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416880, 32.096031, 35.781643>,  <28.342712, 32.116955, 35.554352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416880, 32.096031, 35.781643>,  <28.540493, 32.061157, 36.160461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416880, 32.096031, 35.781643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183437, -0.982555, -0.030597,
		-0.933194, 0.164268, 0.319635,
		-0.309033, 0.087186, -0.947047,
		28.324169, 32.122189, 35.497528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837648, 31.770975, 36.088692>,  <28.540493, 32.061157, 36.160461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837648, 31.770975, 36.088692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033251, 31.747084, 35.740597>,  <28.150612, 31.732750, 35.531742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033251, 31.747084, 35.740597>,  <27.837648, 31.770975, 36.088692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033251, 31.747084, 35.740597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064549, -0.997395, 0.032184,
		-0.869888, 0.040435, -0.491589,
		0.489007, -0.059728, -0.870232,
		28.179953, 31.729166, 35.479527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466192, 31.186249, 35.630840>,  <27.837648, 31.770975, 36.088692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466192, 31.186249, 35.630840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841305, 31.249884, 35.507389>,  <28.066372, 31.288065, 35.433319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841305, 31.249884, 35.507389>,  <27.466192, 31.186249, 35.630840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841305, 31.249884, 35.507389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102857, -0.976247, -0.190688,
		-0.331638, 0.147079, -0.931871,
		0.937783, 0.159089, -0.308633,
		28.122639, 31.297609, 35.414799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512346, 30.584270, 35.248062>,  <27.466192, 31.186249, 35.630840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512346, 30.584270, 35.248062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889242, 30.718163, 35.252808>,  <28.115379, 30.798498, 35.255653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889242, 30.718163, 35.252808>,  <27.512346, 30.584270, 35.248062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889242, 30.718163, 35.252808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334934, -0.941813, -0.028430,
		0.001657, 0.030761, -0.999526,
		0.942240, 0.334728, 0.011863,
		28.171915, 30.818581, 35.256367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918156, 30.171770, 34.712036>,  <27.512346, 30.584270, 35.248062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918156, 30.171770, 34.712036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192596, 30.322187, 34.961147>,  <28.357262, 30.412437, 35.110615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192596, 30.322187, 34.961147>,  <27.918156, 30.171770, 34.712036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192596, 30.322187, 34.961147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490169, -0.871519, -0.013771,
		0.537586, 0.314716, -0.782276,
		0.686102, 0.376044, 0.622780,
		28.398428, 30.435001, 35.147980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571354, 29.889475, 34.407238>,  <27.918156, 30.171770, 34.712036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571354, 29.889475, 34.407238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668009, 29.985031, 34.783440>,  <28.726002, 30.042364, 35.009159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668009, 29.985031, 34.783440>,  <28.571354, 29.889475, 34.407238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668009, 29.985031, 34.783440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541390, -0.837541, 0.073640,
		0.805300, 0.491383, -0.331714,
		0.241639, 0.238889, 0.940501,
		28.740501, 30.056698, 35.065590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306683, 29.994064, 34.488899>,  <28.571354, 29.889475, 34.407238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306683, 29.994064, 34.488899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149773, 29.868589, 34.834782>,  <29.055626, 29.793304, 35.042313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149773, 29.868589, 34.834782>,  <29.306683, 29.994064, 34.488899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149773, 29.868589, 34.834782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586479, -0.809494, -0.027603,
		0.708634, 0.496305, 0.501516,
		-0.392274, -0.313689, 0.864708,
		29.032091, 29.774483, 35.094193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848211, 29.652618, 34.778667>,  <29.306683, 29.994064, 34.488899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848211, 29.652618, 34.778667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567162, 29.538963, 35.039616>,  <29.398531, 29.470770, 35.196182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567162, 29.538963, 35.039616>,  <29.848211, 29.652618, 34.778667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567162, 29.538963, 35.039616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562335, -0.783498, 0.264404,
		0.436002, 0.552626, 0.710286,
		-0.702625, -0.284138, 0.652368,
		29.356375, 29.453722, 35.235325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177378, 29.369440, 35.269337>,  <29.848211, 29.652618, 34.778667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177378, 29.369440, 35.269337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805931, 29.255379, 35.364296>,  <29.583063, 29.186943, 35.421272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805931, 29.255379, 35.364296>,  <30.177378, 29.369440, 35.269337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805931, 29.255379, 35.364296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347365, -0.893016, 0.286111,
		0.130417, 0.348152, 0.928322,
		-0.928617, -0.285152, 0.237401,
		29.527346, 29.169832, 35.435516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151688, 29.151752, 35.870934>,  <30.177378, 29.369440, 35.269337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151688, 29.151752, 35.870934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837776, 28.952881, 35.722916>,  <29.649429, 28.833557, 35.634106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837776, 28.952881, 35.722916>,  <30.151688, 29.151752, 35.870934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837776, 28.952881, 35.722916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432780, -0.866992, 0.247035,
		-0.443650, 0.033719, 0.895566,
		-0.784778, -0.497180, -0.370048,
		29.602343, 28.803726, 35.611900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066257, 28.609837, 36.400429>,  <30.151688, 29.151752, 35.870934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066257, 28.609837, 36.400429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915071, 28.508987, 36.044098>,  <29.824360, 28.448477, 35.830299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915071, 28.508987, 36.044098>,  <30.066257, 28.609837, 36.400429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915071, 28.508987, 36.044098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235141, -0.956796, 0.171028,
		-0.895462, -0.144828, 0.420920,
		-0.377965, -0.252124, -0.890829,
		29.801682, 28.433350, 35.776848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651371, 27.964008, 36.418701>,  <30.066257, 28.609837, 36.400429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651371, 27.964008, 36.418701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758085, 27.979456, 36.033508>,  <29.822115, 27.988724, 35.802391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758085, 27.979456, 36.033508>,  <29.651371, 27.964008, 36.418701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758085, 27.979456, 36.033508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380275, -0.922344, 0.068363,
		-0.885559, -0.384436, -0.260755,
		0.266787, 0.038619, -0.962982,
		29.838121, 27.991041, 35.744614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577946, 27.300413, 36.021034>,  <29.651371, 27.964008, 36.418701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577946, 27.300413, 36.021034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867678, 27.517206, 35.850578>,  <30.041517, 27.647282, 35.748302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867678, 27.517206, 35.850578>,  <29.577946, 27.300413, 36.021034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867678, 27.517206, 35.850578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595726, -0.803139, -0.008882,
		-0.347066, -0.247432, -0.904612,
		0.724331, 0.541983, -0.426144,
		30.084976, 27.679802, 35.722736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817633, 27.038336, 35.276730>,  <29.577946, 27.300413, 36.021034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817633, 27.038336, 35.276730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107933, 27.224535, 35.479351>,  <30.282112, 27.336254, 35.600925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107933, 27.224535, 35.479351>,  <29.817633, 27.038336, 35.276730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107933, 27.224535, 35.479351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571750, -0.817622, -0.067800,
		0.382610, 0.338829, -0.859537,
		0.725749, 0.465499, 0.506556,
		30.325657, 27.364185, 35.631317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519932, 26.961426, 34.884773>,  <29.817633, 27.038336, 35.276730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519932, 26.961426, 34.884773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581259, 27.003336, 35.277817>,  <30.618055, 27.028482, 35.513641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581259, 27.003336, 35.277817>,  <30.519932, 26.961426, 34.884773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581259, 27.003336, 35.277817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806857, -0.587349, -0.063269,
		0.570504, 0.802523, -0.174590,
		0.153320, 0.104774, 0.982606,
		30.627254, 27.034769, 35.572598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955971, 26.602955, 35.534988>,  <30.519932, 26.961426, 34.884773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955971, 26.602955, 35.534988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893160, 26.312794, 35.266918>,  <30.855473, 26.138697, 35.106075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893160, 26.312794, 35.266918>,  <30.955971, 26.602955, 35.534988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893160, 26.312794, 35.266918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980099, -0.031022, -0.196069,
		0.121439, -0.687624, 0.715839,
		-0.157029, -0.725404, -0.670172,
		30.846050, 26.095173, 35.065868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424006, 26.026316, 35.586533>,  <30.955971, 26.602955, 35.534988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424006, 26.026316, 35.586533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316244, 26.080784, 35.205193>,  <31.251587, 26.113464, 34.976387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316244, 26.080784, 35.205193>,  <31.424006, 26.026316, 35.586533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316244, 26.080784, 35.205193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962789, 0.016089, -0.269775,
		-0.021397, -0.990555, -0.135436,
		-0.269406, 0.136169, -0.953352,
		31.235422, 26.121634, 34.919186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824726, 25.589603, 35.149647>,  <31.424006, 26.026316, 35.586533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824726, 25.589603, 35.149647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680056, 25.911072, 34.960629>,  <31.593252, 26.103952, 34.847218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680056, 25.911072, 34.960629>,  <31.824726, 25.589603, 35.149647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680056, 25.911072, 34.960629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913233, 0.203408, -0.353029,
		-0.187599, -0.559230, -0.807508,
		-0.361678, 0.803671, -0.472548,
		31.571552, 26.152174, 34.818863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282375, 25.476938, 35.739697>,  <31.824726, 25.589603, 35.149647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282375, 25.476938, 35.739697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122486, 25.807615, 35.898087>,  <32.026554, 26.006021, 35.993122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122486, 25.807615, 35.898087>,  <32.282375, 25.476938, 35.739697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122486, 25.807615, 35.898087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525303, -0.560612, 0.640134,
		0.751185, 0.047866, 0.658354,
		-0.399722, 0.826694, 0.395979,
		32.002571, 26.055624, 36.016880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931820, 25.727713, 36.066376>,  <32.282375, 25.476938, 35.739697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931820, 25.727713, 36.066376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925262, 25.694754, 35.667789>,  <32.921329, 25.674978, 35.428638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925262, 25.694754, 35.667789>,  <32.931820, 25.727713, 36.066376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925262, 25.694754, 35.667789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372955, 0.924169, -0.082555,
		0.927705, -0.372989, 0.015581,
		-0.016393, -0.082398, -0.996465,
		32.920345, 25.670034, 35.368851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520729, 26.004908, 35.786270>,  <32.931820, 25.727713, 36.066376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520729, 26.004908, 35.786270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194988, 26.043892, 35.557415>,  <32.999546, 26.067282, 35.420101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194988, 26.043892, 35.557415>,  <33.520729, 26.004908, 35.786270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194988, 26.043892, 35.557415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241869, 0.953105, -0.181906,
		0.527576, -0.286517, -0.799732,
		-0.814348, 0.097461, -0.572135,
		32.950684, 26.073130, 35.385773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791561, 26.613436, 35.511162>,  <33.520729, 26.004908, 35.786270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791561, 26.613436, 35.511162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397205, 26.576057, 35.455597>,  <33.160591, 26.553631, 35.422256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397205, 26.576057, 35.455597>,  <33.791561, 26.613436, 35.511162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397205, 26.576057, 35.455597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080106, 0.991888, -0.098699,
		0.147007, -0.086178, -0.985374,
		-0.985886, -0.093444, -0.138911,
		33.101440, 26.548023, 35.413925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901150, 27.069620, 36.194462>,  <33.791561, 26.613436, 35.511162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901150, 27.069620, 36.194462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771946, 27.265347, 35.870430>,  <33.694424, 27.382782, 35.676010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771946, 27.265347, 35.870430>,  <33.901150, 27.069620, 36.194462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771946, 27.265347, 35.870430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151491, 0.818196, 0.554621,
		0.934192, 0.301868, -0.190158,
		-0.323009, 0.489316, -0.810083,
		33.675045, 27.412142, 35.627403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209030, 27.798492, 36.059380>,  <33.901150, 27.069620, 36.194462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209030, 27.798492, 36.059380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862312, 27.809090, 35.860195>,  <33.654282, 27.815449, 35.740685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862312, 27.809090, 35.860195>,  <34.209030, 27.798492, 36.059380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862312, 27.809090, 35.860195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114880, 0.961119, 0.251104,
		0.485252, 0.274862, -0.830049,
		-0.866795, 0.026493, -0.497961,
		33.602272, 27.817038, 35.710808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215229, 28.402208, 35.543472>,  <34.209030, 27.798492, 36.059380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215229, 28.402208, 35.543472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832020, 28.314850, 35.617767>,  <33.602097, 28.262436, 35.662346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832020, 28.314850, 35.617767>,  <34.215229, 28.402208, 35.543472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832020, 28.314850, 35.617767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220511, 0.975339, 0.009447,
		-0.183222, -0.031907, -0.982554,
		-0.958021, -0.218395, 0.185739,
		33.544613, 28.249331, 35.673489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886963, 29.006752, 35.219582>,  <34.215229, 28.402208, 35.543472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886963, 29.006752, 35.219582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621784, 28.840860, 35.468899>,  <33.462677, 28.741325, 35.618488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621784, 28.840860, 35.468899>,  <33.886963, 29.006752, 35.219582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621784, 28.840860, 35.468899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466516, 0.879990, 0.089333,
		-0.585544, -0.231555, -0.776866,
		-0.662949, -0.414728, 0.623297,
		33.422901, 28.716442, 35.655888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189434, 29.233788, 35.026104>,  <33.886963, 29.006752, 35.219582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189434, 29.233788, 35.026104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183994, 29.129173, 35.412144>,  <33.180729, 29.066404, 35.643768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183994, 29.129173, 35.412144>,  <33.189434, 29.233788, 35.026104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183994, 29.129173, 35.412144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360925, 0.901400, 0.239187,
		-0.932496, -0.345074, -0.106656,
		-0.013602, -0.261535, 0.965098,
		33.179913, 29.050713, 35.701672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419910, 29.408466, 35.276093>,  <33.189434, 29.233788, 35.026104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419910, 29.408466, 35.276093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693108, 29.391172, 35.567749>,  <32.857025, 29.380796, 35.742744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693108, 29.391172, 35.567749>,  <32.419910, 29.408466, 35.276093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693108, 29.391172, 35.567749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394000, 0.818758, 0.417611,
		-0.615047, -0.572508, 0.542172,
		0.682994, -0.043235, 0.729143,
		32.898006, 29.378202, 35.786491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061756, 29.502554, 35.902344>,  <32.419910, 29.408466, 35.276093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061756, 29.502554, 35.902344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438637, 29.599773, 35.994587>,  <32.664764, 29.658106, 36.049934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438637, 29.599773, 35.994587>,  <32.061756, 29.502554, 35.902344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438637, 29.599773, 35.994587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319368, 0.859595, 0.398875,
		-0.101287, -0.449472, 0.887534,
		0.942202, 0.243049, 0.230612,
		32.721298, 29.672688, 36.063770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090855, 29.833073, 36.579140>,  <32.061756, 29.502554, 35.902344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090855, 29.833073, 36.579140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452698, 29.942986, 36.448799>,  <32.669804, 30.008934, 36.370594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452698, 29.942986, 36.448799>,  <32.090855, 29.833073, 36.579140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452698, 29.942986, 36.448799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134760, 0.909631, 0.392951,
		0.404384, -0.311554, 0.859888,
		0.904607, 0.274782, -0.325856,
		32.724079, 30.025419, 36.351044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442692, 30.079370, 37.084187>,  <32.090855, 29.833073, 36.579140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442692, 30.079370, 37.084187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582081, 30.261219, 36.756313>,  <32.665714, 30.370329, 36.559589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582081, 30.261219, 36.756313>,  <32.442692, 30.079370, 37.084187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582081, 30.261219, 36.756313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259962, 0.887071, 0.381476,
		0.900547, 0.080153, 0.427306,
		0.348475, 0.454621, -0.819686,
		32.686623, 30.397606, 36.510406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253788, 30.682732, 37.281792>,  <32.442692, 30.079370, 37.084187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253788, 30.682732, 37.281792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360069, 30.746199, 36.901428>,  <32.423840, 30.784279, 36.673210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360069, 30.746199, 36.901428>,  <32.253788, 30.682732, 37.281792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360069, 30.746199, 36.901428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303643, 0.949934, 0.073662,
		0.914988, 0.269164, 0.300580,
		0.265704, 0.158668, -0.950908,
		32.439781, 30.793798, 36.616158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597839, 31.233450, 37.297131>,  <32.253788, 30.682732, 37.281792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597839, 31.233450, 37.297131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476730, 31.218002, 36.916218>,  <32.404064, 31.208735, 36.687672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476730, 31.218002, 36.916218>,  <32.597839, 31.233450, 37.297131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476730, 31.218002, 36.916218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133183, 0.991089, 0.002154,
		0.943710, 0.127480, -0.305221,
		-0.302776, -0.038618, -0.952279,
		32.385899, 31.206417, 36.630535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833607, 31.918724, 36.941395>,  <32.597839, 31.233450, 37.297131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833607, 31.918724, 36.941395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567577, 31.755634, 36.691135>,  <32.407959, 31.657780, 36.540977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567577, 31.755634, 36.691135>,  <32.833607, 31.918724, 36.941395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567577, 31.755634, 36.691135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293540, 0.913094, -0.283010,
		0.686669, -0.004568, -0.726956,
		-0.665071, -0.407725, -0.625652,
		32.368057, 31.633316, 36.503441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998432, 32.123524, 36.291882>,  <32.833607, 31.918724, 36.941395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998432, 32.123524, 36.291882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610355, 32.029358, 36.268902>,  <32.377510, 31.972858, 36.255116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610355, 32.029358, 36.268902>,  <32.998432, 32.123524, 36.291882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610355, 32.029358, 36.268902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192595, 0.892992, -0.406782,
		0.147065, -0.383594, -0.911717,
		-0.970195, -0.235416, -0.057450,
		32.319298, 31.958733, 36.251667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724380, 32.507370, 35.779129>,  <32.998432, 32.123524, 36.291882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724380, 32.507370, 35.779129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378323, 32.400730, 35.949047>,  <32.170689, 32.336746, 36.050999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378323, 32.400730, 35.949047>,  <32.724380, 32.507370, 35.779129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378323, 32.400730, 35.949047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391625, 0.888239, -0.240127,
		-0.313304, -0.374105, -0.872861,
		-0.865142, -0.266602, 0.424798,
		32.118778, 32.320751, 36.076485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212746, 32.701618, 35.330956>,  <32.724380, 32.507370, 35.779129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212746, 32.701618, 35.330956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026730, 32.688713, 35.684837>,  <31.915121, 32.680969, 35.897167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026730, 32.688713, 35.684837>,  <32.212746, 32.701618, 35.330956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026730, 32.688713, 35.684837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429291, 0.882199, -0.193480,
		-0.774242, -0.469771, -0.424104,
		-0.465035, -0.032264, 0.884704,
		31.887218, 32.679035, 35.950249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558371, 33.009392, 35.120159>,  <32.212746, 32.701618, 35.330956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558371, 33.009392, 35.120159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585180, 33.027233, 35.518860>,  <31.601267, 33.037937, 35.758080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585180, 33.027233, 35.518860>,  <31.558371, 33.009392, 35.120159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585180, 33.027233, 35.518860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495831, 0.868402, -0.005517,
		-0.865829, -0.493851, 0.080318,
		0.067024, 0.044601, 0.996754,
		31.605288, 33.040615, 35.817886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841507, 33.119549, 35.325863>,  <31.558371, 33.009392, 35.120159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841507, 33.119549, 35.325863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077353, 33.234135, 35.627934>,  <31.218861, 33.302887, 35.809177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077353, 33.234135, 35.627934>,  <30.841507, 33.119549, 35.325863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077353, 33.234135, 35.627934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583397, 0.797662, 0.152918,
		-0.558572, -0.530731, 0.637434,
		0.589615, 0.286461, 0.755178,
		31.254236, 33.320072, 35.854488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412476, 33.305367, 35.837456>,  <30.841507, 33.119549, 35.325863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412476, 33.305367, 35.837456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756598, 33.500572, 35.896400>,  <30.963072, 33.617695, 35.931767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756598, 33.500572, 35.896400>,  <30.412476, 33.305367, 35.837456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756598, 33.500572, 35.896400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509638, 0.830090, 0.226316,
		-0.011880, -0.269804, 0.962842,
		0.860307, 0.488012, 0.147363,
		31.014690, 33.646976, 35.940609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353384, 33.676769, 36.522121>,  <30.412476, 33.305367, 35.837456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353384, 33.676769, 36.522121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639118, 33.863842, 36.313892>,  <30.810558, 33.976086, 36.188953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639118, 33.863842, 36.313892>,  <30.353384, 33.676769, 36.522121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639118, 33.863842, 36.313892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297769, 0.876320, 0.378679,
		0.633293, -0.115493, 0.765246,
		0.714335, 0.467681, -0.520577,
		30.853418, 34.004147, 36.157719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522699, 34.300480, 36.953842>,  <30.353384, 33.676769, 36.522121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522699, 34.300480, 36.953842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727842, 34.404255, 36.626511>,  <30.850929, 34.466518, 36.430111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727842, 34.404255, 36.626511>,  <30.522699, 34.300480, 36.953842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727842, 34.404255, 36.626511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173771, 0.964883, 0.196988,
		0.840702, 0.041175, 0.539931,
		0.512859, 0.259433, -0.818334,
		30.881701, 34.482086, 36.381012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940685, 34.898434, 37.200916>,  <30.522699, 34.300480, 36.953842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940685, 34.898434, 37.200916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894886, 34.907196, 36.803642>,  <30.867407, 34.912453, 36.565277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894886, 34.907196, 36.803642>,  <30.940685, 34.898434, 37.200916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894886, 34.907196, 36.803642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177501, 0.983217, 0.042150,
		0.977437, 0.181117, -0.108688,
		-0.114498, 0.021907, -0.993182,
		30.860537, 34.913769, 36.505688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457567, 35.386631, 36.922569>,  <30.940685, 34.898434, 37.200916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457567, 35.386631, 36.922569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147017, 35.372959, 36.670834>,  <30.960686, 35.364758, 36.519791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147017, 35.372959, 36.670834>,  <31.457567, 35.386631, 36.922569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147017, 35.372959, 36.670834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071387, 0.996872, 0.033926,
		0.626215, 0.071266, -0.776386,
		-0.776375, -0.034178, -0.629343,
		30.914104, 35.362705, 36.482029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591227, 35.910736, 36.407681>,  <31.457567, 35.386631, 36.922569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591227, 35.910736, 36.407681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197283, 35.841549, 36.403076>,  <30.960917, 35.800037, 36.400314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197283, 35.841549, 36.403076>,  <31.591227, 35.910736, 36.407681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197283, 35.841549, 36.403076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166992, 0.964443, -0.204851,
		0.046534, -0.199827, -0.978726,
		-0.984860, -0.172972, -0.011510,
		30.901825, 35.789658, 36.399624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016918, 36.077507, 36.902935>,  <31.591227, 35.910736, 36.407681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016918, 36.077507, 36.902935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243290, 36.406002, 36.873837>,  <32.379112, 36.603100, 36.856377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243290, 36.406002, 36.873837>,  <32.016918, 36.077507, 36.902935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243290, 36.406002, 36.873837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397722, -0.194655, 0.896620,
		0.722178, -0.536356, -0.436785,
		0.565930, 0.821238, -0.072745,
		32.413071, 36.652374, 36.852013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690620, 35.956364, 37.028854>,  <32.016918, 36.077507, 36.902935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690620, 35.956364, 37.028854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600159, 36.320385, 37.167797>,  <32.545883, 36.538799, 37.251163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600159, 36.320385, 37.167797>,  <32.690620, 35.956364, 37.028854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600159, 36.320385, 37.167797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385661, -0.243805, 0.889845,
		0.894495, 0.335202, -0.295836,
		-0.226152, 0.910054, 0.347357,
		32.532314, 36.593403, 37.272003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283260, 36.320160, 37.337017>,  <32.690620, 35.956364, 37.028854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283260, 36.320160, 37.337017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942070, 36.435017, 37.511368>,  <32.737358, 36.503929, 37.615978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942070, 36.435017, 37.511368>,  <33.283260, 36.320160, 37.337017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942070, 36.435017, 37.511368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336242, -0.336440, 0.879630,
		0.399222, 0.896861, 0.190426,
		-0.852973, 0.287139, 0.435877,
		32.686176, 36.521160, 37.642132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605534, 36.072910, 37.948452>,  <33.283260, 36.320160, 37.337017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605534, 36.072910, 37.948452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227955, 36.177593, 38.028931>,  <33.001408, 36.240402, 38.077217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227955, 36.177593, 38.028931>,  <33.605534, 36.072910, 37.948452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227955, 36.177593, 38.028931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082624, -0.402773, 0.911563,
		0.319602, 0.877087, 0.358571,
		-0.943943, 0.261711, 0.201196,
		32.944771, 36.256107, 38.089291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420391, 36.452785, 38.541393>,  <33.605534, 36.072910, 37.948452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420391, 36.452785, 38.541393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101086, 36.218964, 38.483326>,  <32.909504, 36.078671, 38.448486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101086, 36.218964, 38.483326>,  <33.420391, 36.452785, 38.541393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101086, 36.218964, 38.483326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222921, -0.510640, 0.830393,
		-0.559536, 0.630513, 0.537934,
		-0.798265, -0.584552, -0.145166,
		32.861607, 36.043598, 38.439777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100044, 36.321556, 39.261024>,  <33.420391, 36.452785, 38.541393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100044, 36.321556, 39.261024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002720, 36.001102, 39.042305>,  <32.944324, 35.808830, 38.911076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002720, 36.001102, 39.042305>,  <33.100044, 36.321556, 39.261024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002720, 36.001102, 39.042305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056216, -0.574435, 0.816617,
		-0.968319, 0.167951, 0.184801,
		-0.243308, -0.801135, -0.546795,
		32.929726, 35.760761, 38.878265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537189, 36.058720, 39.540375>,  <33.100044, 36.321556, 39.261024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537189, 36.058720, 39.540375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712254, 35.759735, 39.340469>,  <32.817291, 35.580345, 39.220528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712254, 35.759735, 39.340469>,  <32.537189, 36.058720, 39.540375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712254, 35.759735, 39.340469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010373, -0.551584, 0.834054,
		-0.899083, -0.370213, -0.233650,
		0.437656, -0.747460, -0.499761,
		32.843552, 35.535496, 39.190540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157722, 35.442417, 39.804283>,  <32.537189, 36.058720, 39.540375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157722, 35.442417, 39.804283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508770, 35.337265, 39.643944>,  <32.719398, 35.274174, 39.547741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508770, 35.337265, 39.643944>,  <32.157722, 35.442417, 39.804283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508770, 35.337265, 39.643944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223097, -0.516139, 0.826939,
		-0.424275, -0.815166, -0.394328,
		0.877621, -0.262877, -0.400846,
		32.772057, 35.258400, 39.523689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177250, 34.773342, 39.983273>,  <32.157722, 35.442417, 39.804283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177250, 34.773342, 39.983273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557014, 34.859821, 39.892170>,  <32.784874, 34.911709, 39.837509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557014, 34.859821, 39.892170>,  <32.177250, 34.773342, 39.983273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557014, 34.859821, 39.892170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312934, -0.590927, 0.743558,
		0.026167, -0.777217, -0.628689,
		0.949414, 0.216195, -0.227755,
		32.841839, 34.924679, 39.823845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516777, 34.092155, 40.140240>,  <32.177250, 34.773342, 39.983273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516777, 34.092155, 40.140240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773590, 34.398823, 40.141273>,  <32.927677, 34.582825, 40.141891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773590, 34.398823, 40.141273>,  <32.516777, 34.092155, 40.140240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773590, 34.398823, 40.141273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324965, -0.275184, 0.904805,
		0.694398, -0.580077, -0.425820,
		0.642035, 0.766671, 0.002582,
		32.966202, 34.628822, 40.142048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088573, 33.789040, 40.252609>,  <32.516777, 34.092155, 40.140240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088573, 33.789040, 40.252609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169796, 34.170265, 40.342438>,  <33.218529, 34.399002, 40.396336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169796, 34.170265, 40.342438>,  <33.088573, 33.789040, 40.252609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169796, 34.170265, 40.342438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295567, -0.278310, 0.913884,
		0.933493, -0.119192, -0.338207,
		0.203053, 0.953067, 0.224571,
		33.230713, 34.456184, 40.409809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624466, 33.705750, 40.643997>,  <33.088573, 33.789040, 40.252609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624466, 33.705750, 40.643997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489258, 34.074322, 40.720627>,  <33.408134, 34.295467, 40.766605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489258, 34.074322, 40.720627>,  <33.624466, 33.705750, 40.643997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489258, 34.074322, 40.720627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279738, -0.095987, 0.955266,
		0.898603, 0.376491, -0.225314,
		-0.338022, 0.921434, 0.191573,
		33.387852, 34.350754, 40.778099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105461, 34.011314, 40.994541>,  <33.624466, 33.705750, 40.643997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105461, 34.011314, 40.994541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786526, 34.238697, 41.075642>,  <33.595165, 34.375126, 41.124302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786526, 34.238697, 41.075642>,  <34.105461, 34.011314, 40.994541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786526, 34.238697, 41.075642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226263, -0.029892, 0.973608,
		0.559514, 0.822170, -0.104786,
		-0.797339, 0.568456, 0.202751,
		33.547325, 34.409233, 41.136467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363316, 34.547737, 41.439568>,  <34.105461, 34.011314, 40.994541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363316, 34.547737, 41.439568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971905, 34.541279, 41.521763>,  <33.737057, 34.537403, 41.571079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971905, 34.541279, 41.521763>,  <34.363316, 34.547737, 41.439568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971905, 34.541279, 41.521763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206090, -0.059337, 0.976732,
		-0.003576, 0.998107, 0.061390,
		-0.978527, -0.016145, 0.205487,
		33.678349, 34.536434, 41.583408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209450, 35.061886, 42.008148>,  <34.363316, 34.547737, 41.439568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209450, 35.061886, 42.008148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913101, 34.793228, 42.008141>,  <33.735291, 34.632034, 42.008137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913101, 34.793228, 42.008141>,  <34.209450, 35.061886, 42.008148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913101, 34.793228, 42.008141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152149, -0.167866, 0.973998,
		-0.654183, 0.721606, 0.226558,
		-0.740874, -0.671644, -0.000023,
		33.690838, 34.591736, 42.008133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904030, 35.132854, 42.629726>,  <34.209450, 35.061886, 42.008148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904030, 35.132854, 42.629726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767197, 34.774582, 42.516068>,  <33.685097, 34.559620, 42.447872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767197, 34.774582, 42.516068>,  <33.904030, 35.132854, 42.629726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767197, 34.774582, 42.516068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016654, -0.296560, 0.954869,
		-0.939521, 0.331378, 0.086532,
		-0.342085, -0.895679, -0.284143,
		33.664570, 34.505878, 42.430824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476128, 34.994778, 43.169350>,  <33.904030, 35.132854, 42.629726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476128, 34.994778, 43.169350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551216, 34.649632, 42.981640>,  <33.596268, 34.442543, 42.869015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551216, 34.649632, 42.981640>,  <33.476128, 34.994778, 43.169350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551216, 34.649632, 42.981640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076176, -0.463542, 0.882794,
		-0.979265, -0.201463, -0.021285,
		0.187717, -0.862868, -0.469277,
		33.607533, 34.390770, 42.840858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055103, 34.547550, 43.431110>,  <33.476128, 34.994778, 43.169350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055103, 34.547550, 43.431110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338078, 34.304405, 43.286869>,  <33.507862, 34.158520, 43.200325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338078, 34.304405, 43.286869>,  <33.055103, 34.547550, 43.431110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338078, 34.304405, 43.286869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129206, -0.390386, 0.911540,
		-0.694867, -0.691448, -0.197633,
		0.707436, -0.607864, -0.360606,
		33.550308, 34.122047, 43.178688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949863, 33.937531, 43.731289>,  <33.055103, 34.547550, 43.431110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949863, 33.937531, 43.731289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335049, 33.914024, 43.626034>,  <33.566162, 33.899921, 43.562881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335049, 33.914024, 43.626034>,  <32.949863, 33.937531, 43.731289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335049, 33.914024, 43.626034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229895, -0.330908, 0.915231,
		-0.140859, -0.941831, -0.305144,
		0.962968, -0.058767, -0.263133,
		33.623940, 33.896393, 43.547092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103508, 33.362064, 44.087219>,  <32.949863, 33.937531, 43.731289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103508, 33.362064, 44.087219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455505, 33.528996, 43.996498>,  <33.666706, 33.629154, 43.942066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455505, 33.528996, 43.996498>,  <33.103508, 33.362064, 44.087219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455505, 33.528996, 43.996498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385479, -0.348516, 0.854367,
		0.277506, -0.839270, -0.467565,
		0.879998, 0.417328, -0.226805,
		33.719505, 33.654194, 43.928455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735016, 32.893757, 44.045128>,  <33.103508, 33.362064, 44.087219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735016, 32.893757, 44.045128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901356, 33.252712, 44.104145>,  <34.001160, 33.468086, 44.139557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901356, 33.252712, 44.104145>,  <33.735016, 32.893757, 44.045128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901356, 33.252712, 44.104145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545507, -0.375945, 0.749058,
		0.727661, -0.231010, -0.645866,
		0.415850, 0.897385, 0.147543,
		34.026112, 33.521927, 44.148407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330116, 32.702213, 44.172047>,  <33.735016, 32.893757, 44.045128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330116, 32.702213, 44.172047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300014, 33.069389, 44.327850>,  <34.281956, 33.289696, 44.421333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300014, 33.069389, 44.327850>,  <34.330116, 32.702213, 44.172047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300014, 33.069389, 44.327850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534403, -0.292660, 0.792946,
		0.841873, 0.267824, -0.468529,
		-0.075250, 0.917943, 0.389509,
		34.277439, 33.344772, 44.444702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017799, 32.989464, 44.511627>,  <34.330116, 32.702213, 44.172047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017799, 32.989464, 44.511627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713181, 33.195461, 44.669022>,  <34.530411, 33.319057, 44.763458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713181, 33.195461, 44.669022>,  <35.017799, 32.989464, 44.511627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713181, 33.195461, 44.669022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384474, -0.129782, 0.913968,
		0.521751, 0.847315, -0.099164,
		-0.761549, 0.514989, 0.393484,
		34.484715, 33.349957, 44.787067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367233, 33.418118, 45.061699>,  <35.017799, 32.989464, 44.511627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367233, 33.418118, 45.061699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974274, 33.431618, 45.135189>,  <34.738499, 33.439716, 45.179283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974274, 33.431618, 45.135189>,  <35.367233, 33.418118, 45.061699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974274, 33.431618, 45.135189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185212, 0.048119, 0.981520,
		0.024282, 0.998271, -0.053522,
		-0.982399, 0.033746, 0.183723,
		34.679554, 33.441742, 45.190308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301338, 33.832958, 45.629269>,  <35.367233, 33.418118, 45.061699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301338, 33.832958, 45.629269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962658, 33.620243, 45.636181>,  <34.759449, 33.492615, 45.640327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962658, 33.620243, 45.636181>,  <35.301338, 33.832958, 45.629269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962658, 33.620243, 45.636181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056259, -0.057191, 0.996777,
		-0.529082, 0.844947, 0.078341,
		-0.846704, -0.531784, 0.017277,
		34.708649, 33.460709, 45.641365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903217, 34.165184, 46.208420>,  <35.301338, 33.832958, 45.629269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903217, 34.165184, 46.208420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751419, 33.804718, 46.124615>,  <34.660339, 33.588440, 46.074329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751419, 33.804718, 46.124615>,  <34.903217, 34.165184, 46.208420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751419, 33.804718, 46.124615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001067, -0.226028, 0.974120,
		-0.925195, 0.369894, 0.084815,
		-0.379492, -0.901160, -0.209514,
		34.637573, 33.534370, 46.061760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321953, 34.051163, 46.683178>,  <34.903217, 34.165184, 46.208420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321953, 34.051163, 46.683178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475975, 33.699333, 46.571407>,  <34.568390, 33.488235, 46.504345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475975, 33.699333, 46.571407>,  <34.321953, 34.051163, 46.683178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475975, 33.699333, 46.571407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019526, -0.294939, 0.955316,
		-0.922687, -0.373305, -0.096393,
		0.385054, -0.879576, -0.279426,
		34.591492, 33.435459, 46.487579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929142, 33.596642, 47.023193>,  <34.321953, 34.051163, 46.683178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929142, 33.596642, 47.023193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267479, 33.397568, 46.946400>,  <34.470482, 33.278126, 46.900326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267479, 33.397568, 46.946400>,  <33.929142, 33.596642, 47.023193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267479, 33.397568, 46.946400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060457, -0.447027, 0.892475,
		-0.529991, -0.743290, -0.408204,
		0.845845, -0.497683, -0.191983,
		34.521233, 33.248264, 46.888805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851303, 33.144543, 47.523598>,  <33.929142, 33.596642, 47.023193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851303, 33.144543, 47.523598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227829, 33.070160, 47.410923>,  <34.453743, 33.025532, 47.343319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227829, 33.070160, 47.410923>,  <33.851303, 33.144543, 47.523598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227829, 33.070160, 47.410923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097692, -0.648729, 0.754723,
		-0.323083, -0.737950, -0.592492,
		0.941315, -0.185956, -0.281685,
		34.510223, 33.014374, 47.326416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157753, 32.654358, 47.997185>,  <33.851303, 33.144543, 47.523598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157753, 32.654358, 47.997185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478676, 32.715538, 47.766392>,  <34.671230, 32.752247, 47.627918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478676, 32.715538, 47.766392>,  <34.157753, 32.654358, 47.997185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478676, 32.715538, 47.766392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565465, -0.504338, 0.652604,
		-0.191175, -0.849852, -0.491125,
		0.802310, 0.152953, -0.576979,
		34.719368, 32.761425, 47.593300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398506, 31.977076, 47.673443>,  <34.157753, 32.654358, 47.997185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398506, 31.977076, 47.673443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694542, 32.239388, 47.733070>,  <34.872162, 32.396774, 47.768848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694542, 32.239388, 47.733070>,  <34.398506, 31.977076, 47.673443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694542, 32.239388, 47.733070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464374, -0.658659, 0.592051,
		0.486440, -0.368948, -0.791994,
		0.740090, 0.655778, 0.149069,
		34.916569, 32.436123, 47.777790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007755, 31.566990, 47.825233>,  <34.398506, 31.977076, 47.673443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007755, 31.566990, 47.825233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075504, 31.927504, 47.984734>,  <35.116154, 32.143810, 48.080433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075504, 31.927504, 47.984734>,  <35.007755, 31.566990, 47.825233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075504, 31.927504, 47.984734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272311, -0.431641, 0.859961,
		0.947186, -0.037066, -0.318536,
		0.169368, 0.901284, 0.398751,
		35.126316, 32.197887, 48.104359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652870, 31.513260, 48.174660>,  <35.007755, 31.566990, 47.825233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652870, 31.513260, 48.174660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473507, 31.834486, 48.331638>,  <35.365891, 32.027222, 48.425827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473507, 31.834486, 48.331638>,  <35.652870, 31.513260, 48.174660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473507, 31.834486, 48.331638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365029, -0.236254, 0.900521,
		0.815896, 0.547055, -0.187204,
		-0.448407, 0.803066, 0.392449,
		35.338985, 32.075405, 48.449371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140926, 31.909847, 48.572472>,  <35.652870, 31.513260, 48.174660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140926, 31.909847, 48.572472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784950, 32.007393, 48.726627>,  <35.571365, 32.065922, 48.819122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784950, 32.007393, 48.726627>,  <36.140926, 31.909847, 48.572472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784950, 32.007393, 48.726627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330870, -0.236356, 0.913598,
		0.313884, 0.940567, 0.129656,
		-0.889945, 0.243864, 0.385394,
		35.517967, 32.080551, 48.842247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229488, 32.376690, 49.039700>,  <36.140926, 31.909847, 48.572472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229488, 32.376690, 49.039700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876369, 32.244522, 49.173264>,  <35.664497, 32.165222, 49.253403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876369, 32.244522, 49.173264>,  <36.229488, 32.376690, 49.039700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876369, 32.244522, 49.173264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380555, -0.086299, 0.920723,
		-0.275405, 0.939882, 0.201926,
		-0.882797, -0.330416, 0.333909,
		35.611530, 32.145397, 49.273438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089077, 32.714527, 49.653000>,  <36.229488, 32.376690, 49.039700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089077, 32.714527, 49.653000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878700, 32.376263, 49.689308>,  <35.752472, 32.173306, 49.711094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878700, 32.376263, 49.689308>,  <36.089077, 32.714527, 49.653000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878700, 32.376263, 49.689308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293648, -0.080388, 0.952528,
		-0.798219, 0.527631, 0.290606,
		-0.525944, -0.845661, 0.090771,
		35.720917, 32.122562, 49.716537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871525, 32.692719, 50.327431>,  <36.089077, 32.714527, 49.653000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871525, 32.692719, 50.327431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783390, 32.310696, 50.248123>,  <35.730511, 32.081482, 50.200539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783390, 32.310696, 50.248123>,  <35.871525, 32.692719, 50.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783390, 32.310696, 50.248123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242146, -0.250455, 0.937357,
		-0.944890, 0.158524, 0.286448,
		-0.220335, -0.955062, -0.198266,
		35.717289, 32.024178, 50.188644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646263, 32.470867, 50.901520>,  <35.871525, 32.692719, 50.327431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646263, 32.470867, 50.901520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734325, 32.115780, 50.739788>,  <35.787163, 31.902727, 50.642750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734325, 32.115780, 50.739788>,  <35.646263, 32.470867, 50.901520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734325, 32.115780, 50.739788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274162, -0.341477, 0.899015,
		-0.936144, -0.308776, 0.168202,
		0.220157, -0.887722, -0.404327,
		35.800373, 31.849463, 50.618488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426918, 31.976633, 51.393860>,  <35.646263, 32.470867, 50.901520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426918, 31.976633, 51.393860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682961, 31.803349, 51.140060>,  <35.836586, 31.699377, 50.987782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682961, 31.803349, 51.140060>,  <35.426918, 31.976633, 51.393860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682961, 31.803349, 51.140060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491698, -0.403585, 0.771591,
		-0.590339, -0.805882, -0.045327,
		0.640104, -0.433213, -0.634502,
		35.874992, 31.673386, 50.949711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534103, 31.343815, 51.704235>,  <35.426918, 31.976633, 51.393860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534103, 31.343815, 51.704235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825401, 31.385920, 51.433361>,  <36.000179, 31.411182, 51.270836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825401, 31.385920, 51.433361>,  <35.534103, 31.343815, 51.704235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825401, 31.385920, 51.433361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653218, -0.405483, 0.639445,
		-0.207279, -0.908022, -0.364050,
		0.728246, 0.105260, -0.677184,
		36.043877, 31.417498, 51.230206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715210, 30.634268, 51.766724>,  <35.534103, 31.343815, 51.704235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715210, 30.634268, 51.766724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987457, 30.875389, 51.600166>,  <36.150806, 31.020061, 51.500233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987457, 30.875389, 51.600166>,  <35.715210, 30.634268, 51.766724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987457, 30.875389, 51.600166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720500, -0.447700, 0.529570,
		0.132807, -0.660448, -0.739034,
		0.680619, 0.602805, -0.416395,
		36.191643, 31.056231, 51.475246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161442, 30.180452, 51.581856>,  <35.715210, 30.634268, 51.766724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161442, 30.180452, 51.581856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349003, 30.532808, 51.607685>,  <36.461540, 30.744221, 51.623184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349003, 30.532808, 51.607685>,  <36.161442, 30.180452, 51.581856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349003, 30.532808, 51.607685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742048, -0.432539, 0.512128,
		0.479060, -0.192217, -0.856478,
		0.468899, 0.880888, 0.064578,
		36.489674, 30.797075, 51.627060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839912, 30.199997, 51.193638>,  <36.161442, 30.180452, 51.581856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839912, 30.199997, 51.193638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846165, 30.455160, 51.501617>,  <36.849915, 30.608257, 51.686405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846165, 30.455160, 51.501617>,  <36.839912, 30.199997, 51.193638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846165, 30.455160, 51.501617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666509, -0.580659, 0.467548,
		0.745333, 0.505873, -0.434248,
		0.015630, 0.637909, 0.769953,
		36.850853, 30.646532, 51.732605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483727, 30.103662, 51.512115>,  <36.839912, 30.199997, 51.193638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483727, 30.103662, 51.512115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274158, 30.288940, 51.798038>,  <37.148418, 30.400108, 51.969593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274158, 30.288940, 51.798038>,  <37.483727, 30.103662, 51.512115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274158, 30.288940, 51.798038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484476, -0.528179, 0.697359,
		0.700562, 0.711671, 0.052317,
		-0.523923, 0.463197, 0.714810,
		37.116982, 30.427900, 52.012482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000240, 30.325258, 52.065033>,  <37.483727, 30.103662, 51.512115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000240, 30.325258, 52.065033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625221, 30.323589, 52.204170>,  <37.400211, 30.322588, 52.287651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625221, 30.323589, 52.204170>,  <38.000240, 30.325258, 52.065033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625221, 30.323589, 52.204170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317532, -0.418637, 0.850833,
		0.142070, 0.908144, 0.393815,
		-0.937544, -0.004171, 0.347840,
		37.343956, 30.322338, 52.308521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007565, 30.634844, 52.779472>,  <38.000240, 30.325258, 52.065033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007565, 30.634844, 52.779472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697269, 30.383577, 52.755344>,  <37.511093, 30.232817, 52.740868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697269, 30.383577, 52.755344>,  <38.007565, 30.634844, 52.779472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697269, 30.383577, 52.755344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359602, -0.518573, 0.775737,
		-0.518573, 0.580077, 0.628166,
		-0.775737, -0.628166, -0.060321,
		37.464550, 30.195127, 52.737247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823250, 30.491907, 53.499607>,  <38.007565, 30.634844, 52.779472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823250, 30.491907, 53.499607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641212, 30.197540, 53.299084>,  <37.531990, 30.020920, 53.178768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641212, 30.197540, 53.299084>,  <37.823250, 30.491907, 53.499607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641212, 30.197540, 53.299084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304224, -0.657617, 0.689193,
		-0.836862, 0.161136, 0.523161,
		-0.455094, -0.735918, -0.501313,
		37.504684, 29.976765, 53.148689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436333, 30.068155, 54.047825>,  <37.823250, 30.491907, 53.499607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436333, 30.068155, 54.047825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450432, 29.810028, 53.742584>,  <37.458889, 29.655151, 53.559441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450432, 29.810028, 53.742584>,  <37.436333, 30.068155, 54.047825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450432, 29.810028, 53.742584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073709, -0.759815, 0.645947,
		-0.996657, -0.079014, 0.020787,
		0.035245, -0.645320, -0.763099,
		37.461006, 29.616432, 53.513653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924442, 29.519329, 54.175896>,  <37.436333, 30.068155, 54.047825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924442, 29.519329, 54.175896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146492, 29.344608, 53.892757>,  <37.279724, 29.239777, 53.722874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146492, 29.344608, 53.892757>,  <36.924442, 29.519329, 54.175896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146492, 29.344608, 53.892757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025725, -0.841588, 0.539508,
		-0.831363, -0.317708, -0.455957,
		0.555133, -0.436797, -0.707838,
		37.313030, 29.213568, 53.680405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596714, 28.891350, 53.795425>,  <36.924442, 29.519329, 54.175896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596714, 28.891350, 53.795425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988560, 28.850317, 53.864517>,  <37.223667, 28.825697, 53.905972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988560, 28.850317, 53.864517>,  <36.596714, 28.891350, 53.795425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988560, 28.850317, 53.864517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181190, -0.822519, 0.539103,
		0.086774, -0.559409, -0.824337,
		0.979612, -0.102582, 0.172733,
		37.282444, 28.819542, 53.916336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819916, 28.174601, 53.701096>,  <36.596714, 28.891350, 53.795425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819916, 28.174601, 53.701096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106018, 28.330189, 53.933338>,  <37.277679, 28.423542, 54.072685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106018, 28.330189, 53.933338>,  <36.819916, 28.174601, 53.701096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106018, 28.330189, 53.933338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209955, -0.672817, 0.709392,
		0.666578, -0.629300, -0.399571,
		0.715258, 0.388973, 0.580609,
		37.320595, 28.446880, 54.107521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140076, 27.618185, 54.055763>,  <36.819916, 28.174601, 53.701096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140076, 27.618185, 54.055763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238369, 27.934942, 54.279377>,  <37.297344, 28.124996, 54.413544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238369, 27.934942, 54.279377>,  <37.140076, 27.618185, 54.055763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238369, 27.934942, 54.279377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119446, -0.547583, 0.828182,
		0.961949, -0.270289, -0.039973,
		0.245737, 0.791894, 0.559032,
		37.312092, 28.172510, 54.447086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332161, 26.950684, 53.947128>,  <37.140076, 27.618185, 54.055763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332161, 26.950684, 53.947128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640862, 27.152142, 53.791824>,  <37.826080, 27.273016, 53.698643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640862, 27.152142, 53.791824>,  <37.332161, 26.950684, 53.947128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640862, 27.152142, 53.791824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475130, -0.050851, 0.878445,
		0.422680, -0.862413, -0.278540,
		0.771747, 0.503644, -0.388264,
		37.872387, 27.303234, 53.675346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874924, 26.470261, 53.954102>,  <37.332161, 26.950684, 53.947128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874924, 26.470261, 53.954102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979168, 26.855869, 53.975071>,  <38.041714, 27.087234, 53.987652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979168, 26.855869, 53.975071>,  <37.874924, 26.470261, 53.954102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979168, 26.855869, 53.975071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523911, -0.186822, 0.831033,
		0.810925, -0.189113, -0.553748,
		0.260612, 0.964020, 0.052420,
		38.057350, 27.145075, 53.990795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640018, 26.728991, 53.984737>,  <37.874924, 26.470261, 53.954102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640018, 26.728991, 53.984737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432076, 26.992598, 54.202160>,  <38.307312, 27.150761, 54.332615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432076, 26.992598, 54.202160>,  <38.640018, 26.728991, 53.984737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432076, 26.992598, 54.202160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670490, -0.079506, 0.737647,
		0.529336, 0.747916, -0.400532,
		-0.519853, 0.659015, 0.543555,
		38.276119, 27.190302, 54.365227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179958, 26.705938, 53.346561>,  <38.640018, 26.728991, 53.984737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179958, 26.705938, 53.346561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784077, 26.650234, 53.333321>,  <38.546547, 26.616812, 53.325375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784077, 26.650234, 53.333321>,  <39.179958, 26.705938, 53.346561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784077, 26.650234, 53.333321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029641, 0.425649, -0.904403,
		0.140036, -0.894109, -0.425394,
		-0.989703, -0.139258, -0.033104,
		38.487167, 26.608458, 53.323391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038605, 26.804680, 52.652828>,  <39.179958, 26.705938, 53.346561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038605, 26.804680, 52.652828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664028, 26.790062, 52.792397>,  <38.439281, 26.781292, 52.876137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664028, 26.790062, 52.792397>,  <39.038605, 26.804680, 52.652828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664028, 26.790062, 52.792397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344369, 0.285689, -0.894311,
		-0.067002, -0.957626, -0.280114,
		-0.936440, -0.036542, 0.348919,
		38.383095, 26.779099, 52.897072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640793, 26.449827, 52.158653>,  <39.038605, 26.804680, 52.652828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640793, 26.449827, 52.158653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407536, 26.702988, 52.362370>,  <38.267582, 26.854885, 52.484600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407536, 26.702988, 52.362370>,  <38.640793, 26.449827, 52.158653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407536, 26.702988, 52.362370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441299, 0.279551, -0.852705,
		-0.682052, -0.722000, 0.116281,
		-0.583147, 0.632904, 0.509286,
		38.232590, 26.892859, 52.515156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903545, 26.328070, 52.028469>,  <38.640793, 26.449827, 52.158653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903545, 26.328070, 52.028469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936920, 26.712202, 52.134907>,  <37.956947, 26.942680, 52.198769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936920, 26.712202, 52.134907>,  <37.903545, 26.328070, 52.028469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936920, 26.712202, 52.134907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656213, 0.253906, -0.710575,
		-0.749948, -0.115321, 0.651366,
		0.083441, 0.960329, 0.266091,
		37.961952, 27.000301, 52.214733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241222, 26.568342, 52.009022>,  <37.903545, 26.328070, 52.028469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241222, 26.568342, 52.009022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478642, 26.889088, 51.981560>,  <37.621094, 27.081535, 51.965084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478642, 26.889088, 51.981560>,  <37.241222, 26.568342, 52.009022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478642, 26.889088, 51.981560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536518, 0.330666, -0.776408,
		-0.599871, 0.497671, 0.626481,
		0.593552, 0.801862, -0.068652,
		37.656708, 27.129646, 51.960964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805183, 27.133440, 51.800068>,  <37.241222, 26.568342, 52.009022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805183, 27.133440, 51.800068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166290, 27.281052, 51.711681>,  <37.382954, 27.369619, 51.658649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166290, 27.281052, 51.711681>,  <36.805183, 27.133440, 51.800068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166290, 27.281052, 51.711681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322732, 0.241535, -0.915153,
		-0.284346, 0.897484, 0.337148,
		0.902769, 0.369029, -0.220967,
		37.437122, 27.391760, 51.645390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695450, 27.758371, 51.484047>,  <36.805183, 27.133440, 51.800068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695450, 27.758371, 51.484047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067673, 27.689781, 51.354641>,  <37.291008, 27.648626, 51.276997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067673, 27.689781, 51.354641>,  <36.695450, 27.758371, 51.484047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067673, 27.689781, 51.354641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206442, 0.484007, -0.850364,
		0.302399, 0.858098, 0.414996,
		0.930557, -0.171477, -0.323511,
		37.346840, 27.638338, 51.257587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966095, 28.345613, 51.171425>,  <36.695450, 27.758371, 51.484047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966095, 28.345613, 51.171425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218288, 28.075005, 51.019211>,  <37.369606, 27.912640, 50.927883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218288, 28.075005, 51.019211>,  <36.966095, 28.345613, 51.171425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218288, 28.075005, 51.019211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003061, 0.488082, -0.872792,
		0.776194, 0.551448, 0.305658,
		0.630486, -0.676521, -0.380535,
		37.407433, 27.872047, 50.905052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410248, 28.751347, 50.755486>,  <36.966095, 28.345613, 51.171425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410248, 28.751347, 50.755486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472282, 28.377182, 50.628395>,  <37.509502, 28.152683, 50.552139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472282, 28.377182, 50.628395>,  <37.410248, 28.751347, 50.755486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472282, 28.377182, 50.628395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019802, 0.324499, -0.945679,
		0.987702, 0.140372, 0.068850,
		0.155089, -0.935412, -0.317728,
		37.518810, 28.096558, 50.533077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953911, 28.796835, 50.438198>,  <37.410248, 28.751347, 50.755486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953911, 28.796835, 50.438198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780891, 28.465448, 50.295902>,  <37.677082, 28.266617, 50.210526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780891, 28.465448, 50.295902>,  <37.953911, 28.796835, 50.438198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780891, 28.465448, 50.295902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213727, 0.289097, -0.933136,
		0.875914, -0.479655, 0.052018,
		-0.432545, -0.828465, -0.355739,
		37.651127, 28.216909, 50.189182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412659, 28.549421, 49.906116>,  <37.953911, 28.796835, 50.438198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412659, 28.549421, 49.906116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056984, 28.377687, 49.842842>,  <37.843578, 28.274647, 49.804878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056984, 28.377687, 49.842842>,  <38.412659, 28.549421, 49.906116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056984, 28.377687, 49.842842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149422, 0.054299, -0.987282,
		0.432464, -0.901512, 0.015870,
		-0.889184, -0.429335, -0.158188,
		37.790230, 28.248888, 49.795387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512508, 28.026829, 49.371452>,  <38.412659, 28.549421, 49.906116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512508, 28.026829, 49.371452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125580, 28.127787, 49.381119>,  <37.893421, 28.188362, 49.386917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125580, 28.127787, 49.381119>,  <38.512508, 28.026829, 49.371452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125580, 28.127787, 49.381119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012289, 0.141866, -0.989809,
		-0.253253, -0.957168, -0.140332,
		-0.967322, 0.252397, 0.024166,
		37.835384, 28.203505, 49.388367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339157, 27.907129, 48.660530>,  <38.512508, 28.026829, 49.371452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339157, 27.907129, 48.660530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002769, 28.089043, 48.777790>,  <37.800938, 28.198191, 48.848145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002769, 28.089043, 48.777790>,  <38.339157, 27.907129, 48.660530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002769, 28.089043, 48.777790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132283, 0.352531, -0.926403,
		-0.524658, -0.817858, -0.236308,
		-0.840972, 0.454786, 0.293147,
		37.750477, 28.225479, 48.865734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822956, 27.777992, 48.176586>,  <38.339157, 27.907129, 48.660530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822956, 27.777992, 48.176586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709732, 28.113733, 48.362217>,  <37.641800, 28.315178, 48.473595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709732, 28.113733, 48.362217>,  <37.822956, 27.777992, 48.176586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709732, 28.113733, 48.362217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154392, 0.437680, -0.885776,
		-0.946595, -0.322375, 0.005701,
		-0.283057, 0.839351, 0.464077,
		37.624813, 28.365540, 48.501442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250465, 28.015663, 47.787128>,  <37.822956, 27.777992, 48.176586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250465, 28.015663, 47.787128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395473, 28.325693, 47.994141>,  <37.482479, 28.511711, 48.118347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395473, 28.325693, 47.994141>,  <37.250465, 28.015663, 47.787128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395473, 28.325693, 47.994141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005390, 0.557041, -0.830468,
		-0.931959, 0.298274, 0.206118,
		0.362523, 0.775073, 0.517532,
		37.504230, 28.558214, 48.149399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847713, 28.499065, 47.629128>,  <37.250465, 28.015663, 47.787128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847713, 28.499065, 47.629128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181515, 28.668669, 47.769882>,  <37.381794, 28.770432, 47.854336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181515, 28.668669, 47.769882>,  <36.847713, 28.499065, 47.629128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181515, 28.668669, 47.769882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027107, 0.606262, -0.794803,
		-0.550340, 0.672802, 0.494432,
		0.834500, 0.424009, 0.351888,
		37.431866, 28.795872, 47.875450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966118, 28.913467, 47.202362>,  <36.847713, 28.499065, 47.629128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966118, 28.913467, 47.202362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314095, 29.015102, 47.371429>,  <37.522881, 29.076084, 47.472870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314095, 29.015102, 47.371429>,  <36.966118, 28.913467, 47.202362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314095, 29.015102, 47.371429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212086, 0.580998, -0.785786,
		-0.445229, 0.773227, 0.451543,
		0.869937, 0.254089, 0.422668,
		37.575077, 29.091330, 47.498230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962048, 29.614714, 47.196587>,  <36.966118, 28.913467, 47.202362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962048, 29.614714, 47.196587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352085, 29.537163, 47.239681>,  <37.586105, 29.490631, 47.265537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352085, 29.537163, 47.239681>,  <36.962048, 29.614714, 47.196587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352085, 29.537163, 47.239681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210025, 0.650916, -0.729519,
		0.071311, 0.733975, 0.675422,
		0.975092, -0.193878, 0.107735,
		37.644611, 29.479000, 47.272003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363041, 30.248175, 47.097984>,  <36.962048, 29.614714, 47.196587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363041, 30.248175, 47.097984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606110, 29.939299, 47.023735>,  <37.751949, 29.753973, 46.979187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606110, 29.939299, 47.023735>,  <37.363041, 30.248175, 47.097984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606110, 29.939299, 47.023735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148251, 0.339906, -0.928701,
		0.780227, 0.536829, 0.321030,
		0.607673, -0.772191, -0.185618,
		37.788410, 29.707642, 46.968048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916977, 30.555645, 46.608727>,  <37.363041, 30.248175, 47.097984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916977, 30.555645, 46.608727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929546, 30.159180, 46.557171>,  <37.937088, 29.921301, 46.526237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929546, 30.159180, 46.557171>,  <37.916977, 30.555645, 46.608727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929546, 30.159180, 46.557171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006899, 0.128734, -0.991655,
		0.999482, 0.032047, -0.002794,
		0.031420, -0.991161, -0.128888,
		37.938972, 29.861832, 46.518505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365383, 30.426584, 46.022827>,  <37.916977, 30.555645, 46.608727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365383, 30.426584, 46.022827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122475, 30.109200, 46.039036>,  <37.976730, 29.918768, 46.048759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122475, 30.109200, 46.039036>,  <38.365383, 30.426584, 46.022827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122475, 30.109200, 46.039036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041087, -0.019567, -0.998964,
		0.793433, -0.608305, -0.020718,
		-0.607270, -0.793462, 0.040519,
		37.940292, 29.871161, 46.051193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601830, 30.024137, 45.485325>,  <38.365383, 30.426584, 46.022827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601830, 30.024137, 45.485325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240540, 29.885233, 45.586197>,  <38.023766, 29.801891, 45.646721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240540, 29.885233, 45.586197>,  <38.601830, 30.024137, 45.485325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240540, 29.885233, 45.586197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356454, 0.279786, -0.891437,
		0.238999, -0.895061, -0.376490,
		-0.903228, -0.347254, 0.252180,
		37.969570, 29.781055, 45.661850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371906, 29.549307, 44.960453>,  <38.601830, 30.024137, 45.485325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371906, 29.549307, 44.960453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043301, 29.675482, 45.150452>,  <37.846138, 29.751186, 45.264450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043301, 29.675482, 45.150452>,  <38.371906, 29.549307, 44.960453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043301, 29.675482, 45.150452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369035, 0.340899, -0.864639,
		-0.434667, -0.885599, -0.163644,
		-0.821510, 0.315440, 0.474995,
		37.796848, 29.770113, 45.292950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869751, 29.258711, 44.472729>,  <38.371906, 29.549307, 44.960453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869751, 29.258711, 44.472729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675301, 29.525654, 44.698410>,  <37.558632, 29.685820, 44.833817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675301, 29.525654, 44.698410>,  <37.869751, 29.258711, 44.472729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675301, 29.525654, 44.698410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556165, 0.261730, -0.788782,
		-0.674066, -0.697233, 0.243927,
		-0.486122, 0.667355, 0.564200,
		37.529465, 29.725861, 44.867672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213516, 29.123970, 44.270134>,  <37.869751, 29.258711, 44.472729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213516, 29.123970, 44.270134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209675, 29.492493, 44.425621>,  <37.207371, 29.713606, 44.518913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209675, 29.492493, 44.425621>,  <37.213516, 29.123970, 44.270134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209675, 29.492493, 44.425621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646328, 0.290905, -0.705432,
		-0.762999, -0.258013, 0.592673,
		-0.009599, 0.921305, 0.388721,
		37.206795, 29.768885, 44.542236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494293, 29.302893, 44.274773>,  <37.213516, 29.123970, 44.270134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494293, 29.302893, 44.274773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704590, 29.643063, 44.282467>,  <36.830769, 29.847164, 44.287083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704590, 29.643063, 44.282467>,  <36.494293, 29.302893, 44.274773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704590, 29.643063, 44.282467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660571, 0.422408, -0.620659,
		-0.535948, 0.313603, 0.783845,
		0.525743, 0.850426, 0.019232,
		36.862312, 29.898190, 44.288235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997009, 29.765203, 44.347507>,  <36.494293, 29.302893, 44.274773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997009, 29.765203, 44.347507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306973, 29.970303, 44.199665>,  <36.492950, 30.093363, 44.110962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306973, 29.970303, 44.199665>,  <35.997009, 29.765203, 44.347507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306973, 29.970303, 44.199665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564182, 0.297453, -0.770208,
		-0.284984, 0.805363, 0.519782,
		0.774908, 0.512749, -0.369602,
		36.539444, 30.124126, 44.088783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692184, 30.290619, 43.909935>,  <35.997009, 29.765203, 44.347507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692184, 30.290619, 43.909935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078827, 30.325386, 43.813511>,  <36.310814, 30.346247, 43.755657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078827, 30.325386, 43.813511>,  <35.692184, 30.290619, 43.909935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078827, 30.325386, 43.813511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255526, 0.256062, -0.932276,
		-0.019305, 0.962745, 0.269722,
		0.966609, 0.086919, -0.241063,
		36.368809, 30.351461, 43.741192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902962, 30.988810, 43.693119>,  <35.692184, 30.290619, 43.909935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902962, 30.988810, 43.693119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185749, 30.760538, 43.526012>,  <36.355419, 30.623575, 43.425747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185749, 30.760538, 43.526012>,  <35.902962, 30.988810, 43.693119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185749, 30.760538, 43.526012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055337, 0.544249, -0.837097,
		0.705082, 0.614915, 0.353185,
		0.706964, -0.570677, -0.417768,
		36.397839, 30.589334, 43.400681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413628, 31.427778, 43.421284>,  <35.902962, 30.988810, 43.693119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413628, 31.427778, 43.421284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425987, 31.082819, 43.219170>,  <36.433403, 30.875843, 43.097900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425987, 31.082819, 43.219170>,  <36.413628, 31.427778, 43.421284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425987, 31.082819, 43.219170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160667, 0.494665, -0.854103,
		0.986525, 0.107577, -0.123273,
		0.030903, -0.862400, -0.505284,
		36.435257, 30.824099, 43.067585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637131, 31.548180, 42.762505>,  <36.413628, 31.427778, 43.421284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637131, 31.548180, 42.762505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441051, 31.201988, 42.721214>,  <36.323406, 30.994274, 42.696438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441051, 31.201988, 42.721214>,  <36.637131, 31.548180, 42.762505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441051, 31.201988, 42.721214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150616, 0.200764, -0.967992,
		0.858501, -0.458957, -0.228768,
		-0.490195, -0.865478, -0.103229,
		36.293991, 30.942345, 42.690247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741959, 31.437458, 42.133720>,  <36.637131, 31.548180, 42.762505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741959, 31.437458, 42.133720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433823, 31.192781, 42.205730>,  <36.248940, 31.045977, 42.248936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433823, 31.192781, 42.205730>,  <36.741959, 31.437458, 42.133720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433823, 31.192781, 42.205730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433818, 0.295865, -0.851038,
		0.467309, -0.733688, -0.493280,
		-0.770341, -0.611691, 0.180027,
		36.202721, 31.009274, 42.259739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629066, 31.105043, 41.479443>,  <36.741959, 31.437458, 42.133720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629066, 31.105043, 41.479443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302841, 31.078182, 41.709343>,  <36.107105, 31.062065, 41.847282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302841, 31.078182, 41.709343>,  <36.629066, 31.105043, 41.479443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302841, 31.078182, 41.709343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567370, 0.288062, -0.771435,
		-0.113759, -0.955254, -0.273035,
		-0.815568, -0.067154, 0.574752,
		36.058170, 31.058035, 41.881767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252422, 30.871815, 41.056984>,  <36.629066, 31.105043, 41.479443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252422, 30.871815, 41.056984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000942, 31.008219, 41.336540>,  <35.850056, 31.090061, 41.504272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000942, 31.008219, 41.336540>,  <36.252422, 30.871815, 41.056984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000942, 31.008219, 41.336540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677447, 0.201117, -0.707543,
		-0.381839, -0.918294, 0.104575,
		-0.628700, 0.341011, 0.698890,
		35.812332, 31.110521, 41.546207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572903, 30.508984, 40.954605>,  <36.252422, 30.871815, 41.056984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572903, 30.508984, 40.954605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512081, 30.852913, 41.149578>,  <35.475590, 31.059271, 41.266560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512081, 30.852913, 41.149578>,  <35.572903, 30.508984, 40.954605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512081, 30.852913, 41.149578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641818, 0.289142, -0.710258,
		-0.751631, -0.420838, 0.507883,
		-0.152053, 0.859821, 0.487430,
		35.466465, 31.110859, 41.295807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837940, 30.677944, 41.003708>,  <35.572903, 30.508984, 40.954605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837940, 30.677944, 41.003708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017826, 31.028133, 41.074478>,  <35.125759, 31.238247, 41.116940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017826, 31.028133, 41.074478>,  <34.837940, 30.677944, 41.003708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017826, 31.028133, 41.074478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518707, 0.417256, -0.746218,
		-0.727116, 0.243814, 0.641760,
		0.449717, 0.875472, 0.176926,
		35.152740, 31.290775, 41.127556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302555, 31.178288, 41.000275>,  <34.837940, 30.677944, 41.003708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302555, 31.178288, 41.000275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626602, 31.403648, 40.935432>,  <34.821030, 31.538866, 40.896526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626602, 31.403648, 40.935432>,  <34.302555, 31.178288, 41.000275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626602, 31.403648, 40.935432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515523, 0.552927, -0.654605,
		-0.279175, 0.613879, 0.738386,
		0.810122, 0.563404, -0.162106,
		34.869640, 31.572670, 40.886803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039303, 31.798460, 40.855530>,  <34.302555, 31.178288, 41.000275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039303, 31.798460, 40.855530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401424, 31.873981, 40.703331>,  <34.618698, 31.919294, 40.612011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401424, 31.873981, 40.703331>,  <34.039303, 31.798460, 40.855530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401424, 31.873981, 40.703331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413431, 0.597208, -0.687327,
		0.097464, 0.779548, 0.618713,
		0.905304, 0.188805, -0.380495,
		34.673016, 31.930622, 40.589184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981064, 32.475338, 40.672241>,  <34.039303, 31.798460, 40.855530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981064, 32.475338, 40.672241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268265, 32.304443, 40.452446>,  <34.440586, 32.201908, 40.320568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268265, 32.304443, 40.452446>,  <33.981064, 32.475338, 40.672241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268265, 32.304443, 40.452446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358040, 0.450296, -0.817949,
		0.596888, 0.784032, 0.170349,
		0.718005, -0.427233, -0.549491,
		34.483665, 32.176273, 40.287598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225220, 33.078129, 40.325188>,  <33.981064, 32.475338, 40.672241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225220, 33.078129, 40.325188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331890, 32.741962, 40.136471>,  <34.395893, 32.540264, 40.023243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331890, 32.741962, 40.136471>,  <34.225220, 33.078129, 40.325188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331890, 32.741962, 40.136471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190526, 0.433887, -0.880592,
		0.944768, 0.324717, -0.044416,
		0.266672, -0.840417, -0.471789,
		34.411892, 32.489838, 39.994934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900928, 33.022675, 40.080799>,  <34.225220, 33.078129, 40.325188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900928, 33.022675, 40.080799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598537, 32.877232, 39.863068>,  <34.417103, 32.789967, 39.732430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598537, 32.877232, 39.863068>,  <34.900928, 33.022675, 40.080799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598537, 32.877232, 39.863068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193809, 0.669938, -0.716674,
		0.625249, -0.647285, -0.435989,
		-0.755977, -0.363601, -0.544328,
		34.371746, 32.768150, 39.699768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219860, 32.805069, 39.438862>,  <34.900928, 33.022675, 40.080799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219860, 32.805069, 39.438862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828331, 32.871960, 39.391624>,  <34.593414, 32.912094, 39.363281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828331, 32.871960, 39.391624>,  <35.219860, 32.805069, 39.438862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828331, 32.871960, 39.391624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180335, 0.431271, -0.884016,
		-0.096906, -0.886589, -0.452294,
		-0.978820, 0.167231, -0.118090,
		34.534683, 32.922131, 39.356197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943848, 32.769165, 39.175331>,  <35.219860, 32.805069, 39.438862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943848, 32.769165, 39.175331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173649, 32.668621, 38.863750>,  <36.311531, 32.608295, 38.676804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173649, 32.668621, 38.863750>,  <35.943848, 32.769165, 39.175331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173649, 32.668621, 38.863750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509838, -0.634609, 0.580807,
		-0.640327, -0.730812, -0.236425,
		0.574497, -0.251368, -0.778952,
		36.346001, 32.593212, 38.630066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074589, 32.024456, 39.200642>,  <35.943848, 32.769165, 39.175331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074589, 32.024456, 39.200642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366798, 32.222473, 39.012486>,  <36.542122, 32.341286, 38.899593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366798, 32.222473, 39.012486>,  <36.074589, 32.024456, 39.200642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366798, 32.222473, 39.012486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678717, -0.602359, 0.420126,
		-0.075362, -0.626174, -0.776033,
		0.730522, 0.495045, -0.470390,
		36.585957, 32.370987, 38.871368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535980, 31.599077, 38.945057>,  <36.074589, 32.024456, 39.200642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535980, 31.599077, 38.945057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766914, 31.925598, 38.952423>,  <36.905476, 32.121510, 38.956844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766914, 31.925598, 38.952423>,  <36.535980, 31.599077, 38.945057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766914, 31.925598, 38.952423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737476, -0.530997, 0.417338,
		0.350452, -0.227362, -0.908565,
		0.577332, 0.816302, 0.018415,
		36.940113, 32.170490, 38.957947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120731, 31.339655, 38.708900>,  <36.535980, 31.599077, 38.945057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120731, 31.339655, 38.708900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236629, 31.681841, 38.880589>,  <37.306168, 31.887152, 38.983601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236629, 31.681841, 38.880589>,  <37.120731, 31.339655, 38.708900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236629, 31.681841, 38.880589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679060, -0.499772, 0.537685,
		0.674483, 0.135678, -0.725716,
		0.289741, 0.855465, 0.429221,
		37.323551, 31.938480, 39.009354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838989, 31.433643, 38.785084>,  <37.120731, 31.339655, 38.708900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838989, 31.433643, 38.785084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716541, 31.675411, 39.079285>,  <37.643070, 31.820473, 39.255806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716541, 31.675411, 39.079285>,  <37.838989, 31.433643, 38.785084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716541, 31.675411, 39.079285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735982, -0.339789, 0.585554,
		0.603837, 0.720568, -0.340827,
		-0.306122, 0.604422, 0.735503,
		37.624706, 31.856737, 39.299934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496536, 31.677979, 39.088585>,  <37.838989, 31.433643, 38.785084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496536, 31.677979, 39.088585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215584, 31.769308, 39.358261>,  <38.047012, 31.824106, 39.520065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215584, 31.769308, 39.358261>,  <38.496536, 31.677979, 39.088585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215584, 31.769308, 39.358261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633379, -0.231719, 0.738334,
		0.324802, 0.945608, 0.018139,
		-0.702378, 0.228323, 0.674191,
		38.004871, 31.837805, 39.560520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921043, 32.083118, 39.570812>,  <38.496536, 31.677979, 39.088585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921043, 32.083118, 39.570812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590870, 31.928699, 39.735554>,  <38.392765, 31.836048, 39.834400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590870, 31.928699, 39.735554>,  <38.921043, 32.083118, 39.570812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590870, 31.928699, 39.735554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524398, -0.254320, 0.812606,
		-0.208957, 0.886731, 0.412365,
		-0.825435, -0.386043, 0.411858,
		38.343239, 31.812887, 39.859112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086498, 32.260651, 40.231388>,  <38.921043, 32.083118, 39.570812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086498, 32.260651, 40.231388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790798, 31.995798, 40.280537>,  <38.613377, 31.836887, 40.310024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790798, 31.995798, 40.280537>,  <39.086498, 32.260651, 40.231388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790798, 31.995798, 40.280537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485932, -0.398154, 0.778038,
		-0.466241, 0.634870, 0.616084,
		-0.739249, -0.662128, 0.122868,
		38.569023, 31.797159, 40.317398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785957, 32.339363, 40.826588>,  <39.086498, 32.260651, 40.231388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785957, 32.339363, 40.826588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692734, 31.958908, 40.745579>,  <38.636799, 31.730635, 40.696972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692734, 31.958908, 40.745579>,  <38.785957, 32.339363, 40.826588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692734, 31.958908, 40.745579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406877, -0.284531, 0.868040,
		-0.883251, 0.119905, 0.453310,
		-0.233063, -0.951139, -0.202526,
		38.622814, 31.673567, 40.684822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637535, 32.153965, 41.412022>,  <38.785957, 32.339363, 40.826588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637535, 32.153965, 41.412022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680908, 31.805632, 41.220238>,  <38.706932, 31.596630, 41.105167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680908, 31.805632, 41.220238>,  <38.637535, 32.153965, 41.412022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680908, 31.805632, 41.220238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261868, -0.440251, 0.858839,
		-0.958993, -0.218682, 0.180307,
		0.108433, -0.870837, -0.479463,
		38.713440, 31.544380, 41.076397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162956, 31.631193, 41.614536>,  <38.637535, 32.153965, 41.412022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162956, 31.631193, 41.614536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485943, 31.437521, 41.479736>,  <38.679733, 31.321318, 41.398857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485943, 31.437521, 41.479736>,  <38.162956, 31.631193, 41.614536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485943, 31.437521, 41.479736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107510, -0.440926, 0.891081,
		-0.580038, -0.755747, -0.303977,
		0.807463, -0.484181, -0.337004,
		38.728184, 31.292267, 41.378635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107925, 30.971746, 41.964790>,  <38.162956, 31.631193, 41.614536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107925, 30.971746, 41.964790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483753, 30.966652, 41.827938>,  <38.709248, 30.963594, 41.745827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483753, 30.966652, 41.827938>,  <38.107925, 30.971746, 41.964790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483753, 30.966652, 41.827938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293472, -0.484697, 0.823980,
		-0.176326, -0.874589, -0.451666,
		0.939565, -0.012738, -0.342132,
		38.765621, 30.962830, 41.725300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408890, 30.249332, 42.011726>,  <38.107925, 30.971746, 41.964790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408890, 30.249332, 42.011726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731415, 30.482183, 41.969803>,  <38.924931, 30.621895, 41.944649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731415, 30.482183, 41.969803>,  <38.408890, 30.249332, 42.011726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731415, 30.482183, 41.969803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451355, -0.491036, 0.745092,
		0.382276, -0.648082, -0.658676,
		0.806315, 0.582128, -0.104804,
		38.973309, 30.656822, 41.938362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980221, 29.759874, 42.121906>,  <38.408890, 30.249332, 42.011726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980221, 29.759874, 42.121906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170647, 30.107935, 42.172817>,  <39.284901, 30.316772, 42.203362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170647, 30.107935, 42.172817>,  <38.980221, 29.759874, 42.121906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170647, 30.107935, 42.172817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646682, -0.444467, 0.619881,
		0.595960, -0.212795, -0.774306,
		0.476061, 0.870154, 0.127274,
		39.313465, 30.368980, 42.210999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754715, 29.573032, 42.260139>,  <38.980221, 29.759874, 42.121906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754715, 29.573032, 42.260139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723961, 29.949177, 42.392693>,  <39.705509, 30.174864, 42.472225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723961, 29.949177, 42.392693>,  <39.754715, 29.573032, 42.260139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723961, 29.949177, 42.392693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610437, -0.218394, 0.761362,
		0.788325, 0.260824, -0.557239,
		-0.076884, 0.940359, 0.331381,
		39.700897, 30.231285, 42.492107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389336, 29.708385, 42.563110>,  <39.754715, 29.573032, 42.260139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389336, 29.708385, 42.563110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136047, 29.970272, 42.728218>,  <39.984074, 30.127405, 42.827282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136047, 29.970272, 42.728218>,  <40.389336, 29.708385, 42.563110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136047, 29.970272, 42.728218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259801, -0.322560, 0.910197,
		0.729064, 0.683592, 0.034155,
		-0.633220, 0.654719, 0.412765,
		39.946083, 30.166687, 42.852047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747658, 30.111673, 43.114491>,  <40.389336, 29.708385, 42.563110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747658, 30.111673, 43.114491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357658, 30.130737, 43.201298>,  <40.123657, 30.142176, 43.253384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357658, 30.130737, 43.201298>,  <40.747658, 30.111673, 43.114491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357658, 30.130737, 43.201298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207996, -0.147739, 0.966908,
		0.078147, 0.987877, 0.134132,
		-0.975003, 0.047662, 0.217019,
		40.065159, 30.145037, 43.266403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861309, 30.238136, 43.802052>,  <40.747658, 30.111673, 43.114491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861309, 30.238136, 43.802052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470818, 30.164154, 43.756855>,  <40.236523, 30.119764, 43.729736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470818, 30.164154, 43.756855>,  <40.861309, 30.238136, 43.802052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470818, 30.164154, 43.756855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068630, -0.230696, 0.970602,
		-0.205586, 0.955285, 0.212519,
		-0.976230, -0.184957, -0.112989,
		40.177948, 30.108667, 43.722958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446709, 30.674726, 44.272427>,  <40.861309, 30.238136, 43.802052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446709, 30.674726, 44.272427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276417, 30.324219, 44.182178>,  <40.174240, 30.113914, 44.128029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276417, 30.324219, 44.182178>,  <40.446709, 30.674726, 44.272427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276417, 30.324219, 44.182178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136781, -0.308802, 0.941240,
		-0.894451, 0.369856, 0.251323,
		-0.425732, -0.876269, -0.225619,
		40.148697, 30.061338, 44.114494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026699, 30.470924, 44.855644>,  <40.446709, 30.674726, 44.272427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026699, 30.470924, 44.855644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995136, 30.122477, 44.661766>,  <39.976196, 29.913408, 44.545441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995136, 30.122477, 44.661766>,  <40.026699, 30.470924, 44.855644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995136, 30.122477, 44.661766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204777, -0.490005, 0.847326,
		-0.975622, -0.032392, 0.217052,
		-0.078910, -0.871117, -0.484693,
		39.971462, 29.861141, 44.516357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475784, 30.080616, 45.187874>,  <40.026699, 30.470924, 44.855644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475784, 30.080616, 45.187874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695553, 29.820774, 44.977676>,  <39.827415, 29.664869, 44.851559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695553, 29.820774, 44.977676>,  <39.475784, 30.080616, 45.187874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695553, 29.820774, 44.977676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002397, -0.627699, 0.778452,
		-0.835542, -0.428958, -0.343314,
		0.549421, -0.649607, -0.525497,
		39.860378, 29.625893, 44.820026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117031, 29.448370, 45.277294>,  <39.475784, 30.080616, 45.187874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117031, 29.448370, 45.277294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489769, 29.349247, 45.171276>,  <39.713413, 29.289774, 45.107666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489769, 29.349247, 45.171276>,  <39.117031, 29.448370, 45.277294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489769, 29.349247, 45.171276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085027, -0.560999, 0.823438,
		-0.352747, -0.789855, -0.501696,
		0.931848, -0.247808, -0.265049,
		39.769321, 29.274904, 45.091763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230747, 28.731821, 45.396473>,  <39.117031, 29.448370, 45.277294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230747, 28.731821, 45.396473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594296, 28.897358, 45.417191>,  <39.812424, 28.996679, 45.429623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594296, 28.897358, 45.417191>,  <39.230747, 28.731821, 45.396473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594296, 28.897358, 45.417191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179143, -0.499517, 0.847579,
		0.376639, -0.761063, -0.528135,
		0.908874, 0.413843, 0.051798,
		39.866959, 29.021511, 45.432732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579128, 28.248022, 45.729935>,  <39.230747, 28.731821, 45.396473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579128, 28.248022, 45.729935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811539, 28.571711, 45.764744>,  <39.950985, 28.765924, 45.785629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811539, 28.571711, 45.764744>,  <39.579128, 28.248022, 45.729935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811539, 28.571711, 45.764744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110527, -0.184384, 0.976620,
		0.806347, -0.557820, -0.196572,
		0.581023, 0.809221, 0.087023,
		39.985847, 28.814476, 45.790852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978546, 28.068913, 46.239914>,  <39.579128, 28.248022, 45.729935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978546, 28.068913, 46.239914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060078, 28.460497, 46.236202>,  <40.108997, 28.695448, 46.233974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060078, 28.460497, 46.236202>,  <39.978546, 28.068913, 46.239914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060078, 28.460497, 46.236202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364797, -0.067153, 0.928662,
		0.908502, -0.192676, -0.370810,
		0.203832, 0.978962, -0.009278,
		40.121227, 28.754185, 46.233418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583836, 28.127251, 46.515537>,  <39.978546, 28.068913, 46.239914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583836, 28.127251, 46.515537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402122, 28.480021, 46.565868>,  <40.293095, 28.691683, 46.596069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402122, 28.480021, 46.565868>,  <40.583836, 28.127251, 46.515537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402122, 28.480021, 46.565868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452338, 0.106668, 0.885444,
		0.767474, 0.459162, -0.447387,
		-0.454284, 0.881925, 0.125831,
		40.265839, 28.744598, 46.603619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047546, 28.545660, 46.813515>,  <40.583836, 28.127251, 46.515537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047546, 28.545660, 46.813515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691040, 28.696728, 46.913918>,  <40.477135, 28.787369, 46.974159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691040, 28.696728, 46.913918>,  <41.047546, 28.545660, 46.813515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691040, 28.696728, 46.913918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308737, 0.099932, 0.945883,
		0.332145, 0.920533, -0.205667,
		-0.891269, 0.377667, 0.251011,
		40.423660, 28.810028, 46.989220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202099, 29.043514, 47.206261>,  <41.047546, 28.545660, 46.813515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202099, 29.043514, 47.206261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822556, 28.977074, 47.313648>,  <40.594830, 28.937210, 47.378082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822556, 28.977074, 47.313648>,  <41.202099, 29.043514, 47.206261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822556, 28.977074, 47.313648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236979, 0.187121, 0.953324,
		-0.208585, 0.968192, -0.138189,
		-0.948859, -0.166101, 0.268472,
		40.537899, 28.927244, 47.394192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072895, 29.653967, 47.540867>,  <41.202099, 29.043514, 47.206261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072895, 29.653967, 47.540867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787971, 29.398453, 47.657188>,  <40.617016, 29.245144, 47.726982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787971, 29.398453, 47.657188>,  <41.072895, 29.653967, 47.540867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787971, 29.398453, 47.657188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042658, 0.374165, 0.926381,
		-0.700566, 0.672277, -0.239273,
		-0.712312, -0.638784, 0.290805,
		40.574280, 29.206818, 47.744431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643894, 30.087528, 47.912811>,  <41.072895, 29.653967, 47.540867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643894, 30.087528, 47.912811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585243, 29.705086, 48.014290>,  <40.550053, 29.475620, 48.075176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585243, 29.705086, 48.014290>,  <40.643894, 30.087528, 47.912811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585243, 29.705086, 48.014290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056674, 0.247923, 0.967121,
		-0.987567, 0.156184, 0.017834,
		-0.146627, -0.956107, 0.253692,
		40.541256, 29.418253, 48.090397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072987, 30.014700, 48.460583>,  <40.643894, 30.087528, 47.912811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072987, 30.014700, 48.460583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335205, 29.713833, 48.487442>,  <40.492535, 29.533314, 48.503559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335205, 29.713833, 48.487442>,  <40.072987, 30.014700, 48.460583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335205, 29.713833, 48.487442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055602, 0.136753, 0.989043,
		-0.753108, -0.644627, 0.131470,
		0.655543, -0.752167, 0.067147,
		40.531868, 29.488182, 48.507587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847134, 29.695324, 49.060848>,  <40.072987, 30.014700, 48.460583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847134, 29.695324, 49.060848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214962, 29.545652, 49.012878>,  <40.435658, 29.455851, 48.984097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214962, 29.545652, 49.012878>,  <39.847134, 29.695324, 49.060848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214962, 29.545652, 49.012878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189165, 0.154081, 0.969781,
		-0.344394, -0.914467, 0.212470,
		0.919570, -0.374178, -0.119921,
		40.490833, 29.433399, 48.976902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921375, 29.204792, 49.530617>,  <39.847134, 29.695324, 49.060848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921375, 29.204792, 49.530617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297707, 29.301159, 49.435291>,  <40.523506, 29.358978, 49.378098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297707, 29.301159, 49.435291>,  <39.921375, 29.204792, 49.530617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297707, 29.301159, 49.435291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255265, -0.041316, 0.965988,
		0.222878, -0.969666, -0.100369,
		0.940832, 0.240918, -0.238313,
		40.579956, 29.373434, 49.363796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359985, 28.769583, 49.940018>,  <39.921375, 29.204792, 49.530617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359985, 28.769583, 49.940018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607952, 29.066441, 49.838097>,  <40.756733, 29.244556, 49.776943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607952, 29.066441, 49.838097>,  <40.359985, 28.769583, 49.940018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607952, 29.066441, 49.838097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380429, -0.000251, 0.924810,
		0.686281, -0.670237, -0.282489,
		0.619913, 0.742147, -0.254805,
		40.793926, 29.289085, 49.761654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017273, 28.617485, 50.328930>,  <40.359985, 28.769583, 49.940018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017273, 28.617485, 50.328930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062649, 28.995541, 50.206390>,  <41.089874, 29.222374, 50.132866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062649, 28.995541, 50.206390>,  <41.017273, 28.617485, 50.328930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062649, 28.995541, 50.206390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552081, 0.196391, 0.810331,
		0.826038, -0.261048, -0.499515,
		0.113435, 0.945137, -0.306346,
		41.096680, 29.279081, 50.114487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737610, 28.751657, 50.277153>,  <41.017273, 28.617485, 50.328930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737610, 28.751657, 50.277153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563473, 29.109182, 50.320190>,  <41.458992, 29.323698, 50.346012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563473, 29.109182, 50.320190>,  <41.737610, 28.751657, 50.277153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563473, 29.109182, 50.320190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459276, 0.117707, 0.880461,
		0.774302, 0.432718, -0.461749,
		-0.435342, 0.893812, 0.107596,
		41.432869, 29.377327, 50.352470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281361, 29.232094, 50.619282>,  <41.737610, 28.751657, 50.277153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281361, 29.232094, 50.619282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933807, 29.416164, 50.692261>,  <41.725277, 29.526608, 50.736046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933807, 29.416164, 50.692261>,  <42.281361, 29.232094, 50.619282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933807, 29.416164, 50.692261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266424, 0.124093, 0.955834,
		0.417214, 0.879112, -0.230425,
		-0.868879, 0.460178, 0.182443,
		41.673145, 29.554218, 50.746994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471157, 29.596365, 51.106754>,  <42.281361, 29.232094, 50.619282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471157, 29.596365, 51.106754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073055, 29.607029, 51.144192>,  <41.834194, 29.613428, 51.166656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073055, 29.607029, 51.144192>,  <42.471157, 29.596365, 51.106754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073055, 29.607029, 51.144192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096879, 0.180044, 0.978876,
		0.009247, 0.983297, -0.181773,
		-0.995253, 0.026662, 0.093596,
		41.774479, 29.615028, 51.172272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186069, 30.256104, 51.476990>,  <42.471157, 29.596365, 51.106754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186069, 30.256104, 51.476990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907333, 29.974850, 51.533581>,  <41.740093, 29.806097, 51.567535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907333, 29.974850, 51.533581>,  <42.186069, 30.256104, 51.476990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907333, 29.974850, 51.533581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065894, 0.259181, 0.963578,
		-0.714193, 0.662137, -0.226940,
		-0.696840, -0.703135, 0.141475,
		41.698280, 29.763908, 51.576023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366623, 30.384249, 52.173954>,  <42.186069, 30.256104, 51.476990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366623, 30.384249, 52.173954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719231, 30.536610, 52.285557>,  <42.930794, 30.628025, 52.352520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719231, 30.536610, 52.285557>,  <42.366623, 30.384249, 52.173954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719231, 30.536610, 52.285557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008149, 0.578561, -0.815598,
		-0.472085, 0.721236, 0.506907,
		0.881516, 0.380901, 0.279007,
		42.983685, 30.650881, 52.369259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236179, 31.069290, 52.165825>,  <42.366623, 30.384249, 52.173954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236179, 31.069290, 52.165825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611820, 30.955568, 52.088608>,  <42.837204, 30.887335, 52.042278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611820, 30.955568, 52.088608>,  <42.236179, 31.069290, 52.165825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611820, 30.955568, 52.088608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033808, 0.635458, -0.771395,
		0.341983, 0.717889, 0.606369,
		0.939098, -0.284304, -0.193045,
		42.893551, 30.870277, 52.030693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558777, 31.631720, 51.892342>,  <42.236179, 31.069290, 52.165825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558777, 31.631720, 51.892342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817284, 31.345720, 51.785675>,  <42.972389, 31.174120, 51.721676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817284, 31.345720, 51.785675>,  <42.558777, 31.631720, 51.892342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817284, 31.345720, 51.785675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269288, 0.540651, -0.796982,
		0.714015, 0.443255, 0.541947,
		0.646270, -0.714998, -0.266670,
		43.011166, 31.131222, 51.705673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022038, 32.005428, 51.528130>,  <42.558777, 31.631720, 51.892342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022038, 32.005428, 51.528130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095676, 31.625917, 51.425426>,  <43.139858, 31.398211, 51.363804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095676, 31.625917, 51.425426>,  <43.022038, 32.005428, 51.528130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095676, 31.625917, 51.425426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174738, 0.288655, -0.941353,
		0.967251, 0.128434, 0.218928,
		0.184096, -0.948780, -0.256760,
		43.150906, 31.341284, 51.348400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587776, 31.982523, 50.990368>,  <43.022038, 32.005428, 51.528130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587776, 31.982523, 50.990368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435303, 31.621868, 50.908642>,  <43.343819, 31.405476, 50.859604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435303, 31.621868, 50.908642>,  <43.587776, 31.982523, 50.990368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435303, 31.621868, 50.908642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138633, 0.162759, -0.976878,
		0.914044, -0.400699, 0.062955,
		-0.381188, -0.901637, -0.204319,
		43.320946, 31.351377, 50.847347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040863, 31.670742, 50.539116>,  <43.587776, 31.982523, 50.990368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040863, 31.670742, 50.539116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687302, 31.492090, 50.483646>,  <43.475163, 31.384899, 50.450367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687302, 31.492090, 50.483646>,  <44.040863, 31.670742, 50.539116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687302, 31.492090, 50.483646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038825, 0.225415, -0.973489,
		0.466047, -0.865858, -0.181906,
		-0.883908, -0.446629, -0.138671,
		43.422131, 31.358101, 50.442047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034943, 31.602764, 49.858562>,  <44.040863, 31.670742, 50.539116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034943, 31.602764, 49.858562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657883, 31.500416, 49.944290>,  <43.431644, 31.439007, 49.995728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657883, 31.500416, 49.944290>,  <44.034943, 31.602764, 49.858562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657883, 31.500416, 49.944290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238003, 0.065102, -0.969080,
		0.234009, -0.964516, -0.122267,
		-0.942653, -0.255874, 0.214323,
		43.375088, 31.423655, 50.008587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847103, 31.134720, 49.291744>,  <44.034943, 31.602764, 49.858562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847103, 31.134720, 49.291744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504467, 31.274616, 49.443497>,  <43.298885, 31.358555, 49.534550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504467, 31.274616, 49.443497>,  <43.847103, 31.134720, 49.291744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504467, 31.274616, 49.443497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433277, -0.088243, -0.896931,
		-0.280218, -0.932680, 0.227124,
		-0.856592, 0.349743, 0.379382,
		43.247490, 31.379539, 49.557312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391430, 30.783325, 48.861813>,  <43.847103, 31.134720, 49.291744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391430, 30.783325, 48.861813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145279, 31.062449, 49.008442>,  <42.997589, 31.229923, 49.096420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145279, 31.062449, 49.008442>,  <43.391430, 30.783325, 48.861813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145279, 31.062449, 49.008442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477547, 0.039941, -0.877698,
		-0.627106, -0.715170, 0.308658,
		-0.615375, 0.697809, 0.366574,
		42.960667, 31.271791, 49.118416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675827, 30.595192, 48.748596>,  <43.391430, 30.783325, 48.861813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675827, 30.595192, 48.748596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680458, 30.992455, 48.795078>,  <42.683235, 31.230812, 48.822968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680458, 30.992455, 48.795078>,  <42.675827, 30.595192, 48.748596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680458, 30.992455, 48.795078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398110, 0.111182, -0.910575,
		-0.917265, -0.035723, 0.396673,
		0.011575, 0.993158, 0.116205,
		42.683929, 31.290401, 48.829941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001667, 30.840397, 48.587860>,  <42.675827, 30.595192, 48.748596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001667, 30.840397, 48.587860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255966, 31.142298, 48.523148>,  <42.408546, 31.323439, 48.484318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255966, 31.142298, 48.523148>,  <42.001667, 30.840397, 48.587860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255966, 31.142298, 48.523148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461058, 0.203205, -0.863791,
		-0.619073, 0.623744, 0.477171,
		0.635747, 0.754753, -0.161784,
		42.446690, 31.368723, 48.474613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581398, 31.300489, 48.178837>,  <42.001667, 30.840397, 48.587860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581398, 31.300489, 48.178837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934349, 31.468124, 48.093258>,  <42.146122, 31.568705, 48.041912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934349, 31.468124, 48.093258>,  <41.581398, 31.300489, 48.178837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934349, 31.468124, 48.093258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393300, 0.407297, -0.824272,
		-0.258304, 0.811465, 0.524218,
		0.882380, 0.419087, -0.213943,
		42.199062, 31.593851, 48.029076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408619, 31.936739, 47.762012>,  <41.581398, 31.300489, 48.178837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408619, 31.936739, 47.762012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793499, 31.839943, 47.712048>,  <42.024429, 31.781864, 47.682068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793499, 31.839943, 47.712048>,  <41.408619, 31.936739, 47.762012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793499, 31.839943, 47.712048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067058, 0.234013, -0.969918,
		0.263942, 0.941636, 0.208941,
		0.962205, -0.241991, -0.124911,
		42.082161, 31.767345, 47.674576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728638, 32.436813, 47.296509>,  <41.408619, 31.936739, 47.762012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728638, 32.436813, 47.296509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963554, 32.114418, 47.266941>,  <42.104504, 31.920980, 47.249199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963554, 32.114418, 47.266941>,  <41.728638, 32.436813, 47.296509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963554, 32.114418, 47.266941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000811, 0.091913, -0.995767,
		0.809373, 0.584747, 0.054634,
		0.587294, -0.805991, -0.073918,
		42.139744, 31.872620, 47.244766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499760, 32.629948, 47.115501>,  <41.728638, 32.436813, 47.296509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499760, 32.629948, 47.115501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401260, 32.260063, 46.999382>,  <42.342163, 32.038132, 46.929710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401260, 32.260063, 46.999382>,  <42.499760, 32.629948, 47.115501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401260, 32.260063, 46.999382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019495, 0.304187, -0.952413,
		0.969011, -0.228869, -0.092932,
		-0.246246, -0.924710, -0.290299,
		42.327385, 31.982651, 46.912292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738159, 32.610485, 46.495819>,  <42.499760, 32.629948, 47.115501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738159, 32.610485, 46.495819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531353, 32.269268, 46.467499>,  <42.407269, 32.064537, 46.450508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531353, 32.269268, 46.467499>,  <42.738159, 32.610485, 46.495819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531353, 32.269268, 46.467499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230034, 0.218138, -0.948420,
		0.824488, -0.474059, -0.309010,
		-0.517014, -0.853044, -0.070802,
		42.376247, 32.013355, 46.446259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969883, 32.293640, 45.906487>,  <42.738159, 32.610485, 46.495819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969883, 32.293640, 45.906487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617680, 32.119846, 45.982307>,  <42.406357, 32.015572, 46.027798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617680, 32.119846, 45.982307>,  <42.969883, 32.293640, 45.906487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617680, 32.119846, 45.982307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256098, 0.099531, -0.961513,
		0.398895, -0.895164, -0.198908,
		-0.880509, -0.434483, 0.189548,
		42.353527, 31.989502, 46.039173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888481, 31.736010, 45.432869>,  <42.969883, 32.293640, 45.906487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888481, 31.736010, 45.432869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504932, 31.779585, 45.537708>,  <42.274803, 31.805731, 45.600613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504932, 31.779585, 45.537708>,  <42.888481, 31.736010, 45.432869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504932, 31.779585, 45.537708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261666, 0.018465, -0.964982,
		-0.109967, -0.993877, 0.010801,
		-0.958873, 0.108942, 0.262095,
		42.217270, 31.812267, 45.616337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427212, 31.266359, 45.020138>,  <42.888481, 31.736010, 45.432869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427212, 31.266359, 45.020138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188278, 31.566877, 45.132389>,  <42.044918, 31.747189, 45.199738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188278, 31.566877, 45.132389>,  <42.427212, 31.266359, 45.020138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188278, 31.566877, 45.132389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220440, 0.182626, -0.958151,
		-0.771106, -0.634193, 0.056527,
		-0.597330, 0.751297, 0.280625,
		42.009079, 31.792267, 45.216576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894600, 31.081144, 44.625172>,  <42.427212, 31.266359, 45.020138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894600, 31.081144, 44.625172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787987, 31.446440, 44.748428>,  <41.724018, 31.665617, 44.822384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787987, 31.446440, 44.748428>,  <41.894600, 31.081144, 44.625172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787987, 31.446440, 44.748428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390875, 0.189820, -0.900658,
		-0.881008, -0.360502, 0.306369,
		-0.266535, 0.913240, 0.308144,
		41.708027, 31.720411, 44.840870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171661, 31.136648, 44.430649>,  <41.894600, 31.081144, 44.625172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171661, 31.136648, 44.430649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310680, 31.508499, 44.479645>,  <41.394093, 31.731609, 44.509041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310680, 31.508499, 44.479645>,  <41.171661, 31.136648, 44.430649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310680, 31.508499, 44.479645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290812, 0.231055, -0.928462,
		-0.891426, 0.287063, 0.350650,
		0.347546, 0.929628, 0.122487,
		41.414944, 31.787388, 44.516392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602158, 31.507456, 43.996426>,  <41.171661, 31.136648, 44.430649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602158, 31.507456, 43.996426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894806, 31.768700, 44.074581>,  <41.070396, 31.925446, 44.121475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894806, 31.768700, 44.074581>,  <40.602158, 31.507456, 43.996426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894806, 31.768700, 44.074581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197617, 0.477498, -0.856121,
		-0.652437, 0.587747, 0.478414,
		0.731624, 0.653108, 0.195389,
		41.114292, 31.964632, 44.133198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287239, 32.252235, 43.956589>,  <40.602158, 31.507456, 43.996426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287239, 32.252235, 43.956589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677834, 32.244892, 43.870674>,  <40.912189, 32.240486, 43.819126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677834, 32.244892, 43.870674>,  <40.287239, 32.252235, 43.956589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677834, 32.244892, 43.870674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188204, 0.413241, -0.890961,
		0.105117, 0.910437, 0.400070,
		0.976489, -0.018360, -0.214787,
		40.970779, 32.239384, 43.806236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289211, 32.802876, 43.537971>,  <40.287239, 32.252235, 43.956589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289211, 32.802876, 43.537971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622597, 32.598999, 43.452599>,  <40.822628, 32.476673, 43.401375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622597, 32.598999, 43.452599>,  <40.289211, 32.802876, 43.537971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622597, 32.598999, 43.452599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005056, 0.379203, -0.925299,
		0.552550, 0.772284, 0.313476,
		0.833465, -0.509689, -0.213434,
		40.872635, 32.446091, 43.388569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705688, 33.309132, 43.199993>,  <40.289211, 32.802876, 43.537971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705688, 33.309132, 43.199993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833828, 32.947773, 43.085972>,  <40.910709, 32.730957, 43.017559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833828, 32.947773, 43.085972>,  <40.705688, 33.309132, 43.199993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833828, 32.947773, 43.085972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027802, 0.309747, -0.950412,
		0.946893, 0.296534, 0.124342,
		0.320345, -0.903396, -0.285053,
		40.929932, 32.676754, 43.000458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213184, 33.440445, 42.776939>,  <40.705688, 33.309132, 43.199993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213184, 33.440445, 42.776939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128052, 33.065174, 42.667736>,  <41.076973, 32.840012, 42.602215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128052, 33.065174, 42.667736>,  <41.213184, 33.440445, 42.776939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128052, 33.065174, 42.667736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302028, 0.202556, -0.931531,
		0.929237, -0.280717, 0.240244,
		-0.212833, -0.938173, -0.273007,
		41.064201, 32.783722, 42.585835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685753, 33.368446, 42.394722>,  <41.213184, 33.440445, 42.776939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685753, 33.368446, 42.394722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430824, 33.079243, 42.288078>,  <41.277866, 32.905720, 42.224091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430824, 33.079243, 42.288078>,  <41.685753, 33.368446, 42.394722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430824, 33.079243, 42.288078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216444, 0.164099, -0.962405,
		0.739576, -0.671069, 0.051906,
		-0.637322, -0.723006, -0.266612,
		41.239628, 32.862339, 42.208096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036507, 32.895096, 41.872982>,  <41.685753, 33.368446, 42.394722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036507, 32.895096, 41.872982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640377, 32.866280, 41.825539>,  <41.402699, 32.848988, 41.797073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640377, 32.866280, 41.825539>,  <42.036507, 32.895096, 41.872982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640377, 32.866280, 41.825539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085793, 0.353971, -0.931313,
		0.109079, -0.932478, -0.344365,
		-0.990324, -0.072043, -0.118611,
		41.343281, 32.844666, 41.789955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029972, 32.407463, 41.331768>,  <42.036507, 32.895096, 41.872982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029972, 32.407463, 41.331768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670914, 32.583687, 41.327110>,  <41.455479, 32.689419, 41.324314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670914, 32.583687, 41.327110>,  <42.029972, 32.407463, 41.331768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670914, 32.583687, 41.327110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135834, 0.251432, -0.958296,
		-0.419256, -0.861795, -0.285541,
		-0.897649, 0.440557, -0.011647,
		41.401619, 32.715855, 41.323616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611977, 32.144024, 40.697948>,  <42.029972, 32.407463, 41.331768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611977, 32.144024, 40.697948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453621, 32.500774, 40.785423>,  <41.358608, 32.714825, 40.837906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453621, 32.500774, 40.785423>,  <41.611977, 32.144024, 40.697948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453621, 32.500774, 40.785423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081866, 0.271470, -0.958959,
		-0.914640, -0.361742, -0.180487,
		-0.395892, 0.891878, 0.218684,
		41.334854, 32.768337, 40.851028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144180, 32.333927, 40.055916>,  <41.611977, 32.144024, 40.697948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144180, 32.333927, 40.055916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206528, 32.667347, 40.267918>,  <41.243935, 32.867397, 40.395119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206528, 32.667347, 40.267918>,  <41.144180, 32.333927, 40.055916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206528, 32.667347, 40.267918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217094, 0.494533, -0.841610,
		-0.963626, 0.246241, -0.103876,
		0.155869, 0.833548, 0.530002,
		41.253288, 32.917412, 40.426918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830273, 32.811356, 39.705669>,  <41.144180, 32.333927, 40.055916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830273, 32.811356, 39.705669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064419, 33.039951, 39.935715>,  <41.204906, 33.177109, 40.073742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064419, 33.039951, 39.935715>,  <40.830273, 32.811356, 39.705669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064419, 33.039951, 39.935715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068631, 0.671864, -0.737488,
		-0.807863, 0.471167, 0.354061,
		0.585361, 0.571489, 0.575111,
		41.240028, 33.211399, 40.108250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499985, 33.546917, 39.746807>,  <40.830273, 32.811356, 39.705669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499985, 33.546917, 39.746807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891735, 33.570713, 39.824036>,  <41.126785, 33.584991, 39.870373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891735, 33.570713, 39.824036>,  <40.499985, 33.546917, 39.746807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891735, 33.570713, 39.824036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080512, 0.761575, -0.643056,
		-0.185290, 0.645341, 0.741082,
		0.979380, 0.059486, 0.193070,
		41.185551, 33.588558, 39.881958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616646, 34.190521, 39.852921>,  <40.499985, 33.546917, 39.746807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616646, 34.190521, 39.852921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964916, 34.032757, 39.735363>,  <41.173878, 33.938099, 39.664829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964916, 34.032757, 39.735363>,  <40.616646, 34.190521, 39.852921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964916, 34.032757, 39.735363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163007, 0.795110, -0.584147,
		0.464069, 0.460694, 0.756572,
		0.870672, -0.394411, -0.293890,
		41.226116, 33.914433, 39.647198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137165, 34.656990, 39.934090>,  <40.616646, 34.190521, 39.852921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137165, 34.656990, 39.934090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323795, 34.414383, 39.676582>,  <41.435772, 34.268818, 39.522076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323795, 34.414383, 39.676582>,  <41.137165, 34.656990, 39.934090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323795, 34.414383, 39.676582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229253, 0.785906, -0.574277,
		0.854255, 0.120355, 0.505729,
		0.466573, -0.606520, -0.643773,
		41.463768, 34.232426, 39.483452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567692, 35.116776, 39.698994>,  <41.137165, 34.656990, 39.934090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567692, 35.116776, 39.698994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643509, 34.816078, 39.446342>,  <41.688999, 34.635658, 39.294754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643509, 34.816078, 39.446342>,  <41.567692, 35.116776, 39.698994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643509, 34.816078, 39.446342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477981, 0.632563, -0.609424,
		0.857675, -0.186390, 0.479221,
		0.189547, -0.751747, -0.631624,
		41.700375, 34.590553, 39.256855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306770, 35.101223, 39.478157>,  <41.567692, 35.116776, 39.698994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306770, 35.101223, 39.478157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113300, 34.895367, 39.194973>,  <41.997219, 34.771854, 39.025063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113300, 34.895367, 39.194973>,  <42.306770, 35.101223, 39.478157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113300, 34.895367, 39.194973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358220, 0.621621, -0.696610,
		0.798585, -0.590537, -0.116308,
		-0.483674, -0.514639, -0.707959,
		41.968197, 34.740974, 38.982586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740139, 34.943279, 38.910381>,  <42.306770, 35.101223, 39.478157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740139, 34.943279, 38.910381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376129, 34.936863, 38.744682>,  <42.157722, 34.933014, 38.645264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376129, 34.936863, 38.744682>,  <42.740139, 34.943279, 38.910381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376129, 34.936863, 38.744682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337403, 0.551928, -0.762584,
		0.240871, -0.833738, -0.496853,
		-0.910022, -0.016044, -0.414249,
		42.103123, 34.932049, 38.620407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778484, 34.722374, 38.200962>,  <42.740139, 34.943279, 38.910381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778484, 34.722374, 38.200962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425266, 34.906616, 38.236912>,  <42.213337, 35.017162, 38.258480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425266, 34.906616, 38.236912>,  <42.778484, 34.722374, 38.200962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425266, 34.906616, 38.236912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184292, 0.516487, -0.836228,
		-0.431588, -0.721863, -0.540967,
		-0.883044, 0.460602, 0.089876,
		42.160355, 35.044796, 38.263874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475754, 34.867596, 37.530926>,  <42.778484, 34.722374, 38.200962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475754, 34.867596, 37.530926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299194, 35.127678, 37.778278>,  <42.193256, 35.283730, 37.926689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299194, 35.127678, 37.778278>,  <42.475754, 34.867596, 37.530926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299194, 35.127678, 37.778278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032352, 0.700232, -0.713182,
		-0.896727, -0.294793, -0.330118,
		-0.441401, 0.650209, 0.618380,
		42.166775, 35.322742, 37.963791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909969, 35.138901, 37.261715>,  <42.475754, 34.867596, 37.530926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909969, 35.138901, 37.261715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081074, 35.407520, 37.503719>,  <42.183739, 35.568691, 37.648922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081074, 35.407520, 37.503719>,  <41.909969, 35.138901, 37.261715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081074, 35.407520, 37.503719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032134, 0.657624, -0.752661,
		-0.903319, 0.341402, 0.259728,
		0.427763, 0.671547, 0.605015,
		42.209404, 35.608986, 37.685223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583687, 35.841324, 37.381649>,  <41.909969, 35.138901, 37.261715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583687, 35.841324, 37.381649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979923, 35.880928, 37.419434>,  <42.217667, 35.904690, 37.442104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979923, 35.880928, 37.419434>,  <41.583687, 35.841324, 37.381649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979923, 35.880928, 37.419434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027424, 0.819924, -0.571815,
		-0.134071, 0.563845, 0.814926,
		0.990592, 0.099012, 0.094465,
		42.277100, 35.910633, 37.447773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733425, 36.571819, 37.424942>,  <41.583687, 35.841324, 37.381649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733425, 36.571819, 37.424942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075466, 36.390480, 37.324322>,  <42.280689, 36.281677, 37.263950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075466, 36.390480, 37.324322>,  <41.733425, 36.571819, 37.424942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075466, 36.390480, 37.324322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211606, 0.748110, -0.628931,
		0.473316, 0.484568, 0.735640,
		0.855099, -0.453349, -0.251555,
		42.331997, 36.254475, 37.248856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306309, 37.053440, 37.650150>,  <41.733425, 36.571819, 37.424942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306309, 37.053440, 37.650150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370636, 36.818230, 37.333073>,  <42.409233, 36.677105, 37.142826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370636, 36.818230, 37.333073>,  <42.306309, 37.053440, 37.650150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370636, 36.818230, 37.333073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538555, 0.725327, -0.428789,
		0.827101, -0.357952, 0.433330,
		0.160821, -0.588024, -0.792695,
		42.418880, 36.641823, 37.095264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103931, 37.001266, 37.534500>,  <42.306309, 37.053440, 37.650150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103931, 37.001266, 37.534500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890762, 36.933327, 37.202923>,  <42.762859, 36.892563, 37.003975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890762, 36.933327, 37.202923>,  <43.103931, 37.001266, 37.534500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890762, 36.933327, 37.202923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665456, 0.520971, -0.534563,
		0.522686, -0.836493, -0.164554,
		-0.532886, -0.169905, -0.828954,
		42.730885, 36.882370, 36.954239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544262, 36.645695, 37.045326>,  <43.103931, 37.001266, 37.534500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544262, 36.645695, 37.045326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247120, 36.856201, 36.879818>,  <43.068832, 36.982506, 36.780514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247120, 36.856201, 36.879818>,  <43.544262, 36.645695, 37.045326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247120, 36.856201, 36.879818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665547, 0.647208, -0.371710,
		0.072173, -0.551509, -0.831041,
		-0.742858, 0.526270, -0.413766,
		43.024261, 37.014084, 36.755688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620148, 36.764313, 36.207638>,  <43.544262, 36.645695, 37.045326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620148, 36.764313, 36.207638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451805, 37.054665, 36.425255>,  <43.350800, 37.228874, 36.555824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451805, 37.054665, 36.425255>,  <43.620148, 36.764313, 36.207638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451805, 37.054665, 36.425255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632404, 0.664744, -0.397718,
		-0.650344, 0.176672, -0.738810,
		-0.420854, 0.725880, 0.544040,
		43.325550, 37.272430, 36.588467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093769, 36.378281, 35.896130>,  <43.620148, 36.764313, 36.207638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093769, 36.378281, 35.896130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298805, 36.038406, 35.945580>,  <43.421825, 35.834480, 35.975250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298805, 36.038406, 35.945580>,  <43.093769, 36.378281, 35.896130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298805, 36.038406, 35.945580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165649, -0.239135, -0.956752,
		0.842504, 0.469942, -0.263328,
		0.512589, -0.849688, 0.123627,
		43.452583, 35.783501, 35.982666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451183, 36.277142, 35.257679>,  <43.093769, 36.378281, 35.896130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451183, 36.277142, 35.257679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429131, 35.912979, 35.421684>,  <43.415897, 35.694481, 35.520088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429131, 35.912979, 35.421684>,  <43.451183, 36.277142, 35.257679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429131, 35.912979, 35.421684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222084, -0.389173, -0.893993,
		0.973468, -0.140349, -0.180730,
		-0.055136, -0.910410, 0.410017,
		43.412590, 35.639854, 35.544689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735062, 35.798370, 34.744492>,  <43.451183, 36.277142, 35.257679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735062, 35.798370, 34.744492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510456, 35.597004, 35.007179>,  <43.375694, 35.476185, 35.164791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510456, 35.597004, 35.007179>,  <43.735062, 35.798370, 34.744492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510456, 35.597004, 35.007179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298833, -0.616710, -0.728263,
		0.771624, -0.605176, 0.195851,
		-0.561511, -0.503419, 0.656715,
		43.342003, 35.445980, 35.204193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719418, 35.170052, 34.321812>,  <43.735062, 35.798370, 34.744492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719418, 35.170052, 34.321812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427208, 35.119591, 34.590263>,  <43.251881, 35.089314, 34.751335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427208, 35.119591, 34.590263>,  <43.719418, 35.170052, 34.321812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427208, 35.119591, 34.590263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544625, -0.485261, -0.684037,
		0.411966, -0.865221, 0.285790,
		-0.730526, -0.126151, 0.671132,
		43.208050, 35.081745, 34.791603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448097, 34.514259, 34.249199>,  <43.719418, 35.170052, 34.321812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448097, 34.514259, 34.249199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142483, 34.685818, 34.441990>,  <42.959114, 34.788754, 34.557663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142483, 34.685818, 34.441990>,  <43.448097, 34.514259, 34.249199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142483, 34.685818, 34.441990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628964, -0.328744, -0.704508,
		-0.143711, -0.841415, 0.520930,
		-0.764036, 0.428892, 0.481975,
		42.913273, 34.814487, 34.586582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919712, 33.988338, 34.249329>,  <43.448097, 34.514259, 34.249199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919712, 33.988338, 34.249329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712906, 34.322453, 34.324150>,  <42.588821, 34.522923, 34.369045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712906, 34.322453, 34.324150>,  <42.919712, 33.988338, 34.249329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712906, 34.322453, 34.324150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616663, -0.211906, -0.758170,
		-0.593652, -0.507336, 0.624650,
		-0.517015, 0.835288, 0.187057,
		42.557800, 34.573040, 34.380268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263672, 33.717896, 34.041840>,  <42.919712, 33.988338, 34.249329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263672, 33.717896, 34.041840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227116, 34.114338, 34.080540>,  <42.205181, 34.352203, 34.103760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227116, 34.114338, 34.080540>,  <42.263672, 33.717896, 34.041840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227116, 34.114338, 34.080540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607736, 0.021454, -0.793849,
		-0.788863, -0.131346, 0.600370,
		-0.091388, 0.991105, 0.096748,
		42.199699, 34.411671, 34.109566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538754, 33.949074, 33.985344>,  <42.263672, 33.717896, 34.041840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538754, 33.949074, 33.985344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744888, 34.275291, 33.880035>,  <41.868568, 34.471024, 33.816849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744888, 34.275291, 33.880035>,  <41.538754, 33.949074, 33.985344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744888, 34.275291, 33.880035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530360, 0.062195, -0.845488,
		-0.673158, 0.575345, 0.464583,
		0.515342, 0.815543, -0.263272,
		41.899490, 34.519955, 33.801052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999802, 34.480946, 33.711655>,  <41.538754, 33.949074, 33.985344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999802, 34.480946, 33.711655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348625, 34.599899, 33.556179>,  <41.557919, 34.671272, 33.462894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348625, 34.599899, 33.556179>,  <40.999802, 34.480946, 33.711655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348625, 34.599899, 33.556179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463330, 0.245903, -0.851386,
		-0.157613, 0.922547, 0.352230,
		0.872057, 0.297388, -0.388686,
		41.610241, 34.689117, 33.439575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724728, 34.957005, 33.314350>,  <40.999802, 34.480946, 33.711655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724728, 34.957005, 33.314350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095139, 34.906532, 33.172054>,  <41.317387, 34.876251, 33.086678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095139, 34.906532, 33.172054>,  <40.724728, 34.957005, 33.314350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095139, 34.906532, 33.172054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309175, 0.287059, -0.906646,
		0.216517, 0.949566, 0.226814,
		0.926030, -0.126179, -0.355735,
		41.372948, 34.868679, 33.065334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834885, 35.497665, 32.847549>,  <40.724728, 34.957005, 33.314350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834885, 35.497665, 32.847549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120102, 35.246208, 32.723370>,  <41.291233, 35.095333, 32.648861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120102, 35.246208, 32.723370>,  <40.834885, 35.497665, 32.847549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120102, 35.246208, 32.723370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087290, 0.359750, -0.928957,
		0.695665, 0.689486, 0.201643,
		0.713043, -0.628641, -0.310451,
		41.334015, 35.057617, 32.630234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172523, 35.790878, 32.337189>,  <40.834885, 35.497665, 32.847549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172523, 35.790878, 32.337189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288948, 35.416348, 32.258633>,  <41.358803, 35.191628, 32.211498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288948, 35.416348, 32.258633>,  <41.172523, 35.790878, 32.337189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288948, 35.416348, 32.258633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103913, 0.173127, -0.979402,
		0.951045, 0.305472, -0.046906,
		0.291059, -0.936330, -0.196394,
		41.376266, 35.135448, 32.199715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707195, 35.873474, 31.825735>,  <41.172523, 35.790878, 32.337189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707195, 35.873474, 31.825735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525040, 35.517952, 31.805153>,  <41.415745, 35.304638, 31.792803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525040, 35.517952, 31.805153>,  <41.707195, 35.873474, 31.825735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525040, 35.517952, 31.805153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065958, 0.091320, -0.993635,
		0.887846, -0.449097, -0.100210,
		-0.455390, -0.888804, -0.051457,
		41.388424, 35.251312, 31.789717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006340, 35.618835, 31.234301>,  <41.707195, 35.873474, 31.825735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006340, 35.618835, 31.234301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669994, 35.407806, 31.282650>,  <41.468185, 35.281189, 31.311661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669994, 35.407806, 31.282650>,  <42.006340, 35.618835, 31.234301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669994, 35.407806, 31.282650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076421, -0.105363, -0.991493,
		0.535820, -0.842951, 0.048279,
		-0.840867, -0.527572, 0.120874,
		41.417736, 35.249535, 31.318913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020081, 35.039600, 30.802362>,  <42.006340, 35.618835, 31.234301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020081, 35.039600, 30.802362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630875, 35.090401, 30.879423>,  <41.397350, 35.120880, 30.925659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630875, 35.090401, 30.879423>,  <42.020081, 35.039600, 30.802362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630875, 35.090401, 30.879423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216149, -0.209425, -0.953635,
		-0.080766, -0.969542, 0.231224,
		-0.973013, 0.127001, 0.192651,
		41.338970, 35.128502, 30.937218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666191, 34.539162, 30.475113>,  <42.020081, 35.039600, 30.802362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666191, 34.539162, 30.475113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407135, 34.839111, 30.529158>,  <41.251701, 35.019081, 30.561584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407135, 34.839111, 30.529158>,  <41.666191, 34.539162, 30.475113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407135, 34.839111, 30.529158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276183, -0.065766, -0.958852,
		-0.710133, -0.658303, 0.249695,
		-0.647637, 0.749875, 0.135110,
		41.212845, 35.064075, 30.569691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173271, 34.317413, 30.033669>,  <41.666191, 34.539162, 30.475113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173271, 34.317413, 30.033669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059162, 34.689758, 30.124987>,  <40.990696, 34.913166, 30.179777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059162, 34.689758, 30.124987>,  <41.173271, 34.317413, 30.033669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059162, 34.689758, 30.124987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417430, 0.093750, -0.903860,
		-0.862771, -0.353140, 0.361826,
		-0.285268, 0.930862, 0.228296,
		40.973583, 34.969017, 30.193476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548210, 34.362514, 29.772966>,  <41.173271, 34.317413, 30.033669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548210, 34.362514, 29.772966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638821, 34.751778, 29.789192>,  <40.693188, 34.985336, 29.798927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638821, 34.751778, 29.789192>,  <40.548210, 34.362514, 29.772966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638821, 34.751778, 29.789192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228917, 0.093675, -0.968928,
		-0.946721, 0.210206, 0.243993,
		0.226531, 0.973159, 0.040565,
		40.706779, 35.043724, 29.801361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007107, 34.702713, 29.468540>,  <40.548210, 34.362514, 29.772966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007107, 34.702713, 29.468540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324707, 34.940727, 29.418760>,  <40.515266, 35.083538, 29.388891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324707, 34.940727, 29.418760>,  <40.007107, 34.702713, 29.468540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324707, 34.940727, 29.418760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158702, 0.005272, -0.987312,
		-0.586832, 0.803680, 0.098620,
		0.794004, 0.595038, -0.124451,
		40.562908, 35.119240, 29.381424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734135, 35.193439, 28.957556>,  <40.007107, 34.702713, 29.468540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734135, 35.193439, 28.957556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132969, 35.218159, 28.939692>,  <40.372269, 35.232990, 28.928972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132969, 35.218159, 28.939692>,  <39.734135, 35.193439, 28.957556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132969, 35.218159, 28.939692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043443, -0.020924, -0.998837,
		-0.062663, 0.997869, -0.018179,
		0.997089, 0.061801, -0.044661,
		40.432095, 35.236698, 28.926292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959305, 35.622635, 28.394619>,  <39.734135, 35.193439, 28.957556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959305, 35.622635, 28.394619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253235, 35.362751, 28.472502>,  <40.429592, 35.206821, 28.519232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253235, 35.362751, 28.472502>,  <39.959305, 35.622635, 28.394619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253235, 35.362751, 28.472502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008343, -0.295705, -0.955243,
		0.678204, 0.700314, -0.222712,
		0.734827, -0.649707, 0.194706,
		40.473682, 35.167839, 28.530914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471485, 35.686157, 27.841478>,  <39.959305, 35.622635, 28.394619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471485, 35.686157, 27.841478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477924, 35.308617, 27.973471>,  <40.481789, 35.082092, 28.052666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477924, 35.308617, 27.973471>,  <40.471485, 35.686157, 27.841478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477924, 35.308617, 27.973471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134277, -0.324995, -0.936134,
		0.990813, 0.059375, 0.121507,
		0.016094, -0.943850, 0.329982,
		40.482754, 35.025463, 28.072466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199196, 35.958172, 27.924009>,  <40.471485, 35.686157, 27.841478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199196, 35.958172, 27.924009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597359, 35.921539, 27.935186>,  <41.836254, 35.899559, 27.941893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597359, 35.921539, 27.935186>,  <41.199196, 35.958172, 27.924009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597359, 35.921539, 27.935186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048172, 0.226760, -0.972759,
		0.082753, 0.969635, 0.230130,
		0.995405, -0.091585, 0.027945,
		41.895981, 35.894062, 27.943569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418064, 36.497066, 27.495316>,  <41.199196, 35.958172, 27.924009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418064, 36.497066, 27.495316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667233, 36.185860, 27.527933>,  <41.816734, 35.999134, 27.547504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667233, 36.185860, 27.527933>,  <41.418064, 36.497066, 27.495316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667233, 36.185860, 27.527933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110045, -0.016052, -0.993797,
		0.774503, 0.628034, 0.075618,
		0.622924, -0.778021, 0.081544,
		41.854111, 35.952454, 27.552397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191990, 36.599899, 27.114168>,  <41.418064, 36.497066, 27.495316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191990, 36.599899, 27.114168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075832, 36.217972, 27.139467>,  <42.006138, 35.988815, 27.154646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075832, 36.217972, 27.139467>,  <42.191990, 36.599899, 27.114168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075832, 36.217972, 27.139467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123961, -0.103075, -0.986919,
		0.948845, -0.278754, 0.148292,
		-0.290393, -0.954815, 0.063247,
		41.988716, 35.931526, 27.158442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700245, 36.081436, 26.804863>,  <42.191990, 36.599899, 27.114168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700245, 36.081436, 26.804863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317093, 35.982258, 26.746916>,  <42.087200, 35.922752, 26.712149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317093, 35.982258, 26.746916>,  <42.700245, 36.081436, 26.804863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317093, 35.982258, 26.746916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085728, 0.234562, -0.968314,
		0.274076, -0.939947, -0.203426,
		-0.957879, -0.247953, -0.144868,
		42.029728, 35.907875, 26.703455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454510, 35.802933, 26.466713>,  <42.700245, 36.081436, 26.804863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454510, 35.802933, 26.466713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629478, 35.511208, 26.256279>,  <43.734459, 35.336174, 26.130018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629478, 35.511208, 26.256279>,  <43.454510, 35.802933, 26.466713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629478, 35.511208, 26.256279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029803, -0.596460, 0.802089,
		-0.898762, -0.335174, -0.282641,
		0.437423, -0.729311, -0.526087,
		43.760704, 35.292416, 26.098454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181664, 35.119331, 26.431355>,  <43.454510, 35.802933, 26.466713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181664, 35.119331, 26.431355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579346, 35.083256, 26.407928>,  <43.817955, 35.061611, 26.393873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579346, 35.083256, 26.407928>,  <43.181664, 35.119331, 26.431355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579346, 35.083256, 26.407928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032996, -0.262495, 0.964369,
		-0.102352, -0.960709, -0.257997,
		0.994201, -0.090192, -0.058566,
		43.877605, 35.056198, 26.390358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436184, 34.401943, 26.695143>,  <43.181664, 35.119331, 26.431355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436184, 34.401943, 26.695143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734798, 34.667168, 26.717178>,  <43.913967, 34.826302, 26.730400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734798, 34.667168, 26.717178>,  <43.436184, 34.401943, 26.695143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734798, 34.667168, 26.717178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096853, -0.190211, 0.976954,
		0.658260, -0.723994, -0.206219,
		0.746534, 0.663062, 0.055088,
		43.958759, 34.866085, 26.733706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102821, 34.056988, 26.895248>,  <43.436184, 34.401943, 26.695143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102821, 34.056988, 26.895248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041641, 34.426525, 27.035606>,  <44.004932, 34.648247, 27.119822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041641, 34.426525, 27.035606>,  <44.102821, 34.056988, 26.895248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041641, 34.426525, 27.035606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198054, -0.319215, 0.926756,
		0.968185, 0.211241, -0.134147,
		-0.152947, 0.923839, 0.350897,
		43.995758, 34.703678, 27.140875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669537, 34.405704, 27.158289>,  <44.102821, 34.056988, 26.895248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669537, 34.405704, 27.158289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364727, 34.562012, 27.364830>,  <44.181839, 34.655796, 27.488754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364727, 34.562012, 27.364830>,  <44.669537, 34.405704, 27.158289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364727, 34.562012, 27.364830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500159, -0.151283, 0.852617,
		0.411289, 0.907973, -0.080164,
		-0.762025, 0.390766, 0.516351,
		44.136120, 34.679241, 27.519735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922176, 34.887276, 27.715275>,  <44.669537, 34.405704, 27.158289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922176, 34.887276, 27.715275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572742, 34.742550, 27.845472>,  <44.363083, 34.655716, 27.923592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572742, 34.742550, 27.845472>,  <44.922176, 34.887276, 27.715275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572742, 34.742550, 27.845472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379455, -0.087576, 0.921056,
		-0.304747, 0.928127, 0.213798,
		-0.873581, -0.361816, 0.325494,
		44.310669, 34.634007, 27.943121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926346, 35.042507, 28.384571>,  <44.922176, 34.887276, 27.715275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926346, 35.042507, 28.384571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619427, 34.786125, 28.376341>,  <44.435276, 34.632294, 28.371403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619427, 34.786125, 28.376341>,  <44.926346, 35.042507, 28.384571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619427, 34.786125, 28.376341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095944, -0.146458, 0.984553,
		-0.634071, 0.753473, 0.173873,
		-0.767299, -0.640959, -0.020573,
		44.389236, 34.593838, 28.370169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572163, 35.195732, 28.976616>,  <44.926346, 35.042507, 28.384571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572163, 35.195732, 28.976616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438889, 34.830036, 28.884403>,  <44.358925, 34.610619, 28.829075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438889, 34.830036, 28.884403>,  <44.572163, 35.195732, 28.976616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438889, 34.830036, 28.884403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020967, -0.251628, 0.967597,
		-0.942628, 0.317555, 0.103008,
		-0.333185, -0.914244, -0.230534,
		44.338932, 34.555763, 28.815243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961124, 35.128597, 29.346315>,  <44.572163, 35.195732, 28.976616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961124, 35.128597, 29.346315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084003, 34.754833, 29.274191>,  <44.157730, 34.530575, 29.230917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084003, 34.754833, 29.274191>,  <43.961124, 35.128597, 29.346315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084003, 34.754833, 29.274191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049444, -0.204889, 0.977536,
		-0.950360, -0.291384, -0.109142,
		0.307200, -0.934407, -0.180311,
		44.176163, 34.474510, 29.220098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534237, 34.724934, 29.751400>,  <43.961124, 35.128597, 29.346315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534237, 34.724934, 29.751400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855469, 34.506302, 29.656483>,  <44.048210, 34.375122, 29.599533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855469, 34.506302, 29.656483>,  <43.534237, 34.724934, 29.751400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855469, 34.506302, 29.656483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052837, -0.331340, 0.942031,
		-0.593522, -0.769065, -0.237213,
		0.803082, -0.546582, -0.237293,
		44.096394, 34.342327, 29.585295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379719, 34.070377, 29.924980>,  <43.534237, 34.724934, 29.751400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379719, 34.070377, 29.924980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778851, 34.096653, 29.922880>,  <44.018330, 34.112419, 29.921619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778851, 34.096653, 29.922880>,  <43.379719, 34.070377, 29.924980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778851, 34.096653, 29.922880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032688, -0.424182, 0.904987,
		0.057222, -0.903191, -0.425407,
		0.997826, 0.065691, -0.005251,
		44.078197, 34.116360, 29.921305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565239, 33.538902, 30.313478>,  <43.379719, 34.070377, 29.924980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565239, 33.538902, 30.313478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905910, 33.748379, 30.305668>,  <44.110313, 33.874065, 30.300982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905910, 33.748379, 30.305668>,  <43.565239, 33.538902, 30.313478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905910, 33.748379, 30.305668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217839, -0.319888, 0.922072,
		0.476639, -0.789566, -0.386524,
		0.851681, 0.523696, -0.019527,
		44.161415, 33.905487, 30.299810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026764, 33.047012, 30.413630>,  <43.565239, 33.538902, 30.313478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026764, 33.047012, 30.413630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204395, 33.392361, 30.509455>,  <44.310974, 33.599567, 30.566950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204395, 33.392361, 30.509455>,  <44.026764, 33.047012, 30.413630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204395, 33.392361, 30.509455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336758, -0.408602, 0.848315,
		0.830293, -0.296045, -0.472198,
		0.444081, 0.863366, 0.239564,
		44.337620, 33.651371, 30.581324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681446, 32.868664, 30.744211>,  <44.026764, 33.047012, 30.413630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681446, 32.868664, 30.744211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599571, 33.241730, 30.863035>,  <44.550446, 33.465569, 30.934330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599571, 33.241730, 30.863035>,  <44.681446, 32.868664, 30.744211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599571, 33.241730, 30.863035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249097, -0.243864, 0.937273,
		0.946602, 0.265842, -0.182408,
		-0.204684, 0.932662, 0.297062,
		44.538166, 33.521530, 30.952154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233749, 33.028980, 31.112913>,  <44.681446, 32.868664, 30.744211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233749, 33.028980, 31.112913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980793, 33.300133, 31.262878>,  <44.829018, 33.462826, 31.352858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980793, 33.300133, 31.262878>,  <45.233749, 33.028980, 31.112913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980793, 33.300133, 31.262878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459106, -0.061843, 0.886226,
		0.623941, 0.732567, -0.272110,
		-0.632392, 0.677880, 0.374912,
		44.791077, 33.503498, 31.375353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622505, 33.389988, 31.724230>,  <45.233749, 33.028980, 31.112913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622505, 33.389988, 31.724230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233299, 33.476486, 31.756409>,  <44.999775, 33.528385, 31.775717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233299, 33.476486, 31.756409>,  <45.622505, 33.389988, 31.724230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233299, 33.476486, 31.756409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100371, 0.082770, 0.991501,
		0.207747, 0.972825, -0.102241,
		-0.973020, 0.216243, 0.080449,
		44.941395, 33.541359, 31.780542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605518, 34.082554, 32.059666>,  <45.622505, 33.389988, 31.724230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605518, 34.082554, 32.059666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240288, 33.923920, 32.097630>,  <45.021149, 33.828739, 32.120407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240288, 33.923920, 32.097630>,  <45.605518, 34.082554, 32.059666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240288, 33.923920, 32.097630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011793, 0.206960, 0.978278,
		-0.407613, 0.894364, -0.184294,
		-0.913079, -0.396586, 0.094907,
		44.966366, 33.804943, 32.126102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369530, 34.515625, 32.467518>,  <45.605518, 34.082554, 32.059666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369530, 34.515625, 32.467518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124897, 34.200142, 32.492496>,  <44.978115, 34.010853, 32.507484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124897, 34.200142, 32.492496>,  <45.369530, 34.515625, 32.467518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124897, 34.200142, 32.492496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059442, 0.124513, 0.990436,
		-0.788943, 0.602024, -0.123032,
		-0.611585, -0.788710, 0.062448,
		44.941422, 33.963528, 32.511230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776691, 34.686527, 32.935287>,  <45.369530, 34.515625, 32.467518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776691, 34.686527, 32.935287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812950, 34.288174, 32.935459>,  <44.834705, 34.049160, 32.935562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812950, 34.288174, 32.935459>,  <44.776691, 34.686527, 32.935287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812950, 34.288174, 32.935459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040393, -0.003243, 0.999179,
		-0.995064, -0.090590, -0.040520,
		0.090647, -0.995883, 0.000432,
		44.840145, 33.989410, 32.935589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178165, 34.409317, 33.383301>,  <44.776691, 34.686527, 32.935287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178165, 34.409317, 33.383301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469688, 34.135548, 33.375351>,  <44.644604, 33.971287, 33.370583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469688, 34.135548, 33.375351>,  <44.178165, 34.409317, 33.383301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469688, 34.135548, 33.375351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039482, 0.013029, 0.999135,
		-0.683575, -0.728966, 0.036519,
		0.728811, -0.684426, -0.019874,
		44.688332, 33.930222, 33.369389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990421, 34.024208, 33.991241>,  <44.178165, 34.409317, 33.383301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990421, 34.024208, 33.991241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353489, 33.904522, 33.873520>,  <44.571327, 33.832710, 33.802887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353489, 33.904522, 33.873520>,  <43.990421, 34.024208, 33.991241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353489, 33.904522, 33.873520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228039, -0.237095, 0.944343,
		-0.352339, -0.924260, -0.146971,
		0.907665, -0.299214, -0.294305,
		44.625790, 33.814758, 33.785229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124825, 33.326801, 34.304272>,  <43.990421, 34.024208, 33.991241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124825, 33.326801, 34.304272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482155, 33.501637, 34.262459>,  <44.696552, 33.606537, 34.237370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482155, 33.501637, 34.262459>,  <44.124825, 33.326801, 34.304272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482155, 33.501637, 34.262459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141620, -0.053030, 0.988500,
		0.426514, -0.897856, -0.109273,
		0.893325, 0.437084, -0.104536,
		44.750153, 33.632763, 34.231098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621967, 32.916992, 34.690132>,  <44.124825, 33.326801, 34.304272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621967, 32.916992, 34.690132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816658, 33.264057, 34.649628>,  <44.933472, 33.472298, 34.625324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816658, 33.264057, 34.649628>,  <44.621967, 32.916992, 34.690132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816658, 33.264057, 34.649628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360654, -0.094010, 0.927950,
		0.795632, -0.488177, -0.358684,
		0.486723, 0.867667, -0.101266,
		44.962673, 33.524357, 34.619247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274345, 32.772587, 35.048237>,  <44.621967, 32.916992, 34.690132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274345, 32.772587, 35.048237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214294, 33.166046, 35.008446>,  <45.178265, 33.402122, 34.984570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214294, 33.166046, 35.008446>,  <45.274345, 32.772587, 35.048237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214294, 33.166046, 35.008446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466599, 0.159206, 0.870022,
		0.871634, 0.084198, -0.482871,
		-0.150130, 0.983648, -0.099482,
		45.169254, 33.461140, 34.978600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940037, 33.067303, 35.269680>,  <45.274345, 32.772587, 35.048237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940037, 33.067303, 35.269680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654049, 33.343185, 35.315510>,  <45.482456, 33.508717, 35.343006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654049, 33.343185, 35.315510>,  <45.940037, 33.067303, 35.269680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654049, 33.343185, 35.315510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362334, 0.225366, 0.904392,
		0.597944, 0.688124, -0.411033,
		-0.714967, 0.689707, 0.114574,
		45.439560, 33.550098, 35.349880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222664, 33.643341, 35.656029>,  <45.940037, 33.067303, 35.269680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222664, 33.643341, 35.656029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826473, 33.670536, 35.703922>,  <45.588760, 33.686855, 35.732658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826473, 33.670536, 35.703922>,  <46.222664, 33.643341, 35.656029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826473, 33.670536, 35.703922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124432, 0.069667, 0.989779,
		0.058954, 0.995251, -0.077464,
		-0.990475, 0.067990, 0.119734,
		45.529331, 33.690933, 35.739841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205936, 34.405312, 35.714245>,  <46.222664, 33.643341, 35.656029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205936, 34.405312, 35.714245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573513, 34.372578, 35.868568>,  <46.794060, 34.352936, 35.961163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573513, 34.372578, 35.868568>,  <46.205936, 34.405312, 35.714245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.573513, 34.372578, 35.868568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392312, 0.290061, -0.872901,
		-0.040475, 0.953503, 0.298654,
		0.918941, -0.081835, 0.385811,
		46.849194, 34.348026, 35.984310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564819, 35.038799, 35.560520>,  <46.205936, 34.405312, 35.714245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564819, 35.038799, 35.560520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846252, 34.760693, 35.619270>,  <47.015114, 34.593830, 35.654522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846252, 34.760693, 35.619270>,  <46.564819, 35.038799, 35.560520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.846252, 34.760693, 35.619270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527817, 0.372919, -0.763113,
		0.475793, 0.614439, 0.629353,
		0.703584, -0.695267, 0.146879,
		47.057327, 34.552113, 35.663334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.264233, 35.342770, 35.647911>,  <46.564819, 35.038799, 35.560520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.264233, 35.342770, 35.647911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253674, 34.992256, 35.455482>,  <47.247337, 34.781948, 35.340023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253674, 34.992256, 35.455482>,  <47.264233, 35.342770, 35.647911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253674, 34.992256, 35.455482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453527, 0.418366, -0.786946,
		0.890851, -0.238958, 0.386371,
		-0.026402, -0.876281, -0.481076,
		47.245754, 34.729370, 35.311161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.945229, 35.220409, 35.372807>,  <47.264233, 35.342770, 35.647911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.945229, 35.220409, 35.372807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707558, 34.988716, 35.149582>,  <47.564953, 34.849701, 35.015648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707558, 34.988716, 35.149582>,  <47.945229, 35.220409, 35.372807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707558, 34.988716, 35.149582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472603, 0.310000, -0.824952,
		0.650841, -0.753914, 0.089552,
		-0.594182, -0.579235, -0.558063,
		47.529305, 34.814945, 34.982162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.023663, 34.367638, 47.116180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689713, 34.267410, 47.312218>,  <37.489342, 34.207275, 47.429840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689713, 34.267410, 47.312218>,  <38.023663, 34.367638, 47.116180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689713, 34.267410, 47.312218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535415, 0.163094, -0.828693,
		0.127701, -0.954265, -0.270315,
		-0.834879, -0.250556, 0.490101,
		37.439251, 34.192242, 47.459248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773636, 33.818249, 46.662193>,  <38.023663, 34.367638, 47.116180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773636, 33.818249, 46.662193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463669, 33.981789, 46.855000>,  <37.277687, 34.079914, 46.970684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463669, 33.981789, 46.855000>,  <37.773636, 33.818249, 46.662193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463669, 33.981789, 46.855000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406448, 0.261680, -0.875399,
		-0.484044, -0.874278, -0.036603,
		-0.774920, 0.408854, 0.482013,
		37.231194, 34.104446, 46.999603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087090, 33.506317, 46.405174>,  <37.773636, 33.818249, 46.662193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087090, 33.506317, 46.405174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984520, 33.852394, 46.577541>,  <36.922977, 34.060040, 46.680962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984520, 33.852394, 46.577541>,  <37.087090, 33.506317, 46.405174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984520, 33.852394, 46.577541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435638, 0.294528, -0.850572,
		-0.862824, -0.405833, 0.301385,
		-0.256424, 0.865189, 0.430922,
		36.907593, 34.111950, 46.706818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392685, 33.690926, 46.203766>,  <37.087090, 33.506317, 46.405174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392685, 33.690926, 46.203766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517555, 34.050213, 46.327534>,  <36.592480, 34.265785, 46.401794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517555, 34.050213, 46.327534>,  <36.392685, 33.690926, 46.203766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517555, 34.050213, 46.327534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390055, 0.418166, -0.820362,
		-0.866257, 0.135406, 0.480898,
		0.312177, 0.898222, 0.309423,
		36.611210, 34.319679, 46.420361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805126, 34.068130, 46.213116>,  <36.392685, 33.690926, 46.203766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805126, 34.068130, 46.213116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099434, 34.336662, 46.177433>,  <36.276020, 34.497784, 46.156021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099434, 34.336662, 46.177433>,  <35.805126, 34.068130, 46.213116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099434, 34.336662, 46.177433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345165, 0.258395, -0.902271,
		-0.582672, 0.694655, 0.421839,
		0.735768, 0.671332, -0.089211,
		36.320164, 34.538063, 46.150669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496845, 34.684738, 45.940079>,  <35.805126, 34.068130, 46.213116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496845, 34.684738, 45.940079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888081, 34.720074, 45.864677>,  <36.122822, 34.741276, 45.819435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888081, 34.720074, 45.864677>,  <35.496845, 34.684738, 45.940079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888081, 34.720074, 45.864677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206368, 0.292329, -0.933786,
		-0.027387, 0.952228, 0.304156,
		0.978091, 0.088342, -0.188504,
		36.181507, 34.746578, 45.808125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457226, 35.347321, 45.645142>,  <35.496845, 34.684738, 45.940079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457226, 35.347321, 45.645142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786552, 35.145267, 45.541618>,  <35.984150, 35.024036, 45.479504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786552, 35.145267, 45.541618>,  <35.457226, 35.347321, 45.645142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786552, 35.145267, 45.541618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157649, 0.234517, -0.959244,
		0.545243, 0.830566, 0.113449,
		0.823320, -0.505136, -0.258806,
		36.033550, 34.993725, 45.463978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450005, 35.779255, 45.130505>,  <35.457226, 35.347321, 45.645142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450005, 35.779255, 45.130505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733055, 35.503014, 45.070732>,  <35.902885, 35.337269, 45.034866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733055, 35.503014, 45.070732>,  <35.450005, 35.779255, 45.130505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733055, 35.503014, 45.070732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243910, -0.040252, -0.968962,
		0.663156, 0.722110, -0.196929,
		0.707624, -0.690606, -0.149436,
		35.945343, 35.295834, 45.025902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048073, 36.152618, 44.738865>,  <35.450005, 35.779255, 45.130505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048073, 36.152618, 44.738865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023479, 35.754749, 44.705761>,  <36.008724, 35.516029, 44.685898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023479, 35.754749, 44.705761>,  <36.048073, 36.152618, 44.738865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023479, 35.754749, 44.705761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076808, 0.077960, -0.993993,
		0.995149, -0.067468, 0.071606,
		-0.061480, -0.994671, -0.082764,
		36.005035, 35.456348, 44.680931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596001, 35.923424, 44.288666>,  <36.048073, 36.152618, 44.738865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596001, 35.923424, 44.288666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329544, 35.625893, 44.266800>,  <36.169670, 35.447376, 44.253681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329544, 35.625893, 44.266800>,  <36.596001, 35.923424, 44.288666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329544, 35.625893, 44.266800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037947, 0.039401, -0.998503,
		0.744864, -0.667214, 0.001979,
		-0.666137, -0.743824, -0.054668,
		36.129704, 35.402744, 44.250401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897842, 35.383717, 43.924267>,  <36.596001, 35.923424, 44.288666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897842, 35.383717, 43.924267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505665, 35.313961, 43.887768>,  <36.270359, 35.272106, 43.865868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505665, 35.313961, 43.887768>,  <36.897842, 35.383717, 43.924267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505665, 35.313961, 43.887768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123374, -0.183321, -0.975281,
		0.153354, -0.967461, 0.201250,
		-0.980439, -0.174392, -0.091247,
		36.211533, 35.261642, 43.860394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903831, 34.942291, 43.384617>,  <36.897842, 35.383717, 43.924267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903831, 34.942291, 43.384617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529678, 35.079720, 43.418106>,  <36.305187, 35.162178, 43.438198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529678, 35.079720, 43.418106>,  <36.903831, 34.942291, 43.384617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529678, 35.079720, 43.418106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097259, -0.022323, -0.995009,
		-0.339989, -0.938861, 0.054296,
		-0.935387, 0.343572, 0.083723,
		36.249062, 35.182793, 43.443222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562603, 34.537464, 42.923954>,  <36.903831, 34.942291, 43.384617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562603, 34.537464, 42.923954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346260, 34.870605, 42.970993>,  <36.216454, 35.070488, 42.999218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346260, 34.870605, 42.970993>,  <36.562603, 34.537464, 42.923954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346260, 34.870605, 42.970993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055617, 0.104094, -0.993011,
		-0.839271, -0.543622, -0.009980,
		-0.540862, 0.832850, 0.117598,
		36.184002, 35.120461, 43.006271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951286, 34.501972, 42.508434>,  <36.562603, 34.537464, 42.923954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951286, 34.501972, 42.508434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035828, 34.886520, 42.578960>,  <36.086552, 35.117249, 42.621277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035828, 34.886520, 42.578960>,  <35.951286, 34.501972, 42.508434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035828, 34.886520, 42.578960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098770, 0.158460, -0.982413,
		-0.972406, 0.225053, -0.061463,
		0.211356, 0.961375, 0.176316,
		36.099236, 35.174934, 42.631855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532448, 34.898109, 42.087021>,  <35.951286, 34.501972, 42.508434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532448, 34.898109, 42.087021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818333, 35.154907, 42.198036>,  <35.989864, 35.308987, 42.264645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818333, 35.154907, 42.198036>,  <35.532448, 34.898109, 42.087021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818333, 35.154907, 42.198036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053032, 0.345929, -0.936761,
		-0.697404, 0.684234, 0.213194,
		0.714714, 0.641994, 0.277538,
		36.032745, 35.347507, 42.281296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416267, 35.481556, 41.652203>,  <35.532448, 34.898109, 42.087021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416267, 35.481556, 41.652203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782814, 35.549355, 41.797279>,  <36.002743, 35.590034, 41.884327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782814, 35.549355, 41.797279>,  <35.416267, 35.481556, 41.652203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782814, 35.549355, 41.797279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278282, 0.381616, -0.881435,
		-0.287813, 0.908647, 0.302530,
		0.916364, 0.169500, 0.362694,
		36.057724, 35.600204, 41.906086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507496, 36.065456, 41.372444>,  <35.416267, 35.481556, 41.652203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507496, 36.065456, 41.372444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868858, 35.944038, 41.493580>,  <36.085674, 35.871185, 41.566261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868858, 35.944038, 41.493580>,  <35.507496, 36.065456, 41.372444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868858, 35.944038, 41.493580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403955, 0.365670, -0.838514,
		0.143791, 0.879854, 0.452969,
		0.903407, -0.303550, 0.302841,
		36.139881, 35.852974, 41.584431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959492, 36.580986, 41.372360>,  <35.507496, 36.065456, 41.372444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959492, 36.580986, 41.372360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201042, 36.265129, 41.328911>,  <36.345970, 36.075615, 41.302841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201042, 36.265129, 41.328911>,  <35.959492, 36.580986, 41.372360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201042, 36.265129, 41.328911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360374, 0.392026, -0.846431,
		0.710964, 0.471991, 0.521301,
		0.603872, -0.789645, -0.108623,
		36.382202, 36.028236, 41.296326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434582, 36.768349, 40.873535>,  <35.959492, 36.580986, 41.372360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434582, 36.768349, 40.873535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499031, 36.373711, 40.883926>,  <36.537701, 36.136929, 40.890160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499031, 36.373711, 40.883926>,  <36.434582, 36.768349, 40.873535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499031, 36.373711, 40.883926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222819, 0.010724, -0.974801,
		0.961453, 0.162847, 0.221560,
		0.161119, -0.986593, 0.025975,
		36.547367, 36.077732, 40.891720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197674, 36.628033, 40.579018>,  <36.434582, 36.768349, 40.873535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197674, 36.628033, 40.579018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936340, 36.327507, 40.541744>,  <36.779541, 36.147190, 40.519379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936340, 36.327507, 40.541744>,  <37.197674, 36.628033, 40.579018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936340, 36.327507, 40.541744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257601, -0.104873, -0.960543,
		0.711897, -0.651559, 0.262056,
		-0.653333, -0.751313, -0.093184,
		36.740341, 36.102112, 40.513790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532772, 36.139359, 40.053947>,  <37.197674, 36.628033, 40.579018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532772, 36.139359, 40.053947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136902, 36.088562, 40.080532>,  <36.899380, 36.058083, 40.096485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136902, 36.088562, 40.080532>,  <37.532772, 36.139359, 40.053947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136902, 36.088562, 40.080532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108231, 0.358078, -0.927398,
		0.093972, -0.925015, -0.368125,
		-0.989674, -0.126992, 0.066466,
		36.840000, 36.050465, 40.100471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289219, 35.789555, 39.453999>,  <37.532772, 36.139359, 40.053947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289219, 35.789555, 39.453999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960007, 35.970310, 39.591648>,  <36.762478, 36.078762, 39.674240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960007, 35.970310, 39.591648>,  <37.289219, 35.789555, 39.453999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960007, 35.970310, 39.591648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115357, 0.460247, -0.880264,
		-0.556162, -0.764180, -0.326669,
		-0.823029, 0.451886, 0.344126,
		36.713097, 36.105877, 39.694885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962238, 36.133457, 39.325043>,  <37.289219, 35.789555, 39.453999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962238, 36.133457, 39.325043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.345470, 36.019173, 39.333576>,  <38.575409, 35.950603, 39.338696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.345470, 36.019173, 39.333576>,  <37.962238, 36.133457, 39.325043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345470, 36.019173, 39.333576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114430, -0.313341, 0.942721,
		-0.262661, -0.905642, -0.332899,
		0.958079, -0.285710, 0.021331,
		38.632893, 35.933460, 39.339973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041336, 35.523243, 39.699505>,  <37.962238, 36.133457, 39.325043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041336, 35.523243, 39.699505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416733, 35.660412, 39.715687>,  <38.641972, 35.742714, 39.725395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416733, 35.660412, 39.715687>,  <38.041336, 35.523243, 39.699505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416733, 35.660412, 39.715687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057537, -0.270826, 0.960907,
		0.340474, -0.899476, -0.273899,
		0.938492, 0.342923, 0.040456,
		38.698280, 35.763290, 39.727825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322647, 35.098267, 40.092541>,  <38.041336, 35.523243, 39.699505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322647, 35.098267, 40.092541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601742, 35.384068, 40.113125>,  <38.769199, 35.555550, 40.125477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601742, 35.384068, 40.113125>,  <38.322647, 35.098267, 40.092541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601742, 35.384068, 40.113125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145974, -0.212142, 0.966275,
		0.701322, -0.666695, -0.252319,
		0.697738, 0.714502, 0.051460,
		38.811062, 35.598419, 40.128563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823792, 34.919594, 40.501690>,  <38.322647, 35.098267, 40.092541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823792, 34.919594, 40.501690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920910, 35.307621, 40.499859>,  <38.979183, 35.540436, 40.498760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920910, 35.307621, 40.499859>,  <38.823792, 34.919594, 40.501690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920910, 35.307621, 40.499859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334559, -0.079310, 0.939032,
		0.910560, -0.229526, -0.343801,
		0.242799, 0.970066, -0.004573,
		38.993752, 35.598640, 40.498486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637108, 35.103127, 40.624741>,  <38.823792, 34.919594, 40.501690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637108, 35.103127, 40.624741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440601, 35.429546, 40.746540>,  <39.322697, 35.625401, 40.819622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440601, 35.429546, 40.746540>,  <39.637108, 35.103127, 40.624741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440601, 35.429546, 40.746540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430385, -0.076508, 0.899397,
		0.757251, 0.572893, -0.313631,
		-0.491263, 0.816051, 0.304501,
		39.293221, 35.674362, 40.837891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122696, 35.478756, 40.963737>,  <39.637108, 35.103127, 40.624741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122696, 35.478756, 40.963737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784756, 35.650166, 41.091858>,  <39.581989, 35.753010, 41.168728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784756, 35.650166, 41.091858>,  <40.122696, 35.478756, 40.963737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784756, 35.650166, 41.091858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324806, -0.064887, 0.943552,
		0.425114, 0.901200, -0.084365,
		-0.844855, 0.428520, 0.320299,
		39.531300, 35.778721, 41.187946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309486, 36.073483, 41.409126>,  <40.122696, 35.478756, 40.963737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309486, 36.073483, 41.409126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.932083, 35.982361, 41.505379>,  <39.705643, 35.927689, 41.563129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.932083, 35.982361, 41.505379>,  <40.309486, 36.073483, 41.409126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932083, 35.982361, 41.505379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252437, -0.023736, 0.967322,
		-0.214647, 0.973418, 0.079901,
		-0.943505, -0.227803, 0.240632,
		39.649033, 35.914021, 41.577568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199661, 36.494400, 41.975037>,  <40.309486, 36.073483, 41.409126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199661, 36.494400, 41.975037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928970, 36.202347, 42.012882>,  <39.766556, 36.027115, 42.035591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928970, 36.202347, 42.012882>,  <40.199661, 36.494400, 41.975037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928970, 36.202347, 42.012882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075817, 0.058722, 0.995391,
		-0.732322, 0.680780, 0.015617,
		-0.676725, -0.730130, 0.094618,
		39.725952, 35.983307, 42.041267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699394, 36.597107, 42.552677>,  <40.199661, 36.494400, 41.975037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699394, 36.597107, 42.552677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.639919, 36.206532, 42.490128>,  <39.604237, 35.972187, 42.452599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.639919, 36.206532, 42.490128>,  <39.699394, 36.597107, 42.552677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639919, 36.206532, 42.490128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047264, -0.150935, 0.987413,
		-0.987754, 0.154204, -0.023709,
		-0.148685, -0.976442, -0.156375,
		39.595314, 35.913597, 42.443214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218834, 36.415577, 42.972923>,  <39.699394, 36.597107, 42.552677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218834, 36.415577, 42.972923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405949, 36.070927, 42.894154>,  <39.518219, 35.864136, 42.846893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405949, 36.070927, 42.894154>,  <39.218834, 36.415577, 42.972923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405949, 36.070927, 42.894154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091857, -0.268993, 0.958752,
		-0.879054, -0.430405, -0.204978,
		0.467789, -0.861624, -0.196923,
		39.546284, 35.812439, 42.835075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887924, 35.776878, 43.355003>,  <39.218834, 36.415577, 42.972923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887924, 35.776878, 43.355003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244862, 35.623856, 43.259193>,  <39.459023, 35.532040, 43.201710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244862, 35.623856, 43.259193>,  <38.887924, 35.776878, 43.355003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244862, 35.623856, 43.259193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047073, -0.448895, 0.892344,
		-0.448895, -0.807552, -0.382561,
		-0.892344, 0.382561, 0.239521,
		39.512566, 35.509087, 43.187336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814056, 35.046658, 43.340988>,  <38.887924, 35.776878, 43.355003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814056, 35.046658, 43.340988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204025, 35.123856, 43.385330>,  <39.438007, 35.170174, 43.411934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204025, 35.123856, 43.385330>,  <38.814056, 35.046658, 43.340988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204025, 35.123856, 43.385330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037572, -0.633625, 0.772727,
		0.219371, -0.749181, -0.624984,
		0.974918, 0.192996, 0.110851,
		39.496502, 35.181755, 43.418587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133465, 34.408531, 43.642056>,  <38.814056, 35.046658, 43.340988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133465, 34.408531, 43.642056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399372, 34.696735, 43.720997>,  <39.558918, 34.869656, 43.768364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399372, 34.696735, 43.720997>,  <39.133465, 34.408531, 43.642056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399372, 34.696735, 43.720997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245191, -0.459983, 0.853403,
		0.705664, -0.518927, -0.482445,
		0.664770, 0.720507, 0.197357,
		39.598804, 34.912888, 43.780205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742077, 34.086147, 43.765629>,  <39.133465, 34.408531, 43.642056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742077, 34.086147, 43.765629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.742161, 34.437019, 43.957691>,  <39.742210, 34.647541, 44.072929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.742161, 34.437019, 43.957691>,  <39.742077, 34.086147, 43.765629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742161, 34.437019, 43.957691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202586, -0.470242, 0.858971,
		0.979264, 0.097092, -0.177804,
		0.000212, 0.877181, 0.480161,
		39.742226, 34.700172, 44.101738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286293, 33.962383, 44.175949>,  <39.742077, 34.086147, 43.765629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286293, 33.962383, 44.175949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.084896, 34.269344, 44.334743>,  <39.964058, 34.453522, 44.430019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.084896, 34.269344, 44.334743>,  <40.286293, 33.962383, 44.175949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084896, 34.269344, 44.334743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198572, -0.344395, 0.917585,
		0.840874, 0.540823, 0.021015,
		-0.503488, 0.767400, 0.396985,
		39.933849, 34.499565, 44.453838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705025, 34.276924, 44.720261>,  <40.286293, 33.962383, 44.175949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705025, 34.276924, 44.720261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.340961, 34.414597, 44.812473>,  <40.122524, 34.497200, 44.867802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.340961, 34.414597, 44.812473>,  <40.705025, 34.276924, 44.720261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340961, 34.414597, 44.812473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120234, -0.313065, 0.942090,
		0.396424, 0.885171, 0.243557,
		-0.910160, 0.344183, 0.230535,
		40.067913, 34.517853, 44.881634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802372, 34.677834, 45.255554>,  <40.705025, 34.276924, 44.720261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802372, 34.677834, 45.255554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.424679, 34.546761, 45.268482>,  <40.198063, 34.468117, 45.276241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.424679, 34.546761, 45.268482>,  <40.802372, 34.677834, 45.255554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424679, 34.546761, 45.268482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163654, -0.381858, 0.909616,
		-0.285719, 0.864182, 0.414190,
		-0.944236, -0.327679, 0.032323,
		40.141407, 34.448456, 45.278179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556721, 34.888496, 45.943787>,  <40.802372, 34.677834, 45.255554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556721, 34.888496, 45.943787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.318874, 34.589649, 45.824959>,  <40.176167, 34.410343, 45.753662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.318874, 34.589649, 45.824959>,  <40.556721, 34.888496, 45.943787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318874, 34.589649, 45.824959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025373, -0.351870, 0.935705,
		-0.803610, 0.563921, 0.190271,
		-0.594615, -0.747115, -0.297074,
		40.140491, 34.365517, 45.735836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.087193, 34.815441, 46.568737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022228, 34.477089, 46.365517>,  <39.983250, 34.274078, 46.243584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022228, 34.477089, 46.365517>,  <40.087193, 34.815441, 46.568737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022228, 34.477089, 46.365517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218873, -0.471172, 0.854453,
		-0.962142, 0.249973, -0.108616,
		-0.162413, -0.845878, -0.508047,
		39.973503, 34.223324, 46.213104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439766, 34.527084, 46.658058>,  <40.087193, 34.815441, 46.568737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439766, 34.527084, 46.658058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655239, 34.211266, 46.540462>,  <39.784523, 34.021774, 46.469906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655239, 34.211266, 46.540462>,  <39.439766, 34.527084, 46.658058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655239, 34.211266, 46.540462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116503, -0.415403, 0.902146,
		-0.834414, -0.451721, -0.315756,
		0.538684, -0.789549, -0.293991,
		39.816845, 33.974400, 46.452267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011768, 33.985657, 46.754597>,  <39.439766, 34.527084, 46.658058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011768, 33.985657, 46.754597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.384411, 33.840363, 46.749283>,  <39.607994, 33.753185, 46.746094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.384411, 33.840363, 46.749283>,  <39.011768, 33.985657, 46.754597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384411, 33.840363, 46.749283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215986, -0.582605, 0.783531,
		-0.292341, -0.727073, -0.621210,
		0.931604, -0.363232, -0.013282,
		39.663891, 33.731392, 46.745296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936958, 33.336628, 47.039948>,  <39.011768, 33.985657, 46.754597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936958, 33.336628, 47.039948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.330112, 33.404129, 47.069492>,  <39.566006, 33.444630, 47.087219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.330112, 33.404129, 47.069492>,  <38.936958, 33.336628, 47.039948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330112, 33.404129, 47.069492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037357, -0.575231, 0.817138,
		0.180386, -0.800394, -0.571691,
		0.982886, 0.168757, 0.073863,
		39.624977, 33.454758, 47.091652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152588, 32.798855, 47.236172>,  <38.936958, 33.336628, 47.039948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152588, 32.798855, 47.236172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447353, 33.045139, 47.347786>,  <39.624214, 33.192909, 47.414757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447353, 33.045139, 47.347786>,  <39.152588, 32.798855, 47.236172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447353, 33.045139, 47.347786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060494, -0.471196, 0.879952,
		0.673276, -0.631567, -0.384477,
		0.736912, 0.615709, 0.279039,
		39.668427, 33.229851, 47.431499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781105, 32.337452, 47.575886>,  <39.152588, 32.798855, 47.236172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781105, 32.337452, 47.575886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.850029, 32.706684, 47.713428>,  <39.891384, 32.928223, 47.795952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.850029, 32.706684, 47.713428>,  <39.781105, 32.337452, 47.575886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850029, 32.706684, 47.713428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160082, -0.370676, 0.914863,
		0.971949, -0.102594, -0.211639,
		0.172308, 0.923079, 0.343854,
		39.901722, 32.983608, 47.816586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370705, 32.250851, 48.009365>,  <39.781105, 32.337452, 47.575886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370705, 32.250851, 48.009365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290371, 32.622578, 48.133327>,  <40.242172, 32.845612, 48.207706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290371, 32.622578, 48.133327>,  <40.370705, 32.250851, 48.009365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290371, 32.622578, 48.133327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213951, -0.267109, 0.939616,
		0.955977, 0.255010, -0.145183,
		-0.200832, 0.929313, 0.309909,
		40.230122, 32.901371, 48.226299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998241, 32.536976, 48.376835>,  <40.370705, 32.250851, 48.009365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998241, 32.536976, 48.376835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.662411, 32.711906, 48.505741>,  <40.460911, 32.816864, 48.583084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.662411, 32.711906, 48.505741>,  <40.998241, 32.536976, 48.376835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662411, 32.711906, 48.505741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294818, -0.131460, 0.946467,
		0.456283, 0.889641, -0.018562,
		-0.839576, 0.437329, 0.322265,
		40.410538, 32.843105, 48.602421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171753, 33.119175, 48.890720>,  <40.998241, 32.536976, 48.376835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171753, 33.119175, 48.890720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800186, 32.981232, 48.944668>,  <40.577248, 32.898464, 48.977036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800186, 32.981232, 48.944668>,  <41.171753, 33.119175, 48.890720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800186, 32.981232, 48.944668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193263, -0.140832, 0.970987,
		-0.315859, 0.928030, 0.197470,
		-0.928915, -0.344858, 0.134870,
		40.521511, 32.877773, 48.985130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959583, 33.472332, 49.428219>,  <41.171753, 33.119175, 48.890720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959583, 33.472332, 49.428219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.718334, 33.153381, 49.419914>,  <40.573586, 32.962009, 49.414932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.718334, 33.153381, 49.419914>,  <40.959583, 33.472332, 49.428219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718334, 33.153381, 49.419914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139257, -0.130890, 0.981568,
		-0.785396, 0.589118, 0.189984,
		-0.603126, -0.797376, -0.020762,
		40.537395, 32.914169, 49.413685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468338, 33.613373, 49.940845>,  <40.959583, 33.472332, 49.428219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468338, 33.613373, 49.940845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421997, 33.216450, 49.923351>,  <40.394192, 32.978298, 49.912853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421997, 33.216450, 49.923351>,  <40.468338, 33.613373, 49.940845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421997, 33.216450, 49.923351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140054, -0.027276, 0.989768,
		-0.983343, 0.120791, -0.135816,
		-0.115851, -0.992303, -0.043739,
		40.387241, 32.918758, 49.910229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008263, 33.421177, 50.539505>,  <40.468338, 33.613373, 49.940845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008263, 33.421177, 50.539505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198948, 33.090462, 50.420059>,  <40.313358, 32.892033, 50.348392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198948, 33.090462, 50.420059>,  <40.008263, 33.421177, 50.539505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198948, 33.090462, 50.420059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215203, -0.219602, 0.951558,
		-0.852311, -0.517883, 0.073240,
		0.476712, -0.826784, -0.298619,
		40.341961, 32.842426, 50.330475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740643, 33.043446, 50.962761>,  <40.008263, 33.421177, 50.539505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740643, 33.043446, 50.962761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055054, 32.841316, 50.820324>,  <40.243702, 32.720039, 50.734863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055054, 32.841316, 50.820324>,  <39.740643, 33.043446, 50.962761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055054, 32.841316, 50.820324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191535, -0.348606, 0.917490,
		-0.587767, -0.789380, -0.177227,
		0.786030, -0.505325, -0.356093,
		40.290863, 32.689720, 50.713497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658066, 32.273354, 51.242523>,  <39.740643, 33.043446, 50.962761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658066, 32.273354, 51.242523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.036743, 32.365997, 51.152973>,  <40.263950, 32.421585, 51.099243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.036743, 32.365997, 51.152973>,  <39.658066, 32.273354, 51.242523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036743, 32.365997, 51.152973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286497, -0.287684, 0.913869,
		0.147254, -0.929298, -0.338705,
		0.946697, 0.231609, -0.223878,
		40.320751, 32.435478, 51.085808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026451, 31.736113, 51.516857>,  <39.658066, 32.273354, 51.242523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026451, 31.736113, 51.516857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301659, 32.026199, 51.506401>,  <40.466785, 32.200253, 51.500126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301659, 32.026199, 51.506401>,  <40.026451, 31.736113, 51.516857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301659, 32.026199, 51.506401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374366, -0.323842, 0.868894,
		0.621671, -0.607606, -0.494307,
		0.688023, 0.725218, -0.026144,
		40.508064, 32.243763, 51.498558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811775, 31.421047, 51.576683>,  <40.026451, 31.736113, 51.516857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811775, 31.421047, 51.576683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.776329, 31.805674, 51.680634>,  <40.755062, 32.036449, 51.743004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.776329, 31.805674, 51.680634>,  <40.811775, 31.421047, 51.576683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776329, 31.805674, 51.680634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346064, -0.214929, 0.913261,
		0.934017, 0.170858, -0.313719,
		-0.088611, 0.961568, 0.259875,
		40.749744, 32.094143, 51.758595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508793, 31.740299, 51.665257>,  <40.811775, 31.421047, 51.576683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508793, 31.740299, 51.665257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239258, 31.936394, 51.886387>,  <41.077538, 32.054050, 52.019066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239258, 31.936394, 51.886387>,  <41.508793, 31.740299, 51.665257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239258, 31.936394, 51.886387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578624, -0.115183, 0.807420,
		0.459501, 0.863946, -0.206047,
		-0.673834, 0.490234, 0.552827,
		41.037109, 32.083466, 52.052235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935684, 32.067215, 52.100113>,  <41.508793, 31.740299, 51.665257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935684, 32.067215, 52.100113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.588531, 32.105751, 52.295052>,  <41.380241, 32.128872, 52.412014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.588531, 32.105751, 52.295052>,  <41.935684, 32.067215, 52.100113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588531, 32.105751, 52.295052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471156, -0.151334, 0.868971,
		0.157469, 0.983777, 0.085948,
		-0.867880, 0.096341, 0.487343,
		41.328167, 32.134655, 52.441254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964203, 32.601696, 52.597492>,  <41.935684, 32.067215, 52.100113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964203, 32.601696, 52.597492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.664959, 32.361191, 52.709782>,  <41.485413, 32.216888, 52.777157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.664959, 32.361191, 52.709782>,  <41.964203, 32.601696, 52.597492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664959, 32.361191, 52.709782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378565, -0.039271, 0.924741,
		-0.544991, 0.798084, 0.256997,
		-0.748113, -0.601265, 0.280725,
		41.440525, 32.180813, 52.793999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986588, 32.764290, 53.252907>,  <41.964203, 32.601696, 52.597492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986588, 32.764290, 53.252907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750973, 32.441055, 53.255486>,  <41.609604, 32.247116, 53.257034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750973, 32.441055, 53.255486>,  <41.986588, 32.764290, 53.252907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750973, 32.441055, 53.255486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406459, -0.289365, 0.866637,
		-0.698447, 0.513100, 0.498898,
		-0.589035, -0.808082, 0.006448,
		41.574261, 32.198631, 53.257420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548752, 32.826771, 53.878948>,  <41.986588, 32.764290, 53.252907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548752, 32.826771, 53.878948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.581493, 32.448833, 53.752094>,  <41.601139, 32.222073, 53.675983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.581493, 32.448833, 53.752094>,  <41.548752, 32.826771, 53.878948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581493, 32.448833, 53.752094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410625, -0.257969, 0.874551,
		-0.908123, -0.201809, 0.366860,
		0.081854, -0.944842, -0.317135,
		41.606049, 32.165382, 53.656952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358471, 32.386063, 54.389824>,  <41.548752, 32.826771, 53.878948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358471, 32.386063, 54.389824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.607559, 32.175632, 54.158150>,  <41.757011, 32.049374, 54.019146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.607559, 32.175632, 54.158150>,  <41.358471, 32.386063, 54.389824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607559, 32.175632, 54.158150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427868, -0.390795, 0.814990,
		-0.655091, -0.755329, -0.018266,
		0.622724, -0.526077, -0.579187,
		41.794376, 32.017811, 53.984394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883038, 33.028492, 54.359592>,  <41.358471, 32.386063, 54.389824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883038, 33.028492, 54.359592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034775, 32.803020, 54.653088>,  <41.125816, 32.667736, 54.829185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034775, 32.803020, 54.653088>,  <40.883038, 33.028492, 54.359592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034775, 32.803020, 54.653088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890327, 0.438208, -0.123660,
		-0.251824, 0.700172, 0.668089,
		0.379345, -0.563677, 0.733734,
		41.148579, 32.633919, 54.873207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127190, 33.252369, 54.536079>,  <40.883038, 33.028492, 54.359592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127190, 33.252369, 54.536079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954021, 32.924702, 54.686565>,  <39.850121, 32.728100, 54.776859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954021, 32.924702, 54.686565>,  <40.127190, 33.252369, 54.536079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954021, 32.924702, 54.686565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709142, 0.051830, -0.703158,
		0.556508, -0.571202, -0.603347,
		-0.432917, -0.819172, 0.376220,
		39.824146, 32.678951, 54.799431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973640, 32.743465, 53.886677>,  <40.127190, 33.252369, 54.536079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973640, 32.743465, 53.886677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.725147, 32.685913, 54.194798>,  <39.576050, 32.651382, 54.379669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.725147, 32.685913, 54.194798>,  <39.973640, 32.743465, 53.886677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725147, 32.685913, 54.194798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783268, 0.143700, -0.604848,
		-0.023666, -0.979106, -0.201969,
		-0.621233, -0.143881, 0.770304,
		39.538776, 32.642750, 54.425888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469868, 32.293018, 53.603481>,  <39.973640, 32.743465, 53.886677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469868, 32.293018, 53.603481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285332, 32.464111, 53.914406>,  <39.174610, 32.566765, 54.100960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285332, 32.464111, 53.914406>,  <39.469868, 32.293018, 53.603481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285332, 32.464111, 53.914406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764949, 0.252084, -0.592712,
		-0.449470, -0.868044, 0.210897,
		-0.461336, 0.427731, 0.777313,
		39.146931, 32.592430, 54.147598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894505, 31.943556, 53.664577>,  <39.469868, 32.293018, 53.603481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894505, 31.943556, 53.664577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850609, 32.315285, 53.805611>,  <38.824272, 32.538322, 53.890232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850609, 32.315285, 53.805611>,  <38.894505, 31.943556, 53.664577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850609, 32.315285, 53.805611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728601, 0.166073, -0.664500,
		-0.676089, -0.329818, 0.658880,
		-0.109742, 0.929322, 0.352586,
		38.817688, 32.594082, 53.911388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140827, 31.951637, 53.868610>,  <38.894505, 31.943556, 53.664577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140827, 31.951637, 53.868610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313637, 32.304012, 53.791351>,  <38.417324, 32.515438, 53.744995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313637, 32.304012, 53.791351>,  <38.140827, 31.951637, 53.868610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313637, 32.304012, 53.791351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647172, 0.153667, -0.746696,
		-0.628111, 0.447592, 0.636505,
		0.432025, 0.880936, -0.193149,
		38.443245, 32.568295, 53.733406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551140, 32.342308, 53.696129>,  <38.140827, 31.951637, 53.868610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551140, 32.342308, 53.696129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848869, 32.573498, 53.562302>,  <38.027508, 32.712212, 53.482006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848869, 32.573498, 53.562302>,  <37.551140, 32.342308, 53.696129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848869, 32.573498, 53.562302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452750, 0.068440, -0.889007,
		-0.490922, 0.813182, 0.312617,
		0.744320, 0.577971, -0.334570,
		38.072166, 32.746887, 53.461929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296352, 32.696278, 53.204212>,  <37.551140, 32.342308, 53.696129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296352, 32.696278, 53.204212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670437, 32.818344, 53.132370>,  <37.894886, 32.891582, 53.089264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670437, 32.818344, 53.132370>,  <37.296352, 32.696278, 53.204212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670437, 32.818344, 53.132370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216445, 0.091235, -0.972023,
		-0.280239, 0.947919, 0.151375,
		0.935210, 0.305163, -0.179605,
		37.951000, 32.909893, 53.078487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279491, 33.375607, 53.074879>,  <37.296352, 32.696278, 53.204212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279491, 33.375607, 53.074879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601830, 33.217171, 52.898823>,  <37.795235, 33.122108, 52.793190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601830, 33.217171, 52.898823>,  <37.279491, 33.375607, 53.074879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601830, 33.217171, 52.898823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254709, 0.439158, -0.861547,
		0.534538, 0.806385, 0.253009,
		0.805849, -0.396086, -0.440140,
		37.843586, 33.098347, 52.766781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331623, 33.806740, 52.520092>,  <37.279491, 33.375607, 53.074879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331623, 33.806740, 52.520092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594727, 33.518101, 52.433689>,  <37.752586, 33.344917, 52.381847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594727, 33.518101, 52.433689>,  <37.331623, 33.806740, 52.520092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594727, 33.518101, 52.433689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049773, 0.244509, -0.968369,
		0.751585, 0.647702, 0.124911,
		0.657756, -0.721594, -0.216007,
		37.792053, 33.301624, 52.368889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925518, 34.069996, 52.221817>,  <37.331623, 33.806740, 52.520092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925518, 34.069996, 52.221817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898159, 33.689068, 52.102886>,  <37.881744, 33.460510, 52.031528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898159, 33.689068, 52.102886>,  <37.925518, 34.069996, 52.221817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898159, 33.689068, 52.102886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068593, 0.301812, -0.950897,
		0.995297, -0.044644, -0.085966,
		-0.068397, -0.952321, -0.297331,
		37.877640, 33.403370, 52.013687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380325, 33.909393, 51.628059>,  <37.925518, 34.069996, 52.221817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380325, 33.909393, 51.628059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108044, 33.616379, 51.625835>,  <37.944675, 33.440571, 51.624500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108044, 33.616379, 51.625835>,  <38.380325, 33.909393, 51.628059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108044, 33.616379, 51.625835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019901, 0.026073, -0.999462,
		0.732287, -0.680228, -0.032326,
		-0.680705, -0.732536, -0.005556,
		37.903831, 33.396618, 51.624168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706730, 33.249546, 51.242111>,  <38.380325, 33.909393, 51.628059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706730, 33.249546, 51.242111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306858, 33.245140, 51.232929>,  <38.066936, 33.242496, 51.227421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306858, 33.245140, 51.232929>,  <38.706730, 33.249546, 51.242111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306858, 33.245140, 51.232929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022709, 0.021700, -0.999507,
		0.011498, -0.999704, -0.021443,
		-0.999676, -0.011006, -0.022952,
		38.006954, 33.241833, 51.226044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504623, 32.666325, 50.778305>,  <38.706730, 33.249546, 51.242111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504623, 32.666325, 50.778305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156582, 32.862656, 50.796223>,  <37.947758, 32.980453, 50.806973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156582, 32.862656, 50.796223>,  <38.504623, 32.666325, 50.778305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156582, 32.862656, 50.796223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026328, 0.044474, -0.998664,
		-0.492162, -0.870122, -0.025774,
		-0.870105, 0.490826, 0.044797,
		37.895550, 33.009903, 50.809662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015770, 32.247501, 50.218994>,  <38.504623, 32.666325, 50.778305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015770, 32.247501, 50.218994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865917, 32.609039, 50.301659>,  <37.776005, 32.825962, 50.351257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865917, 32.609039, 50.301659>,  <38.015770, 32.247501, 50.218994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865917, 32.609039, 50.301659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071422, 0.194103, -0.978378,
		-0.924419, -0.381291, -0.008162,
		-0.374631, 0.903848, 0.206665,
		37.753529, 32.880196, 50.363659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360428, 32.337070, 49.773212>,  <38.015770, 32.247501, 50.218994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360428, 32.337070, 49.773212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476616, 32.702084, 49.888397>,  <37.546329, 32.921089, 49.957508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476616, 32.702084, 49.888397>,  <37.360428, 32.337070, 49.773212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476616, 32.702084, 49.888397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068837, 0.320080, -0.944886,
		-0.954405, 0.254639, 0.155789,
		0.290469, 0.912528, 0.287958,
		37.563755, 32.975842, 49.974785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856274, 32.852192, 49.398972>,  <37.360428, 32.337070, 49.773212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856274, 32.852192, 49.398972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206970, 33.005646, 49.515011>,  <37.417389, 33.097717, 49.584633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206970, 33.005646, 49.515011>,  <36.856274, 32.852192, 49.398972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206970, 33.005646, 49.515011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081543, 0.475861, -0.875732,
		-0.474008, 0.791442, 0.385922,
		0.876737, 0.383635, 0.290098,
		37.469990, 33.120735, 49.602039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829762, 33.575500, 49.479095>,  <36.856274, 32.852192, 49.398972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829762, 33.575500, 49.479095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207535, 33.486263, 49.382526>,  <37.434196, 33.432720, 49.324585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207535, 33.486263, 49.382526>,  <36.829762, 33.575500, 49.479095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207535, 33.486263, 49.382526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008537, 0.717542, -0.696463,
		0.328604, 0.659821, 0.675763,
		0.944429, -0.223091, -0.241420,
		37.490864, 33.419334, 49.310101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973736, 34.208660, 49.248398>,  <36.829762, 33.575500, 49.479095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973736, 34.208660, 49.248398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287182, 33.967583, 49.188122>,  <37.475250, 33.822937, 49.151958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287182, 33.967583, 49.188122>,  <36.973736, 34.208660, 49.248398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287182, 33.967583, 49.188122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271216, 0.550108, -0.789824,
		0.558915, 0.578051, 0.594534,
		0.783617, -0.602692, -0.150687,
		37.522266, 33.786774, 49.142914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514126, 34.610298, 49.309101>,  <36.973736, 34.208660, 49.248398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514126, 34.610298, 49.309101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548714, 34.296383, 49.063622>,  <37.569466, 34.108032, 48.916332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548714, 34.296383, 49.063622>,  <37.514126, 34.610298, 49.309101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548714, 34.296383, 49.063622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017166, 0.617090, -0.786705,
		0.996107, 0.057488, 0.066829,
		0.086466, -0.784790, -0.613701,
		37.574654, 34.060947, 48.879513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749191, 34.931553, 48.590073>,  <37.514126, 34.610298, 49.309101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749191, 34.931553, 48.590073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683968, 34.551022, 48.485462>,  <37.644833, 34.322704, 48.422695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683968, 34.551022, 48.485462>,  <37.749191, 34.931553, 48.590073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683968, 34.551022, 48.485462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206774, 0.292133, -0.933757,
		0.964706, -0.098178, -0.244343,
		-0.163055, -0.951325, -0.261522,
		37.635052, 34.265625, 48.407005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973186, 34.875614, 47.859062>,  <37.749191, 34.931553, 48.590073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973186, 34.875614, 47.859062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700352, 34.587421, 47.909122>,  <37.536652, 34.414505, 47.939159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700352, 34.587421, 47.909122>,  <37.973186, 34.875614, 47.859062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700352, 34.587421, 47.909122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465142, 0.295393, -0.834497,
		0.564274, -0.627411, -0.536610,
		-0.682084, -0.720485, 0.125153,
		37.495728, 34.371277, 47.946667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.478931, 34.779785, 28.451597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186718, 35.046795, 28.509190>,  <41.011391, 35.207001, 28.543745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186718, 35.046795, 28.509190>,  <41.478931, 34.779785, 28.451597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186718, 35.046795, 28.509190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107150, -0.096180, 0.989580,
		0.674417, 0.738349, -0.001263,
		-0.730534, 0.667525, 0.143979,
		40.967556, 35.247051, 28.552383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764965, 35.271420, 28.970736>,  <41.478931, 34.779785, 28.451597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764965, 35.271420, 28.970736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.365517, 35.267174, 28.950203>,  <41.125847, 35.264626, 28.937883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.365517, 35.267174, 28.950203>,  <41.764965, 35.271420, 28.970736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365517, 35.267174, 28.950203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052407, 0.183825, 0.981561,
		-0.000985, 0.982902, -0.184128,
		-0.998625, -0.010616, -0.051329,
		41.065929, 35.263988, 28.934805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513123, 35.958923, 29.262060>,  <41.764965, 35.271420, 28.970736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513123, 35.958923, 29.262060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208393, 35.702602, 29.299994>,  <41.025555, 35.548809, 29.322754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208393, 35.702602, 29.299994>,  <41.513123, 35.958923, 29.262060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208393, 35.702602, 29.299994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064641, 0.070462, 0.995418,
		-0.644547, 0.764466, -0.012258,
		-0.761827, -0.640801, 0.094832,
		40.979843, 35.510361, 29.328444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084740, 36.276348, 29.685471>,  <41.513123, 35.958923, 29.262060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084740, 36.276348, 29.685471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965405, 35.897243, 29.730606>,  <40.893803, 35.669781, 29.757687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965405, 35.897243, 29.730606>,  <41.084740, 36.276348, 29.685471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965405, 35.897243, 29.730606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073047, 0.095202, 0.992774,
		-0.951660, 0.304429, 0.040828,
		-0.298343, -0.947765, 0.112838,
		40.875900, 35.612915, 29.764458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698784, 36.243015, 30.333824>,  <41.084740, 36.276348, 29.685471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698784, 36.243015, 30.333824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797245, 35.858089, 30.287584>,  <40.856323, 35.627132, 30.259840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797245, 35.858089, 30.287584>,  <40.698784, 36.243015, 30.333824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797245, 35.858089, 30.287584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208134, -0.064003, 0.976004,
		-0.946620, -0.264305, 0.184536,
		0.246151, -0.962313, -0.115598,
		40.871090, 35.569397, 30.252905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238651, 35.840046, 30.766563>,  <40.698784, 36.243015, 30.333824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238651, 35.840046, 30.766563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562775, 35.611805, 30.713171>,  <40.757248, 35.474861, 30.681135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562775, 35.611805, 30.713171>,  <40.238651, 35.840046, 30.766563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562775, 35.611805, 30.713171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020365, -0.255058, 0.966711,
		-0.585655, -0.780612, -0.218295,
		0.810305, -0.570604, -0.133479,
		40.805866, 35.440624, 30.673128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105457, 35.188469, 31.196037>,  <40.238651, 35.840046, 30.766563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105457, 35.188469, 31.196037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.490742, 35.130394, 31.105579>,  <40.721912, 35.095551, 31.051304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.490742, 35.130394, 31.105579>,  <40.105457, 35.188469, 31.196037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490742, 35.130394, 31.105579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232799, 0.030382, 0.972050,
		-0.134257, -0.988938, 0.063063,
		0.963213, -0.145185, -0.226145,
		40.779705, 35.086838, 31.037735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342430, 34.506474, 31.500862>,  <40.105457, 35.188469, 31.196037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342430, 34.506474, 31.500862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669209, 34.733017, 31.457340>,  <40.865276, 34.868942, 31.431227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669209, 34.733017, 31.457340>,  <40.342430, 34.506474, 31.500862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669209, 34.733017, 31.457340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280267, -0.224997, 0.933181,
		0.504030, -0.792855, -0.342541,
		0.816948, 0.566354, -0.108806,
		40.914291, 34.902924, 31.424698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882931, 34.035213, 31.641607>,  <40.342430, 34.506474, 31.500862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882931, 34.035213, 31.641607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.020008, 34.404938, 31.708792>,  <41.102257, 34.626774, 31.749102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.020008, 34.404938, 31.708792>,  <40.882931, 34.035213, 31.641607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020008, 34.404938, 31.708792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490073, -0.328423, 0.807445,
		0.801492, -0.194394, -0.565528,
		0.342695, 0.924310, 0.167961,
		41.122818, 34.682232, 31.759180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465034, 33.894691, 31.986126>,  <40.882931, 34.035213, 31.641607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465034, 33.894691, 31.986126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435020, 34.287491, 32.055454>,  <41.417011, 34.523170, 32.097050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.435020, 34.287491, 32.055454>,  <41.465034, 33.894691, 31.986126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435020, 34.287491, 32.055454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345269, -0.137476, 0.928380,
		0.935499, 0.129503, -0.328740,
		-0.075034, 0.982003, 0.173322,
		41.412510, 34.582092, 32.107452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056297, 34.072906, 32.356682>,  <41.465034, 33.894691, 31.986126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056297, 34.072906, 32.356682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844784, 34.404800, 32.428154>,  <41.717876, 34.603939, 32.471035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844784, 34.404800, 32.428154>,  <42.056297, 34.072906, 32.356682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844784, 34.404800, 32.428154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318801, -0.000940, 0.947821,
		0.786612, 0.558151, -0.264024,
		-0.528780, 0.829739, 0.178679,
		41.686150, 34.653721, 32.481758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536858, 34.584843, 32.586853>,  <42.056297, 34.072906, 32.356682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536858, 34.584843, 32.586853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.179321, 34.655106, 32.751869>,  <41.964798, 34.697262, 32.850880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.179321, 34.655106, 32.751869>,  <42.536858, 34.584843, 32.586853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179321, 34.655106, 32.751869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433855, 0.106520, 0.894664,
		0.113207, 0.978672, -0.171420,
		-0.893843, 0.175654, 0.412543,
		41.911167, 34.707802, 32.875633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727093, 35.109333, 32.934944>,  <42.536858, 34.584843, 32.586853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727093, 35.109333, 32.934944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380310, 34.985851, 33.091450>,  <42.172241, 34.911762, 33.185352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380310, 34.985851, 33.091450>,  <42.727093, 35.109333, 32.934944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380310, 34.985851, 33.091450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383607, 0.087870, 0.919307,
		-0.318177, 0.947090, 0.042243,
		-0.866954, -0.308707, 0.391268,
		42.120224, 34.893238, 33.208832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431816, 35.648991, 33.518486>,  <42.727093, 35.109333, 32.934944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431816, 35.648991, 33.518486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279003, 35.288940, 33.602222>,  <42.187313, 35.072910, 33.652462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279003, 35.288940, 33.602222>,  <42.431816, 35.648991, 33.518486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279003, 35.288940, 33.602222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350762, 0.068337, 0.933968,
		-0.854995, 0.430236, 0.289623,
		-0.382034, -0.900126, 0.209338,
		42.164394, 35.018902, 33.665024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853100, 35.666523, 34.003132>,  <42.431816, 35.648991, 33.518486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853100, 35.666523, 34.003132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036270, 35.312157, 34.032665>,  <42.146172, 35.099537, 34.050385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036270, 35.312157, 34.032665>,  <41.853100, 35.666523, 34.003132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036270, 35.312157, 34.032665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206910, 0.186987, 0.960325,
		-0.864574, -0.424485, 0.268932,
		0.457930, -0.885917, 0.073834,
		42.173649, 35.046383, 34.054817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022625, 35.740135, 34.681042>,  <41.853100, 35.666523, 34.003132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022625, 35.740135, 34.681042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196503, 35.395962, 34.574696>,  <42.300831, 35.189457, 34.510887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196503, 35.395962, 34.574696>,  <42.022625, 35.740135, 34.681042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196503, 35.395962, 34.574696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394710, -0.083319, 0.915020,
		-0.809470, -0.502697, 0.303405,
		0.434698, -0.860438, -0.265863,
		42.326912, 35.137829, 34.494938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911526, 35.375393, 35.216667>,  <42.022625, 35.740135, 34.681042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911526, 35.375393, 35.216667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.230461, 35.236992, 35.018864>,  <42.421822, 35.153950, 34.900181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.230461, 35.236992, 35.018864>,  <41.911526, 35.375393, 35.216667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230461, 35.236992, 35.018864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487169, -0.114683, 0.865745,
		-0.356260, -0.931198, 0.077121,
		0.797336, -0.346001, -0.494508,
		42.469662, 35.133190, 34.870510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197262, 34.811619, 35.629097>,  <41.911526, 35.375393, 35.216667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197262, 34.811619, 35.629097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496685, 34.931885, 35.392704>,  <42.676338, 35.004044, 35.250866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496685, 34.931885, 35.392704>,  <42.197262, 34.811619, 35.629097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496685, 34.931885, 35.392704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614294, 0.021069, 0.788796,
		0.249616, -0.953497, -0.168925,
		0.748555, 0.300666, -0.590986,
		42.721252, 35.022083, 35.215408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778965, 34.556152, 35.946987>,  <42.197262, 34.811619, 35.629097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778965, 34.556152, 35.946987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928246, 34.855301, 35.727386>,  <43.017815, 35.034790, 35.595627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928246, 34.855301, 35.727386>,  <42.778965, 34.556152, 35.946987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928246, 34.855301, 35.727386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593413, 0.262448, 0.760909,
		0.713147, -0.609762, -0.345849,
		0.373206, 0.747872, -0.549004,
		43.040207, 35.079662, 35.562687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401634, 34.479500, 36.109127>,  <42.778965, 34.556152, 35.946987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401634, 34.479500, 36.109127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376865, 34.845974, 35.950752>,  <43.362003, 35.065861, 35.855728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376865, 34.845974, 35.950752>,  <43.401634, 34.479500, 36.109127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376865, 34.845974, 35.950752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668625, 0.332600, 0.665070,
		0.741018, -0.223548, -0.633182,
		-0.061921, 0.916190, -0.395932,
		43.358288, 35.120831, 35.831974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073551, 34.698769, 36.066078>,  <43.401634, 34.479500, 36.109127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073551, 34.698769, 36.066078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855598, 35.034138, 36.061203>,  <43.724827, 35.235359, 36.058277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855598, 35.034138, 36.061203>,  <44.073551, 34.698769, 36.066078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855598, 35.034138, 36.061203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570982, 0.381642, 0.726863,
		0.614069, 0.389098, -0.686675,
		-0.544885, 0.838423, -0.012186,
		43.692135, 35.285664, 36.057549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264599, 33.909489, 35.940201>,  <44.073551, 34.698769, 36.066078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264599, 33.909489, 35.940201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.657200, 33.918205, 35.864113>,  <44.892761, 33.923435, 35.818459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.657200, 33.918205, 35.864113>,  <44.264599, 33.909489, 35.940201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657200, 33.918205, 35.864113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185829, -0.130827, -0.973834,
		-0.046102, 0.991166, -0.124358,
		0.981500, 0.021787, -0.190218,
		44.951649, 33.924740, 35.807049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443104, 34.517700, 35.453964>,  <44.264599, 33.909489, 35.940201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443104, 34.517700, 35.453964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717781, 34.227718, 35.432453>,  <44.882587, 34.053730, 35.419544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717781, 34.227718, 35.432453>,  <44.443104, 34.517700, 35.453964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717781, 34.227718, 35.432453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173452, -0.091553, -0.980578,
		0.705951, 0.682685, -0.188614,
		0.686693, -0.724955, -0.053781,
		44.923790, 34.010231, 35.416321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852192, 34.696114, 34.800972>,  <44.443104, 34.517700, 35.453964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852192, 34.696114, 34.800972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965462, 34.320595, 34.879440>,  <45.033424, 34.095284, 34.926521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965462, 34.320595, 34.879440>,  <44.852192, 34.696114, 34.800972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965462, 34.320595, 34.879440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202516, -0.141396, -0.969017,
		0.937444, 0.314124, 0.150081,
		0.283171, -0.938794, 0.196166,
		45.050411, 34.038956, 34.938290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567162, 34.599781, 34.497967>,  <44.852192, 34.696114, 34.800972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567162, 34.599781, 34.497967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.383038, 34.248035, 34.546700>,  <45.272564, 34.036987, 34.575939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.383038, 34.248035, 34.546700>,  <45.567162, 34.599781, 34.497967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383038, 34.248035, 34.546700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143910, -0.209330, -0.967197,
		0.876017, -0.427677, 0.222905,
		-0.460309, -0.879359, 0.121830,
		45.244946, 33.984226, 34.583248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920258, 34.179211, 34.161034>,  <45.567162, 34.599781, 34.497967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920258, 34.179211, 34.161034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.556370, 34.015816, 34.190842>,  <45.338036, 33.917778, 34.208725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.556370, 34.015816, 34.190842>,  <45.920258, 34.179211, 34.161034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556370, 34.015816, 34.190842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060996, -0.046045, -0.997075,
		0.410721, -0.911603, 0.016972,
		-0.909718, -0.408485, 0.074516,
		45.283455, 33.893272, 34.213196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879551, 33.489685, 33.827358>,  <45.920258, 34.179211, 34.161034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879551, 33.489685, 33.827358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.517685, 33.656403, 33.791878>,  <45.300568, 33.756432, 33.770592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.517685, 33.656403, 33.791878>,  <45.879551, 33.489685, 33.827358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517685, 33.656403, 33.791878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024330, -0.157286, -0.987253,
		-0.425434, -0.895289, 0.132150,
		-0.904662, 0.416796, -0.088697,
		45.246284, 33.781441, 33.765270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662628, 33.031734, 33.313129>,  <45.879551, 33.489685, 33.827358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662628, 33.031734, 33.313129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361145, 33.292873, 33.343372>,  <45.180256, 33.449558, 33.361519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361145, 33.292873, 33.343372>,  <45.662628, 33.031734, 33.313129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361145, 33.292873, 33.343372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195527, -0.112907, -0.974177,
		-0.627452, -0.749027, 0.212748,
		-0.753706, 0.652848, 0.075611,
		45.135033, 33.488728, 33.366055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119293, 32.728951, 33.027084>,  <45.662628, 33.031734, 33.313129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119293, 32.728951, 33.027084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.026062, 33.116917, 32.998978>,  <44.970123, 33.349697, 32.982113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.026062, 33.116917, 32.998978>,  <45.119293, 32.728951, 33.027084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026062, 33.116917, 32.998978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425959, -0.166785, -0.889236,
		-0.874205, -0.177326, 0.452018,
		-0.233075, 0.969916, -0.070271,
		44.956139, 33.407890, 32.977898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361740, 32.787003, 32.739777>,  <45.119293, 32.728951, 33.027084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361740, 32.787003, 32.739777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532452, 33.143417, 32.677925>,  <44.634876, 33.357265, 32.640812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532452, 33.143417, 32.677925>,  <44.361740, 32.787003, 32.739777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532452, 33.143417, 32.677925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489831, 0.084019, -0.867760,
		-0.760215, 0.446084, 0.472316,
		0.426777, 0.891039, -0.154633,
		44.660484, 33.410728, 32.631535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927048, 33.018406, 32.304863>,  <44.361740, 32.787003, 32.739777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927048, 33.018406, 32.304863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227211, 33.281281, 32.276592>,  <44.407307, 33.439007, 32.259632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227211, 33.281281, 32.276592>,  <43.927048, 33.018406, 32.304863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227211, 33.281281, 32.276592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218899, 0.146201, -0.964733,
		-0.623678, 0.739412, 0.253568,
		0.750406, 0.657188, -0.070674,
		44.452332, 33.478436, 32.255390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632973, 33.685944, 32.001480>,  <43.927048, 33.018406, 32.304863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632973, 33.685944, 32.001480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.029861, 33.678444, 31.952259>,  <44.267994, 33.673943, 31.922726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.029861, 33.678444, 31.952259>,  <43.632973, 33.685944, 32.001480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029861, 33.678444, 31.952259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117767, 0.178744, -0.976822,
		0.040308, 0.983717, 0.175146,
		0.992223, -0.018748, -0.123054,
		44.327530, 33.672821, 31.915342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888115, 34.353870, 31.809532>,  <43.632973, 33.685944, 32.001480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888115, 34.353870, 31.809532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135559, 34.080650, 31.654215>,  <44.284023, 33.916718, 31.561026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135559, 34.080650, 31.654215>,  <43.888115, 34.353870, 31.809532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135559, 34.080650, 31.654215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076267, 0.439663, -0.894919,
		0.781991, 0.583217, 0.219884,
		0.618606, -0.683048, -0.388292,
		44.321140, 33.875736, 31.537727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262157, 34.757156, 31.318052>,  <43.888115, 34.353870, 31.809532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262157, 34.757156, 31.318052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.380947, 34.393509, 31.201227>,  <44.452221, 34.175320, 31.131132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.380947, 34.393509, 31.201227>,  <44.262157, 34.757156, 31.318052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380947, 34.393509, 31.201227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021468, 0.312143, -0.949793,
		0.954644, 0.275794, 0.112216,
		0.296975, -0.909123, -0.292065,
		44.470039, 34.120773, 31.113607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890553, 34.865337, 30.865961>,  <44.262157, 34.757156, 31.318052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890553, 34.865337, 30.865961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717861, 34.517059, 30.771721>,  <44.614246, 34.308094, 30.715178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717861, 34.517059, 30.771721>,  <44.890553, 34.865337, 30.865961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717861, 34.517059, 30.771721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045239, 0.239966, -0.969727,
		0.900869, -0.429316, -0.064210,
		-0.431728, -0.870692, -0.235600,
		44.588345, 34.255852, 30.701040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263885, 34.593304, 30.403767>,  <44.890553, 34.865337, 30.865961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263885, 34.593304, 30.403767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927795, 34.380508, 30.361790>,  <44.726143, 34.252831, 30.336603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927795, 34.380508, 30.361790>,  <45.263885, 34.593304, 30.403767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927795, 34.380508, 30.361790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031726, 0.144977, -0.988926,
		0.541311, -0.834249, -0.104935,
		-0.840224, -0.531988, -0.104945,
		44.675728, 34.220913, 30.330307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390511, 34.024719, 29.916553>,  <45.263885, 34.593304, 30.403767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390511, 34.024719, 29.916553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991722, 34.054081, 29.906223>,  <44.752449, 34.071697, 29.900026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991722, 34.054081, 29.906223>,  <45.390511, 34.024719, 29.916553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991722, 34.054081, 29.906223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028435, 0.034757, -0.998991,
		-0.072439, -0.996696, -0.036739,
		-0.996968, 0.073411, -0.025823,
		44.692631, 34.076103, 29.898476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178913, 33.641083, 29.257946>,  <45.390511, 34.024719, 29.916553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178913, 33.641083, 29.257946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.848183, 33.835896, 29.370487>,  <44.649742, 33.952782, 29.438011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.848183, 33.835896, 29.370487>,  <45.178913, 33.641083, 29.257946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848183, 33.835896, 29.370487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359560, -0.073022, -0.930260,
		-0.432519, -0.870328, 0.235493,
		-0.826828, 0.487029, 0.281351,
		44.600136, 33.982002, 29.454893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686005, 33.265926, 28.981016>,  <45.178913, 33.641083, 29.257946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686005, 33.265926, 28.981016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541149, 33.633423, 29.043961>,  <44.454235, 33.853920, 29.081728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541149, 33.633423, 29.043961>,  <44.686005, 33.265926, 28.981016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541149, 33.633423, 29.043961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479527, -0.038861, -0.876666,
		-0.799318, -0.392934, 0.454636,
		-0.362140, 0.918745, 0.157360,
		44.432507, 33.909046, 29.091169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032925, 33.314754, 28.699966>,  <44.686005, 33.265926, 28.981016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032925, 33.314754, 28.699966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120079, 33.704220, 28.726833>,  <44.172371, 33.937897, 28.742952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120079, 33.704220, 28.726833>,  <44.032925, 33.314754, 28.699966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120079, 33.704220, 28.726833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373721, 0.146807, -0.915849,
		-0.901587, 0.174446, 0.395864,
		0.217882, 0.973661, 0.067165,
		44.185444, 33.996319, 28.746983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456467, 33.716621, 28.513350>,  <44.032925, 33.314754, 28.699966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456467, 33.716621, 28.513350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.732834, 34.003101, 28.473976>,  <43.898655, 34.174988, 28.450352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.732834, 34.003101, 28.473976>,  <43.456467, 33.716621, 28.513350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732834, 34.003101, 28.473976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430617, 0.298347, -0.851797,
		-0.580687, 0.630912, 0.514541,
		0.690921, 0.716198, -0.098435,
		43.940109, 34.217960, 28.444445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101536, 34.284691, 28.249949>,  <43.456467, 33.716621, 28.513350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101536, 34.284691, 28.249949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475422, 34.402134, 28.169849>,  <43.699753, 34.472599, 28.121790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475422, 34.402134, 28.169849>,  <43.101536, 34.284691, 28.249949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475422, 34.402134, 28.169849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245458, 0.125860, -0.961202,
		-0.257012, 0.947604, 0.189712,
		0.934717, 0.293607, -0.200249,
		43.755836, 34.490215, 28.109774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.795204, 35.468380, 43.592072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411755, 35.367657, 43.538956>,  <40.181686, 35.307224, 43.507088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411755, 35.367657, 43.538956>,  <40.795204, 35.468380, 43.592072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411755, 35.367657, 43.538956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059673, 0.278347, -0.958625,
		0.278347, -0.926886, -0.251805,
		0.958625, 0.251805, 0.132787,
		40.124168, 35.292114, 43.499119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702698, 35.084190, 42.929619>,  <40.795204, 35.468380, 43.592072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702698, 35.084190, 42.929619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328587, 35.207882, 42.998478>,  <40.104122, 35.282097, 43.039795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328587, 35.207882, 42.998478>,  <40.702698, 35.084190, 42.929619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328587, 35.207882, 42.998478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149680, 0.095157, -0.984145,
		-0.320711, -0.946214, -0.042712,
		-0.935275, 0.309233, 0.172147,
		40.048004, 35.300652, 43.050121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101856, 34.634510, 42.560200>,  <40.702698, 35.084190, 42.929619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101856, 34.634510, 42.560200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961372, 35.000614, 42.639149>,  <39.877083, 35.220276, 42.686520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961372, 35.000614, 42.639149>,  <40.101856, 34.634510, 42.560200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961372, 35.000614, 42.639149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355523, 0.064650, -0.932429,
		-0.866172, -0.397650, 0.302689,
		-0.351212, 0.915257, 0.197372,
		39.856010, 35.275192, 42.698360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510704, 34.612591, 42.231575>,  <40.101856, 34.634510, 42.560200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510704, 34.612591, 42.231575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565075, 35.004425, 42.290813>,  <39.597698, 35.239525, 42.326355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565075, 35.004425, 42.290813>,  <39.510704, 34.612591, 42.231575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565075, 35.004425, 42.290813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412324, 0.191855, -0.890607,
		-0.900841, 0.059993, 0.429985,
		0.135925, 0.979588, 0.148094,
		39.605854, 35.298302, 42.335243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913067, 35.009403, 42.086769>,  <39.510704, 34.612591, 42.231575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913067, 35.009403, 42.086769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169334, 35.315987, 42.068478>,  <39.323093, 35.499935, 42.057503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169334, 35.315987, 42.068478>,  <38.913067, 35.009403, 42.086769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169334, 35.315987, 42.068478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461729, 0.337000, -0.820510,
		-0.613475, 0.546787, 0.569800,
		0.640667, 0.766456, -0.045727,
		39.361534, 35.545925, 42.054760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473732, 35.582119, 41.965256>,  <38.913067, 35.009403, 42.086769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473732, 35.582119, 41.965256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841171, 35.674034, 41.836643>,  <39.061634, 35.729183, 41.759476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841171, 35.674034, 41.836643>,  <38.473732, 35.582119, 41.965256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841171, 35.674034, 41.836643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371813, 0.226764, -0.900185,
		-0.133941, 0.946454, 0.293742,
		0.918594, 0.229789, -0.321531,
		39.116749, 35.742970, 41.740185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452938, 36.287407, 41.689384>,  <38.473732, 35.582119, 41.965256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452938, 36.287407, 41.689384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766052, 36.106495, 41.518414>,  <38.953918, 35.997948, 41.415833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766052, 36.106495, 41.518414>,  <38.452938, 36.287407, 41.689384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766052, 36.106495, 41.518414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280948, 0.356022, -0.891245,
		0.555264, 0.817736, 0.151621,
		0.782783, -0.452279, -0.427427,
		39.000889, 35.970810, 41.390186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624180, 36.719833, 41.190681>,  <38.452938, 36.287407, 41.689384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624180, 36.719833, 41.190681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829865, 36.393719, 41.084179>,  <38.953274, 36.198051, 41.020275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829865, 36.393719, 41.084179>,  <38.624180, 36.719833, 41.190681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829865, 36.393719, 41.084179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314140, 0.109835, -0.943002,
		0.798062, 0.568545, -0.199636,
		0.514212, -0.815287, -0.266258,
		38.984127, 36.149132, 41.004303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017967, 36.925259, 40.577938>,  <38.624180, 36.719833, 41.190681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017967, 36.925259, 40.577938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006573, 36.525703, 40.562927>,  <38.999737, 36.285969, 40.553921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006573, 36.525703, 40.562927>,  <39.017967, 36.925259, 40.577938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006573, 36.525703, 40.562927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231881, 0.043119, -0.971788,
		0.972327, -0.018980, -0.232852,
		-0.028485, -0.998890, -0.037525,
		38.998028, 36.226036, 40.551670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504814, 36.713909, 40.028522>,  <39.017967, 36.925259, 40.577938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504814, 36.713909, 40.028522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279633, 36.387676, 40.082054>,  <39.144524, 36.191936, 40.114174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279633, 36.387676, 40.082054>,  <39.504814, 36.713909, 40.028522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279633, 36.387676, 40.082054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074309, -0.211215, -0.974611,
		0.823139, -0.538719, 0.179510,
		-0.562957, -0.815580, 0.133828,
		39.110744, 36.143002, 40.122204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919567, 36.175701, 39.780842>,  <39.504814, 36.713909, 40.028522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919567, 36.175701, 39.780842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534035, 36.071114, 39.760181>,  <39.302715, 36.008362, 39.747784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534035, 36.071114, 39.760181>,  <39.919567, 36.175701, 39.780842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534035, 36.071114, 39.760181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088778, -0.132219, -0.987237,
		0.251301, -0.956113, 0.150649,
		-0.963829, -0.261468, -0.051655,
		39.244884, 35.992672, 39.744686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997715, 35.717495, 39.310295>,  <39.919567, 36.175701, 39.780842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997715, 35.717495, 39.310295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602577, 35.778851, 39.300262>,  <39.365494, 35.815662, 39.294243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602577, 35.778851, 39.300262>,  <39.997715, 35.717495, 39.310295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602577, 35.778851, 39.300262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004159, -0.187385, -0.982278,
		-0.155360, -0.970238, 0.185746,
		-0.987849, 0.153380, -0.025077,
		39.306221, 35.824867, 39.292740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791355, 36.123035, 39.445923>,  <39.997715, 35.717495, 39.310295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791355, 36.123035, 39.445923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639347, 36.487694, 39.508526>,  <40.548141, 36.706490, 39.546085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639347, 36.487694, 39.508526>,  <40.791355, 36.123035, 39.445923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639347, 36.487694, 39.508526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924687, 0.370169, 0.089045,
		0.023245, 0.178555, -0.983655,
		-0.380018, 0.911643, 0.156503,
		40.525341, 36.761189, 39.555477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296402, 36.553783, 39.135818>,  <40.791355, 36.123035, 39.445923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296402, 36.553783, 39.135818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104465, 36.841457, 39.336830>,  <40.989304, 37.014061, 39.457436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104465, 36.841457, 39.336830>,  <41.296402, 36.553783, 39.135818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104465, 36.841457, 39.336830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865830, 0.480704, 0.138788,
		-0.141752, 0.501698, -0.853349,
		-0.479838, 0.719182, 0.502526,
		40.960514, 37.057213, 39.487587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624790, 35.914108, 38.978573>,  <41.296402, 36.553783, 39.135818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624790, 35.914108, 38.978573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762211, 35.755840, 38.637890>,  <41.844666, 35.660877, 38.433479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762211, 35.755840, 38.637890>,  <41.624790, 35.914108, 38.978573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762211, 35.755840, 38.637890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292342, -0.906910, 0.303396,
		-0.892472, 0.144759, -0.427245,
		0.343553, -0.395674, -0.851712,
		41.865276, 35.637138, 38.382378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017281, 35.572937, 38.449406>,  <41.624790, 35.914108, 38.978573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017281, 35.572937, 38.449406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379517, 35.412689, 38.393684>,  <41.596859, 35.316540, 38.360252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379517, 35.412689, 38.393684>,  <41.017281, 35.572937, 38.449406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379517, 35.412689, 38.393684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341567, -0.883539, 0.320455,
		-0.251460, -0.242620, -0.936965,
		0.905594, -0.400618, -0.139304,
		41.651196, 35.292503, 38.351894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885590, 34.899590, 38.138432>,  <41.017281, 35.572937, 38.449406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885590, 34.899590, 38.138432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248672, 34.899593, 38.306274>,  <41.466522, 34.899597, 38.406979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248672, 34.899593, 38.306274>,  <40.885590, 34.899590, 38.138432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248672, 34.899593, 38.306274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215017, -0.858717, 0.465159,
		0.360328, -0.512450, -0.779460,
		0.907706, 0.000013, 0.419605,
		41.520985, 34.899597, 38.432156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166374, 34.265430, 38.067200>,  <40.885590, 34.899590, 38.138432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166374, 34.265430, 38.067200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403637, 34.404175, 38.357811>,  <41.545994, 34.487423, 38.532177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403637, 34.404175, 38.357811>,  <41.166374, 34.265430, 38.067200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403637, 34.404175, 38.357811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003734, -0.901232, 0.433320,
		0.805077, -0.259740, -0.533278,
		0.593158, 0.346865, 0.726531,
		41.581585, 34.508236, 38.575771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564800, 33.721489, 38.244438>,  <41.166374, 34.265430, 38.067200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564800, 33.721489, 38.244438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641720, 33.961319, 38.555187>,  <41.687870, 34.105217, 38.741638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641720, 33.961319, 38.555187>,  <41.564800, 33.721489, 38.244438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641720, 33.961319, 38.555187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009302, -0.790498, 0.612394,
		0.981293, -0.124987, -0.146433,
		0.192296, 0.599576, 0.776873,
		41.699409, 34.141193, 38.788250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943024, 33.308453, 38.696171>,  <41.564800, 33.721489, 38.244438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943024, 33.308453, 38.696171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815922, 33.610756, 38.925209>,  <41.739658, 33.792137, 39.062634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815922, 33.610756, 38.925209>,  <41.943024, 33.308453, 38.696171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815922, 33.610756, 38.925209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034566, -0.612725, 0.789540,
		0.947542, 0.231090, 0.220821,
		-0.317758, 0.755755, 0.572594,
		41.720596, 33.837482, 39.096989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319340, 33.262531, 39.408577>,  <41.943024, 33.308453, 38.696171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319340, 33.262531, 39.408577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988667, 33.478794, 39.470921>,  <41.790264, 33.608551, 39.508327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988667, 33.478794, 39.470921>,  <42.319340, 33.262531, 39.408577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988667, 33.478794, 39.470921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021344, -0.306931, 0.951492,
		0.562267, 0.783253, 0.265274,
		-0.826680, 0.540655, 0.155860,
		41.740662, 33.640991, 39.517677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474472, 33.661549, 40.132454>,  <42.319340, 33.262531, 39.408577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474472, 33.661549, 40.132454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081863, 33.637894, 40.059669>,  <41.846298, 33.623699, 40.015999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081863, 33.637894, 40.059669>,  <42.474472, 33.661549, 40.132454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081863, 33.637894, 40.059669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142161, -0.411116, 0.900430,
		-0.128057, 0.909663, 0.395114,
		-0.981525, -0.059136, -0.181965,
		41.787407, 33.620152, 40.005081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060513, 34.018169, 40.720879>,  <42.474472, 33.661549, 40.132454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060513, 34.018169, 40.720879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810173, 33.758301, 40.548260>,  <41.659969, 33.602379, 40.444687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810173, 33.758301, 40.548260>,  <42.060513, 34.018169, 40.720879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810173, 33.758301, 40.548260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306445, -0.303983, 0.902045,
		-0.717221, 0.696789, -0.008843,
		-0.625847, -0.649676, -0.431550,
		41.622417, 33.563396, 40.418793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422504, 34.079380, 41.073368>,  <42.060513, 34.018169, 40.720879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422504, 34.079380, 41.073368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410580, 33.723896, 40.890366>,  <41.403423, 33.510605, 40.780563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410580, 33.723896, 40.890366>,  <41.422504, 34.079380, 41.073368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410580, 33.723896, 40.890366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390821, -0.410906, 0.823660,
		-0.919984, 0.203359, -0.335075,
		-0.029814, -0.888708, -0.457504,
		41.401634, 33.457283, 40.753113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770092, 33.891880, 41.169136>,  <41.422504, 34.079380, 41.073368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770092, 33.891880, 41.169136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920650, 33.537018, 41.062344>,  <41.010986, 33.324100, 40.998268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920650, 33.537018, 41.062344>,  <40.770092, 33.891880, 41.169136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920650, 33.537018, 41.062344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284900, -0.385048, 0.877821,
		-0.881564, -0.254349, -0.397683,
		0.376400, -0.887155, -0.266981,
		41.033569, 33.270870, 40.982250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258358, 33.335289, 41.304111>,  <40.770092, 33.891880, 41.169136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258358, 33.335289, 41.304111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614441, 33.154926, 41.330059>,  <40.828091, 33.046707, 41.345627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614441, 33.154926, 41.330059>,  <40.258358, 33.335289, 41.304111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614441, 33.154926, 41.330059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271213, -0.410179, 0.870745,
		-0.366013, -0.792742, -0.487437,
		0.890213, -0.450903, 0.064871,
		40.881504, 33.019653, 41.349518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042423, 32.696350, 41.568436>,  <40.258358, 33.335289, 41.304111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042423, 32.696350, 41.568436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436321, 32.718952, 41.634266>,  <40.672661, 32.732513, 41.673763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436321, 32.718952, 41.634266>,  <40.042423, 32.696350, 41.568436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436321, 32.718952, 41.634266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125219, -0.426590, 0.895735,
		0.120815, -0.902679, -0.413007,
		0.984746, 0.056502, 0.164571,
		40.731747, 32.735901, 41.683636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322830, 31.983515, 41.732845>,  <40.042423, 32.696350, 41.568436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322830, 31.983515, 41.732845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587193, 32.247780, 41.875244>,  <40.745808, 32.406338, 41.960682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587193, 32.247780, 41.875244>,  <40.322830, 31.983515, 41.732845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587193, 32.247780, 41.875244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022447, -0.456747, 0.889313,
		0.750136, -0.595740, -0.287035,
		0.660902, 0.660663, 0.355995,
		40.785461, 32.445980, 41.982044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114407, 31.263752, 41.799648>,  <40.322830, 31.983515, 41.732845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114407, 31.263752, 41.799648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755474, 31.093784, 41.847393>,  <39.540115, 30.991804, 41.876038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755474, 31.093784, 41.847393>,  <40.114407, 31.263752, 41.799648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755474, 31.093784, 41.847393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271450, 0.318083, -0.908371,
		0.348021, -0.847505, -0.400770,
		-0.897327, -0.424921, 0.119356,
		39.486275, 30.966309, 41.883202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006454, 31.066149, 41.181557>,  <40.114407, 31.263752, 41.799648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006454, 31.066149, 41.181557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646328, 31.036098, 41.353035>,  <39.430252, 31.018068, 41.455921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646328, 31.036098, 41.353035>,  <40.006454, 31.066149, 41.181557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646328, 31.036098, 41.353035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433431, 0.065271, -0.898820,
		0.039522, -0.995037, -0.091317,
		-0.900320, -0.075103, 0.428700,
		39.376232, 31.013561, 41.481644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623322, 30.502672, 40.910595>,  <40.006454, 31.066149, 41.181557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623322, 30.502672, 40.910595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340134, 30.753723, 41.040127>,  <39.170223, 30.904354, 41.117847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340134, 30.753723, 41.040127>,  <39.623322, 30.502672, 40.910595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340134, 30.753723, 41.040127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409560, 0.008693, -0.912242,
		-0.575364, -0.778464, 0.250898,
		-0.707966, 0.627629, 0.323829,
		39.127743, 30.942011, 41.137276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033680, 30.451054, 40.489906>,  <39.623322, 30.502672, 40.910595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033680, 30.451054, 40.489906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937912, 30.795412, 40.669476>,  <38.880451, 31.002028, 40.777218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937912, 30.795412, 40.669476>,  <39.033680, 30.451054, 40.489906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937912, 30.795412, 40.669476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646256, 0.203763, -0.735414,
		-0.724590, -0.466192, 0.507576,
		-0.239419, 0.860898, 0.448924,
		38.866085, 31.053682, 40.804153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346191, 30.432154, 40.416168>,  <39.033680, 30.451054, 40.489906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346191, 30.432154, 40.416168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428432, 30.817011, 40.487728>,  <38.477779, 31.047926, 40.530663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428432, 30.817011, 40.487728>,  <38.346191, 30.432154, 40.416168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428432, 30.817011, 40.487728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585093, 0.267390, -0.765617,
		-0.784470, 0.052742, 0.617921,
		0.205606, 0.962144, 0.178901,
		38.490112, 31.105654, 40.541397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725945, 30.788748, 40.364902>,  <38.346191, 30.432154, 40.416168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725945, 30.788748, 40.364902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978848, 31.098383, 40.352013>,  <38.130589, 31.284164, 40.344280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978848, 31.098383, 40.352013>,  <37.725945, 30.788748, 40.364902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978848, 31.098383, 40.352013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624462, 0.484552, -0.612582,
		-0.458578, 0.407432, 0.789750,
		0.632260, 0.774086, -0.032221,
		38.168526, 31.330608, 40.342346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350014, 31.402082, 40.569866>,  <37.725945, 30.788748, 40.364902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350014, 31.402082, 40.569866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649761, 31.523703, 40.334576>,  <37.829609, 31.596674, 40.193401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649761, 31.523703, 40.334576>,  <37.350014, 31.402082, 40.569866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649761, 31.523703, 40.334576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660303, 0.409571, -0.629485,
		0.049524, 0.860119, 0.507683,
		0.749365, 0.304050, -0.588223,
		37.874569, 31.614918, 40.158108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103619, 32.084503, 40.452507>,  <37.350014, 31.402082, 40.569866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103619, 32.084503, 40.452507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380173, 31.980478, 40.182884>,  <37.546104, 31.918062, 40.021111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380173, 31.980478, 40.182884>,  <37.103619, 32.084503, 40.452507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380173, 31.980478, 40.182884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454120, 0.569207, -0.685404,
		0.561927, 0.779981, 0.275441,
		0.691385, -0.260064, -0.674058,
		37.587589, 31.902458, 39.980667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428780, 32.663857, 40.238342>,  <37.103619, 32.084503, 40.452507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428780, 32.663857, 40.238342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468498, 32.402946, 39.937759>,  <37.492329, 32.246403, 39.757412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468498, 32.402946, 39.937759>,  <37.428780, 32.663857, 40.238342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468498, 32.402946, 39.937759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337295, 0.688413, -0.642121,
		0.936147, 0.317223, -0.151649,
		0.099299, -0.652270, -0.751454,
		37.498287, 32.207264, 39.712322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536137, 33.088890, 39.637680>,  <37.428780, 32.663857, 40.238342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536137, 33.088890, 39.637680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491249, 32.739750, 39.447712>,  <37.464317, 32.530266, 39.333733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491249, 32.739750, 39.447712>,  <37.536137, 33.088890, 39.637680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491249, 32.739750, 39.447712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482386, 0.465695, -0.741911,
		0.868740, 0.145834, -0.473310,
		-0.112222, -0.872846, -0.474917,
		37.457584, 32.477898, 39.305237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644669, 33.227139, 38.906723>,  <37.536137, 33.088890, 39.637680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644669, 33.227139, 38.906723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428326, 32.890739, 38.912334>,  <37.298519, 32.688900, 38.915703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428326, 32.890739, 38.912334>,  <37.644669, 33.227139, 38.906723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428326, 32.890739, 38.912334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514625, 0.317677, -0.796394,
		0.665310, -0.437953, -0.604616,
		-0.540856, -0.840998, 0.014028,
		37.266068, 32.638439, 38.916542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570499, 32.957619, 38.250950>,  <37.644669, 33.227139, 38.906723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570499, 32.957619, 38.250950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252018, 32.815109, 38.446552>,  <37.060928, 32.729603, 38.563915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252018, 32.815109, 38.446552>,  <37.570499, 32.957619, 38.250950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252018, 32.815109, 38.446552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593932, 0.306180, -0.743975,
		0.115334, -0.882794, -0.455383,
		-0.796205, -0.356272, 0.489006,
		37.013157, 32.708229, 38.593254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.059086, 29.096323, 44.749134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.676807, 29.140295, 44.858364>,  <40.447441, 29.166677, 44.923901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.676807, 29.140295, 44.858364>,  <41.059086, 29.096323, 44.749134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676807, 29.140295, 44.858364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223951, 0.330541, -0.916836,
		-0.191048, -0.937368, -0.291277,
		-0.955691, 0.109928, 0.273074,
		40.390099, 29.173273, 44.940285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630116, 28.777889, 44.209064>,  <41.059086, 29.096323, 44.749134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630116, 28.777889, 44.209064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.390274, 29.040268, 44.392460>,  <40.246368, 29.197695, 44.502499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.390274, 29.040268, 44.392460>,  <40.630116, 28.777889, 44.209064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390274, 29.040268, 44.392460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307675, 0.339930, -0.888698,
		-0.738792, -0.673930, -0.002005,
		-0.599602, 0.655946, 0.458490,
		40.210392, 29.237051, 44.530006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986198, 28.786821, 43.833828>,  <40.630116, 28.777889, 44.209064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986198, 28.786821, 43.833828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.009644, 29.132639, 44.033478>,  <40.023712, 29.340130, 44.153267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.009644, 29.132639, 44.033478>,  <39.986198, 28.786821, 43.833828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009644, 29.132639, 44.033478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289448, 0.493227, -0.820333,
		-0.955397, -0.096386, 0.279152,
		0.058616, 0.864544, 0.499127,
		40.027229, 29.392002, 44.183216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288288, 29.060711, 43.850708>,  <39.986198, 28.786821, 43.833828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288288, 29.060711, 43.850708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.540203, 29.361155, 43.929905>,  <39.691353, 29.541422, 43.977425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.540203, 29.361155, 43.929905>,  <39.288288, 29.060711, 43.850708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540203, 29.361155, 43.929905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485409, 0.579555, -0.654595,
		-0.606422, 0.316147, 0.729592,
		0.629786, 0.751111, 0.197994,
		39.729137, 29.586489, 43.989304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017334, 29.581562, 43.669296>,  <39.288288, 29.060711, 43.850708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017334, 29.581562, 43.669296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362591, 29.781551, 43.697624>,  <39.569744, 29.901545, 43.714622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362591, 29.781551, 43.697624>,  <39.017334, 29.581562, 43.669296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362591, 29.781551, 43.697624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227824, 0.510732, -0.829005,
		-0.450652, 0.699412, 0.554739,
		0.863139, 0.499976, 0.070819,
		39.621532, 29.931543, 43.718868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847702, 30.340117, 43.635429>,  <39.017334, 29.581562, 43.669296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847702, 30.340117, 43.635429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227924, 30.299200, 43.518135>,  <39.456059, 30.274651, 43.447758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227924, 30.299200, 43.518135>,  <38.847702, 30.340117, 43.635429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227924, 30.299200, 43.518135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177389, 0.596199, -0.782994,
		0.254921, 0.796293, 0.548572,
		0.950552, -0.102291, -0.293238,
		39.513088, 30.268513, 43.430164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982910, 30.932829, 43.357372>,  <38.847702, 30.340117, 43.635429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982910, 30.932829, 43.357372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272625, 30.707657, 43.198112>,  <39.446453, 30.572554, 43.102554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272625, 30.707657, 43.198112>,  <38.982910, 30.932829, 43.357372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272625, 30.707657, 43.198112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082151, 0.502883, -0.860442,
		0.684592, 0.655912, 0.317984,
		0.724283, -0.562929, -0.398153,
		39.489910, 30.538778, 43.078667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425709, 31.442638, 42.895023>,  <38.982910, 30.932829, 43.357372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425709, 31.442638, 42.895023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497246, 31.064571, 42.785717>,  <39.540169, 30.837730, 42.720135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497246, 31.064571, 42.785717>,  <39.425709, 31.442638, 42.895023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497246, 31.064571, 42.785717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063850, 0.266006, -0.961854,
		0.981803, 0.189473, -0.012774,
		0.178847, -0.945167, -0.273263,
		39.550900, 30.781021, 42.703739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983391, 31.480572, 42.457512>,  <39.425709, 31.442638, 42.895023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983391, 31.480572, 42.457512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755444, 31.162926, 42.373001>,  <39.618675, 30.972338, 42.322292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755444, 31.162926, 42.373001>,  <39.983391, 31.480572, 42.457512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755444, 31.162926, 42.373001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242296, 0.408062, -0.880215,
		0.785206, -0.450410, -0.424950,
		-0.569864, -0.794114, -0.211280,
		39.584484, 30.924692, 42.309616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717640, 31.536844, 42.311283>,  <39.983391, 31.480572, 42.457512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717640, 31.536844, 42.311283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.835186, 31.911156, 42.389221>,  <40.905712, 32.135742, 42.435986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.835186, 31.911156, 42.389221>,  <40.717640, 31.536844, 42.311283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835186, 31.911156, 42.389221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121436, -0.238743, 0.963460,
		0.948102, -0.259466, -0.183795,
		0.293865, 0.935777, 0.194844,
		40.923344, 32.191891, 42.447674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264015, 31.385109, 42.766079>,  <40.717640, 31.536844, 42.311283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264015, 31.385109, 42.766079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.191521, 31.774181, 42.824108>,  <41.148022, 32.007626, 42.858925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.191521, 31.774181, 42.824108>,  <41.264015, 31.385109, 42.766079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191521, 31.774181, 42.824108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249550, -0.097200, 0.963472,
		0.951250, 0.210823, -0.225115,
		-0.181241, 0.972680, 0.145072,
		41.137150, 32.065987, 42.867630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887005, 31.711367, 43.113430>,  <41.264015, 31.385109, 42.766079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887005, 31.711367, 43.113430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.579521, 31.952925, 43.197720>,  <41.395031, 32.097858, 43.248291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.579521, 31.952925, 43.197720>,  <41.887005, 31.711367, 43.113430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579521, 31.952925, 43.197720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295450, 0.043064, 0.954387,
		0.567274, 0.795901, -0.211524,
		-0.768706, 0.603894, 0.210720,
		41.348907, 32.134094, 43.260937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156105, 32.335243, 43.383965>,  <41.887005, 31.711367, 43.113430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156105, 32.335243, 43.383965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.791325, 32.297546, 43.543694>,  <41.572456, 32.274929, 43.639530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.791325, 32.297546, 43.543694>,  <42.156105, 32.335243, 43.383965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791325, 32.297546, 43.543694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402749, -0.019881, 0.915095,
		-0.078300, 0.995351, 0.056085,
		-0.911955, -0.094240, 0.399320,
		41.517738, 32.269276, 43.663490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233250, 32.622517, 44.007988>,  <42.156105, 32.335243, 43.383965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233250, 32.622517, 44.007988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.912842, 32.385799, 44.044086>,  <41.720596, 32.243771, 44.065746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.912842, 32.385799, 44.044086>,  <42.233250, 32.622517, 44.007988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912842, 32.385799, 44.044086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217413, -0.147128, 0.964927,
		-0.557761, 0.792548, 0.246517,
		-0.801021, -0.591794, 0.090248,
		41.672535, 32.208260, 44.071159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935570, 32.984192, 44.533382>,  <42.233250, 32.622517, 44.007988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935570, 32.984192, 44.533382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.772446, 32.618965, 44.534264>,  <41.674572, 32.399830, 44.534794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.772446, 32.618965, 44.534264>,  <41.935570, 32.984192, 44.533382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772446, 32.618965, 44.534264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110979, -0.047172, 0.992703,
		-0.906298, 0.405077, 0.120568,
		-0.407809, -0.913065, 0.002203,
		41.650105, 32.345047, 44.534924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481621, 32.943829, 45.056217>,  <41.935570, 32.984192, 44.533382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481621, 32.943829, 45.056217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.546368, 32.552254, 45.006458>,  <41.585217, 32.317307, 44.976601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.546368, 32.552254, 45.006458>,  <41.481621, 32.943829, 45.056217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546368, 32.552254, 45.006458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136628, -0.102617, 0.985293,
		-0.977308, -0.176484, 0.117141,
		0.161867, -0.978940, -0.124402,
		41.594929, 32.258572, 44.969139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197029, 32.663368, 45.661724>,  <41.481621, 32.943829, 45.056217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197029, 32.663368, 45.661724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.447178, 32.390137, 45.510826>,  <41.597267, 32.226196, 45.420288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.447178, 32.390137, 45.510826>,  <41.197029, 32.663368, 45.661724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447178, 32.390137, 45.510826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172396, -0.350559, 0.920537,
		-0.761049, -0.640710, -0.101467,
		0.625367, -0.683081, -0.377248,
		41.634789, 32.185211, 45.397652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017418, 32.060825, 46.076385>,  <41.197029, 32.663368, 45.661724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017418, 32.060825, 46.076385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372391, 31.968889, 45.916565>,  <41.585373, 31.913729, 45.820675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372391, 31.968889, 45.916565>,  <41.017418, 32.060825, 46.076385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372391, 31.968889, 45.916565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266063, -0.452413, 0.851195,
		-0.376395, -0.861683, -0.340336,
		0.887433, -0.229835, -0.399548,
		41.638622, 31.899939, 45.796700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196880, 31.369244, 46.229057>,  <41.017418, 32.060825, 46.076385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196880, 31.369244, 46.229057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.535995, 31.572197, 46.167332>,  <41.739464, 31.693970, 46.130295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.535995, 31.572197, 46.167332>,  <41.196880, 31.369244, 46.229057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535995, 31.572197, 46.167332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344775, -0.306219, 0.887333,
		0.402964, -0.805476, -0.434544,
		0.847791, 0.507383, -0.154313,
		41.790333, 31.724411, 46.121037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665516, 30.937141, 46.316078>,  <41.196880, 31.369244, 46.229057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665516, 30.937141, 46.316078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.896877, 31.261040, 46.355595>,  <42.035694, 31.455379, 46.379303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.896877, 31.261040, 46.355595>,  <41.665516, 30.937141, 46.316078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896877, 31.261040, 46.355595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420446, -0.399703, 0.814532,
		0.699051, -0.429593, -0.571645,
		0.578405, 0.809746, 0.098792,
		42.070400, 31.503963, 46.385231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340027, 30.743664, 46.576359>,  <41.665516, 30.937141, 46.316078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340027, 30.743664, 46.576359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.340546, 31.132978, 46.668198>,  <42.340858, 31.366568, 46.723301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.340546, 31.132978, 46.668198>,  <42.340027, 30.743664, 46.576359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340546, 31.132978, 46.668198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381138, -0.212747, 0.899707,
		0.924517, 0.086342, -0.371232,
		0.001296, 0.973285, 0.229596,
		42.340935, 31.424965, 46.737076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918827, 30.926357, 47.041161>,  <42.340027, 30.743664, 46.576359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918827, 30.926357, 47.041161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.692326, 31.249132, 47.108337>,  <42.556423, 31.442797, 47.148643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.692326, 31.249132, 47.108337>,  <42.918827, 30.926357, 47.041161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692326, 31.249132, 47.108337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236161, -0.036369, 0.971033,
		0.789672, 0.589515, -0.169973,
		-0.566257, 0.806938, 0.167940,
		42.522449, 31.491213, 47.158718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314503, 31.489452, 47.390091>,  <42.918827, 30.926357, 47.041161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314503, 31.489452, 47.390091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.934017, 31.555254, 47.494503>,  <42.705727, 31.594734, 47.557152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.934017, 31.555254, 47.494503>,  <43.314503, 31.489452, 47.390091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934017, 31.555254, 47.494503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288228, 0.171847, 0.942015,
		0.110108, 0.971291, -0.210878,
		-0.951210, 0.164504, 0.261032,
		42.648655, 31.604605, 47.572811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.284657, 32.360050, 49.318409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655273, 32.294182, 49.183121>,  <34.877644, 32.254662, 49.101948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655273, 32.294182, 49.183121>,  <34.284657, 32.360050, 49.318409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655273, 32.294182, 49.183121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211449, 0.515640, -0.830304,
		0.311128, 0.840832, 0.442946,
		0.926547, -0.164670, -0.338223,
		34.933239, 32.244781, 49.081654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604416, 33.000561, 49.016438>,  <34.284657, 32.360050, 49.318409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604416, 33.000561, 49.016438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827431, 32.716759, 48.844040>,  <34.961239, 32.546478, 48.740601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827431, 32.716759, 48.844040>,  <34.604416, 33.000561, 49.016438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827431, 32.716759, 48.844040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157322, 0.419458, -0.894039,
		0.815109, 0.566264, 0.122242,
		0.557537, -0.709507, -0.430989,
		34.994690, 32.503906, 48.714745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120564, 33.370308, 48.750050>,  <34.604416, 33.000561, 49.016438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120564, 33.370308, 48.750050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103466, 33.023933, 48.550716>,  <35.093208, 32.816109, 48.431118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103466, 33.023933, 48.550716>,  <35.120564, 33.370308, 48.750050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103466, 33.023933, 48.550716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042188, 0.499907, -0.865051,
		0.998195, -0.015953, -0.057900,
		-0.042744, -0.865932, -0.498332,
		35.090641, 32.764153, 48.401218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685825, 33.325756, 48.235512>,  <35.120564, 33.370308, 48.750050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685825, 33.325756, 48.235512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427120, 33.058842, 48.087769>,  <35.271896, 32.898693, 47.999123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427120, 33.058842, 48.087769>,  <35.685825, 33.325756, 48.235512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427120, 33.058842, 48.087769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252651, 0.269496, -0.929268,
		0.719633, -0.694331, -0.005708,
		-0.646758, -0.667290, -0.369362,
		35.233093, 32.858654, 47.976959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822353, 33.352642, 47.548725>,  <35.685825, 33.325756, 48.235512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822353, 33.352642, 47.548725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475178, 33.155891, 47.576294>,  <35.266872, 33.037842, 47.592834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475178, 33.155891, 47.576294>,  <35.822353, 33.352642, 47.548725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475178, 33.155891, 47.576294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078595, -0.001005, -0.996906,
		0.490420, -0.870667, -0.037786,
		-0.867935, -0.491873, 0.068923,
		35.214798, 33.008331, 47.596970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818970, 32.912312, 47.012959>,  <35.822353, 33.352642, 47.548725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818970, 32.912312, 47.012959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427746, 32.919556, 47.095974>,  <35.193012, 32.923901, 47.145782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427746, 32.919556, 47.095974>,  <35.818970, 32.912312, 47.012959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427746, 32.919556, 47.095974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208084, -0.036748, -0.977420,
		-0.010058, -0.999161, 0.039707,
		-0.978059, 0.018094, 0.207540,
		35.134327, 32.924988, 47.158237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493332, 32.594532, 46.473270>,  <35.818970, 32.912312, 47.012959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493332, 32.594532, 46.473270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183716, 32.781956, 46.643600>,  <34.997948, 32.894409, 46.745796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183716, 32.781956, 46.643600>,  <35.493332, 32.594532, 46.473270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183716, 32.781956, 46.643600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407848, 0.145434, -0.901393,
		-0.484281, -0.871381, 0.078528,
		-0.774036, 0.468555, 0.425822,
		34.951504, 32.922523, 46.771347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880772, 32.229465, 46.215794>,  <35.493332, 32.594532, 46.473270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880772, 32.229465, 46.215794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808208, 32.613506, 46.300919>,  <34.764671, 32.843933, 46.351994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808208, 32.613506, 46.300919>,  <34.880772, 32.229465, 46.215794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808208, 32.613506, 46.300919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405943, 0.123993, -0.905448,
		-0.895713, -0.250644, 0.367255,
		-0.181408, 0.960106, 0.212809,
		34.753784, 32.901539, 46.364761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178352, 32.344242, 45.840652>,  <34.880772, 32.229465, 46.215794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178352, 32.344242, 45.840652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350300, 32.699306, 45.906704>,  <34.453468, 32.912346, 45.946335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350300, 32.699306, 45.906704>,  <34.178352, 32.344242, 45.840652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350300, 32.699306, 45.906704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348235, 0.331741, -0.876744,
		-0.833034, 0.319380, 0.451720,
		0.429868, 0.887663, 0.165133,
		34.479259, 32.965607, 45.956245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615929, 32.755714, 45.637432>,  <34.178352, 32.344242, 45.840652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615929, 32.755714, 45.637432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945160, 32.980858, 45.667717>,  <34.142700, 33.115944, 45.685890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945160, 32.980858, 45.667717>,  <33.615929, 32.755714, 45.637432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945160, 32.980858, 45.667717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249487, 0.478116, -0.842117,
		-0.510192, 0.674239, 0.533953,
		0.823080, 0.562856, 0.075716,
		34.192085, 33.149715, 45.690434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408676, 33.399769, 45.423210>,  <33.615929, 32.755714, 45.637432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408676, 33.399769, 45.423210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804092, 33.434410, 45.373753>,  <34.041344, 33.455196, 45.344078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804092, 33.434410, 45.373753>,  <33.408676, 33.399769, 45.423210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804092, 33.434410, 45.373753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150677, 0.515943, -0.843267,
		-0.009240, 0.852234, 0.523080,
		0.988540, 0.086608, -0.123645,
		34.100655, 33.460392, 45.336658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661869, 34.215351, 45.294987>,  <33.408676, 33.399769, 45.423210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661869, 34.215351, 45.294987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922699, 33.952621, 45.143524>,  <34.079197, 33.794983, 45.052647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922699, 33.952621, 45.143524>,  <33.661869, 34.215351, 45.294987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922699, 33.952621, 45.143524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157978, 0.370765, -0.915192,
		0.741512, 0.656594, 0.138004,
		0.652076, -0.656824, -0.378654,
		34.118320, 33.755573, 45.029926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972855, 34.580235, 44.774830>,  <33.661869, 34.215351, 45.294987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972855, 34.580235, 44.774830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.093224, 34.206497, 44.698471>,  <34.165443, 33.982254, 44.652657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.093224, 34.206497, 44.698471>,  <33.972855, 34.580235, 44.774830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093224, 34.206497, 44.698471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018200, 0.205763, -0.978433,
		0.953475, 0.290959, 0.078924,
		0.300924, -0.934347, -0.190894,
		34.183502, 33.926193, 44.641201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530544, 34.700150, 44.310364>,  <33.972855, 34.580235, 44.774830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530544, 34.700150, 44.310364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.375469, 34.333019, 44.276192>,  <34.282425, 34.112743, 44.255688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.375469, 34.333019, 44.276192>,  <34.530544, 34.700150, 44.310364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375469, 34.333019, 44.276192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332518, 0.225690, -0.915694,
		0.859726, -0.326599, -0.392690,
		-0.387691, -0.917822, -0.085431,
		34.259163, 34.057674, 44.250561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261009, 34.415112, 44.227757>,  <34.530544, 34.700150, 44.310364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261009, 34.415112, 44.227757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533615, 34.707832, 44.228027>,  <35.697178, 34.883465, 44.228188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533615, 34.707832, 44.228027>,  <35.261009, 34.415112, 44.227757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533615, 34.707832, 44.228027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307611, -0.287306, 0.907100,
		0.664014, -0.617994, -0.420914,
		0.681514, 0.731805, 0.000673,
		35.738068, 34.927372, 44.228230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904522, 34.147861, 44.497299>,  <35.261009, 34.415112, 44.227757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904522, 34.147861, 44.497299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940952, 34.541225, 44.560062>,  <35.962811, 34.777245, 44.597721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940952, 34.541225, 44.560062>,  <35.904522, 34.147861, 44.497299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940952, 34.541225, 44.560062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294363, -0.177103, 0.939141,
		0.951344, -0.039345, -0.305607,
		0.091074, 0.983405, 0.156905,
		35.968273, 34.836246, 44.607132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512169, 34.165775, 44.869652>,  <35.904522, 34.147861, 44.497299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512169, 34.165775, 44.869652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369797, 34.537621, 44.907879>,  <36.284374, 34.760727, 44.930817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369797, 34.537621, 44.907879>,  <36.512169, 34.165775, 44.869652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369797, 34.537621, 44.907879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659656, 0.177492, 0.730309,
		0.661941, 0.322983, -0.676399,
		-0.355933, 0.929612, 0.095569,
		36.263016, 34.816505, 44.936550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090416, 34.537983, 44.949875>,  <36.512169, 34.165775, 44.869652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090416, 34.537983, 44.949875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769028, 34.695866, 45.128147>,  <36.576195, 34.790596, 45.235111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769028, 34.695866, 45.128147>,  <37.090416, 34.537983, 44.949875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769028, 34.695866, 45.128147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491984, 0.018680, 0.870404,
		0.335231, 0.918616, -0.209200,
		-0.803475, 0.394709, 0.445683,
		36.527985, 34.814278, 45.261852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378834, 34.935925, 45.484612>,  <37.090416, 34.537983, 44.949875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378834, 34.935925, 45.484612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.999577, 34.882767, 45.600105>,  <36.772022, 34.850872, 45.669403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.999577, 34.882767, 45.600105>,  <37.378834, 34.935925, 45.484612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999577, 34.882767, 45.600105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293771, -0.019560, 0.955676,
		-0.121353, 0.990938, 0.057585,
		-0.948141, -0.132891, 0.288735,
		36.715134, 34.842899, 45.686726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340195, 35.353992, 46.104111>,  <37.378834, 34.935925, 45.484612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340195, 35.353992, 46.104111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027615, 35.104889, 46.119659>,  <36.840069, 34.955425, 46.128990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027615, 35.104889, 46.119659>,  <37.340195, 35.353992, 46.104111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027615, 35.104889, 46.119659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253551, -0.259999, 0.931726,
		-0.570135, 0.737950, 0.361077,
		-0.781446, -0.622761, 0.038874,
		36.793182, 34.918060, 46.131321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149803, 35.423935, 46.818619>,  <37.340195, 35.353992, 46.104111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149803, 35.423935, 46.818619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985184, 35.084858, 46.684723>,  <36.886414, 34.881413, 46.604385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985184, 35.084858, 46.684723>,  <37.149803, 35.423935, 46.818619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985184, 35.084858, 46.684723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242673, -0.455952, 0.856281,
		-0.878487, 0.271166, 0.393357,
		-0.411547, -0.847689, -0.334743,
		36.861721, 34.830551, 46.584301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710644, 35.247181, 47.328281>,  <37.149803, 35.423935, 46.818619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710644, 35.247181, 47.328281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.772156, 34.910927, 47.120556>,  <36.809063, 34.709175, 46.995922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.772156, 34.910927, 47.120556>,  <36.710644, 35.247181, 47.328281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772156, 34.910927, 47.120556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276059, -0.468086, 0.839456,
		-0.948759, -0.272454, 0.160082,
		0.153781, -0.840633, -0.519314,
		36.818291, 34.658737, 46.964760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304611, 34.664089, 47.730610>,  <36.710644, 35.247181, 47.328281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304611, 34.664089, 47.730610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.593117, 34.492355, 47.513187>,  <36.766220, 34.389317, 47.382736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.593117, 34.492355, 47.513187>,  <36.304611, 34.664089, 47.730610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593117, 34.492355, 47.513187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248274, -0.572349, 0.781522,
		-0.646638, -0.698633, -0.306220,
		0.721262, -0.429335, -0.543555,
		36.809498, 34.363556, 47.350121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230457, 33.991905, 47.918446>,  <36.304611, 34.664089, 47.730610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230457, 33.991905, 47.918446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.607567, 34.033550, 47.791744>,  <36.833832, 34.058537, 47.715721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.607567, 34.033550, 47.791744>,  <36.230457, 33.991905, 47.918446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607567, 34.033550, 47.791744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329032, -0.444251, 0.833294,
		-0.053959, -0.889831, -0.453087,
		0.942776, 0.104117, -0.316755,
		36.890400, 34.064785, 47.696716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583229, 33.480816, 48.209858>,  <36.230457, 33.991905, 47.918446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583229, 33.480816, 48.209858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.874500, 33.737598, 48.113819>,  <37.049263, 33.891670, 48.056194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.874500, 33.737598, 48.113819>,  <36.583229, 33.480816, 48.209858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874500, 33.737598, 48.113819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530124, -0.305485, 0.790979,
		0.434430, -0.703255, -0.562764,
		0.728176, 0.641960, -0.240100,
		37.092953, 33.930187, 48.041790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213863, 33.088718, 48.325256>,  <36.583229, 33.480816, 48.209858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213863, 33.088718, 48.325256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326874, 33.472404, 48.328999>,  <37.394680, 33.702618, 48.331245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326874, 33.472404, 48.328999>,  <37.213863, 33.088718, 48.325256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326874, 33.472404, 48.328999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698303, -0.212344, 0.683581,
		0.657686, -0.186597, -0.729815,
		0.282527, 0.959214, 0.009354,
		37.411633, 33.760170, 48.331806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887600, 33.050323, 48.098480>,  <37.213863, 33.088718, 48.325256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887600, 33.050323, 48.098480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.790840, 33.347416, 48.348228>,  <37.732784, 33.525673, 48.498077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.790840, 33.347416, 48.348228>,  <37.887600, 33.050323, 48.098480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790840, 33.347416, 48.348228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602665, -0.389303, 0.696591,
		0.760448, 0.544788, -0.353447,
		-0.241896, 0.742731, 0.624369,
		37.718273, 33.570236, 48.535538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509411, 33.151871, 48.671207>,  <37.887600, 33.050323, 48.098480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509411, 33.151871, 48.671207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161499, 33.280258, 48.821117>,  <37.952751, 33.357292, 48.911064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161499, 33.280258, 48.821117>,  <38.509411, 33.151871, 48.671207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161499, 33.280258, 48.821117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317039, -0.218488, 0.922903,
		0.378106, 0.921544, 0.088278,
		-0.869783, 0.320968, 0.374777,
		37.900566, 33.376549, 48.933552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224644, 33.345161, 48.929775>,  <38.509411, 33.151871, 48.671207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224644, 33.345161, 48.929775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.589104, 33.209579, 48.836040>,  <39.807781, 33.128231, 48.779800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.589104, 33.209579, 48.836040>,  <39.224644, 33.345161, 48.929775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589104, 33.209579, 48.836040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051162, 0.471226, -0.880527,
		0.408883, 0.814283, 0.412017,
		0.911151, -0.338953, -0.234337,
		39.862450, 33.107895, 48.765739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547142, 33.932026, 48.716648>,  <39.224644, 33.345161, 48.929775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547142, 33.932026, 48.716648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.770866, 33.637623, 48.564091>,  <39.905102, 33.460979, 48.472557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.770866, 33.637623, 48.564091>,  <39.547142, 33.932026, 48.716648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770866, 33.637623, 48.564091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034221, 0.439199, -0.897738,
		0.828253, 0.515164, 0.220460,
		0.559308, -0.736010, -0.381397,
		39.938660, 33.416821, 48.449673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061569, 34.164612, 48.216812>,  <39.547142, 33.932026, 48.716648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061569, 34.164612, 48.216812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020630, 33.782146, 48.107063>,  <39.996067, 33.552666, 48.041214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020630, 33.782146, 48.107063>,  <40.061569, 34.164612, 48.216812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020630, 33.782146, 48.107063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175447, 0.254144, -0.951120,
		0.979155, -0.145478, 0.141746,
		-0.102344, -0.956163, -0.274370,
		39.989925, 33.495296, 48.024754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584358, 34.037918, 47.790131>,  <40.061569, 34.164612, 48.216812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584358, 34.037918, 47.790131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.316837, 33.767380, 47.666672>,  <40.156326, 33.605057, 47.592598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.316837, 33.767380, 47.666672>,  <40.584358, 34.037918, 47.790131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316837, 33.767380, 47.666672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141680, 0.291592, -0.945992,
		0.729819, -0.676406, -0.099192,
		-0.668798, -0.676349, -0.308642,
		40.116199, 33.564476, 47.574078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886486, 33.663380, 47.265545>,  <40.584358, 34.037918, 47.790131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886486, 33.663380, 47.265545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.498234, 33.593750, 47.199131>,  <40.265282, 33.551971, 47.159283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.498234, 33.593750, 47.199131>,  <40.886486, 33.663380, 47.265545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498234, 33.593750, 47.199131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079820, 0.418036, -0.904917,
		0.226931, -0.891596, -0.391865,
		-0.970634, -0.174075, -0.166033,
		40.207043, 33.541527, 47.149323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825752, 33.161415, 46.685135>,  <40.886486, 33.663380, 47.265545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825752, 33.161415, 46.685135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476067, 33.354778, 46.703346>,  <40.266254, 33.470795, 46.714272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476067, 33.354778, 46.703346>,  <40.825752, 33.161415, 46.685135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476067, 33.354778, 46.703346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120903, 0.307528, -0.943827,
		-0.470254, -0.819599, -0.327290,
		-0.874210, 0.483408, 0.045524,
		40.213802, 33.499802, 46.717003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586586, 33.003429, 45.956924>,  <40.825752, 33.161415, 46.685135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586586, 33.003429, 45.956924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367363, 33.292202, 46.125893>,  <40.235828, 33.465466, 46.227276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367363, 33.292202, 46.125893>,  <40.586586, 33.003429, 45.956924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367363, 33.292202, 46.125893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113313, 0.564452, -0.817652,
		-0.828731, -0.400252, -0.391156,
		-0.548056, 0.721936, 0.422425,
		40.202946, 33.508781, 46.252621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869335, 33.053421, 45.607712>,  <40.586586, 33.003429, 45.956924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869335, 33.053421, 45.607712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940487, 33.412186, 45.769657>,  <39.983177, 33.627445, 45.866825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940487, 33.412186, 45.769657>,  <39.869335, 33.053421, 45.607712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940487, 33.412186, 45.769657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293585, 0.441059, -0.848101,
		-0.939237, 0.032000, 0.341775,
		0.177882, 0.896907, 0.404864,
		39.993851, 33.681259, 45.891117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360073, 33.429596, 45.263935>,  <39.869335, 33.053421, 45.607712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360073, 33.429596, 45.263935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.596821, 33.715061, 45.413807>,  <39.738869, 33.886341, 45.503731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.596821, 33.715061, 45.413807>,  <39.360073, 33.429596, 45.263935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596821, 33.715061, 45.413807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159373, 0.559278, -0.813516,
		-0.790123, 0.421779, 0.444756,
		0.591866, 0.713660, 0.374678,
		39.774380, 33.929157, 45.526211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926857, 34.063122, 45.159817>,  <39.360073, 33.429596, 45.263935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926857, 34.063122, 45.159817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.299816, 34.197765, 45.212479>,  <39.523590, 34.278553, 45.244076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.299816, 34.197765, 45.212479>,  <38.926857, 34.063122, 45.159817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299816, 34.197765, 45.212479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098966, 0.588080, -0.802725,
		-0.347630, 0.735428, 0.581635,
		0.932394, 0.336613, 0.131652,
		39.579533, 34.298748, 45.251976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893795, 34.834984, 45.196423>,  <38.926857, 34.063122, 45.159817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893795, 34.834984, 45.196423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263775, 34.729721, 45.086716>,  <39.485764, 34.666565, 45.020889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263775, 34.729721, 45.086716>,  <38.893795, 34.834984, 45.196423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263775, 34.729721, 45.086716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016720, 0.692711, -0.721022,
		0.379728, 0.671493, 0.636321,
		0.924947, -0.263153, -0.274269,
		39.541260, 34.650776, 45.004436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209953, 35.493603, 44.996281>,  <38.893795, 34.834984, 45.196423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209953, 35.493603, 44.996281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405540, 35.189667, 44.824909>,  <39.522892, 35.007305, 44.722088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405540, 35.189667, 44.824909>,  <39.209953, 35.493603, 44.996281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405540, 35.189667, 44.824909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157426, 0.559951, -0.813432,
		0.857977, 0.330299, 0.393419,
		0.488971, -0.759840, -0.428427,
		39.552231, 34.961716, 44.696381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824482, 35.812588, 44.706085>,  <39.209953, 35.493603, 44.996281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824482, 35.812588, 44.706085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.790489, 35.467258, 44.507111>,  <39.770092, 35.260059, 44.387726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.790489, 35.467258, 44.507111>,  <39.824482, 35.812588, 44.706085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790489, 35.467258, 44.507111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282145, 0.457962, -0.843010,
		0.955600, -0.211992, 0.204664,
		-0.084983, -0.863325, -0.497441,
		39.764996, 35.208260, 44.357880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509182, 35.695068, 44.267895>,  <39.824482, 35.812588, 44.706085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509182, 35.695068, 44.267895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.203381, 35.488621, 44.113411>,  <40.019901, 35.364754, 44.020721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.203381, 35.488621, 44.113411>,  <40.509182, 35.695068, 44.267895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203381, 35.488621, 44.113411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290382, 0.259158, -0.921149,
		0.575510, -0.816370, -0.048256,
		-0.764504, -0.516118, -0.386207,
		39.974030, 35.333786, 43.997547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.712763, 27.945761, 34.925610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.413668, 27.774557, 35.128666>,  <30.234211, 27.671835, 35.250500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.413668, 27.774557, 35.128666>,  <30.712763, 27.945761, 34.925610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413668, 27.774557, 35.128666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531780, 0.843830, -0.071834,
		-0.397619, -0.323667, -0.858568,
		-0.747736, -0.428007, 0.507643,
		30.189346, 27.646154, 35.280960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996517, 27.931143, 34.519749>,  <30.712763, 27.945761, 34.925610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996517, 27.931143, 34.519749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902004, 27.942099, 34.908268>,  <29.845297, 27.948671, 35.141380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902004, 27.942099, 34.908268>,  <29.996517, 27.931143, 34.519749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902004, 27.942099, 34.908268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494646, 0.856999, -0.144495,
		-0.836358, -0.514590, -0.188948,
		-0.236285, 0.027387, 0.971298,
		29.831120, 27.950315, 35.199657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272171, 28.106478, 34.658249>,  <29.996517, 27.931143, 34.519749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272171, 28.106478, 34.658249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.446352, 28.206553, 35.004147>,  <29.550861, 28.266598, 35.211685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.446352, 28.206553, 35.004147>,  <29.272171, 28.106478, 34.658249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446352, 28.206553, 35.004147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348805, 0.932456, -0.094131,
		-0.829890, -0.260638, 0.493306,
		0.435452, 0.250186, 0.864748,
		29.576988, 28.281609, 35.263573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712841, 28.333963, 34.831406>,  <29.272171, 28.106478, 34.658249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712841, 28.333963, 34.831406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999662, 28.476349, 35.071114>,  <29.171755, 28.561781, 35.214939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999662, 28.476349, 35.071114>,  <28.712841, 28.333963, 34.831406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999662, 28.476349, 35.071114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490810, 0.868328, 0.071493,
		-0.494915, -0.345393, 0.797347,
		0.717052, 0.355963, 0.599272,
		29.214779, 28.583138, 35.250896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416330, 28.616898, 35.480160>,  <28.712841, 28.333963, 34.831406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416330, 28.616898, 35.480160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.771082, 28.799906, 35.454494>,  <28.983932, 28.909710, 35.439095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.771082, 28.799906, 35.454494>,  <28.416330, 28.616898, 35.480160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771082, 28.799906, 35.454494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441592, 0.880314, 0.173330,
		0.135785, -0.125389, 0.982772,
		0.886881, 0.457520, -0.064163,
		29.037146, 28.937162, 35.435246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369797, 29.157455, 35.978237>,  <28.416330, 28.616898, 35.480160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369797, 29.157455, 35.978237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.694666, 29.255344, 35.766396>,  <28.889587, 29.314077, 35.639290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.694666, 29.255344, 35.766396>,  <28.369797, 29.157455, 35.978237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694666, 29.255344, 35.766396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250771, 0.966069, 0.061836,
		0.526770, 0.082588, 0.845986,
		0.812174, 0.244722, -0.529607,
		28.938318, 29.328762, 35.607513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657452, 29.717501, 36.352467>,  <28.369797, 29.157455, 35.978237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657452, 29.717501, 36.352467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792381, 29.742643, 35.976749>,  <28.873339, 29.757729, 35.751320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792381, 29.742643, 35.976749>,  <28.657452, 29.717501, 36.352467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792381, 29.742643, 35.976749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268334, 0.962796, -0.031938,
		0.902336, 0.262816, 0.341640,
		0.337323, 0.062855, -0.939288,
		28.893578, 29.761499, 35.694962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001123, 30.395779, 36.320675>,  <28.657452, 29.717501, 36.352467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001123, 30.395779, 36.320675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927319, 30.283693, 35.943859>,  <28.883036, 30.216442, 35.717770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927319, 30.283693, 35.943859>,  <29.001123, 30.395779, 36.320675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927319, 30.283693, 35.943859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419927, 0.889078, -0.182210,
		0.888607, 0.361973, -0.281696,
		-0.184494, -0.280205, -0.942044,
		28.871965, 30.199629, 35.661247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311943, 30.897446, 35.941360>,  <29.001123, 30.395779, 36.320675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311943, 30.897446, 35.941360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.032307, 30.751328, 35.695488>,  <28.864525, 30.663656, 35.547966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.032307, 30.751328, 35.695488>,  <29.311943, 30.897446, 35.941360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032307, 30.751328, 35.695488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220021, 0.927841, -0.301168,
		0.680340, -0.075301, -0.729018,
		-0.699090, -0.365296, -0.614679,
		28.822580, 30.641739, 35.511086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445272, 31.148977, 35.231087>,  <29.311943, 30.897446, 35.941360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445272, 31.148977, 35.231087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056847, 31.057911, 35.259926>,  <28.823792, 31.003271, 35.277229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056847, 31.057911, 35.259926>,  <29.445272, 31.148977, 35.231087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056847, 31.057911, 35.259926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238251, 0.902910, -0.357756,
		0.016348, -0.364582, -0.931027,
		-0.971066, -0.227667, 0.072101,
		28.765528, 30.989611, 35.281555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169415, 31.538929, 34.707554>,  <29.445272, 31.148977, 35.231087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169415, 31.538929, 34.707554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846907, 31.443604, 34.924122>,  <28.653402, 31.386408, 35.054062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846907, 31.443604, 34.924122>,  <29.169415, 31.538929, 34.707554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846907, 31.443604, 34.924122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420672, 0.874466, -0.241547,
		-0.415886, -0.422512, -0.805309,
		-0.806272, -0.238315, 0.541417,
		28.605024, 31.372108, 35.086548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613459, 31.687710, 34.267868>,  <29.169415, 31.538929, 34.707554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613459, 31.687710, 34.267868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499361, 31.712036, 34.650478>,  <28.430902, 31.726631, 34.880043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499361, 31.712036, 34.650478>,  <28.613459, 31.687710, 34.267868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499361, 31.712036, 34.650478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379618, 0.909200, -0.171012,
		-0.880072, -0.411894, -0.236257,
		-0.285243, 0.060815, 0.956524,
		28.413788, 31.730280, 34.937435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047270, 32.072857, 34.249569>,  <28.613459, 31.687710, 34.267868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047270, 32.072857, 34.249569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147411, 32.094536, 34.636223>,  <28.207497, 32.107544, 34.868217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147411, 32.094536, 34.636223>,  <28.047270, 32.072857, 34.249569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147411, 32.094536, 34.636223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387258, 0.920685, 0.048679,
		-0.887330, -0.386525, 0.251483,
		0.250353, 0.054194, 0.966637,
		28.222517, 32.110794, 34.926212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543953, 32.566261, 34.454060>,  <28.047270, 32.072857, 34.249569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543953, 32.566261, 34.454060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799376, 32.543083, 34.761017>,  <27.952629, 32.529179, 34.945190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799376, 32.543083, 34.761017>,  <27.543953, 32.566261, 34.454060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799376, 32.543083, 34.761017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121946, 0.976945, 0.175235,
		-0.759853, -0.205478, 0.616767,
		0.638555, -0.057941, 0.767392,
		27.990942, 32.525700, 34.991234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257229, 32.707317, 35.228912>,  <27.543953, 32.566261, 34.454060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257229, 32.707317, 35.228912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.647747, 32.792286, 35.212318>,  <27.882059, 32.843266, 35.202362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.647747, 32.792286, 35.212318>,  <27.257229, 32.707317, 35.228912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647747, 32.792286, 35.212318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187352, 0.925415, 0.329401,
		0.108360, -0.313821, 0.943278,
		0.976297, 0.212419, -0.041483,
		27.940636, 32.856010, 35.199875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347731, 33.172401, 35.811123>,  <27.257229, 32.707317, 35.228912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347731, 33.172401, 35.811123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.695913, 33.221466, 35.620438>,  <27.904823, 33.250904, 35.506027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.695913, 33.221466, 35.620438>,  <27.347731, 33.172401, 35.811123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695913, 33.221466, 35.620438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025620, 0.955850, 0.292734,
		0.491576, -0.267027, 0.828885,
		0.870458, 0.122665, -0.476714,
		27.957050, 33.258266, 35.477425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736252, 33.520996, 36.281200>,  <27.347731, 33.172401, 35.811123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736252, 33.520996, 36.281200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917387, 33.594734, 35.932270>,  <28.026068, 33.638977, 35.722912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917387, 33.594734, 35.932270>,  <27.736252, 33.520996, 36.281200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917387, 33.594734, 35.932270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174157, 0.941258, 0.289315,
		0.874418, -0.282935, 0.394133,
		0.452838, 0.184341, -0.872328,
		28.053238, 33.650036, 35.670570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335754, 33.803730, 36.421467>,  <27.736252, 33.520996, 36.281200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335754, 33.803730, 36.421467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262419, 33.914619, 36.044205>,  <28.218418, 33.981152, 35.817848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262419, 33.914619, 36.044205>,  <28.335754, 33.803730, 36.421467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262419, 33.914619, 36.044205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005627, 0.959101, 0.283007,
		0.983034, 0.057193, -0.174281,
		-0.183339, 0.277225, -0.943151,
		28.207417, 33.997787, 35.761261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831388, 34.386631, 36.449276>,  <28.335754, 33.803730, 36.421467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831388, 34.386631, 36.449276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527458, 34.429874, 36.192848>,  <28.345100, 34.455818, 36.038990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527458, 34.429874, 36.192848>,  <28.831388, 34.386631, 36.449276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527458, 34.429874, 36.192848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105241, 0.952620, 0.285377,
		0.641550, 0.284305, -0.712450,
		-0.759828, 0.108104, -0.641073,
		28.299509, 34.462307, 36.000526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942261, 35.036110, 36.321762>,  <28.831388, 34.386631, 36.449276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942261, 35.036110, 36.321762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.579260, 34.930817, 36.190830>,  <28.361460, 34.867641, 36.112270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.579260, 34.930817, 36.190830>,  <28.942261, 35.036110, 36.321762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579260, 34.930817, 36.190830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331543, 0.927368, 0.173402,
		0.257913, 0.265888, -0.928862,
		-0.907502, -0.263235, -0.327334,
		28.307009, 34.851845, 36.092628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636929, 35.386990, 36.374699>,  <28.942261, 35.036110, 36.321762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636929, 35.386990, 36.374699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.011267, 35.526329, 36.353344>,  <30.235868, 35.609932, 36.340530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.011267, 35.526329, 36.353344>,  <29.636929, 35.386990, 36.374699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011267, 35.526329, 36.353344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309652, -0.885127, -0.347370,
		-0.168259, 0.308553, -0.936207,
		0.935844, 0.348346, -0.053386,
		30.292021, 35.630833, 36.337330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944923, 35.318295, 35.705608>,  <29.636929, 35.386990, 36.374699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944923, 35.318295, 35.705608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282057, 35.320087, 35.920872>,  <30.484337, 35.321163, 36.050030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282057, 35.320087, 35.920872>,  <29.944923, 35.318295, 35.705608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282057, 35.320087, 35.920872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297083, -0.837678, -0.458299,
		0.448749, 0.546147, -0.707353,
		0.842832, 0.004482, 0.538158,
		30.534906, 35.321430, 36.082317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559078, 35.099800, 35.253124>,  <29.944923, 35.318295, 35.705608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559078, 35.099800, 35.253124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647774, 35.028030, 35.636505>,  <30.700991, 34.984970, 35.866535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647774, 35.028030, 35.636505>,  <30.559078, 35.099800, 35.253124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647774, 35.028030, 35.636505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505217, -0.819567, -0.270307,
		0.834019, 0.544166, -0.091081,
		0.221739, -0.179425, 0.958456,
		30.714296, 34.974201, 35.924042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226717, 34.786541, 35.186943>,  <30.559078, 35.099800, 35.253124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226717, 34.786541, 35.186943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122295, 34.694263, 35.561886>,  <31.059643, 34.638897, 35.786850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122295, 34.694263, 35.561886>,  <31.226717, 34.786541, 35.186943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122295, 34.694263, 35.561886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607864, -0.793614, -0.026027,
		0.749902, 0.562990, 0.347404,
		-0.261052, -0.230692, 0.937354,
		31.043980, 34.625057, 35.843094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864223, 34.618092, 35.542160>,  <31.226717, 34.786541, 35.186943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864223, 34.618092, 35.542160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.566626, 34.426979, 35.729008>,  <31.388067, 34.312313, 35.841114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.566626, 34.426979, 35.729008>,  <31.864223, 34.618092, 35.542160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566626, 34.426979, 35.729008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568626, -0.819855, 0.067098,
		0.350909, 0.315535, 0.881647,
		-0.743994, -0.477782, 0.467115,
		31.343428, 34.283646, 35.869141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131611, 34.326435, 36.200005>,  <31.864223, 34.618092, 35.542160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131611, 34.326435, 36.200005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.800230, 34.123955, 36.104153>,  <31.601400, 34.002468, 36.046642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.800230, 34.123955, 36.104153>,  <32.131611, 34.326435, 36.200005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800230, 34.123955, 36.104153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453199, -0.857310, 0.244194,
		-0.329047, 0.093704, 0.939653,
		-0.828456, -0.506201, -0.239629,
		31.551693, 33.972095, 36.032265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097633, 33.651482, 36.698494>,  <32.131611, 34.326435, 36.200005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097633, 33.651482, 36.698494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.794165, 33.542671, 36.461712>,  <31.612083, 33.477386, 36.319641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.794165, 33.542671, 36.461712>,  <32.097633, 33.651482, 36.698494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794165, 33.542671, 36.461712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121777, -0.951852, 0.281333,
		-0.639987, 0.141353, 0.755272,
		-0.758674, -0.272025, -0.591959,
		31.566563, 33.461063, 36.284122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736979, 33.114502, 37.081528>,  <32.097633, 33.651482, 36.698494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736979, 33.114502, 37.081528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.678837, 33.073662, 36.687889>,  <31.643951, 33.049156, 36.451706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.678837, 33.073662, 36.687889>,  <31.736979, 33.114502, 37.081528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678837, 33.073662, 36.687889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270107, -0.960971, 0.059806,
		-0.951795, -0.257118, 0.167260,
		-0.145355, -0.102101, -0.984097,
		31.635231, 33.043030, 36.392658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287868, 32.559196, 37.050339>,  <31.736979, 33.114502, 37.081528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287868, 32.559196, 37.050339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.493828, 32.593830, 36.709190>,  <31.617403, 32.614609, 36.504501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.493828, 32.593830, 36.709190>,  <31.287868, 32.559196, 37.050339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493828, 32.593830, 36.709190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335313, -0.935963, 0.107417,
		-0.788952, -0.341287, -0.510957,
		0.514897, 0.086584, -0.852868,
		31.648296, 32.619804, 36.453331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032078, 31.961393, 36.708748>,  <31.287868, 32.559196, 37.050339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032078, 31.961393, 36.708748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359421, 32.070515, 36.506413>,  <31.555826, 32.135986, 36.385010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359421, 32.070515, 36.506413>,  <31.032078, 31.961393, 36.708748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359421, 32.070515, 36.506413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266632, -0.959924, -0.086331,
		-0.509118, -0.064224, -0.858297,
		0.818356, 0.272802, -0.505839,
		31.604927, 32.152355, 36.354660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067535, 31.691025, 36.103920>,  <31.032078, 31.961393, 36.708748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067535, 31.691025, 36.103920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.454416, 31.758644, 36.179760>,  <31.686544, 31.799215, 36.225262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.454416, 31.758644, 36.179760>,  <31.067535, 31.691025, 36.103920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454416, 31.758644, 36.179760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196799, -0.970606, -0.138541,
		0.160605, 0.171310, -0.972039,
		0.967200, 0.169046, 0.189598,
		31.744576, 31.809359, 36.236641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357735, 31.104969, 35.822063>,  <31.067535, 31.691025, 36.103920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357735, 31.104969, 35.822063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.670647, 31.271376, 36.007523>,  <31.858395, 31.371220, 36.118797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.670647, 31.271376, 36.007523>,  <31.357735, 31.104969, 35.822063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670647, 31.271376, 36.007523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497194, -0.865393, -0.062393,
		0.375281, 0.279331, -0.883821,
		0.782281, 0.416015, 0.463647,
		31.905331, 31.396181, 36.146618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992535, 31.062902, 35.393200>,  <31.357735, 31.104969, 35.822063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992535, 31.062902, 35.393200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.124813, 31.126707, 35.765263>,  <32.204182, 31.164989, 35.988499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.124813, 31.126707, 35.765263>,  <31.992535, 31.062902, 35.393200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124813, 31.126707, 35.765263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473687, -0.880521, -0.017409,
		0.816247, 0.446362, -0.366746,
		0.330698, 0.159513, 0.930158,
		32.224022, 31.174561, 36.044312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724537, 30.992514, 35.351097>,  <31.992535, 31.062902, 35.393200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724537, 30.992514, 35.351097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.610229, 30.936991, 35.730373>,  <32.541645, 30.903677, 35.957939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.610229, 30.936991, 35.730373>,  <32.724537, 30.992514, 35.351097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610229, 30.936991, 35.730373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427476, -0.904020, -0.003510,
		0.857673, 0.404326, 0.317674,
		-0.285764, -0.138808, 0.948194,
		32.524502, 30.895348, 36.014832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396194, 30.681648, 35.526394>,  <32.724537, 30.992514, 35.351097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396194, 30.681648, 35.526394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.178940, 30.619583, 35.856468>,  <33.048588, 30.582344, 36.054512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.178940, 30.619583, 35.856468>,  <33.396194, 30.681648, 35.526394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178940, 30.619583, 35.856468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359188, -0.931249, 0.061309,
		0.758941, 0.329696, 0.561524,
		-0.543132, -0.155163, 0.825186,
		33.015999, 30.573034, 36.104023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859852, 30.314533, 35.965767>,  <33.396194, 30.681648, 35.526394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859852, 30.314533, 35.965767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.486164, 30.230249, 36.080891>,  <33.261951, 30.179680, 36.149967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.486164, 30.230249, 36.080891>,  <33.859852, 30.314533, 35.965767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486164, 30.230249, 36.080891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233365, -0.971281, 0.046408,
		0.269768, 0.110521, 0.956562,
		-0.934219, -0.210709, 0.287813,
		33.205898, 30.167036, 36.167236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893349, 29.918110, 36.520744>,  <33.859852, 30.314533, 35.965767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893349, 29.918110, 36.520744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.540615, 29.832062, 36.352890>,  <33.328976, 29.780434, 36.252178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.540615, 29.832062, 36.352890>,  <33.893349, 29.918110, 36.520744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540615, 29.832062, 36.352890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214649, -0.975462, 0.048987,
		-0.419875, -0.046876, 0.906370,
		-0.881833, -0.215120, -0.419634,
		33.276066, 29.767527, 36.227001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664528, 29.273245, 36.740128>,  <33.893349, 29.918110, 36.520744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664528, 29.273245, 36.740128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.404881, 29.285151, 36.436085>,  <33.249092, 29.292294, 36.253658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.404881, 29.285151, 36.436085>,  <33.664528, 29.273245, 36.740128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404881, 29.285151, 36.436085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080519, -0.990932, -0.107561,
		-0.756418, -0.131023, 0.640832,
		-0.649114, 0.029762, -0.760109,
		33.210148, 29.294079, 36.208054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062675, 28.748266, 36.903782>,  <33.664528, 29.273245, 36.740128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062675, 28.748266, 36.903782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.082119, 28.827738, 36.512238>,  <33.093784, 28.875420, 36.277313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.082119, 28.827738, 36.512238>,  <33.062675, 28.748266, 36.903782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082119, 28.827738, 36.512238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092244, -0.976722, -0.193662,
		-0.994549, -0.080879, -0.065806,
		0.048611, 0.198677, -0.978859,
		33.096703, 28.887341, 36.218578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628834, 28.204920, 36.528522>,  <33.062675, 28.748266, 36.903782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628834, 28.204920, 36.528522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.884609, 28.364189, 36.265442>,  <33.038074, 28.459751, 36.107594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.884609, 28.364189, 36.265442>,  <32.628834, 28.204920, 36.528522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884609, 28.364189, 36.265442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186497, -0.910229, -0.369733,
		-0.745880, 0.113762, -0.656293,
		0.639438, 0.398174, -0.657705,
		33.076439, 28.483641, 36.068130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353725, 27.938555, 35.937462>,  <32.628834, 28.204920, 36.528522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353725, 27.938555, 35.937462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.735889, 28.031345, 35.864391>,  <32.965187, 28.087019, 35.820549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.735889, 28.031345, 35.864391>,  <32.353725, 27.938555, 35.937462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735889, 28.031345, 35.864391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090752, -0.819433, -0.565944,
		-0.280975, 0.524134, -0.803951,
		0.955415, 0.231977, -0.182674,
		33.022514, 28.100939, 35.809589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384880, 27.872223, 35.191639>,  <32.353725, 27.938555, 35.937462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384880, 27.872223, 35.191639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.738094, 27.837872, 35.376190>,  <32.950024, 27.817261, 35.486919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.738094, 27.837872, 35.376190>,  <32.384880, 27.872223, 35.191639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738094, 27.837872, 35.376190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197573, -0.823717, -0.531466,
		0.425686, 0.560460, -0.710406,
		0.883038, -0.085880, 0.461376,
		33.003006, 27.812107, 35.514603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.372005, 32.078743, 47.918953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.003063, 31.935133, 47.976028>,  <42.781696, 31.848969, 48.010273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.003063, 31.935133, 47.976028>,  <43.372005, 32.078743, 47.918953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003063, 31.935133, 47.976028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130718, 0.057539, 0.989748,
		-0.363550, 0.931554, -0.006141,
		-0.922358, -0.359021, 0.142689,
		42.726357, 31.827427, 48.018837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150139, 32.442596, 48.488663>,  <43.372005, 32.078743, 47.918953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150139, 32.442596, 48.488663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.921162, 32.115028, 48.472229>,  <42.783775, 31.918488, 48.462368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.921162, 32.115028, 48.472229>,  <43.150139, 32.442596, 48.488663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921162, 32.115028, 48.472229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242163, -0.216726, 0.945720,
		-0.783370, 0.531419, 0.322374,
		-0.572440, -0.818916, -0.041087,
		42.749428, 31.869354, 48.459904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513405, 32.535152, 49.051159>,  <43.150139, 32.442596, 48.488663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513405, 32.535152, 49.051159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.566135, 32.147675, 48.967018>,  <42.597775, 31.915188, 48.916534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.566135, 32.147675, 48.967018>,  <42.513405, 32.535152, 49.051159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566135, 32.147675, 48.967018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192611, -0.183131, 0.964036,
		-0.972380, -0.167605, 0.162439,
		0.131829, -0.968696, -0.210355,
		42.605682, 31.857065, 48.903912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367115, 32.298653, 49.665382>,  <42.513405, 32.535152, 49.051159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367115, 32.298653, 49.665382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.536514, 31.979382, 49.494007>,  <42.638153, 31.787819, 49.391182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.536514, 31.979382, 49.494007>,  <42.367115, 32.298653, 49.665382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536514, 31.979382, 49.494007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243881, -0.355029, 0.902484,
		-0.872452, -0.486687, 0.044307,
		0.423497, -0.798180, -0.428439,
		42.663563, 31.739927, 49.365475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153805, 31.820801, 49.988201>,  <42.367115, 32.298653, 49.665382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153805, 31.820801, 49.988201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.492546, 31.657347, 49.852051>,  <42.695789, 31.559275, 49.770359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.492546, 31.657347, 49.852051>,  <42.153805, 31.820801, 49.988201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492546, 31.657347, 49.852051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192492, -0.361106, 0.912441,
		-0.495767, -0.838225, -0.227145,
		0.846854, -0.408634, -0.340376,
		42.746601, 31.534756, 49.749939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112740, 31.158079, 50.254322>,  <42.153805, 31.820801, 49.988201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112740, 31.158079, 50.254322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.498806, 31.223049, 50.172276>,  <42.730446, 31.262032, 50.123047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.498806, 31.223049, 50.172276>,  <42.112740, 31.158079, 50.254322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498806, 31.223049, 50.172276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255261, -0.412527, 0.874450,
		0.057419, -0.896347, -0.439618,
		0.965166, 0.162427, -0.205115,
		42.788357, 31.271778, 50.110741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401737, 30.574167, 50.471962>,  <42.112740, 31.158079, 50.254322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401737, 30.574167, 50.471962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.703419, 30.835735, 50.448097>,  <42.884430, 30.992676, 50.433777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.703419, 30.835735, 50.448097>,  <42.401737, 30.574167, 50.471962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703419, 30.835735, 50.448097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391336, -0.374660, 0.840527,
		0.527284, -0.657280, -0.538474,
		0.754207, 0.653921, -0.059666,
		42.929680, 31.031912, 50.430199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912708, 30.135017, 50.650406>,  <42.401737, 30.574167, 50.471962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912708, 30.135017, 50.650406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.048378, 30.504805, 50.720058>,  <43.129780, 30.726677, 50.761852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.048378, 30.504805, 50.720058>,  <42.912708, 30.135017, 50.650406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048378, 30.504805, 50.720058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338717, -0.292702, 0.894201,
		0.877630, -0.244304, -0.412409,
		0.339170, 0.924468, 0.174135,
		43.150127, 30.782145, 50.772297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572002, 30.068352, 51.000534>,  <42.912708, 30.135017, 50.650406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572002, 30.068352, 51.000534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.415867, 30.427040, 51.083984>,  <43.322186, 30.642254, 51.134056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.415867, 30.427040, 51.083984>,  <43.572002, 30.068352, 51.000534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415867, 30.427040, 51.083984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327358, -0.076618, 0.941789,
		0.860507, 0.435914, -0.263642,
		-0.390339, 0.896721, 0.208630,
		43.298763, 30.696056, 51.146572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069843, 30.359776, 51.476974>,  <43.572002, 30.068352, 51.000534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069843, 30.359776, 51.476974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.727123, 30.556841, 51.537876>,  <43.521492, 30.675079, 51.574417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.727123, 30.556841, 51.537876>,  <44.069843, 30.359776, 51.476974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727123, 30.556841, 51.537876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165703, -0.016553, 0.986037,
		0.488304, 0.870063, -0.067453,
		-0.856798, 0.492663, 0.152255,
		43.470085, 30.704639, 51.583553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229961, 30.752901, 51.992821>,  <44.069843, 30.359776, 51.476974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229961, 30.752901, 51.992821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.832268, 30.795023, 51.984806>,  <43.593651, 30.820297, 51.979996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.832268, 30.795023, 51.984806>,  <44.229961, 30.752901, 51.992821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832268, 30.795023, 51.984806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023149, -0.028403, 0.999328,
		0.104666, 0.994034, 0.030677,
		-0.994238, 0.105306, -0.020038,
		43.533997, 30.826614, 51.978794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176983, 31.067408, 52.578705>,  <44.229961, 30.752901, 51.992821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176983, 31.067408, 52.578705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.807442, 30.932892, 52.505596>,  <43.585716, 30.852182, 52.461731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.807442, 30.932892, 52.505596>,  <44.176983, 31.067408, 52.578705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807442, 30.932892, 52.505596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174892, -0.053866, 0.983113,
		-0.340454, 0.940218, -0.009050,
		-0.923853, -0.336287, -0.182776,
		43.530285, 30.832006, 52.450764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535831, 31.503222, 53.005489>,  <44.176983, 31.067408, 52.578705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535831, 31.503222, 53.005489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.486298, 31.111851, 52.939339>,  <43.456577, 30.877029, 52.899647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.486298, 31.111851, 52.939339>,  <43.535831, 31.503222, 53.005489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486298, 31.111851, 52.939339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372468, -0.108640, 0.921664,
		-0.919746, 0.175732, -0.350979,
		-0.123836, -0.978425, -0.165376,
		43.449146, 30.818323, 52.889725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877850, 31.522415, 53.143070>,  <43.535831, 31.503222, 53.005489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877850, 31.522415, 53.143070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.047085, 31.161785, 53.179188>,  <43.148628, 30.945406, 53.200859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.047085, 31.161785, 53.179188>,  <42.877850, 31.522415, 53.143070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047085, 31.161785, 53.179188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376716, -0.084397, 0.922476,
		-0.824063, -0.424306, -0.375346,
		0.423091, -0.901577, 0.090294,
		43.174011, 30.891312, 53.206276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249256, 31.145451, 53.362644>,  <42.877850, 31.522415, 53.143070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249256, 31.145451, 53.362644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.978737, 31.315783, 53.603073>,  <41.816425, 31.417982, 53.747330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.978737, 31.315783, 53.603073>,  <42.249256, 31.145451, 53.362644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978737, 31.315783, 53.603073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566665, 0.220601, -0.793868,
		-0.470651, -0.877498, 0.092111,
		-0.676298, 0.425831, 0.601074,
		41.775848, 31.443531, 53.783394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581738, 30.872355, 53.237289>,  <42.249256, 31.145451, 53.362644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581738, 30.872355, 53.237289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.574505, 31.249557, 53.370205>,  <41.570164, 31.475880, 53.449955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.574505, 31.249557, 53.370205>,  <41.581738, 30.872355, 53.237289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574505, 31.249557, 53.370205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455807, 0.288019, -0.842191,
		-0.889895, -0.166688, 0.424620,
		-0.018084, 0.943006, 0.332284,
		41.569080, 31.532459, 53.469891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798447, 31.179316, 53.152573>,  <41.581738, 30.872355, 53.237289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798447, 31.179316, 53.152573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.040771, 31.496674, 53.176285>,  <41.186169, 31.687088, 53.190514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.040771, 31.496674, 53.176285>,  <40.798447, 31.179316, 53.152573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040771, 31.496674, 53.176285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511567, 0.445516, -0.734721,
		-0.609332, 0.414781, 0.675774,
		0.605817, 0.793393, 0.059280,
		41.222515, 31.734692, 53.194069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324509, 31.781425, 53.232063>,  <40.798447, 31.179316, 53.152573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324509, 31.781425, 53.232063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.686031, 31.897343, 53.106110>,  <40.902946, 31.966892, 53.030537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.686031, 31.897343, 53.106110>,  <40.324509, 31.781425, 53.232063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686031, 31.897343, 53.106110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409985, 0.375490, -0.831216,
		-0.122647, 0.880356, 0.458182,
		0.903809, 0.289794, -0.314880,
		40.957172, 31.984282, 53.011646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159142, 32.339577, 52.867729>,  <40.324509, 31.781425, 53.232063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159142, 32.339577, 52.867729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.531799, 32.263271, 52.744026>,  <40.755394, 32.217487, 52.669804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.531799, 32.263271, 52.744026>,  <40.159142, 32.339577, 52.867729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531799, 32.263271, 52.744026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187808, 0.475804, -0.859266,
		0.311061, 0.858616, 0.407456,
		0.931649, -0.190761, -0.309259,
		40.811295, 32.206043, 52.651249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499733, 32.966686, 52.729099>,  <40.159142, 32.339577, 52.867729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499733, 32.966686, 52.729099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.698589, 32.694565, 52.513680>,  <40.817905, 32.531292, 52.384426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.698589, 32.694565, 52.513680>,  <40.499733, 32.966686, 52.729099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698589, 32.694565, 52.513680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184549, 0.523580, -0.831748,
		0.847815, 0.512887, 0.134745,
		0.497143, -0.680301, -0.538552,
		40.847733, 32.490475, 52.352116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837898, 33.307327, 52.180813>,  <40.499733, 32.966686, 52.729099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837898, 33.307327, 52.180813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.810856, 32.934216, 52.039188>,  <40.794632, 32.710350, 51.954216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.810856, 32.934216, 52.039188>,  <40.837898, 33.307327, 52.180813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810856, 32.934216, 52.039188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215330, 0.360146, -0.907705,
		0.974199, 0.014875, -0.225202,
		-0.067604, -0.932778, -0.354057,
		40.790573, 32.654381, 51.932972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304440, 33.227413, 51.545444>,  <40.837898, 33.307327, 52.180813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304440, 33.227413, 51.545444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.071060, 32.904369, 51.511143>,  <40.931034, 32.710541, 51.490562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.071060, 32.904369, 51.511143>,  <41.304440, 33.227413, 51.545444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071060, 32.904369, 51.511143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236755, 0.270132, -0.933261,
		0.776877, -0.524206, -0.348813,
		-0.583447, -0.807612, -0.085751,
		40.896027, 32.662086, 51.485416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576748, 32.803429, 50.865143>,  <41.304440, 33.227413, 51.545444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576748, 32.803429, 50.865143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.208179, 32.663288, 50.932354>,  <40.987038, 32.579205, 50.972679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.208179, 32.663288, 50.932354>,  <41.576748, 32.803429, 50.865143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208179, 32.663288, 50.932354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260653, 0.236618, -0.935987,
		0.288165, -0.906238, -0.309345,
		-0.921423, -0.350350, 0.168028,
		40.931751, 32.558186, 50.982761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455460, 32.325237, 50.247108>,  <41.576748, 32.803429, 50.865143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455460, 32.325237, 50.247108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.096523, 32.416286, 50.398354>,  <40.881161, 32.470917, 50.489101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.096523, 32.416286, 50.398354>,  <41.455460, 32.325237, 50.247108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096523, 32.416286, 50.398354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354246, 0.139526, -0.924685,
		-0.263240, -0.963700, -0.044565,
		-0.897337, 0.227627, 0.378116,
		40.827320, 32.484573, 50.511787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042961, 31.808794, 49.965637>,  <41.455460, 32.325237, 50.247108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042961, 31.808794, 49.965637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.811485, 32.108868, 50.093597>,  <40.672600, 32.288914, 50.170376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.811485, 32.108868, 50.093597>,  <41.042961, 31.808794, 49.965637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811485, 32.108868, 50.093597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375647, 0.102983, -0.921023,
		-0.723882, -0.653159, 0.222210,
		-0.578691, 0.750185, 0.319905,
		40.637878, 32.333923, 50.189568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344326, 31.642189, 49.640511>,  <41.042961, 31.808794, 49.965637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344326, 31.642189, 49.640511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354000, 32.029087, 49.741589>,  <40.359802, 32.261227, 49.802235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354000, 32.029087, 49.741589>,  <40.344326, 31.642189, 49.640511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354000, 32.029087, 49.741589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299691, 0.248154, -0.921198,
		-0.953730, -0.053451, 0.295876,
		0.024184, 0.967245, 0.252691,
		40.361256, 32.319260, 49.817394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671513, 31.947142, 49.360924>,  <40.344326, 31.642189, 49.640511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671513, 31.947142, 49.360924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.954449, 32.228756, 49.386234>,  <40.124210, 32.397724, 49.401421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.954449, 32.228756, 49.386234>,  <39.671513, 31.947142, 49.360924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954449, 32.228756, 49.386234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262297, 0.344543, -0.901382,
		-0.656410, 0.620984, 0.428375,
		0.707338, 0.704038, 0.063279,
		40.166649, 32.439968, 49.405216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274727, 32.523243, 49.233978>,  <39.671513, 31.947142, 49.360924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274727, 32.523243, 49.233978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.649338, 32.644764, 49.163982>,  <39.874104, 32.717674, 49.121986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.649338, 32.644764, 49.163982>,  <39.274727, 32.523243, 49.233978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649338, 32.644764, 49.163982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290283, 0.392044, -0.872948,
		-0.196598, 0.868336, 0.455348,
		0.936528, 0.303800, -0.174988,
		39.930298, 32.735905, 49.111485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725494, 33.149109, 49.448498>,  <39.274727, 32.523243, 49.233978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725494, 33.149109, 49.448498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346893, 33.264706, 49.391060>,  <38.119732, 33.334064, 49.356598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346893, 33.264706, 49.391060>,  <38.725494, 33.149109, 49.448498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346893, 33.264706, 49.391060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148820, 0.003946, 0.988856,
		0.286337, 0.957324, 0.039273,
		-0.946501, 0.288991, -0.143599,
		38.062943, 33.351402, 49.347980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623577, 33.690315, 49.902454>,  <38.725494, 33.149109, 49.448498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623577, 33.690315, 49.902454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.275379, 33.509663, 49.824219>,  <38.066460, 33.401272, 49.777279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.275379, 33.509663, 49.824219>,  <38.623577, 33.690315, 49.902454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275379, 33.509663, 49.824219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096205, -0.233594, 0.967563,
		-0.482675, 0.861080, 0.159894,
		-0.870499, -0.451636, -0.195590,
		38.014229, 33.374172, 49.765541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042187, 34.118965, 50.204689>,  <38.623577, 33.690315, 49.902454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042187, 34.118965, 50.204689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.889454, 33.755268, 50.138371>,  <37.797813, 33.537052, 50.098579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.889454, 33.755268, 50.138371>,  <38.042187, 34.118965, 50.204689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889454, 33.755268, 50.138371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245368, -0.073225, 0.966660,
		-0.891067, 0.409781, -0.195139,
		-0.381830, -0.909240, -0.165796,
		37.774906, 33.482494, 50.088631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355427, 34.052635, 50.553917>,  <38.042187, 34.118965, 50.204689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355427, 34.052635, 50.553917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509144, 33.687271, 50.500244>,  <37.601376, 33.468052, 50.468040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509144, 33.687271, 50.500244>,  <37.355427, 34.052635, 50.553917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509144, 33.687271, 50.500244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226624, -0.234232, 0.945398,
		-0.894962, -0.332904, -0.297014,
		0.384297, -0.913406, -0.134185,
		37.624432, 33.413250, 50.459988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809097, 33.671268, 50.947155>,  <37.355427, 34.052635, 50.553917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809097, 33.671268, 50.947155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143421, 33.456406, 50.901741>,  <37.344013, 33.327488, 50.874493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143421, 33.456406, 50.901741>,  <36.809097, 33.671268, 50.947155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143421, 33.456406, 50.901741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017346, -0.232532, 0.972434,
		-0.548748, -0.810798, -0.203670,
		0.835807, -0.537154, -0.113537,
		37.394165, 33.295258, 50.867680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707008, 32.991066, 51.285847>,  <36.809097, 33.671268, 50.947155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707008, 32.991066, 51.285847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093269, 33.093552, 51.268536>,  <37.325024, 33.155045, 51.258148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093269, 33.093552, 51.268536>,  <36.707008, 32.991066, 51.285847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093269, 33.093552, 51.268536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100321, -0.213974, 0.971674,
		0.239698, -0.942639, -0.232328,
		0.965650, 0.256216, -0.043277,
		37.382965, 33.170418, 51.255554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026951, 32.478672, 51.651478>,  <36.707008, 32.991066, 51.285847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026951, 32.478672, 51.651478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297817, 32.772430, 51.633087>,  <37.460335, 32.948685, 51.622051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297817, 32.772430, 51.633087>,  <37.026951, 32.478672, 51.651478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297817, 32.772430, 51.633087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331288, -0.248482, 0.910222,
		0.657038, -0.631601, -0.411559,
		0.677163, 0.734395, -0.045980,
		37.500965, 32.992748, 51.619293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182255, 31.913887, 51.132252>,  <37.026951, 32.478672, 51.651478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182255, 31.913887, 51.132252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877731, 31.678223, 51.240543>,  <36.695015, 31.536825, 51.305519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877731, 31.678223, 51.240543>,  <37.182255, 31.913887, 51.132252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877731, 31.678223, 51.240543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494996, 0.258430, -0.829574,
		0.418788, -0.765574, -0.488379,
		-0.761312, -0.589161, 0.270729,
		36.649338, 31.501474, 51.321762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055164, 31.584463, 50.452168>,  <37.182255, 31.913887, 51.132252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055164, 31.584463, 50.452168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749996, 31.538355, 50.706619>,  <36.566895, 31.510689, 50.859291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749996, 31.538355, 50.706619>,  <37.055164, 31.584463, 50.452168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749996, 31.538355, 50.706619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642208, 0.022080, -0.766213,
		0.074281, -0.993088, -0.090878,
		-0.762923, -0.115278, 0.636128,
		36.521118, 31.503773, 50.897457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682289, 31.139303, 50.107555>,  <37.055164, 31.584463, 50.452168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682289, 31.139303, 50.107555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448566, 31.322939, 50.375233>,  <36.308334, 31.433121, 50.535839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448566, 31.322939, 50.375233>,  <36.682289, 31.139303, 50.107555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448566, 31.322939, 50.375233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718828, 0.089938, -0.689345,
		-0.376658, -0.883825, 0.277456,
		-0.584307, 0.459091, 0.669194,
		36.273273, 31.460667, 50.575993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144691, 30.754230, 50.059547>,  <36.682289, 31.139303, 50.107555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144691, 30.754230, 50.059547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026642, 31.105852, 50.209305>,  <35.955814, 31.316824, 50.299160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026642, 31.105852, 50.209305>,  <36.144691, 30.754230, 50.059547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026642, 31.105852, 50.209305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551736, 0.163123, -0.817911,
		-0.780059, -0.447948, 0.436864,
		-0.295119, 0.879053, 0.374395,
		35.938107, 31.369568, 50.321625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526459, 30.846548, 49.685055>,  <36.144691, 30.754230, 50.059547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526459, 30.846548, 49.685055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593231, 31.201172, 49.857632>,  <35.633297, 31.413946, 49.961178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593231, 31.201172, 49.857632>,  <35.526459, 30.846548, 49.685055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593231, 31.201172, 49.857632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524513, 0.450378, -0.722528,
		-0.834876, -0.105680, 0.540197,
		0.166936, 0.886562, 0.431440,
		35.643311, 31.467140, 49.987064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842140, 31.180504, 49.813042>,  <35.526459, 30.846548, 49.685055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842140, 31.180504, 49.813042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132774, 31.453890, 49.784912>,  <35.307156, 31.617922, 49.768036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132774, 31.453890, 49.784912>,  <34.842140, 31.180504, 49.813042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132774, 31.453890, 49.784912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416645, 0.356910, -0.836075,
		-0.546330, 0.636781, 0.544089,
		0.726588, 0.683465, -0.070321,
		35.350750, 31.658930, 49.763817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485485, 31.695751, 49.639950>,  <34.842140, 31.180504, 49.813042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485485, 31.695751, 49.639950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856445, 31.788555, 49.522579>,  <35.079021, 31.844238, 49.452156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856445, 31.788555, 49.522579>,  <34.485485, 31.695751, 49.639950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856445, 31.788555, 49.522579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310566, 0.040311, -0.949696,
		-0.208512, 0.971877, 0.109440,
		0.927400, 0.232012, -0.293427,
		35.134666, 31.858158, 49.434551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.522636, 29.306629, 51.745125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.890732, 29.452314, 51.687843>,  <41.111591, 29.539724, 51.653477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.890732, 29.452314, 51.687843>,  <40.522636, 29.306629, 51.745125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890732, 29.452314, 51.687843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203702, 0.133338, -0.969911,
		-0.334159, 0.921722, 0.196894,
		0.920241, 0.364212, -0.143201,
		41.166805, 29.561579, 51.644882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435223, 29.641500, 51.179596>,  <40.522636, 29.306629, 51.745125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435223, 29.641500, 51.179596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.833515, 29.673296, 51.198345>,  <41.072491, 29.692373, 51.209595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.833515, 29.673296, 51.198345>,  <40.435223, 29.641500, 51.179596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833515, 29.673296, 51.198345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033540, 0.161454, -0.986310,
		-0.085969, 0.983674, 0.158099,
		0.995733, 0.079489, 0.046872,
		41.132236, 29.697144, 51.212406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683651, 30.306702, 51.049843>,  <40.435223, 29.641500, 51.179596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683651, 30.306702, 51.049843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.964344, 30.042234, 50.943687>,  <41.132759, 29.883554, 50.879993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.964344, 30.042234, 50.943687>,  <40.683651, 30.306702, 51.049843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964344, 30.042234, 50.943687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094395, 0.282939, -0.954482,
		0.706162, 0.694839, 0.136136,
		0.701730, -0.661169, -0.265390,
		41.174862, 29.843884, 50.864071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980984, 30.621733, 50.456406>,  <40.683651, 30.306702, 51.049843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980984, 30.621733, 50.456406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.094574, 30.240002, 50.419273>,  <41.162727, 30.010963, 50.396996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.094574, 30.240002, 50.419273>,  <40.980984, 30.621733, 50.456406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094574, 30.240002, 50.419273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212550, 0.031750, -0.976634,
		0.934976, 0.297072, -0.193826,
		0.283976, -0.954327, -0.092828,
		41.179768, 29.953703, 50.391426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170361, 30.524870, 49.779175>,  <40.980984, 30.621733, 50.456406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170361, 30.524870, 49.779175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.182812, 30.137144, 49.876713>,  <41.190281, 29.904509, 49.935234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.182812, 30.137144, 49.876713>,  <41.170361, 30.524870, 49.779175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182812, 30.137144, 49.876713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112054, -0.245806, -0.962821,
		0.993214, 0.002648, -0.116268,
		0.031129, -0.969316, 0.243841,
		41.192150, 29.846350, 49.949863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690956, 30.162834, 49.398632>,  <41.170361, 30.524870, 49.779175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690956, 30.162834, 49.398632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.430214, 29.878031, 49.503033>,  <41.273769, 29.707148, 49.565674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.430214, 29.878031, 49.503033>,  <41.690956, 30.162834, 49.398632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430214, 29.878031, 49.503033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165650, -0.202170, -0.965240,
		0.740027, -0.672435, 0.013842,
		-0.651860, -0.712010, 0.261000,
		41.234657, 29.664429, 49.581333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792244, 29.525192, 48.996677>,  <41.690956, 30.162834, 49.398632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792244, 29.525192, 48.996677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.410213, 29.496174, 49.111618>,  <41.180996, 29.478764, 49.180580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.410213, 29.496174, 49.111618>,  <41.792244, 29.525192, 48.996677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410213, 29.496174, 49.111618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222263, -0.466027, -0.856399,
		0.196040, -0.881792, 0.428966,
		-0.955075, -0.072545, 0.287349,
		41.123692, 29.474411, 49.197823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610493, 28.874086, 48.792404>,  <41.792244, 29.525192, 48.996677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610493, 28.874086, 48.792404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.253628, 29.045237, 48.850338>,  <41.039509, 29.147926, 48.885098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.253628, 29.045237, 48.850338>,  <41.610493, 28.874086, 48.792404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253628, 29.045237, 48.850338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344481, -0.437037, -0.830862,
		-0.292209, -0.791152, 0.537301,
		-0.892159, 0.427875, 0.144830,
		40.985981, 29.173599, 48.893787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141411, 28.322399, 48.584171>,  <41.610493, 28.874086, 48.792404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141411, 28.322399, 48.584171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.939102, 28.667206, 48.570759>,  <40.817719, 28.874090, 48.562710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.939102, 28.667206, 48.570759>,  <41.141411, 28.322399, 48.584171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939102, 28.667206, 48.570759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453164, -0.298560, -0.839943,
		-0.734058, -0.409619, 0.541637,
		-0.505767, 0.862017, -0.033536,
		40.787373, 28.925812, 48.560699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399292, 28.204191, 48.465832>,  <41.141411, 28.322399, 48.584171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399292, 28.204191, 48.465832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.470249, 28.573919, 48.330681>,  <40.512825, 28.795757, 48.249592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.470249, 28.573919, 48.330681>,  <40.399292, 28.204191, 48.465832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470249, 28.573919, 48.330681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473154, -0.220935, -0.852827,
		-0.862935, 0.311156, 0.398153,
		0.177397, 0.924321, -0.337877,
		40.523468, 28.851215, 48.229317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754341, 28.368338, 48.273102>,  <40.399292, 28.204191, 48.465832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754341, 28.368338, 48.273102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.962528, 28.658007, 48.092136>,  <40.087440, 28.831808, 47.983555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.962528, 28.658007, 48.092136>,  <39.754341, 28.368338, 48.273102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962528, 28.658007, 48.092136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291004, -0.347684, -0.891310,
		-0.802761, 0.595557, 0.029778,
		0.520472, 0.724174, -0.452416,
		40.118671, 28.875259, 47.956413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355019, 28.804878, 47.845341>,  <39.754341, 28.368338, 48.273102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355019, 28.804878, 47.845341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.725163, 28.840010, 47.697834>,  <39.947250, 28.861088, 47.609329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.725163, 28.840010, 47.697834>,  <39.355019, 28.804878, 47.845341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725163, 28.840010, 47.697834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368245, -0.022703, -0.929451,
		-0.090004, 0.995877, 0.011334,
		0.925362, 0.087828, -0.368771,
		40.002769, 28.866358, 47.587204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772903, 29.164785, 47.823059>,  <39.355019, 28.804878, 47.845341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772903, 29.164785, 47.823059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.384350, 29.164238, 47.728050>,  <38.151218, 29.163910, 47.671043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.384350, 29.164238, 47.728050>,  <38.772903, 29.164785, 47.823059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384350, 29.164238, 47.728050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207356, -0.482857, 0.850795,
		-0.115854, 0.875698, 0.468754,
		-0.971381, -0.001369, -0.237522,
		38.092934, 29.163828, 47.656796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344833, 29.587191, 48.362286>,  <38.772903, 29.164785, 47.823059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344833, 29.587191, 48.362286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.076397, 29.351625, 48.182144>,  <37.915333, 29.210287, 48.074059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.076397, 29.351625, 48.182144>,  <38.344833, 29.587191, 48.362286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076397, 29.351625, 48.182144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329432, -0.307310, 0.892768,
		-0.664160, 0.747490, 0.012227,
		-0.671093, -0.588913, -0.450350,
		37.875069, 29.174952, 48.047039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900394, 29.588877, 48.885113>,  <38.344833, 29.587191, 48.362286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900394, 29.588877, 48.885113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.800930, 29.276640, 48.655731>,  <37.741253, 29.089298, 48.518105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.800930, 29.276640, 48.655731>,  <37.900394, 29.588877, 48.885113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800930, 29.276640, 48.655731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294198, -0.503208, 0.812545,
		-0.922830, 0.370755, -0.104521,
		-0.248660, -0.780591, -0.573451,
		37.726334, 29.042463, 48.483696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240353, 29.502941, 49.021069>,  <37.900394, 29.588877, 48.885113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240353, 29.502941, 49.021069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.377934, 29.154915, 48.879826>,  <37.460480, 28.946098, 48.795078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.377934, 29.154915, 48.879826>,  <37.240353, 29.502941, 49.021069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377934, 29.154915, 48.879826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327472, -0.463589, 0.823315,
		-0.880035, -0.167545, -0.444373,
		0.343949, -0.870065, -0.353108,
		37.481117, 28.893896, 48.773891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725857, 28.977085, 49.253101>,  <37.240353, 29.502941, 49.021069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725857, 28.977085, 49.253101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.036938, 28.746805, 49.152103>,  <37.223587, 28.608637, 49.091503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.036938, 28.746805, 49.152103>,  <36.725857, 28.977085, 49.253101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036938, 28.746805, 49.152103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174073, -0.583170, 0.793481,
		-0.604058, -0.573134, -0.553743,
		0.777697, -0.575700, -0.252501,
		37.270248, 28.574097, 49.076355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535301, 28.400711, 49.425213>,  <36.725857, 28.977085, 49.253101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535301, 28.400711, 49.425213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.931503, 28.349117, 49.406197>,  <37.169224, 28.318161, 49.394787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.931503, 28.349117, 49.406197>,  <36.535301, 28.400711, 49.425213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931503, 28.349117, 49.406197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035639, -0.574973, 0.817396,
		-0.132765, -0.807941, -0.574111,
		0.990506, -0.128982, -0.047543,
		37.228657, 28.310423, 49.391933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633831, 27.683765, 49.584568>,  <36.535301, 28.400711, 49.425213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633831, 27.683765, 49.584568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989254, 27.858690, 49.640038>,  <37.202507, 27.963646, 49.673321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989254, 27.858690, 49.640038>,  <36.633831, 27.683765, 49.584568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989254, 27.858690, 49.640038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207616, -0.652855, 0.728475,
		0.409107, -0.618497, -0.670890,
		0.888553, 0.437312, 0.138678,
		37.255821, 27.989883, 49.681641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006424, 27.186691, 49.900097>,  <36.633831, 27.683765, 49.584568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006424, 27.186691, 49.900097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239059, 27.506004, 49.962711>,  <37.378639, 27.697592, 50.000278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239059, 27.506004, 49.962711>,  <37.006424, 27.186691, 49.900097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239059, 27.506004, 49.962711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376889, -0.434940, 0.817791,
		0.720910, -0.416621, -0.553819,
		0.581587, 0.798282, 0.156533,
		37.413536, 27.745489, 50.009670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678764, 26.843927, 50.224926>,  <37.006424, 27.186691, 49.900097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678764, 26.843927, 50.224926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.640789, 27.233566, 50.307022>,  <37.618004, 27.467350, 50.356277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.640789, 27.233566, 50.307022>,  <37.678764, 26.843927, 50.224926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640789, 27.233566, 50.307022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292585, -0.169758, 0.941051,
		0.951515, 0.149395, -0.268889,
		-0.094943, 0.974096, 0.205238,
		37.612305, 27.525795, 50.368595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330318, 27.102100, 50.422695>,  <37.678764, 26.843927, 50.224926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330318, 27.102100, 50.422695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.043865, 27.333519, 50.578865>,  <37.871994, 27.472370, 50.672569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.043865, 27.333519, 50.578865>,  <38.330318, 27.102100, 50.422695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043865, 27.333519, 50.578865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410843, -0.102783, 0.905894,
		0.564230, 0.809148, -0.164084,
		-0.716137, 0.578545, 0.390427,
		37.829025, 27.507082, 50.695992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632145, 27.432085, 51.008389>,  <38.330318, 27.102100, 50.422695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632145, 27.432085, 51.008389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.242092, 27.497025, 51.068726>,  <38.008060, 27.535988, 51.104927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.242092, 27.497025, 51.068726>,  <38.632145, 27.432085, 51.008389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242092, 27.497025, 51.068726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111497, -0.228818, 0.967063,
		0.191518, 0.959836, 0.205027,
		-0.975135, 0.162351, 0.150841,
		37.949551, 27.545731, 51.113979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529057, 28.013075, 51.434048>,  <38.632145, 27.432085, 51.008389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529057, 28.013075, 51.434048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.193256, 27.803850, 51.492897>,  <37.991776, 27.678316, 51.528206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.193256, 27.803850, 51.492897>,  <38.529057, 28.013075, 51.434048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193256, 27.803850, 51.492897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247258, -0.126651, 0.960637,
		-0.483838, 0.842833, 0.235655,
		-0.839502, -0.523060, 0.147119,
		37.941406, 27.646933, 51.537033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233891, 28.395075, 51.952560>,  <38.529057, 28.013075, 51.434048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233891, 28.395075, 51.952560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.096554, 28.019392, 51.951767>,  <38.014153, 27.793982, 51.951290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.096554, 28.019392, 51.951767>,  <38.233891, 28.395075, 51.952560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096554, 28.019392, 51.951767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367924, -0.136448, 0.919790,
		-0.864145, 0.315073, 0.392406,
		-0.343344, -0.939208, -0.001988,
		37.993549, 27.737629, 51.951172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069962, 28.270369, 52.611004>,  <38.233891, 28.395075, 51.952560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069962, 28.270369, 52.611004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.057362, 27.890608, 52.486012>,  <38.049801, 27.662752, 52.411015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.057362, 27.890608, 52.486012>,  <38.069962, 28.270369, 52.611004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057362, 27.890608, 52.486012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228409, -0.311204, 0.922486,
		-0.973056, -0.042320, 0.226653,
		-0.031496, -0.949400, -0.312485,
		38.047913, 27.605787, 52.392265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559261, 28.820871, 52.482719>,  <38.069962, 28.270369, 52.611004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559261, 28.820871, 52.482719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527828, 29.065495, 52.797634>,  <37.508968, 29.212269, 52.986584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527828, 29.065495, 52.797634>,  <37.559261, 28.820871, 52.482719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527828, 29.065495, 52.797634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403444, 0.702659, -0.586092,
		-0.911623, -0.363685, 0.191509,
		-0.078587, 0.611558, 0.787287,
		37.504253, 29.248962, 53.033821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881199, 29.080265, 52.470886>,  <37.559261, 28.820871, 52.482719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881199, 29.080265, 52.470886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.098473, 29.355114, 52.663891>,  <37.228836, 29.520023, 52.779694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.098473, 29.355114, 52.663891>,  <36.881199, 29.080265, 52.470886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098473, 29.355114, 52.663891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473835, 0.725289, -0.499436,
		-0.693130, 0.042657, 0.719549,
		0.543185, 0.687122, 0.482507,
		37.261429, 29.561251, 52.808643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457672, 29.534811, 52.907864>,  <36.881199, 29.080265, 52.470886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457672, 29.534811, 52.907864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.790684, 29.728411, 52.800056>,  <36.990490, 29.844570, 52.735371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.790684, 29.728411, 52.800056>,  <36.457672, 29.534811, 52.907864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790684, 29.728411, 52.800056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553456, 0.747879, -0.366558,
		0.024157, 0.454338, 0.890502,
		0.832528, 0.483998, -0.269523,
		37.040443, 29.873610, 52.719200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223793, 30.188803, 52.949886>,  <36.457672, 29.534811, 52.907864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223793, 30.188803, 52.949886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.560791, 30.238905, 52.740311>,  <36.762989, 30.268967, 52.614567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.560791, 30.238905, 52.740311>,  <36.223793, 30.188803, 52.949886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560791, 30.238905, 52.740311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459670, 0.674304, -0.577943,
		0.280903, 0.727753, 0.625674,
		0.842494, 0.125258, -0.523940,
		36.813538, 30.276482, 52.583130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448483, 30.936150, 53.007401>,  <36.223793, 30.188803, 52.949886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448483, 30.936150, 53.007401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.657917, 30.786413, 52.701267>,  <36.783577, 30.696571, 52.517590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.657917, 30.786413, 52.701267>,  <36.448483, 30.936150, 53.007401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657917, 30.786413, 52.701267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184824, 0.827004, -0.530947,
		0.831686, 0.419446, 0.363818,
		0.523582, -0.374339, -0.765331,
		36.814991, 30.674112, 52.471668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819839, 31.476616, 52.739674>,  <36.448483, 30.936150, 53.007401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819839, 31.476616, 52.739674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.804424, 31.211220, 52.440796>,  <36.795177, 31.051981, 52.261471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.804424, 31.211220, 52.440796>,  <36.819839, 31.476616, 52.739674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804424, 31.211220, 52.440796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227803, 0.733890, -0.639931,
		0.972944, 0.145552, -0.179427,
		-0.038536, -0.663491, -0.747191,
		36.792862, 31.012173, 52.216637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174240, 31.766863, 52.038418>,  <36.819839, 31.476616, 52.739674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174240, 31.766863, 52.038418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.916759, 31.481970, 51.926434>,  <36.762272, 31.311035, 51.859241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.916759, 31.481970, 51.926434>,  <37.174240, 31.766863, 52.038418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916759, 31.481970, 51.926434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320690, 0.583204, -0.746345,
		0.694845, -0.390641, -0.603813,
		-0.643699, -0.712231, -0.279961,
		36.723648, 31.268301, 51.842445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745758, 32.187428, 51.681843>,  <37.174240, 31.766863, 52.038418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745758, 32.187428, 51.681843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825504, 32.572395, 51.755592>,  <37.873352, 32.803375, 51.799843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825504, 32.572395, 51.755592>,  <37.745758, 32.187428, 51.681843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825504, 32.572395, 51.755592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530616, -0.264204, 0.805384,
		0.823832, -0.062738, -0.563351,
		0.199368, 0.962424, 0.184369,
		37.885315, 32.861122, 51.810902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464520, 32.355030, 51.805737>,  <37.745758, 32.187428, 51.681843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464520, 32.355030, 51.805737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.261669, 32.643826, 51.994019>,  <38.139957, 32.817101, 52.106987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.261669, 32.643826, 51.994019>,  <38.464520, 32.355030, 51.805737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261669, 32.643826, 51.994019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457749, -0.237119, 0.856879,
		0.730265, 0.650010, -0.210237,
		-0.507128, 0.721984, 0.470701,
		38.109531, 32.860420, 52.135227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942947, 32.653702, 52.232143>,  <38.464520, 32.355030, 51.805737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942947, 32.653702, 52.232143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.599525, 32.774944, 52.397552>,  <38.393471, 32.847691, 52.496799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.599525, 32.774944, 52.397552>,  <38.942947, 32.653702, 52.232143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599525, 32.774944, 52.397552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415052, -0.062632, 0.907639,
		0.301015, 0.950895, -0.072033,
		-0.858558, 0.303111, 0.413524,
		38.341957, 32.865879, 52.521610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183296, 32.928898, 52.798431>,  <38.942947, 32.653702, 52.232143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183296, 32.928898, 52.798431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.794044, 32.954647, 52.886856>,  <38.560493, 32.970097, 52.939911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.794044, 32.954647, 52.886856>,  <39.183296, 32.928898, 52.798431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794044, 32.954647, 52.886856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222694, 0.019289, 0.974697,
		0.058478, 0.997740, -0.033106,
		-0.973133, 0.064371, 0.221063,
		38.502106, 32.973957, 52.953175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036125, 33.596481, 53.105633>,  <39.183296, 32.928898, 52.798431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036125, 33.596481, 53.105633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.753937, 33.335613, 53.216621>,  <38.584625, 33.179092, 53.283215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.753937, 33.335613, 53.216621>,  <39.036125, 33.596481, 53.105633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753937, 33.335613, 53.216621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421641, -0.071520, 0.903938,
		-0.569673, 0.754695, 0.325436,
		-0.705473, -0.652166, 0.277467,
		38.542294, 33.139965, 53.299862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728260, 33.853519, 53.723389>,  <39.036125, 33.596481, 53.105633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728260, 33.853519, 53.723389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.674072, 33.457367, 53.712185>,  <38.641560, 33.219673, 53.705463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.674072, 33.457367, 53.712185>,  <38.728260, 33.853519, 53.723389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674072, 33.457367, 53.712185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260308, -0.062850, 0.963478,
		-0.955975, 0.123232, 0.266319,
		-0.135470, -0.990386, -0.028005,
		38.633430, 33.160252, 53.703785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740715, 33.775013, 54.505493>,  <38.728260, 33.853519, 53.723389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740715, 33.775013, 54.505493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.743439, 33.420574, 54.320110>,  <38.745071, 33.207912, 54.208881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.743439, 33.420574, 54.320110>,  <38.740715, 33.775013, 54.505493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743439, 33.420574, 54.320110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437416, -0.414134, 0.798223,
		-0.899233, -0.208155, 0.384774,
		0.006806, -0.886095, -0.463453,
		38.745480, 33.154747, 54.181076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496227, 33.237068, 55.048557>,  <38.740715, 33.775013, 54.505493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496227, 33.237068, 55.048557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.692024, 33.026924, 54.770164>,  <38.809502, 32.900837, 54.603127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.692024, 33.026924, 54.770164>,  <38.496227, 33.237068, 55.048557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692024, 33.026924, 54.770164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575177, -0.405377, 0.710521,
		-0.655414, -0.748111, 0.103744,
		0.489493, -0.525357, -0.695986,
		38.838871, 32.869316, 54.561367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787296, 32.737637, 55.489983>,  <38.496227, 33.237068, 55.048557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787296, 32.737637, 55.489983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.995422, 32.695465, 55.151005>,  <39.120296, 32.670162, 54.947620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.995422, 32.695465, 55.151005>,  <38.787296, 32.737637, 55.489983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995422, 32.695465, 55.151005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749841, -0.418486, 0.512453,
		-0.408666, -0.902084, -0.138695,
		0.520317, -0.105423, -0.847441,
		39.151516, 32.663837, 54.896770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.483025, 36.456238, 40.111492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852730, 36.352215, 39.999695>,  <36.074551, 36.289803, 39.932617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852730, 36.352215, 39.999695>,  <35.483025, 36.456238, 40.111492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852730, 36.352215, 39.999695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142170, -0.444990, 0.884179,
		-0.354303, -0.856947, -0.374315,
		0.924260, -0.260051, -0.279493,
		36.130009, 36.274200, 39.915848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597477, 35.741074, 40.205631>,  <35.483025, 36.456238, 40.111492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597477, 35.741074, 40.205631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982327, 35.846973, 40.179653>,  <36.213238, 35.910511, 40.164066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982327, 35.846973, 40.179653>,  <35.597477, 35.741074, 40.205631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982327, 35.846973, 40.179653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181500, -0.444394, 0.877252,
		0.203387, -0.855817, -0.475616,
		0.962128, 0.264746, -0.064947,
		36.270966, 35.926395, 40.160168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876747, 35.172028, 40.542408>,  <35.597477, 35.741074, 40.205631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876747, 35.172028, 40.542408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152969, 35.461193, 40.533112>,  <36.318703, 35.634693, 40.527534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152969, 35.461193, 40.533112>,  <35.876747, 35.172028, 40.542408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152969, 35.461193, 40.533112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302786, -0.259752, 0.916979,
		0.656855, -0.640258, -0.398259,
		0.690552, 0.722909, -0.023241,
		36.360134, 35.678066, 40.526138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540951, 34.794716, 40.824867>,  <35.876747, 35.172028, 40.542408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540951, 34.794716, 40.824867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531593, 35.193489, 40.854763>,  <36.525978, 35.432751, 40.872700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531593, 35.193489, 40.854763>,  <36.540951, 34.794716, 40.824867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531593, 35.193489, 40.854763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156104, -0.070196, 0.985243,
		0.987463, 0.034719, -0.153982,
		-0.023398, 0.996929, 0.074735,
		36.524574, 35.492569, 40.877182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086937, 34.960835, 41.119377>,  <36.540951, 34.794716, 40.824867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086937, 34.960835, 41.119377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862499, 35.284931, 41.187115>,  <36.727837, 35.479389, 41.227757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862499, 35.284931, 41.187115>,  <37.086937, 34.960835, 41.119377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862499, 35.284931, 41.187115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009087, -0.210600, 0.977530,
		0.827703, 0.546947, 0.125529,
		-0.561094, 0.810245, 0.169344,
		36.694172, 35.528004, 41.237919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282043, 35.255470, 41.827667>,  <37.086937, 34.960835, 41.119377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282043, 35.255470, 41.827667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934395, 35.428837, 41.732349>,  <36.725807, 35.532856, 41.675159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934395, 35.428837, 41.732349>,  <37.282043, 35.255470, 41.827667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934395, 35.428837, 41.732349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299372, -0.077471, 0.950986,
		0.393716, 0.897856, 0.197085,
		-0.869117, 0.433420, -0.238292,
		36.673660, 35.558865, 41.660862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260635, 35.766850, 42.304455>,  <37.282043, 35.255470, 41.827667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260635, 35.766850, 42.304455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884235, 35.709545, 42.181816>,  <36.658398, 35.675163, 42.108234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884235, 35.709545, 42.181816>,  <37.260635, 35.766850, 42.304455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884235, 35.709545, 42.181816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302352, -0.051043, 0.951829,
		-0.152008, 0.988368, 0.004716,
		-0.940998, -0.143259, -0.306594,
		36.601936, 35.666569, 42.089836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845821, 36.258644, 42.625584>,  <37.260635, 35.766850, 42.304455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845821, 36.258644, 42.625584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601284, 35.965065, 42.507210>,  <36.454559, 35.788918, 42.436184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601284, 35.965065, 42.507210>,  <36.845821, 36.258644, 42.625584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601284, 35.965065, 42.507210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437958, 0.002315, 0.898993,
		-0.659127, 0.679203, -0.322853,
		-0.611346, -0.733947, -0.295937,
		36.417881, 35.744881, 42.418430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214050, 36.425373, 42.982578>,  <36.845821, 36.258644, 42.625584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214050, 36.425373, 42.982578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166698, 36.049168, 42.855194>,  <36.138287, 35.823444, 42.778763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166698, 36.049168, 42.855194>,  <36.214050, 36.425373, 42.982578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166698, 36.049168, 42.855194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503038, -0.219709, 0.835871,
		-0.856118, 0.259152, -0.447104,
		-0.118384, -0.940515, -0.318460,
		36.131184, 35.767014, 42.759655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493710, 36.233936, 43.179237>,  <36.214050, 36.425373, 42.982578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493710, 36.233936, 43.179237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670536, 35.878979, 43.126900>,  <35.776630, 35.666004, 43.095497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670536, 35.878979, 43.126900>,  <35.493710, 36.233936, 43.179237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670536, 35.878979, 43.126900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241284, -0.258135, 0.935494,
		-0.863923, -0.381976, -0.328224,
		0.442062, -0.887390, -0.130845,
		35.803154, 35.612762, 43.087646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094208, 35.822269, 43.494984>,  <35.493710, 36.233936, 43.179237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094208, 35.822269, 43.494984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449879, 35.640469, 43.473831>,  <35.663280, 35.531387, 43.461140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449879, 35.640469, 43.473831>,  <35.094208, 35.822269, 43.494984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449879, 35.640469, 43.473831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157297, -0.412149, 0.897436,
		-0.429686, -0.789657, -0.437964,
		0.889172, -0.454506, -0.052884,
		35.716633, 35.504120, 43.457966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954498, 35.045662, 43.720673>,  <35.094208, 35.822269, 43.494984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954498, 35.045662, 43.720673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339771, 35.132290, 43.784393>,  <35.570934, 35.184265, 43.822624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339771, 35.132290, 43.784393>,  <34.954498, 35.045662, 43.720673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339771, 35.132290, 43.784393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104073, -0.245984, 0.963670,
		0.247888, -0.944769, -0.214388,
		0.963182, 0.216570, 0.159301,
		35.628727, 35.197262, 43.832184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806072, 34.351788, 43.626472>,  <34.954498, 35.045662, 43.720673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806072, 34.351788, 43.626472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502453, 34.112366, 43.728909>,  <34.320282, 33.968712, 43.790371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502453, 34.112366, 43.728909>,  <34.806072, 34.351788, 43.626472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502453, 34.112366, 43.728909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274715, -0.062149, -0.959515,
		0.590237, -0.798668, -0.117258,
		-0.759047, -0.598554, 0.256088,
		34.274738, 33.932800, 43.805737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817043, 33.810318, 43.190041>,  <34.806072, 34.351788, 43.626472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817043, 33.810318, 43.190041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434700, 33.835537, 43.304836>,  <34.205296, 33.850670, 43.373714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434700, 33.835537, 43.304836>,  <34.817043, 33.810318, 43.190041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434700, 33.835537, 43.304836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285924, 0.025493, -0.957913,
		-0.067717, -0.997684, -0.006339,
		-0.955856, 0.063054, 0.286988,
		34.147942, 33.854450, 43.390934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426422, 33.248734, 42.783749>,  <34.817043, 33.810318, 43.190041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426422, 33.248734, 42.783749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162525, 33.528187, 42.894493>,  <34.004185, 33.695858, 42.960938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162525, 33.528187, 42.894493>,  <34.426422, 33.248734, 42.783749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162525, 33.528187, 42.894493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209626, 0.182698, -0.960562,
		-0.721661, -0.691761, 0.025918,
		-0.659744, 0.698632, 0.276857,
		33.964603, 33.737778, 42.977551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007351, 33.233570, 42.235394>,  <34.426422, 33.248734, 42.783749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007351, 33.233570, 42.235394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871750, 33.558987, 42.424381>,  <33.790390, 33.754234, 42.537773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871750, 33.558987, 42.424381>,  <34.007351, 33.233570, 42.235394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871750, 33.558987, 42.424381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302096, 0.381481, -0.873619,
		-0.890963, -0.438892, 0.116443,
		-0.339004, 0.813540, 0.472473,
		33.770050, 33.803047, 42.566124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256058, 33.347485, 42.257671>,  <34.007351, 33.233570, 42.235394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256058, 33.347485, 42.257671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400379, 33.719028, 42.291241>,  <33.486973, 33.941956, 42.311382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400379, 33.719028, 42.291241>,  <33.256058, 33.347485, 42.257671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400379, 33.719028, 42.291241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336512, 0.213575, -0.917140,
		-0.869815, 0.302671, 0.389631,
		0.360808, 0.928857, 0.083919,
		33.508621, 33.997684, 42.316418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766449, 33.674026, 41.830734>,  <33.256058, 33.347485, 42.257671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766449, 33.674026, 41.830734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048851, 33.951973, 41.885448>,  <33.218292, 34.118740, 41.918278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048851, 33.951973, 41.885448>,  <32.766449, 33.674026, 41.830734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048851, 33.951973, 41.885448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210081, 0.389933, -0.896559,
		-0.676325, 0.604244, 0.421275,
		0.706010, 0.694868, 0.136781,
		33.260654, 34.160435, 41.926483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404049, 34.364166, 41.753868>,  <32.766449, 33.674026, 41.830734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404049, 34.364166, 41.753868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794659, 34.431145, 41.699657>,  <33.029022, 34.471333, 41.667130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794659, 34.431145, 41.699657>,  <32.404049, 34.364166, 41.753868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794659, 34.431145, 41.699657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202553, 0.499531, -0.842283,
		-0.073342, 0.849958, 0.521720,
		0.976521, 0.167451, -0.135525,
		33.087616, 34.481380, 41.659000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531986, 35.077793, 41.510601>,  <32.404049, 34.364166, 41.753868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531986, 35.077793, 41.510601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856224, 34.873585, 41.395847>,  <33.050766, 34.751060, 41.326996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856224, 34.873585, 41.395847>,  <32.531986, 35.077793, 41.510601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856224, 34.873585, 41.395847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117942, 0.337530, -0.933897,
		0.573601, 0.790851, 0.213390,
		0.810599, -0.510517, -0.286882,
		33.099403, 34.720428, 41.309784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860764, 35.497898, 41.059879>,  <32.531986, 35.077793, 41.510601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860764, 35.497898, 41.059879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014347, 35.136635, 40.983051>,  <33.106495, 34.919876, 40.936954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014347, 35.136635, 40.983051>,  <32.860764, 35.497898, 41.059879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014347, 35.136635, 40.983051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194345, 0.282401, -0.939404,
		0.902667, 0.323363, 0.283953,
		0.383957, -0.903154, -0.192070,
		33.129536, 34.865688, 40.925430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563400, 35.531281, 40.831451>,  <32.860764, 35.497898, 41.059879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563400, 35.531281, 40.831451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399952, 35.204723, 40.668217>,  <33.301884, 35.008789, 40.570278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399952, 35.204723, 40.668217>,  <33.563400, 35.531281, 40.831451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399952, 35.204723, 40.668217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101219, 0.403824, -0.909220,
		0.907076, -0.412830, -0.082375,
		-0.408618, -0.816393, -0.408085,
		33.277367, 34.959805, 40.545792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818470, 35.601013, 40.129414>,  <33.563400, 35.531281, 40.831451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818470, 35.601013, 40.129414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567589, 35.289471, 40.130451>,  <33.417061, 35.102547, 40.131073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567589, 35.289471, 40.130451>,  <33.818470, 35.601013, 40.129414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567589, 35.289471, 40.130451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158041, 0.124011, -0.979614,
		0.762654, -0.614825, -0.200870,
		-0.627202, -0.778852, 0.002590,
		33.379429, 35.055817, 40.131229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118080, 35.128769, 39.651955>,  <33.818470, 35.601013, 40.129414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118080, 35.128769, 39.651955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725910, 35.077679, 39.711903>,  <33.490608, 35.047024, 39.747871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725910, 35.077679, 39.711903>,  <34.118080, 35.128769, 39.651955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725910, 35.077679, 39.711903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163410, 0.103047, -0.981162,
		0.109864, -0.986443, -0.121899,
		-0.980422, -0.127714, 0.149873,
		33.431786, 35.039360, 39.756863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991005, 34.830875, 39.100273>,  <34.118080, 35.128769, 39.651955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991005, 34.830875, 39.100273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624081, 34.940258, 39.216038>,  <33.403927, 35.005890, 39.285496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624081, 34.940258, 39.216038>,  <33.991005, 34.830875, 39.100273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624081, 34.940258, 39.216038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232619, 0.221838, -0.946930,
		-0.323150, -0.935952, -0.139883,
		-0.917313, 0.273461, 0.289408,
		33.348888, 35.022297, 39.302860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534077, 34.590683, 38.594257>,  <33.991005, 34.830875, 39.100273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534077, 34.590683, 38.594257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344475, 34.898586, 38.765278>,  <33.230713, 35.083328, 38.867889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344475, 34.898586, 38.765278>,  <33.534077, 34.590683, 38.594257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344475, 34.898586, 38.765278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287364, 0.323742, -0.901451,
		-0.832310, -0.550155, 0.067744,
		-0.474006, 0.769754, 0.427549,
		33.202274, 35.129513, 38.893543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732243, 33.783302, 38.401566>,  <33.534077, 34.590683, 38.594257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732243, 33.783302, 38.401566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594360, 33.423817, 38.293129>,  <33.511631, 33.208126, 38.228065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594360, 33.423817, 38.293129>,  <33.732243, 33.783302, 38.401566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594360, 33.423817, 38.293129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776715, -0.435244, 0.455276,
		-0.527156, -0.053629, 0.848075,
		-0.344704, -0.898714, -0.271096,
		33.490948, 33.154202, 38.211800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677876, 33.354202, 38.955784>,  <33.732243, 33.783302, 38.401566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677876, 33.354202, 38.955784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678890, 33.076736, 38.667667>,  <33.679497, 32.910255, 38.494797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678890, 33.076736, 38.667667>,  <33.677876, 33.354202, 38.955784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678890, 33.076736, 38.667667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613267, -0.567861, 0.549033,
		-0.789872, -0.443121, 0.423965,
		0.002535, -0.693669, -0.720289,
		33.679649, 32.868637, 38.451580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570496, 32.681606, 39.262234>,  <33.677876, 33.354202, 38.955784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570496, 32.681606, 39.262234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818661, 32.667305, 38.948853>,  <33.967560, 32.658726, 38.760822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818661, 32.667305, 38.948853>,  <33.570496, 32.681606, 39.262234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818661, 32.667305, 38.948853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603733, -0.615850, 0.506198,
		-0.500590, -0.787052, -0.360498,
		0.620416, -0.035753, -0.783457,
		34.004787, 32.656578, 38.713814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621826, 31.995029, 39.079983>,  <33.570496, 32.681606, 39.262234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621826, 31.995029, 39.079983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936069, 32.242516, 39.079475>,  <34.124615, 32.391006, 39.079170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936069, 32.242516, 39.079475>,  <33.621826, 31.995029, 39.079983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936069, 32.242516, 39.079475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424926, -0.538060, 0.727962,
		0.449723, -0.572434, -0.685616,
		0.785612, 0.618718, -0.001264,
		34.171753, 32.428131, 39.079098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117432, 31.540398, 39.187805>,  <33.621826, 31.995029, 39.079983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117432, 31.540398, 39.187805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272472, 31.901869, 39.260616>,  <34.365498, 32.118752, 39.304302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272472, 31.901869, 39.260616>,  <34.117432, 31.540398, 39.187805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272472, 31.901869, 39.260616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580558, -0.392686, 0.713267,
		0.716044, -0.170783, -0.676841,
		0.387600, 0.903676, 0.182032,
		34.388752, 32.172970, 39.315228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913410, 31.387629, 39.294739>,  <34.117432, 31.540398, 39.187805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913410, 31.387629, 39.294739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765606, 31.708294, 39.482693>,  <34.676922, 31.900694, 39.595467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765606, 31.708294, 39.482693>,  <34.913410, 31.387629, 39.294739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765606, 31.708294, 39.482693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476387, -0.270735, 0.836516,
		0.797821, 0.532949, -0.281863,
		-0.369510, 0.801666, 0.469888,
		34.654755, 31.948793, 39.623661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462429, 31.742712, 39.564007>,  <34.913410, 31.387629, 39.294739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462429, 31.742712, 39.564007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158092, 31.874348, 39.787727>,  <34.975491, 31.953329, 39.921959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158092, 31.874348, 39.787727>,  <35.462429, 31.742712, 39.564007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158092, 31.874348, 39.787727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495794, -0.261309, 0.828194,
		0.418700, 0.907425, 0.035655,
		-0.760841, 0.329087, 0.559306,
		34.929840, 31.973074, 39.955521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851891, 32.146439, 40.152985>,  <35.462429, 31.742712, 39.564007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851891, 32.146439, 40.152985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482746, 32.071396, 40.287521>,  <35.261257, 32.026371, 40.368244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482746, 32.071396, 40.287521>,  <35.851891, 32.146439, 40.152985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482746, 32.071396, 40.287521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377533, -0.268161, 0.886317,
		-0.076085, 0.944930, 0.318304,
		-0.922865, -0.187606, 0.336340,
		35.205887, 32.015114, 40.388424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912415, 32.341713, 40.767967>,  <35.851891, 32.146439, 40.152985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912415, 32.341713, 40.767967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566097, 32.149002, 40.822071>,  <35.358307, 32.033375, 40.854534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566097, 32.149002, 40.822071>,  <35.912415, 32.341713, 40.767967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566097, 32.149002, 40.822071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303302, -0.290233, 0.907619,
		-0.398015, 0.826833, 0.397406,
		-0.865790, -0.481780, 0.135263,
		35.306362, 32.004467, 40.862652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521141, 32.476215, 41.444088>,  <35.912415, 32.341713, 40.767967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521141, 32.476215, 41.444088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409607, 32.107376, 41.336773>,  <35.342686, 31.886072, 41.272385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409607, 32.107376, 41.336773>,  <35.521141, 32.476215, 41.444088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409607, 32.107376, 41.336773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258105, -0.341046, 0.903919,
		-0.925005, 0.182795, 0.333094,
		-0.278832, -0.922103, -0.268289,
		35.325958, 31.830746, 41.256287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369774, 32.210175, 42.069469>,  <35.521141, 32.476215, 41.444088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369774, 32.210175, 42.069469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369675, 31.872669, 41.854782>,  <35.369617, 31.670166, 41.725971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369675, 31.872669, 41.854782>,  <35.369774, 32.210175, 42.069469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369675, 31.872669, 41.854782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255528, -0.518951, 0.815717,
		-0.966802, -0.136946, 0.215732,
		-0.000245, -0.843762, -0.536717,
		35.369602, 31.619541, 41.693768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960388, 31.681843, 42.453671>,  <35.369774, 32.210175, 42.069469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960388, 31.681843, 42.453671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207829, 31.501570, 42.196232>,  <35.356293, 31.393406, 42.041767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207829, 31.501570, 42.196232>,  <34.960388, 31.681843, 42.453671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207829, 31.501570, 42.196232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193987, -0.706172, 0.680948,
		-0.761385, -0.546082, -0.349409,
		0.618596, -0.450683, -0.643602,
		35.393410, 31.366365, 42.003151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880383, 30.963285, 42.471371>,  <34.960388, 31.681843, 42.453671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880383, 30.963285, 42.471371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248249, 30.985180, 42.315819>,  <35.468967, 30.998316, 42.222488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248249, 30.985180, 42.315819>,  <34.880383, 30.963285, 42.471371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248249, 30.985180, 42.315819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225481, -0.884345, 0.408769,
		-0.321525, -0.463613, -0.825642,
		0.919663, 0.054737, -0.388875,
		35.524147, 31.001600, 42.199158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161484, 30.266666, 42.570576>,  <34.880383, 30.963285, 42.471371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161484, 30.266666, 42.570576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487202, 30.477770, 42.473907>,  <35.682632, 30.604431, 42.415909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487202, 30.477770, 42.473907>,  <35.161484, 30.266666, 42.570576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487202, 30.477770, 42.473907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570540, -0.651077, 0.500582,
		0.106841, -0.545500, -0.831273,
		0.814290, 0.527757, -0.241668,
		35.731487, 30.636097, 42.401405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808723, 29.759264, 42.508575>,  <35.161484, 30.266666, 42.570576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808723, 29.759264, 42.508575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945377, 30.130316, 42.568962>,  <36.027370, 30.352947, 42.605194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945377, 30.130316, 42.568962>,  <35.808723, 29.759264, 42.508575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945377, 30.130316, 42.568962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623051, -0.343801, 0.702573,
		0.703631, -0.145959, -0.695413,
		0.341630, 0.927630, 0.150969,
		36.047867, 30.408606, 42.614254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539223, 29.628609, 42.553150>,  <35.808723, 29.759264, 42.508575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539223, 29.628609, 42.553150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460602, 29.988522, 42.708977>,  <36.413429, 30.204470, 42.802475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460602, 29.988522, 42.708977>,  <36.539223, 29.628609, 42.553150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460602, 29.988522, 42.708977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575898, -0.215623, 0.788574,
		0.793543, 0.379344, -0.475801,
		-0.196548, 0.899780, 0.389570,
		36.401638, 30.258455, 42.825848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183155, 29.743547, 42.882866>,  <36.539223, 29.628609, 42.553150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183155, 29.743547, 42.882866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953568, 30.035734, 43.030910>,  <36.815815, 30.211046, 43.119736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953568, 30.035734, 43.030910>,  <37.183155, 29.743547, 42.882866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953568, 30.035734, 43.030910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460046, -0.086264, 0.883695,
		0.677435, 0.677481, -0.286535,
		-0.573968, 0.730465, 0.370110,
		36.781376, 30.254873, 43.141945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578079, 30.235149, 43.221630>,  <37.183155, 29.743547, 42.882866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578079, 30.235149, 43.221630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218800, 30.274004, 43.393116>,  <37.003231, 30.297318, 43.496006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218800, 30.274004, 43.393116>,  <37.578079, 30.235149, 43.221630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218800, 30.274004, 43.393116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426985, -0.038985, 0.903418,
		0.104470, 0.994507, -0.006460,
		-0.898204, 0.097138, 0.428712,
		36.949337, 30.303146, 43.521729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629883, 30.685844, 43.668259>,  <37.578079, 30.235149, 43.221630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629883, 30.685844, 43.668259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300968, 30.498684, 43.797817>,  <37.103619, 30.386387, 43.875553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300968, 30.498684, 43.797817>,  <37.629883, 30.685844, 43.668259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300968, 30.498684, 43.797817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330973, 0.069788, 0.941056,
		-0.462926, 0.881021, 0.097477,
		-0.822288, -0.467901, 0.323900,
		37.054283, 30.358313, 43.894989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364315, 31.080427, 44.206089>,  <37.629883, 30.685844, 43.668259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364315, 31.080427, 44.206089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238010, 30.702669, 44.242771>,  <37.162228, 30.476013, 44.264782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238010, 30.702669, 44.242771>,  <37.364315, 31.080427, 44.206089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238010, 30.702669, 44.242771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298215, -0.007027, 0.954473,
		-0.900756, 0.328735, 0.283852,
		-0.315763, -0.944396, 0.091704,
		37.143280, 30.419350, 44.270283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210575, 31.001474, 44.960423>,  <37.364315, 31.080427, 44.206089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210575, 31.001474, 44.960423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231182, 30.620237, 44.841118>,  <37.243546, 30.391495, 44.769535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231182, 30.620237, 44.841118>,  <37.210575, 31.001474, 44.960423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231182, 30.620237, 44.841118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193753, -0.283444, 0.939212,
		-0.979696, -0.106179, 0.170061,
		0.051522, -0.953093, -0.298261,
		37.246639, 30.334309, 44.751640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850075, 30.635113, 45.424633>,  <37.210575, 31.001474, 44.960423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850075, 30.635113, 45.424633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076160, 30.351231, 45.256420>,  <37.211811, 30.180901, 45.155495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076160, 30.351231, 45.256420>,  <36.850075, 30.635113, 45.424633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076160, 30.351231, 45.256420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197005, -0.378893, 0.904229,
		-0.801073, -0.593932, -0.074341,
		0.565218, -0.709708, -0.420528,
		37.245728, 30.138319, 45.130260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664799, 30.040951, 45.865582>,  <36.850075, 30.635113, 45.424633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664799, 30.040951, 45.865582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010159, 29.965456, 45.678425>,  <37.217373, 29.920160, 45.566132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010159, 29.965456, 45.678425>,  <36.664799, 30.040951, 45.865582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010159, 29.965456, 45.678425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388103, -0.344100, 0.854969,
		-0.322356, -0.919770, -0.223851,
		0.863402, -0.188727, -0.467888,
		37.269176, 29.908834, 45.538059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782127, 29.340788, 45.946121>,  <36.664799, 30.040951, 45.865582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782127, 29.340788, 45.946121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141205, 29.505152, 45.882500>,  <37.356651, 29.603771, 45.844330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141205, 29.505152, 45.882500>,  <36.782127, 29.340788, 45.946121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141205, 29.505152, 45.882500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311091, -0.335441, 0.889214,
		0.312036, -0.847721, -0.428955,
		0.897695, 0.410911, -0.159049,
		37.410515, 29.628426, 45.834785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197552, 28.862270, 46.165672>,  <36.782127, 29.340788, 45.946121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197552, 28.862270, 46.165672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446266, 29.173582, 46.130650>,  <37.595493, 29.360369, 46.109634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446266, 29.173582, 46.130650>,  <37.197552, 28.862270, 46.165672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446266, 29.173582, 46.130650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382688, -0.204371, 0.900990,
		0.683326, -0.593729, -0.424913,
		0.621783, 0.778279, -0.087561,
		37.632801, 29.407066, 46.104382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865635, 28.548960, 46.292786>,  <37.197552, 28.862270, 46.165672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865635, 28.548960, 46.292786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899055, 28.941879, 46.359844>,  <37.919106, 29.177631, 46.400078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899055, 28.941879, 46.359844>,  <37.865635, 28.548960, 46.292786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899055, 28.941879, 46.359844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276673, -0.184486, 0.943089,
		0.957325, -0.032411, -0.287189,
		0.083549, 0.982300, 0.167646,
		37.924122, 29.236570, 46.410137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400845, 28.545406, 46.686035>,  <37.865635, 28.548960, 46.292786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400845, 28.545406, 46.686035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197254, 28.881681, 46.759995>,  <38.075100, 29.083447, 46.804371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197254, 28.881681, 46.759995>,  <38.400845, 28.545406, 46.686035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197254, 28.881681, 46.759995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021786, -0.202154, 0.979111,
		0.860504, 0.502374, 0.084577,
		-0.508978, 0.840687, 0.184899,
		38.044559, 29.133888, 46.815464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869751, 28.929886, 47.056778>,  <38.400845, 28.545406, 46.686035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869751, 28.929886, 47.056778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501957, 29.059437, 47.145916>,  <38.281281, 29.137167, 47.199398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501957, 29.059437, 47.145916>,  <38.869751, 28.929886, 47.056778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501957, 29.059437, 47.145916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161915, -0.204544, 0.965373,
		0.358241, 0.923724, 0.135635,
		-0.919482, 0.323875, 0.222841,
		38.226112, 29.156599, 47.212769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286404, 29.322126, 47.347408>,  <38.869751, 28.929886, 47.056778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286404, 29.322126, 47.347408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647980, 29.185768, 47.244118>,  <39.864925, 29.103954, 47.182144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647980, 29.185768, 47.244118>,  <39.286404, 29.322126, 47.347408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647980, 29.185768, 47.244118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233566, 0.112284, -0.965836,
		0.358243, 0.933372, 0.021877,
		0.903940, -0.340895, -0.258229,
		39.919163, 29.083500, 47.166649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571884, 29.842516, 46.742100>,  <39.286404, 29.322126, 47.347408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571884, 29.842516, 46.742100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801365, 29.517900, 46.697803>,  <39.939053, 29.323132, 46.671227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801365, 29.517900, 46.697803>,  <39.571884, 29.842516, 46.742100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801365, 29.517900, 46.697803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008104, 0.140825, -0.990001,
		0.819021, 0.567072, 0.087369,
		0.573706, -0.811540, -0.110743,
		39.973476, 29.274439, 46.664581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131817, 30.046537, 46.241058>,  <39.571884, 29.842516, 46.742100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131817, 30.046537, 46.241058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146862, 29.646923, 46.232018>,  <40.155888, 29.407154, 46.226593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146862, 29.646923, 46.232018>,  <40.131817, 30.046537, 46.241058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146862, 29.646923, 46.232018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272942, 0.032027, -0.961497,
		0.961295, 0.029998, 0.273884,
		0.037615, -0.999037, -0.022599,
		40.158146, 29.347212, 46.225239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736301, 29.834133, 45.951630>,  <40.131817, 30.046537, 46.241058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736301, 29.834133, 45.951630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496704, 29.522121, 45.879227>,  <40.352947, 29.334915, 45.835785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496704, 29.522121, 45.879227>,  <40.736301, 29.834133, 45.951630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496704, 29.522121, 45.879227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189002, 0.081938, -0.978552,
		0.778130, -0.620357, 0.098347,
		-0.598993, -0.780028, -0.181007,
		40.317005, 29.288113, 45.824924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146793, 29.378302, 45.467621>,  <40.736301, 29.834133, 45.951630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146793, 29.378302, 45.467621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752613, 29.310440, 45.471760>,  <40.516106, 29.269722, 45.474243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752613, 29.310440, 45.471760>,  <41.146793, 29.378302, 45.467621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752613, 29.310440, 45.471760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007808, -0.105997, -0.994336,
		0.169791, -0.979787, 0.105779,
		-0.985449, -0.169655, 0.010348,
		40.456978, 29.259544, 45.474865>
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
